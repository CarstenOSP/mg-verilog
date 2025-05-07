module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_18,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_9,llike_address0,llike_ce0,llike_q0,empty,min_p_34_out,min_p_34_out_ap_vld,grp_fu_992_p_din0,grp_fu_992_p_din1,grp_fu_992_p_opcode,grp_fu_992_p_dout0,grp_fu_992_p_ce,grp_fu_2009_p_din0,grp_fu_2009_p_din1,grp_fu_2009_p_opcode,grp_fu_2009_p_dout0,grp_fu_2009_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_18;
input  [7:0] empty_9;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_2_address1;
output   llike_2_ce1;
input  [63:0] llike_2_q1;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [11:0] llike_3_address1;
output   llike_3_ce1;
input  [63:0] llike_3_q1;
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
input  [2:0] empty_10;
input  [63:0] tmp_9;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [11:0] empty;
output  [63:0] min_p_34_out;
output   min_p_34_out_ap_vld;
output  [63:0] grp_fu_992_p_din0;
output  [63:0] grp_fu_992_p_din1;
output  [1:0] grp_fu_992_p_opcode;
input  [63:0] grp_fu_992_p_dout0;
output   grp_fu_992_p_ce;
output  [63:0] grp_fu_2009_p_din0;
output  [63:0] grp_fu_2009_p_din1;
output  [4:0] grp_fu_2009_p_opcode;
input  [0:0] grp_fu_2009_p_dout0;
output   grp_fu_2009_p_ce;
reg ap_idle;
reg min_p_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_37_reg_2808;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_883;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_889;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_895;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_901;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_907;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_913;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2661;
wire   [8:0] shl_ln1_fu_961_p3;
reg   [8:0] shl_ln1_reg_2681;
wire   [5:0] add_ln25_fu_1025_p2;
reg   [5:0] add_ln25_reg_2767;
wire   [5:0] add_ln25_1_fu_1073_p2;
reg   [5:0] add_ln25_1_reg_2782;
wire   [5:0] add_ln25_2_fu_1102_p2;
reg   [5:0] add_ln25_2_reg_2792;
wire   [6:0] add_ln25_3_fu_1131_p2;
reg   [6:0] add_ln25_3_reg_2802;
reg   [0:0] tmp_37_reg_2808_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2812;
wire   [63:0] tmp_10_fu_1177_p19;
reg   [63:0] tmp_10_reg_2817;
reg   [63:0] llike_2_load_reg_2822;
wire   [63:0] tmp_11_fu_1248_p19;
reg   [63:0] tmp_11_reg_2827;
reg   [63:0] llike_3_load_reg_2832;
reg   [63:0] llike_load_1_reg_2877;
reg   [63:0] llike_1_load_1_reg_2922;
reg   [5:0] tmp_54_reg_2927;
reg   [63:0] llike_2_load_1_reg_2932;
reg   [63:0] llike_3_load_1_reg_2937;
wire   [63:0] tmp_12_fu_1409_p19;
reg   [63:0] tmp_12_reg_2947;
wire   [63:0] tmp_13_fu_1480_p19;
reg   [63:0] tmp_13_reg_2952;
reg   [63:0] llike_load_reg_3037;
wire   [63:0] tmp_14_fu_1587_p19;
reg   [63:0] tmp_14_reg_3042;
wire   [63:0] tmp_15_fu_1658_p19;
reg   [63:0] tmp_15_reg_3047;
wire   [63:0] tmp_16_fu_1769_p19;
reg   [63:0] tmp_16_reg_3132;
wire   [63:0] tmp_19_fu_1840_p19;
reg   [63:0] tmp_19_reg_3137;
reg   [63:0] add52_5_reg_3142;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_3147;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_19_reg_3152;
wire   [0:0] and_ln29_1_fu_1970_p2;
reg   [0:0] and_ln29_1_reg_3159;
wire   [63:0] min_p_21_fu_1976_p3;
reg   [63:0] min_p_21_reg_3164;
wire   [0:0] and_ln29_3_fu_2060_p2;
reg   [0:0] and_ln29_3_reg_3171;
wire   [63:0] min_p_23_fu_2066_p3;
reg   [63:0] min_p_23_reg_3176;
wire   [0:0] and_ln29_5_fu_2150_p2;
reg   [0:0] and_ln29_5_reg_3183;
wire   [63:0] min_p_25_fu_2156_p3;
reg   [63:0] min_p_25_reg_3188;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_2181_p2;
reg   [0:0] icmp_ln29_14_reg_3194;
wire   [0:0] icmp_ln29_15_fu_2187_p2;
reg   [0:0] icmp_ln29_15_reg_3199;
reg   [63:0] p_14_reg_3204;
wire   [0:0] and_ln29_7_fu_2239_p2;
reg   [0:0] and_ln29_7_reg_3211;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_27_fu_2245_p3;
reg   [63:0] min_p_27_reg_3216;
wire   [0:0] and_ln29_9_fu_2329_p2;
reg   [0:0] and_ln29_9_reg_3223;
wire   [63:0] min_p_29_fu_2335_p3;
reg   [63:0] min_p_29_reg_3228;
wire   [0:0] and_ln29_11_fu_2419_p2;
reg   [0:0] and_ln29_11_reg_3235;
wire   [63:0] min_p_31_fu_2425_p3;
reg   [63:0] min_p_31_reg_3240;
wire   [0:0] and_ln29_13_fu_2509_p2;
reg   [0:0] and_ln29_13_reg_3247;
wire   [63:0] min_p_33_fu_2515_p3;
reg   [63:0] min_p_33_reg_3252;
reg   [0:0] tmp_68_reg_3259;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_954_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_977_p1;
wire   [63:0] zext_ln27_1_fu_1013_p1;
wire   [63:0] zext_ln26_1_fu_1049_p1;
wire   [63:0] zext_ln26_2_fu_1068_p1;
wire   [63:0] zext_ln26_3_fu_1097_p1;
wire   [63:0] zext_ln26_4_fu_1126_p1;
wire   [63:0] zext_ln27_2_fu_1309_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1327_p1;
wire   [63:0] zext_ln26_6_fu_1372_p1;
wire   [63:0] zext_ln27_4_fu_1525_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1543_p1;
wire   [63:0] zext_ln27_6_fu_1703_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1725_p1;
reg   [63:0] min_p_fu_144;
wire   [63:0] min_p_35_fu_2604_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_148;
wire   [5:0] add_ln25_4_fu_1879_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
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
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_875_p0;
reg   [63:0] grp_fu_875_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_879_p0;
reg   [63:0] grp_fu_879_p1;
wire   [3:0] lshr_ln7_1_fu_936_p4;
wire   [11:0] tmp_s_fu_946_p3;
wire   [8:0] add_ln_fu_969_p3;
wire   [8:0] add_ln27_fu_989_p2;
wire   [5:0] tmp_41_fu_995_p4;
wire   [8:0] add_ln27_2_fu_1005_p3;
wire   [3:0] lshr_ln8_4_fu_1031_p4;
wire   [11:0] tmp_49_fu_1041_p3;
wire   [3:0] add_ln8_fu_1054_p2;
wire   [11:0] tmp_53_fu_1060_p3;
wire   [3:0] lshr_ln8_5_fu_1079_p4;
wire   [11:0] tmp_58_fu_1089_p3;
wire   [3:0] lshr_ln8_6_fu_1108_p4;
wire   [11:0] tmp_62_fu_1118_p3;
wire   [6:0] zext_ln15_fu_932_p1;
wire   [63:0] tmp_10_fu_1177_p2;
wire   [63:0] tmp_10_fu_1177_p4;
wire   [63:0] tmp_10_fu_1177_p6;
wire   [63:0] tmp_10_fu_1177_p8;
wire   [63:0] tmp_10_fu_1177_p10;
wire   [63:0] tmp_10_fu_1177_p12;
wire   [63:0] tmp_10_fu_1177_p14;
wire   [63:0] tmp_10_fu_1177_p16;
wire   [63:0] tmp_10_fu_1177_p17;
wire   [63:0] tmp_11_fu_1248_p2;
wire   [63:0] tmp_11_fu_1248_p4;
wire   [63:0] tmp_11_fu_1248_p6;
wire   [63:0] tmp_11_fu_1248_p8;
wire   [63:0] tmp_11_fu_1248_p10;
wire   [63:0] tmp_11_fu_1248_p12;
wire   [63:0] tmp_11_fu_1248_p14;
wire   [63:0] tmp_11_fu_1248_p16;
wire   [63:0] tmp_11_fu_1248_p17;
wire   [8:0] add_ln27_1_fu_1287_p2;
wire   [5:0] tmp_45_fu_1292_p4;
wire   [8:0] add_ln27_4_fu_1302_p3;
wire   [8:0] add_ln27_5_fu_1321_p3;
wire   [8:0] add_ln27_3_fu_1339_p2;
wire   [4:0] lshr_ln8_7_fu_1354_p4;
wire   [11:0] zext_ln26_5_fu_1363_p1;
wire   [11:0] add_ln26_fu_1367_p2;
wire   [63:0] tmp_12_fu_1409_p2;
wire   [63:0] tmp_12_fu_1409_p4;
wire   [63:0] tmp_12_fu_1409_p6;
wire   [63:0] tmp_12_fu_1409_p8;
wire   [63:0] tmp_12_fu_1409_p10;
wire   [63:0] tmp_12_fu_1409_p12;
wire   [63:0] tmp_12_fu_1409_p14;
wire   [63:0] tmp_12_fu_1409_p16;
wire   [63:0] tmp_12_fu_1409_p17;
wire   [63:0] tmp_13_fu_1480_p2;
wire   [63:0] tmp_13_fu_1480_p4;
wire   [63:0] tmp_13_fu_1480_p6;
wire   [63:0] tmp_13_fu_1480_p8;
wire   [63:0] tmp_13_fu_1480_p10;
wire   [63:0] tmp_13_fu_1480_p12;
wire   [63:0] tmp_13_fu_1480_p14;
wire   [63:0] tmp_13_fu_1480_p16;
wire   [63:0] tmp_13_fu_1480_p17;
wire   [8:0] add_ln27_7_fu_1519_p3;
wire   [8:0] add_ln27_8_fu_1537_p3;
wire   [63:0] tmp_14_fu_1587_p2;
wire   [63:0] tmp_14_fu_1587_p4;
wire   [63:0] tmp_14_fu_1587_p6;
wire   [63:0] tmp_14_fu_1587_p8;
wire   [63:0] tmp_14_fu_1587_p10;
wire   [63:0] tmp_14_fu_1587_p12;
wire   [63:0] tmp_14_fu_1587_p14;
wire   [63:0] tmp_14_fu_1587_p16;
wire   [63:0] tmp_14_fu_1587_p17;
wire   [63:0] tmp_15_fu_1658_p2;
wire   [63:0] tmp_15_fu_1658_p4;
wire   [63:0] tmp_15_fu_1658_p6;
wire   [63:0] tmp_15_fu_1658_p8;
wire   [63:0] tmp_15_fu_1658_p10;
wire   [63:0] tmp_15_fu_1658_p12;
wire   [63:0] tmp_15_fu_1658_p14;
wire   [63:0] tmp_15_fu_1658_p16;
wire   [63:0] tmp_15_fu_1658_p17;
wire   [8:0] add_ln27_9_fu_1697_p3;
wire   [5:0] trunc_ln27_fu_1715_p1;
wire   [8:0] add_ln27_s_fu_1718_p3;
wire   [63:0] tmp_16_fu_1769_p2;
wire   [63:0] tmp_16_fu_1769_p4;
wire   [63:0] tmp_16_fu_1769_p6;
wire   [63:0] tmp_16_fu_1769_p8;
wire   [63:0] tmp_16_fu_1769_p10;
wire   [63:0] tmp_16_fu_1769_p12;
wire   [63:0] tmp_16_fu_1769_p14;
wire   [63:0] tmp_16_fu_1769_p16;
wire   [63:0] tmp_16_fu_1769_p17;
wire   [63:0] tmp_19_fu_1840_p2;
wire   [63:0] tmp_19_fu_1840_p4;
wire   [63:0] tmp_19_fu_1840_p6;
wire   [63:0] tmp_19_fu_1840_p8;
wire   [63:0] tmp_19_fu_1840_p10;
wire   [63:0] tmp_19_fu_1840_p12;
wire   [63:0] tmp_19_fu_1840_p14;
wire   [63:0] tmp_19_fu_1840_p16;
wire   [63:0] tmp_19_fu_1840_p17;
wire   [63:0] bitcast_ln29_fu_1893_p1;
wire   [63:0] bitcast_ln29_1_fu_1911_p1;
wire   [10:0] tmp_38_fu_1897_p4;
wire   [51:0] trunc_ln29_fu_1907_p1;
wire   [0:0] icmp_ln29_1_fu_1934_p2;
wire   [0:0] icmp_ln29_fu_1928_p2;
wire   [10:0] tmp_39_fu_1914_p4;
wire   [51:0] trunc_ln29_1_fu_1924_p1;
wire   [0:0] icmp_ln29_3_fu_1952_p2;
wire   [0:0] icmp_ln29_2_fu_1946_p2;
wire   [0:0] or_ln29_fu_1940_p2;
wire   [0:0] and_ln29_fu_1964_p2;
wire   [0:0] or_ln29_1_fu_1958_p2;
wire   [63:0] bitcast_ln29_2_fu_1983_p1;
wire   [63:0] bitcast_ln29_3_fu_2001_p1;
wire   [10:0] tmp_42_fu_1987_p4;
wire   [51:0] trunc_ln29_2_fu_1997_p1;
wire   [0:0] icmp_ln29_5_fu_2024_p2;
wire   [0:0] icmp_ln29_4_fu_2018_p2;
wire   [10:0] tmp_43_fu_2004_p4;
wire   [51:0] trunc_ln29_3_fu_2014_p1;
wire   [0:0] icmp_ln29_7_fu_2042_p2;
wire   [0:0] icmp_ln29_6_fu_2036_p2;
wire   [0:0] or_ln29_3_fu_2048_p2;
wire   [0:0] or_ln29_2_fu_2030_p2;
wire   [0:0] and_ln29_2_fu_2054_p2;
wire   [63:0] bitcast_ln29_4_fu_2073_p1;
wire   [63:0] bitcast_ln29_5_fu_2091_p1;
wire   [10:0] tmp_46_fu_2077_p4;
wire   [51:0] trunc_ln29_4_fu_2087_p1;
wire   [0:0] icmp_ln29_9_fu_2114_p2;
wire   [0:0] icmp_ln29_8_fu_2108_p2;
wire   [10:0] tmp_47_fu_2094_p4;
wire   [51:0] trunc_ln29_5_fu_2104_p1;
wire   [0:0] icmp_ln29_11_fu_2132_p2;
wire   [0:0] icmp_ln29_10_fu_2126_p2;
wire   [0:0] or_ln29_5_fu_2138_p2;
wire   [0:0] or_ln29_4_fu_2120_p2;
wire   [0:0] and_ln29_4_fu_2144_p2;
wire   [63:0] bitcast_ln29_7_fu_2163_p1;
wire   [10:0] tmp_51_fu_2167_p4;
wire   [51:0] trunc_ln29_7_fu_2177_p1;
wire   [63:0] bitcast_ln29_6_fu_2193_p1;
wire   [10:0] tmp_50_fu_2197_p4;
wire   [51:0] trunc_ln29_6_fu_2207_p1;
wire   [0:0] icmp_ln29_13_fu_2217_p2;
wire   [0:0] icmp_ln29_12_fu_2211_p2;
wire   [0:0] or_ln29_7_fu_2229_p2;
wire   [0:0] or_ln29_6_fu_2223_p2;
wire   [0:0] and_ln29_6_fu_2233_p2;
wire   [63:0] bitcast_ln29_8_fu_2252_p1;
wire   [63:0] bitcast_ln29_9_fu_2270_p1;
wire   [10:0] tmp_55_fu_2256_p4;
wire   [51:0] trunc_ln29_8_fu_2266_p1;
wire   [0:0] icmp_ln29_17_fu_2293_p2;
wire   [0:0] icmp_ln29_16_fu_2287_p2;
wire   [10:0] tmp_56_fu_2273_p4;
wire   [51:0] trunc_ln29_9_fu_2283_p1;
wire   [0:0] icmp_ln29_19_fu_2311_p2;
wire   [0:0] icmp_ln29_18_fu_2305_p2;
wire   [0:0] or_ln29_9_fu_2317_p2;
wire   [0:0] or_ln29_8_fu_2299_p2;
wire   [0:0] and_ln29_8_fu_2323_p2;
wire   [63:0] bitcast_ln29_10_fu_2342_p1;
wire   [63:0] bitcast_ln29_11_fu_2360_p1;
wire   [10:0] tmp_59_fu_2346_p4;
wire   [51:0] trunc_ln29_10_fu_2356_p1;
wire   [0:0] icmp_ln29_21_fu_2383_p2;
wire   [0:0] icmp_ln29_20_fu_2377_p2;
wire   [10:0] tmp_60_fu_2363_p4;
wire   [51:0] trunc_ln29_11_fu_2373_p1;
wire   [0:0] icmp_ln29_23_fu_2401_p2;
wire   [0:0] icmp_ln29_22_fu_2395_p2;
wire   [0:0] or_ln29_11_fu_2407_p2;
wire   [0:0] or_ln29_10_fu_2389_p2;
wire   [0:0] and_ln29_10_fu_2413_p2;
wire   [63:0] bitcast_ln29_12_fu_2432_p1;
wire   [63:0] bitcast_ln29_13_fu_2450_p1;
wire   [10:0] tmp_63_fu_2436_p4;
wire   [51:0] trunc_ln29_12_fu_2446_p1;
wire   [0:0] icmp_ln29_25_fu_2473_p2;
wire   [0:0] icmp_ln29_24_fu_2467_p2;
wire   [10:0] tmp_64_fu_2453_p4;
wire   [51:0] trunc_ln29_13_fu_2463_p1;
wire   [0:0] icmp_ln29_27_fu_2491_p2;
wire   [0:0] icmp_ln29_26_fu_2485_p2;
wire   [0:0] or_ln29_13_fu_2497_p2;
wire   [0:0] or_ln29_12_fu_2479_p2;
wire   [0:0] and_ln29_12_fu_2503_p2;
wire   [63:0] bitcast_ln29_14_fu_2523_p1;
wire   [63:0] bitcast_ln29_15_fu_2540_p1;
wire   [10:0] tmp_66_fu_2526_p4;
wire   [51:0] trunc_ln29_14_fu_2536_p1;
wire   [0:0] icmp_ln29_29_fu_2563_p2;
wire   [0:0] icmp_ln29_28_fu_2557_p2;
wire   [10:0] tmp_67_fu_2543_p4;
wire   [51:0] trunc_ln29_15_fu_2553_p1;
wire   [0:0] icmp_ln29_31_fu_2581_p2;
wire   [0:0] icmp_ln29_30_fu_2575_p2;
wire   [0:0] or_ln29_15_fu_2587_p2;
wire   [0:0] or_ln29_14_fu_2569_p2;
wire   [0:0] and_ln29_14_fu_2593_p2;
wire   [0:0] and_ln29_15_fu_2599_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_10_fu_1177_p1;
wire   [2:0] tmp_10_fu_1177_p3;
wire   [2:0] tmp_10_fu_1177_p5;
wire   [2:0] tmp_10_fu_1177_p7;
wire  signed [2:0] tmp_10_fu_1177_p9;
wire  signed [2:0] tmp_10_fu_1177_p11;
wire  signed [2:0] tmp_10_fu_1177_p13;
wire  signed [2:0] tmp_10_fu_1177_p15;
wire   [2:0] tmp_11_fu_1248_p1;
wire   [2:0] tmp_11_fu_1248_p3;
wire   [2:0] tmp_11_fu_1248_p5;
wire   [2:0] tmp_11_fu_1248_p7;
wire  signed [2:0] tmp_11_fu_1248_p9;
wire  signed [2:0] tmp_11_fu_1248_p11;
wire  signed [2:0] tmp_11_fu_1248_p13;
wire  signed [2:0] tmp_11_fu_1248_p15;
wire   [2:0] tmp_12_fu_1409_p1;
wire   [2:0] tmp_12_fu_1409_p3;
wire   [2:0] tmp_12_fu_1409_p5;
wire   [2:0] tmp_12_fu_1409_p7;
wire  signed [2:0] tmp_12_fu_1409_p9;
wire  signed [2:0] tmp_12_fu_1409_p11;
wire  signed [2:0] tmp_12_fu_1409_p13;
wire  signed [2:0] tmp_12_fu_1409_p15;
wire   [2:0] tmp_13_fu_1480_p1;
wire   [2:0] tmp_13_fu_1480_p3;
wire   [2:0] tmp_13_fu_1480_p5;
wire   [2:0] tmp_13_fu_1480_p7;
wire  signed [2:0] tmp_13_fu_1480_p9;
wire  signed [2:0] tmp_13_fu_1480_p11;
wire  signed [2:0] tmp_13_fu_1480_p13;
wire  signed [2:0] tmp_13_fu_1480_p15;
wire   [2:0] tmp_14_fu_1587_p1;
wire   [2:0] tmp_14_fu_1587_p3;
wire   [2:0] tmp_14_fu_1587_p5;
wire   [2:0] tmp_14_fu_1587_p7;
wire  signed [2:0] tmp_14_fu_1587_p9;
wire  signed [2:0] tmp_14_fu_1587_p11;
wire  signed [2:0] tmp_14_fu_1587_p13;
wire  signed [2:0] tmp_14_fu_1587_p15;
wire   [2:0] tmp_15_fu_1658_p1;
wire   [2:0] tmp_15_fu_1658_p3;
wire   [2:0] tmp_15_fu_1658_p5;
wire   [2:0] tmp_15_fu_1658_p7;
wire  signed [2:0] tmp_15_fu_1658_p9;
wire  signed [2:0] tmp_15_fu_1658_p11;
wire  signed [2:0] tmp_15_fu_1658_p13;
wire  signed [2:0] tmp_15_fu_1658_p15;
wire   [2:0] tmp_16_fu_1769_p1;
wire   [2:0] tmp_16_fu_1769_p3;
wire   [2:0] tmp_16_fu_1769_p5;
wire   [2:0] tmp_16_fu_1769_p7;
wire  signed [2:0] tmp_16_fu_1769_p9;
wire  signed [2:0] tmp_16_fu_1769_p11;
wire  signed [2:0] tmp_16_fu_1769_p13;
wire  signed [2:0] tmp_16_fu_1769_p15;
wire   [2:0] tmp_19_fu_1840_p1;
wire   [2:0] tmp_19_fu_1840_p3;
wire   [2:0] tmp_19_fu_1840_p5;
wire   [2:0] tmp_19_fu_1840_p7;
wire  signed [2:0] tmp_19_fu_1840_p9;
wire  signed [2:0] tmp_19_fu_1840_p11;
wire  signed [2:0] tmp_19_fu_1840_p13;
wire  signed [2:0] tmp_19_fu_1840_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_144 = 64'd0;
#0 prev_fu_148 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U38(.din0(tmp_10_fu_1177_p2),.din1(tmp_10_fu_1177_p4),.din2(tmp_10_fu_1177_p6),.din3(tmp_10_fu_1177_p8),.din4(tmp_10_fu_1177_p10),.din5(tmp_10_fu_1177_p12),.din6(tmp_10_fu_1177_p14),.din7(tmp_10_fu_1177_p16),.def(tmp_10_fu_1177_p17),.sel(empty_10),.dout(tmp_10_fu_1177_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U39(.din0(tmp_11_fu_1248_p2),.din1(tmp_11_fu_1248_p4),.din2(tmp_11_fu_1248_p6),.din3(tmp_11_fu_1248_p8),.din4(tmp_11_fu_1248_p10),.din5(tmp_11_fu_1248_p12),.din6(tmp_11_fu_1248_p14),.din7(tmp_11_fu_1248_p16),.def(tmp_11_fu_1248_p17),.sel(empty_10),.dout(tmp_11_fu_1248_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U40(.din0(tmp_12_fu_1409_p2),.din1(tmp_12_fu_1409_p4),.din2(tmp_12_fu_1409_p6),.din3(tmp_12_fu_1409_p8),.din4(tmp_12_fu_1409_p10),.din5(tmp_12_fu_1409_p12),.din6(tmp_12_fu_1409_p14),.din7(tmp_12_fu_1409_p16),.def(tmp_12_fu_1409_p17),.sel(empty_10),.dout(tmp_12_fu_1409_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U41(.din0(tmp_13_fu_1480_p2),.din1(tmp_13_fu_1480_p4),.din2(tmp_13_fu_1480_p6),.din3(tmp_13_fu_1480_p8),.din4(tmp_13_fu_1480_p10),.din5(tmp_13_fu_1480_p12),.din6(tmp_13_fu_1480_p14),.din7(tmp_13_fu_1480_p16),.def(tmp_13_fu_1480_p17),.sel(empty_10),.dout(tmp_13_fu_1480_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U42(.din0(tmp_14_fu_1587_p2),.din1(tmp_14_fu_1587_p4),.din2(tmp_14_fu_1587_p6),.din3(tmp_14_fu_1587_p8),.din4(tmp_14_fu_1587_p10),.din5(tmp_14_fu_1587_p12),.din6(tmp_14_fu_1587_p14),.din7(tmp_14_fu_1587_p16),.def(tmp_14_fu_1587_p17),.sel(empty_10),.dout(tmp_14_fu_1587_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U43(.din0(tmp_15_fu_1658_p2),.din1(tmp_15_fu_1658_p4),.din2(tmp_15_fu_1658_p6),.din3(tmp_15_fu_1658_p8),.din4(tmp_15_fu_1658_p10),.din5(tmp_15_fu_1658_p12),.din6(tmp_15_fu_1658_p14),.din7(tmp_15_fu_1658_p16),.def(tmp_15_fu_1658_p17),.sel(empty_10),.dout(tmp_15_fu_1658_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U44(.din0(tmp_16_fu_1769_p2),.din1(tmp_16_fu_1769_p4),.din2(tmp_16_fu_1769_p6),.din3(tmp_16_fu_1769_p8),.din4(tmp_16_fu_1769_p10),.din5(tmp_16_fu_1769_p12),.din6(tmp_16_fu_1769_p14),.din7(tmp_16_fu_1769_p16),.def(tmp_16_fu_1769_p17),.sel(empty_10),.dout(tmp_16_fu_1769_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U45(.din0(tmp_19_fu_1840_p2),.din1(tmp_19_fu_1840_p4),.din2(tmp_19_fu_1840_p6),.din3(tmp_19_fu_1840_p8),.din4(tmp_19_fu_1840_p10),.din5(tmp_19_fu_1840_p12),.din6(tmp_19_fu_1840_p14),.din7(tmp_19_fu_1840_p16),.def(tmp_19_fu_1840_p17),.sel(empty_10),.dout(tmp_19_fu_1840_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_144 <= min_p_18;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_144 <= min_p_35_fu_2604_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_148 <= 6'd1;
    end else if (((tmp_37_reg_2808 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_148 <= add_ln25_4_fu_1879_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_3142 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_3147 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_2782 <= add_ln25_1_fu_1073_p2;
        add_ln25_2_reg_2792 <= add_ln25_2_fu_1102_p2;
        add_ln25_3_reg_2802 <= add_ln25_3_fu_1131_p2;
        add_ln25_reg_2767 <= add_ln25_fu_1025_p2;
        prev_1_reg_2661 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_2681[8 : 3] <= shl_ln1_fu_961_p3[8 : 3];
        tmp_37_reg_2808 <= add_ln25_3_fu_1131_p2[32'd6];
        tmp_37_reg_2808_pp0_iter1_reg <= tmp_37_reg_2808;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_3235 <= and_ln29_11_fu_2419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_3247 <= and_ln29_13_fu_2509_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_3159 <= and_ln29_1_fu_1970_p2;
        tmp_12_reg_2947 <= tmp_12_fu_1409_p19;
        tmp_13_reg_2952 <= tmp_13_fu_1480_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_3171 <= and_ln29_3_fu_2060_p2;
        tmp_16_reg_3132 <= tmp_16_fu_1769_p19;
        tmp_19_reg_3137 <= tmp_19_fu_1840_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_3183 <= and_ln29_5_fu_2150_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_3211 <= and_ln29_7_fu_2239_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_3223 <= and_ln29_9_fu_2329_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_3194 <= icmp_ln29_14_fu_2181_p2;
        icmp_ln29_15_reg_3199 <= icmp_ln29_15_fu_2187_p2;
        min_p_25_reg_3188 <= min_p_25_fu_2156_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2922 <= llike_1_q0;
        llike_1_load_reg_2812 <= llike_1_q1;
        llike_2_load_1_reg_2932 <= llike_2_q0;
        llike_2_load_reg_2822 <= llike_2_q1;
        llike_3_load_1_reg_2937 <= llike_3_q0;
        llike_3_load_reg_2832 <= llike_3_q1;
        llike_load_1_reg_2877 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_reg_3037 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_19_reg_3152 <= min_p_fu_144;
        tmp_10_reg_2817 <= tmp_10_fu_1177_p19;
        tmp_11_reg_2827 <= tmp_11_fu_1248_p19;
        tmp_54_reg_2927 <= {{add_ln27_3_fu_1339_p2[8:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_21_reg_3164 <= min_p_21_fu_1976_p3;
        tmp_14_reg_3042 <= tmp_14_fu_1587_p19;
        tmp_15_reg_3047 <= tmp_15_fu_1658_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_23_reg_3176 <= min_p_23_fu_2066_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_27_reg_3216 <= min_p_27_fu_2245_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_29_reg_3228 <= min_p_29_fu_2335_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_31_reg_3240 <= min_p_31_fu_2425_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_33_reg_3252 <= min_p_33_fu_2515_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_14_reg_3204 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_883 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_889 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_895 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_901 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_907 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_913 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_68_reg_3259 <= grp_fu_2009_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_37_reg_2808 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (tmp_37_reg_2808_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_875_p0 = add52_7_reg_3147;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_875_p0 = reg_913;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_875_p0 = add52_5_reg_3142;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_875_p0 = reg_907;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_875_p0 = reg_901;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_875_p0 = reg_895;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_875_p0 = reg_889;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_875_p0 = reg_883;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_875_p0 = llike_load_reg_3037;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_875_p0 = llike_3_load_1_reg_2937;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_875_p0 = llike_2_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_875_p0 = llike_1_load_1_reg_2922;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_875_p0 = llike_load_1_reg_2877;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_875_p0 = llike_3_load_reg_2832;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_875_p0 = llike_2_load_reg_2822;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_875_p0 = llike_1_load_reg_2812;
    end else begin
        grp_fu_875_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_875_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_875_p1 = tmp_19_reg_3137;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_875_p1 = tmp_16_reg_3132;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_875_p1 = tmp_15_reg_3047;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_875_p1 = tmp_14_reg_3042;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_875_p1 = tmp_13_reg_2952;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_875_p1 = tmp_12_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_875_p1 = tmp_11_reg_2827;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_875_p1 = tmp_10_reg_2817;
    end else begin
        grp_fu_875_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_879_p0 = p_14_reg_3204;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_879_p0 = reg_913;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_879_p0 = reg_907;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_879_p0 = reg_901;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_879_p0 = reg_895;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_879_p0 = reg_889;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_879_p0 = reg_883;
    end else begin
        grp_fu_879_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_879_p1 = min_p_33_fu_2515_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_879_p1 = min_p_31_fu_2425_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_879_p1 = min_p_29_fu_2335_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_879_p1 = min_p_27_fu_2245_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_879_p1 = min_p_25_fu_2156_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_879_p1 = min_p_23_fu_2066_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_879_p1 = min_p_21_fu_1976_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_879_p1 = min_p_fu_144;
        end else begin
            grp_fu_879_p1 = 'bx;
        end
    end else begin
        grp_fu_879_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_6_fu_1372_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_1049_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_37_reg_2808_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_34_out_ap_vld = 1'b1;
    end else begin
        min_p_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address0_local = zext_ln27_7_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address0_local = zext_ln27_5_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln27_3_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_1013_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address1_local = zext_ln27_6_fu_1703_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln27_4_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln27_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_977_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_1073_p2 = (ap_sig_allocacmp_prev_1 + 6'd5);
assign add_ln25_2_fu_1102_p2 = (ap_sig_allocacmp_prev_1 + 6'd6);
assign add_ln25_3_fu_1131_p2 = (zext_ln15_fu_932_p1 + 7'd7);
assign add_ln25_4_fu_1879_p2 = (prev_1_reg_2661 + 6'd8);
assign add_ln25_fu_1025_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln26_fu_1367_p2 = (empty + zext_ln26_5_fu_1363_p1);
assign add_ln27_1_fu_1287_p2 = (shl_ln1_reg_2681 + 9'd16);
assign add_ln27_2_fu_1005_p3 = {{tmp_41_fu_995_p4}, {lshr_ln}};
assign add_ln27_3_fu_1339_p2 = (shl_ln1_reg_2681 + 9'd32);
assign add_ln27_4_fu_1302_p3 = {{tmp_45_fu_1292_p4}, {lshr_ln}};
assign add_ln27_5_fu_1321_p3 = {{add_ln25_reg_2767}, {lshr_ln}};
assign add_ln27_7_fu_1519_p3 = {{tmp_54_reg_2927}, {lshr_ln}};
assign add_ln27_8_fu_1537_p3 = {{add_ln25_1_reg_2782}, {lshr_ln}};
assign add_ln27_9_fu_1697_p3 = {{add_ln25_2_reg_2792}, {lshr_ln}};
assign add_ln27_fu_989_p2 = (shl_ln1_fu_961_p3 + 9'd8);
assign add_ln27_s_fu_1718_p3 = {{trunc_ln27_fu_1715_p1}, {lshr_ln}};
assign add_ln8_fu_1054_p2 = (lshr_ln7_1_fu_936_p4 + 4'd1);
assign add_ln_fu_969_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_2413_p2 = (or_ln29_11_fu_2407_p2 & or_ln29_10_fu_2389_p2);
assign and_ln29_11_fu_2419_p2 = (grp_fu_2009_p_dout0 & and_ln29_10_fu_2413_p2);
assign and_ln29_12_fu_2503_p2 = (or_ln29_13_fu_2497_p2 & or_ln29_12_fu_2479_p2);
assign and_ln29_13_fu_2509_p2 = (grp_fu_2009_p_dout0 & and_ln29_12_fu_2503_p2);
assign and_ln29_14_fu_2593_p2 = (or_ln29_15_fu_2587_p2 & or_ln29_14_fu_2569_p2);
assign and_ln29_15_fu_2599_p2 = (tmp_68_reg_3259 & and_ln29_14_fu_2593_p2);
assign and_ln29_1_fu_1970_p2 = (or_ln29_1_fu_1958_p2 & and_ln29_fu_1964_p2);
assign and_ln29_2_fu_2054_p2 = (or_ln29_3_fu_2048_p2 & or_ln29_2_fu_2030_p2);
assign and_ln29_3_fu_2060_p2 = (grp_fu_2009_p_dout0 & and_ln29_2_fu_2054_p2);
assign and_ln29_4_fu_2144_p2 = (or_ln29_5_fu_2138_p2 & or_ln29_4_fu_2120_p2);
assign and_ln29_5_fu_2150_p2 = (grp_fu_2009_p_dout0 & and_ln29_4_fu_2144_p2);
assign and_ln29_6_fu_2233_p2 = (or_ln29_7_fu_2229_p2 & or_ln29_6_fu_2223_p2);
assign and_ln29_7_fu_2239_p2 = (grp_fu_2009_p_dout0 & and_ln29_6_fu_2233_p2);
assign and_ln29_8_fu_2323_p2 = (or_ln29_9_fu_2317_p2 & or_ln29_8_fu_2299_p2);
assign and_ln29_9_fu_2329_p2 = (grp_fu_2009_p_dout0 & and_ln29_8_fu_2323_p2);
assign and_ln29_fu_1964_p2 = (or_ln29_fu_1940_p2 & grp_fu_2009_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_10_fu_2342_p1 = reg_907;
assign bitcast_ln29_11_fu_2360_p1 = min_p_29_reg_3228;
assign bitcast_ln29_12_fu_2432_p1 = reg_913;
assign bitcast_ln29_13_fu_2450_p1 = min_p_31_reg_3240;
assign bitcast_ln29_14_fu_2523_p1 = p_14_reg_3204;
assign bitcast_ln29_15_fu_2540_p1 = min_p_33_reg_3252;
assign bitcast_ln29_1_fu_1911_p1 = min_p_19_reg_3152;
assign bitcast_ln29_2_fu_1983_p1 = reg_889;
assign bitcast_ln29_3_fu_2001_p1 = min_p_21_reg_3164;
assign bitcast_ln29_4_fu_2073_p1 = reg_895;
assign bitcast_ln29_5_fu_2091_p1 = min_p_23_reg_3176;
assign bitcast_ln29_6_fu_2193_p1 = reg_883;
assign bitcast_ln29_7_fu_2163_p1 = min_p_25_fu_2156_p3;
assign bitcast_ln29_8_fu_2252_p1 = reg_901;
assign bitcast_ln29_9_fu_2270_p1 = min_p_27_reg_3216;
assign bitcast_ln29_fu_1893_p1 = reg_883;
assign grp_fu_2009_p_ce = 1'b1;
assign grp_fu_2009_p_din0 = grp_fu_879_p0;
assign grp_fu_2009_p_din1 = grp_fu_879_p1;
assign grp_fu_2009_p_opcode = 5'd4;
assign grp_fu_992_p_ce = 1'b1;
assign grp_fu_992_p_din0 = grp_fu_875_p0;
assign grp_fu_992_p_din1 = grp_fu_875_p1;
assign grp_fu_992_p_opcode = 2'd0;
assign icmp_ln29_10_fu_2126_p2 = ((tmp_47_fu_2094_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_2132_p2 = ((trunc_ln29_5_fu_2104_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_2211_p2 = ((tmp_50_fu_2197_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_2217_p2 = ((trunc_ln29_6_fu_2207_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_2181_p2 = ((tmp_51_fu_2167_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_2187_p2 = ((trunc_ln29_7_fu_2177_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_2287_p2 = ((tmp_55_fu_2256_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_2293_p2 = ((trunc_ln29_8_fu_2266_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_2305_p2 = ((tmp_56_fu_2273_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_2311_p2 = ((trunc_ln29_9_fu_2283_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1934_p2 = ((trunc_ln29_fu_1907_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_2377_p2 = ((tmp_59_fu_2346_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_2383_p2 = ((trunc_ln29_10_fu_2356_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_2395_p2 = ((tmp_60_fu_2363_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_2401_p2 = ((trunc_ln29_11_fu_2373_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2467_p2 = ((tmp_63_fu_2436_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2473_p2 = ((trunc_ln29_12_fu_2446_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2485_p2 = ((tmp_64_fu_2453_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2491_p2 = ((trunc_ln29_13_fu_2463_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2557_p2 = ((tmp_66_fu_2526_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2563_p2 = ((trunc_ln29_14_fu_2536_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1946_p2 = ((tmp_39_fu_1914_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2575_p2 = ((tmp_67_fu_2543_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2581_p2 = ((trunc_ln29_15_fu_2553_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1952_p2 = ((trunc_ln29_1_fu_1924_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_2018_p2 = ((tmp_42_fu_1987_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_2024_p2 = ((trunc_ln29_2_fu_1997_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_2036_p2 = ((tmp_43_fu_2004_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_2042_p2 = ((trunc_ln29_3_fu_2014_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_2108_p2 = ((tmp_46_fu_2077_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_2114_p2 = ((trunc_ln29_4_fu_2087_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1928_p2 = ((tmp_38_fu_1897_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_2_fu_1068_p1;
assign llike_1_address1 = zext_ln26_fu_954_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln26_3_fu_1097_p1;
assign llike_2_address1 = zext_ln26_fu_954_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln26_4_fu_1126_p1;
assign llike_3_address1 = zext_ln26_fu_954_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_936_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_4_fu_1031_p4 = {{add_ln25_fu_1025_p2[5:2]}};
assign lshr_ln8_5_fu_1079_p4 = {{add_ln25_1_fu_1073_p2[5:2]}};
assign lshr_ln8_6_fu_1108_p4 = {{add_ln25_2_fu_1102_p2[5:2]}};
assign lshr_ln8_7_fu_1354_p4 = {{add_ln25_3_reg_2802[6:2]}};
assign min_p_21_fu_1976_p3 = ((and_ln29_1_reg_3159[0:0] == 1'b1) ? reg_883 : min_p_19_reg_3152);
assign min_p_23_fu_2066_p3 = ((and_ln29_3_reg_3171[0:0] == 1'b1) ? reg_889 : min_p_21_reg_3164);
assign min_p_25_fu_2156_p3 = ((and_ln29_5_reg_3183[0:0] == 1'b1) ? reg_895 : min_p_23_reg_3176);
assign min_p_27_fu_2245_p3 = ((and_ln29_7_reg_3211[0:0] == 1'b1) ? reg_883 : min_p_25_reg_3188);
assign min_p_29_fu_2335_p3 = ((and_ln29_9_reg_3223[0:0] == 1'b1) ? reg_901 : min_p_27_reg_3216);
assign min_p_31_fu_2425_p3 = ((and_ln29_11_reg_3235[0:0] == 1'b1) ? reg_907 : min_p_29_reg_3228);
assign min_p_33_fu_2515_p3 = ((and_ln29_13_reg_3247[0:0] == 1'b1) ? reg_913 : min_p_31_reg_3240);
assign min_p_34_out = ((and_ln29_13_reg_3247[0:0] == 1'b1) ? reg_913 : min_p_31_reg_3240);
assign min_p_35_fu_2604_p3 = ((and_ln29_15_fu_2599_p2[0:0] == 1'b1) ? p_14_reg_3204 : min_p_33_reg_3252);
assign or_ln29_10_fu_2389_p2 = (icmp_ln29_21_fu_2383_p2 | icmp_ln29_20_fu_2377_p2);
assign or_ln29_11_fu_2407_p2 = (icmp_ln29_23_fu_2401_p2 | icmp_ln29_22_fu_2395_p2);
assign or_ln29_12_fu_2479_p2 = (icmp_ln29_25_fu_2473_p2 | icmp_ln29_24_fu_2467_p2);
assign or_ln29_13_fu_2497_p2 = (icmp_ln29_27_fu_2491_p2 | icmp_ln29_26_fu_2485_p2);
assign or_ln29_14_fu_2569_p2 = (icmp_ln29_29_fu_2563_p2 | icmp_ln29_28_fu_2557_p2);
assign or_ln29_15_fu_2587_p2 = (icmp_ln29_31_fu_2581_p2 | icmp_ln29_30_fu_2575_p2);
assign or_ln29_1_fu_1958_p2 = (icmp_ln29_3_fu_1952_p2 | icmp_ln29_2_fu_1946_p2);
assign or_ln29_2_fu_2030_p2 = (icmp_ln29_5_fu_2024_p2 | icmp_ln29_4_fu_2018_p2);
assign or_ln29_3_fu_2048_p2 = (icmp_ln29_7_fu_2042_p2 | icmp_ln29_6_fu_2036_p2);
assign or_ln29_4_fu_2120_p2 = (icmp_ln29_9_fu_2114_p2 | icmp_ln29_8_fu_2108_p2);
assign or_ln29_5_fu_2138_p2 = (icmp_ln29_11_fu_2132_p2 | icmp_ln29_10_fu_2126_p2);
assign or_ln29_6_fu_2223_p2 = (icmp_ln29_13_fu_2217_p2 | icmp_ln29_12_fu_2211_p2);
assign or_ln29_7_fu_2229_p2 = (icmp_ln29_15_reg_3199 | icmp_ln29_14_reg_3194);
assign or_ln29_8_fu_2299_p2 = (icmp_ln29_17_fu_2293_p2 | icmp_ln29_16_fu_2287_p2);
assign or_ln29_9_fu_2317_p2 = (icmp_ln29_19_fu_2311_p2 | icmp_ln29_18_fu_2305_p2);
assign or_ln29_fu_1940_p2 = (icmp_ln29_fu_1928_p2 | icmp_ln29_1_fu_1934_p2);
assign shl_ln1_fu_961_p3 = {{ap_sig_allocacmp_prev_1}, {3'd0}};
assign tmp_10_fu_1177_p10 = transition_4_q1;
assign tmp_10_fu_1177_p12 = transition_5_q1;
assign tmp_10_fu_1177_p14 = transition_6_q1;
assign tmp_10_fu_1177_p16 = transition_7_q1;
assign tmp_10_fu_1177_p17 = 'bx;
assign tmp_10_fu_1177_p2 = transition_0_q1;
assign tmp_10_fu_1177_p4 = transition_1_q1;
assign tmp_10_fu_1177_p6 = transition_2_q1;
assign tmp_10_fu_1177_p8 = transition_3_q1;
assign tmp_11_fu_1248_p10 = transition_4_q0;
assign tmp_11_fu_1248_p12 = transition_5_q0;
assign tmp_11_fu_1248_p14 = transition_6_q0;
assign tmp_11_fu_1248_p16 = transition_7_q0;
assign tmp_11_fu_1248_p17 = 'bx;
assign tmp_11_fu_1248_p2 = transition_0_q0;
assign tmp_11_fu_1248_p4 = transition_1_q0;
assign tmp_11_fu_1248_p6 = transition_2_q0;
assign tmp_11_fu_1248_p8 = transition_3_q0;
assign tmp_12_fu_1409_p10 = transition_4_q1;
assign tmp_12_fu_1409_p12 = transition_5_q1;
assign tmp_12_fu_1409_p14 = transition_6_q1;
assign tmp_12_fu_1409_p16 = transition_7_q1;
assign tmp_12_fu_1409_p17 = 'bx;
assign tmp_12_fu_1409_p2 = transition_0_q1;
assign tmp_12_fu_1409_p4 = transition_1_q1;
assign tmp_12_fu_1409_p6 = transition_2_q1;
assign tmp_12_fu_1409_p8 = transition_3_q1;
assign tmp_13_fu_1480_p10 = transition_4_q0;
assign tmp_13_fu_1480_p12 = transition_5_q0;
assign tmp_13_fu_1480_p14 = transition_6_q0;
assign tmp_13_fu_1480_p16 = transition_7_q0;
assign tmp_13_fu_1480_p17 = 'bx;
assign tmp_13_fu_1480_p2 = transition_0_q0;
assign tmp_13_fu_1480_p4 = transition_1_q0;
assign tmp_13_fu_1480_p6 = transition_2_q0;
assign tmp_13_fu_1480_p8 = transition_3_q0;
assign tmp_14_fu_1587_p10 = transition_4_q1;
assign tmp_14_fu_1587_p12 = transition_5_q1;
assign tmp_14_fu_1587_p14 = transition_6_q1;
assign tmp_14_fu_1587_p16 = transition_7_q1;
assign tmp_14_fu_1587_p17 = 'bx;
assign tmp_14_fu_1587_p2 = transition_0_q1;
assign tmp_14_fu_1587_p4 = transition_1_q1;
assign tmp_14_fu_1587_p6 = transition_2_q1;
assign tmp_14_fu_1587_p8 = transition_3_q1;
assign tmp_15_fu_1658_p10 = transition_4_q0;
assign tmp_15_fu_1658_p12 = transition_5_q0;
assign tmp_15_fu_1658_p14 = transition_6_q0;
assign tmp_15_fu_1658_p16 = transition_7_q0;
assign tmp_15_fu_1658_p17 = 'bx;
assign tmp_15_fu_1658_p2 = transition_0_q0;
assign tmp_15_fu_1658_p4 = transition_1_q0;
assign tmp_15_fu_1658_p6 = transition_2_q0;
assign tmp_15_fu_1658_p8 = transition_3_q0;
assign tmp_16_fu_1769_p10 = transition_4_q1;
assign tmp_16_fu_1769_p12 = transition_5_q1;
assign tmp_16_fu_1769_p14 = transition_6_q1;
assign tmp_16_fu_1769_p16 = transition_7_q1;
assign tmp_16_fu_1769_p17 = 'bx;
assign tmp_16_fu_1769_p2 = transition_0_q1;
assign tmp_16_fu_1769_p4 = transition_1_q1;
assign tmp_16_fu_1769_p6 = transition_2_q1;
assign tmp_16_fu_1769_p8 = transition_3_q1;
assign tmp_19_fu_1840_p10 = transition_4_q0;
assign tmp_19_fu_1840_p12 = transition_5_q0;
assign tmp_19_fu_1840_p14 = transition_6_q0;
assign tmp_19_fu_1840_p16 = transition_7_q0;
assign tmp_19_fu_1840_p17 = 'bx;
assign tmp_19_fu_1840_p2 = transition_0_q0;
assign tmp_19_fu_1840_p4 = transition_1_q0;
assign tmp_19_fu_1840_p6 = transition_2_q0;
assign tmp_19_fu_1840_p8 = transition_3_q0;
assign tmp_38_fu_1897_p4 = {{bitcast_ln29_fu_1893_p1[62:52]}};
assign tmp_39_fu_1914_p4 = {{bitcast_ln29_1_fu_1911_p1[62:52]}};
assign tmp_41_fu_995_p4 = {{add_ln27_fu_989_p2[8:3]}};
assign tmp_42_fu_1987_p4 = {{bitcast_ln29_2_fu_1983_p1[62:52]}};
assign tmp_43_fu_2004_p4 = {{bitcast_ln29_3_fu_2001_p1[62:52]}};
assign tmp_45_fu_1292_p4 = {{add_ln27_1_fu_1287_p2[8:3]}};
assign tmp_46_fu_2077_p4 = {{bitcast_ln29_4_fu_2073_p1[62:52]}};
assign tmp_47_fu_2094_p4 = {{bitcast_ln29_5_fu_2091_p1[62:52]}};
assign tmp_49_fu_1041_p3 = {{empty_9}, {lshr_ln8_4_fu_1031_p4}};
assign tmp_50_fu_2197_p4 = {{bitcast_ln29_6_fu_2193_p1[62:52]}};
assign tmp_51_fu_2167_p4 = {{bitcast_ln29_7_fu_2163_p1[62:52]}};
assign tmp_53_fu_1060_p3 = {{empty_9}, {add_ln8_fu_1054_p2}};
assign tmp_55_fu_2256_p4 = {{bitcast_ln29_8_fu_2252_p1[62:52]}};
assign tmp_56_fu_2273_p4 = {{bitcast_ln29_9_fu_2270_p1[62:52]}};
assign tmp_58_fu_1089_p3 = {{empty_9}, {lshr_ln8_5_fu_1079_p4}};
assign tmp_59_fu_2346_p4 = {{bitcast_ln29_10_fu_2342_p1[62:52]}};
assign tmp_60_fu_2363_p4 = {{bitcast_ln29_11_fu_2360_p1[62:52]}};
assign tmp_62_fu_1118_p3 = {{empty_9}, {lshr_ln8_6_fu_1108_p4}};
assign tmp_63_fu_2436_p4 = {{bitcast_ln29_12_fu_2432_p1[62:52]}};
assign tmp_64_fu_2453_p4 = {{bitcast_ln29_13_fu_2450_p1[62:52]}};
assign tmp_66_fu_2526_p4 = {{bitcast_ln29_14_fu_2523_p1[62:52]}};
assign tmp_67_fu_2543_p4 = {{bitcast_ln29_15_fu_2540_p1[62:52]}};
assign tmp_s_fu_946_p3 = {{empty_9}, {lshr_ln7_1_fu_936_p4}};
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
assign trunc_ln27_fu_1715_p1 = add_ln25_3_reg_2802[5:0];
assign trunc_ln29_10_fu_2356_p1 = bitcast_ln29_10_fu_2342_p1[51:0];
assign trunc_ln29_11_fu_2373_p1 = bitcast_ln29_11_fu_2360_p1[51:0];
assign trunc_ln29_12_fu_2446_p1 = bitcast_ln29_12_fu_2432_p1[51:0];
assign trunc_ln29_13_fu_2463_p1 = bitcast_ln29_13_fu_2450_p1[51:0];
assign trunc_ln29_14_fu_2536_p1 = bitcast_ln29_14_fu_2523_p1[51:0];
assign trunc_ln29_15_fu_2553_p1 = bitcast_ln29_15_fu_2540_p1[51:0];
assign trunc_ln29_1_fu_1924_p1 = bitcast_ln29_1_fu_1911_p1[51:0];
assign trunc_ln29_2_fu_1997_p1 = bitcast_ln29_2_fu_1983_p1[51:0];
assign trunc_ln29_3_fu_2014_p1 = bitcast_ln29_3_fu_2001_p1[51:0];
assign trunc_ln29_4_fu_2087_p1 = bitcast_ln29_4_fu_2073_p1[51:0];
assign trunc_ln29_5_fu_2104_p1 = bitcast_ln29_5_fu_2091_p1[51:0];
assign trunc_ln29_6_fu_2207_p1 = bitcast_ln29_6_fu_2193_p1[51:0];
assign trunc_ln29_7_fu_2177_p1 = bitcast_ln29_7_fu_2163_p1[51:0];
assign trunc_ln29_8_fu_2266_p1 = bitcast_ln29_8_fu_2252_p1[51:0];
assign trunc_ln29_9_fu_2283_p1 = bitcast_ln29_9_fu_2270_p1[51:0];
assign trunc_ln29_fu_1907_p1 = bitcast_ln29_fu_1893_p1[51:0];
assign zext_ln15_fu_932_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_1049_p1 = tmp_49_fu_1041_p3;
assign zext_ln26_2_fu_1068_p1 = tmp_53_fu_1060_p3;
assign zext_ln26_3_fu_1097_p1 = tmp_58_fu_1089_p3;
assign zext_ln26_4_fu_1126_p1 = tmp_62_fu_1118_p3;
assign zext_ln26_5_fu_1363_p1 = lshr_ln8_7_fu_1354_p4;
assign zext_ln26_6_fu_1372_p1 = add_ln26_fu_1367_p2;
assign zext_ln26_fu_954_p1 = tmp_s_fu_946_p3;
assign zext_ln27_1_fu_1013_p1 = add_ln27_2_fu_1005_p3;
assign zext_ln27_2_fu_1309_p1 = add_ln27_4_fu_1302_p3;
assign zext_ln27_3_fu_1327_p1 = add_ln27_5_fu_1321_p3;
assign zext_ln27_4_fu_1525_p1 = add_ln27_7_fu_1519_p3;
assign zext_ln27_5_fu_1543_p1 = add_ln27_8_fu_1537_p3;
assign zext_ln27_6_fu_1703_p1 = add_ln27_9_fu_1697_p3;
assign zext_ln27_7_fu_1725_p1 = add_ln27_s_fu_1718_p3;
assign zext_ln27_fu_977_p1 = add_ln_fu_969_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2681[2:0] <= 3'b000;
end
endmodule 