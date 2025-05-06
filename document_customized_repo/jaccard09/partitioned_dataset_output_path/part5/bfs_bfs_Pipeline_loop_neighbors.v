
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_31_address0,queue_31_ce0,queue_31_we0,queue_31_d0,queue_30_address0,queue_30_ce0,queue_30_we0,queue_30_d0,queue_29_address0,queue_29_ce0,queue_29_we0,queue_29_d0,queue_28_address0,queue_28_ce0,queue_28_we0,queue_28_d0,queue_27_address0,queue_27_ce0,queue_27_we0,queue_27_d0,queue_26_address0,queue_26_ce0,queue_26_we0,queue_26_d0,queue_25_address0,queue_25_ce0,queue_25_we0,queue_25_d0,queue_24_address0,queue_24_ce0,queue_24_we0,queue_24_d0,queue_23_address0,queue_23_ce0,queue_23_we0,queue_23_d0,queue_22_address0,queue_22_ce0,queue_22_we0,queue_22_d0,queue_21_address0,queue_21_ce0,queue_21_we0,queue_21_d0,queue_20_address0,queue_20_ce0,queue_20_we0,queue_20_d0,queue_19_address0,queue_19_ce0,queue_19_we0,queue_19_d0,queue_18_address0,queue_18_ce0,queue_18_we0,queue_18_d0,queue_17_address0,queue_17_ce0,queue_17_we0,queue_17_d0,queue_16_address0,queue_16_ce0,queue_16_we0,queue_16_d0,queue_15_address0,queue_15_ce0,queue_15_we0,queue_15_d0,queue_14_address0,queue_14_ce0,queue_14_we0,queue_14_d0,queue_13_address0,queue_13_ce0,queue_13_we0,queue_13_d0,queue_12_address0,queue_12_ce0,queue_12_we0,queue_12_d0,queue_11_address0,queue_11_ce0,queue_11_we0,queue_11_d0,queue_10_address0,queue_10_ce0,queue_10_we0,queue_10_d0,queue_9_address0,queue_9_ce0,queue_9_we0,queue_9_d0,queue_8_address0,queue_8_ce0,queue_8_we0,queue_8_d0,queue_7_address0,queue_7_ce0,queue_7_we0,queue_7_d0,queue_6_address0,queue_6_ce0,queue_6_we0,queue_6_d0,queue_5_address0,queue_5_ce0,queue_5_we0,queue_5_d0,queue_4_address0,queue_4_ce0,queue_4_we0,queue_4_d0,queue_3_address0,queue_3_ce0,queue_3_we0,queue_3_d0,queue_2_address0,queue_2_ce0,queue_2_we0,queue_2_d0,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,edges_16_address0,edges_16_ce0,edges_16_q0,edges_17_address0,edges_17_ce0,edges_17_q0,edges_18_address0,edges_18_ce0,edges_18_q0,edges_19_address0,edges_19_ce0,edges_19_q0,edges_20_address0,edges_20_ce0,edges_20_q0,edges_21_address0,edges_21_ce0,edges_21_q0,edges_22_address0,edges_22_ce0,edges_22_q0,edges_23_address0,edges_23_ce0,edges_23_q0,edges_24_address0,edges_24_ce0,edges_24_q0,edges_25_address0,edges_25_ce0,edges_25_q0,edges_26_address0,edges_26_ce0,edges_26_q0,edges_27_address0,edges_27_ce0,edges_27_q0,edges_28_address0,edges_28_ce0,edges_28_q0,edges_29_address0,edges_29_ce0,edges_29_q0,edges_30_address0,edges_30_ce0,edges_30_q0,edges_31_address0,edges_31_ce0,edges_31_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_2_out_i,q_in_2_out_o,q_in_2_out_o_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [2:0] queue_31_address0;
output   queue_31_ce0;
output   queue_31_we0;
output  [7:0] queue_31_d0;
output  [2:0] queue_30_address0;
output   queue_30_ce0;
output   queue_30_we0;
output  [7:0] queue_30_d0;
output  [2:0] queue_29_address0;
output   queue_29_ce0;
output   queue_29_we0;
output  [7:0] queue_29_d0;
output  [2:0] queue_28_address0;
output   queue_28_ce0;
output   queue_28_we0;
output  [7:0] queue_28_d0;
output  [2:0] queue_27_address0;
output   queue_27_ce0;
output   queue_27_we0;
output  [7:0] queue_27_d0;
output  [2:0] queue_26_address0;
output   queue_26_ce0;
output   queue_26_we0;
output  [7:0] queue_26_d0;
output  [2:0] queue_25_address0;
output   queue_25_ce0;
output   queue_25_we0;
output  [7:0] queue_25_d0;
output  [2:0] queue_24_address0;
output   queue_24_ce0;
output   queue_24_we0;
output  [7:0] queue_24_d0;
output  [2:0] queue_23_address0;
output   queue_23_ce0;
output   queue_23_we0;
output  [7:0] queue_23_d0;
output  [2:0] queue_22_address0;
output   queue_22_ce0;
output   queue_22_we0;
output  [7:0] queue_22_d0;
output  [2:0] queue_21_address0;
output   queue_21_ce0;
output   queue_21_we0;
output  [7:0] queue_21_d0;
output  [2:0] queue_20_address0;
output   queue_20_ce0;
output   queue_20_we0;
output  [7:0] queue_20_d0;
output  [2:0] queue_19_address0;
output   queue_19_ce0;
output   queue_19_we0;
output  [7:0] queue_19_d0;
output  [2:0] queue_18_address0;
output   queue_18_ce0;
output   queue_18_we0;
output  [7:0] queue_18_d0;
output  [2:0] queue_17_address0;
output   queue_17_ce0;
output   queue_17_we0;
output  [7:0] queue_17_d0;
output  [2:0] queue_16_address0;
output   queue_16_ce0;
output   queue_16_we0;
output  [7:0] queue_16_d0;
output  [2:0] queue_15_address0;
output   queue_15_ce0;
output   queue_15_we0;
output  [7:0] queue_15_d0;
output  [2:0] queue_14_address0;
output   queue_14_ce0;
output   queue_14_we0;
output  [7:0] queue_14_d0;
output  [2:0] queue_13_address0;
output   queue_13_ce0;
output   queue_13_we0;
output  [7:0] queue_13_d0;
output  [2:0] queue_12_address0;
output   queue_12_ce0;
output   queue_12_we0;
output  [7:0] queue_12_d0;
output  [2:0] queue_11_address0;
output   queue_11_ce0;
output   queue_11_we0;
output  [7:0] queue_11_d0;
output  [2:0] queue_10_address0;
output   queue_10_ce0;
output   queue_10_we0;
output  [7:0] queue_10_d0;
output  [2:0] queue_9_address0;
output   queue_9_ce0;
output   queue_9_we0;
output  [7:0] queue_9_d0;
output  [2:0] queue_8_address0;
output   queue_8_ce0;
output   queue_8_we0;
output  [7:0] queue_8_d0;
output  [2:0] queue_7_address0;
output   queue_7_ce0;
output   queue_7_we0;
output  [7:0] queue_7_d0;
output  [2:0] queue_6_address0;
output   queue_6_ce0;
output   queue_6_we0;
output  [7:0] queue_6_d0;
output  [2:0] queue_5_address0;
output   queue_5_ce0;
output   queue_5_we0;
output  [7:0] queue_5_d0;
output  [2:0] queue_4_address0;
output   queue_4_ce0;
output   queue_4_we0;
output  [7:0] queue_4_d0;
output  [2:0] queue_3_address0;
output   queue_3_ce0;
output   queue_3_we0;
output  [7:0] queue_3_d0;
output  [2:0] queue_2_address0;
output   queue_2_ce0;
output   queue_2_we0;
output  [7:0] queue_2_d0;
output  [2:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [2:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
input  [63:0] tmp_end;
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
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
input  [63:0] q_in_2_out_i;
output  [63:0] q_in_2_out_o;
output   q_in_2_out_o_ap_vld;
reg ap_idle;
reg[63:0] q_in_2_out_o;
reg q_in_2_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln39_reg_1663;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_1153_p1;
reg   [63:0] zext_ln18_cast_reg_1652;
reg   [63:0] e_3_reg_1657;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln39_fu_1173_p2;
reg   [7:0] level_addr_reg_1667;
wire   [0:0] icmp_ln40_fu_1231_p2;
reg   [0:0] icmp_ln40_reg_1672;
reg   [0:0] icmp_ln40_reg_1672_pp0_iter1_reg;
wire   [7:0] tmp_dst_fu_1372_p67;
reg   [7:0] tmp_dst_reg_1836;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] level_addr_1_reg_1873;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] icmp_ln44_fu_1522_p2;
reg   [0:0] icmp_ln44_reg_1878;
wire   [0:0] icmp_ln48_fu_1528_p2;
reg   [0:0] icmp_ln48_reg_1882;
wire   [7:0] trunc_ln39_fu_1534_p1;
reg   [7:0] trunc_ln39_reg_1887;
reg   [7:0] level_load_reg_1892;
reg   [3:0] level_counts_addr_reg_1900;
reg   [63:0] level_counts_load_reg_1905;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_1195_p1;
wire   [63:0] zext_ln41_fu_1518_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln48_fu_1565_p1;
wire   [63:0] zext_ln47_fu_1607_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_1_fu_1617_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] e_1_fu_258;
wire   [63:0] e_4_fu_1508_p2;
wire    ap_loop_init;
reg   [7:0] i_fu_262;
wire   [7:0] i_2_fu_1179_p2;
reg    edges_0_ce0_local;
reg    edges_1_ce0_local;
reg    edges_2_ce0_local;
reg    edges_3_ce0_local;
reg    edges_4_ce0_local;
reg    edges_5_ce0_local;
reg    edges_6_ce0_local;
reg    edges_7_ce0_local;
reg    edges_8_ce0_local;
reg    edges_9_ce0_local;
reg    edges_10_ce0_local;
reg    edges_11_ce0_local;
reg    edges_12_ce0_local;
reg    edges_13_ce0_local;
reg    edges_14_ce0_local;
reg    edges_15_ce0_local;
reg    edges_16_ce0_local;
reg    edges_17_ce0_local;
reg    edges_18_ce0_local;
reg    edges_19_ce0_local;
reg    edges_20_ce0_local;
reg    edges_21_ce0_local;
reg    edges_22_ce0_local;
reg    edges_23_ce0_local;
reg    edges_24_ce0_local;
reg    edges_25_ce0_local;
reg    edges_26_ce0_local;
reg    edges_27_ce0_local;
reg    edges_28_ce0_local;
reg    edges_29_ce0_local;
reg    edges_30_ce0_local;
reg    edges_31_ce0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] tmp_level_1_fu_1601_p2;
reg    queue_30_we0_local;
wire   [4:0] trunc_ln48_fu_1551_p1;
reg    queue_30_ce0_local;
reg    queue_29_we0_local;
reg    queue_29_ce0_local;
reg    queue_28_we0_local;
reg    queue_28_ce0_local;
reg    queue_27_we0_local;
reg    queue_27_ce0_local;
reg    queue_26_we0_local;
reg    queue_26_ce0_local;
reg    queue_25_we0_local;
reg    queue_25_ce0_local;
reg    queue_24_we0_local;
reg    queue_24_ce0_local;
reg    queue_23_we0_local;
reg    queue_23_ce0_local;
reg    queue_22_we0_local;
reg    queue_22_ce0_local;
reg    queue_21_we0_local;
reg    queue_21_ce0_local;
reg    queue_20_we0_local;
reg    queue_20_ce0_local;
reg    queue_19_we0_local;
reg    queue_19_ce0_local;
reg    queue_18_we0_local;
reg    queue_18_ce0_local;
reg    queue_17_we0_local;
reg    queue_17_ce0_local;
reg    queue_16_we0_local;
reg    queue_16_ce0_local;
reg    queue_15_we0_local;
reg    queue_15_ce0_local;
reg    queue_14_we0_local;
reg    queue_14_ce0_local;
reg    queue_13_we0_local;
reg    queue_13_ce0_local;
reg    queue_12_we0_local;
reg    queue_12_ce0_local;
reg    queue_11_we0_local;
reg    queue_11_ce0_local;
reg    queue_10_we0_local;
reg    queue_10_ce0_local;
reg    queue_9_we0_local;
reg    queue_9_ce0_local;
reg    queue_8_we0_local;
reg    queue_8_ce0_local;
reg    queue_7_we0_local;
reg    queue_7_ce0_local;
reg    queue_6_we0_local;
reg    queue_6_ce0_local;
reg    queue_5_we0_local;
reg    queue_5_ce0_local;
reg    queue_4_we0_local;
reg    queue_4_ce0_local;
reg    queue_3_we0_local;
reg    queue_3_ce0_local;
reg    queue_2_we0_local;
reg    queue_2_ce0_local;
reg    queue_1_we0_local;
reg    queue_1_ce0_local;
reg    queue_we0_local;
reg    queue_ce0_local;
reg    queue_31_we0_local;
reg    queue_31_ce0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] add_ln47_fu_1627_p2;
wire   [6:0] lshr_ln16_1_fu_1185_p4;
wire   [7:0] tmp_dst_fu_1372_p2;
wire   [7:0] tmp_dst_fu_1372_p4;
wire   [7:0] tmp_dst_fu_1372_p6;
wire   [7:0] tmp_dst_fu_1372_p8;
wire   [7:0] tmp_dst_fu_1372_p10;
wire   [7:0] tmp_dst_fu_1372_p12;
wire   [7:0] tmp_dst_fu_1372_p14;
wire   [7:0] tmp_dst_fu_1372_p16;
wire   [7:0] tmp_dst_fu_1372_p18;
wire   [7:0] tmp_dst_fu_1372_p20;
wire   [7:0] tmp_dst_fu_1372_p22;
wire   [7:0] tmp_dst_fu_1372_p24;
wire   [7:0] tmp_dst_fu_1372_p26;
wire   [7:0] tmp_dst_fu_1372_p28;
wire   [7:0] tmp_dst_fu_1372_p30;
wire   [7:0] tmp_dst_fu_1372_p32;
wire   [7:0] tmp_dst_fu_1372_p34;
wire   [7:0] tmp_dst_fu_1372_p36;
wire   [7:0] tmp_dst_fu_1372_p38;
wire   [7:0] tmp_dst_fu_1372_p40;
wire   [7:0] tmp_dst_fu_1372_p42;
wire   [7:0] tmp_dst_fu_1372_p44;
wire   [7:0] tmp_dst_fu_1372_p46;
wire   [7:0] tmp_dst_fu_1372_p48;
wire   [7:0] tmp_dst_fu_1372_p50;
wire   [7:0] tmp_dst_fu_1372_p52;
wire   [7:0] tmp_dst_fu_1372_p54;
wire   [7:0] tmp_dst_fu_1372_p56;
wire   [7:0] tmp_dst_fu_1372_p58;
wire   [7:0] tmp_dst_fu_1372_p60;
wire   [7:0] tmp_dst_fu_1372_p62;
wire   [7:0] tmp_dst_fu_1372_p64;
wire   [7:0] tmp_dst_fu_1372_p65;
wire   [4:0] tmp_dst_fu_1372_p66;
wire   [7:0] add_ln48_fu_1538_p2;
wire   [7:0] select_ln48_fu_1544_p3;
wire   [2:0] lshr_ln2_fu_1555_p4;
wire   [7:0] q_in_fu_1612_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_dst_fu_1372_p1;
wire   [4:0] tmp_dst_fu_1372_p3;
wire   [4:0] tmp_dst_fu_1372_p5;
wire   [4:0] tmp_dst_fu_1372_p7;
wire   [4:0] tmp_dst_fu_1372_p9;
wire   [4:0] tmp_dst_fu_1372_p11;
wire   [4:0] tmp_dst_fu_1372_p13;
wire   [4:0] tmp_dst_fu_1372_p15;
wire   [4:0] tmp_dst_fu_1372_p17;
wire   [4:0] tmp_dst_fu_1372_p19;
wire   [4:0] tmp_dst_fu_1372_p21;
wire   [4:0] tmp_dst_fu_1372_p23;
wire   [4:0] tmp_dst_fu_1372_p25;
wire   [4:0] tmp_dst_fu_1372_p27;
wire   [4:0] tmp_dst_fu_1372_p29;
wire   [4:0] tmp_dst_fu_1372_p31;
wire  signed [4:0] tmp_dst_fu_1372_p33;
wire  signed [4:0] tmp_dst_fu_1372_p35;
wire  signed [4:0] tmp_dst_fu_1372_p37;
wire  signed [4:0] tmp_dst_fu_1372_p39;
wire  signed [4:0] tmp_dst_fu_1372_p41;
wire  signed [4:0] tmp_dst_fu_1372_p43;
wire  signed [4:0] tmp_dst_fu_1372_p45;
wire  signed [4:0] tmp_dst_fu_1372_p47;
wire  signed [4:0] tmp_dst_fu_1372_p49;
wire  signed [4:0] tmp_dst_fu_1372_p51;
wire  signed [4:0] tmp_dst_fu_1372_p53;
wire  signed [4:0] tmp_dst_fu_1372_p55;
wire  signed [4:0] tmp_dst_fu_1372_p57;
wire  signed [4:0] tmp_dst_fu_1372_p59;
wire  signed [4:0] tmp_dst_fu_1372_p61;
wire  signed [4:0] tmp_dst_fu_1372_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_1_fu_258 = 64'd0;
#0 i_fu_262 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_65_5_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 8 ),.CASE1( 5'h1 ),.din1_WIDTH( 8 ),.CASE2( 5'h2 ),.din2_WIDTH( 8 ),.CASE3( 5'h3 ),.din3_WIDTH( 8 ),.CASE4( 5'h4 ),.din4_WIDTH( 8 ),.CASE5( 5'h5 ),.din5_WIDTH( 8 ),.CASE6( 5'h6 ),.din6_WIDTH( 8 ),.CASE7( 5'h7 ),.din7_WIDTH( 8 ),.CASE8( 5'h8 ),.din8_WIDTH( 8 ),.CASE9( 5'h9 ),.din9_WIDTH( 8 ),.CASE10( 5'hA ),.din10_WIDTH( 8 ),.CASE11( 5'hB ),.din11_WIDTH( 8 ),.CASE12( 5'hC ),.din12_WIDTH( 8 ),.CASE13( 5'hD ),.din13_WIDTH( 8 ),.CASE14( 5'hE ),.din14_WIDTH( 8 ),.CASE15( 5'hF ),.din15_WIDTH( 8 ),.CASE16( 5'h10 ),.din16_WIDTH( 8 ),.CASE17( 5'h11 ),.din17_WIDTH( 8 ),.CASE18( 5'h12 ),.din18_WIDTH( 8 ),.CASE19( 5'h13 ),.din19_WIDTH( 8 ),.CASE20( 5'h14 ),.din20_WIDTH( 8 ),.CASE21( 5'h15 ),.din21_WIDTH( 8 ),.CASE22( 5'h16 ),.din22_WIDTH( 8 ),.CASE23( 5'h17 ),.din23_WIDTH( 8 ),.CASE24( 5'h18 ),.din24_WIDTH( 8 ),.CASE25( 5'h19 ),.din25_WIDTH( 8 ),.CASE26( 5'h1A ),.din26_WIDTH( 8 ),.CASE27( 5'h1B ),.din27_WIDTH( 8 ),.CASE28( 5'h1C ),.din28_WIDTH( 8 ),.CASE29( 5'h1D ),.din29_WIDTH( 8 ),.CASE30( 5'h1E ),.din30_WIDTH( 8 ),.CASE31( 5'h1F ),.din31_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 5 ),.dout_WIDTH( 8 ))
sparsemux_65_5_8_1_1_U1(.din0(tmp_dst_fu_1372_p2),.din1(tmp_dst_fu_1372_p4),.din2(tmp_dst_fu_1372_p6),.din3(tmp_dst_fu_1372_p8),.din4(tmp_dst_fu_1372_p10),.din5(tmp_dst_fu_1372_p12),.din6(tmp_dst_fu_1372_p14),.din7(tmp_dst_fu_1372_p16),.din8(tmp_dst_fu_1372_p18),.din9(tmp_dst_fu_1372_p20),.din10(tmp_dst_fu_1372_p22),.din11(tmp_dst_fu_1372_p24),.din12(tmp_dst_fu_1372_p26),.din13(tmp_dst_fu_1372_p28),.din14(tmp_dst_fu_1372_p30),.din15(tmp_dst_fu_1372_p32),.din16(tmp_dst_fu_1372_p34),.din17(tmp_dst_fu_1372_p36),.din18(tmp_dst_fu_1372_p38),.din19(tmp_dst_fu_1372_p40),.din20(tmp_dst_fu_1372_p42),.din21(tmp_dst_fu_1372_p44),.din22(tmp_dst_fu_1372_p46),.din23(tmp_dst_fu_1372_p48),.din24(tmp_dst_fu_1372_p50),.din25(tmp_dst_fu_1372_p52),.din26(tmp_dst_fu_1372_p54),.din27(tmp_dst_fu_1372_p56),.din28(tmp_dst_fu_1372_p58),.din29(tmp_dst_fu_1372_p60),.din30(tmp_dst_fu_1372_p62),.din31(tmp_dst_fu_1372_p64),.def(tmp_dst_fu_1372_p65),.sel(tmp_dst_fu_1372_p66),.dout(tmp_dst_fu_1372_p67));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_1_fu_258 <= e;
    end else if (((icmp_ln39_reg_1663 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        e_1_fu_258 <= e_4_fu_1508_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_262 <= 8'd0;
    end else if (((icmp_ln39_fu_1173_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_262 <= i_2_fu_1179_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_3_reg_1657 <= e_1_fu_258;
        icmp_ln39_reg_1663 <= icmp_ln39_fu_1173_p2;
        icmp_ln40_reg_1672 <= icmp_ln40_fu_1231_p2;
        icmp_ln40_reg_1672_pp0_iter1_reg <= icmp_ln40_reg_1672;
        level_addr_reg_1667 <= zext_ln18_cast_reg_1652;
        trunc_ln39_reg_1887 <= trunc_ln39_fu_1534_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_reg_1878 <= icmp_ln44_fu_1522_p2;
        icmp_ln48_reg_1882 <= icmp_ln48_fu_1528_p2;
        zext_ln18_cast_reg_1652[7 : 0] <= zext_ln18_cast_fu_1153_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_1_reg_1873 <= zext_ln41_fu_1518_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_addr_reg_1900 <= zext_ln47_fu_1607_p1;
        tmp_dst_reg_1836 <= tmp_dst_fu_1372_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_counts_load_reg_1905 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        level_load_reg_1892 <= level_q0;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_1663 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_1663 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_10_ce0_local = 1'b1;
    end else begin
        edges_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_11_ce0_local = 1'b1;
    end else begin
        edges_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_12_ce0_local = 1'b1;
    end else begin
        edges_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_13_ce0_local = 1'b1;
    end else begin
        edges_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_14_ce0_local = 1'b1;
    end else begin
        edges_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_15_ce0_local = 1'b1;
    end else begin
        edges_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_16_ce0_local = 1'b1;
    end else begin
        edges_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_17_ce0_local = 1'b1;
    end else begin
        edges_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_18_ce0_local = 1'b1;
    end else begin
        edges_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_19_ce0_local = 1'b1;
    end else begin
        edges_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_20_ce0_local = 1'b1;
    end else begin
        edges_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_21_ce0_local = 1'b1;
    end else begin
        edges_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_22_ce0_local = 1'b1;
    end else begin
        edges_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_23_ce0_local = 1'b1;
    end else begin
        edges_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_24_ce0_local = 1'b1;
    end else begin
        edges_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_25_ce0_local = 1'b1;
    end else begin
        edges_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_26_ce0_local = 1'b1;
    end else begin
        edges_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_27_ce0_local = 1'b1;
    end else begin
        edges_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_28_ce0_local = 1'b1;
    end else begin
        edges_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_29_ce0_local = 1'b1;
    end else begin
        edges_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_30_ce0_local = 1'b1;
    end else begin
        edges_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_31_ce0_local = 1'b1;
    end else begin
        edges_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_4_ce0_local = 1'b1;
    end else begin
        edges_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_5_ce0_local = 1'b1;
    end else begin
        edges_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_6_ce0_local = 1'b1;
    end else begin
        edges_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_7_ce0_local = 1'b1;
    end else begin
        edges_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_8_ce0_local = 1'b1;
    end else begin
        edges_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_9_ce0_local = 1'b1;
    end else begin
        edges_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_1_reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = level_addr_reg_1667;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_1518_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_reg_1900;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_fu_1607_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        q_in_2_out_o = zext_ln16_1_fu_1617_p1;
    end else begin
        q_in_2_out_o = q_in_2_out_i;
    end
end
always @ (*) begin
    if (((icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        q_in_2_out_o_ap_vld = 1'b1;
    end else begin
        q_in_2_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_10_ce0_local = 1'b1;
    end else begin
        queue_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd10) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_10_we0_local = 1'b1;
    end else begin
        queue_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_11_ce0_local = 1'b1;
    end else begin
        queue_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd11) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_11_we0_local = 1'b1;
    end else begin
        queue_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_12_ce0_local = 1'b1;
    end else begin
        queue_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd12) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_12_we0_local = 1'b1;
    end else begin
        queue_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_13_ce0_local = 1'b1;
    end else begin
        queue_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd13) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_13_we0_local = 1'b1;
    end else begin
        queue_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_14_ce0_local = 1'b1;
    end else begin
        queue_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd14) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_14_we0_local = 1'b1;
    end else begin
        queue_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_15_ce0_local = 1'b1;
    end else begin
        queue_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd15) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_15_we0_local = 1'b1;
    end else begin
        queue_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_16_ce0_local = 1'b1;
    end else begin
        queue_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd16) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_16_we0_local = 1'b1;
    end else begin
        queue_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_17_ce0_local = 1'b1;
    end else begin
        queue_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd17) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_17_we0_local = 1'b1;
    end else begin
        queue_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_18_ce0_local = 1'b1;
    end else begin
        queue_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd18) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_18_we0_local = 1'b1;
    end else begin
        queue_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_19_ce0_local = 1'b1;
    end else begin
        queue_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd19) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_19_we0_local = 1'b1;
    end else begin
        queue_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd1) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_20_ce0_local = 1'b1;
    end else begin
        queue_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd20) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_20_we0_local = 1'b1;
    end else begin
        queue_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_21_ce0_local = 1'b1;
    end else begin
        queue_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd21) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_21_we0_local = 1'b1;
    end else begin
        queue_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_22_ce0_local = 1'b1;
    end else begin
        queue_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd22) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_22_we0_local = 1'b1;
    end else begin
        queue_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_23_ce0_local = 1'b1;
    end else begin
        queue_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd23) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_23_we0_local = 1'b1;
    end else begin
        queue_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_24_ce0_local = 1'b1;
    end else begin
        queue_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd24) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_24_we0_local = 1'b1;
    end else begin
        queue_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_25_ce0_local = 1'b1;
    end else begin
        queue_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd25) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_25_we0_local = 1'b1;
    end else begin
        queue_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_26_ce0_local = 1'b1;
    end else begin
        queue_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd26) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_26_we0_local = 1'b1;
    end else begin
        queue_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_27_ce0_local = 1'b1;
    end else begin
        queue_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd27) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_27_we0_local = 1'b1;
    end else begin
        queue_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_28_ce0_local = 1'b1;
    end else begin
        queue_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd28) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_28_we0_local = 1'b1;
    end else begin
        queue_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_29_ce0_local = 1'b1;
    end else begin
        queue_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd29) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_29_we0_local = 1'b1;
    end else begin
        queue_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_ce0_local = 1'b1;
    end else begin
        queue_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd2) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_we0_local = 1'b1;
    end else begin
        queue_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_30_ce0_local = 1'b1;
    end else begin
        queue_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd30) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_30_we0_local = 1'b1;
    end else begin
        queue_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_31_ce0_local = 1'b1;
    end else begin
        queue_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd31) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_31_we0_local = 1'b1;
    end else begin
        queue_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_ce0_local = 1'b1;
    end else begin
        queue_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd3) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_we0_local = 1'b1;
    end else begin
        queue_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_4_ce0_local = 1'b1;
    end else begin
        queue_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd4) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_4_we0_local = 1'b1;
    end else begin
        queue_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_5_ce0_local = 1'b1;
    end else begin
        queue_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd5) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_5_we0_local = 1'b1;
    end else begin
        queue_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_6_ce0_local = 1'b1;
    end else begin
        queue_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd6) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_6_we0_local = 1'b1;
    end else begin
        queue_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_7_ce0_local = 1'b1;
    end else begin
        queue_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd7) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_7_we0_local = 1'b1;
    end else begin
        queue_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_8_ce0_local = 1'b1;
    end else begin
        queue_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd8) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_8_we0_local = 1'b1;
    end else begin
        queue_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_9_ce0_local = 1'b1;
    end else begin
        queue_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd9) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_9_we0_local = 1'b1;
    end else begin
        queue_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln48_fu_1551_p1 == 5'd0) & (icmp_ln44_reg_1878 == 1'd1) & (icmp_ln40_reg_1672 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln47_fu_1627_p2 = (level_counts_load_reg_1905 + 64'd1);
assign add_ln48_fu_1538_p2 = ($signed(trunc_ln39_fu_1534_p1) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign e_4_fu_1508_p2 = (e_3_reg_1657 + 64'd1);
assign edges_0_address0 = zext_ln16_fu_1195_p1;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_10_address0 = zext_ln16_fu_1195_p1;
assign edges_10_ce0 = edges_10_ce0_local;
assign edges_11_address0 = zext_ln16_fu_1195_p1;
assign edges_11_ce0 = edges_11_ce0_local;
assign edges_12_address0 = zext_ln16_fu_1195_p1;
assign edges_12_ce0 = edges_12_ce0_local;
assign edges_13_address0 = zext_ln16_fu_1195_p1;
assign edges_13_ce0 = edges_13_ce0_local;
assign edges_14_address0 = zext_ln16_fu_1195_p1;
assign edges_14_ce0 = edges_14_ce0_local;
assign edges_15_address0 = zext_ln16_fu_1195_p1;
assign edges_15_ce0 = edges_15_ce0_local;
assign edges_16_address0 = zext_ln16_fu_1195_p1;
assign edges_16_ce0 = edges_16_ce0_local;
assign edges_17_address0 = zext_ln16_fu_1195_p1;
assign edges_17_ce0 = edges_17_ce0_local;
assign edges_18_address0 = zext_ln16_fu_1195_p1;
assign edges_18_ce0 = edges_18_ce0_local;
assign edges_19_address0 = zext_ln16_fu_1195_p1;
assign edges_19_ce0 = edges_19_ce0_local;
assign edges_1_address0 = zext_ln16_fu_1195_p1;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_20_address0 = zext_ln16_fu_1195_p1;
assign edges_20_ce0 = edges_20_ce0_local;
assign edges_21_address0 = zext_ln16_fu_1195_p1;
assign edges_21_ce0 = edges_21_ce0_local;
assign edges_22_address0 = zext_ln16_fu_1195_p1;
assign edges_22_ce0 = edges_22_ce0_local;
assign edges_23_address0 = zext_ln16_fu_1195_p1;
assign edges_23_ce0 = edges_23_ce0_local;
assign edges_24_address0 = zext_ln16_fu_1195_p1;
assign edges_24_ce0 = edges_24_ce0_local;
assign edges_25_address0 = zext_ln16_fu_1195_p1;
assign edges_25_ce0 = edges_25_ce0_local;
assign edges_26_address0 = zext_ln16_fu_1195_p1;
assign edges_26_ce0 = edges_26_ce0_local;
assign edges_27_address0 = zext_ln16_fu_1195_p1;
assign edges_27_ce0 = edges_27_ce0_local;
assign edges_28_address0 = zext_ln16_fu_1195_p1;
assign edges_28_ce0 = edges_28_ce0_local;
assign edges_29_address0 = zext_ln16_fu_1195_p1;
assign edges_29_ce0 = edges_29_ce0_local;
assign edges_2_address0 = zext_ln16_fu_1195_p1;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_30_address0 = zext_ln16_fu_1195_p1;
assign edges_30_ce0 = edges_30_ce0_local;
assign edges_31_address0 = zext_ln16_fu_1195_p1;
assign edges_31_ce0 = edges_31_ce0_local;
assign edges_3_address0 = zext_ln16_fu_1195_p1;
assign edges_3_ce0 = edges_3_ce0_local;
assign edges_4_address0 = zext_ln16_fu_1195_p1;
assign edges_4_ce0 = edges_4_ce0_local;
assign edges_5_address0 = zext_ln16_fu_1195_p1;
assign edges_5_ce0 = edges_5_ce0_local;
assign edges_6_address0 = zext_ln16_fu_1195_p1;
assign edges_6_ce0 = edges_6_ce0_local;
assign edges_7_address0 = zext_ln16_fu_1195_p1;
assign edges_7_ce0 = edges_7_ce0_local;
assign edges_8_address0 = zext_ln16_fu_1195_p1;
assign edges_8_ce0 = edges_8_ce0_local;
assign edges_9_address0 = zext_ln16_fu_1195_p1;
assign edges_9_ce0 = edges_9_ce0_local;
assign i_2_fu_1179_p2 = (i_fu_262 + 8'd1);
assign icmp_ln39_fu_1173_p2 = ((i_fu_262 == 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_1231_p2 = ((e_1_fu_258 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln44_fu_1522_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_1528_p2 = ((q_in_2_out_i == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = add_ln47_fu_1627_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = tmp_level_1_fu_1601_p2;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_1185_p4 = {{e_1_fu_258[11:5]}};
assign lshr_ln2_fu_1555_p4 = {{select_ln48_fu_1544_p3[7:5]}};
assign q_in_fu_1612_p2 = (trunc_ln39_reg_1887 + 8'd1);
assign queue_10_address0 = zext_ln48_fu_1565_p1;
assign queue_10_ce0 = queue_10_ce0_local;
assign queue_10_d0 = tmp_dst_reg_1836;
assign queue_10_we0 = queue_10_we0_local;
assign queue_11_address0 = zext_ln48_fu_1565_p1;
assign queue_11_ce0 = queue_11_ce0_local;
assign queue_11_d0 = tmp_dst_reg_1836;
assign queue_11_we0 = queue_11_we0_local;
assign queue_12_address0 = zext_ln48_fu_1565_p1;
assign queue_12_ce0 = queue_12_ce0_local;
assign queue_12_d0 = tmp_dst_reg_1836;
assign queue_12_we0 = queue_12_we0_local;
assign queue_13_address0 = zext_ln48_fu_1565_p1;
assign queue_13_ce0 = queue_13_ce0_local;
assign queue_13_d0 = tmp_dst_reg_1836;
assign queue_13_we0 = queue_13_we0_local;
assign queue_14_address0 = zext_ln48_fu_1565_p1;
assign queue_14_ce0 = queue_14_ce0_local;
assign queue_14_d0 = tmp_dst_reg_1836;
assign queue_14_we0 = queue_14_we0_local;
assign queue_15_address0 = zext_ln48_fu_1565_p1;
assign queue_15_ce0 = queue_15_ce0_local;
assign queue_15_d0 = tmp_dst_reg_1836;
assign queue_15_we0 = queue_15_we0_local;
assign queue_16_address0 = zext_ln48_fu_1565_p1;
assign queue_16_ce0 = queue_16_ce0_local;
assign queue_16_d0 = tmp_dst_reg_1836;
assign queue_16_we0 = queue_16_we0_local;
assign queue_17_address0 = zext_ln48_fu_1565_p1;
assign queue_17_ce0 = queue_17_ce0_local;
assign queue_17_d0 = tmp_dst_reg_1836;
assign queue_17_we0 = queue_17_we0_local;
assign queue_18_address0 = zext_ln48_fu_1565_p1;
assign queue_18_ce0 = queue_18_ce0_local;
assign queue_18_d0 = tmp_dst_reg_1836;
assign queue_18_we0 = queue_18_we0_local;
assign queue_19_address0 = zext_ln48_fu_1565_p1;
assign queue_19_ce0 = queue_19_ce0_local;
assign queue_19_d0 = tmp_dst_reg_1836;
assign queue_19_we0 = queue_19_we0_local;
assign queue_1_address0 = zext_ln48_fu_1565_p1;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = tmp_dst_reg_1836;
assign queue_1_we0 = queue_1_we0_local;
assign queue_20_address0 = zext_ln48_fu_1565_p1;
assign queue_20_ce0 = queue_20_ce0_local;
assign queue_20_d0 = tmp_dst_reg_1836;
assign queue_20_we0 = queue_20_we0_local;
assign queue_21_address0 = zext_ln48_fu_1565_p1;
assign queue_21_ce0 = queue_21_ce0_local;
assign queue_21_d0 = tmp_dst_reg_1836;
assign queue_21_we0 = queue_21_we0_local;
assign queue_22_address0 = zext_ln48_fu_1565_p1;
assign queue_22_ce0 = queue_22_ce0_local;
assign queue_22_d0 = tmp_dst_reg_1836;
assign queue_22_we0 = queue_22_we0_local;
assign queue_23_address0 = zext_ln48_fu_1565_p1;
assign queue_23_ce0 = queue_23_ce0_local;
assign queue_23_d0 = tmp_dst_reg_1836;
assign queue_23_we0 = queue_23_we0_local;
assign queue_24_address0 = zext_ln48_fu_1565_p1;
assign queue_24_ce0 = queue_24_ce0_local;
assign queue_24_d0 = tmp_dst_reg_1836;
assign queue_24_we0 = queue_24_we0_local;
assign queue_25_address0 = zext_ln48_fu_1565_p1;
assign queue_25_ce0 = queue_25_ce0_local;
assign queue_25_d0 = tmp_dst_reg_1836;
assign queue_25_we0 = queue_25_we0_local;
assign queue_26_address0 = zext_ln48_fu_1565_p1;
assign queue_26_ce0 = queue_26_ce0_local;
assign queue_26_d0 = tmp_dst_reg_1836;
assign queue_26_we0 = queue_26_we0_local;
assign queue_27_address0 = zext_ln48_fu_1565_p1;
assign queue_27_ce0 = queue_27_ce0_local;
assign queue_27_d0 = tmp_dst_reg_1836;
assign queue_27_we0 = queue_27_we0_local;
assign queue_28_address0 = zext_ln48_fu_1565_p1;
assign queue_28_ce0 = queue_28_ce0_local;
assign queue_28_d0 = tmp_dst_reg_1836;
assign queue_28_we0 = queue_28_we0_local;
assign queue_29_address0 = zext_ln48_fu_1565_p1;
assign queue_29_ce0 = queue_29_ce0_local;
assign queue_29_d0 = tmp_dst_reg_1836;
assign queue_29_we0 = queue_29_we0_local;
assign queue_2_address0 = zext_ln48_fu_1565_p1;
assign queue_2_ce0 = queue_2_ce0_local;
assign queue_2_d0 = tmp_dst_reg_1836;
assign queue_2_we0 = queue_2_we0_local;
assign queue_30_address0 = zext_ln48_fu_1565_p1;
assign queue_30_ce0 = queue_30_ce0_local;
assign queue_30_d0 = tmp_dst_reg_1836;
assign queue_30_we0 = queue_30_we0_local;
assign queue_31_address0 = zext_ln48_fu_1565_p1;
assign queue_31_ce0 = queue_31_ce0_local;
assign queue_31_d0 = tmp_dst_reg_1836;
assign queue_31_we0 = queue_31_we0_local;
assign queue_3_address0 = zext_ln48_fu_1565_p1;
assign queue_3_ce0 = queue_3_ce0_local;
assign queue_3_d0 = tmp_dst_reg_1836;
assign queue_3_we0 = queue_3_we0_local;
assign queue_4_address0 = zext_ln48_fu_1565_p1;
assign queue_4_ce0 = queue_4_ce0_local;
assign queue_4_d0 = tmp_dst_reg_1836;
assign queue_4_we0 = queue_4_we0_local;
assign queue_5_address0 = zext_ln48_fu_1565_p1;
assign queue_5_ce0 = queue_5_ce0_local;
assign queue_5_d0 = tmp_dst_reg_1836;
assign queue_5_we0 = queue_5_we0_local;
assign queue_6_address0 = zext_ln48_fu_1565_p1;
assign queue_6_ce0 = queue_6_ce0_local;
assign queue_6_d0 = tmp_dst_reg_1836;
assign queue_6_we0 = queue_6_we0_local;
assign queue_7_address0 = zext_ln48_fu_1565_p1;
assign queue_7_ce0 = queue_7_ce0_local;
assign queue_7_d0 = tmp_dst_reg_1836;
assign queue_7_we0 = queue_7_we0_local;
assign queue_8_address0 = zext_ln48_fu_1565_p1;
assign queue_8_ce0 = queue_8_ce0_local;
assign queue_8_d0 = tmp_dst_reg_1836;
assign queue_8_we0 = queue_8_we0_local;
assign queue_9_address0 = zext_ln48_fu_1565_p1;
assign queue_9_ce0 = queue_9_ce0_local;
assign queue_9_d0 = tmp_dst_reg_1836;
assign queue_9_we0 = queue_9_we0_local;
assign queue_address0 = zext_ln48_fu_1565_p1;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = tmp_dst_reg_1836;
assign queue_we0 = queue_we0_local;
assign select_ln48_fu_1544_p3 = ((icmp_ln48_reg_1882[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_1538_p2);
assign tmp_dst_fu_1372_p10 = edges_4_q0[7:0];
assign tmp_dst_fu_1372_p12 = edges_5_q0[7:0];
assign tmp_dst_fu_1372_p14 = edges_6_q0[7:0];
assign tmp_dst_fu_1372_p16 = edges_7_q0[7:0];
assign tmp_dst_fu_1372_p18 = edges_8_q0[7:0];
assign tmp_dst_fu_1372_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_1372_p20 = edges_9_q0[7:0];
assign tmp_dst_fu_1372_p22 = edges_10_q0[7:0];
assign tmp_dst_fu_1372_p24 = edges_11_q0[7:0];
assign tmp_dst_fu_1372_p26 = edges_12_q0[7:0];
assign tmp_dst_fu_1372_p28 = edges_13_q0[7:0];
assign tmp_dst_fu_1372_p30 = edges_14_q0[7:0];
assign tmp_dst_fu_1372_p32 = edges_15_q0[7:0];
assign tmp_dst_fu_1372_p34 = edges_16_q0[7:0];
assign tmp_dst_fu_1372_p36 = edges_17_q0[7:0];
assign tmp_dst_fu_1372_p38 = edges_18_q0[7:0];
assign tmp_dst_fu_1372_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_1372_p40 = edges_19_q0[7:0];
assign tmp_dst_fu_1372_p42 = edges_20_q0[7:0];
assign tmp_dst_fu_1372_p44 = edges_21_q0[7:0];
assign tmp_dst_fu_1372_p46 = edges_22_q0[7:0];
assign tmp_dst_fu_1372_p48 = edges_23_q0[7:0];
assign tmp_dst_fu_1372_p50 = edges_24_q0[7:0];
assign tmp_dst_fu_1372_p52 = edges_25_q0[7:0];
assign tmp_dst_fu_1372_p54 = edges_26_q0[7:0];
assign tmp_dst_fu_1372_p56 = edges_27_q0[7:0];
assign tmp_dst_fu_1372_p58 = edges_28_q0[7:0];
assign tmp_dst_fu_1372_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_1372_p60 = edges_29_q0[7:0];
assign tmp_dst_fu_1372_p62 = edges_30_q0[7:0];
assign tmp_dst_fu_1372_p64 = edges_31_q0[7:0];
assign tmp_dst_fu_1372_p65 = 'bx;
assign tmp_dst_fu_1372_p66 = e_3_reg_1657[4:0];
assign tmp_dst_fu_1372_p8 = edges_3_q0[7:0];
assign tmp_level_1_fu_1601_p2 = (level_load_reg_1892 + 8'd1);
assign trunc_ln39_fu_1534_p1 = q_in_2_out_i[7:0];
assign trunc_ln48_fu_1551_p1 = select_ln48_fu_1544_p3[4:0];
assign zext_ln16_1_fu_1617_p1 = q_in_fu_1612_p2;
assign zext_ln16_fu_1195_p1 = lshr_ln16_1_fu_1185_p4;
assign zext_ln18_cast_fu_1153_p1 = zext_ln18;
assign zext_ln41_fu_1518_p1 = tmp_dst_reg_1836;
assign zext_ln47_fu_1607_p1 = tmp_level_1_fu_1601_p2;
assign zext_ln48_fu_1565_p1 = lshr_ln2_fu_1555_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_1652[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
