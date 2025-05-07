module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_44_reload,B_38_reload,C_52_reload,D_44_reload,E_38_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_4_address0,W_4_ce0,W_4_q0,W_4_address1,W_4_ce1,W_4_q1,W_8_address0,W_8_ce0,W_8_q0,W_8_address1,W_8_ce1,W_8_q1,W_12_address0,W_12_ce0,W_12_q0,W_12_address1,W_12_ce1,W_12_q1,W_16_address0,W_16_ce0,W_16_q0,W_16_address1,W_16_ce1,W_16_q1,W_20_address0,W_20_ce0,W_20_q0,W_20_address1,W_20_ce1,W_20_q1,W_24_address0,W_24_ce0,W_24_q0,W_24_address1,W_24_ce1,W_24_q1,W_28_address0,W_28_ce0,W_28_q0,W_28_address1,W_28_ce1,W_28_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_5_address0,W_5_ce0,W_5_q0,W_5_address1,W_5_ce1,W_5_q1,W_9_address0,W_9_ce0,W_9_q0,W_9_address1,W_9_ce1,W_9_q1,W_13_address0,W_13_ce0,W_13_q0,W_13_address1,W_13_ce1,W_13_q1,W_17_address0,W_17_ce0,W_17_q0,W_17_address1,W_17_ce1,W_17_q1,W_21_address0,W_21_ce0,W_21_q0,W_21_address1,W_21_ce1,W_21_q1,W_25_address0,W_25_ce0,W_25_q0,W_25_address1,W_25_ce1,W_25_q1,W_29_address0,W_29_ce0,W_29_q0,W_29_address1,W_29_ce1,W_29_q1,W_2_address0,W_2_ce0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_6_address0,W_6_ce0,W_6_q0,W_6_address1,W_6_ce1,W_6_q1,W_10_address0,W_10_ce0,W_10_q0,W_10_address1,W_10_ce1,W_10_q1,W_14_address0,W_14_ce0,W_14_q0,W_14_address1,W_14_ce1,W_14_q1,W_18_address0,W_18_ce0,W_18_q0,W_18_address1,W_18_ce1,W_18_q1,W_22_address0,W_22_ce0,W_22_q0,W_22_address1,W_22_ce1,W_22_q1,W_26_address0,W_26_ce0,W_26_q0,W_26_address1,W_26_ce1,W_26_q1,W_30_address0,W_30_ce0,W_30_q0,W_30_address1,W_30_ce1,W_30_q1,W_3_address0,W_3_ce0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,W_7_address0,W_7_ce0,W_7_q0,W_7_address1,W_7_ce1,W_7_q1,W_11_address0,W_11_ce0,W_11_q0,W_11_address1,W_11_ce1,W_11_q1,W_15_address0,W_15_ce0,W_15_q0,W_15_address1,W_15_ce1,W_15_q1,W_19_address0,W_19_ce0,W_19_q0,W_19_address1,W_19_ce1,W_19_q1,W_23_address0,W_23_ce0,W_23_q0,W_23_address1,W_23_ce1,W_23_q1,W_27_address0,W_27_ce0,W_27_q0,W_27_address1,W_27_ce1,W_27_q1,W_31_address0,W_31_ce0,W_31_q0,W_31_address1,W_31_ce1,W_31_q1,E_14_out,E_14_out_ap_vld,B_14_out,B_14_out_ap_vld,D_19_out,D_19_out_ap_vld,A_19_out,A_19_out_ap_vld,C_16_out,C_16_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_44_reload;
input  [31:0] B_38_reload;
input  [31:0] C_52_reload;
input  [31:0] D_44_reload;
input  [31:0] E_38_reload;
output  [1:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [1:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [1:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [1:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [1:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [1:0] W_8_address1;
output   W_8_ce1;
input  [31:0] W_8_q1;
output  [1:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [1:0] W_12_address1;
output   W_12_ce1;
input  [31:0] W_12_q1;
output  [1:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [1:0] W_16_address1;
output   W_16_ce1;
input  [31:0] W_16_q1;
output  [1:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [1:0] W_20_address1;
output   W_20_ce1;
input  [31:0] W_20_q1;
output  [1:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [1:0] W_24_address1;
output   W_24_ce1;
input  [31:0] W_24_q1;
output  [1:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [1:0] W_28_address1;
output   W_28_ce1;
input  [31:0] W_28_q1;
output  [1:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [1:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [1:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [1:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [1:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [1:0] W_9_address1;
output   W_9_ce1;
input  [31:0] W_9_q1;
output  [1:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [1:0] W_13_address1;
output   W_13_ce1;
input  [31:0] W_13_q1;
output  [1:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [1:0] W_17_address1;
output   W_17_ce1;
input  [31:0] W_17_q1;
output  [1:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [1:0] W_21_address1;
output   W_21_ce1;
input  [31:0] W_21_q1;
output  [1:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [1:0] W_25_address1;
output   W_25_ce1;
input  [31:0] W_25_q1;
output  [1:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [1:0] W_29_address1;
output   W_29_ce1;
input  [31:0] W_29_q1;
output  [1:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [1:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [1:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [1:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [1:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [1:0] W_10_address1;
output   W_10_ce1;
input  [31:0] W_10_q1;
output  [1:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [1:0] W_14_address1;
output   W_14_ce1;
input  [31:0] W_14_q1;
output  [1:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [1:0] W_18_address1;
output   W_18_ce1;
input  [31:0] W_18_q1;
output  [1:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [1:0] W_22_address1;
output   W_22_ce1;
input  [31:0] W_22_q1;
output  [1:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [1:0] W_26_address1;
output   W_26_ce1;
input  [31:0] W_26_q1;
output  [1:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [1:0] W_30_address1;
output   W_30_ce1;
input  [31:0] W_30_q1;
output  [1:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [1:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [1:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [1:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [1:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [1:0] W_11_address1;
output   W_11_ce1;
input  [31:0] W_11_q1;
output  [1:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [1:0] W_15_address1;
output   W_15_ce1;
input  [31:0] W_15_q1;
output  [1:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [1:0] W_19_address1;
output   W_19_ce1;
input  [31:0] W_19_q1;
output  [1:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [1:0] W_23_address1;
output   W_23_ce1;
input  [31:0] W_23_q1;
output  [1:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [1:0] W_27_address1;
output   W_27_ce1;
input  [31:0] W_27_q1;
output  [1:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
output  [1:0] W_31_address1;
output   W_31_ce1;
input  [31:0] W_31_q1;
output  [31:0] E_14_out;
output   E_14_out_ap_vld;
output  [31:0] B_14_out;
output   B_14_out_ap_vld;
output  [31:0] D_19_out;
output   D_19_out_ap_vld;
output  [31:0] A_19_out;
output   A_19_out_ap_vld;
output  [31:0] C_16_out;
output   C_16_out_ap_vld;
reg ap_idle;
reg E_14_out_ap_vld;
reg B_14_out_ap_vld;
reg D_19_out_ap_vld;
reg A_19_out_ap_vld;
reg C_16_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln120_reg_2409;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_reg_2232;
wire   [4:0] trunc_ln9_fu_1084_p1;
reg   [4:0] trunc_ln9_reg_2237;
wire   [0:0] icmp_ln120_fu_1138_p2;
reg   [31:0] D_reg_2573;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_2578;
wire   [31:0] add_ln122_1_fu_1305_p2;
reg   [31:0] add_ln122_1_reg_2584;
wire   [31:0] add_ln122_fu_1311_p2;
reg   [31:0] add_ln122_reg_2589;
wire   [1:0] trunc_ln122_1_fu_1317_p1;
reg   [1:0] trunc_ln122_1_reg_2594;
reg   [29:0] lshr_ln122_1_reg_2599;
wire   [31:0] tmp_16_fu_1331_p19;
reg   [31:0] tmp_16_reg_2604;
wire   [31:0] tmp_17_fu_1370_p19;
reg   [31:0] tmp_17_reg_2609;
wire   [31:0] tmp_18_fu_1409_p19;
reg   [31:0] tmp_18_reg_2614;
wire   [31:0] tmp_19_fu_1448_p19;
reg   [31:0] tmp_19_reg_2619;
wire   [31:0] tmp_20_fu_1487_p19;
reg   [31:0] tmp_20_reg_2624;
wire   [31:0] tmp_21_fu_1526_p19;
reg   [31:0] tmp_21_reg_2629;
wire   [31:0] tmp_22_fu_1565_p19;
reg   [31:0] tmp_22_reg_2634;
wire   [31:0] temp_fu_1634_p2;
reg   [31:0] temp_reg_2639;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_19_fu_1639_p3;
reg   [31:0] C_19_reg_2644;
wire   [31:0] add_ln122_5_fu_1678_p2;
reg   [31:0] add_ln122_5_reg_2650;
wire   [31:0] add_ln122_4_fu_1683_p2;
reg   [31:0] add_ln122_4_reg_2655;
wire   [1:0] trunc_ln122_3_fu_1689_p1;
reg   [1:0] trunc_ln122_3_reg_2660;
reg   [29:0] lshr_ln122_3_reg_2665;
wire   [1:0] trunc_ln122_5_fu_1703_p1;
reg   [1:0] trunc_ln122_5_reg_2670;
reg   [29:0] lshr_ln122_5_reg_2675;
wire   [31:0] temp_15_fu_1721_p2;
reg   [31:0] temp_15_reg_2680;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_20_fu_1726_p3;
reg   [31:0] C_20_reg_2685;
wire   [31:0] add_ln122_9_fu_1764_p2;
reg   [31:0] add_ln122_9_reg_2692;
wire   [31:0] add_ln122_8_fu_1769_p2;
reg   [31:0] add_ln122_8_reg_2697;
wire   [1:0] trunc_ln122_7_fu_1775_p1;
reg   [1:0] trunc_ln122_7_reg_2702;
reg   [29:0] lshr_ln122_7_reg_2707;
wire   [31:0] temp_16_fu_1793_p2;
reg   [31:0] temp_16_reg_2712;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] C_21_fu_1798_p3;
reg   [31:0] C_21_reg_2720;
wire   [31:0] add_ln122_13_fu_1836_p2;
reg   [31:0] add_ln122_13_reg_2727;
wire   [31:0] add_ln122_12_fu_1841_p2;
reg   [31:0] add_ln122_12_reg_2732;
wire   [31:0] temp_17_fu_1851_p2;
reg   [31:0] temp_17_reg_2737;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_22_fu_1857_p3;
reg   [31:0] C_22_reg_2742;
wire   [31:0] add_ln122_17_fu_1896_p2;
reg   [31:0] add_ln122_17_reg_2748;
wire   [31:0] add_ln122_16_fu_1901_p2;
reg   [31:0] add_ln122_16_reg_2753;
wire   [31:0] C_24_fu_1921_p3;
reg   [31:0] C_24_reg_2758;
wire   [31:0] temp_18_fu_1938_p2;
reg   [31:0] temp_18_reg_2764;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] C_23_fu_1955_p3;
reg   [31:0] C_23_reg_2769;
wire   [31:0] add_ln122_21_fu_1995_p2;
reg   [31:0] add_ln122_21_reg_2775;
wire   [31:0] add_ln122_20_fu_2000_p2;
reg   [31:0] add_ln122_20_reg_2780;
wire   [31:0] C_25_fu_2020_p3;
reg   [31:0] C_25_reg_2785;
wire   [31:0] add_ln122_24_fu_2073_p2;
reg   [31:0] add_ln122_24_reg_2790;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] xor_ln122_15_fu_2084_p2;
reg   [31:0] xor_ln122_15_reg_2795;
wire   [31:0] temp_20_fu_2126_p2;
reg   [31:0] temp_20_reg_2800;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln122_14_fu_2131_p1;
reg   [26:0] trunc_ln122_14_reg_2805;
reg   [4:0] lshr_ln122_13_reg_2810;
wire   [31:0] add_ln122_30_fu_2166_p2;
reg   [31:0] add_ln122_30_reg_2815;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_1096_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_1152_p1;
wire   [63:0] zext_ln100_2_fu_1178_p1;
wire   [63:0] zext_ln100_3_fu_1204_p1;
wire   [63:0] zext_ln100_4_fu_1230_p1;
reg   [31:0] E_10_fu_162;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] B_10_fu_166;
reg   [31:0] E_fu_170;
reg   [31:0] B_fu_174;
wire   [31:0] temp_21_fu_2180_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_23_fu_178;
wire   [31:0] C_18_fu_2103_p3;
reg   [5:0] i_2_fu_182;
wire   [5:0] add_ln120_4_fu_2145_p2;
reg   [5:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage5_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_4_ce1_local;
reg    W_4_ce0_local;
reg    W_8_ce1_local;
reg    W_8_ce0_local;
reg    W_12_ce1_local;
reg    W_12_ce0_local;
reg    W_16_ce1_local;
reg    W_16_ce0_local;
reg    W_20_ce1_local;
reg    W_20_ce0_local;
reg    W_24_ce1_local;
reg    W_24_ce0_local;
reg    W_28_ce1_local;
reg    W_28_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg    W_5_ce1_local;
reg    W_5_ce0_local;
reg    W_9_ce1_local;
reg    W_9_ce0_local;
reg    W_13_ce1_local;
reg    W_13_ce0_local;
reg    W_17_ce1_local;
reg    W_17_ce0_local;
reg    W_21_ce1_local;
reg    W_21_ce0_local;
reg    W_25_ce1_local;
reg    W_25_ce0_local;
reg    W_29_ce1_local;
reg    W_29_ce0_local;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg    W_6_ce1_local;
reg    W_6_ce0_local;
reg    W_10_ce1_local;
reg    W_10_ce0_local;
reg    W_14_ce1_local;
reg    W_14_ce0_local;
reg    W_18_ce1_local;
reg    W_18_ce0_local;
reg    W_22_ce1_local;
reg    W_22_ce0_local;
reg    W_26_ce1_local;
reg    W_26_ce0_local;
reg    W_30_ce1_local;
reg    W_30_ce0_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
reg    W_7_ce1_local;
reg    W_7_ce0_local;
reg    W_11_ce1_local;
reg    W_11_ce0_local;
reg    W_15_ce1_local;
reg    W_15_ce0_local;
reg    W_19_ce1_local;
reg    W_19_ce0_local;
reg    W_23_ce1_local;
reg    W_23_ce0_local;
reg    W_27_ce1_local;
reg    W_27_ce0_local;
reg    W_31_ce1_local;
reg    W_31_ce0_local;
wire   [0:0] tmp_fu_1088_p3;
wire   [5:0] add_ln120_fu_1132_p2;
wire   [0:0] tmp_1_fu_1144_p3;
wire   [5:0] add_ln120_1_fu_1164_p2;
wire   [0:0] tmp_2_fu_1170_p3;
wire   [5:0] add_ln120_2_fu_1190_p2;
wire   [0:0] tmp_3_fu_1196_p3;
wire   [5:0] add_ln120_3_fu_1216_p2;
wire   [0:0] tmp_4_fu_1222_p3;
wire   [31:0] tmp_s_fu_1254_p17;
wire   [31:0] xor_ln122_fu_1293_p2;
wire   [31:0] tmp_s_fu_1254_p19;
wire   [31:0] xor_ln122_1_fu_1299_p2;
wire   [31:0] tmp_16_fu_1331_p17;
wire   [31:0] tmp_17_fu_1370_p17;
wire   [31:0] tmp_18_fu_1409_p17;
wire   [31:0] tmp_19_fu_1448_p17;
wire   [31:0] tmp_20_fu_1487_p17;
wire   [31:0] tmp_21_fu_1526_p17;
wire   [31:0] tmp_22_fu_1565_p17;
wire   [26:0] trunc_ln122_fu_1607_p1;
wire   [4:0] lshr_ln4_fu_1611_p4;
wire   [31:0] or_ln1_fu_1621_p3;
wire   [31:0] add_ln122_2_fu_1629_p2;
wire   [31:0] xor_ln122_2_fu_1659_p2;
wire   [26:0] trunc_ln122_2_fu_1645_p1;
wire   [4:0] lshr_ln122_2_fu_1649_p4;
wire   [31:0] or_ln122_2_fu_1670_p3;
wire   [31:0] xor_ln122_3_fu_1665_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln122_6_fu_1717_p2;
wire   [31:0] xor_ln122_4_fu_1746_p2;
wire   [26:0] trunc_ln122_4_fu_1732_p1;
wire   [4:0] lshr_ln122_4_fu_1736_p4;
wire   [31:0] or_ln122_4_fu_1756_p3;
wire   [31:0] xor_ln122_5_fu_1751_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln122_10_fu_1789_p2;
wire   [31:0] xor_ln122_6_fu_1818_p2;
wire   [26:0] trunc_ln122_6_fu_1804_p1;
wire   [4:0] lshr_ln122_6_fu_1808_p4;
wire   [31:0] or_ln122_6_fu_1828_p3;
wire   [31:0] xor_ln122_7_fu_1822_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln122_14_fu_1847_p2;
wire   [31:0] xor_ln122_8_fu_1878_p2;
wire   [26:0] trunc_ln122_8_fu_1864_p1;
wire   [4:0] lshr_ln122_8_fu_1868_p4;
wire   [31:0] or_ln122_8_fu_1888_p3;
wire   [31:0] xor_ln122_9_fu_1882_p2;
wire   [1:0] trunc_ln122_11_fu_1907_p1;
wire   [29:0] lshr_ln122_10_fu_1911_p4;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_18_fu_1934_p2;
wire   [1:0] trunc_ln122_9_fu_1943_p1;
wire   [29:0] lshr_ln122_9_fu_1946_p4;
wire   [31:0] xor_ln122_10_fu_1977_p2;
wire   [26:0] trunc_ln122_10_fu_1963_p1;
wire   [4:0] lshr_ln122_s_fu_1967_p4;
wire   [31:0] or_ln122_s_fu_1987_p3;
wire   [31:0] xor_ln122_11_fu_1981_p2;
wire   [1:0] trunc_ln122_13_fu_2006_p1;
wire   [29:0] lshr_ln122_12_fu_2010_p4;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln122_22_fu_2033_p2;
wire   [31:0] temp_19_fu_2037_p2;
wire   [31:0] xor_ln122_12_fu_2056_p2;
wire   [26:0] trunc_ln122_12_fu_2042_p1;
wire   [4:0] lshr_ln122_11_fu_2046_p4;
wire   [31:0] or_ln122_1_fu_2065_p3;
wire   [31:0] xor_ln122_13_fu_2060_p2;
wire   [31:0] xor_ln122_14_fu_2079_p2;
wire   [1:0] trunc_ln122_15_fu_2089_p1;
wire   [29:0] lshr_ln122_14_fu_2093_p4;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln122_25_fu_2116_p2;
wire   [31:0] add_ln122_26_fu_2121_p2;
wire   [31:0] or_ln122_3_fu_2155_p3;
wire   [31:0] add_ln122_29_fu_2161_p2;
wire   [31:0] add_ln122_28_fu_2176_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_1254_p1;
wire   [4:0] tmp_s_fu_1254_p3;
wire   [4:0] tmp_s_fu_1254_p5;
wire   [4:0] tmp_s_fu_1254_p7;
wire  signed [4:0] tmp_s_fu_1254_p9;
wire  signed [4:0] tmp_s_fu_1254_p11;
wire  signed [4:0] tmp_s_fu_1254_p13;
wire  signed [4:0] tmp_s_fu_1254_p15;
wire   [4:0] tmp_16_fu_1331_p1;
wire   [4:0] tmp_16_fu_1331_p3;
wire   [4:0] tmp_16_fu_1331_p5;
wire   [4:0] tmp_16_fu_1331_p7;
wire  signed [4:0] tmp_16_fu_1331_p9;
wire  signed [4:0] tmp_16_fu_1331_p11;
wire  signed [4:0] tmp_16_fu_1331_p13;
wire  signed [4:0] tmp_16_fu_1331_p15;
wire   [4:0] tmp_17_fu_1370_p1;
wire   [4:0] tmp_17_fu_1370_p3;
wire   [4:0] tmp_17_fu_1370_p5;
wire   [4:0] tmp_17_fu_1370_p7;
wire  signed [4:0] tmp_17_fu_1370_p9;
wire  signed [4:0] tmp_17_fu_1370_p11;
wire  signed [4:0] tmp_17_fu_1370_p13;
wire  signed [4:0] tmp_17_fu_1370_p15;
wire   [4:0] tmp_18_fu_1409_p1;
wire   [4:0] tmp_18_fu_1409_p3;
wire   [4:0] tmp_18_fu_1409_p5;
wire   [4:0] tmp_18_fu_1409_p7;
wire  signed [4:0] tmp_18_fu_1409_p9;
wire  signed [4:0] tmp_18_fu_1409_p11;
wire  signed [4:0] tmp_18_fu_1409_p13;
wire  signed [4:0] tmp_18_fu_1409_p15;
wire  signed [4:0] tmp_19_fu_1448_p1;
wire   [4:0] tmp_19_fu_1448_p3;
wire   [4:0] tmp_19_fu_1448_p5;
wire   [4:0] tmp_19_fu_1448_p7;
wire   [4:0] tmp_19_fu_1448_p9;
wire  signed [4:0] tmp_19_fu_1448_p11;
wire  signed [4:0] tmp_19_fu_1448_p13;
wire  signed [4:0] tmp_19_fu_1448_p15;
wire  signed [4:0] tmp_20_fu_1487_p1;
wire   [4:0] tmp_20_fu_1487_p3;
wire   [4:0] tmp_20_fu_1487_p5;
wire   [4:0] tmp_20_fu_1487_p7;
wire   [4:0] tmp_20_fu_1487_p9;
wire  signed [4:0] tmp_20_fu_1487_p11;
wire  signed [4:0] tmp_20_fu_1487_p13;
wire  signed [4:0] tmp_20_fu_1487_p15;
wire  signed [4:0] tmp_21_fu_1526_p1;
wire   [4:0] tmp_21_fu_1526_p3;
wire   [4:0] tmp_21_fu_1526_p5;
wire   [4:0] tmp_21_fu_1526_p7;
wire   [4:0] tmp_21_fu_1526_p9;
wire  signed [4:0] tmp_21_fu_1526_p11;
wire  signed [4:0] tmp_21_fu_1526_p13;
wire  signed [4:0] tmp_21_fu_1526_p15;
wire  signed [4:0] tmp_22_fu_1565_p1;
wire   [4:0] tmp_22_fu_1565_p3;
wire   [4:0] tmp_22_fu_1565_p5;
wire   [4:0] tmp_22_fu_1565_p7;
wire   [4:0] tmp_22_fu_1565_p9;
wire  signed [4:0] tmp_22_fu_1565_p11;
wire  signed [4:0] tmp_22_fu_1565_p13;
wire  signed [4:0] tmp_22_fu_1565_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_10_fu_162 = 32'd0;
#0 B_10_fu_166 = 32'd0;
#0 E_fu_170 = 32'd0;
#0 B_fu_174 = 32'd0;
#0 E_23_fu_178 = 32'd0;
#0 i_2_fu_182 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U99(.din0(W_q1),.din1(W_4_q1),.din2(W_8_q1),.din3(W_12_q1),.din4(W_16_q1),.din5(W_20_q1),.din6(W_24_q1),.din7(W_28_q1),.def(tmp_s_fu_1254_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_s_fu_1254_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U100(.din0(W_1_q1),.din1(W_5_q1),.din2(W_9_q1),.din3(W_13_q1),.din4(W_17_q1),.din5(W_21_q1),.din6(W_25_q1),.din7(W_29_q1),.def(tmp_16_fu_1331_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_16_fu_1331_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U101(.din0(W_2_q1),.din1(W_6_q1),.din2(W_10_q1),.din3(W_14_q1),.din4(W_18_q1),.din5(W_22_q1),.din6(W_26_q1),.din7(W_30_q1),.def(tmp_17_fu_1370_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_17_fu_1370_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U102(.din0(W_3_q1),.din1(W_7_q1),.din2(W_11_q1),.din3(W_15_q1),.din4(W_19_q1),.din5(W_23_q1),.din6(W_27_q1),.din7(W_31_q1),.def(tmp_18_fu_1409_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_18_fu_1409_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U103(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.din4(W_16_q0),.din5(W_20_q0),.din6(W_24_q0),.din7(W_28_q0),.def(tmp_19_fu_1448_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_19_fu_1448_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U104(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.din4(W_17_q0),.din5(W_21_q0),.din6(W_25_q0),.din7(W_29_q0),.def(tmp_20_fu_1487_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_20_fu_1487_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U105(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.din4(W_18_q0),.din5(W_22_q0),.din6(W_26_q0),.din7(W_30_q0),.def(tmp_21_fu_1526_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_21_fu_1526_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U106(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.din4(W_19_q0),.din5(W_23_q0),.din6(W_27_q0),.din7(W_31_q0),.def(tmp_22_fu_1565_p17),.sel(trunc_ln9_reg_2237),.dout(tmp_22_fu_1565_p19));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_10_fu_166 <= B_38_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_10_fu_166 <= temp_20_reg_2800;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_174 <= A_44_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_fu_174 <= temp_21_fu_2180_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_10_fu_162 <= E_38_reload;
    end else if (((icmp_ln120_reg_2409 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_10_fu_162 <= C_24_fu_1921_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_23_fu_178 <= C_52_reload;
    end else if (((icmp_ln120_reg_2409 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_23_fu_178 <= C_18_fu_2103_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_170 <= D_44_reload;
    end else if (((icmp_ln120_reg_2409 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        E_fu_170 <= C_25_fu_2020_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_182 <= 6'd20;
    end else if (((icmp_ln120_reg_2409 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        i_2_fu_182 <= add_ln120_4_fu_2145_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_19_reg_2644 <= C_19_fu_1639_p3;
        add_ln122_4_reg_2655 <= add_ln122_4_fu_1683_p2;
        add_ln122_5_reg_2650 <= add_ln122_5_fu_1678_p2;
        lshr_ln122_3_reg_2665 <= {{B_fu_174[31:2]}};
        lshr_ln122_5_reg_2675 <= {{temp_fu_1634_p2[31:2]}};
        temp_reg_2639 <= temp_fu_1634_p2;
        trunc_ln122_3_reg_2660 <= trunc_ln122_3_fu_1689_p1;
        trunc_ln122_5_reg_2670 <= trunc_ln122_5_fu_1703_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_20_reg_2685 <= C_20_fu_1726_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_21_reg_2720 <= C_21_fu_1798_p3;
        temp_16_reg_2712 <= temp_16_fu_1793_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_22_reg_2742 <= C_22_fu_1857_p3;
        temp_17_reg_2737 <= temp_17_fu_1851_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        C_23_reg_2769 <= C_23_fu_1955_p3;
        C_25_reg_2785 <= C_25_fu_2020_p3;
        add_ln122_20_reg_2780 <= add_ln122_20_fu_2000_p2;
        add_ln122_21_reg_2775 <= add_ln122_21_fu_1995_p2;
        temp_18_reg_2764 <= temp_18_fu_1938_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_24_reg_2758 <= C_24_fu_1921_p3;
        add_ln122_16_reg_2753 <= add_ln122_16_fu_1901_p2;
        add_ln122_17_reg_2748 <= add_ln122_17_fu_1896_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_reg_2578 <= E_23_fu_178;
        D_reg_2573 <= E_fu_170;
        add_ln122_1_reg_2584 <= add_ln122_1_fu_1305_p2;
        add_ln122_reg_2589 <= add_ln122_fu_1311_p2;
        lshr_ln122_1_reg_2599 <= {{B_10_fu_166[31:2]}};
        tmp_16_reg_2604 <= tmp_16_fu_1331_p19;
        tmp_17_reg_2609 <= tmp_17_fu_1370_p19;
        tmp_18_reg_2614 <= tmp_18_fu_1409_p19;
        tmp_19_reg_2619 <= tmp_19_fu_1448_p19;
        tmp_20_reg_2624 <= tmp_20_fu_1487_p19;
        tmp_21_reg_2629 <= tmp_21_fu_1526_p19;
        tmp_22_reg_2634 <= tmp_22_fu_1565_p19;
        trunc_ln122_1_reg_2594 <= trunc_ln122_1_fu_1317_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln122_12_reg_2732 <= add_ln122_12_fu_1841_p2;
        add_ln122_13_reg_2727 <= add_ln122_13_fu_1836_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_24_reg_2790 <= add_ln122_24_fu_2073_p2;
        xor_ln122_15_reg_2795 <= xor_ln122_15_fu_2084_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_30_reg_2815 <= add_ln122_30_fu_2166_p2;
        i_reg_2232 <= ap_sig_allocacmp_i;
        icmp_ln120_reg_2409 <= icmp_ln120_fu_1138_p2;
        trunc_ln9_reg_2237 <= trunc_ln9_fu_1084_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln122_8_reg_2697 <= add_ln122_8_fu_1769_p2;
        add_ln122_9_reg_2692 <= add_ln122_9_fu_1764_p2;
        lshr_ln122_7_reg_2707 <= {{temp_15_fu_1721_p2[31:2]}};
        temp_15_reg_2680 <= temp_15_fu_1721_p2;
        trunc_ln122_7_reg_2702 <= trunc_ln122_7_fu_1775_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln122_13_reg_2810 <= {{temp_20_fu_2126_p2[31:27]}};
        temp_20_reg_2800 <= temp_20_fu_2126_p2;
        trunc_ln122_14_reg_2805 <= trunc_ln122_14_fu_2131_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2409 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_19_out_ap_vld = 1'b1;
    end else begin
        A_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2409 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_14_out_ap_vld = 1'b1;
    end else begin
        B_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2409 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_16_out_ap_vld = 1'b1;
    end else begin
        C_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2409 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_19_out_ap_vld = 1'b1;
    end else begin
        D_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2409 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_14_out_ap_vld = 1'b1;
    end else begin
        E_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce1_local = 1'b1;
    end else begin
        W_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce1_local = 1'b1;
    end else begin
        W_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce1_local = 1'b1;
    end else begin
        W_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce1_local = 1'b1;
    end else begin
        W_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce1_local = 1'b1;
    end else begin
        W_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce1_local = 1'b1;
    end else begin
        W_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_16_ce0_local = 1'b1;
    end else begin
        W_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_16_ce1_local = 1'b1;
    end else begin
        W_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_17_ce0_local = 1'b1;
    end else begin
        W_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_17_ce1_local = 1'b1;
    end else begin
        W_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_18_ce0_local = 1'b1;
    end else begin
        W_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_18_ce1_local = 1'b1;
    end else begin
        W_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_19_ce0_local = 1'b1;
    end else begin
        W_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_19_ce1_local = 1'b1;
    end else begin
        W_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_20_ce0_local = 1'b1;
    end else begin
        W_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_20_ce1_local = 1'b1;
    end else begin
        W_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_21_ce0_local = 1'b1;
    end else begin
        W_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_21_ce1_local = 1'b1;
    end else begin
        W_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_22_ce0_local = 1'b1;
    end else begin
        W_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_22_ce1_local = 1'b1;
    end else begin
        W_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_23_ce0_local = 1'b1;
    end else begin
        W_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_23_ce1_local = 1'b1;
    end else begin
        W_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_24_ce0_local = 1'b1;
    end else begin
        W_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_24_ce1_local = 1'b1;
    end else begin
        W_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_25_ce0_local = 1'b1;
    end else begin
        W_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_25_ce1_local = 1'b1;
    end else begin
        W_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_26_ce0_local = 1'b1;
    end else begin
        W_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_26_ce1_local = 1'b1;
    end else begin
        W_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_27_ce0_local = 1'b1;
    end else begin
        W_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_27_ce1_local = 1'b1;
    end else begin
        W_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_28_ce0_local = 1'b1;
    end else begin
        W_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_28_ce1_local = 1'b1;
    end else begin
        W_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_29_ce0_local = 1'b1;
    end else begin
        W_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_29_ce1_local = 1'b1;
    end else begin
        W_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_30_ce0_local = 1'b1;
    end else begin
        W_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_30_ce1_local = 1'b1;
    end else begin
        W_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_31_ce0_local = 1'b1;
    end else begin
        W_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_31_ce1_local = 1'b1;
    end else begin
        W_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce1_local = 1'b1;
    end else begin
        W_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce1_local = 1'b1;
    end else begin
        W_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_2409 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_182;
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
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_19_out = temp_17_fu_1851_p2;
assign B_14_out = temp_16_reg_2712;
assign C_16_out = C_22_fu_1857_p3;
assign C_18_fu_2103_p3 = {{trunc_ln122_15_fu_2089_p1}, {lshr_ln122_14_fu_2093_p4}};
assign C_19_fu_1639_p3 = {{trunc_ln122_1_reg_2594}, {lshr_ln122_1_reg_2599}};
assign C_20_fu_1726_p3 = {{trunc_ln122_3_reg_2660}, {lshr_ln122_3_reg_2665}};
assign C_21_fu_1798_p3 = {{trunc_ln122_5_reg_2670}, {lshr_ln122_5_reg_2675}};
assign C_22_fu_1857_p3 = {{trunc_ln122_7_reg_2702}, {lshr_ln122_7_reg_2707}};
assign C_23_fu_1955_p3 = {{trunc_ln122_9_fu_1943_p1}, {lshr_ln122_9_fu_1946_p4}};
assign C_24_fu_1921_p3 = {{trunc_ln122_11_fu_1907_p1}, {lshr_ln122_10_fu_1911_p4}};
assign C_25_fu_2020_p3 = {{trunc_ln122_13_fu_2006_p1}, {lshr_ln122_12_fu_2010_p4}};
assign D_19_out = C_21_reg_2720;
assign E_14_out = C_20_reg_2685;
assign W_10_address0 = zext_ln100_3_fu_1204_p1;
assign W_10_address1 = zext_ln100_fu_1096_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_ce1 = W_10_ce1_local;
assign W_11_address0 = zext_ln100_4_fu_1230_p1;
assign W_11_address1 = zext_ln100_fu_1096_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_ce1 = W_11_ce1_local;
assign W_12_address0 = zext_ln100_1_fu_1152_p1;
assign W_12_address1 = zext_ln100_fu_1096_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_ce1 = W_12_ce1_local;
assign W_13_address0 = zext_ln100_2_fu_1178_p1;
assign W_13_address1 = zext_ln100_fu_1096_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_ce1 = W_13_ce1_local;
assign W_14_address0 = zext_ln100_3_fu_1204_p1;
assign W_14_address1 = zext_ln100_fu_1096_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_ce1 = W_14_ce1_local;
assign W_15_address0 = zext_ln100_4_fu_1230_p1;
assign W_15_address1 = zext_ln100_fu_1096_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_ce1 = W_15_ce1_local;
assign W_16_address0 = zext_ln100_1_fu_1152_p1;
assign W_16_address1 = zext_ln100_fu_1096_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_16_ce1 = W_16_ce1_local;
assign W_17_address0 = zext_ln100_2_fu_1178_p1;
assign W_17_address1 = zext_ln100_fu_1096_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_17_ce1 = W_17_ce1_local;
assign W_18_address0 = zext_ln100_3_fu_1204_p1;
assign W_18_address1 = zext_ln100_fu_1096_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_18_ce1 = W_18_ce1_local;
assign W_19_address0 = zext_ln100_4_fu_1230_p1;
assign W_19_address1 = zext_ln100_fu_1096_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_19_ce1 = W_19_ce1_local;
assign W_1_address0 = zext_ln100_2_fu_1178_p1;
assign W_1_address1 = zext_ln100_fu_1096_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_20_address0 = zext_ln100_1_fu_1152_p1;
assign W_20_address1 = zext_ln100_fu_1096_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_20_ce1 = W_20_ce1_local;
assign W_21_address0 = zext_ln100_2_fu_1178_p1;
assign W_21_address1 = zext_ln100_fu_1096_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_21_ce1 = W_21_ce1_local;
assign W_22_address0 = zext_ln100_3_fu_1204_p1;
assign W_22_address1 = zext_ln100_fu_1096_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_22_ce1 = W_22_ce1_local;
assign W_23_address0 = zext_ln100_4_fu_1230_p1;
assign W_23_address1 = zext_ln100_fu_1096_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_23_ce1 = W_23_ce1_local;
assign W_24_address0 = zext_ln100_1_fu_1152_p1;
assign W_24_address1 = zext_ln100_fu_1096_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_24_ce1 = W_24_ce1_local;
assign W_25_address0 = zext_ln100_2_fu_1178_p1;
assign W_25_address1 = zext_ln100_fu_1096_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_25_ce1 = W_25_ce1_local;
assign W_26_address0 = zext_ln100_3_fu_1204_p1;
assign W_26_address1 = zext_ln100_fu_1096_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_26_ce1 = W_26_ce1_local;
assign W_27_address0 = zext_ln100_4_fu_1230_p1;
assign W_27_address1 = zext_ln100_fu_1096_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_27_ce1 = W_27_ce1_local;
assign W_28_address0 = zext_ln100_1_fu_1152_p1;
assign W_28_address1 = zext_ln100_fu_1096_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_28_ce1 = W_28_ce1_local;
assign W_29_address0 = zext_ln100_2_fu_1178_p1;
assign W_29_address1 = zext_ln100_fu_1096_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_29_ce1 = W_29_ce1_local;
assign W_2_address0 = zext_ln100_3_fu_1204_p1;
assign W_2_address1 = zext_ln100_fu_1096_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_30_address0 = zext_ln100_3_fu_1204_p1;
assign W_30_address1 = zext_ln100_fu_1096_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_30_ce1 = W_30_ce1_local;
assign W_31_address0 = zext_ln100_4_fu_1230_p1;
assign W_31_address1 = zext_ln100_fu_1096_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_31_ce1 = W_31_ce1_local;
assign W_3_address0 = zext_ln100_4_fu_1230_p1;
assign W_3_address1 = zext_ln100_fu_1096_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_4_address0 = zext_ln100_1_fu_1152_p1;
assign W_4_address1 = zext_ln100_fu_1096_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_5_address0 = zext_ln100_2_fu_1178_p1;
assign W_5_address1 = zext_ln100_fu_1096_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_6_address0 = zext_ln100_3_fu_1204_p1;
assign W_6_address1 = zext_ln100_fu_1096_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_7_address0 = zext_ln100_4_fu_1230_p1;
assign W_7_address1 = zext_ln100_fu_1096_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_8_address0 = zext_ln100_1_fu_1152_p1;
assign W_8_address1 = zext_ln100_fu_1096_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_ce1 = W_8_ce1_local;
assign W_9_address0 = zext_ln100_2_fu_1178_p1;
assign W_9_address1 = zext_ln100_fu_1096_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_ce1 = W_9_ce1_local;
assign W_address0 = zext_ln100_1_fu_1152_p1;
assign W_address1 = zext_ln100_fu_1096_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln120_1_fu_1164_p2 = (ap_sig_allocacmp_i + 6'd5);
assign add_ln120_2_fu_1190_p2 = (ap_sig_allocacmp_i + 6'd6);
assign add_ln120_3_fu_1216_p2 = (ap_sig_allocacmp_i + 6'd7);
assign add_ln120_4_fu_2145_p2 = (i_reg_2232 + 6'd8);
assign add_ln120_fu_1132_p2 = (ap_sig_allocacmp_i + 6'd4);
assign add_ln122_10_fu_1789_p2 = (add_ln122_9_reg_2692 + C_reg_2578);
assign add_ln122_12_fu_1841_p2 = (or_ln122_6_fu_1828_p3 + xor_ln122_7_fu_1822_p2);
assign add_ln122_13_fu_1836_p2 = (tmp_18_reg_2614 + 32'd1859775393);
assign add_ln122_14_fu_1847_p2 = (add_ln122_13_reg_2727 + C_19_reg_2644);
assign add_ln122_16_fu_1901_p2 = (or_ln122_8_fu_1888_p3 + xor_ln122_9_fu_1882_p2);
assign add_ln122_17_fu_1896_p2 = (tmp_19_reg_2619 + 32'd1859775393);
assign add_ln122_18_fu_1934_p2 = (add_ln122_17_reg_2748 + C_20_reg_2685);
assign add_ln122_1_fu_1305_p2 = (tmp_s_fu_1254_p19 + 32'd1859775393);
assign add_ln122_20_fu_2000_p2 = (or_ln122_s_fu_1987_p3 + xor_ln122_11_fu_1981_p2);
assign add_ln122_21_fu_1995_p2 = (tmp_20_reg_2624 + 32'd1859775393);
assign add_ln122_22_fu_2033_p2 = (add_ln122_21_reg_2775 + C_21_reg_2720);
assign add_ln122_24_fu_2073_p2 = (or_ln122_1_fu_2065_p3 + xor_ln122_13_fu_2060_p2);
assign add_ln122_25_fu_2116_p2 = (tmp_21_reg_2629 + 32'd1859775393);
assign add_ln122_26_fu_2121_p2 = (add_ln122_25_fu_2116_p2 + C_22_reg_2742);
assign add_ln122_28_fu_2176_p2 = (C_23_reg_2769 + xor_ln122_15_reg_2795);
assign add_ln122_29_fu_2161_p2 = (tmp_22_reg_2634 + 32'd1859775393);
assign add_ln122_2_fu_1629_p2 = (add_ln122_1_reg_2584 + or_ln1_fu_1621_p3);
assign add_ln122_30_fu_2166_p2 = (or_ln122_3_fu_2155_p3 + add_ln122_29_fu_2161_p2);
assign add_ln122_4_fu_1683_p2 = (or_ln122_2_fu_1670_p3 + xor_ln122_3_fu_1665_p2);
assign add_ln122_5_fu_1678_p2 = (tmp_16_reg_2604 + 32'd1859775393);
assign add_ln122_6_fu_1717_p2 = (add_ln122_5_reg_2650 + D_reg_2573);
assign add_ln122_8_fu_1769_p2 = (or_ln122_4_fu_1756_p3 + xor_ln122_5_fu_1751_p2);
assign add_ln122_9_fu_1764_p2 = (tmp_17_reg_2609 + 32'd1859775393);
assign add_ln122_fu_1311_p2 = (xor_ln122_1_fu_1299_p2 + E_10_fu_162);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln120_fu_1138_p2 = ((add_ln120_fu_1132_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_10_fu_1911_p4 = {{temp_17_fu_1851_p2[31:2]}};
assign lshr_ln122_11_fu_2046_p4 = {{temp_19_fu_2037_p2[31:27]}};
assign lshr_ln122_12_fu_2010_p4 = {{temp_18_fu_1938_p2[31:2]}};
assign lshr_ln122_14_fu_2093_p4 = {{temp_19_fu_2037_p2[31:2]}};
assign lshr_ln122_2_fu_1649_p4 = {{temp_fu_1634_p2[31:27]}};
assign lshr_ln122_4_fu_1736_p4 = {{temp_15_fu_1721_p2[31:27]}};
assign lshr_ln122_6_fu_1808_p4 = {{temp_16_fu_1793_p2[31:27]}};
assign lshr_ln122_8_fu_1868_p4 = {{temp_17_fu_1851_p2[31:27]}};
assign lshr_ln122_9_fu_1946_p4 = {{temp_16_reg_2712[31:2]}};
assign lshr_ln122_s_fu_1967_p4 = {{temp_18_fu_1938_p2[31:27]}};
assign lshr_ln4_fu_1611_p4 = {{B_fu_174[31:27]}};
assign or_ln122_1_fu_2065_p3 = {{trunc_ln122_12_fu_2042_p1}, {lshr_ln122_11_fu_2046_p4}};
assign or_ln122_2_fu_1670_p3 = {{trunc_ln122_2_fu_1645_p1}, {lshr_ln122_2_fu_1649_p4}};
assign or_ln122_3_fu_2155_p3 = {{trunc_ln122_14_reg_2805}, {lshr_ln122_13_reg_2810}};
assign or_ln122_4_fu_1756_p3 = {{trunc_ln122_4_fu_1732_p1}, {lshr_ln122_4_fu_1736_p4}};
assign or_ln122_6_fu_1828_p3 = {{trunc_ln122_6_fu_1804_p1}, {lshr_ln122_6_fu_1808_p4}};
assign or_ln122_8_fu_1888_p3 = {{trunc_ln122_8_fu_1864_p1}, {lshr_ln122_8_fu_1868_p4}};
assign or_ln122_s_fu_1987_p3 = {{trunc_ln122_10_fu_1963_p1}, {lshr_ln122_s_fu_1967_p4}};
assign or_ln1_fu_1621_p3 = {{trunc_ln122_fu_1607_p1}, {lshr_ln4_fu_1611_p4}};
assign temp_15_fu_1721_p2 = (add_ln122_4_reg_2655 + add_ln122_6_fu_1717_p2);
assign temp_16_fu_1793_p2 = (add_ln122_8_reg_2697 + add_ln122_10_fu_1789_p2);
assign temp_17_fu_1851_p2 = (add_ln122_12_reg_2732 + add_ln122_14_fu_1847_p2);
assign temp_18_fu_1938_p2 = (add_ln122_16_reg_2753 + add_ln122_18_fu_1934_p2);
assign temp_19_fu_2037_p2 = (add_ln122_20_reg_2780 + add_ln122_22_fu_2033_p2);
assign temp_20_fu_2126_p2 = (add_ln122_24_reg_2790 + add_ln122_26_fu_2121_p2);
assign temp_21_fu_2180_p2 = (add_ln122_30_reg_2815 + add_ln122_28_fu_2176_p2);
assign temp_fu_1634_p2 = (add_ln122_reg_2589 + add_ln122_2_fu_1629_p2);
assign tmp_16_fu_1331_p17 = 'bx;
assign tmp_17_fu_1370_p17 = 'bx;
assign tmp_18_fu_1409_p17 = 'bx;
assign tmp_19_fu_1448_p17 = 'bx;
assign tmp_1_fu_1144_p3 = add_ln120_fu_1132_p2[32'd5];
assign tmp_20_fu_1487_p17 = 'bx;
assign tmp_21_fu_1526_p17 = 'bx;
assign tmp_22_fu_1565_p17 = 'bx;
assign tmp_2_fu_1170_p3 = add_ln120_1_fu_1164_p2[32'd5];
assign tmp_3_fu_1196_p3 = add_ln120_2_fu_1190_p2[32'd5];
assign tmp_4_fu_1222_p3 = add_ln120_3_fu_1216_p2[32'd5];
assign tmp_fu_1088_p3 = ap_sig_allocacmp_i[32'd5];
assign tmp_s_fu_1254_p17 = 'bx;
assign trunc_ln122_10_fu_1963_p1 = temp_18_fu_1938_p2[26:0];
assign trunc_ln122_11_fu_1907_p1 = temp_17_fu_1851_p2[1:0];
assign trunc_ln122_12_fu_2042_p1 = temp_19_fu_2037_p2[26:0];
assign trunc_ln122_13_fu_2006_p1 = temp_18_fu_1938_p2[1:0];
assign trunc_ln122_14_fu_2131_p1 = temp_20_fu_2126_p2[26:0];
assign trunc_ln122_15_fu_2089_p1 = temp_19_fu_2037_p2[1:0];
assign trunc_ln122_1_fu_1317_p1 = B_10_fu_166[1:0];
assign trunc_ln122_2_fu_1645_p1 = temp_fu_1634_p2[26:0];
assign trunc_ln122_3_fu_1689_p1 = B_fu_174[1:0];
assign trunc_ln122_4_fu_1732_p1 = temp_15_fu_1721_p2[26:0];
assign trunc_ln122_5_fu_1703_p1 = temp_fu_1634_p2[1:0];
assign trunc_ln122_6_fu_1804_p1 = temp_16_fu_1793_p2[26:0];
assign trunc_ln122_7_fu_1775_p1 = temp_15_fu_1721_p2[1:0];
assign trunc_ln122_8_fu_1864_p1 = temp_17_fu_1851_p2[26:0];
assign trunc_ln122_9_fu_1943_p1 = temp_16_reg_2712[1:0];
assign trunc_ln122_fu_1607_p1 = B_fu_174[26:0];
assign trunc_ln9_fu_1084_p1 = ap_sig_allocacmp_i[4:0];
assign xor_ln122_10_fu_1977_p2 = (temp_17_reg_2737 ^ C_22_reg_2742);
assign xor_ln122_11_fu_1981_p2 = (xor_ln122_10_fu_1977_p2 ^ C_23_fu_1955_p3);
assign xor_ln122_12_fu_2056_p2 = (temp_18_reg_2764 ^ C_23_reg_2769);
assign xor_ln122_13_fu_2060_p2 = (xor_ln122_12_fu_2056_p2 ^ C_24_reg_2758);
assign xor_ln122_14_fu_2079_p2 = (temp_19_fu_2037_p2 ^ C_24_reg_2758);
assign xor_ln122_15_fu_2084_p2 = (xor_ln122_14_fu_2079_p2 ^ C_25_reg_2785);
assign xor_ln122_1_fu_1299_p2 = (xor_ln122_fu_1293_p2 ^ E_23_fu_178);
assign xor_ln122_2_fu_1659_p2 = (C_19_fu_1639_p3 ^ B_fu_174);
assign xor_ln122_3_fu_1665_p2 = (xor_ln122_2_fu_1659_p2 ^ C_reg_2578);
assign xor_ln122_4_fu_1746_p2 = (temp_reg_2639 ^ C_20_fu_1726_p3);
assign xor_ln122_5_fu_1751_p2 = (xor_ln122_4_fu_1746_p2 ^ C_19_reg_2644);
assign xor_ln122_6_fu_1818_p2 = (temp_15_reg_2680 ^ C_20_reg_2685);
assign xor_ln122_7_fu_1822_p2 = (xor_ln122_6_fu_1818_p2 ^ C_21_fu_1798_p3);
assign xor_ln122_8_fu_1878_p2 = (temp_16_reg_2712 ^ C_21_reg_2720);
assign xor_ln122_9_fu_1882_p2 = (xor_ln122_8_fu_1878_p2 ^ C_22_fu_1857_p3);
assign xor_ln122_fu_1293_p2 = (E_fu_170 ^ B_10_fu_166);
assign zext_ln100_1_fu_1152_p1 = tmp_1_fu_1144_p3;
assign zext_ln100_2_fu_1178_p1 = tmp_2_fu_1170_p3;
assign zext_ln100_3_fu_1204_p1 = tmp_3_fu_1196_p3;
assign zext_ln100_4_fu_1230_p1 = tmp_4_fu_1222_p3;
assign zext_ln100_fu_1096_p1 = tmp_fu_1088_p3;
endmodule 