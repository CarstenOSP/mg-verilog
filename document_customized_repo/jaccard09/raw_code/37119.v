module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,nodes_2_address0,nodes_2_ce0,nodes_2_q0,nodes_3_address0,nodes_3_ce0,nodes_3_q0,nodes_4_address0,nodes_4_ce0,nodes_4_q0,nodes_5_address0,nodes_5_ce0,nodes_5_q0,nodes_6_address0,nodes_6_ce0,nodes_6_q0,nodes_7_address0,nodes_7_ce0,nodes_7_q0,nodes_8_address0,nodes_8_ce0,nodes_8_q0,nodes_9_address0,nodes_9_ce0,nodes_9_q0,nodes_10_address0,nodes_10_ce0,nodes_10_q0,nodes_11_address0,nodes_11_ce0,nodes_11_q0,nodes_12_address0,nodes_12_ce0,nodes_12_q0,nodes_13_address0,nodes_13_ce0,nodes_13_q0,nodes_14_address0,nodes_14_ce0,nodes_14_q0,nodes_15_address0,nodes_15_ce0,nodes_15_q0,nodes_16_address0,nodes_16_ce0,nodes_16_q0,nodes_17_address0,nodes_17_ce0,nodes_17_q0,nodes_18_address0,nodes_18_ce0,nodes_18_q0,nodes_19_address0,nodes_19_ce0,nodes_19_q0,nodes_20_address0,nodes_20_ce0,nodes_20_q0,nodes_21_address0,nodes_21_ce0,nodes_21_q0,nodes_22_address0,nodes_22_ce0,nodes_22_q0,nodes_23_address0,nodes_23_ce0,nodes_23_q0,nodes_24_address0,nodes_24_ce0,nodes_24_q0,nodes_25_address0,nodes_25_ce0,nodes_25_q0,nodes_26_address0,nodes_26_ce0,nodes_26_q0,nodes_27_address0,nodes_27_ce0,nodes_27_q0,nodes_28_address0,nodes_28_ce0,nodes_28_q0,nodes_29_address0,nodes_29_ce0,nodes_29_q0,nodes_30_address0,nodes_30_ce0,nodes_30_q0,nodes_31_address0,nodes_31_ce0,nodes_31_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,edges_16_address0,edges_16_ce0,edges_16_q0,edges_17_address0,edges_17_ce0,edges_17_q0,edges_18_address0,edges_18_ce0,edges_18_q0,edges_19_address0,edges_19_ce0,edges_19_q0,edges_20_address0,edges_20_ce0,edges_20_q0,edges_21_address0,edges_21_ce0,edges_21_q0,edges_22_address0,edges_22_ce0,edges_22_q0,edges_23_address0,edges_23_ce0,edges_23_q0,edges_24_address0,edges_24_ce0,edges_24_q0,edges_25_address0,edges_25_ce0,edges_25_q0,edges_26_address0,edges_26_ce0,edges_26_q0,edges_27_address0,edges_27_ce0,edges_27_q0,edges_28_address0,edges_28_ce0,edges_28_q0,edges_29_address0,edges_29_ce0,edges_29_q0,edges_30_address0,edges_30_ce0,edges_30_q0,edges_31_address0,edges_31_ce0,edges_31_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0); 
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
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] trunc_ln32_fu_1412_p1;
reg   [4:0] trunc_ln32_reg_2448;
wire    ap_CS_fsm_state2;
wire   [7:0] n_fu_1521_p67;
reg   [7:0] n_reg_2622;
wire    ap_CS_fsm_state3;
wire   [4:0] trunc_ln18_fu_1656_p1;
reg   [4:0] trunc_ln18_reg_2627;
reg   [2:0] lshr_ln1_reg_2633;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_1833_p67;
reg   [63:0] e_reg_2798;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_end_fu_2288_p67;
reg   [63:0] tmp_end_reg_2803;
reg   [2:0] queue_address0;
reg    queue_ce0;
reg    queue_we0;
reg   [7:0] queue_d0;
wire   [7:0] queue_q0;
reg   [2:0] queue_1_address0;
reg    queue_1_ce0;
reg    queue_1_we0;
wire   [7:0] queue_1_q0;
reg   [2:0] queue_2_address0;
reg    queue_2_ce0;
reg    queue_2_we0;
wire   [7:0] queue_2_q0;
reg   [2:0] queue_3_address0;
reg    queue_3_ce0;
reg    queue_3_we0;
wire   [7:0] queue_3_q0;
reg   [2:0] queue_4_address0;
reg    queue_4_ce0;
reg    queue_4_we0;
wire   [7:0] queue_4_q0;
reg   [2:0] queue_5_address0;
reg    queue_5_ce0;
reg    queue_5_we0;
wire   [7:0] queue_5_q0;
reg   [2:0] queue_6_address0;
reg    queue_6_ce0;
reg    queue_6_we0;
wire   [7:0] queue_6_q0;
reg   [2:0] queue_7_address0;
reg    queue_7_ce0;
reg    queue_7_we0;
wire   [7:0] queue_7_q0;
reg   [2:0] queue_8_address0;
reg    queue_8_ce0;
reg    queue_8_we0;
wire   [7:0] queue_8_q0;
reg   [2:0] queue_9_address0;
reg    queue_9_ce0;
reg    queue_9_we0;
wire   [7:0] queue_9_q0;
reg   [2:0] queue_10_address0;
reg    queue_10_ce0;
reg    queue_10_we0;
wire   [7:0] queue_10_q0;
reg   [2:0] queue_11_address0;
reg    queue_11_ce0;
reg    queue_11_we0;
wire   [7:0] queue_11_q0;
reg   [2:0] queue_12_address0;
reg    queue_12_ce0;
reg    queue_12_we0;
wire   [7:0] queue_12_q0;
reg   [2:0] queue_13_address0;
reg    queue_13_ce0;
reg    queue_13_we0;
wire   [7:0] queue_13_q0;
reg   [2:0] queue_14_address0;
reg    queue_14_ce0;
reg    queue_14_we0;
wire   [7:0] queue_14_q0;
reg   [2:0] queue_15_address0;
reg    queue_15_ce0;
reg    queue_15_we0;
wire   [7:0] queue_15_q0;
reg   [2:0] queue_16_address0;
reg    queue_16_ce0;
reg    queue_16_we0;
wire   [7:0] queue_16_q0;
reg   [2:0] queue_17_address0;
reg    queue_17_ce0;
reg    queue_17_we0;
wire   [7:0] queue_17_q0;
reg   [2:0] queue_18_address0;
reg    queue_18_ce0;
reg    queue_18_we0;
wire   [7:0] queue_18_q0;
reg   [2:0] queue_19_address0;
reg    queue_19_ce0;
reg    queue_19_we0;
wire   [7:0] queue_19_q0;
reg   [2:0] queue_20_address0;
reg    queue_20_ce0;
reg    queue_20_we0;
wire   [7:0] queue_20_q0;
reg   [2:0] queue_21_address0;
reg    queue_21_ce0;
reg    queue_21_we0;
wire   [7:0] queue_21_q0;
reg   [2:0] queue_22_address0;
reg    queue_22_ce0;
reg    queue_22_we0;
wire   [7:0] queue_22_q0;
reg   [2:0] queue_23_address0;
reg    queue_23_ce0;
reg    queue_23_we0;
wire   [7:0] queue_23_q0;
reg   [2:0] queue_24_address0;
reg    queue_24_ce0;
reg    queue_24_we0;
wire   [7:0] queue_24_q0;
reg   [2:0] queue_25_address0;
reg    queue_25_ce0;
reg    queue_25_we0;
wire   [7:0] queue_25_q0;
reg   [2:0] queue_26_address0;
reg    queue_26_ce0;
reg    queue_26_we0;
wire   [7:0] queue_26_q0;
reg   [2:0] queue_27_address0;
reg    queue_27_ce0;
reg    queue_27_we0;
wire   [7:0] queue_27_q0;
reg   [2:0] queue_28_address0;
reg    queue_28_ce0;
reg    queue_28_we0;
wire   [7:0] queue_28_q0;
reg   [2:0] queue_29_address0;
reg    queue_29_ce0;
reg    queue_29_we0;
wire   [7:0] queue_29_q0;
reg   [2:0] queue_30_address0;
reg    queue_30_ce0;
reg    queue_30_we0;
wire   [7:0] queue_30_q0;
reg   [2:0] queue_31_address0;
reg    queue_31_ce0;
reg    queue_31_we0;
wire   [7:0] queue_31_q0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_ready;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_level_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_d0;
wire   [2:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_d0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_0_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_1_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_2_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_3_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_4_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_5_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_6_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_7_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_8_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_8_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_9_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_9_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_10_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_10_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_11_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_11_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_12_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_12_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_13_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_13_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_14_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_14_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_15_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_15_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_16_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_16_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_17_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_17_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_18_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_18_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_19_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_19_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_20_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_20_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_21_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_21_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_22_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_22_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_23_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_23_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_24_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_24_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_25_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_25_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_26_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_26_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_27_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_27_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_28_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_28_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_29_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_29_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_30_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_30_ce0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_31_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_31_ce0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_we0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_1255_q_in_2_out_o;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1255_q_in_2_out_o_ap_vld;
reg    grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start_reg;
reg   [6:0] ap_NS_fsm;
wire    ap_NS_fsm_state6;
wire    ap_CS_fsm_state7;
reg   [63:0] q_in_fu_270;
wire   [63:0] zext_ln16_fu_1426_p1;
wire   [0:0] icmp_ln32_fu_1386_p2;
wire   [0:0] icmp_ln33_fu_1462_p2;
wire   [0:0] icmp_ln33_1_fu_1496_p2;
wire   [0:0] and_ln33_fu_1480_p2;
wire   [63:0] zext_ln18_fu_1670_p1;
reg   [7:0] q_out_fu_274;
wire   [7:0] q_out_1_fu_1505_p2;
reg   [8:0] dummy_fu_278;
wire   [8:0] dummy_2_fu_1392_p2;
reg    level_we0_local;
reg    level_ce0_local;
reg    level_counts_we0_local;
reg    level_counts_ce0_local;
reg    queue_we0_local;
wire   [7:0] trunc_ln14_fu_1363_p1;
reg    queue_ce0_local;
reg   [2:0] queue_address0_local;
reg    queue_1_ce0_local;
reg    queue_2_ce0_local;
reg    queue_3_ce0_local;
reg    queue_4_ce0_local;
reg    queue_5_ce0_local;
reg    queue_6_ce0_local;
reg    queue_7_ce0_local;
reg    queue_8_ce0_local;
reg    queue_9_ce0_local;
reg    queue_10_ce0_local;
reg    queue_11_ce0_local;
reg    queue_12_ce0_local;
reg    queue_13_ce0_local;
reg    queue_14_ce0_local;
reg    queue_15_ce0_local;
reg    queue_16_ce0_local;
reg    queue_17_ce0_local;
reg    queue_18_ce0_local;
reg    queue_19_ce0_local;
reg    queue_20_ce0_local;
reg    queue_21_ce0_local;
reg    queue_22_ce0_local;
reg    queue_23_ce0_local;
reg    queue_24_ce0_local;
reg    queue_25_ce0_local;
reg    queue_26_ce0_local;
reg    queue_27_ce0_local;
reg    queue_28_ce0_local;
reg    queue_29_ce0_local;
reg    queue_30_ce0_local;
reg    queue_31_ce0_local;
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
wire   [2:0] lshr_ln_fu_1416_p4;
wire   [63:0] zext_ln32_fu_1404_p1;
wire   [0:0] icmp_ln33_2_fu_1468_p2;
wire   [0:0] icmp_ln33_3_fu_1474_p2;
wire   [8:0] zext_ln32_1_fu_1408_p1;
wire   [8:0] add_ln33_fu_1486_p2;
wire   [63:0] zext_ln33_fu_1492_p1;
wire   [7:0] n_fu_1521_p65;
wire   [63:0] e_fu_1833_p2;
wire   [63:0] e_fu_1833_p4;
wire   [63:0] e_fu_1833_p6;
wire   [63:0] e_fu_1833_p8;
wire   [63:0] e_fu_1833_p10;
wire   [63:0] e_fu_1833_p12;
wire   [63:0] e_fu_1833_p14;
wire   [63:0] e_fu_1833_p16;
wire   [63:0] e_fu_1833_p18;
wire   [63:0] e_fu_1833_p20;
wire   [63:0] e_fu_1833_p22;
wire   [63:0] e_fu_1833_p24;
wire   [63:0] e_fu_1833_p26;
wire   [63:0] e_fu_1833_p28;
wire   [63:0] e_fu_1833_p30;
wire   [63:0] e_fu_1833_p32;
wire   [63:0] e_fu_1833_p34;
wire   [63:0] e_fu_1833_p36;
wire   [63:0] e_fu_1833_p38;
wire   [63:0] e_fu_1833_p40;
wire   [63:0] e_fu_1833_p42;
wire   [63:0] e_fu_1833_p44;
wire   [63:0] e_fu_1833_p46;
wire   [63:0] e_fu_1833_p48;
wire   [63:0] e_fu_1833_p50;
wire   [63:0] e_fu_1833_p52;
wire   [63:0] e_fu_1833_p54;
wire   [63:0] e_fu_1833_p56;
wire   [63:0] e_fu_1833_p58;
wire   [63:0] e_fu_1833_p60;
wire   [63:0] e_fu_1833_p62;
wire   [63:0] e_fu_1833_p64;
wire   [63:0] e_fu_1833_p65;
wire   [63:0] tmp_end_fu_2288_p2;
wire   [63:0] tmp_end_fu_2288_p4;
wire   [63:0] tmp_end_fu_2288_p6;
wire   [63:0] tmp_end_fu_2288_p8;
wire   [63:0] tmp_end_fu_2288_p10;
wire   [63:0] tmp_end_fu_2288_p12;
wire   [63:0] tmp_end_fu_2288_p14;
wire   [63:0] tmp_end_fu_2288_p16;
wire   [63:0] tmp_end_fu_2288_p18;
wire   [63:0] tmp_end_fu_2288_p20;
wire   [63:0] tmp_end_fu_2288_p22;
wire   [63:0] tmp_end_fu_2288_p24;
wire   [63:0] tmp_end_fu_2288_p26;
wire   [63:0] tmp_end_fu_2288_p28;
wire   [63:0] tmp_end_fu_2288_p30;
wire   [63:0] tmp_end_fu_2288_p32;
wire   [63:0] tmp_end_fu_2288_p34;
wire   [63:0] tmp_end_fu_2288_p36;
wire   [63:0] tmp_end_fu_2288_p38;
wire   [63:0] tmp_end_fu_2288_p40;
wire   [63:0] tmp_end_fu_2288_p42;
wire   [63:0] tmp_end_fu_2288_p44;
wire   [63:0] tmp_end_fu_2288_p46;
wire   [63:0] tmp_end_fu_2288_p48;
wire   [63:0] tmp_end_fu_2288_p50;
wire   [63:0] tmp_end_fu_2288_p52;
wire   [63:0] tmp_end_fu_2288_p54;
wire   [63:0] tmp_end_fu_2288_p56;
wire   [63:0] tmp_end_fu_2288_p58;
wire   [63:0] tmp_end_fu_2288_p60;
wire   [63:0] tmp_end_fu_2288_p62;
wire   [63:0] tmp_end_fu_2288_p64;
wire   [63:0] tmp_end_fu_2288_p65;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire   [4:0] n_fu_1521_p1;
wire   [4:0] n_fu_1521_p3;
wire   [4:0] n_fu_1521_p5;
wire   [4:0] n_fu_1521_p7;
wire   [4:0] n_fu_1521_p9;
wire   [4:0] n_fu_1521_p11;
wire   [4:0] n_fu_1521_p13;
wire   [4:0] n_fu_1521_p15;
wire   [4:0] n_fu_1521_p17;
wire   [4:0] n_fu_1521_p19;
wire   [4:0] n_fu_1521_p21;
wire   [4:0] n_fu_1521_p23;
wire   [4:0] n_fu_1521_p25;
wire   [4:0] n_fu_1521_p27;
wire   [4:0] n_fu_1521_p29;
wire   [4:0] n_fu_1521_p31;
wire  signed [4:0] n_fu_1521_p33;
wire  signed [4:0] n_fu_1521_p35;
wire  signed [4:0] n_fu_1521_p37;
wire  signed [4:0] n_fu_1521_p39;
wire  signed [4:0] n_fu_1521_p41;
wire  signed [4:0] n_fu_1521_p43;
wire  signed [4:0] n_fu_1521_p45;
wire  signed [4:0] n_fu_1521_p47;
wire  signed [4:0] n_fu_1521_p49;
wire  signed [4:0] n_fu_1521_p51;
wire  signed [4:0] n_fu_1521_p53;
wire  signed [4:0] n_fu_1521_p55;
wire  signed [4:0] n_fu_1521_p57;
wire  signed [4:0] n_fu_1521_p59;
wire  signed [4:0] n_fu_1521_p61;
wire  signed [4:0] n_fu_1521_p63;
wire   [4:0] e_fu_1833_p1;
wire   [4:0] e_fu_1833_p3;
wire   [4:0] e_fu_1833_p5;
wire   [4:0] e_fu_1833_p7;
wire   [4:0] e_fu_1833_p9;
wire   [4:0] e_fu_1833_p11;
wire   [4:0] e_fu_1833_p13;
wire   [4:0] e_fu_1833_p15;
wire   [4:0] e_fu_1833_p17;
wire   [4:0] e_fu_1833_p19;
wire   [4:0] e_fu_1833_p21;
wire   [4:0] e_fu_1833_p23;
wire   [4:0] e_fu_1833_p25;
wire   [4:0] e_fu_1833_p27;
wire   [4:0] e_fu_1833_p29;
wire   [4:0] e_fu_1833_p31;
wire  signed [4:0] e_fu_1833_p33;
wire  signed [4:0] e_fu_1833_p35;
wire  signed [4:0] e_fu_1833_p37;
wire  signed [4:0] e_fu_1833_p39;
wire  signed [4:0] e_fu_1833_p41;
wire  signed [4:0] e_fu_1833_p43;
wire  signed [4:0] e_fu_1833_p45;
wire  signed [4:0] e_fu_1833_p47;
wire  signed [4:0] e_fu_1833_p49;
wire  signed [4:0] e_fu_1833_p51;
wire  signed [4:0] e_fu_1833_p53;
wire  signed [4:0] e_fu_1833_p55;
wire  signed [4:0] e_fu_1833_p57;
wire  signed [4:0] e_fu_1833_p59;
wire  signed [4:0] e_fu_1833_p61;
wire  signed [4:0] e_fu_1833_p63;
wire   [4:0] tmp_end_fu_2288_p1;
wire   [4:0] tmp_end_fu_2288_p3;
wire   [4:0] tmp_end_fu_2288_p5;
wire   [4:0] tmp_end_fu_2288_p7;
wire   [4:0] tmp_end_fu_2288_p9;
wire   [4:0] tmp_end_fu_2288_p11;
wire   [4:0] tmp_end_fu_2288_p13;
wire   [4:0] tmp_end_fu_2288_p15;
wire   [4:0] tmp_end_fu_2288_p17;
wire   [4:0] tmp_end_fu_2288_p19;
wire   [4:0] tmp_end_fu_2288_p21;
wire   [4:0] tmp_end_fu_2288_p23;
wire   [4:0] tmp_end_fu_2288_p25;
wire   [4:0] tmp_end_fu_2288_p27;
wire   [4:0] tmp_end_fu_2288_p29;
wire   [4:0] tmp_end_fu_2288_p31;
wire  signed [4:0] tmp_end_fu_2288_p33;
wire  signed [4:0] tmp_end_fu_2288_p35;
wire  signed [4:0] tmp_end_fu_2288_p37;
wire  signed [4:0] tmp_end_fu_2288_p39;
wire  signed [4:0] tmp_end_fu_2288_p41;
wire  signed [4:0] tmp_end_fu_2288_p43;
wire  signed [4:0] tmp_end_fu_2288_p45;
wire  signed [4:0] tmp_end_fu_2288_p47;
wire  signed [4:0] tmp_end_fu_2288_p49;
wire  signed [4:0] tmp_end_fu_2288_p51;
wire  signed [4:0] tmp_end_fu_2288_p53;
wire  signed [4:0] tmp_end_fu_2288_p55;
wire  signed [4:0] tmp_end_fu_2288_p57;
wire  signed [4:0] tmp_end_fu_2288_p59;
wire  signed [4:0] tmp_end_fu_2288_p61;
wire  signed [4:0] tmp_end_fu_2288_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start_reg = 1'b0;
#0 q_in_fu_270 = 64'd0;
#0 q_out_fu_274 = 8'd0;
#0 dummy_fu_278 = 9'd0;
end
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_address0),.ce0(queue_ce0),.we0(queue_we0),.d0(queue_d0),.q0(queue_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_1_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_1_address0),.ce0(queue_1_ce0),.we0(queue_1_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_d0),.q0(queue_1_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_2_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_2_address0),.ce0(queue_2_ce0),.we0(queue_2_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_d0),.q0(queue_2_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_3_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_3_address0),.ce0(queue_3_ce0),.we0(queue_3_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_d0),.q0(queue_3_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_4_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_4_address0),.ce0(queue_4_ce0),.we0(queue_4_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_d0),.q0(queue_4_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_5_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_5_address0),.ce0(queue_5_ce0),.we0(queue_5_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_d0),.q0(queue_5_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_6_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_6_address0),.ce0(queue_6_ce0),.we0(queue_6_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_d0),.q0(queue_6_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_7_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_7_address0),.ce0(queue_7_ce0),.we0(queue_7_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_d0),.q0(queue_7_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_8_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_8_address0),.ce0(queue_8_ce0),.we0(queue_8_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_d0),.q0(queue_8_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_9_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_9_address0),.ce0(queue_9_ce0),.we0(queue_9_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_d0),.q0(queue_9_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_10_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_10_address0),.ce0(queue_10_ce0),.we0(queue_10_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_d0),.q0(queue_10_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_11_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_11_address0),.ce0(queue_11_ce0),.we0(queue_11_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_d0),.q0(queue_11_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_12_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_12_address0),.ce0(queue_12_ce0),.we0(queue_12_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_d0),.q0(queue_12_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_13_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_13_address0),.ce0(queue_13_ce0),.we0(queue_13_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_d0),.q0(queue_13_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_14_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_14_address0),.ce0(queue_14_ce0),.we0(queue_14_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_d0),.q0(queue_14_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_15_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_15_address0),.ce0(queue_15_ce0),.we0(queue_15_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_d0),.q0(queue_15_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_16_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_16_address0),.ce0(queue_16_ce0),.we0(queue_16_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_d0),.q0(queue_16_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_17_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_17_address0),.ce0(queue_17_ce0),.we0(queue_17_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_d0),.q0(queue_17_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_18_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_18_address0),.ce0(queue_18_ce0),.we0(queue_18_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_d0),.q0(queue_18_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_19_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_19_address0),.ce0(queue_19_ce0),.we0(queue_19_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_d0),.q0(queue_19_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_20_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_20_address0),.ce0(queue_20_ce0),.we0(queue_20_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_d0),.q0(queue_20_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_21_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_21_address0),.ce0(queue_21_ce0),.we0(queue_21_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_d0),.q0(queue_21_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_22_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_22_address0),.ce0(queue_22_ce0),.we0(queue_22_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_d0),.q0(queue_22_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_23_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_23_address0),.ce0(queue_23_ce0),.we0(queue_23_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_d0),.q0(queue_23_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_24_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_24_address0),.ce0(queue_24_ce0),.we0(queue_24_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_d0),.q0(queue_24_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_25_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_25_address0),.ce0(queue_25_ce0),.we0(queue_25_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_d0),.q0(queue_25_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_26_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_26_address0),.ce0(queue_26_ce0),.we0(queue_26_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_d0),.q0(queue_26_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_27_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_27_address0),.ce0(queue_27_ce0),.we0(queue_27_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_d0),.q0(queue_27_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_28_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_28_address0),.ce0(queue_28_ce0),.we0(queue_28_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_d0),.q0(queue_28_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_29_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_29_address0),.ce0(queue_29_ce0),.we0(queue_29_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_d0),.q0(queue_29_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_30_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_30_address0),.ce0(queue_30_ce0),.we0(queue_30_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_d0),.q0(queue_30_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
queue_31_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_31_address0),.ce0(queue_31_ce0),.we0(queue_31_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_d0),.q0(queue_31_q0));
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_1255(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_ready),.e(e_reg_2798),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_d0),.level_q0(level_q0),.zext_ln18(n_reg_2622),.queue_31_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_address0),.queue_31_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_ce0),.queue_31_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_we0),.queue_31_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_d0),.queue_30_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_address0),.queue_30_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_ce0),.queue_30_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_we0),.queue_30_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_d0),.queue_29_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_address0),.queue_29_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_ce0),.queue_29_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_we0),.queue_29_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_d0),.queue_28_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_address0),.queue_28_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_ce0),.queue_28_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_we0),.queue_28_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_d0),.queue_27_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_address0),.queue_27_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_ce0),.queue_27_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_we0),.queue_27_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_d0),.queue_26_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_address0),.queue_26_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_ce0),.queue_26_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_we0),.queue_26_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_d0),.queue_25_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_address0),.queue_25_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_ce0),.queue_25_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_we0),.queue_25_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_d0),.queue_24_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_address0),.queue_24_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_ce0),.queue_24_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_we0),.queue_24_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_d0),.queue_23_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_address0),.queue_23_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_ce0),.queue_23_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_we0),.queue_23_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_d0),.queue_22_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_address0),.queue_22_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_ce0),.queue_22_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_we0),.queue_22_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_d0),.queue_21_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_address0),.queue_21_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_ce0),.queue_21_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_we0),.queue_21_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_d0),.queue_20_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_address0),.queue_20_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_ce0),.queue_20_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_we0),.queue_20_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_d0),.queue_19_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_address0),.queue_19_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_ce0),.queue_19_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_we0),.queue_19_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_d0),.queue_18_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_address0),.queue_18_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_ce0),.queue_18_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_we0),.queue_18_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_d0),.queue_17_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_address0),.queue_17_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_ce0),.queue_17_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_we0),.queue_17_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_d0),.queue_16_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_address0),.queue_16_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_ce0),.queue_16_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_we0),.queue_16_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_d0),.queue_15_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_address0),.queue_15_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_ce0),.queue_15_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_we0),.queue_15_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_d0),.queue_14_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_address0),.queue_14_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_ce0),.queue_14_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_we0),.queue_14_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_d0),.queue_13_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_address0),.queue_13_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_ce0),.queue_13_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_we0),.queue_13_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_d0),.queue_12_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_address0),.queue_12_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_ce0),.queue_12_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_we0),.queue_12_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_d0),.queue_11_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_address0),.queue_11_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_ce0),.queue_11_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_we0),.queue_11_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_d0),.queue_10_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_address0),.queue_10_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_ce0),.queue_10_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_we0),.queue_10_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_d0),.queue_9_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_address0),.queue_9_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_ce0),.queue_9_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_we0),.queue_9_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_d0),.queue_8_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_address0),.queue_8_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_ce0),.queue_8_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_we0),.queue_8_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_d0),.queue_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_address0),.queue_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_ce0),.queue_7_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_we0),.queue_7_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_d0),.queue_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_address0),.queue_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_ce0),.queue_6_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_we0),.queue_6_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_d0),.queue_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_address0),.queue_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_ce0),.queue_5_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_we0),.queue_5_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_d0),.queue_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_address0),.queue_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_ce0),.queue_4_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_we0),.queue_4_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_d0),.queue_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_address0),.queue_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_ce0),.queue_3_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_we0),.queue_3_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_d0),.queue_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_address0),.queue_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_ce0),.queue_2_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_we0),.queue_2_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_d0),.queue_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_address0),.queue_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_ce0),.queue_1_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_we0),.queue_1_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_d0),.queue_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_address0),.queue_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_ce0),.queue_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_we0),.queue_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_d0),.tmp_end(tmp_end_reg_2803),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_1_ce0),.edges_1_q0(edges_1_q0),.edges_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_2_address0),.edges_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_2_ce0),.edges_2_q0(edges_2_q0),.edges_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_3_address0),.edges_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_3_ce0),.edges_3_q0(edges_3_q0),.edges_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_4_address0),.edges_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_4_ce0),.edges_4_q0(edges_4_q0),.edges_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_5_address0),.edges_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_5_ce0),.edges_5_q0(edges_5_q0),.edges_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_6_address0),.edges_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_6_ce0),.edges_6_q0(edges_6_q0),.edges_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_7_address0),.edges_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_7_ce0),.edges_7_q0(edges_7_q0),.edges_8_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_8_address0),.edges_8_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_8_ce0),.edges_8_q0(edges_8_q0),.edges_9_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_9_address0),.edges_9_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_9_ce0),.edges_9_q0(edges_9_q0),.edges_10_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_10_address0),.edges_10_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_10_ce0),.edges_10_q0(edges_10_q0),.edges_11_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_11_address0),.edges_11_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_11_ce0),.edges_11_q0(edges_11_q0),.edges_12_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_12_address0),.edges_12_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_12_ce0),.edges_12_q0(edges_12_q0),.edges_13_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_13_address0),.edges_13_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_13_ce0),.edges_13_q0(edges_13_q0),.edges_14_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_14_address0),.edges_14_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_14_ce0),.edges_14_q0(edges_14_q0),.edges_15_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_15_address0),.edges_15_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_15_ce0),.edges_15_q0(edges_15_q0),.edges_16_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_16_address0),.edges_16_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_16_ce0),.edges_16_q0(edges_16_q0),.edges_17_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_17_address0),.edges_17_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_17_ce0),.edges_17_q0(edges_17_q0),.edges_18_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_18_address0),.edges_18_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_18_ce0),.edges_18_q0(edges_18_q0),.edges_19_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_19_address0),.edges_19_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_19_ce0),.edges_19_q0(edges_19_q0),.edges_20_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_20_address0),.edges_20_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_20_ce0),.edges_20_q0(edges_20_q0),.edges_21_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_21_address0),.edges_21_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_21_ce0),.edges_21_q0(edges_21_q0),.edges_22_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_22_address0),.edges_22_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_22_ce0),.edges_22_q0(edges_22_q0),.edges_23_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_23_address0),.edges_23_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_23_ce0),.edges_23_q0(edges_23_q0),.edges_24_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_24_address0),.edges_24_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_24_ce0),.edges_24_q0(edges_24_q0),.edges_25_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_25_address0),.edges_25_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_25_ce0),.edges_25_q0(edges_25_q0),.edges_26_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_26_address0),.edges_26_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_26_ce0),.edges_26_q0(edges_26_q0),.edges_27_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_27_address0),.edges_27_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_27_ce0),.edges_27_q0(edges_27_q0),.edges_28_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_28_address0),.edges_28_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_28_ce0),.edges_28_q0(edges_28_q0),.edges_29_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_29_address0),.edges_29_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_29_ce0),.edges_29_q0(edges_29_q0),.edges_30_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_30_address0),.edges_30_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_30_ce0),.edges_30_q0(edges_30_q0),.edges_31_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_31_address0),.edges_31_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_31_ce0),.edges_31_q0(edges_31_q0),.level_counts_address0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_address0),.level_counts_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_ce0),.level_counts_we0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_we0),.level_counts_d0(grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_d0),.level_counts_q0(level_counts_q0),.q_in_2_out_i(q_in_fu_270),.q_in_2_out_o(grp_bfs_Pipeline_loop_neighbors_fu_1255_q_in_2_out_o),.q_in_2_out_o_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_1255_q_in_2_out_o_ap_vld));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_65_5_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 8 ),.CASE1( 5'h1 ),.din1_WIDTH( 8 ),.CASE2( 5'h2 ),.din2_WIDTH( 8 ),.CASE3( 5'h3 ),.din3_WIDTH( 8 ),.CASE4( 5'h4 ),.din4_WIDTH( 8 ),.CASE5( 5'h5 ),.din5_WIDTH( 8 ),.CASE6( 5'h6 ),.din6_WIDTH( 8 ),.CASE7( 5'h7 ),.din7_WIDTH( 8 ),.CASE8( 5'h8 ),.din8_WIDTH( 8 ),.CASE9( 5'h9 ),.din9_WIDTH( 8 ),.CASE10( 5'hA ),.din10_WIDTH( 8 ),.CASE11( 5'hB ),.din11_WIDTH( 8 ),.CASE12( 5'hC ),.din12_WIDTH( 8 ),.CASE13( 5'hD ),.din13_WIDTH( 8 ),.CASE14( 5'hE ),.din14_WIDTH( 8 ),.CASE15( 5'hF ),.din15_WIDTH( 8 ),.CASE16( 5'h10 ),.din16_WIDTH( 8 ),.CASE17( 5'h11 ),.din17_WIDTH( 8 ),.CASE18( 5'h12 ),.din18_WIDTH( 8 ),.CASE19( 5'h13 ),.din19_WIDTH( 8 ),.CASE20( 5'h14 ),.din20_WIDTH( 8 ),.CASE21( 5'h15 ),.din21_WIDTH( 8 ),.CASE22( 5'h16 ),.din22_WIDTH( 8 ),.CASE23( 5'h17 ),.din23_WIDTH( 8 ),.CASE24( 5'h18 ),.din24_WIDTH( 8 ),.CASE25( 5'h19 ),.din25_WIDTH( 8 ),.CASE26( 5'h1A ),.din26_WIDTH( 8 ),.CASE27( 5'h1B ),.din27_WIDTH( 8 ),.CASE28( 5'h1C ),.din28_WIDTH( 8 ),.CASE29( 5'h1D ),.din29_WIDTH( 8 ),.CASE30( 5'h1E ),.din30_WIDTH( 8 ),.CASE31( 5'h1F ),.din31_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 5 ),.dout_WIDTH( 8 ))
sparsemux_65_5_8_1_1_U73(.din0(queue_q0),.din1(queue_1_q0),.din2(queue_2_q0),.din3(queue_3_q0),.din4(queue_4_q0),.din5(queue_5_q0),.din6(queue_6_q0),.din7(queue_7_q0),.din8(queue_8_q0),.din9(queue_9_q0),.din10(queue_10_q0),.din11(queue_11_q0),.din12(queue_12_q0),.din13(queue_13_q0),.din14(queue_14_q0),.din15(queue_15_q0),.din16(queue_16_q0),.din17(queue_17_q0),.din18(queue_18_q0),.din19(queue_19_q0),.din20(queue_20_q0),.din21(queue_21_q0),.din22(queue_22_q0),.din23(queue_23_q0),.din24(queue_24_q0),.din25(queue_25_q0),.din26(queue_26_q0),.din27(queue_27_q0),.din28(queue_28_q0),.din29(queue_29_q0),.din30(queue_30_q0),.din31(queue_31_q0),.def(n_fu_1521_p65),.sel(trunc_ln32_reg_2448),.dout(n_fu_1521_p67));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U74(.din0(e_fu_1833_p2),.din1(e_fu_1833_p4),.din2(e_fu_1833_p6),.din3(e_fu_1833_p8),.din4(e_fu_1833_p10),.din5(e_fu_1833_p12),.din6(e_fu_1833_p14),.din7(e_fu_1833_p16),.din8(e_fu_1833_p18),.din9(e_fu_1833_p20),.din10(e_fu_1833_p22),.din11(e_fu_1833_p24),.din12(e_fu_1833_p26),.din13(e_fu_1833_p28),.din14(e_fu_1833_p30),.din15(e_fu_1833_p32),.din16(e_fu_1833_p34),.din17(e_fu_1833_p36),.din18(e_fu_1833_p38),.din19(e_fu_1833_p40),.din20(e_fu_1833_p42),.din21(e_fu_1833_p44),.din22(e_fu_1833_p46),.din23(e_fu_1833_p48),.din24(e_fu_1833_p50),.din25(e_fu_1833_p52),.din26(e_fu_1833_p54),.din27(e_fu_1833_p56),.din28(e_fu_1833_p58),.din29(e_fu_1833_p60),.din30(e_fu_1833_p62),.din31(e_fu_1833_p64),.def(e_fu_1833_p65),.sel(trunc_ln18_reg_2627),.dout(e_fu_1833_p67));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U75(.din0(tmp_end_fu_2288_p2),.din1(tmp_end_fu_2288_p4),.din2(tmp_end_fu_2288_p6),.din3(tmp_end_fu_2288_p8),.din4(tmp_end_fu_2288_p10),.din5(tmp_end_fu_2288_p12),.din6(tmp_end_fu_2288_p14),.din7(tmp_end_fu_2288_p16),.din8(tmp_end_fu_2288_p18),.din9(tmp_end_fu_2288_p20),.din10(tmp_end_fu_2288_p22),.din11(tmp_end_fu_2288_p24),.din12(tmp_end_fu_2288_p26),.din13(tmp_end_fu_2288_p28),.din14(tmp_end_fu_2288_p30),.din15(tmp_end_fu_2288_p32),.din16(tmp_end_fu_2288_p34),.din17(tmp_end_fu_2288_p36),.din18(tmp_end_fu_2288_p38),.din19(tmp_end_fu_2288_p40),.din20(tmp_end_fu_2288_p42),.din21(tmp_end_fu_2288_p44),.din22(tmp_end_fu_2288_p46),.din23(tmp_end_fu_2288_p48),.din24(tmp_end_fu_2288_p50),.din25(tmp_end_fu_2288_p52),.din26(tmp_end_fu_2288_p54),.din27(tmp_end_fu_2288_p56),.din28(tmp_end_fu_2288_p58),.din29(tmp_end_fu_2288_p60),.din30(tmp_end_fu_2288_p62),.din31(tmp_end_fu_2288_p64),.def(tmp_end_fu_2288_p65),.sel(trunc_ln18_reg_2627),.dout(tmp_end_fu_2288_p67));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) & (1'b1 == ap_NS_fsm_state6))) begin
            grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dummy_fu_278 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_1462_p2 == 1'd0) & (1'd0 == and_ln33_fu_1480_p2) & (icmp_ln32_fu_1386_p2 == 1'd0)) | ((icmp_ln33_1_fu_1496_p2 == 1'd0) & (icmp_ln33_fu_1462_p2 == 1'd1) & (icmp_ln32_fu_1386_p2 == 1'd0))))) begin
        dummy_fu_278 <= dummy_2_fu_1392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_in_fu_270 <= 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state7) & (grp_bfs_Pipeline_loop_neighbors_fu_1255_q_in_2_out_o_ap_vld == 1'b1))) begin
        q_in_fu_270 <= grp_bfs_Pipeline_loop_neighbors_fu_1255_q_in_2_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_out_fu_274 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_1462_p2 == 1'd0) & (1'd0 == and_ln33_fu_1480_p2) & (icmp_ln32_fu_1386_p2 == 1'd0)) | ((icmp_ln33_1_fu_1496_p2 == 1'd0) & (icmp_ln33_fu_1462_p2 == 1'd1) & (icmp_ln32_fu_1386_p2 == 1'd0))))) begin
        q_out_fu_274 <= q_out_1_fu_1505_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_2798 <= e_fu_1833_p67;
        tmp_end_reg_2803 <= tmp_end_fu_2288_p67;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln1_reg_2633 <= {{n_fu_1521_p67[7:5]}};
        n_reg_2622 <= n_fu_1521_p67;
        trunc_ln18_reg_2627 <= trunc_ln18_fu_1656_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln32_reg_2448 <= trunc_ln32_fu_1412_p1;
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
    if ((grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln32_fu_1386_p2 == 1'd1) | (((1'd1 == and_ln33_fu_1480_p2) & (icmp_ln33_fu_1462_p2 == 1'd0)) | ((icmp_ln33_1_fu_1496_p2 == 1'd1) & (icmp_ln33_fu_1462_p2 == 1'd1)))))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln32_fu_1386_p2 == 1'd1) | (((1'd1 == and_ln33_fu_1480_p2) & (icmp_ln33_fu_1462_p2 == 1'd0)) | ((icmp_ln33_1_fu_1496_p2 == 1'd1) & (icmp_ln33_fu_1462_p2 == 1'd1)))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_address0;
    end else begin
        level_address0 = starting_node;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_counts_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_address0;
    end else begin
        level_counts_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_counts_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_counts_d0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_d0;
    end else begin
        level_counts_d0 = 64'd1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_counts_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_counts_we0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_level_we0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_10_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_address0;
    end else begin
        queue_10_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_10_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_ce0;
    end else begin
        queue_10_ce0 = queue_10_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_10_ce0_local = 1'b1;
    end else begin
        queue_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_10_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_10_we0;
    end else begin
        queue_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_11_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_address0;
    end else begin
        queue_11_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_11_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_ce0;
    end else begin
        queue_11_ce0 = queue_11_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_11_ce0_local = 1'b1;
    end else begin
        queue_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_11_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_11_we0;
    end else begin
        queue_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_12_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_address0;
    end else begin
        queue_12_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_12_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_ce0;
    end else begin
        queue_12_ce0 = queue_12_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_12_ce0_local = 1'b1;
    end else begin
        queue_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_12_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_12_we0;
    end else begin
        queue_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_13_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_address0;
    end else begin
        queue_13_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_13_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_ce0;
    end else begin
        queue_13_ce0 = queue_13_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_13_ce0_local = 1'b1;
    end else begin
        queue_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_13_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_13_we0;
    end else begin
        queue_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_14_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_address0;
    end else begin
        queue_14_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_14_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_ce0;
    end else begin
        queue_14_ce0 = queue_14_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_14_ce0_local = 1'b1;
    end else begin
        queue_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_14_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_14_we0;
    end else begin
        queue_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_15_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_address0;
    end else begin
        queue_15_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_15_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_ce0;
    end else begin
        queue_15_ce0 = queue_15_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_15_ce0_local = 1'b1;
    end else begin
        queue_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_15_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_15_we0;
    end else begin
        queue_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_16_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_address0;
    end else begin
        queue_16_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_16_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_ce0;
    end else begin
        queue_16_ce0 = queue_16_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_16_ce0_local = 1'b1;
    end else begin
        queue_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_16_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_16_we0;
    end else begin
        queue_16_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_17_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_address0;
    end else begin
        queue_17_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_17_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_ce0;
    end else begin
        queue_17_ce0 = queue_17_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_17_ce0_local = 1'b1;
    end else begin
        queue_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_17_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_17_we0;
    end else begin
        queue_17_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_18_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_address0;
    end else begin
        queue_18_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_18_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_ce0;
    end else begin
        queue_18_ce0 = queue_18_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_18_ce0_local = 1'b1;
    end else begin
        queue_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_18_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_18_we0;
    end else begin
        queue_18_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_19_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_address0;
    end else begin
        queue_19_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_19_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_ce0;
    end else begin
        queue_19_ce0 = queue_19_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_19_ce0_local = 1'b1;
    end else begin
        queue_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_19_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_19_we0;
    end else begin
        queue_19_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_address0;
    end else begin
        queue_1_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_1_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_1_we0;
    end else begin
        queue_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_20_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_address0;
    end else begin
        queue_20_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_20_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_ce0;
    end else begin
        queue_20_ce0 = queue_20_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_20_ce0_local = 1'b1;
    end else begin
        queue_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_20_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_20_we0;
    end else begin
        queue_20_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_21_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_address0;
    end else begin
        queue_21_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_21_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_ce0;
    end else begin
        queue_21_ce0 = queue_21_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_21_ce0_local = 1'b1;
    end else begin
        queue_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_21_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_21_we0;
    end else begin
        queue_21_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_22_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_address0;
    end else begin
        queue_22_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_22_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_ce0;
    end else begin
        queue_22_ce0 = queue_22_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_22_ce0_local = 1'b1;
    end else begin
        queue_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_22_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_22_we0;
    end else begin
        queue_22_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_23_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_address0;
    end else begin
        queue_23_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_23_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_ce0;
    end else begin
        queue_23_ce0 = queue_23_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_23_ce0_local = 1'b1;
    end else begin
        queue_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_23_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_23_we0;
    end else begin
        queue_23_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_24_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_address0;
    end else begin
        queue_24_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_24_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_ce0;
    end else begin
        queue_24_ce0 = queue_24_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_24_ce0_local = 1'b1;
    end else begin
        queue_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_24_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_24_we0;
    end else begin
        queue_24_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_25_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_address0;
    end else begin
        queue_25_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_25_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_ce0;
    end else begin
        queue_25_ce0 = queue_25_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_25_ce0_local = 1'b1;
    end else begin
        queue_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_25_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_25_we0;
    end else begin
        queue_25_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_26_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_address0;
    end else begin
        queue_26_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_26_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_ce0;
    end else begin
        queue_26_ce0 = queue_26_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_26_ce0_local = 1'b1;
    end else begin
        queue_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_26_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_26_we0;
    end else begin
        queue_26_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_27_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_address0;
    end else begin
        queue_27_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_27_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_ce0;
    end else begin
        queue_27_ce0 = queue_27_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_27_ce0_local = 1'b1;
    end else begin
        queue_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_27_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_27_we0;
    end else begin
        queue_27_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_28_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_address0;
    end else begin
        queue_28_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_28_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_ce0;
    end else begin
        queue_28_ce0 = queue_28_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_28_ce0_local = 1'b1;
    end else begin
        queue_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_28_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_28_we0;
    end else begin
        queue_28_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_29_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_address0;
    end else begin
        queue_29_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_29_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_ce0;
    end else begin
        queue_29_ce0 = queue_29_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_29_ce0_local = 1'b1;
    end else begin
        queue_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_29_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_29_we0;
    end else begin
        queue_29_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_address0;
    end else begin
        queue_2_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_2_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_2_we0;
    end else begin
        queue_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_30_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_address0;
    end else begin
        queue_30_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_30_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_ce0;
    end else begin
        queue_30_ce0 = queue_30_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_30_ce0_local = 1'b1;
    end else begin
        queue_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_30_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_30_we0;
    end else begin
        queue_30_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_31_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_address0;
    end else begin
        queue_31_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_31_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_ce0;
    end else begin
        queue_31_ce0 = queue_31_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_31_ce0_local = 1'b1;
    end else begin
        queue_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_31_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_31_we0;
    end else begin
        queue_31_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_address0;
    end else begin
        queue_3_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_3_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_3_we0;
    end else begin
        queue_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_address0;
    end else begin
        queue_4_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_4_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_4_we0;
    end else begin
        queue_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_address0;
    end else begin
        queue_5_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_5_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_5_we0;
    end else begin
        queue_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_address0;
    end else begin
        queue_6_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_6_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_6_we0;
    end else begin
        queue_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_address0;
    end else begin
        queue_7_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_7_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_7_we0;
    end else begin
        queue_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_8_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_address0;
    end else begin
        queue_8_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_8_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_ce0;
    end else begin
        queue_8_ce0 = queue_8_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_8_ce0_local = 1'b1;
    end else begin
        queue_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_8_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_8_we0;
    end else begin
        queue_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_9_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_address0;
    end else begin
        queue_9_address0 = zext_ln16_fu_1426_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_9_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_ce0;
    end else begin
        queue_9_ce0 = queue_9_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_9_ce0_local = 1'b1;
    end else begin
        queue_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_9_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_9_we0;
    end else begin
        queue_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_address0;
    end else begin
        queue_address0 = queue_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_address0_local = zext_ln16_fu_1426_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        queue_address0_local = 64'd0;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_d0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_d0;
    end else begin
        queue_d0 = trunc_ln14_fu_1363_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        queue_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_queue_we0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln32_fu_1386_p2 == 1'd1) | (((1'd1 == and_ln33_fu_1480_p2) & (icmp_ln33_fu_1462_p2 == 1'd0)) | ((icmp_ln33_1_fu_1496_p2 == 1'd1) & (icmp_ln33_fu_1462_p2 == 1'd1)))))) begin
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
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_1486_p2 = (zext_ln32_1_fu_1408_p1 + 9'd1);
assign and_ln33_fu_1480_p2 = (icmp_ln33_3_fu_1474_p2 & icmp_ln33_2_fu_1468_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_NS_fsm_state6 = ap_NS_fsm[32'd5];
assign dummy_2_fu_1392_p2 = (dummy_fu_278 + 9'd1);
assign e_fu_1833_p10 = nodes_4_q0[63:0];
assign e_fu_1833_p12 = nodes_5_q0[63:0];
assign e_fu_1833_p14 = nodes_6_q0[63:0];
assign e_fu_1833_p16 = nodes_7_q0[63:0];
assign e_fu_1833_p18 = nodes_8_q0[63:0];
assign e_fu_1833_p2 = nodes_0_q0[63:0];
assign e_fu_1833_p20 = nodes_9_q0[63:0];
assign e_fu_1833_p22 = nodes_10_q0[63:0];
assign e_fu_1833_p24 = nodes_11_q0[63:0];
assign e_fu_1833_p26 = nodes_12_q0[63:0];
assign e_fu_1833_p28 = nodes_13_q0[63:0];
assign e_fu_1833_p30 = nodes_14_q0[63:0];
assign e_fu_1833_p32 = nodes_15_q0[63:0];
assign e_fu_1833_p34 = nodes_16_q0[63:0];
assign e_fu_1833_p36 = nodes_17_q0[63:0];
assign e_fu_1833_p38 = nodes_18_q0[63:0];
assign e_fu_1833_p4 = nodes_1_q0[63:0];
assign e_fu_1833_p40 = nodes_19_q0[63:0];
assign e_fu_1833_p42 = nodes_20_q0[63:0];
assign e_fu_1833_p44 = nodes_21_q0[63:0];
assign e_fu_1833_p46 = nodes_22_q0[63:0];
assign e_fu_1833_p48 = nodes_23_q0[63:0];
assign e_fu_1833_p50 = nodes_24_q0[63:0];
assign e_fu_1833_p52 = nodes_25_q0[63:0];
assign e_fu_1833_p54 = nodes_26_q0[63:0];
assign e_fu_1833_p56 = nodes_27_q0[63:0];
assign e_fu_1833_p58 = nodes_28_q0[63:0];
assign e_fu_1833_p6 = nodes_2_q0[63:0];
assign e_fu_1833_p60 = nodes_29_q0[63:0];
assign e_fu_1833_p62 = nodes_30_q0[63:0];
assign e_fu_1833_p64 = nodes_31_q0[63:0];
assign e_fu_1833_p65 = 'bx;
assign e_fu_1833_p8 = nodes_3_q0[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_0_ce0;
assign edges_10_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_10_address0;
assign edges_10_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_10_ce0;
assign edges_11_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_11_address0;
assign edges_11_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_11_ce0;
assign edges_12_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_12_address0;
assign edges_12_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_12_ce0;
assign edges_13_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_13_address0;
assign edges_13_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_13_ce0;
assign edges_14_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_14_address0;
assign edges_14_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_14_ce0;
assign edges_15_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_15_address0;
assign edges_15_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_15_ce0;
assign edges_16_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_16_address0;
assign edges_16_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_16_ce0;
assign edges_17_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_17_address0;
assign edges_17_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_17_ce0;
assign edges_18_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_18_address0;
assign edges_18_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_18_ce0;
assign edges_19_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_19_address0;
assign edges_19_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_19_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_1_ce0;
assign edges_20_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_20_address0;
assign edges_20_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_20_ce0;
assign edges_21_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_21_address0;
assign edges_21_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_21_ce0;
assign edges_22_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_22_address0;
assign edges_22_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_22_ce0;
assign edges_23_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_23_address0;
assign edges_23_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_23_ce0;
assign edges_24_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_24_address0;
assign edges_24_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_24_ce0;
assign edges_25_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_25_address0;
assign edges_25_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_25_ce0;
assign edges_26_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_26_address0;
assign edges_26_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_26_ce0;
assign edges_27_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_27_address0;
assign edges_27_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_27_ce0;
assign edges_28_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_28_address0;
assign edges_28_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_28_ce0;
assign edges_29_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_29_address0;
assign edges_29_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_29_ce0;
assign edges_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_2_address0;
assign edges_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_2_ce0;
assign edges_30_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_30_address0;
assign edges_30_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_30_ce0;
assign edges_31_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_31_address0;
assign edges_31_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_31_ce0;
assign edges_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_3_address0;
assign edges_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_3_ce0;
assign edges_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_4_address0;
assign edges_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_4_ce0;
assign edges_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_5_address0;
assign edges_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_5_ce0;
assign edges_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_6_address0;
assign edges_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_6_ce0;
assign edges_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_7_address0;
assign edges_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_7_ce0;
assign edges_8_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_8_address0;
assign edges_8_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_8_ce0;
assign edges_9_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_9_address0;
assign edges_9_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1255_edges_9_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_1255_ap_start_reg;
assign icmp_ln32_fu_1386_p2 = ((dummy_fu_278 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln33_1_fu_1496_p2 = ((q_in_fu_270 == zext_ln33_fu_1492_p1) ? 1'b1 : 1'b0);
assign icmp_ln33_2_fu_1468_p2 = ((q_in_fu_270 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln33_3_fu_1474_p2 = ((q_out_fu_274 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_1462_p2 = ((q_in_fu_270 > zext_ln32_fu_1404_p1) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1416_p4 = {{q_out_fu_274[7:5]}};
assign n_fu_1521_p65 = 'bx;
assign nodes_0_address0 = zext_ln18_fu_1670_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_10_address0 = zext_ln18_fu_1670_p1;
assign nodes_10_ce0 = nodes_10_ce0_local;
assign nodes_11_address0 = zext_ln18_fu_1670_p1;
assign nodes_11_ce0 = nodes_11_ce0_local;
assign nodes_12_address0 = zext_ln18_fu_1670_p1;
assign nodes_12_ce0 = nodes_12_ce0_local;
assign nodes_13_address0 = zext_ln18_fu_1670_p1;
assign nodes_13_ce0 = nodes_13_ce0_local;
assign nodes_14_address0 = zext_ln18_fu_1670_p1;
assign nodes_14_ce0 = nodes_14_ce0_local;
assign nodes_15_address0 = zext_ln18_fu_1670_p1;
assign nodes_15_ce0 = nodes_15_ce0_local;
assign nodes_16_address0 = zext_ln18_fu_1670_p1;
assign nodes_16_ce0 = nodes_16_ce0_local;
assign nodes_17_address0 = zext_ln18_fu_1670_p1;
assign nodes_17_ce0 = nodes_17_ce0_local;
assign nodes_18_address0 = zext_ln18_fu_1670_p1;
assign nodes_18_ce0 = nodes_18_ce0_local;
assign nodes_19_address0 = zext_ln18_fu_1670_p1;
assign nodes_19_ce0 = nodes_19_ce0_local;
assign nodes_1_address0 = zext_ln18_fu_1670_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign nodes_20_address0 = zext_ln18_fu_1670_p1;
assign nodes_20_ce0 = nodes_20_ce0_local;
assign nodes_21_address0 = zext_ln18_fu_1670_p1;
assign nodes_21_ce0 = nodes_21_ce0_local;
assign nodes_22_address0 = zext_ln18_fu_1670_p1;
assign nodes_22_ce0 = nodes_22_ce0_local;
assign nodes_23_address0 = zext_ln18_fu_1670_p1;
assign nodes_23_ce0 = nodes_23_ce0_local;
assign nodes_24_address0 = zext_ln18_fu_1670_p1;
assign nodes_24_ce0 = nodes_24_ce0_local;
assign nodes_25_address0 = zext_ln18_fu_1670_p1;
assign nodes_25_ce0 = nodes_25_ce0_local;
assign nodes_26_address0 = zext_ln18_fu_1670_p1;
assign nodes_26_ce0 = nodes_26_ce0_local;
assign nodes_27_address0 = zext_ln18_fu_1670_p1;
assign nodes_27_ce0 = nodes_27_ce0_local;
assign nodes_28_address0 = zext_ln18_fu_1670_p1;
assign nodes_28_ce0 = nodes_28_ce0_local;
assign nodes_29_address0 = zext_ln18_fu_1670_p1;
assign nodes_29_ce0 = nodes_29_ce0_local;
assign nodes_2_address0 = zext_ln18_fu_1670_p1;
assign nodes_2_ce0 = nodes_2_ce0_local;
assign nodes_30_address0 = zext_ln18_fu_1670_p1;
assign nodes_30_ce0 = nodes_30_ce0_local;
assign nodes_31_address0 = zext_ln18_fu_1670_p1;
assign nodes_31_ce0 = nodes_31_ce0_local;
assign nodes_3_address0 = zext_ln18_fu_1670_p1;
assign nodes_3_ce0 = nodes_3_ce0_local;
assign nodes_4_address0 = zext_ln18_fu_1670_p1;
assign nodes_4_ce0 = nodes_4_ce0_local;
assign nodes_5_address0 = zext_ln18_fu_1670_p1;
assign nodes_5_ce0 = nodes_5_ce0_local;
assign nodes_6_address0 = zext_ln18_fu_1670_p1;
assign nodes_6_ce0 = nodes_6_ce0_local;
assign nodes_7_address0 = zext_ln18_fu_1670_p1;
assign nodes_7_ce0 = nodes_7_ce0_local;
assign nodes_8_address0 = zext_ln18_fu_1670_p1;
assign nodes_8_ce0 = nodes_8_ce0_local;
assign nodes_9_address0 = zext_ln18_fu_1670_p1;
assign nodes_9_ce0 = nodes_9_ce0_local;
assign q_out_1_fu_1505_p2 = (q_out_fu_274 + 8'd1);
assign tmp_end_fu_2288_p10 = {{nodes_4_q0[127:64]}};
assign tmp_end_fu_2288_p12 = {{nodes_5_q0[127:64]}};
assign tmp_end_fu_2288_p14 = {{nodes_6_q0[127:64]}};
assign tmp_end_fu_2288_p16 = {{nodes_7_q0[127:64]}};
assign tmp_end_fu_2288_p18 = {{nodes_8_q0[127:64]}};
assign tmp_end_fu_2288_p2 = {{nodes_0_q0[127:64]}};
assign tmp_end_fu_2288_p20 = {{nodes_9_q0[127:64]}};
assign tmp_end_fu_2288_p22 = {{nodes_10_q0[127:64]}};
assign tmp_end_fu_2288_p24 = {{nodes_11_q0[127:64]}};
assign tmp_end_fu_2288_p26 = {{nodes_12_q0[127:64]}};
assign tmp_end_fu_2288_p28 = {{nodes_13_q0[127:64]}};
assign tmp_end_fu_2288_p30 = {{nodes_14_q0[127:64]}};
assign tmp_end_fu_2288_p32 = {{nodes_15_q0[127:64]}};
assign tmp_end_fu_2288_p34 = {{nodes_16_q0[127:64]}};
assign tmp_end_fu_2288_p36 = {{nodes_17_q0[127:64]}};
assign tmp_end_fu_2288_p38 = {{nodes_18_q0[127:64]}};
assign tmp_end_fu_2288_p4 = {{nodes_1_q0[127:64]}};
assign tmp_end_fu_2288_p40 = {{nodes_19_q0[127:64]}};
assign tmp_end_fu_2288_p42 = {{nodes_20_q0[127:64]}};
assign tmp_end_fu_2288_p44 = {{nodes_21_q0[127:64]}};
assign tmp_end_fu_2288_p46 = {{nodes_22_q0[127:64]}};
assign tmp_end_fu_2288_p48 = {{nodes_23_q0[127:64]}};
assign tmp_end_fu_2288_p50 = {{nodes_24_q0[127:64]}};
assign tmp_end_fu_2288_p52 = {{nodes_25_q0[127:64]}};
assign tmp_end_fu_2288_p54 = {{nodes_26_q0[127:64]}};
assign tmp_end_fu_2288_p56 = {{nodes_27_q0[127:64]}};
assign tmp_end_fu_2288_p58 = {{nodes_28_q0[127:64]}};
assign tmp_end_fu_2288_p6 = {{nodes_2_q0[127:64]}};
assign tmp_end_fu_2288_p60 = {{nodes_29_q0[127:64]}};
assign tmp_end_fu_2288_p62 = {{nodes_30_q0[127:64]}};
assign tmp_end_fu_2288_p64 = {{nodes_31_q0[127:64]}};
assign tmp_end_fu_2288_p65 = 'bx;
assign tmp_end_fu_2288_p8 = {{nodes_3_q0[127:64]}};
assign trunc_ln14_fu_1363_p1 = starting_node[7:0];
assign trunc_ln18_fu_1656_p1 = n_fu_1521_p67[4:0];
assign trunc_ln32_fu_1412_p1 = q_out_fu_274[4:0];
assign zext_ln16_fu_1426_p1 = lshr_ln_fu_1416_p4;
assign zext_ln18_fu_1670_p1 = lshr_ln1_reg_2633;
assign zext_ln32_1_fu_1408_p1 = q_out_fu_274;
assign zext_ln32_fu_1404_p1 = q_out_fu_274;
assign zext_ln33_fu_1492_p1 = add_ln33_fu_1486_p2;
endmodule 