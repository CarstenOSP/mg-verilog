
module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,nodes_2_address0,nodes_2_ce0,nodes_2_q0,nodes_3_address0,nodes_3_ce0,nodes_3_q0,nodes_4_address0,nodes_4_ce0,nodes_4_q0,nodes_5_address0,nodes_5_ce0,nodes_5_q0,nodes_6_address0,nodes_6_ce0,nodes_6_q0,nodes_7_address0,nodes_7_ce0,nodes_7_q0,nodes_8_address0,nodes_8_ce0,nodes_8_q0,nodes_9_address0,nodes_9_ce0,nodes_9_q0,nodes_10_address0,nodes_10_ce0,nodes_10_q0,nodes_11_address0,nodes_11_ce0,nodes_11_q0,nodes_12_address0,nodes_12_ce0,nodes_12_q0,nodes_13_address0,nodes_13_ce0,nodes_13_q0,nodes_14_address0,nodes_14_ce0,nodes_14_q0,nodes_15_address0,nodes_15_ce0,nodes_15_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0);  
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
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
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] trunc_ln32_fu_809_p1;
reg   [3:0] trunc_ln32_reg_1399;
wire    ap_CS_fsm_state2;
wire   [7:0] n_fu_902_p35;
reg   [7:0] n_reg_1493;
wire    ap_CS_fsm_state3;
wire   [3:0] trunc_ln18_fu_973_p1;
reg   [3:0] trunc_ln18_reg_1498;
reg   [3:0] lshr_ln1_reg_1504;
reg   [63:0] q_in_load_reg_1509;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_1070_p35;
reg   [63:0] e_reg_1594;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_end_fu_1302_p35;
reg   [63:0] tmp_end_reg_1599;
reg   [3:0] queue_address0;
reg    queue_ce0;
reg    queue_we0;
reg   [7:0] queue_d0;
wire   [7:0] queue_q0;
reg   [3:0] queue_1_address0;
reg    queue_1_ce0;
reg    queue_1_we0;
wire   [7:0] queue_1_q0;
reg   [3:0] queue_2_address0;
reg    queue_2_ce0;
reg    queue_2_we0;
wire   [7:0] queue_2_q0;
reg   [3:0] queue_3_address0;
reg    queue_3_ce0;
reg    queue_3_we0;
wire   [7:0] queue_3_q0;
reg   [3:0] queue_4_address0;
reg    queue_4_ce0;
reg    queue_4_we0;
wire   [7:0] queue_4_q0;
reg   [3:0] queue_5_address0;
reg    queue_5_ce0;
reg    queue_5_we0;
wire   [7:0] queue_5_q0;
reg   [3:0] queue_6_address0;
reg    queue_6_ce0;
reg    queue_6_we0;
wire   [7:0] queue_6_q0;
reg   [3:0] queue_7_address0;
reg    queue_7_ce0;
reg    queue_7_we0;
wire   [7:0] queue_7_q0;
reg   [3:0] queue_8_address0;
reg    queue_8_ce0;
reg    queue_8_we0;
wire   [7:0] queue_8_q0;
reg   [3:0] queue_9_address0;
reg    queue_9_ce0;
reg    queue_9_we0;
wire   [7:0] queue_9_q0;
reg   [3:0] queue_10_address0;
reg    queue_10_ce0;
reg    queue_10_we0;
wire   [7:0] queue_10_q0;
reg   [3:0] queue_11_address0;
reg    queue_11_ce0;
reg    queue_11_we0;
wire   [7:0] queue_11_q0;
reg   [3:0] queue_12_address0;
reg    queue_12_ce0;
reg    queue_12_we0;
wire   [7:0] queue_12_q0;
reg   [3:0] queue_13_address0;
reg    queue_13_ce0;
reg    queue_13_we0;
wire   [7:0] queue_13_q0;
reg   [3:0] queue_14_address0;
reg    queue_14_ce0;
reg    queue_14_we0;
wire   [7:0] queue_14_q0;
reg   [3:0] queue_15_address0;
reg    queue_15_ce0;
reg    queue_15_we0;
wire   [7:0] queue_15_q0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_ap_ready;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_level_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_d0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_queue_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_queue_d0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_0_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_1_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_2_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_3_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_4_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_5_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_6_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_7_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_8_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_8_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_9_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_9_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_10_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_10_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_11_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_11_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_12_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_12_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_13_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_13_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_14_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_14_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_697_edges_15_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_edges_15_ce0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_we0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_697_q_in_13_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_697_q_in_13_out_ap_vld;
reg    grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [63:0] q_in_fu_176;
wire   [63:0] zext_ln16_fu_823_p1;
wire   [0:0] tmp_fu_784_p3;
wire   [0:0] icmp_ln33_fu_843_p2;
wire   [0:0] icmp_ln33_1_fu_877_p2;
wire   [0:0] and_ln33_fu_861_p2;
wire   [63:0] zext_ln18_fu_987_p1;
reg   [7:0] q_out_fu_180;
wire   [7:0] q_out_1_fu_886_p2;
reg   [8:0] dummy_fu_184;
wire   [8:0] dummy_2_fu_792_p2;
reg    level_we0_local;
reg    level_ce0_local;
reg    level_counts_we0_local;
reg    level_counts_ce0_local;
reg    queue_we0_local;
wire   [7:0] trunc_ln14_fu_761_p1;
reg    queue_ce0_local;
reg   [3:0] queue_address0_local;
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
wire   [3:0] lshr_ln_fu_813_p4;
wire   [63:0] zext_ln32_fu_801_p1;
wire   [0:0] icmp_ln33_2_fu_849_p2;
wire   [0:0] icmp_ln33_3_fu_855_p2;
wire   [8:0] zext_ln32_1_fu_805_p1;
wire   [8:0] add_ln33_fu_867_p2;
wire   [63:0] zext_ln33_fu_873_p1;
wire   [7:0] n_fu_902_p33;
wire   [63:0] e_fu_1070_p2;
wire   [63:0] e_fu_1070_p4;
wire   [63:0] e_fu_1070_p6;
wire   [63:0] e_fu_1070_p8;
wire   [63:0] e_fu_1070_p10;
wire   [63:0] e_fu_1070_p12;
wire   [63:0] e_fu_1070_p14;
wire   [63:0] e_fu_1070_p16;
wire   [63:0] e_fu_1070_p18;
wire   [63:0] e_fu_1070_p20;
wire   [63:0] e_fu_1070_p22;
wire   [63:0] e_fu_1070_p24;
wire   [63:0] e_fu_1070_p26;
wire   [63:0] e_fu_1070_p28;
wire   [63:0] e_fu_1070_p30;
wire   [63:0] e_fu_1070_p32;
wire   [63:0] e_fu_1070_p33;
wire   [63:0] tmp_end_fu_1302_p2;
wire   [63:0] tmp_end_fu_1302_p4;
wire   [63:0] tmp_end_fu_1302_p6;
wire   [63:0] tmp_end_fu_1302_p8;
wire   [63:0] tmp_end_fu_1302_p10;
wire   [63:0] tmp_end_fu_1302_p12;
wire   [63:0] tmp_end_fu_1302_p14;
wire   [63:0] tmp_end_fu_1302_p16;
wire   [63:0] tmp_end_fu_1302_p18;
wire   [63:0] tmp_end_fu_1302_p20;
wire   [63:0] tmp_end_fu_1302_p22;
wire   [63:0] tmp_end_fu_1302_p24;
wire   [63:0] tmp_end_fu_1302_p26;
wire   [63:0] tmp_end_fu_1302_p28;
wire   [63:0] tmp_end_fu_1302_p30;
wire   [63:0] tmp_end_fu_1302_p32;
wire   [63:0] tmp_end_fu_1302_p33;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [3:0] n_fu_902_p1;
wire   [3:0] n_fu_902_p3;
wire   [3:0] n_fu_902_p5;
wire   [3:0] n_fu_902_p7;
wire   [3:0] n_fu_902_p9;
wire   [3:0] n_fu_902_p11;
wire   [3:0] n_fu_902_p13;
wire   [3:0] n_fu_902_p15;
wire  signed [3:0] n_fu_902_p17;
wire  signed [3:0] n_fu_902_p19;
wire  signed [3:0] n_fu_902_p21;
wire  signed [3:0] n_fu_902_p23;
wire  signed [3:0] n_fu_902_p25;
wire  signed [3:0] n_fu_902_p27;
wire  signed [3:0] n_fu_902_p29;
wire  signed [3:0] n_fu_902_p31;
wire   [3:0] e_fu_1070_p1;
wire   [3:0] e_fu_1070_p3;
wire   [3:0] e_fu_1070_p5;
wire   [3:0] e_fu_1070_p7;
wire   [3:0] e_fu_1070_p9;
wire   [3:0] e_fu_1070_p11;
wire   [3:0] e_fu_1070_p13;
wire   [3:0] e_fu_1070_p15;
wire  signed [3:0] e_fu_1070_p17;
wire  signed [3:0] e_fu_1070_p19;
wire  signed [3:0] e_fu_1070_p21;
wire  signed [3:0] e_fu_1070_p23;
wire  signed [3:0] e_fu_1070_p25;
wire  signed [3:0] e_fu_1070_p27;
wire  signed [3:0] e_fu_1070_p29;
wire  signed [3:0] e_fu_1070_p31;
wire   [3:0] tmp_end_fu_1302_p1;
wire   [3:0] tmp_end_fu_1302_p3;
wire   [3:0] tmp_end_fu_1302_p5;
wire   [3:0] tmp_end_fu_1302_p7;
wire   [3:0] tmp_end_fu_1302_p9;
wire   [3:0] tmp_end_fu_1302_p11;
wire   [3:0] tmp_end_fu_1302_p13;
wire   [3:0] tmp_end_fu_1302_p15;
wire  signed [3:0] tmp_end_fu_1302_p17;
wire  signed [3:0] tmp_end_fu_1302_p19;
wire  signed [3:0] tmp_end_fu_1302_p21;
wire  signed [3:0] tmp_end_fu_1302_p23;
wire  signed [3:0] tmp_end_fu_1302_p25;
wire  signed [3:0] tmp_end_fu_1302_p27;
wire  signed [3:0] tmp_end_fu_1302_p29;
wire  signed [3:0] tmp_end_fu_1302_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start_reg = 1'b0;
#0 q_in_fu_176 = 64'd0;
#0 q_out_fu_180 = 8'd0;
#0 dummy_fu_184 = 9'd0;
end
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_address0),.ce0(queue_ce0),.we0(queue_we0),.d0(queue_d0),.q0(queue_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_1_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_1_address0),.ce0(queue_1_ce0),.we0(queue_1_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_d0),.q0(queue_1_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_2_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_2_address0),.ce0(queue_2_ce0),.we0(queue_2_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_d0),.q0(queue_2_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_3_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_3_address0),.ce0(queue_3_ce0),.we0(queue_3_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_d0),.q0(queue_3_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_4_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_4_address0),.ce0(queue_4_ce0),.we0(queue_4_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_d0),.q0(queue_4_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_5_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_5_address0),.ce0(queue_5_ce0),.we0(queue_5_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_d0),.q0(queue_5_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_6_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_6_address0),.ce0(queue_6_ce0),.we0(queue_6_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_d0),.q0(queue_6_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_7_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_7_address0),.ce0(queue_7_ce0),.we0(queue_7_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_d0),.q0(queue_7_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_8_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_8_address0),.ce0(queue_8_ce0),.we0(queue_8_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_d0),.q0(queue_8_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_9_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_9_address0),.ce0(queue_9_ce0),.we0(queue_9_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_d0),.q0(queue_9_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_10_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_10_address0),.ce0(queue_10_ce0),.we0(queue_10_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_d0),.q0(queue_10_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_11_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_11_address0),.ce0(queue_11_ce0),.we0(queue_11_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_d0),.q0(queue_11_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_12_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_12_address0),.ce0(queue_12_ce0),.we0(queue_12_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_d0),.q0(queue_12_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_13_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_13_address0),.ce0(queue_13_ce0),.we0(queue_13_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_d0),.q0(queue_13_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_14_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_14_address0),.ce0(queue_14_ce0),.we0(queue_14_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_d0),.q0(queue_14_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
queue_15_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_15_address0),.ce0(queue_15_ce0),.we0(queue_15_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_d0),.q0(queue_15_q0));
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_697(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_697_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_697_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_697_ap_ready),.e(e_reg_1594),.q_in(q_in_load_reg_1509),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_d0),.level_q0(level_q0),.zext_ln18(n_reg_1493),.queue_15_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_address0),.queue_15_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_ce0),.queue_15_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_we0),.queue_15_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_d0),.queue_14_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_address0),.queue_14_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_ce0),.queue_14_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_we0),.queue_14_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_d0),.queue_13_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_address0),.queue_13_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_ce0),.queue_13_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_we0),.queue_13_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_d0),.queue_12_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_address0),.queue_12_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_ce0),.queue_12_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_we0),.queue_12_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_d0),.queue_11_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_address0),.queue_11_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_ce0),.queue_11_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_we0),.queue_11_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_d0),.queue_10_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_address0),.queue_10_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_ce0),.queue_10_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_we0),.queue_10_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_d0),.queue_9_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_address0),.queue_9_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_ce0),.queue_9_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_we0),.queue_9_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_d0),.queue_8_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_address0),.queue_8_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_ce0),.queue_8_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_we0),.queue_8_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_d0),.queue_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_address0),.queue_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_ce0),.queue_7_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_we0),.queue_7_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_d0),.queue_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_address0),.queue_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_ce0),.queue_6_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_we0),.queue_6_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_d0),.queue_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_address0),.queue_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_ce0),.queue_5_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_we0),.queue_5_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_d0),.queue_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_address0),.queue_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_ce0),.queue_4_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_we0),.queue_4_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_d0),.queue_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_address0),.queue_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_ce0),.queue_3_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_we0),.queue_3_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_d0),.queue_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_address0),.queue_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_ce0),.queue_2_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_we0),.queue_2_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_d0),.queue_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_address0),.queue_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_ce0),.queue_1_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_we0),.queue_1_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_d0),.queue_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_address0),.queue_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_ce0),.queue_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_we0),.queue_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_queue_d0),.tmp_end(tmp_end_reg_1599),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_1_ce0),.edges_1_q0(edges_1_q0),.edges_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_2_address0),.edges_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_2_ce0),.edges_2_q0(edges_2_q0),.edges_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_3_address0),.edges_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_3_ce0),.edges_3_q0(edges_3_q0),.edges_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_4_address0),.edges_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_4_ce0),.edges_4_q0(edges_4_q0),.edges_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_5_address0),.edges_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_5_ce0),.edges_5_q0(edges_5_q0),.edges_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_6_address0),.edges_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_6_ce0),.edges_6_q0(edges_6_q0),.edges_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_7_address0),.edges_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_7_ce0),.edges_7_q0(edges_7_q0),.edges_8_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_8_address0),.edges_8_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_8_ce0),.edges_8_q0(edges_8_q0),.edges_9_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_9_address0),.edges_9_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_9_ce0),.edges_9_q0(edges_9_q0),.edges_10_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_10_address0),.edges_10_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_10_ce0),.edges_10_q0(edges_10_q0),.edges_11_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_11_address0),.edges_11_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_11_ce0),.edges_11_q0(edges_11_q0),.edges_12_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_12_address0),.edges_12_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_12_ce0),.edges_12_q0(edges_12_q0),.edges_13_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_13_address0),.edges_13_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_13_ce0),.edges_13_q0(edges_13_q0),.edges_14_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_14_address0),.edges_14_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_14_ce0),.edges_14_q0(edges_14_q0),.edges_15_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_15_address0),.edges_15_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_edges_15_ce0),.edges_15_q0(edges_15_q0),.level_counts_address0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_address0),.level_counts_ce0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_ce0),.level_counts_we0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_we0),.level_counts_d0(grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_d0),.level_counts_q0(level_counts_q0),.q_in_13_out(grp_bfs_Pipeline_loop_neighbors_fu_697_q_in_13_out),.q_in_13_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_697_q_in_13_out_ap_vld));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 8 ),.CASE1( 4'h1 ),.din1_WIDTH( 8 ),.CASE2( 4'h2 ),.din2_WIDTH( 8 ),.CASE3( 4'h3 ),.din3_WIDTH( 8 ),.CASE4( 4'h4 ),.din4_WIDTH( 8 ),.CASE5( 4'h5 ),.din5_WIDTH( 8 ),.CASE6( 4'h6 ),.din6_WIDTH( 8 ),.CASE7( 4'h7 ),.din7_WIDTH( 8 ),.CASE8( 4'h8 ),.din8_WIDTH( 8 ),.CASE9( 4'h9 ),.din9_WIDTH( 8 ),.CASE10( 4'hA ),.din10_WIDTH( 8 ),.CASE11( 4'hB ),.din11_WIDTH( 8 ),.CASE12( 4'hC ),.din12_WIDTH( 8 ),.CASE13( 4'hD ),.din13_WIDTH( 8 ),.CASE14( 4'hE ),.din14_WIDTH( 8 ),.CASE15( 4'hF ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_33_4_8_1_1_U56(.din0(queue_q0),.din1(queue_1_q0),.din2(queue_2_q0),.din3(queue_3_q0),.din4(queue_4_q0),.din5(queue_5_q0),.din6(queue_6_q0),.din7(queue_7_q0),.din8(queue_8_q0),.din9(queue_9_q0),.din10(queue_10_q0),.din11(queue_11_q0),.din12(queue_12_q0),.din13(queue_13_q0),.din14(queue_14_q0),.din15(queue_15_q0),.def(n_fu_902_p33),.sel(trunc_ln32_reg_1399),.dout(n_fu_902_p35));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U57(.din0(e_fu_1070_p2),.din1(e_fu_1070_p4),.din2(e_fu_1070_p6),.din3(e_fu_1070_p8),.din4(e_fu_1070_p10),.din5(e_fu_1070_p12),.din6(e_fu_1070_p14),.din7(e_fu_1070_p16),.din8(e_fu_1070_p18),.din9(e_fu_1070_p20),.din10(e_fu_1070_p22),.din11(e_fu_1070_p24),.din12(e_fu_1070_p26),.din13(e_fu_1070_p28),.din14(e_fu_1070_p30),.din15(e_fu_1070_p32),.def(e_fu_1070_p33),.sel(trunc_ln18_reg_1498),.dout(e_fu_1070_p35));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U58(.din0(tmp_end_fu_1302_p2),.din1(tmp_end_fu_1302_p4),.din2(tmp_end_fu_1302_p6),.din3(tmp_end_fu_1302_p8),.din4(tmp_end_fu_1302_p10),.din5(tmp_end_fu_1302_p12),.din6(tmp_end_fu_1302_p14),.din7(tmp_end_fu_1302_p16),.din8(tmp_end_fu_1302_p18),.din9(tmp_end_fu_1302_p20),.din10(tmp_end_fu_1302_p22),.din11(tmp_end_fu_1302_p24),.din12(tmp_end_fu_1302_p26),.din13(tmp_end_fu_1302_p28),.din14(tmp_end_fu_1302_p30),.din15(tmp_end_fu_1302_p32),.def(tmp_end_fu_1302_p33),.sel(trunc_ln18_reg_1498),.dout(tmp_end_fu_1302_p35));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_697_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dummy_fu_184 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_843_p2 == 1'd0) & (1'd0 == and_ln33_fu_861_p2) & (tmp_fu_784_p3 == 1'd0)) | ((icmp_ln33_1_fu_877_p2 == 1'd0) & (icmp_ln33_fu_843_p2 == 1'd1) & (tmp_fu_784_p3 == 1'd0))))) begin
        dummy_fu_184 <= dummy_2_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_in_fu_176 <= 64'd2;
    end else if (((grp_bfs_Pipeline_loop_neighbors_fu_697_q_in_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        q_in_fu_176 <= grp_bfs_Pipeline_loop_neighbors_fu_697_q_in_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_out_fu_180 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_843_p2 == 1'd0) & (1'd0 == and_ln33_fu_861_p2) & (tmp_fu_784_p3 == 1'd0)) | ((icmp_ln33_1_fu_877_p2 == 1'd0) & (icmp_ln33_fu_843_p2 == 1'd1) & (tmp_fu_784_p3 == 1'd0))))) begin
        q_out_fu_180 <= q_out_1_fu_886_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_1594 <= e_fu_1070_p35;
        tmp_end_reg_1599 <= tmp_end_fu_1302_p35;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln1_reg_1504 <= {{n_fu_902_p35[7:4]}};
        n_reg_1493 <= n_fu_902_p35;
        trunc_ln18_reg_1498 <= trunc_ln18_fu_973_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        q_in_load_reg_1509 <= q_in_fu_176;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln32_reg_1399 <= trunc_ln32_fu_809_p1;
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
    if ((grp_bfs_Pipeline_loop_neighbors_fu_697_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_784_p3 == 1'd1) | (((1'd1 == and_ln33_fu_861_p2) & (icmp_ln33_fu_843_p2 == 1'd0)) | ((icmp_ln33_1_fu_877_p2 == 1'd1) & (icmp_ln33_fu_843_p2 == 1'd1)))))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_784_p3 == 1'd1) | (((1'd1 == and_ln33_fu_861_p2) & (icmp_ln33_fu_843_p2 == 1'd0)) | ((icmp_ln33_1_fu_877_p2 == 1'd1) & (icmp_ln33_fu_843_p2 == 1'd1)))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_address0;
    end else begin
        level_address0 = starting_node;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_address0;
    end else begin
        level_counts_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_d0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_d0;
    end else begin
        level_counts_d0 = 64'd1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_counts_we0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_level_we0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_10_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_address0;
    end else begin
        queue_10_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_10_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_10_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_10_we0;
    end else begin
        queue_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_11_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_address0;
    end else begin
        queue_11_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_11_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_11_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_11_we0;
    end else begin
        queue_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_12_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_address0;
    end else begin
        queue_12_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_12_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_12_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_12_we0;
    end else begin
        queue_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_13_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_address0;
    end else begin
        queue_13_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_13_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_13_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_13_we0;
    end else begin
        queue_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_14_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_address0;
    end else begin
        queue_14_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_14_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_14_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_14_we0;
    end else begin
        queue_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_15_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_address0;
    end else begin
        queue_15_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_15_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_15_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_15_we0;
    end else begin
        queue_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_address0;
    end else begin
        queue_1_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_1_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_1_we0;
    end else begin
        queue_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_address0;
    end else begin
        queue_2_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_2_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_2_we0;
    end else begin
        queue_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_address0;
    end else begin
        queue_3_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_3_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_3_we0;
    end else begin
        queue_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_address0;
    end else begin
        queue_4_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_4_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_4_we0;
    end else begin
        queue_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_address0;
    end else begin
        queue_5_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_5_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_5_we0;
    end else begin
        queue_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_address0;
    end else begin
        queue_6_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_6_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_6_we0;
    end else begin
        queue_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_address0;
    end else begin
        queue_7_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_7_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_7_we0;
    end else begin
        queue_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_8_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_address0;
    end else begin
        queue_8_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_8_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_8_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_8_we0;
    end else begin
        queue_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_9_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_address0;
    end else begin
        queue_9_address0 = zext_ln16_fu_823_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_9_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_9_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_9_we0;
    end else begin
        queue_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_address0;
    end else begin
        queue_address0 = queue_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_address0_local = zext_ln16_fu_823_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        queue_address0_local = 64'd0;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_d0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_d0;
    end else begin
        queue_d0 = trunc_ln14_fu_761_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_we0 = grp_bfs_Pipeline_loop_neighbors_fu_697_queue_we0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_784_p3 == 1'd1) | (((1'd1 == and_ln33_fu_861_p2) & (icmp_ln33_fu_843_p2 == 1'd0)) | ((icmp_ln33_1_fu_877_p2 == 1'd1) & (icmp_ln33_fu_843_p2 == 1'd1)))))) begin
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
            if (((grp_bfs_Pipeline_loop_neighbors_fu_697_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_867_p2 = (zext_ln32_1_fu_805_p1 + 9'd1);
assign and_ln33_fu_861_p2 = (icmp_ln33_3_fu_855_p2 & icmp_ln33_2_fu_849_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign dummy_2_fu_792_p2 = (dummy_fu_184 + 9'd1);
assign e_fu_1070_p10 = nodes_4_q0[63:0];
assign e_fu_1070_p12 = nodes_5_q0[63:0];
assign e_fu_1070_p14 = nodes_6_q0[63:0];
assign e_fu_1070_p16 = nodes_7_q0[63:0];
assign e_fu_1070_p18 = nodes_8_q0[63:0];
assign e_fu_1070_p2 = nodes_0_q0[63:0];
assign e_fu_1070_p20 = nodes_9_q0[63:0];
assign e_fu_1070_p22 = nodes_10_q0[63:0];
assign e_fu_1070_p24 = nodes_11_q0[63:0];
assign e_fu_1070_p26 = nodes_12_q0[63:0];
assign e_fu_1070_p28 = nodes_13_q0[63:0];
assign e_fu_1070_p30 = nodes_14_q0[63:0];
assign e_fu_1070_p32 = nodes_15_q0[63:0];
assign e_fu_1070_p33 = 'bx;
assign e_fu_1070_p4 = nodes_1_q0[63:0];
assign e_fu_1070_p6 = nodes_2_q0[63:0];
assign e_fu_1070_p8 = nodes_3_q0[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_0_ce0;
assign edges_10_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_10_address0;
assign edges_10_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_10_ce0;
assign edges_11_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_11_address0;
assign edges_11_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_11_ce0;
assign edges_12_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_12_address0;
assign edges_12_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_12_ce0;
assign edges_13_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_13_address0;
assign edges_13_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_13_ce0;
assign edges_14_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_14_address0;
assign edges_14_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_14_ce0;
assign edges_15_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_15_address0;
assign edges_15_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_15_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_1_ce0;
assign edges_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_2_address0;
assign edges_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_2_ce0;
assign edges_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_3_address0;
assign edges_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_3_ce0;
assign edges_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_4_address0;
assign edges_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_4_ce0;
assign edges_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_5_address0;
assign edges_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_5_ce0;
assign edges_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_6_address0;
assign edges_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_6_ce0;
assign edges_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_7_address0;
assign edges_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_7_ce0;
assign edges_8_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_8_address0;
assign edges_8_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_8_ce0;
assign edges_9_address0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_9_address0;
assign edges_9_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_697_edges_9_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_697_ap_start_reg;
assign icmp_ln33_1_fu_877_p2 = ((q_in_fu_176 == zext_ln33_fu_873_p1) ? 1'b1 : 1'b0);
assign icmp_ln33_2_fu_849_p2 = ((q_in_fu_176 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln33_3_fu_855_p2 = ((q_out_fu_180 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_843_p2 = ((q_in_fu_176 > zext_ln32_fu_801_p1) ? 1'b1 : 1'b0);
assign lshr_ln_fu_813_p4 = {{q_out_fu_180[7:4]}};
assign n_fu_902_p33 = 'bx;
assign nodes_0_address0 = zext_ln18_fu_987_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_10_address0 = zext_ln18_fu_987_p1;
assign nodes_10_ce0 = nodes_10_ce0_local;
assign nodes_11_address0 = zext_ln18_fu_987_p1;
assign nodes_11_ce0 = nodes_11_ce0_local;
assign nodes_12_address0 = zext_ln18_fu_987_p1;
assign nodes_12_ce0 = nodes_12_ce0_local;
assign nodes_13_address0 = zext_ln18_fu_987_p1;
assign nodes_13_ce0 = nodes_13_ce0_local;
assign nodes_14_address0 = zext_ln18_fu_987_p1;
assign nodes_14_ce0 = nodes_14_ce0_local;
assign nodes_15_address0 = zext_ln18_fu_987_p1;
assign nodes_15_ce0 = nodes_15_ce0_local;
assign nodes_1_address0 = zext_ln18_fu_987_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign nodes_2_address0 = zext_ln18_fu_987_p1;
assign nodes_2_ce0 = nodes_2_ce0_local;
assign nodes_3_address0 = zext_ln18_fu_987_p1;
assign nodes_3_ce0 = nodes_3_ce0_local;
assign nodes_4_address0 = zext_ln18_fu_987_p1;
assign nodes_4_ce0 = nodes_4_ce0_local;
assign nodes_5_address0 = zext_ln18_fu_987_p1;
assign nodes_5_ce0 = nodes_5_ce0_local;
assign nodes_6_address0 = zext_ln18_fu_987_p1;
assign nodes_6_ce0 = nodes_6_ce0_local;
assign nodes_7_address0 = zext_ln18_fu_987_p1;
assign nodes_7_ce0 = nodes_7_ce0_local;
assign nodes_8_address0 = zext_ln18_fu_987_p1;
assign nodes_8_ce0 = nodes_8_ce0_local;
assign nodes_9_address0 = zext_ln18_fu_987_p1;
assign nodes_9_ce0 = nodes_9_ce0_local;
assign q_out_1_fu_886_p2 = (q_out_fu_180 + 8'd1);
assign tmp_end_fu_1302_p10 = {{nodes_4_q0[127:64]}};
assign tmp_end_fu_1302_p12 = {{nodes_5_q0[127:64]}};
assign tmp_end_fu_1302_p14 = {{nodes_6_q0[127:64]}};
assign tmp_end_fu_1302_p16 = {{nodes_7_q0[127:64]}};
assign tmp_end_fu_1302_p18 = {{nodes_8_q0[127:64]}};
assign tmp_end_fu_1302_p2 = {{nodes_0_q0[127:64]}};
assign tmp_end_fu_1302_p20 = {{nodes_9_q0[127:64]}};
assign tmp_end_fu_1302_p22 = {{nodes_10_q0[127:64]}};
assign tmp_end_fu_1302_p24 = {{nodes_11_q0[127:64]}};
assign tmp_end_fu_1302_p26 = {{nodes_12_q0[127:64]}};
assign tmp_end_fu_1302_p28 = {{nodes_13_q0[127:64]}};
assign tmp_end_fu_1302_p30 = {{nodes_14_q0[127:64]}};
assign tmp_end_fu_1302_p32 = {{nodes_15_q0[127:64]}};
assign tmp_end_fu_1302_p33 = 'bx;
assign tmp_end_fu_1302_p4 = {{nodes_1_q0[127:64]}};
assign tmp_end_fu_1302_p6 = {{nodes_2_q0[127:64]}};
assign tmp_end_fu_1302_p8 = {{nodes_3_q0[127:64]}};
assign tmp_fu_784_p3 = dummy_fu_184[32'd8];
assign trunc_ln14_fu_761_p1 = starting_node[7:0];
assign trunc_ln18_fu_973_p1 = n_fu_902_p35[3:0];
assign trunc_ln32_fu_809_p1 = q_out_fu_180[3:0];
assign zext_ln16_fu_823_p1 = lshr_ln_fu_813_p4;
assign zext_ln18_fu_987_p1 = lshr_ln1_reg_1504;
assign zext_ln32_1_fu_805_p1 = q_out_fu_180;
assign zext_ln32_fu_801_p1 = q_out_fu_180;
assign zext_ln33_fu_873_p1 = add_ln33_fu_867_p2;
endmodule 
