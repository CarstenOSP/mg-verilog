module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,nodes_2_address0,nodes_2_ce0,nodes_2_q0,nodes_3_address0,nodes_3_ce0,nodes_3_q0,nodes_4_address0,nodes_4_ce0,nodes_4_q0,nodes_5_address0,nodes_5_ce0,nodes_5_q0,nodes_6_address0,nodes_6_ce0,nodes_6_q0,nodes_7_address0,nodes_7_ce0,nodes_7_q0,nodes_8_address0,nodes_8_ce0,nodes_8_q0,nodes_9_address0,nodes_9_ce0,nodes_9_q0,nodes_10_address0,nodes_10_ce0,nodes_10_q0,nodes_11_address0,nodes_11_ce0,nodes_11_q0,nodes_12_address0,nodes_12_ce0,nodes_12_q0,nodes_13_address0,nodes_13_ce0,nodes_13_q0,nodes_14_address0,nodes_14_ce0,nodes_14_q0,nodes_15_address0,nodes_15_ce0,nodes_15_q0,nodes_16_address0,nodes_16_ce0,nodes_16_q0,nodes_17_address0,nodes_17_ce0,nodes_17_q0,nodes_18_address0,nodes_18_ce0,nodes_18_q0,nodes_19_address0,nodes_19_ce0,nodes_19_q0,nodes_20_address0,nodes_20_ce0,nodes_20_q0,nodes_21_address0,nodes_21_ce0,nodes_21_q0,nodes_22_address0,nodes_22_ce0,nodes_22_q0,nodes_23_address0,nodes_23_ce0,nodes_23_q0,nodes_24_address0,nodes_24_ce0,nodes_24_q0,nodes_25_address0,nodes_25_ce0,nodes_25_q0,nodes_26_address0,nodes_26_ce0,nodes_26_q0,nodes_27_address0,nodes_27_ce0,nodes_27_q0,nodes_28_address0,nodes_28_ce0,nodes_28_q0,nodes_29_address0,nodes_29_ce0,nodes_29_q0,nodes_30_address0,nodes_30_ce0,nodes_30_q0,nodes_31_address0,nodes_31_ce0,nodes_31_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,edges_16_address0,edges_16_ce0,edges_16_q0,edges_17_address0,edges_17_ce0,edges_17_q0,edges_18_address0,edges_18_ce0,edges_18_q0,edges_19_address0,edges_19_ce0,edges_19_q0,edges_20_address0,edges_20_ce0,edges_20_q0,edges_21_address0,edges_21_ce0,edges_21_q0,edges_22_address0,edges_22_ce0,edges_22_q0,edges_23_address0,edges_23_ce0,edges_23_q0,edges_24_address0,edges_24_ce0,edges_24_q0,edges_25_address0,edges_25_ce0,edges_25_q0,edges_26_address0,edges_26_ce0,edges_26_q0,edges_27_address0,edges_27_ce0,edges_27_q0,edges_28_address0,edges_28_ce0,edges_28_q0,edges_29_address0,edges_29_ce0,edges_29_q0,edges_30_address0,edges_30_ce0,edges_30_q0,edges_31_address0,edges_31_ce0,edges_31_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] nodes_0_address0;
output   nodes_0_ce0;
input  [127:0] nodes_0_q0;
output  [2:0] nodes_1_address0;
output   nodes_1_ce0;
input  [127:0] nodes_1_q0;
output  [2:0] nodes_2_address0;
output   nodes_2_ce0;
input  [127:0] nodes_2_q0;
output  [2:0] nodes_3_address0;
output   nodes_3_ce0;
input  [127:0] nodes_3_q0;
output  [2:0] nodes_4_address0;
output   nodes_4_ce0;
input  [127:0] nodes_4_q0;
output  [2:0] nodes_5_address0;
output   nodes_5_ce0;
input  [127:0] nodes_5_q0;
output  [2:0] nodes_6_address0;
output   nodes_6_ce0;
input  [127:0] nodes_6_q0;
output  [2:0] nodes_7_address0;
output   nodes_7_ce0;
input  [127:0] nodes_7_q0;
output  [2:0] nodes_8_address0;
output   nodes_8_ce0;
input  [127:0] nodes_8_q0;
output  [2:0] nodes_9_address0;
output   nodes_9_ce0;
input  [127:0] nodes_9_q0;
output  [2:0] nodes_10_address0;
output   nodes_10_ce0;
input  [127:0] nodes_10_q0;
output  [2:0] nodes_11_address0;
output   nodes_11_ce0;
input  [127:0] nodes_11_q0;
output  [2:0] nodes_12_address0;
output   nodes_12_ce0;
input  [127:0] nodes_12_q0;
output  [2:0] nodes_13_address0;
output   nodes_13_ce0;
input  [127:0] nodes_13_q0;
output  [2:0] nodes_14_address0;
output   nodes_14_ce0;
input  [127:0] nodes_14_q0;
output  [2:0] nodes_15_address0;
output   nodes_15_ce0;
input  [127:0] nodes_15_q0;
output  [2:0] nodes_16_address0;
output   nodes_16_ce0;
input  [127:0] nodes_16_q0;
output  [2:0] nodes_17_address0;
output   nodes_17_ce0;
input  [127:0] nodes_17_q0;
output  [2:0] nodes_18_address0;
output   nodes_18_ce0;
input  [127:0] nodes_18_q0;
output  [2:0] nodes_19_address0;
output   nodes_19_ce0;
input  [127:0] nodes_19_q0;
output  [2:0] nodes_20_address0;
output   nodes_20_ce0;
input  [127:0] nodes_20_q0;
output  [2:0] nodes_21_address0;
output   nodes_21_ce0;
input  [127:0] nodes_21_q0;
output  [2:0] nodes_22_address0;
output   nodes_22_ce0;
input  [127:0] nodes_22_q0;
output  [2:0] nodes_23_address0;
output   nodes_23_ce0;
input  [127:0] nodes_23_q0;
output  [2:0] nodes_24_address0;
output   nodes_24_ce0;
input  [127:0] nodes_24_q0;
output  [2:0] nodes_25_address0;
output   nodes_25_ce0;
input  [127:0] nodes_25_q0;
output  [2:0] nodes_26_address0;
output   nodes_26_ce0;
input  [127:0] nodes_26_q0;
output  [2:0] nodes_27_address0;
output   nodes_27_ce0;
input  [127:0] nodes_27_q0;
output  [2:0] nodes_28_address0;
output   nodes_28_ce0;
input  [127:0] nodes_28_q0;
output  [2:0] nodes_29_address0;
output   nodes_29_ce0;
input  [127:0] nodes_29_q0;
output  [2:0] nodes_30_address0;
output   nodes_30_ce0;
input  [127:0] nodes_30_q0;
output  [2:0] nodes_31_address0;
output   nodes_31_ce0;
input  [127:0] nodes_31_q0;
output  [6:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [6:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [6:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [6:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [6:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [6:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [6:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [6:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [6:0] edges_8_address0;
output   edges_8_ce0;
input  [63:0] edges_8_q0;
output  [6:0] edges_9_address0;
output   edges_9_ce0;
input  [63:0] edges_9_q0;
output  [6:0] edges_10_address0;
output   edges_10_ce0;
input  [63:0] edges_10_q0;
output  [6:0] edges_11_address0;
output   edges_11_ce0;
input  [63:0] edges_11_q0;
output  [6:0] edges_12_address0;
output   edges_12_ce0;
input  [63:0] edges_12_q0;
output  [6:0] edges_13_address0;
output   edges_13_ce0;
input  [63:0] edges_13_q0;
output  [6:0] edges_14_address0;
output   edges_14_ce0;
input  [63:0] edges_14_q0;
output  [6:0] edges_15_address0;
output   edges_15_ce0;
input  [63:0] edges_15_q0;
output  [6:0] edges_16_address0;
output   edges_16_ce0;
input  [63:0] edges_16_q0;
output  [6:0] edges_17_address0;
output   edges_17_ce0;
input  [63:0] edges_17_q0;
output  [6:0] edges_18_address0;
output   edges_18_ce0;
input  [63:0] edges_18_q0;
output  [6:0] edges_19_address0;
output   edges_19_ce0;
input  [63:0] edges_19_q0;
output  [6:0] edges_20_address0;
output   edges_20_ce0;
input  [63:0] edges_20_q0;
output  [6:0] edges_21_address0;
output   edges_21_ce0;
input  [63:0] edges_21_q0;
output  [6:0] edges_22_address0;
output   edges_22_ce0;
input  [63:0] edges_22_q0;
output  [6:0] edges_23_address0;
output   edges_23_ce0;
input  [63:0] edges_23_q0;
output  [6:0] edges_24_address0;
output   edges_24_ce0;
input  [63:0] edges_24_q0;
output  [6:0] edges_25_address0;
output   edges_25_ce0;
input  [63:0] edges_25_q0;
output  [6:0] edges_26_address0;
output   edges_26_ce0;
input  [63:0] edges_26_q0;
output  [6:0] edges_27_address0;
output   edges_27_ce0;
input  [63:0] edges_27_q0;
output  [6:0] edges_28_address0;
output   edges_28_ce0;
input  [63:0] edges_28_q0;
output  [6:0] edges_29_address0;
output   edges_29_ce0;
input  [63:0] edges_29_q0;
output  [6:0] edges_30_address0;
output   edges_30_ce0;
input  [63:0] edges_30_q0;
output  [6:0] edges_31_address0;
output   edges_31_ce0;
input  [63:0] edges_31_q0;
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
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] zext_ln15_fu_866_p1;
reg   [7:0] zext_ln15_reg_1707;
wire    ap_CS_fsm_state2;
wire   [3:0] indvars_iv_next11_fu_870_p2;
reg   [3:0] indvars_iv_next11_reg_1712;
wire   [63:0] indvars_iv_next11_cast3_fu_876_p1;
reg   [63:0] indvars_iv_next11_cast3_reg_1719;
wire   [8:0] n_1_fu_886_p2;
reg   [8:0] n_1_reg_1727;
wire    ap_CS_fsm_state3;
wire   [4:0] trunc_ln24_fu_897_p1;
reg   [4:0] trunc_ln24_reg_1732;
reg   [2:0] lshr_ln_reg_1738;
wire   [0:0] icmp_ln25_fu_967_p2;
reg   [0:0] icmp_ln25_reg_1751;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_1100_p67;
reg   [63:0] e_reg_1915;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_end_fu_1555_p67;
reg   [63:0] tmp_end_reg_1920;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_ap_ready;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_0_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_1_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_2_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_3_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_4_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_5_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_6_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_7_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_8_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_8_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_9_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_9_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_10_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_10_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_11_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_11_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_12_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_12_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_13_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_13_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_14_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_14_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_15_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_15_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_16_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_16_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_17_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_17_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_18_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_18_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_19_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_19_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_20_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_20_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_21_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_21_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_22_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_22_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_23_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_23_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_24_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_24_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_25_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_25_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_26_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_26_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_27_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_27_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_28_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_28_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_29_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_29_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_30_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_30_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_782_edges_31_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_edges_31_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_782_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_782_level_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_782_cnt_14_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_782_cnt_14_out_ap_vld;
reg   [63:0] cnt_reg_746;
reg   [63:0] ap_phi_mux_cnt_4_phi_fu_774_p4;
wire    ap_CS_fsm_state8;
reg   [8:0] n_reg_759;
reg   [63:0] cnt_4_reg_770;
reg    grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_NS_fsm_state6;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln24_fu_892_p1;
wire   [0:0] icmp_ln24_fu_880_p2;
wire   [63:0] zext_ln12_fu_932_p1;
reg   [3:0] horizon_fu_270;
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
reg    nodes_16_ce0_local;
reg    nodes_17_ce0_local;
reg    nodes_18_ce0_local;
reg    nodes_19_ce0_local;
reg    nodes_20_ce0_local;
reg    nodes_21_ce0_local;
reg    nodes_22_ce0_local;
reg    nodes_23_ce0_local;
reg    nodes_24_ce0_local;
reg    nodes_25_ce0_local;
reg    nodes_26_ce0_local;
reg    nodes_27_ce0_local;
reg    nodes_28_ce0_local;
reg    nodes_29_ce0_local;
reg    nodes_30_ce0_local;
reg    nodes_31_ce0_local;
wire   [0:0] icmp_ln43_fu_911_p2;
wire   [0:0] icmp_ln21_fu_917_p2;
wire   [63:0] e_fu_1100_p2;
wire   [63:0] e_fu_1100_p4;
wire   [63:0] e_fu_1100_p6;
wire   [63:0] e_fu_1100_p8;
wire   [63:0] e_fu_1100_p10;
wire   [63:0] e_fu_1100_p12;
wire   [63:0] e_fu_1100_p14;
wire   [63:0] e_fu_1100_p16;
wire   [63:0] e_fu_1100_p18;
wire   [63:0] e_fu_1100_p20;
wire   [63:0] e_fu_1100_p22;
wire   [63:0] e_fu_1100_p24;
wire   [63:0] e_fu_1100_p26;
wire   [63:0] e_fu_1100_p28;
wire   [63:0] e_fu_1100_p30;
wire   [63:0] e_fu_1100_p32;
wire   [63:0] e_fu_1100_p34;
wire   [63:0] e_fu_1100_p36;
wire   [63:0] e_fu_1100_p38;
wire   [63:0] e_fu_1100_p40;
wire   [63:0] e_fu_1100_p42;
wire   [63:0] e_fu_1100_p44;
wire   [63:0] e_fu_1100_p46;
wire   [63:0] e_fu_1100_p48;
wire   [63:0] e_fu_1100_p50;
wire   [63:0] e_fu_1100_p52;
wire   [63:0] e_fu_1100_p54;
wire   [63:0] e_fu_1100_p56;
wire   [63:0] e_fu_1100_p58;
wire   [63:0] e_fu_1100_p60;
wire   [63:0] e_fu_1100_p62;
wire   [63:0] e_fu_1100_p64;
wire   [63:0] e_fu_1100_p65;
wire   [63:0] tmp_end_fu_1555_p2;
wire   [63:0] tmp_end_fu_1555_p4;
wire   [63:0] tmp_end_fu_1555_p6;
wire   [63:0] tmp_end_fu_1555_p8;
wire   [63:0] tmp_end_fu_1555_p10;
wire   [63:0] tmp_end_fu_1555_p12;
wire   [63:0] tmp_end_fu_1555_p14;
wire   [63:0] tmp_end_fu_1555_p16;
wire   [63:0] tmp_end_fu_1555_p18;
wire   [63:0] tmp_end_fu_1555_p20;
wire   [63:0] tmp_end_fu_1555_p22;
wire   [63:0] tmp_end_fu_1555_p24;
wire   [63:0] tmp_end_fu_1555_p26;
wire   [63:0] tmp_end_fu_1555_p28;
wire   [63:0] tmp_end_fu_1555_p30;
wire   [63:0] tmp_end_fu_1555_p32;
wire   [63:0] tmp_end_fu_1555_p34;
wire   [63:0] tmp_end_fu_1555_p36;
wire   [63:0] tmp_end_fu_1555_p38;
wire   [63:0] tmp_end_fu_1555_p40;
wire   [63:0] tmp_end_fu_1555_p42;
wire   [63:0] tmp_end_fu_1555_p44;
wire   [63:0] tmp_end_fu_1555_p46;
wire   [63:0] tmp_end_fu_1555_p48;
wire   [63:0] tmp_end_fu_1555_p50;
wire   [63:0] tmp_end_fu_1555_p52;
wire   [63:0] tmp_end_fu_1555_p54;
wire   [63:0] tmp_end_fu_1555_p56;
wire   [63:0] tmp_end_fu_1555_p58;
wire   [63:0] tmp_end_fu_1555_p60;
wire   [63:0] tmp_end_fu_1555_p62;
wire   [63:0] tmp_end_fu_1555_p64;
wire   [63:0] tmp_end_fu_1555_p65;
wire   [0:0] and_ln43_fu_922_p2;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire   [4:0] e_fu_1100_p1;
wire   [4:0] e_fu_1100_p3;
wire   [4:0] e_fu_1100_p5;
wire   [4:0] e_fu_1100_p7;
wire   [4:0] e_fu_1100_p9;
wire   [4:0] e_fu_1100_p11;
wire   [4:0] e_fu_1100_p13;
wire   [4:0] e_fu_1100_p15;
wire   [4:0] e_fu_1100_p17;
wire   [4:0] e_fu_1100_p19;
wire   [4:0] e_fu_1100_p21;
wire   [4:0] e_fu_1100_p23;
wire   [4:0] e_fu_1100_p25;
wire   [4:0] e_fu_1100_p27;
wire   [4:0] e_fu_1100_p29;
wire   [4:0] e_fu_1100_p31;
wire  signed [4:0] e_fu_1100_p33;
wire  signed [4:0] e_fu_1100_p35;
wire  signed [4:0] e_fu_1100_p37;
wire  signed [4:0] e_fu_1100_p39;
wire  signed [4:0] e_fu_1100_p41;
wire  signed [4:0] e_fu_1100_p43;
wire  signed [4:0] e_fu_1100_p45;
wire  signed [4:0] e_fu_1100_p47;
wire  signed [4:0] e_fu_1100_p49;
wire  signed [4:0] e_fu_1100_p51;
wire  signed [4:0] e_fu_1100_p53;
wire  signed [4:0] e_fu_1100_p55;
wire  signed [4:0] e_fu_1100_p57;
wire  signed [4:0] e_fu_1100_p59;
wire  signed [4:0] e_fu_1100_p61;
wire  signed [4:0] e_fu_1100_p63;
wire   [4:0] tmp_end_fu_1555_p1;
wire   [4:0] tmp_end_fu_1555_p3;
wire   [4:0] tmp_end_fu_1555_p5;
wire   [4:0] tmp_end_fu_1555_p7;
wire   [4:0] tmp_end_fu_1555_p9;
wire   [4:0] tmp_end_fu_1555_p11;
wire   [4:0] tmp_end_fu_1555_p13;
wire   [4:0] tmp_end_fu_1555_p15;
wire   [4:0] tmp_end_fu_1555_p17;
wire   [4:0] tmp_end_fu_1555_p19;
wire   [4:0] tmp_end_fu_1555_p21;
wire   [4:0] tmp_end_fu_1555_p23;
wire   [4:0] tmp_end_fu_1555_p25;
wire   [4:0] tmp_end_fu_1555_p27;
wire   [4:0] tmp_end_fu_1555_p29;
wire   [4:0] tmp_end_fu_1555_p31;
wire  signed [4:0] tmp_end_fu_1555_p33;
wire  signed [4:0] tmp_end_fu_1555_p35;
wire  signed [4:0] tmp_end_fu_1555_p37;
wire  signed [4:0] tmp_end_fu_1555_p39;
wire  signed [4:0] tmp_end_fu_1555_p41;
wire  signed [4:0] tmp_end_fu_1555_p43;
wire  signed [4:0] tmp_end_fu_1555_p45;
wire  signed [4:0] tmp_end_fu_1555_p47;
wire  signed [4:0] tmp_end_fu_1555_p49;
wire  signed [4:0] tmp_end_fu_1555_p51;
wire  signed [4:0] tmp_end_fu_1555_p53;
wire  signed [4:0] tmp_end_fu_1555_p55;
wire  signed [4:0] tmp_end_fu_1555_p57;
wire  signed [4:0] tmp_end_fu_1555_p59;
wire  signed [4:0] tmp_end_fu_1555_p61;
wire  signed [4:0] tmp_end_fu_1555_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start_reg = 1'b0;
#0 horizon_fu_270 = 4'd0;
end
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_782(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_782_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_782_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_782_ap_ready),.e(e_reg_1915),.cnt(cnt_reg_746),.tmp_end(tmp_end_reg_1920),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_1_ce0),.edges_1_q0(edges_1_q0),.edges_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_2_address0),.edges_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_2_ce0),.edges_2_q0(edges_2_q0),.edges_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_3_address0),.edges_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_3_ce0),.edges_3_q0(edges_3_q0),.edges_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_4_address0),.edges_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_4_ce0),.edges_4_q0(edges_4_q0),.edges_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_5_address0),.edges_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_5_ce0),.edges_5_q0(edges_5_q0),.edges_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_6_address0),.edges_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_6_ce0),.edges_6_q0(edges_6_q0),.edges_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_7_address0),.edges_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_7_ce0),.edges_7_q0(edges_7_q0),.edges_8_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_8_address0),.edges_8_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_8_ce0),.edges_8_q0(edges_8_q0),.edges_9_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_9_address0),.edges_9_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_9_ce0),.edges_9_q0(edges_9_q0),.edges_10_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_10_address0),.edges_10_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_10_ce0),.edges_10_q0(edges_10_q0),.edges_11_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_11_address0),.edges_11_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_11_ce0),.edges_11_q0(edges_11_q0),.edges_12_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_12_address0),.edges_12_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_12_ce0),.edges_12_q0(edges_12_q0),.edges_13_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_13_address0),.edges_13_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_13_ce0),.edges_13_q0(edges_13_q0),.edges_14_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_14_address0),.edges_14_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_14_ce0),.edges_14_q0(edges_14_q0),.edges_15_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_15_address0),.edges_15_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_15_ce0),.edges_15_q0(edges_15_q0),.edges_16_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_16_address0),.edges_16_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_16_ce0),.edges_16_q0(edges_16_q0),.edges_17_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_17_address0),.edges_17_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_17_ce0),.edges_17_q0(edges_17_q0),.edges_18_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_18_address0),.edges_18_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_18_ce0),.edges_18_q0(edges_18_q0),.edges_19_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_19_address0),.edges_19_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_19_ce0),.edges_19_q0(edges_19_q0),.edges_20_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_20_address0),.edges_20_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_20_ce0),.edges_20_q0(edges_20_q0),.edges_21_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_21_address0),.edges_21_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_21_ce0),.edges_21_q0(edges_21_q0),.edges_22_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_22_address0),.edges_22_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_22_ce0),.edges_22_q0(edges_22_q0),.edges_23_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_23_address0),.edges_23_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_23_ce0),.edges_23_q0(edges_23_q0),.edges_24_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_24_address0),.edges_24_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_24_ce0),.edges_24_q0(edges_24_q0),.edges_25_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_25_address0),.edges_25_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_25_ce0),.edges_25_q0(edges_25_q0),.edges_26_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_26_address0),.edges_26_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_26_ce0),.edges_26_q0(edges_26_q0),.edges_27_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_27_address0),.edges_27_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_27_ce0),.edges_27_q0(edges_27_q0),.edges_28_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_28_address0),.edges_28_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_28_ce0),.edges_28_q0(edges_28_q0),.edges_29_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_29_address0),.edges_29_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_29_ce0),.edges_29_q0(edges_29_q0),.edges_30_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_30_address0),.edges_30_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_30_ce0),.edges_30_q0(edges_30_q0),.edges_31_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_31_address0),.edges_31_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_edges_31_ce0),.edges_31_q0(edges_31_q0),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_782_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_782_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_782_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_782_level_d0),.level_q0(level_q0),.indvars_iv_next11_cast4(indvars_iv_next11_reg_1712),.cnt_14_out(grp_bfs_Pipeline_loop_neighbors_fu_782_cnt_14_out),.cnt_14_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_782_cnt_14_out_ap_vld));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U55(.din0(e_fu_1100_p2),.din1(e_fu_1100_p4),.din2(e_fu_1100_p6),.din3(e_fu_1100_p8),.din4(e_fu_1100_p10),.din5(e_fu_1100_p12),.din6(e_fu_1100_p14),.din7(e_fu_1100_p16),.din8(e_fu_1100_p18),.din9(e_fu_1100_p20),.din10(e_fu_1100_p22),.din11(e_fu_1100_p24),.din12(e_fu_1100_p26),.din13(e_fu_1100_p28),.din14(e_fu_1100_p30),.din15(e_fu_1100_p32),.din16(e_fu_1100_p34),.din17(e_fu_1100_p36),.din18(e_fu_1100_p38),.din19(e_fu_1100_p40),.din20(e_fu_1100_p42),.din21(e_fu_1100_p44),.din22(e_fu_1100_p46),.din23(e_fu_1100_p48),.din24(e_fu_1100_p50),.din25(e_fu_1100_p52),.din26(e_fu_1100_p54),.din27(e_fu_1100_p56),.din28(e_fu_1100_p58),.din29(e_fu_1100_p60),.din30(e_fu_1100_p62),.din31(e_fu_1100_p64),.def(e_fu_1100_p65),.sel(trunc_ln24_reg_1732),.dout(e_fu_1100_p67));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U56(.din0(tmp_end_fu_1555_p2),.din1(tmp_end_fu_1555_p4),.din2(tmp_end_fu_1555_p6),.din3(tmp_end_fu_1555_p8),.din4(tmp_end_fu_1555_p10),.din5(tmp_end_fu_1555_p12),.din6(tmp_end_fu_1555_p14),.din7(tmp_end_fu_1555_p16),.din8(tmp_end_fu_1555_p18),.din9(tmp_end_fu_1555_p20),.din10(tmp_end_fu_1555_p22),.din11(tmp_end_fu_1555_p24),.din12(tmp_end_fu_1555_p26),.din13(tmp_end_fu_1555_p28),.din14(tmp_end_fu_1555_p30),.din15(tmp_end_fu_1555_p32),.din16(tmp_end_fu_1555_p34),.din17(tmp_end_fu_1555_p36),.din18(tmp_end_fu_1555_p38),.din19(tmp_end_fu_1555_p40),.din20(tmp_end_fu_1555_p42),.din21(tmp_end_fu_1555_p44),.din22(tmp_end_fu_1555_p46),.din23(tmp_end_fu_1555_p48),.din24(tmp_end_fu_1555_p50),.din25(tmp_end_fu_1555_p52),.din26(tmp_end_fu_1555_p54),.din27(tmp_end_fu_1555_p56),.din28(tmp_end_fu_1555_p58),.din29(tmp_end_fu_1555_p60),.din30(tmp_end_fu_1555_p62),.din31(tmp_end_fu_1555_p64),.def(tmp_end_fu_1555_p65),.sel(trunc_ln24_reg_1732),.dout(tmp_end_fu_1555_p67));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state6) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_782_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln25_fu_967_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        cnt_4_reg_770 <= cnt_reg_746;
    end else if (((icmp_ln25_reg_1751 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        cnt_4_reg_770 <= grp_bfs_Pipeline_loop_neighbors_fu_782_cnt_14_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cnt_reg_746 <= ap_phi_mux_cnt_4_phi_fu_774_p4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cnt_reg_746 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        horizon_fu_270 <= 4'd0;
    end else if (((icmp_ln24_fu_880_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        horizon_fu_270 <= indvars_iv_next11_reg_1712;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_reg_759 <= n_1_reg_1727;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        n_reg_759 <= 9'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_1915 <= e_fu_1100_p67;
        tmp_end_reg_1920 <= tmp_end_fu_1555_p67;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln25_reg_1751 <= icmp_ln25_fu_967_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv_next11_cast3_reg_1719[3 : 0] <= indvars_iv_next11_cast3_fu_876_p1[3 : 0];
        indvars_iv_next11_reg_1712 <= indvars_iv_next11_fu_870_p2;
        zext_ln15_reg_1707[3 : 0] <= zext_ln15_fu_866_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln_reg_1738 <= {{n_reg_759[7:5]}};
        n_1_reg_1727 <= n_1_fu_886_p2;
        trunc_ln24_reg_1732 <= trunc_ln24_fu_897_p1;
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
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_bfs_Pipeline_loop_neighbors_fu_782_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln24_fu_880_p2 == 1'd1) & (1'd0 == and_ln43_fu_922_p2) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((icmp_ln25_reg_1751 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_phi_mux_cnt_4_phi_fu_774_p4 = grp_bfs_Pipeline_loop_neighbors_fu_782_cnt_14_out;
    end else begin
        ap_phi_mux_cnt_4_phi_fu_774_p4 = cnt_4_reg_770;
    end
end
always @ (*) begin
    if (((icmp_ln24_fu_880_p2 == 1'd1) & (1'd0 == and_ln43_fu_922_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_level_address0;
    end else begin
        level_address0 = level_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_address0_local = zext_ln24_fu_892_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_address0_local = starting_node;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_level_ce0;
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
        level_counts_address0_local = indvars_iv_next11_cast3_reg_1719;
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
        level_counts_d0_local = cnt_reg_746;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_d0_local = 64'd1;
    end else begin
        level_counts_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln24_fu_880_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_782_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_782_level_we0;
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
        nodes_16_ce0_local = 1'b1;
    end else begin
        nodes_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_17_ce0_local = 1'b1;
    end else begin
        nodes_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_18_ce0_local = 1'b1;
    end else begin
        nodes_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_19_ce0_local = 1'b1;
    end else begin
        nodes_19_ce0_local = 1'b0;
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
        nodes_20_ce0_local = 1'b1;
    end else begin
        nodes_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_21_ce0_local = 1'b1;
    end else begin
        nodes_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_22_ce0_local = 1'b1;
    end else begin
        nodes_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_23_ce0_local = 1'b1;
    end else begin
        nodes_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_24_ce0_local = 1'b1;
    end else begin
        nodes_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_25_ce0_local = 1'b1;
    end else begin
        nodes_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_26_ce0_local = 1'b1;
    end else begin
        nodes_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_27_ce0_local = 1'b1;
    end else begin
        nodes_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_28_ce0_local = 1'b1;
    end else begin
        nodes_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_29_ce0_local = 1'b1;
    end else begin
        nodes_29_ce0_local = 1'b0;
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
        nodes_30_ce0_local = 1'b1;
    end else begin
        nodes_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_31_ce0_local = 1'b1;
    end else begin
        nodes_31_ce0_local = 1'b0;
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
            if (((icmp_ln24_fu_880_p2 == 1'd1) & (1'd0 == and_ln43_fu_922_p2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln24_fu_880_p2 == 1'd1) & (1'd1 == and_ln43_fu_922_p2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln25_fu_967_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_bfs_Pipeline_loop_neighbors_fu_782_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign and_ln43_fu_922_p2 = (icmp_ln43_fu_911_p2 & icmp_ln21_fu_917_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_NS_fsm_state6 = ap_NS_fsm[32'd5];
assign e_fu_1100_p10 = nodes_4_q0[63:0];
assign e_fu_1100_p12 = nodes_5_q0[63:0];
assign e_fu_1100_p14 = nodes_6_q0[63:0];
assign e_fu_1100_p16 = nodes_7_q0[63:0];
assign e_fu_1100_p18 = nodes_8_q0[63:0];
assign e_fu_1100_p2 = nodes_0_q0[63:0];
assign e_fu_1100_p20 = nodes_9_q0[63:0];
assign e_fu_1100_p22 = nodes_10_q0[63:0];
assign e_fu_1100_p24 = nodes_11_q0[63:0];
assign e_fu_1100_p26 = nodes_12_q0[63:0];
assign e_fu_1100_p28 = nodes_13_q0[63:0];
assign e_fu_1100_p30 = nodes_14_q0[63:0];
assign e_fu_1100_p32 = nodes_15_q0[63:0];
assign e_fu_1100_p34 = nodes_16_q0[63:0];
assign e_fu_1100_p36 = nodes_17_q0[63:0];
assign e_fu_1100_p38 = nodes_18_q0[63:0];
assign e_fu_1100_p4 = nodes_1_q0[63:0];
assign e_fu_1100_p40 = nodes_19_q0[63:0];
assign e_fu_1100_p42 = nodes_20_q0[63:0];
assign e_fu_1100_p44 = nodes_21_q0[63:0];
assign e_fu_1100_p46 = nodes_22_q0[63:0];
assign e_fu_1100_p48 = nodes_23_q0[63:0];
assign e_fu_1100_p50 = nodes_24_q0[63:0];
assign e_fu_1100_p52 = nodes_25_q0[63:0];
assign e_fu_1100_p54 = nodes_26_q0[63:0];
assign e_fu_1100_p56 = nodes_27_q0[63:0];
assign e_fu_1100_p58 = nodes_28_q0[63:0];
assign e_fu_1100_p6 = nodes_2_q0[63:0];
assign e_fu_1100_p60 = nodes_29_q0[63:0];
assign e_fu_1100_p62 = nodes_30_q0[63:0];
assign e_fu_1100_p64 = nodes_31_q0[63:0];
assign e_fu_1100_p65 = 'bx;
assign e_fu_1100_p8 = nodes_3_q0[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_0_ce0;
assign edges_10_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_10_address0;
assign edges_10_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_10_ce0;
assign edges_11_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_11_address0;
assign edges_11_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_11_ce0;
assign edges_12_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_12_address0;
assign edges_12_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_12_ce0;
assign edges_13_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_13_address0;
assign edges_13_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_13_ce0;
assign edges_14_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_14_address0;
assign edges_14_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_14_ce0;
assign edges_15_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_15_address0;
assign edges_15_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_15_ce0;
assign edges_16_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_16_address0;
assign edges_16_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_16_ce0;
assign edges_17_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_17_address0;
assign edges_17_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_17_ce0;
assign edges_18_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_18_address0;
assign edges_18_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_18_ce0;
assign edges_19_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_19_address0;
assign edges_19_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_19_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_1_ce0;
assign edges_20_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_20_address0;
assign edges_20_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_20_ce0;
assign edges_21_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_21_address0;
assign edges_21_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_21_ce0;
assign edges_22_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_22_address0;
assign edges_22_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_22_ce0;
assign edges_23_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_23_address0;
assign edges_23_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_23_ce0;
assign edges_24_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_24_address0;
assign edges_24_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_24_ce0;
assign edges_25_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_25_address0;
assign edges_25_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_25_ce0;
assign edges_26_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_26_address0;
assign edges_26_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_26_ce0;
assign edges_27_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_27_address0;
assign edges_27_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_27_ce0;
assign edges_28_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_28_address0;
assign edges_28_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_28_ce0;
assign edges_29_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_29_address0;
assign edges_29_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_29_ce0;
assign edges_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_2_address0;
assign edges_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_2_ce0;
assign edges_30_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_30_address0;
assign edges_30_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_30_ce0;
assign edges_31_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_31_address0;
assign edges_31_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_31_ce0;
assign edges_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_3_address0;
assign edges_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_3_ce0;
assign edges_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_4_address0;
assign edges_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_4_ce0;
assign edges_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_5_address0;
assign edges_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_5_ce0;
assign edges_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_6_address0;
assign edges_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_6_ce0;
assign edges_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_7_address0;
assign edges_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_7_ce0;
assign edges_8_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_8_address0;
assign edges_8_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_8_ce0;
assign edges_9_address0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_9_address0;
assign edges_9_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_782_edges_9_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_782_ap_start_reg;
assign icmp_ln21_fu_917_p2 = ((indvars_iv_next11_reg_1712 < 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_880_p2 = ((n_reg_759 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_967_p2 = ((zext_ln15_reg_1707 == level_q0) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_911_p2 = ((cnt_reg_746 != 64'd0) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast3_fu_876_p1 = indvars_iv_next11_fu_870_p2;
assign indvars_iv_next11_fu_870_p2 = (horizon_fu_270 + 4'd1);
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = level_counts_d0_local;
assign level_counts_we0 = level_counts_we0_local;
assign n_1_fu_886_p2 = (n_reg_759 + 9'd1);
assign nodes_0_address0 = zext_ln12_fu_932_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_10_address0 = zext_ln12_fu_932_p1;
assign nodes_10_ce0 = nodes_10_ce0_local;
assign nodes_11_address0 = zext_ln12_fu_932_p1;
assign nodes_11_ce0 = nodes_11_ce0_local;
assign nodes_12_address0 = zext_ln12_fu_932_p1;
assign nodes_12_ce0 = nodes_12_ce0_local;
assign nodes_13_address0 = zext_ln12_fu_932_p1;
assign nodes_13_ce0 = nodes_13_ce0_local;
assign nodes_14_address0 = zext_ln12_fu_932_p1;
assign nodes_14_ce0 = nodes_14_ce0_local;
assign nodes_15_address0 = zext_ln12_fu_932_p1;
assign nodes_15_ce0 = nodes_15_ce0_local;
assign nodes_16_address0 = zext_ln12_fu_932_p1;
assign nodes_16_ce0 = nodes_16_ce0_local;
assign nodes_17_address0 = zext_ln12_fu_932_p1;
assign nodes_17_ce0 = nodes_17_ce0_local;
assign nodes_18_address0 = zext_ln12_fu_932_p1;
assign nodes_18_ce0 = nodes_18_ce0_local;
assign nodes_19_address0 = zext_ln12_fu_932_p1;
assign nodes_19_ce0 = nodes_19_ce0_local;
assign nodes_1_address0 = zext_ln12_fu_932_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign nodes_20_address0 = zext_ln12_fu_932_p1;
assign nodes_20_ce0 = nodes_20_ce0_local;
assign nodes_21_address0 = zext_ln12_fu_932_p1;
assign nodes_21_ce0 = nodes_21_ce0_local;
assign nodes_22_address0 = zext_ln12_fu_932_p1;
assign nodes_22_ce0 = nodes_22_ce0_local;
assign nodes_23_address0 = zext_ln12_fu_932_p1;
assign nodes_23_ce0 = nodes_23_ce0_local;
assign nodes_24_address0 = zext_ln12_fu_932_p1;
assign nodes_24_ce0 = nodes_24_ce0_local;
assign nodes_25_address0 = zext_ln12_fu_932_p1;
assign nodes_25_ce0 = nodes_25_ce0_local;
assign nodes_26_address0 = zext_ln12_fu_932_p1;
assign nodes_26_ce0 = nodes_26_ce0_local;
assign nodes_27_address0 = zext_ln12_fu_932_p1;
assign nodes_27_ce0 = nodes_27_ce0_local;
assign nodes_28_address0 = zext_ln12_fu_932_p1;
assign nodes_28_ce0 = nodes_28_ce0_local;
assign nodes_29_address0 = zext_ln12_fu_932_p1;
assign nodes_29_ce0 = nodes_29_ce0_local;
assign nodes_2_address0 = zext_ln12_fu_932_p1;
assign nodes_2_ce0 = nodes_2_ce0_local;
assign nodes_30_address0 = zext_ln12_fu_932_p1;
assign nodes_30_ce0 = nodes_30_ce0_local;
assign nodes_31_address0 = zext_ln12_fu_932_p1;
assign nodes_31_ce0 = nodes_31_ce0_local;
assign nodes_3_address0 = zext_ln12_fu_932_p1;
assign nodes_3_ce0 = nodes_3_ce0_local;
assign nodes_4_address0 = zext_ln12_fu_932_p1;
assign nodes_4_ce0 = nodes_4_ce0_local;
assign nodes_5_address0 = zext_ln12_fu_932_p1;
assign nodes_5_ce0 = nodes_5_ce0_local;
assign nodes_6_address0 = zext_ln12_fu_932_p1;
assign nodes_6_ce0 = nodes_6_ce0_local;
assign nodes_7_address0 = zext_ln12_fu_932_p1;
assign nodes_7_ce0 = nodes_7_ce0_local;
assign nodes_8_address0 = zext_ln12_fu_932_p1;
assign nodes_8_ce0 = nodes_8_ce0_local;
assign nodes_9_address0 = zext_ln12_fu_932_p1;
assign nodes_9_ce0 = nodes_9_ce0_local;
assign tmp_end_fu_1555_p10 = {{nodes_4_q0[127:64]}};
assign tmp_end_fu_1555_p12 = {{nodes_5_q0[127:64]}};
assign tmp_end_fu_1555_p14 = {{nodes_6_q0[127:64]}};
assign tmp_end_fu_1555_p16 = {{nodes_7_q0[127:64]}};
assign tmp_end_fu_1555_p18 = {{nodes_8_q0[127:64]}};
assign tmp_end_fu_1555_p2 = {{nodes_0_q0[127:64]}};
assign tmp_end_fu_1555_p20 = {{nodes_9_q0[127:64]}};
assign tmp_end_fu_1555_p22 = {{nodes_10_q0[127:64]}};
assign tmp_end_fu_1555_p24 = {{nodes_11_q0[127:64]}};
assign tmp_end_fu_1555_p26 = {{nodes_12_q0[127:64]}};
assign tmp_end_fu_1555_p28 = {{nodes_13_q0[127:64]}};
assign tmp_end_fu_1555_p30 = {{nodes_14_q0[127:64]}};
assign tmp_end_fu_1555_p32 = {{nodes_15_q0[127:64]}};
assign tmp_end_fu_1555_p34 = {{nodes_16_q0[127:64]}};
assign tmp_end_fu_1555_p36 = {{nodes_17_q0[127:64]}};
assign tmp_end_fu_1555_p38 = {{nodes_18_q0[127:64]}};
assign tmp_end_fu_1555_p4 = {{nodes_1_q0[127:64]}};
assign tmp_end_fu_1555_p40 = {{nodes_19_q0[127:64]}};
assign tmp_end_fu_1555_p42 = {{nodes_20_q0[127:64]}};
assign tmp_end_fu_1555_p44 = {{nodes_21_q0[127:64]}};
assign tmp_end_fu_1555_p46 = {{nodes_22_q0[127:64]}};
assign tmp_end_fu_1555_p48 = {{nodes_23_q0[127:64]}};
assign tmp_end_fu_1555_p50 = {{nodes_24_q0[127:64]}};
assign tmp_end_fu_1555_p52 = {{nodes_25_q0[127:64]}};
assign tmp_end_fu_1555_p54 = {{nodes_26_q0[127:64]}};
assign tmp_end_fu_1555_p56 = {{nodes_27_q0[127:64]}};
assign tmp_end_fu_1555_p58 = {{nodes_28_q0[127:64]}};
assign tmp_end_fu_1555_p6 = {{nodes_2_q0[127:64]}};
assign tmp_end_fu_1555_p60 = {{nodes_29_q0[127:64]}};
assign tmp_end_fu_1555_p62 = {{nodes_30_q0[127:64]}};
assign tmp_end_fu_1555_p64 = {{nodes_31_q0[127:64]}};
assign tmp_end_fu_1555_p65 = 'bx;
assign tmp_end_fu_1555_p8 = {{nodes_3_q0[127:64]}};
assign trunc_ln24_fu_897_p1 = n_reg_759[4:0];
assign zext_ln12_fu_932_p1 = lshr_ln_reg_1738;
assign zext_ln15_fu_866_p1 = horizon_fu_270;
assign zext_ln24_fu_892_p1 = n_reg_759;
always @ (posedge ap_clk) begin
    zext_ln15_reg_1707[7:4] <= 4'b0000;
    indvars_iv_next11_cast3_reg_1719[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 