module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,llike_1_load_1,llike_2_load_1,llike_3_load_1,llike_4_load_1,llike_5_load_1,llike_6_load_1,llike_7_load_1,llike_8_load_1,llike_9_load_1,llike_10_load_1,llike_11_load_1,llike_12_load_1,llike_13_load_1,llike_14_load_1,llike_15_load_1,llike_16_load_1,llike_17_load_1,llike_18_load_1,llike_19_load_1,llike_20_load_1,llike_21_load_1,llike_22_load_1,llike_23_load_1,llike_24_load_1,llike_25_load_1,llike_26_load_1,llike_27_load_1,llike_28_load_1,llike_29_load_1,llike_30_load_1,llike_31_load_1,llike_32_load_1,llike_33_load_1,llike_34_load_1,llike_35_load_1,llike_36_load_1,llike_37_load_1,llike_38_load_1,llike_39_load_1,llike_40_load_1,llike_41_load_1,llike_42_load_1,llike_43_load_1,llike_44_load_1,llike_45_load_1,llike_46_load_1,llike_47_load_1,llike_48_load_1,llike_49_load_1,llike_50_load_1,llike_51_load_1,llike_52_load_1,llike_53_load_1,llike_54_load_1,llike_55_load_1,llike_56_load_1,llike_57_load_1,llike_58_load_1,llike_59_load_1,llike_60_load_1,llike_61_load_1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,tmp_9,llike_62_load_1,llike_63_load_1,min_p_74_out,min_p_74_out_ap_vld,grp_fu_4451_p_din0,grp_fu_4451_p_din1,grp_fu_4451_p_opcode,grp_fu_4451_p_dout0,grp_fu_4451_p_ce,grp_fu_7996_p_din0,grp_fu_7996_p_din1,grp_fu_7996_p_opcode,grp_fu_7996_p_dout0,grp_fu_7996_p_ce); 
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
input  [63:0] min_p_66;
input  [63:0] llike_1_load_1;
input  [63:0] llike_2_load_1;
input  [63:0] llike_3_load_1;
input  [63:0] llike_4_load_1;
input  [63:0] llike_5_load_1;
input  [63:0] llike_6_load_1;
input  [63:0] llike_7_load_1;
input  [63:0] llike_8_load_1;
input  [63:0] llike_9_load_1;
input  [63:0] llike_10_load_1;
input  [63:0] llike_11_load_1;
input  [63:0] llike_12_load_1;
input  [63:0] llike_13_load_1;
input  [63:0] llike_14_load_1;
input  [63:0] llike_15_load_1;
input  [63:0] llike_16_load_1;
input  [63:0] llike_17_load_1;
input  [63:0] llike_18_load_1;
input  [63:0] llike_19_load_1;
input  [63:0] llike_20_load_1;
input  [63:0] llike_21_load_1;
input  [63:0] llike_22_load_1;
input  [63:0] llike_23_load_1;
input  [63:0] llike_24_load_1;
input  [63:0] llike_25_load_1;
input  [63:0] llike_26_load_1;
input  [63:0] llike_27_load_1;
input  [63:0] llike_28_load_1;
input  [63:0] llike_29_load_1;
input  [63:0] llike_30_load_1;
input  [63:0] llike_31_load_1;
input  [63:0] llike_32_load_1;
input  [63:0] llike_33_load_1;
input  [63:0] llike_34_load_1;
input  [63:0] llike_35_load_1;
input  [63:0] llike_36_load_1;
input  [63:0] llike_37_load_1;
input  [63:0] llike_38_load_1;
input  [63:0] llike_39_load_1;
input  [63:0] llike_40_load_1;
input  [63:0] llike_41_load_1;
input  [63:0] llike_42_load_1;
input  [63:0] llike_43_load_1;
input  [63:0] llike_44_load_1;
input  [63:0] llike_45_load_1;
input  [63:0] llike_46_load_1;
input  [63:0] llike_47_load_1;
input  [63:0] llike_48_load_1;
input  [63:0] llike_49_load_1;
input  [63:0] llike_50_load_1;
input  [63:0] llike_51_load_1;
input  [63:0] llike_52_load_1;
input  [63:0] llike_53_load_1;
input  [63:0] llike_54_load_1;
input  [63:0] llike_55_load_1;
input  [63:0] llike_56_load_1;
input  [63:0] llike_57_load_1;
input  [63:0] llike_58_load_1;
input  [63:0] llike_59_load_1;
input  [63:0] llike_60_load_1;
input  [63:0] llike_61_load_1;
input  [2:0] lshr_ln;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_4_address1;
output   transition_4_ce1;
input  [63:0] transition_4_q1;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_5_address1;
output   transition_5_ce1;
input  [63:0] transition_5_q1;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_6_address1;
output   transition_6_ce1;
input  [63:0] transition_6_q1;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
output  [8:0] transition_7_address1;
output   transition_7_ce1;
input  [63:0] transition_7_q1;
input  [2:0] empty;
input  [63:0] tmp_9;
input  [63:0] llike_62_load_1;
input  [63:0] llike_63_load_1;
output  [63:0] min_p_74_out;
output   min_p_74_out_ap_vld;
output  [63:0] grp_fu_4451_p_din0;
output  [63:0] grp_fu_4451_p_din1;
output  [1:0] grp_fu_4451_p_opcode;
input  [63:0] grp_fu_4451_p_dout0;
output   grp_fu_4451_p_ce;
output  [63:0] grp_fu_7996_p_din0;
output  [63:0] grp_fu_7996_p_din1;
output  [4:0] grp_fu_7996_p_opcode;
input  [0:0] grp_fu_7996_p_dout0;
output   grp_fu_7996_p_ce;
reg ap_idle;
reg min_p_74_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_158_reg_3062;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_2952;
wire   [63:0] tmp_2_fu_1126_p125;
reg   [63:0] tmp_2_reg_2957;
wire   [63:0] tmp_6_fu_1406_p125;
reg   [63:0] tmp_6_reg_3002;
wire   [63:0] tmp_11_fu_1694_p125;
reg   [63:0] tmp_11_reg_3047;
reg   [5:0] tmp_167_reg_3052;
wire   [6:0] add_ln25_fu_1962_p2;
reg   [6:0] add_ln25_reg_3057;
reg   [0:0] tmp_158_reg_3062_pp0_iter1_reg;
reg   [0:0] tmp_158_reg_3062_pp0_iter2_reg;
reg   [0:0] tmp_158_reg_3062_pp0_iter3_reg;
wire   [63:0] tmp_15_fu_1976_p123;
reg   [63:0] tmp_15_reg_3066;
wire   [63:0] tmp_4_fu_2256_p19;
reg   [63:0] tmp_4_reg_3071;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_10_fu_2327_p19;
reg   [63:0] tmp_10_reg_3076;
wire   [63:0] tmp_12_fu_2438_p19;
reg   [63:0] tmp_12_reg_3161;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_16_fu_2509_p19;
reg   [63:0] tmp_16_reg_3166;
reg   [63:0] add1_reg_3171;
reg   [63:0] add52_1_reg_3176;
reg   [63:0] add52_2_reg_3181;
reg   [63:0] add52_3_reg_3186;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_3191;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_67_reg_3198;
wire   [0:0] and_ln29_1_fu_2638_p2;
reg   [0:0] and_ln29_1_reg_3205;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_32_reg_3210;
wire   [63:0] min_p_69_fu_2644_p3;
reg   [63:0] min_p_69_reg_3217;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_33_reg_3224;
wire   [0:0] and_ln29_3_fu_2726_p2;
reg   [0:0] and_ln29_3_reg_3231;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_34_reg_3236;
wire   [63:0] min_p_71_fu_2732_p3;
reg   [63:0] min_p_71_reg_3243;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_2814_p2;
reg   [0:0] and_ln29_5_reg_3250;
wire   [63:0] min_p_73_fu_2820_p3;
reg   [63:0] min_p_73_reg_3255;
reg   [0:0] tmp_173_reg_3262;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln27_fu_1394_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_1682_p1;
wire   [63:0] zext_ln27_2_fu_2372_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_2394_p1;
reg   [63:0] min_p_fu_356;
wire   [63:0] min_p_75_fu_2908_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_360;
wire   [5:0] add_ln25_1_fu_2548_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg   [63:0] grp_fu_1101_p0;
reg   [63:0] grp_fu_1101_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_1105_p0;
reg   [63:0] grp_fu_1105_p1;
wire   [63:0] tmp_2_fu_1126_p123;
wire   [8:0] add_ln_fu_1386_p3;
wire   [63:0] tmp_6_fu_1406_p123;
wire   [8:0] shl_ln1_fu_1378_p3;
wire   [8:0] add_ln27_fu_1658_p2;
wire   [5:0] tmp_163_fu_1664_p4;
wire   [8:0] add_ln27_2_fu_1674_p3;
wire   [63:0] tmp_11_fu_1694_p123;
wire   [8:0] add_ln27_1_fu_1946_p2;
wire   [6:0] zext_ln15_fu_1122_p1;
wire   [63:0] tmp_15_fu_1976_p121;
wire   [63:0] tmp_4_fu_2256_p2;
wire   [63:0] tmp_4_fu_2256_p4;
wire   [63:0] tmp_4_fu_2256_p6;
wire   [63:0] tmp_4_fu_2256_p8;
wire   [63:0] tmp_4_fu_2256_p10;
wire   [63:0] tmp_4_fu_2256_p12;
wire   [63:0] tmp_4_fu_2256_p14;
wire   [63:0] tmp_4_fu_2256_p16;
wire   [63:0] tmp_4_fu_2256_p17;
wire   [63:0] tmp_10_fu_2327_p2;
wire   [63:0] tmp_10_fu_2327_p4;
wire   [63:0] tmp_10_fu_2327_p6;
wire   [63:0] tmp_10_fu_2327_p8;
wire   [63:0] tmp_10_fu_2327_p10;
wire   [63:0] tmp_10_fu_2327_p12;
wire   [63:0] tmp_10_fu_2327_p14;
wire   [63:0] tmp_10_fu_2327_p16;
wire   [63:0] tmp_10_fu_2327_p17;
wire   [8:0] add_ln27_4_fu_2366_p3;
wire   [5:0] trunc_ln27_fu_2384_p1;
wire   [8:0] add_ln27_5_fu_2387_p3;
wire   [63:0] tmp_12_fu_2438_p2;
wire   [63:0] tmp_12_fu_2438_p4;
wire   [63:0] tmp_12_fu_2438_p6;
wire   [63:0] tmp_12_fu_2438_p8;
wire   [63:0] tmp_12_fu_2438_p10;
wire   [63:0] tmp_12_fu_2438_p12;
wire   [63:0] tmp_12_fu_2438_p14;
wire   [63:0] tmp_12_fu_2438_p16;
wire   [63:0] tmp_12_fu_2438_p17;
wire   [63:0] tmp_16_fu_2509_p2;
wire   [63:0] tmp_16_fu_2509_p4;
wire   [63:0] tmp_16_fu_2509_p6;
wire   [63:0] tmp_16_fu_2509_p8;
wire   [63:0] tmp_16_fu_2509_p10;
wire   [63:0] tmp_16_fu_2509_p12;
wire   [63:0] tmp_16_fu_2509_p14;
wire   [63:0] tmp_16_fu_2509_p16;
wire   [63:0] tmp_16_fu_2509_p17;
wire   [63:0] bitcast_ln29_fu_2562_p1;
wire   [63:0] bitcast_ln29_1_fu_2579_p1;
wire   [10:0] tmp_s_fu_2565_p4;
wire   [51:0] trunc_ln29_fu_2575_p1;
wire   [0:0] icmp_ln29_1_fu_2602_p2;
wire   [0:0] icmp_ln29_fu_2596_p2;
wire   [10:0] tmp_161_fu_2582_p4;
wire   [51:0] trunc_ln29_1_fu_2592_p1;
wire   [0:0] icmp_ln29_3_fu_2620_p2;
wire   [0:0] icmp_ln29_2_fu_2614_p2;
wire   [0:0] or_ln29_fu_2608_p2;
wire   [0:0] and_ln29_fu_2632_p2;
wire   [0:0] or_ln29_1_fu_2626_p2;
wire   [63:0] bitcast_ln29_2_fu_2650_p1;
wire   [63:0] bitcast_ln29_3_fu_2667_p1;
wire   [10:0] tmp_164_fu_2653_p4;
wire   [51:0] trunc_ln29_2_fu_2663_p1;
wire   [0:0] icmp_ln29_5_fu_2690_p2;
wire   [0:0] icmp_ln29_4_fu_2684_p2;
wire   [10:0] tmp_165_fu_2670_p4;
wire   [51:0] trunc_ln29_3_fu_2680_p1;
wire   [0:0] icmp_ln29_7_fu_2708_p2;
wire   [0:0] icmp_ln29_6_fu_2702_p2;
wire   [0:0] or_ln29_3_fu_2714_p2;
wire   [0:0] or_ln29_2_fu_2696_p2;
wire   [0:0] and_ln29_2_fu_2720_p2;
wire   [63:0] bitcast_ln29_4_fu_2738_p1;
wire   [63:0] bitcast_ln29_5_fu_2755_p1;
wire   [10:0] tmp_168_fu_2741_p4;
wire   [51:0] trunc_ln29_4_fu_2751_p1;
wire   [0:0] icmp_ln29_9_fu_2778_p2;
wire   [0:0] icmp_ln29_8_fu_2772_p2;
wire   [10:0] tmp_169_fu_2758_p4;
wire   [51:0] trunc_ln29_5_fu_2768_p1;
wire   [0:0] icmp_ln29_11_fu_2796_p2;
wire   [0:0] icmp_ln29_10_fu_2790_p2;
wire   [0:0] or_ln29_5_fu_2802_p2;
wire   [0:0] or_ln29_4_fu_2784_p2;
wire   [0:0] and_ln29_4_fu_2808_p2;
wire   [63:0] bitcast_ln29_6_fu_2827_p1;
wire   [63:0] bitcast_ln29_7_fu_2844_p1;
wire   [10:0] tmp_171_fu_2830_p4;
wire   [51:0] trunc_ln29_6_fu_2840_p1;
wire   [0:0] icmp_ln29_13_fu_2867_p2;
wire   [0:0] icmp_ln29_12_fu_2861_p2;
wire   [10:0] tmp_172_fu_2847_p4;
wire   [51:0] trunc_ln29_7_fu_2857_p1;
wire   [0:0] icmp_ln29_15_fu_2885_p2;
wire   [0:0] icmp_ln29_14_fu_2879_p2;
wire   [0:0] or_ln29_7_fu_2891_p2;
wire   [0:0] or_ln29_6_fu_2873_p2;
wire   [0:0] and_ln29_6_fu_2897_p2;
wire   [0:0] and_ln29_7_fu_2903_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire   [5:0] tmp_2_fu_1126_p1;
wire   [5:0] tmp_2_fu_1126_p3;
wire   [5:0] tmp_2_fu_1126_p5;
wire   [5:0] tmp_2_fu_1126_p7;
wire   [5:0] tmp_2_fu_1126_p9;
wire   [5:0] tmp_2_fu_1126_p11;
wire   [5:0] tmp_2_fu_1126_p13;
wire   [5:0] tmp_2_fu_1126_p15;
wire   [5:0] tmp_2_fu_1126_p17;
wire   [5:0] tmp_2_fu_1126_p19;
wire   [5:0] tmp_2_fu_1126_p21;
wire   [5:0] tmp_2_fu_1126_p23;
wire   [5:0] tmp_2_fu_1126_p25;
wire   [5:0] tmp_2_fu_1126_p27;
wire   [5:0] tmp_2_fu_1126_p29;
wire   [5:0] tmp_2_fu_1126_p31;
wire   [5:0] tmp_2_fu_1126_p33;
wire   [5:0] tmp_2_fu_1126_p35;
wire   [5:0] tmp_2_fu_1126_p37;
wire   [5:0] tmp_2_fu_1126_p39;
wire   [5:0] tmp_2_fu_1126_p41;
wire   [5:0] tmp_2_fu_1126_p43;
wire   [5:0] tmp_2_fu_1126_p45;
wire   [5:0] tmp_2_fu_1126_p47;
wire   [5:0] tmp_2_fu_1126_p49;
wire   [5:0] tmp_2_fu_1126_p51;
wire   [5:0] tmp_2_fu_1126_p53;
wire   [5:0] tmp_2_fu_1126_p55;
wire   [5:0] tmp_2_fu_1126_p57;
wire   [5:0] tmp_2_fu_1126_p59;
wire   [5:0] tmp_2_fu_1126_p61;
wire  signed [5:0] tmp_2_fu_1126_p63;
wire  signed [5:0] tmp_2_fu_1126_p65;
wire  signed [5:0] tmp_2_fu_1126_p67;
wire  signed [5:0] tmp_2_fu_1126_p69;
wire  signed [5:0] tmp_2_fu_1126_p71;
wire  signed [5:0] tmp_2_fu_1126_p73;
wire  signed [5:0] tmp_2_fu_1126_p75;
wire  signed [5:0] tmp_2_fu_1126_p77;
wire  signed [5:0] tmp_2_fu_1126_p79;
wire  signed [5:0] tmp_2_fu_1126_p81;
wire  signed [5:0] tmp_2_fu_1126_p83;
wire  signed [5:0] tmp_2_fu_1126_p85;
wire  signed [5:0] tmp_2_fu_1126_p87;
wire  signed [5:0] tmp_2_fu_1126_p89;
wire  signed [5:0] tmp_2_fu_1126_p91;
wire  signed [5:0] tmp_2_fu_1126_p93;
wire  signed [5:0] tmp_2_fu_1126_p95;
wire  signed [5:0] tmp_2_fu_1126_p97;
wire  signed [5:0] tmp_2_fu_1126_p99;
wire  signed [5:0] tmp_2_fu_1126_p101;
wire  signed [5:0] tmp_2_fu_1126_p103;
wire  signed [5:0] tmp_2_fu_1126_p105;
wire  signed [5:0] tmp_2_fu_1126_p107;
wire  signed [5:0] tmp_2_fu_1126_p109;
wire  signed [5:0] tmp_2_fu_1126_p111;
wire  signed [5:0] tmp_2_fu_1126_p113;
wire  signed [5:0] tmp_2_fu_1126_p115;
wire  signed [5:0] tmp_2_fu_1126_p117;
wire  signed [5:0] tmp_2_fu_1126_p119;
wire  signed [5:0] tmp_2_fu_1126_p121;
wire   [5:0] tmp_6_fu_1406_p1;
wire   [5:0] tmp_6_fu_1406_p3;
wire   [5:0] tmp_6_fu_1406_p5;
wire   [5:0] tmp_6_fu_1406_p7;
wire   [5:0] tmp_6_fu_1406_p9;
wire   [5:0] tmp_6_fu_1406_p11;
wire   [5:0] tmp_6_fu_1406_p13;
wire   [5:0] tmp_6_fu_1406_p15;
wire   [5:0] tmp_6_fu_1406_p17;
wire   [5:0] tmp_6_fu_1406_p19;
wire   [5:0] tmp_6_fu_1406_p21;
wire   [5:0] tmp_6_fu_1406_p23;
wire   [5:0] tmp_6_fu_1406_p25;
wire   [5:0] tmp_6_fu_1406_p27;
wire   [5:0] tmp_6_fu_1406_p29;
wire   [5:0] tmp_6_fu_1406_p31;
wire   [5:0] tmp_6_fu_1406_p33;
wire   [5:0] tmp_6_fu_1406_p35;
wire   [5:0] tmp_6_fu_1406_p37;
wire   [5:0] tmp_6_fu_1406_p39;
wire   [5:0] tmp_6_fu_1406_p41;
wire   [5:0] tmp_6_fu_1406_p43;
wire   [5:0] tmp_6_fu_1406_p45;
wire   [5:0] tmp_6_fu_1406_p47;
wire   [5:0] tmp_6_fu_1406_p49;
wire   [5:0] tmp_6_fu_1406_p51;
wire   [5:0] tmp_6_fu_1406_p53;
wire   [5:0] tmp_6_fu_1406_p55;
wire   [5:0] tmp_6_fu_1406_p57;
wire   [5:0] tmp_6_fu_1406_p59;
wire   [5:0] tmp_6_fu_1406_p61;
wire  signed [5:0] tmp_6_fu_1406_p63;
wire  signed [5:0] tmp_6_fu_1406_p65;
wire  signed [5:0] tmp_6_fu_1406_p67;
wire  signed [5:0] tmp_6_fu_1406_p69;
wire  signed [5:0] tmp_6_fu_1406_p71;
wire  signed [5:0] tmp_6_fu_1406_p73;
wire  signed [5:0] tmp_6_fu_1406_p75;
wire  signed [5:0] tmp_6_fu_1406_p77;
wire  signed [5:0] tmp_6_fu_1406_p79;
wire  signed [5:0] tmp_6_fu_1406_p81;
wire  signed [5:0] tmp_6_fu_1406_p83;
wire  signed [5:0] tmp_6_fu_1406_p85;
wire  signed [5:0] tmp_6_fu_1406_p87;
wire  signed [5:0] tmp_6_fu_1406_p89;
wire  signed [5:0] tmp_6_fu_1406_p91;
wire  signed [5:0] tmp_6_fu_1406_p93;
wire  signed [5:0] tmp_6_fu_1406_p95;
wire  signed [5:0] tmp_6_fu_1406_p97;
wire  signed [5:0] tmp_6_fu_1406_p99;
wire  signed [5:0] tmp_6_fu_1406_p101;
wire  signed [5:0] tmp_6_fu_1406_p103;
wire  signed [5:0] tmp_6_fu_1406_p105;
wire  signed [5:0] tmp_6_fu_1406_p107;
wire  signed [5:0] tmp_6_fu_1406_p109;
wire  signed [5:0] tmp_6_fu_1406_p111;
wire  signed [5:0] tmp_6_fu_1406_p113;
wire  signed [5:0] tmp_6_fu_1406_p115;
wire  signed [5:0] tmp_6_fu_1406_p117;
wire  signed [5:0] tmp_6_fu_1406_p119;
wire  signed [5:0] tmp_6_fu_1406_p121;
wire   [5:0] tmp_11_fu_1694_p1;
wire   [5:0] tmp_11_fu_1694_p3;
wire   [5:0] tmp_11_fu_1694_p5;
wire   [5:0] tmp_11_fu_1694_p7;
wire   [5:0] tmp_11_fu_1694_p9;
wire   [5:0] tmp_11_fu_1694_p11;
wire   [5:0] tmp_11_fu_1694_p13;
wire   [5:0] tmp_11_fu_1694_p15;
wire   [5:0] tmp_11_fu_1694_p17;
wire   [5:0] tmp_11_fu_1694_p19;
wire   [5:0] tmp_11_fu_1694_p21;
wire   [5:0] tmp_11_fu_1694_p23;
wire   [5:0] tmp_11_fu_1694_p25;
wire   [5:0] tmp_11_fu_1694_p27;
wire   [5:0] tmp_11_fu_1694_p29;
wire   [5:0] tmp_11_fu_1694_p31;
wire   [5:0] tmp_11_fu_1694_p33;
wire   [5:0] tmp_11_fu_1694_p35;
wire   [5:0] tmp_11_fu_1694_p37;
wire   [5:0] tmp_11_fu_1694_p39;
wire   [5:0] tmp_11_fu_1694_p41;
wire   [5:0] tmp_11_fu_1694_p43;
wire   [5:0] tmp_11_fu_1694_p45;
wire   [5:0] tmp_11_fu_1694_p47;
wire   [5:0] tmp_11_fu_1694_p49;
wire   [5:0] tmp_11_fu_1694_p51;
wire   [5:0] tmp_11_fu_1694_p53;
wire   [5:0] tmp_11_fu_1694_p55;
wire   [5:0] tmp_11_fu_1694_p57;
wire   [5:0] tmp_11_fu_1694_p59;
wire   [5:0] tmp_11_fu_1694_p61;
wire  signed [5:0] tmp_11_fu_1694_p63;
wire  signed [5:0] tmp_11_fu_1694_p65;
wire  signed [5:0] tmp_11_fu_1694_p67;
wire  signed [5:0] tmp_11_fu_1694_p69;
wire  signed [5:0] tmp_11_fu_1694_p71;
wire  signed [5:0] tmp_11_fu_1694_p73;
wire  signed [5:0] tmp_11_fu_1694_p75;
wire  signed [5:0] tmp_11_fu_1694_p77;
wire  signed [5:0] tmp_11_fu_1694_p79;
wire  signed [5:0] tmp_11_fu_1694_p81;
wire  signed [5:0] tmp_11_fu_1694_p83;
wire  signed [5:0] tmp_11_fu_1694_p85;
wire  signed [5:0] tmp_11_fu_1694_p87;
wire  signed [5:0] tmp_11_fu_1694_p89;
wire  signed [5:0] tmp_11_fu_1694_p91;
wire  signed [5:0] tmp_11_fu_1694_p93;
wire  signed [5:0] tmp_11_fu_1694_p95;
wire  signed [5:0] tmp_11_fu_1694_p97;
wire  signed [5:0] tmp_11_fu_1694_p99;
wire  signed [5:0] tmp_11_fu_1694_p101;
wire  signed [5:0] tmp_11_fu_1694_p103;
wire  signed [5:0] tmp_11_fu_1694_p105;
wire  signed [5:0] tmp_11_fu_1694_p107;
wire  signed [5:0] tmp_11_fu_1694_p109;
wire  signed [5:0] tmp_11_fu_1694_p111;
wire  signed [5:0] tmp_11_fu_1694_p113;
wire  signed [5:0] tmp_11_fu_1694_p115;
wire  signed [5:0] tmp_11_fu_1694_p117;
wire  signed [5:0] tmp_11_fu_1694_p119;
wire  signed [5:0] tmp_11_fu_1694_p121;
wire   [5:0] tmp_15_fu_1976_p1;
wire   [5:0] tmp_15_fu_1976_p3;
wire   [5:0] tmp_15_fu_1976_p5;
wire   [5:0] tmp_15_fu_1976_p7;
wire   [5:0] tmp_15_fu_1976_p9;
wire   [5:0] tmp_15_fu_1976_p11;
wire   [5:0] tmp_15_fu_1976_p13;
wire   [5:0] tmp_15_fu_1976_p15;
wire   [5:0] tmp_15_fu_1976_p17;
wire   [5:0] tmp_15_fu_1976_p19;
wire   [5:0] tmp_15_fu_1976_p21;
wire   [5:0] tmp_15_fu_1976_p23;
wire   [5:0] tmp_15_fu_1976_p25;
wire   [5:0] tmp_15_fu_1976_p27;
wire   [5:0] tmp_15_fu_1976_p29;
wire   [5:0] tmp_15_fu_1976_p31;
wire   [5:0] tmp_15_fu_1976_p33;
wire   [5:0] tmp_15_fu_1976_p35;
wire   [5:0] tmp_15_fu_1976_p37;
wire   [5:0] tmp_15_fu_1976_p39;
wire   [5:0] tmp_15_fu_1976_p41;
wire   [5:0] tmp_15_fu_1976_p43;
wire   [5:0] tmp_15_fu_1976_p45;
wire   [5:0] tmp_15_fu_1976_p47;
wire   [5:0] tmp_15_fu_1976_p49;
wire   [5:0] tmp_15_fu_1976_p51;
wire   [5:0] tmp_15_fu_1976_p53;
wire   [5:0] tmp_15_fu_1976_p55;
wire   [5:0] tmp_15_fu_1976_p57;
wire   [5:0] tmp_15_fu_1976_p59;
wire   [5:0] tmp_15_fu_1976_p61;
wire  signed [5:0] tmp_15_fu_1976_p63;
wire  signed [5:0] tmp_15_fu_1976_p65;
wire  signed [5:0] tmp_15_fu_1976_p67;
wire  signed [5:0] tmp_15_fu_1976_p69;
wire  signed [5:0] tmp_15_fu_1976_p71;
wire  signed [5:0] tmp_15_fu_1976_p73;
wire  signed [5:0] tmp_15_fu_1976_p75;
wire  signed [5:0] tmp_15_fu_1976_p77;
wire  signed [5:0] tmp_15_fu_1976_p79;
wire  signed [5:0] tmp_15_fu_1976_p81;
wire  signed [5:0] tmp_15_fu_1976_p83;
wire  signed [5:0] tmp_15_fu_1976_p85;
wire  signed [5:0] tmp_15_fu_1976_p87;
wire  signed [5:0] tmp_15_fu_1976_p89;
wire  signed [5:0] tmp_15_fu_1976_p91;
wire  signed [5:0] tmp_15_fu_1976_p93;
wire  signed [5:0] tmp_15_fu_1976_p95;
wire  signed [5:0] tmp_15_fu_1976_p97;
wire  signed [5:0] tmp_15_fu_1976_p99;
wire  signed [5:0] tmp_15_fu_1976_p101;
wire  signed [5:0] tmp_15_fu_1976_p103;
wire  signed [5:0] tmp_15_fu_1976_p105;
wire  signed [5:0] tmp_15_fu_1976_p107;
wire  signed [5:0] tmp_15_fu_1976_p109;
wire  signed [5:0] tmp_15_fu_1976_p111;
wire  signed [5:0] tmp_15_fu_1976_p113;
wire  signed [5:0] tmp_15_fu_1976_p115;
wire  signed [5:0] tmp_15_fu_1976_p117;
wire  signed [5:0] tmp_15_fu_1976_p119;
wire   [2:0] tmp_4_fu_2256_p1;
wire   [2:0] tmp_4_fu_2256_p3;
wire   [2:0] tmp_4_fu_2256_p5;
wire   [2:0] tmp_4_fu_2256_p7;
wire  signed [2:0] tmp_4_fu_2256_p9;
wire  signed [2:0] tmp_4_fu_2256_p11;
wire  signed [2:0] tmp_4_fu_2256_p13;
wire  signed [2:0] tmp_4_fu_2256_p15;
wire   [2:0] tmp_10_fu_2327_p1;
wire   [2:0] tmp_10_fu_2327_p3;
wire   [2:0] tmp_10_fu_2327_p5;
wire   [2:0] tmp_10_fu_2327_p7;
wire  signed [2:0] tmp_10_fu_2327_p9;
wire  signed [2:0] tmp_10_fu_2327_p11;
wire  signed [2:0] tmp_10_fu_2327_p13;
wire  signed [2:0] tmp_10_fu_2327_p15;
wire   [2:0] tmp_12_fu_2438_p1;
wire   [2:0] tmp_12_fu_2438_p3;
wire   [2:0] tmp_12_fu_2438_p5;
wire   [2:0] tmp_12_fu_2438_p7;
wire  signed [2:0] tmp_12_fu_2438_p9;
wire  signed [2:0] tmp_12_fu_2438_p11;
wire  signed [2:0] tmp_12_fu_2438_p13;
wire  signed [2:0] tmp_12_fu_2438_p15;
wire   [2:0] tmp_16_fu_2509_p1;
wire   [2:0] tmp_16_fu_2509_p3;
wire   [2:0] tmp_16_fu_2509_p5;
wire   [2:0] tmp_16_fu_2509_p7;
wire  signed [2:0] tmp_16_fu_2509_p9;
wire  signed [2:0] tmp_16_fu_2509_p11;
wire  signed [2:0] tmp_16_fu_2509_p13;
wire  signed [2:0] tmp_16_fu_2509_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_356 = 64'd0;
#0 prev_fu_360 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_123_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h1 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h3 ),.din2_WIDTH( 64 ),.CASE3( 6'h4 ),.din3_WIDTH( 64 ),.CASE4( 6'h5 ),.din4_WIDTH( 64 ),.CASE5( 6'h6 ),.din5_WIDTH( 64 ),.CASE6( 6'h7 ),.din6_WIDTH( 64 ),.CASE7( 6'h8 ),.din7_WIDTH( 64 ),.CASE8( 6'h9 ),.din8_WIDTH( 64 ),.CASE9( 6'hA ),.din9_WIDTH( 64 ),.CASE10( 6'hB ),.din10_WIDTH( 64 ),.CASE11( 6'hC ),.din11_WIDTH( 64 ),.CASE12( 6'hD ),.din12_WIDTH( 64 ),.CASE13( 6'hE ),.din13_WIDTH( 64 ),.CASE14( 6'hF ),.din14_WIDTH( 64 ),.CASE15( 6'h10 ),.din15_WIDTH( 64 ),.CASE16( 6'h11 ),.din16_WIDTH( 64 ),.CASE17( 6'h12 ),.din17_WIDTH( 64 ),.CASE18( 6'h13 ),.din18_WIDTH( 64 ),.CASE19( 6'h14 ),.din19_WIDTH( 64 ),.CASE20( 6'h15 ),.din20_WIDTH( 64 ),.CASE21( 6'h16 ),.din21_WIDTH( 64 ),.CASE22( 6'h17 ),.din22_WIDTH( 64 ),.CASE23( 6'h18 ),.din23_WIDTH( 64 ),.CASE24( 6'h19 ),.din24_WIDTH( 64 ),.CASE25( 6'h1A ),.din25_WIDTH( 64 ),.CASE26( 6'h1B ),.din26_WIDTH( 64 ),.CASE27( 6'h1C ),.din27_WIDTH( 64 ),.CASE28( 6'h1D ),.din28_WIDTH( 64 ),.CASE29( 6'h1E ),.din29_WIDTH( 64 ),.CASE30( 6'h1F ),.din30_WIDTH( 64 ),.CASE31( 6'h20 ),.din31_WIDTH( 64 ),.CASE32( 6'h21 ),.din32_WIDTH( 64 ),.CASE33( 6'h22 ),.din33_WIDTH( 64 ),.CASE34( 6'h23 ),.din34_WIDTH( 64 ),.CASE35( 6'h24 ),.din35_WIDTH( 64 ),.CASE36( 6'h25 ),.din36_WIDTH( 64 ),.CASE37( 6'h26 ),.din37_WIDTH( 64 ),.CASE38( 6'h27 ),.din38_WIDTH( 64 ),.CASE39( 6'h28 ),.din39_WIDTH( 64 ),.CASE40( 6'h29 ),.din40_WIDTH( 64 ),.CASE41( 6'h2A ),.din41_WIDTH( 64 ),.CASE42( 6'h2B ),.din42_WIDTH( 64 ),.CASE43( 6'h2C ),.din43_WIDTH( 64 ),.CASE44( 6'h2D ),.din44_WIDTH( 64 ),.CASE45( 6'h2E ),.din45_WIDTH( 64 ),.CASE46( 6'h2F ),.din46_WIDTH( 64 ),.CASE47( 6'h30 ),.din47_WIDTH( 64 ),.CASE48( 6'h31 ),.din48_WIDTH( 64 ),.CASE49( 6'h32 ),.din49_WIDTH( 64 ),.CASE50( 6'h33 ),.din50_WIDTH( 64 ),.CASE51( 6'h34 ),.din51_WIDTH( 64 ),.CASE52( 6'h35 ),.din52_WIDTH( 64 ),.CASE53( 6'h36 ),.din53_WIDTH( 64 ),.CASE54( 6'h37 ),.din54_WIDTH( 64 ),.CASE55( 6'h38 ),.din55_WIDTH( 64 ),.CASE56( 6'h39 ),.din56_WIDTH( 64 ),.CASE57( 6'h3A ),.din57_WIDTH( 64 ),.CASE58( 6'h3B ),.din58_WIDTH( 64 ),.CASE59( 6'h3C ),.din59_WIDTH( 64 ),.CASE60( 6'h3D ),.din60_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_123_6_64_1_1_U94(.din0(llike_1_load_1),.din1(llike_2_load_1),.din2(llike_3_load_1),.din3(llike_4_load_1),.din4(llike_5_load_1),.din5(llike_6_load_1),.din6(llike_7_load_1),.din7(llike_8_load_1),.din8(llike_9_load_1),.din9(llike_10_load_1),.din10(llike_11_load_1),.din11(llike_12_load_1),.din12(llike_13_load_1),.din13(llike_14_load_1),.din14(llike_15_load_1),.din15(llike_16_load_1),.din16(llike_17_load_1),.din17(llike_18_load_1),.din18(llike_19_load_1),.din19(llike_20_load_1),.din20(llike_21_load_1),.din21(llike_22_load_1),.din22(llike_23_load_1),.din23(llike_24_load_1),.din24(llike_25_load_1),.din25(llike_26_load_1),.din26(llike_27_load_1),.din27(llike_28_load_1),.din28(llike_29_load_1),.din29(llike_30_load_1),.din30(llike_31_load_1),.din31(llike_32_load_1),.din32(llike_33_load_1),.din33(llike_34_load_1),.din34(llike_35_load_1),.din35(llike_36_load_1),.din36(llike_37_load_1),.din37(llike_38_load_1),.din38(llike_39_load_1),.din39(llike_40_load_1),.din40(llike_41_load_1),.din41(llike_42_load_1),.din42(llike_43_load_1),.din43(llike_44_load_1),.din44(llike_45_load_1),.din45(llike_46_load_1),.din46(llike_47_load_1),.din47(llike_48_load_1),.din48(llike_49_load_1),.din49(llike_50_load_1),.din50(llike_51_load_1),.din51(llike_52_load_1),.din52(llike_53_load_1),.din53(llike_54_load_1),.din54(llike_55_load_1),.din55(llike_56_load_1),.din56(llike_57_load_1),.din57(llike_58_load_1),.din58(llike_59_load_1),.din59(llike_60_load_1),.din60(llike_61_load_1),.def(tmp_2_fu_1126_p123),.sel(ap_sig_allocacmp_prev_1),.dout(tmp_2_fu_1126_p125));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_123_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h1 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h3 ),.din2_WIDTH( 64 ),.CASE3( 6'h4 ),.din3_WIDTH( 64 ),.CASE4( 6'h5 ),.din4_WIDTH( 64 ),.CASE5( 6'h6 ),.din5_WIDTH( 64 ),.CASE6( 6'h7 ),.din6_WIDTH( 64 ),.CASE7( 6'h8 ),.din7_WIDTH( 64 ),.CASE8( 6'h9 ),.din8_WIDTH( 64 ),.CASE9( 6'hA ),.din9_WIDTH( 64 ),.CASE10( 6'hB ),.din10_WIDTH( 64 ),.CASE11( 6'hC ),.din11_WIDTH( 64 ),.CASE12( 6'hD ),.din12_WIDTH( 64 ),.CASE13( 6'hE ),.din13_WIDTH( 64 ),.CASE14( 6'hF ),.din14_WIDTH( 64 ),.CASE15( 6'h10 ),.din15_WIDTH( 64 ),.CASE16( 6'h11 ),.din16_WIDTH( 64 ),.CASE17( 6'h12 ),.din17_WIDTH( 64 ),.CASE18( 6'h13 ),.din18_WIDTH( 64 ),.CASE19( 6'h14 ),.din19_WIDTH( 64 ),.CASE20( 6'h15 ),.din20_WIDTH( 64 ),.CASE21( 6'h16 ),.din21_WIDTH( 64 ),.CASE22( 6'h17 ),.din22_WIDTH( 64 ),.CASE23( 6'h18 ),.din23_WIDTH( 64 ),.CASE24( 6'h19 ),.din24_WIDTH( 64 ),.CASE25( 6'h1A ),.din25_WIDTH( 64 ),.CASE26( 6'h1B ),.din26_WIDTH( 64 ),.CASE27( 6'h1C ),.din27_WIDTH( 64 ),.CASE28( 6'h1D ),.din28_WIDTH( 64 ),.CASE29( 6'h1E ),.din29_WIDTH( 64 ),.CASE30( 6'h1F ),.din30_WIDTH( 64 ),.CASE31( 6'h20 ),.din31_WIDTH( 64 ),.CASE32( 6'h21 ),.din32_WIDTH( 64 ),.CASE33( 6'h22 ),.din33_WIDTH( 64 ),.CASE34( 6'h23 ),.din34_WIDTH( 64 ),.CASE35( 6'h24 ),.din35_WIDTH( 64 ),.CASE36( 6'h25 ),.din36_WIDTH( 64 ),.CASE37( 6'h26 ),.din37_WIDTH( 64 ),.CASE38( 6'h27 ),.din38_WIDTH( 64 ),.CASE39( 6'h28 ),.din39_WIDTH( 64 ),.CASE40( 6'h29 ),.din40_WIDTH( 64 ),.CASE41( 6'h2A ),.din41_WIDTH( 64 ),.CASE42( 6'h2B ),.din42_WIDTH( 64 ),.CASE43( 6'h2C ),.din43_WIDTH( 64 ),.CASE44( 6'h2D ),.din44_WIDTH( 64 ),.CASE45( 6'h2E ),.din45_WIDTH( 64 ),.CASE46( 6'h2F ),.din46_WIDTH( 64 ),.CASE47( 6'h30 ),.din47_WIDTH( 64 ),.CASE48( 6'h31 ),.din48_WIDTH( 64 ),.CASE49( 6'h32 ),.din49_WIDTH( 64 ),.CASE50( 6'h33 ),.din50_WIDTH( 64 ),.CASE51( 6'h34 ),.din51_WIDTH( 64 ),.CASE52( 6'h35 ),.din52_WIDTH( 64 ),.CASE53( 6'h36 ),.din53_WIDTH( 64 ),.CASE54( 6'h37 ),.din54_WIDTH( 64 ),.CASE55( 6'h38 ),.din55_WIDTH( 64 ),.CASE56( 6'h39 ),.din56_WIDTH( 64 ),.CASE57( 6'h3A ),.din57_WIDTH( 64 ),.CASE58( 6'h3B ),.din58_WIDTH( 64 ),.CASE59( 6'h3C ),.din59_WIDTH( 64 ),.CASE60( 6'h3D ),.din60_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_123_6_64_1_1_U95(.din0(llike_2_load_1),.din1(llike_3_load_1),.din2(llike_4_load_1),.din3(llike_5_load_1),.din4(llike_6_load_1),.din5(llike_7_load_1),.din6(llike_8_load_1),.din7(llike_9_load_1),.din8(llike_10_load_1),.din9(llike_11_load_1),.din10(llike_12_load_1),.din11(llike_13_load_1),.din12(llike_14_load_1),.din13(llike_15_load_1),.din14(llike_16_load_1),.din15(llike_17_load_1),.din16(llike_18_load_1),.din17(llike_19_load_1),.din18(llike_20_load_1),.din19(llike_21_load_1),.din20(llike_22_load_1),.din21(llike_23_load_1),.din22(llike_24_load_1),.din23(llike_25_load_1),.din24(llike_26_load_1),.din25(llike_27_load_1),.din26(llike_28_load_1),.din27(llike_29_load_1),.din28(llike_30_load_1),.din29(llike_31_load_1),.din30(llike_32_load_1),.din31(llike_33_load_1),.din32(llike_34_load_1),.din33(llike_35_load_1),.din34(llike_36_load_1),.din35(llike_37_load_1),.din36(llike_38_load_1),.din37(llike_39_load_1),.din38(llike_40_load_1),.din39(llike_41_load_1),.din40(llike_42_load_1),.din41(llike_43_load_1),.din42(llike_44_load_1),.din43(llike_45_load_1),.din44(llike_46_load_1),.din45(llike_47_load_1),.din46(llike_48_load_1),.din47(llike_49_load_1),.din48(llike_50_load_1),.din49(llike_51_load_1),.din50(llike_52_load_1),.din51(llike_53_load_1),.din52(llike_54_load_1),.din53(llike_55_load_1),.din54(llike_56_load_1),.din55(llike_57_load_1),.din56(llike_58_load_1),.din57(llike_59_load_1),.din58(llike_60_load_1),.din59(llike_61_load_1),.din60(llike_62_load_1),.def(tmp_6_fu_1406_p123),.sel(ap_sig_allocacmp_prev_1),.dout(tmp_6_fu_1406_p125));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_123_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h1 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h3 ),.din2_WIDTH( 64 ),.CASE3( 6'h4 ),.din3_WIDTH( 64 ),.CASE4( 6'h5 ),.din4_WIDTH( 64 ),.CASE5( 6'h6 ),.din5_WIDTH( 64 ),.CASE6( 6'h7 ),.din6_WIDTH( 64 ),.CASE7( 6'h8 ),.din7_WIDTH( 64 ),.CASE8( 6'h9 ),.din8_WIDTH( 64 ),.CASE9( 6'hA ),.din9_WIDTH( 64 ),.CASE10( 6'hB ),.din10_WIDTH( 64 ),.CASE11( 6'hC ),.din11_WIDTH( 64 ),.CASE12( 6'hD ),.din12_WIDTH( 64 ),.CASE13( 6'hE ),.din13_WIDTH( 64 ),.CASE14( 6'hF ),.din14_WIDTH( 64 ),.CASE15( 6'h10 ),.din15_WIDTH( 64 ),.CASE16( 6'h11 ),.din16_WIDTH( 64 ),.CASE17( 6'h12 ),.din17_WIDTH( 64 ),.CASE18( 6'h13 ),.din18_WIDTH( 64 ),.CASE19( 6'h14 ),.din19_WIDTH( 64 ),.CASE20( 6'h15 ),.din20_WIDTH( 64 ),.CASE21( 6'h16 ),.din21_WIDTH( 64 ),.CASE22( 6'h17 ),.din22_WIDTH( 64 ),.CASE23( 6'h18 ),.din23_WIDTH( 64 ),.CASE24( 6'h19 ),.din24_WIDTH( 64 ),.CASE25( 6'h1A ),.din25_WIDTH( 64 ),.CASE26( 6'h1B ),.din26_WIDTH( 64 ),.CASE27( 6'h1C ),.din27_WIDTH( 64 ),.CASE28( 6'h1D ),.din28_WIDTH( 64 ),.CASE29( 6'h1E ),.din29_WIDTH( 64 ),.CASE30( 6'h1F ),.din30_WIDTH( 64 ),.CASE31( 6'h20 ),.din31_WIDTH( 64 ),.CASE32( 6'h21 ),.din32_WIDTH( 64 ),.CASE33( 6'h22 ),.din33_WIDTH( 64 ),.CASE34( 6'h23 ),.din34_WIDTH( 64 ),.CASE35( 6'h24 ),.din35_WIDTH( 64 ),.CASE36( 6'h25 ),.din36_WIDTH( 64 ),.CASE37( 6'h26 ),.din37_WIDTH( 64 ),.CASE38( 6'h27 ),.din38_WIDTH( 64 ),.CASE39( 6'h28 ),.din39_WIDTH( 64 ),.CASE40( 6'h29 ),.din40_WIDTH( 64 ),.CASE41( 6'h2A ),.din41_WIDTH( 64 ),.CASE42( 6'h2B ),.din42_WIDTH( 64 ),.CASE43( 6'h2C ),.din43_WIDTH( 64 ),.CASE44( 6'h2D ),.din44_WIDTH( 64 ),.CASE45( 6'h2E ),.din45_WIDTH( 64 ),.CASE46( 6'h2F ),.din46_WIDTH( 64 ),.CASE47( 6'h30 ),.din47_WIDTH( 64 ),.CASE48( 6'h31 ),.din48_WIDTH( 64 ),.CASE49( 6'h32 ),.din49_WIDTH( 64 ),.CASE50( 6'h33 ),.din50_WIDTH( 64 ),.CASE51( 6'h34 ),.din51_WIDTH( 64 ),.CASE52( 6'h35 ),.din52_WIDTH( 64 ),.CASE53( 6'h36 ),.din53_WIDTH( 64 ),.CASE54( 6'h37 ),.din54_WIDTH( 64 ),.CASE55( 6'h38 ),.din55_WIDTH( 64 ),.CASE56( 6'h39 ),.din56_WIDTH( 64 ),.CASE57( 6'h3A ),.din57_WIDTH( 64 ),.CASE58( 6'h3B ),.din58_WIDTH( 64 ),.CASE59( 6'h3C ),.din59_WIDTH( 64 ),.CASE60( 6'h3D ),.din60_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_123_6_64_1_1_U96(.din0(llike_3_load_1),.din1(llike_4_load_1),.din2(llike_5_load_1),.din3(llike_6_load_1),.din4(llike_7_load_1),.din5(llike_8_load_1),.din6(llike_9_load_1),.din7(llike_10_load_1),.din8(llike_11_load_1),.din9(llike_12_load_1),.din10(llike_13_load_1),.din11(llike_14_load_1),.din12(llike_15_load_1),.din13(llike_16_load_1),.din14(llike_17_load_1),.din15(llike_18_load_1),.din16(llike_19_load_1),.din17(llike_20_load_1),.din18(llike_21_load_1),.din19(llike_22_load_1),.din20(llike_23_load_1),.din21(llike_24_load_1),.din22(llike_25_load_1),.din23(llike_26_load_1),.din24(llike_27_load_1),.din25(llike_28_load_1),.din26(llike_29_load_1),.din27(llike_30_load_1),.din28(llike_31_load_1),.din29(llike_32_load_1),.din30(llike_33_load_1),.din31(llike_34_load_1),.din32(llike_35_load_1),.din33(llike_36_load_1),.din34(llike_37_load_1),.din35(llike_38_load_1),.din36(llike_39_load_1),.din37(llike_40_load_1),.din38(llike_41_load_1),.din39(llike_42_load_1),.din40(llike_43_load_1),.din41(llike_44_load_1),.din42(llike_45_load_1),.din43(llike_46_load_1),.din44(llike_47_load_1),.din45(llike_48_load_1),.din46(llike_49_load_1),.din47(llike_50_load_1),.din48(llike_51_load_1),.din49(llike_52_load_1),.din50(llike_53_load_1),.din51(llike_54_load_1),.din52(llike_55_load_1),.din53(llike_56_load_1),.din54(llike_57_load_1),.din55(llike_58_load_1),.din56(llike_59_load_1),.din57(llike_60_load_1),.din58(llike_61_load_1),.din59(llike_62_load_1),.din60(llike_63_load_1),.def(tmp_11_fu_1694_p123),.sel(ap_sig_allocacmp_prev_1),.dout(tmp_11_fu_1694_p125));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_121_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h1 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h3 ),.din2_WIDTH( 64 ),.CASE3( 6'h4 ),.din3_WIDTH( 64 ),.CASE4( 6'h5 ),.din4_WIDTH( 64 ),.CASE5( 6'h6 ),.din5_WIDTH( 64 ),.CASE6( 6'h7 ),.din6_WIDTH( 64 ),.CASE7( 6'h8 ),.din7_WIDTH( 64 ),.CASE8( 6'h9 ),.din8_WIDTH( 64 ),.CASE9( 6'hA ),.din9_WIDTH( 64 ),.CASE10( 6'hB ),.din10_WIDTH( 64 ),.CASE11( 6'hC ),.din11_WIDTH( 64 ),.CASE12( 6'hD ),.din12_WIDTH( 64 ),.CASE13( 6'hE ),.din13_WIDTH( 64 ),.CASE14( 6'hF ),.din14_WIDTH( 64 ),.CASE15( 6'h10 ),.din15_WIDTH( 64 ),.CASE16( 6'h11 ),.din16_WIDTH( 64 ),.CASE17( 6'h12 ),.din17_WIDTH( 64 ),.CASE18( 6'h13 ),.din18_WIDTH( 64 ),.CASE19( 6'h14 ),.din19_WIDTH( 64 ),.CASE20( 6'h15 ),.din20_WIDTH( 64 ),.CASE21( 6'h16 ),.din21_WIDTH( 64 ),.CASE22( 6'h17 ),.din22_WIDTH( 64 ),.CASE23( 6'h18 ),.din23_WIDTH( 64 ),.CASE24( 6'h19 ),.din24_WIDTH( 64 ),.CASE25( 6'h1A ),.din25_WIDTH( 64 ),.CASE26( 6'h1B ),.din26_WIDTH( 64 ),.CASE27( 6'h1C ),.din27_WIDTH( 64 ),.CASE28( 6'h1D ),.din28_WIDTH( 64 ),.CASE29( 6'h1E ),.din29_WIDTH( 64 ),.CASE30( 6'h1F ),.din30_WIDTH( 64 ),.CASE31( 6'h20 ),.din31_WIDTH( 64 ),.CASE32( 6'h21 ),.din32_WIDTH( 64 ),.CASE33( 6'h22 ),.din33_WIDTH( 64 ),.CASE34( 6'h23 ),.din34_WIDTH( 64 ),.CASE35( 6'h24 ),.din35_WIDTH( 64 ),.CASE36( 6'h25 ),.din36_WIDTH( 64 ),.CASE37( 6'h26 ),.din37_WIDTH( 64 ),.CASE38( 6'h27 ),.din38_WIDTH( 64 ),.CASE39( 6'h28 ),.din39_WIDTH( 64 ),.CASE40( 6'h29 ),.din40_WIDTH( 64 ),.CASE41( 6'h2A ),.din41_WIDTH( 64 ),.CASE42( 6'h2B ),.din42_WIDTH( 64 ),.CASE43( 6'h2C ),.din43_WIDTH( 64 ),.CASE44( 6'h2D ),.din44_WIDTH( 64 ),.CASE45( 6'h2E ),.din45_WIDTH( 64 ),.CASE46( 6'h2F ),.din46_WIDTH( 64 ),.CASE47( 6'h30 ),.din47_WIDTH( 64 ),.CASE48( 6'h31 ),.din48_WIDTH( 64 ),.CASE49( 6'h32 ),.din49_WIDTH( 64 ),.CASE50( 6'h33 ),.din50_WIDTH( 64 ),.CASE51( 6'h34 ),.din51_WIDTH( 64 ),.CASE52( 6'h35 ),.din52_WIDTH( 64 ),.CASE53( 6'h36 ),.din53_WIDTH( 64 ),.CASE54( 6'h37 ),.din54_WIDTH( 64 ),.CASE55( 6'h38 ),.din55_WIDTH( 64 ),.CASE56( 6'h39 ),.din56_WIDTH( 64 ),.CASE57( 6'h3A ),.din57_WIDTH( 64 ),.CASE58( 6'h3B ),.din58_WIDTH( 64 ),.CASE59( 6'h3C ),.din59_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_121_6_64_1_1_U97(.din0(llike_4_load_1),.din1(llike_5_load_1),.din2(llike_6_load_1),.din3(llike_7_load_1),.din4(llike_8_load_1),.din5(llike_9_load_1),.din6(llike_10_load_1),.din7(llike_11_load_1),.din8(llike_12_load_1),.din9(llike_13_load_1),.din10(llike_14_load_1),.din11(llike_15_load_1),.din12(llike_16_load_1),.din13(llike_17_load_1),.din14(llike_18_load_1),.din15(llike_19_load_1),.din16(llike_20_load_1),.din17(llike_21_load_1),.din18(llike_22_load_1),.din19(llike_23_load_1),.din20(llike_24_load_1),.din21(llike_25_load_1),.din22(llike_26_load_1),.din23(llike_27_load_1),.din24(llike_28_load_1),.din25(llike_29_load_1),.din26(llike_30_load_1),.din27(llike_31_load_1),.din28(llike_32_load_1),.din29(llike_33_load_1),.din30(llike_34_load_1),.din31(llike_35_load_1),.din32(llike_36_load_1),.din33(llike_37_load_1),.din34(llike_38_load_1),.din35(llike_39_load_1),.din36(llike_40_load_1),.din37(llike_41_load_1),.din38(llike_42_load_1),.din39(llike_43_load_1),.din40(llike_44_load_1),.din41(llike_45_load_1),.din42(llike_46_load_1),.din43(llike_47_load_1),.din44(llike_48_load_1),.din45(llike_49_load_1),.din46(llike_50_load_1),.din47(llike_51_load_1),.din48(llike_52_load_1),.din49(llike_53_load_1),.din50(llike_54_load_1),.din51(llike_55_load_1),.din52(llike_56_load_1),.din53(llike_57_load_1),.din54(llike_58_load_1),.din55(llike_59_load_1),.din56(llike_60_load_1),.din57(llike_61_load_1),.din58(llike_62_load_1),.din59(llike_63_load_1),.def(tmp_15_fu_1976_p121),.sel(ap_sig_allocacmp_prev_1),.dout(tmp_15_fu_1976_p123));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U98(.din0(tmp_4_fu_2256_p2),.din1(tmp_4_fu_2256_p4),.din2(tmp_4_fu_2256_p6),.din3(tmp_4_fu_2256_p8),.din4(tmp_4_fu_2256_p10),.din5(tmp_4_fu_2256_p12),.din6(tmp_4_fu_2256_p14),.din7(tmp_4_fu_2256_p16),.def(tmp_4_fu_2256_p17),.sel(empty),.dout(tmp_4_fu_2256_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U99(.din0(tmp_10_fu_2327_p2),.din1(tmp_10_fu_2327_p4),.din2(tmp_10_fu_2327_p6),.din3(tmp_10_fu_2327_p8),.din4(tmp_10_fu_2327_p10),.din5(tmp_10_fu_2327_p12),.din6(tmp_10_fu_2327_p14),.din7(tmp_10_fu_2327_p16),.def(tmp_10_fu_2327_p17),.sel(empty),.dout(tmp_10_fu_2327_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U100(.din0(tmp_12_fu_2438_p2),.din1(tmp_12_fu_2438_p4),.din2(tmp_12_fu_2438_p6),.din3(tmp_12_fu_2438_p8),.din4(tmp_12_fu_2438_p10),.din5(tmp_12_fu_2438_p12),.din6(tmp_12_fu_2438_p14),.din7(tmp_12_fu_2438_p16),.def(tmp_12_fu_2438_p17),.sel(empty),.dout(tmp_12_fu_2438_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U101(.din0(tmp_16_fu_2509_p2),.din1(tmp_16_fu_2509_p4),.din2(tmp_16_fu_2509_p6),.din3(tmp_16_fu_2509_p8),.din4(tmp_16_fu_2509_p10),.din5(tmp_16_fu_2509_p12),.din6(tmp_16_fu_2509_p14),.din7(tmp_16_fu_2509_p16),.def(tmp_16_fu_2509_p17),.sel(empty),.dout(tmp_16_fu_2509_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_356 <= min_p_66;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_158_reg_3062_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_356 <= min_p_75_fu_2908_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_360 <= 6'd1;
    end else if (((tmp_158_reg_3062 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_360 <= add_ln25_1_fu_2548_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_3171 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_3176 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_3181 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_3186 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_3057 <= add_ln25_fu_1962_p2;
        prev_1_reg_2952 <= ap_sig_allocacmp_prev_1;
        tmp_11_reg_3047 <= tmp_11_fu_1694_p125;
        tmp_158_reg_3062 <= add_ln25_fu_1962_p2[32'd6];
        tmp_158_reg_3062_pp0_iter1_reg <= tmp_158_reg_3062;
        tmp_158_reg_3062_pp0_iter2_reg <= tmp_158_reg_3062_pp0_iter1_reg;
        tmp_158_reg_3062_pp0_iter3_reg <= tmp_158_reg_3062_pp0_iter2_reg;
        tmp_15_reg_3066 <= tmp_15_fu_1976_p123;
        tmp_167_reg_3052 <= {{add_ln27_1_fu_1946_p2[8:3]}};
        tmp_2_reg_2957 <= tmp_2_fu_1126_p125;
        tmp_6_reg_3002 <= tmp_6_fu_1406_p125;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_3205 <= and_ln29_1_fu_2638_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_3231 <= and_ln29_3_fu_2726_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_3250 <= and_ln29_5_fu_2814_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_67_reg_3198 <= min_p_fu_356;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_69_reg_3217 <= min_p_69_fu_2644_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_71_reg_3243 <= min_p_71_fu_2732_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_73_reg_3255 <= min_p_73_fu_2820_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_32_reg_3210 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_33_reg_3224 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_34_reg_3236 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_3191 <= grp_fu_4451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_10_reg_3076 <= tmp_10_fu_2327_p19;
        tmp_4_reg_3071 <= tmp_4_fu_2256_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_12_reg_3161 <= tmp_12_fu_2438_p19;
        tmp_16_reg_3166 <= tmp_16_fu_2509_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_173_reg_3262 <= grp_fu_7996_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_158_reg_3062 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_158_reg_3062_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
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
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_360;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1101_p0 = add52_3_reg_3186;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1101_p0 = add52_2_reg_3181;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1101_p0 = add52_1_reg_3176;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1101_p0 = add1_reg_3171;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1101_p0 = tmp_15_reg_3066;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1101_p0 = tmp_11_reg_3047;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1101_p0 = tmp_6_reg_3002;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1101_p0 = tmp_2_reg_2957;
    end else begin
        grp_fu_1101_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1101_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1101_p1 = tmp_16_reg_3166;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1101_p1 = tmp_12_reg_3161;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1101_p1 = tmp_10_reg_3076;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1101_p1 = tmp_4_reg_3071;
    end else begin
        grp_fu_1101_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1105_p0 = p_34_reg_3236;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1105_p0 = p_33_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1105_p0 = p_32_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1105_p0 = p_reg_3191;
    end else begin
        grp_fu_1105_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1105_p1 = min_p_73_fu_2820_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1105_p1 = min_p_71_fu_2732_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1105_p1 = min_p_69_fu_2644_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1105_p1 = min_p_fu_356;
    end else begin
        grp_fu_1105_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_158_reg_3062_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_74_out_ap_vld = 1'b1;
    end else begin
        min_p_74_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln27_3_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_1682_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln27_2_fu_2372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_1394_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln25_1_fu_2548_p2 = (prev_1_reg_2952 + 6'd4);
assign add_ln25_fu_1962_p2 = (zext_ln15_fu_1122_p1 + 7'd3);
assign add_ln27_1_fu_1946_p2 = (shl_ln1_fu_1378_p3 + 9'd16);
assign add_ln27_2_fu_1674_p3 = {{tmp_163_fu_1664_p4}, {lshr_ln}};
assign add_ln27_4_fu_2366_p3 = {{tmp_167_reg_3052}, {lshr_ln}};
assign add_ln27_5_fu_2387_p3 = {{trunc_ln27_fu_2384_p1}, {lshr_ln}};
assign add_ln27_fu_1658_p2 = (shl_ln1_fu_1378_p3 + 9'd8);
assign add_ln_fu_1386_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_2638_p2 = (or_ln29_1_fu_2626_p2 & and_ln29_fu_2632_p2);
assign and_ln29_2_fu_2720_p2 = (or_ln29_3_fu_2714_p2 & or_ln29_2_fu_2696_p2);
assign and_ln29_3_fu_2726_p2 = (grp_fu_7996_p_dout0 & and_ln29_2_fu_2720_p2);
assign and_ln29_4_fu_2808_p2 = (or_ln29_5_fu_2802_p2 & or_ln29_4_fu_2784_p2);
assign and_ln29_5_fu_2814_p2 = (grp_fu_7996_p_dout0 & and_ln29_4_fu_2808_p2);
assign and_ln29_6_fu_2897_p2 = (or_ln29_7_fu_2891_p2 & or_ln29_6_fu_2873_p2);
assign and_ln29_7_fu_2903_p2 = (tmp_173_reg_3262 & and_ln29_6_fu_2897_p2);
assign and_ln29_fu_2632_p2 = (or_ln29_fu_2608_p2 & grp_fu_7996_p_dout0);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_1_fu_2579_p1 = min_p_67_reg_3198;
assign bitcast_ln29_2_fu_2650_p1 = p_32_reg_3210;
assign bitcast_ln29_3_fu_2667_p1 = min_p_69_reg_3217;
assign bitcast_ln29_4_fu_2738_p1 = p_33_reg_3224;
assign bitcast_ln29_5_fu_2755_p1 = min_p_71_reg_3243;
assign bitcast_ln29_6_fu_2827_p1 = p_34_reg_3236;
assign bitcast_ln29_7_fu_2844_p1 = min_p_73_reg_3255;
assign bitcast_ln29_fu_2562_p1 = p_reg_3191;
assign grp_fu_4451_p_ce = 1'b1;
assign grp_fu_4451_p_din0 = grp_fu_1101_p0;
assign grp_fu_4451_p_din1 = grp_fu_1101_p1;
assign grp_fu_4451_p_opcode = 2'd0;
assign grp_fu_7996_p_ce = 1'b1;
assign grp_fu_7996_p_din0 = grp_fu_1105_p0;
assign grp_fu_7996_p_din1 = grp_fu_1105_p1;
assign grp_fu_7996_p_opcode = 5'd4;
assign icmp_ln29_10_fu_2790_p2 = ((tmp_169_fu_2758_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_2796_p2 = ((trunc_ln29_5_fu_2768_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_2861_p2 = ((tmp_171_fu_2830_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_2867_p2 = ((trunc_ln29_6_fu_2840_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_2879_p2 = ((tmp_172_fu_2847_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_2885_p2 = ((trunc_ln29_7_fu_2857_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_2602_p2 = ((trunc_ln29_fu_2575_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_2614_p2 = ((tmp_161_fu_2582_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_2620_p2 = ((trunc_ln29_1_fu_2592_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_2684_p2 = ((tmp_164_fu_2653_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_2690_p2 = ((trunc_ln29_2_fu_2663_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_2702_p2 = ((tmp_165_fu_2670_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_2708_p2 = ((trunc_ln29_3_fu_2680_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_2772_p2 = ((tmp_168_fu_2741_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_2778_p2 = ((trunc_ln29_4_fu_2751_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_2596_p2 = ((tmp_s_fu_2565_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign min_p_69_fu_2644_p3 = ((and_ln29_1_reg_3205[0:0] == 1'b1) ? p_reg_3191 : min_p_67_reg_3198);
assign min_p_71_fu_2732_p3 = ((and_ln29_3_reg_3231[0:0] == 1'b1) ? p_32_reg_3210 : min_p_69_reg_3217);
assign min_p_73_fu_2820_p3 = ((and_ln29_5_reg_3250[0:0] == 1'b1) ? p_33_reg_3224 : min_p_71_reg_3243);
assign min_p_74_out = ((and_ln29_5_reg_3250[0:0] == 1'b1) ? p_33_reg_3224 : min_p_71_reg_3243);
assign min_p_75_fu_2908_p3 = ((and_ln29_7_fu_2903_p2[0:0] == 1'b1) ? p_34_reg_3236 : min_p_73_reg_3255);
assign or_ln29_1_fu_2626_p2 = (icmp_ln29_3_fu_2620_p2 | icmp_ln29_2_fu_2614_p2);
assign or_ln29_2_fu_2696_p2 = (icmp_ln29_5_fu_2690_p2 | icmp_ln29_4_fu_2684_p2);
assign or_ln29_3_fu_2714_p2 = (icmp_ln29_7_fu_2708_p2 | icmp_ln29_6_fu_2702_p2);
assign or_ln29_4_fu_2784_p2 = (icmp_ln29_9_fu_2778_p2 | icmp_ln29_8_fu_2772_p2);
assign or_ln29_5_fu_2802_p2 = (icmp_ln29_11_fu_2796_p2 | icmp_ln29_10_fu_2790_p2);
assign or_ln29_6_fu_2873_p2 = (icmp_ln29_13_fu_2867_p2 | icmp_ln29_12_fu_2861_p2);
assign or_ln29_7_fu_2891_p2 = (icmp_ln29_15_fu_2885_p2 | icmp_ln29_14_fu_2879_p2);
assign or_ln29_fu_2608_p2 = (icmp_ln29_fu_2596_p2 | icmp_ln29_1_fu_2602_p2);
assign shl_ln1_fu_1378_p3 = {{ap_sig_allocacmp_prev_1}, {3'd0}};
assign tmp_10_fu_2327_p10 = transition_4_q0;
assign tmp_10_fu_2327_p12 = transition_5_q0;
assign tmp_10_fu_2327_p14 = transition_6_q0;
assign tmp_10_fu_2327_p16 = transition_7_q0;
assign tmp_10_fu_2327_p17 = 'bx;
assign tmp_10_fu_2327_p2 = transition_0_q0;
assign tmp_10_fu_2327_p4 = transition_1_q0;
assign tmp_10_fu_2327_p6 = transition_2_q0;
assign tmp_10_fu_2327_p8 = transition_3_q0;
assign tmp_11_fu_1694_p123 = 'bx;
assign tmp_12_fu_2438_p10 = transition_4_q1;
assign tmp_12_fu_2438_p12 = transition_5_q1;
assign tmp_12_fu_2438_p14 = transition_6_q1;
assign tmp_12_fu_2438_p16 = transition_7_q1;
assign tmp_12_fu_2438_p17 = 'bx;
assign tmp_12_fu_2438_p2 = transition_0_q1;
assign tmp_12_fu_2438_p4 = transition_1_q1;
assign tmp_12_fu_2438_p6 = transition_2_q1;
assign tmp_12_fu_2438_p8 = transition_3_q1;
assign tmp_15_fu_1976_p121 = 'bx;
assign tmp_161_fu_2582_p4 = {{bitcast_ln29_1_fu_2579_p1[62:52]}};
assign tmp_163_fu_1664_p4 = {{add_ln27_fu_1658_p2[8:3]}};
assign tmp_164_fu_2653_p4 = {{bitcast_ln29_2_fu_2650_p1[62:52]}};
assign tmp_165_fu_2670_p4 = {{bitcast_ln29_3_fu_2667_p1[62:52]}};
assign tmp_168_fu_2741_p4 = {{bitcast_ln29_4_fu_2738_p1[62:52]}};
assign tmp_169_fu_2758_p4 = {{bitcast_ln29_5_fu_2755_p1[62:52]}};
assign tmp_16_fu_2509_p10 = transition_4_q0;
assign tmp_16_fu_2509_p12 = transition_5_q0;
assign tmp_16_fu_2509_p14 = transition_6_q0;
assign tmp_16_fu_2509_p16 = transition_7_q0;
assign tmp_16_fu_2509_p17 = 'bx;
assign tmp_16_fu_2509_p2 = transition_0_q0;
assign tmp_16_fu_2509_p4 = transition_1_q0;
assign tmp_16_fu_2509_p6 = transition_2_q0;
assign tmp_16_fu_2509_p8 = transition_3_q0;
assign tmp_171_fu_2830_p4 = {{bitcast_ln29_6_fu_2827_p1[62:52]}};
assign tmp_172_fu_2847_p4 = {{bitcast_ln29_7_fu_2844_p1[62:52]}};
assign tmp_2_fu_1126_p123 = 'bx;
assign tmp_4_fu_2256_p10 = transition_4_q1;
assign tmp_4_fu_2256_p12 = transition_5_q1;
assign tmp_4_fu_2256_p14 = transition_6_q1;
assign tmp_4_fu_2256_p16 = transition_7_q1;
assign tmp_4_fu_2256_p17 = 'bx;
assign tmp_4_fu_2256_p2 = transition_0_q1;
assign tmp_4_fu_2256_p4 = transition_1_q1;
assign tmp_4_fu_2256_p6 = transition_2_q1;
assign tmp_4_fu_2256_p8 = transition_3_q1;
assign tmp_6_fu_1406_p123 = 'bx;
assign tmp_s_fu_2565_p4 = {{bitcast_ln29_fu_2562_p1[62:52]}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_address1 = transition_4_address1_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_4_ce1 = transition_4_ce1_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_address1 = transition_5_address1_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_5_ce1 = transition_5_ce1_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_address1 = transition_6_address1_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_6_ce1 = transition_6_ce1_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_address1 = transition_7_address1_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign transition_7_ce1 = transition_7_ce1_local;
assign trunc_ln27_fu_2384_p1 = add_ln25_reg_3057[5:0];
assign trunc_ln29_1_fu_2592_p1 = bitcast_ln29_1_fu_2579_p1[51:0];
assign trunc_ln29_2_fu_2663_p1 = bitcast_ln29_2_fu_2650_p1[51:0];
assign trunc_ln29_3_fu_2680_p1 = bitcast_ln29_3_fu_2667_p1[51:0];
assign trunc_ln29_4_fu_2751_p1 = bitcast_ln29_4_fu_2738_p1[51:0];
assign trunc_ln29_5_fu_2768_p1 = bitcast_ln29_5_fu_2755_p1[51:0];
assign trunc_ln29_6_fu_2840_p1 = bitcast_ln29_6_fu_2827_p1[51:0];
assign trunc_ln29_7_fu_2857_p1 = bitcast_ln29_7_fu_2844_p1[51:0];
assign trunc_ln29_fu_2575_p1 = bitcast_ln29_fu_2562_p1[51:0];
assign zext_ln15_fu_1122_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln27_1_fu_1682_p1 = add_ln27_2_fu_1674_p3;
assign zext_ln27_2_fu_2372_p1 = add_ln27_4_fu_2366_p3;
assign zext_ln27_3_fu_2394_p1 = add_ln27_5_fu_2387_p3;
assign zext_ln27_fu_1394_p1 = add_ln_fu_1386_p3;
endmodule 