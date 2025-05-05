module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_34,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_9,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_50_out,min_p_50_out_ap_vld,grp_fu_944_p_din0,grp_fu_944_p_din1,grp_fu_944_p_opcode,grp_fu_944_p_dout0,grp_fu_944_p_ce,grp_fu_1957_p_din0,grp_fu_1957_p_din1,grp_fu_1957_p_opcode,grp_fu_1957_p_dout0,grp_fu_1957_p_ce); 
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
input  [63:0] min_p_34;
input  [7:0] empty_9;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
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
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] empty;
output  [63:0] min_p_50_out;
output   min_p_50_out_ap_vld;
output  [63:0] grp_fu_944_p_din0;
output  [63:0] grp_fu_944_p_din1;
output  [1:0] grp_fu_944_p_opcode;
input  [63:0] grp_fu_944_p_dout0;
output   grp_fu_944_p_ce;
output  [63:0] grp_fu_1957_p_din0;
output  [63:0] grp_fu_1957_p_din1;
output  [4:0] grp_fu_1957_p_opcode;
input  [0:0] grp_fu_1957_p_dout0;
output   grp_fu_1957_p_ce;
reg ap_idle;
reg min_p_50_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_79_reg_2804;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_865;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_871;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_877;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_883;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_889;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_895;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2680;
wire   [4:0] lshr_ln7_1_fu_918_p4;
reg   [4:0] lshr_ln7_1_reg_2687;
wire   [5:0] add_ln25_1_fu_1029_p2;
reg   [5:0] add_ln25_1_reg_2788;
wire   [6:0] add_ln25_3_fu_1058_p2;
reg   [6:0] add_ln25_3_reg_2798;
reg   [0:0] tmp_79_reg_2804_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2808;
wire   [8:0] shl_ln1_fu_1072_p3;
reg   [8:0] shl_ln1_reg_2813;
wire   [63:0] tmp_10_fu_1111_p19;
reg   [63:0] tmp_10_reg_2819;
reg   [63:0] llike_load_1_reg_2824;
wire   [63:0] tmp_11_fu_1182_p19;
reg   [63:0] tmp_11_reg_2829;
reg   [63:0] llike_1_load_1_reg_2834;
reg   [63:0] llike_load_2_reg_2879;
wire   [5:0] add_ln25_2_fu_1291_p2;
reg   [5:0] add_ln25_2_reg_2929;
wire   [63:0] tmp_12_fu_1390_p19;
reg   [63:0] tmp_12_reg_2949;
wire   [63:0] tmp_13_fu_1461_p19;
reg   [63:0] tmp_13_reg_2954;
reg   [63:0] llike_1_load_2_reg_2959;
reg   [63:0] llike_load_3_reg_3004;
reg   [63:0] llike_1_load_3_reg_3049;
reg   [5:0] tmp_106_reg_3054;
reg   [63:0] llike_load_5_reg_3059;
wire   [63:0] tmp_14_fu_1599_p19;
reg   [63:0] tmp_14_reg_3064;
wire   [63:0] tmp_15_fu_1670_p19;
reg   [63:0] tmp_15_reg_3069;
wire   [63:0] tmp_16_fu_1781_p19;
reg   [63:0] tmp_16_reg_3154;
wire   [63:0] tmp_19_fu_1852_p19;
reg   [63:0] tmp_19_reg_3159;
reg   [63:0] add52_5_reg_3164;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_3169;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_35_reg_3174;
wire   [0:0] and_ln29_1_fu_1982_p2;
reg   [0:0] and_ln29_1_reg_3181;
wire   [63:0] min_p_37_fu_1988_p3;
reg   [63:0] min_p_37_reg_3186;
wire   [0:0] and_ln29_3_fu_2072_p2;
reg   [0:0] and_ln29_3_reg_3193;
wire   [63:0] min_p_39_fu_2078_p3;
reg   [63:0] min_p_39_reg_3198;
wire   [0:0] and_ln29_5_fu_2162_p2;
reg   [0:0] and_ln29_5_reg_3205;
wire   [63:0] min_p_41_fu_2168_p3;
reg   [63:0] min_p_41_reg_3210;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_2193_p2;
reg   [0:0] icmp_ln29_14_reg_3216;
wire   [0:0] icmp_ln29_15_fu_2199_p2;
reg   [0:0] icmp_ln29_15_reg_3221;
reg   [63:0] p_22_reg_3226;
wire   [0:0] and_ln29_7_fu_2251_p2;
reg   [0:0] and_ln29_7_reg_3233;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_43_fu_2257_p3;
reg   [63:0] min_p_43_reg_3238;
wire   [0:0] and_ln29_9_fu_2341_p2;
reg   [0:0] and_ln29_9_reg_3245;
wire   [63:0] min_p_45_fu_2347_p3;
reg   [63:0] min_p_45_reg_3250;
wire   [0:0] and_ln29_11_fu_2431_p2;
reg   [0:0] and_ln29_11_reg_3257;
wire   [63:0] min_p_47_fu_2437_p3;
reg   [63:0] min_p_47_reg_3262;
wire   [0:0] and_ln29_13_fu_2521_p2;
reg   [0:0] and_ln29_13_reg_3269;
wire   [63:0] min_p_49_fu_2527_p3;
reg   [63:0] min_p_49_reg_3274;
reg   [0:0] tmp_112_reg_3281;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_936_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_949_p1;
wire   [63:0] zext_ln26_1_fu_985_p1;
wire   [63:0] zext_ln27_1_fu_998_p1;
wire   [63:0] zext_ln26_2_fu_1024_p1;
wire   [63:0] zext_ln26_3_fu_1053_p1;
wire   [63:0] zext_ln27_2_fu_1244_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1262_p1;
wire   [63:0] zext_ln26_4_fu_1286_p1;
wire   [63:0] zext_ln26_5_fu_1313_p1;
wire   [63:0] zext_ln26_6_fu_1330_p1;
wire   [63:0] zext_ln26_8_fu_1353_p1;
wire   [63:0] zext_ln27_4_fu_1522_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1540_p1;
wire   [63:0] zext_ln27_6_fu_1715_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1737_p1;
reg   [63:0] min_p_fu_140;
wire   [63:0] min_p_51_fu_2616_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_144;
wire   [5:0] add_ln25_4_fu_1891_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
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
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_857_p0;
reg   [63:0] grp_fu_857_p1;
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
reg   [63:0] grp_fu_861_p0;
reg   [63:0] grp_fu_861_p1;
wire   [12:0] tmp_s_fu_928_p3;
wire   [8:0] add_ln_fu_941_p3;
wire   [5:0] add_ln25_fu_961_p2;
wire   [4:0] lshr_ln8_8_fu_967_p4;
wire   [12:0] tmp_83_fu_977_p3;
wire   [8:0] add_ln27_1_fu_990_p3;
wire   [4:0] add_ln8_fu_1010_p2;
wire   [12:0] tmp_87_fu_1016_p3;
wire   [4:0] lshr_ln8_9_fu_1035_p4;
wire   [12:0] tmp_92_fu_1045_p3;
wire   [6:0] zext_ln16_fu_914_p1;
wire   [63:0] tmp_10_fu_1111_p2;
wire   [63:0] tmp_10_fu_1111_p4;
wire   [63:0] tmp_10_fu_1111_p6;
wire   [63:0] tmp_10_fu_1111_p8;
wire   [63:0] tmp_10_fu_1111_p10;
wire   [63:0] tmp_10_fu_1111_p12;
wire   [63:0] tmp_10_fu_1111_p14;
wire   [63:0] tmp_10_fu_1111_p16;
wire   [63:0] tmp_10_fu_1111_p17;
wire   [63:0] tmp_11_fu_1182_p2;
wire   [63:0] tmp_11_fu_1182_p4;
wire   [63:0] tmp_11_fu_1182_p6;
wire   [63:0] tmp_11_fu_1182_p8;
wire   [63:0] tmp_11_fu_1182_p10;
wire   [63:0] tmp_11_fu_1182_p12;
wire   [63:0] tmp_11_fu_1182_p14;
wire   [63:0] tmp_11_fu_1182_p16;
wire   [63:0] tmp_11_fu_1182_p17;
wire   [8:0] add_ln27_fu_1221_p2;
wire   [5:0] tmp_88_fu_1227_p4;
wire   [8:0] add_ln27_3_fu_1237_p3;
wire   [8:0] add_ln27_4_fu_1256_p3;
wire   [4:0] add_ln8_7_fu_1274_p2;
wire   [12:0] tmp_96_fu_1279_p3;
wire   [4:0] lshr_ln8_s_fu_1296_p4;
wire   [12:0] tmp_101_fu_1306_p3;
wire   [4:0] add_ln8_8_fu_1318_p2;
wire   [12:0] tmp_105_fu_1323_p3;
wire   [5:0] lshr_ln8_1_fu_1335_p4;
wire   [12:0] zext_ln26_7_fu_1344_p1;
wire   [12:0] add_ln26_fu_1348_p2;
wire   [63:0] tmp_12_fu_1390_p2;
wire   [63:0] tmp_12_fu_1390_p4;
wire   [63:0] tmp_12_fu_1390_p6;
wire   [63:0] tmp_12_fu_1390_p8;
wire   [63:0] tmp_12_fu_1390_p10;
wire   [63:0] tmp_12_fu_1390_p12;
wire   [63:0] tmp_12_fu_1390_p14;
wire   [63:0] tmp_12_fu_1390_p16;
wire   [63:0] tmp_12_fu_1390_p17;
wire   [63:0] tmp_13_fu_1461_p2;
wire   [63:0] tmp_13_fu_1461_p4;
wire   [63:0] tmp_13_fu_1461_p6;
wire   [63:0] tmp_13_fu_1461_p8;
wire   [63:0] tmp_13_fu_1461_p10;
wire   [63:0] tmp_13_fu_1461_p12;
wire   [63:0] tmp_13_fu_1461_p14;
wire   [63:0] tmp_13_fu_1461_p16;
wire   [63:0] tmp_13_fu_1461_p17;
wire   [8:0] add_ln27_2_fu_1500_p2;
wire   [5:0] tmp_97_fu_1505_p4;
wire   [8:0] add_ln27_6_fu_1515_p3;
wire   [8:0] add_ln27_7_fu_1534_p3;
wire   [8:0] add_ln27_5_fu_1552_p2;
wire   [63:0] tmp_14_fu_1599_p2;
wire   [63:0] tmp_14_fu_1599_p4;
wire   [63:0] tmp_14_fu_1599_p6;
wire   [63:0] tmp_14_fu_1599_p8;
wire   [63:0] tmp_14_fu_1599_p10;
wire   [63:0] tmp_14_fu_1599_p12;
wire   [63:0] tmp_14_fu_1599_p14;
wire   [63:0] tmp_14_fu_1599_p16;
wire   [63:0] tmp_14_fu_1599_p17;
wire   [63:0] tmp_15_fu_1670_p2;
wire   [63:0] tmp_15_fu_1670_p4;
wire   [63:0] tmp_15_fu_1670_p6;
wire   [63:0] tmp_15_fu_1670_p8;
wire   [63:0] tmp_15_fu_1670_p10;
wire   [63:0] tmp_15_fu_1670_p12;
wire   [63:0] tmp_15_fu_1670_p14;
wire   [63:0] tmp_15_fu_1670_p16;
wire   [63:0] tmp_15_fu_1670_p17;
wire   [8:0] add_ln27_9_fu_1709_p3;
wire   [5:0] trunc_ln27_fu_1727_p1;
wire   [8:0] add_ln27_s_fu_1730_p3;
wire   [63:0] tmp_16_fu_1781_p2;
wire   [63:0] tmp_16_fu_1781_p4;
wire   [63:0] tmp_16_fu_1781_p6;
wire   [63:0] tmp_16_fu_1781_p8;
wire   [63:0] tmp_16_fu_1781_p10;
wire   [63:0] tmp_16_fu_1781_p12;
wire   [63:0] tmp_16_fu_1781_p14;
wire   [63:0] tmp_16_fu_1781_p16;
wire   [63:0] tmp_16_fu_1781_p17;
wire   [63:0] tmp_19_fu_1852_p2;
wire   [63:0] tmp_19_fu_1852_p4;
wire   [63:0] tmp_19_fu_1852_p6;
wire   [63:0] tmp_19_fu_1852_p8;
wire   [63:0] tmp_19_fu_1852_p10;
wire   [63:0] tmp_19_fu_1852_p12;
wire   [63:0] tmp_19_fu_1852_p14;
wire   [63:0] tmp_19_fu_1852_p16;
wire   [63:0] tmp_19_fu_1852_p17;
wire   [63:0] bitcast_ln29_fu_1905_p1;
wire   [63:0] bitcast_ln29_1_fu_1923_p1;
wire   [10:0] tmp_80_fu_1909_p4;
wire   [51:0] trunc_ln29_fu_1919_p1;
wire   [0:0] icmp_ln29_1_fu_1946_p2;
wire   [0:0] icmp_ln29_fu_1940_p2;
wire   [10:0] tmp_81_fu_1926_p4;
wire   [51:0] trunc_ln29_1_fu_1936_p1;
wire   [0:0] icmp_ln29_3_fu_1964_p2;
wire   [0:0] icmp_ln29_2_fu_1958_p2;
wire   [0:0] or_ln29_fu_1952_p2;
wire   [0:0] and_ln29_fu_1976_p2;
wire   [0:0] or_ln29_1_fu_1970_p2;
wire   [63:0] bitcast_ln29_2_fu_1995_p1;
wire   [63:0] bitcast_ln29_3_fu_2013_p1;
wire   [10:0] tmp_84_fu_1999_p4;
wire   [51:0] trunc_ln29_2_fu_2009_p1;
wire   [0:0] icmp_ln29_5_fu_2036_p2;
wire   [0:0] icmp_ln29_4_fu_2030_p2;
wire   [10:0] tmp_85_fu_2016_p4;
wire   [51:0] trunc_ln29_3_fu_2026_p1;
wire   [0:0] icmp_ln29_7_fu_2054_p2;
wire   [0:0] icmp_ln29_6_fu_2048_p2;
wire   [0:0] or_ln29_3_fu_2060_p2;
wire   [0:0] or_ln29_2_fu_2042_p2;
wire   [0:0] and_ln29_2_fu_2066_p2;
wire   [63:0] bitcast_ln29_4_fu_2085_p1;
wire   [63:0] bitcast_ln29_5_fu_2103_p1;
wire   [10:0] tmp_89_fu_2089_p4;
wire   [51:0] trunc_ln29_4_fu_2099_p1;
wire   [0:0] icmp_ln29_9_fu_2126_p2;
wire   [0:0] icmp_ln29_8_fu_2120_p2;
wire   [10:0] tmp_90_fu_2106_p4;
wire   [51:0] trunc_ln29_5_fu_2116_p1;
wire   [0:0] icmp_ln29_11_fu_2144_p2;
wire   [0:0] icmp_ln29_10_fu_2138_p2;
wire   [0:0] or_ln29_5_fu_2150_p2;
wire   [0:0] or_ln29_4_fu_2132_p2;
wire   [0:0] and_ln29_4_fu_2156_p2;
wire   [63:0] bitcast_ln29_7_fu_2175_p1;
wire   [10:0] tmp_94_fu_2179_p4;
wire   [51:0] trunc_ln29_7_fu_2189_p1;
wire   [63:0] bitcast_ln29_6_fu_2205_p1;
wire   [10:0] tmp_93_fu_2209_p4;
wire   [51:0] trunc_ln29_6_fu_2219_p1;
wire   [0:0] icmp_ln29_13_fu_2229_p2;
wire   [0:0] icmp_ln29_12_fu_2223_p2;
wire   [0:0] or_ln29_7_fu_2241_p2;
wire   [0:0] or_ln29_6_fu_2235_p2;
wire   [0:0] and_ln29_6_fu_2245_p2;
wire   [63:0] bitcast_ln29_8_fu_2264_p1;
wire   [63:0] bitcast_ln29_9_fu_2282_p1;
wire   [10:0] tmp_98_fu_2268_p4;
wire   [51:0] trunc_ln29_8_fu_2278_p1;
wire   [0:0] icmp_ln29_17_fu_2305_p2;
wire   [0:0] icmp_ln29_16_fu_2299_p2;
wire   [10:0] tmp_99_fu_2285_p4;
wire   [51:0] trunc_ln29_9_fu_2295_p1;
wire   [0:0] icmp_ln29_19_fu_2323_p2;
wire   [0:0] icmp_ln29_18_fu_2317_p2;
wire   [0:0] or_ln29_9_fu_2329_p2;
wire   [0:0] or_ln29_8_fu_2311_p2;
wire   [0:0] and_ln29_8_fu_2335_p2;
wire   [63:0] bitcast_ln29_10_fu_2354_p1;
wire   [63:0] bitcast_ln29_11_fu_2372_p1;
wire   [10:0] tmp_102_fu_2358_p4;
wire   [51:0] trunc_ln29_10_fu_2368_p1;
wire   [0:0] icmp_ln29_21_fu_2395_p2;
wire   [0:0] icmp_ln29_20_fu_2389_p2;
wire   [10:0] tmp_103_fu_2375_p4;
wire   [51:0] trunc_ln29_11_fu_2385_p1;
wire   [0:0] icmp_ln29_23_fu_2413_p2;
wire   [0:0] icmp_ln29_22_fu_2407_p2;
wire   [0:0] or_ln29_11_fu_2419_p2;
wire   [0:0] or_ln29_10_fu_2401_p2;
wire   [0:0] and_ln29_10_fu_2425_p2;
wire   [63:0] bitcast_ln29_12_fu_2444_p1;
wire   [63:0] bitcast_ln29_13_fu_2462_p1;
wire   [10:0] tmp_107_fu_2448_p4;
wire   [51:0] trunc_ln29_12_fu_2458_p1;
wire   [0:0] icmp_ln29_25_fu_2485_p2;
wire   [0:0] icmp_ln29_24_fu_2479_p2;
wire   [10:0] tmp_108_fu_2465_p4;
wire   [51:0] trunc_ln29_13_fu_2475_p1;
wire   [0:0] icmp_ln29_27_fu_2503_p2;
wire   [0:0] icmp_ln29_26_fu_2497_p2;
wire   [0:0] or_ln29_13_fu_2509_p2;
wire   [0:0] or_ln29_12_fu_2491_p2;
wire   [0:0] and_ln29_12_fu_2515_p2;
wire   [63:0] bitcast_ln29_14_fu_2535_p1;
wire   [63:0] bitcast_ln29_15_fu_2552_p1;
wire   [10:0] tmp_110_fu_2538_p4;
wire   [51:0] trunc_ln29_14_fu_2548_p1;
wire   [0:0] icmp_ln29_29_fu_2575_p2;
wire   [0:0] icmp_ln29_28_fu_2569_p2;
wire   [10:0] tmp_111_fu_2555_p4;
wire   [51:0] trunc_ln29_15_fu_2565_p1;
wire   [0:0] icmp_ln29_31_fu_2593_p2;
wire   [0:0] icmp_ln29_30_fu_2587_p2;
wire   [0:0] or_ln29_15_fu_2599_p2;
wire   [0:0] or_ln29_14_fu_2581_p2;
wire   [0:0] and_ln29_14_fu_2605_p2;
wire   [0:0] and_ln29_15_fu_2611_p2;
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
wire   [2:0] tmp_10_fu_1111_p1;
wire   [2:0] tmp_10_fu_1111_p3;
wire   [2:0] tmp_10_fu_1111_p5;
wire   [2:0] tmp_10_fu_1111_p7;
wire  signed [2:0] tmp_10_fu_1111_p9;
wire  signed [2:0] tmp_10_fu_1111_p11;
wire  signed [2:0] tmp_10_fu_1111_p13;
wire  signed [2:0] tmp_10_fu_1111_p15;
wire   [2:0] tmp_11_fu_1182_p1;
wire   [2:0] tmp_11_fu_1182_p3;
wire   [2:0] tmp_11_fu_1182_p5;
wire   [2:0] tmp_11_fu_1182_p7;
wire  signed [2:0] tmp_11_fu_1182_p9;
wire  signed [2:0] tmp_11_fu_1182_p11;
wire  signed [2:0] tmp_11_fu_1182_p13;
wire  signed [2:0] tmp_11_fu_1182_p15;
wire   [2:0] tmp_12_fu_1390_p1;
wire   [2:0] tmp_12_fu_1390_p3;
wire   [2:0] tmp_12_fu_1390_p5;
wire   [2:0] tmp_12_fu_1390_p7;
wire  signed [2:0] tmp_12_fu_1390_p9;
wire  signed [2:0] tmp_12_fu_1390_p11;
wire  signed [2:0] tmp_12_fu_1390_p13;
wire  signed [2:0] tmp_12_fu_1390_p15;
wire   [2:0] tmp_13_fu_1461_p1;
wire   [2:0] tmp_13_fu_1461_p3;
wire   [2:0] tmp_13_fu_1461_p5;
wire   [2:0] tmp_13_fu_1461_p7;
wire  signed [2:0] tmp_13_fu_1461_p9;
wire  signed [2:0] tmp_13_fu_1461_p11;
wire  signed [2:0] tmp_13_fu_1461_p13;
wire  signed [2:0] tmp_13_fu_1461_p15;
wire   [2:0] tmp_14_fu_1599_p1;
wire   [2:0] tmp_14_fu_1599_p3;
wire   [2:0] tmp_14_fu_1599_p5;
wire   [2:0] tmp_14_fu_1599_p7;
wire  signed [2:0] tmp_14_fu_1599_p9;
wire  signed [2:0] tmp_14_fu_1599_p11;
wire  signed [2:0] tmp_14_fu_1599_p13;
wire  signed [2:0] tmp_14_fu_1599_p15;
wire   [2:0] tmp_15_fu_1670_p1;
wire   [2:0] tmp_15_fu_1670_p3;
wire   [2:0] tmp_15_fu_1670_p5;
wire   [2:0] tmp_15_fu_1670_p7;
wire  signed [2:0] tmp_15_fu_1670_p9;
wire  signed [2:0] tmp_15_fu_1670_p11;
wire  signed [2:0] tmp_15_fu_1670_p13;
wire  signed [2:0] tmp_15_fu_1670_p15;
wire   [2:0] tmp_16_fu_1781_p1;
wire   [2:0] tmp_16_fu_1781_p3;
wire   [2:0] tmp_16_fu_1781_p5;
wire   [2:0] tmp_16_fu_1781_p7;
wire  signed [2:0] tmp_16_fu_1781_p9;
wire  signed [2:0] tmp_16_fu_1781_p11;
wire  signed [2:0] tmp_16_fu_1781_p13;
wire  signed [2:0] tmp_16_fu_1781_p15;
wire   [2:0] tmp_19_fu_1852_p1;
wire   [2:0] tmp_19_fu_1852_p3;
wire   [2:0] tmp_19_fu_1852_p5;
wire   [2:0] tmp_19_fu_1852_p7;
wire  signed [2:0] tmp_19_fu_1852_p9;
wire  signed [2:0] tmp_19_fu_1852_p11;
wire  signed [2:0] tmp_19_fu_1852_p13;
wire  signed [2:0] tmp_19_fu_1852_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_140 = 64'd0;
#0 prev_fu_144 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U36(.din0(tmp_10_fu_1111_p2),.din1(tmp_10_fu_1111_p4),.din2(tmp_10_fu_1111_p6),.din3(tmp_10_fu_1111_p8),.din4(tmp_10_fu_1111_p10),.din5(tmp_10_fu_1111_p12),.din6(tmp_10_fu_1111_p14),.din7(tmp_10_fu_1111_p16),.def(tmp_10_fu_1111_p17),.sel(empty_10),.dout(tmp_10_fu_1111_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U37(.din0(tmp_11_fu_1182_p2),.din1(tmp_11_fu_1182_p4),.din2(tmp_11_fu_1182_p6),.din3(tmp_11_fu_1182_p8),.din4(tmp_11_fu_1182_p10),.din5(tmp_11_fu_1182_p12),.din6(tmp_11_fu_1182_p14),.din7(tmp_11_fu_1182_p16),.def(tmp_11_fu_1182_p17),.sel(empty_10),.dout(tmp_11_fu_1182_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U38(.din0(tmp_12_fu_1390_p2),.din1(tmp_12_fu_1390_p4),.din2(tmp_12_fu_1390_p6),.din3(tmp_12_fu_1390_p8),.din4(tmp_12_fu_1390_p10),.din5(tmp_12_fu_1390_p12),.din6(tmp_12_fu_1390_p14),.din7(tmp_12_fu_1390_p16),.def(tmp_12_fu_1390_p17),.sel(empty_10),.dout(tmp_12_fu_1390_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U39(.din0(tmp_13_fu_1461_p2),.din1(tmp_13_fu_1461_p4),.din2(tmp_13_fu_1461_p6),.din3(tmp_13_fu_1461_p8),.din4(tmp_13_fu_1461_p10),.din5(tmp_13_fu_1461_p12),.din6(tmp_13_fu_1461_p14),.din7(tmp_13_fu_1461_p16),.def(tmp_13_fu_1461_p17),.sel(empty_10),.dout(tmp_13_fu_1461_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U40(.din0(tmp_14_fu_1599_p2),.din1(tmp_14_fu_1599_p4),.din2(tmp_14_fu_1599_p6),.din3(tmp_14_fu_1599_p8),.din4(tmp_14_fu_1599_p10),.din5(tmp_14_fu_1599_p12),.din6(tmp_14_fu_1599_p14),.din7(tmp_14_fu_1599_p16),.def(tmp_14_fu_1599_p17),.sel(empty_10),.dout(tmp_14_fu_1599_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U41(.din0(tmp_15_fu_1670_p2),.din1(tmp_15_fu_1670_p4),.din2(tmp_15_fu_1670_p6),.din3(tmp_15_fu_1670_p8),.din4(tmp_15_fu_1670_p10),.din5(tmp_15_fu_1670_p12),.din6(tmp_15_fu_1670_p14),.din7(tmp_15_fu_1670_p16),.def(tmp_15_fu_1670_p17),.sel(empty_10),.dout(tmp_15_fu_1670_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U42(.din0(tmp_16_fu_1781_p2),.din1(tmp_16_fu_1781_p4),.din2(tmp_16_fu_1781_p6),.din3(tmp_16_fu_1781_p8),.din4(tmp_16_fu_1781_p10),.din5(tmp_16_fu_1781_p12),.din6(tmp_16_fu_1781_p14),.din7(tmp_16_fu_1781_p16),.def(tmp_16_fu_1781_p17),.sel(empty_10),.dout(tmp_16_fu_1781_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U43(.din0(tmp_19_fu_1852_p2),.din1(tmp_19_fu_1852_p4),.din2(tmp_19_fu_1852_p6),.din3(tmp_19_fu_1852_p8),.din4(tmp_19_fu_1852_p10),.din5(tmp_19_fu_1852_p12),.din6(tmp_19_fu_1852_p14),.din7(tmp_19_fu_1852_p16),.def(tmp_19_fu_1852_p17),.sel(empty_10),.dout(tmp_19_fu_1852_p19));
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
            min_p_fu_140 <= min_p_34;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_140 <= min_p_51_fu_2616_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_144 <= 6'd1;
    end else if (((tmp_79_reg_2804 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_144 <= add_ln25_4_fu_1891_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_3164 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_3169 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_2788 <= add_ln25_1_fu_1029_p2;
        add_ln25_3_reg_2798 <= add_ln25_3_fu_1058_p2;
        lshr_ln7_1_reg_2687 <= {{ap_sig_allocacmp_prev_1[5:1]}};
        prev_1_reg_2680 <= ap_sig_allocacmp_prev_1;
        tmp_79_reg_2804 <= add_ln25_3_fu_1058_p2[32'd6];
        tmp_79_reg_2804_pp0_iter1_reg <= tmp_79_reg_2804;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_2_reg_2929 <= add_ln25_2_fu_1291_p2;
        min_p_35_reg_3174 <= min_p_fu_140;
        shl_ln1_reg_2813[8 : 3] <= shl_ln1_fu_1072_p3[8 : 3];
        tmp_10_reg_2819 <= tmp_10_fu_1111_p19;
        tmp_11_reg_2829 <= tmp_11_fu_1182_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_3257 <= and_ln29_11_fu_2431_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_3269 <= and_ln29_13_fu_2521_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_3181 <= and_ln29_1_fu_1982_p2;
        tmp_106_reg_3054 <= {{add_ln27_5_fu_1552_p2[8:3]}};
        tmp_12_reg_2949 <= tmp_12_fu_1390_p19;
        tmp_13_reg_2954 <= tmp_13_fu_1461_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_3193 <= and_ln29_3_fu_2072_p2;
        tmp_16_reg_3154 <= tmp_16_fu_1781_p19;
        tmp_19_reg_3159 <= tmp_19_fu_1852_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_3205 <= and_ln29_5_fu_2162_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_3233 <= and_ln29_7_fu_2251_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_3245 <= and_ln29_9_fu_2341_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_3216 <= icmp_ln29_14_fu_2193_p2;
        icmp_ln29_15_reg_3221 <= icmp_ln29_15_fu_2199_p2;
        min_p_41_reg_3210 <= min_p_41_fu_2168_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2834 <= llike_1_q0;
        llike_1_load_reg_2808 <= llike_1_q1;
        llike_load_1_reg_2824 <= llike_q1;
        llike_load_2_reg_2879 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_2959 <= llike_1_q1;
        llike_1_load_3_reg_3049 <= llike_1_q0;
        llike_load_3_reg_3004 <= llike_q1;
        llike_load_5_reg_3059 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_37_reg_3186 <= min_p_37_fu_1988_p3;
        tmp_14_reg_3064 <= tmp_14_fu_1599_p19;
        tmp_15_reg_3069 <= tmp_15_fu_1670_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_39_reg_3198 <= min_p_39_fu_2078_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_43_reg_3238 <= min_p_43_fu_2257_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_45_reg_3250 <= min_p_45_fu_2347_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_47_reg_3262 <= min_p_47_fu_2437_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_49_reg_3274 <= min_p_49_fu_2527_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_22_reg_3226 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_865 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_871 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_877 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_883 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_889 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_895 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_112_reg_3281 <= grp_fu_1957_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_79_reg_2804 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_79_reg_2804_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_857_p0 = add52_7_reg_3169;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_857_p0 = reg_895;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_857_p0 = add52_5_reg_3164;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_857_p0 = reg_889;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_857_p0 = reg_883;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_857_p0 = reg_877;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_857_p0 = reg_871;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_857_p0 = reg_865;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_857_p0 = llike_load_5_reg_3059;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_857_p0 = llike_1_load_3_reg_3049;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_857_p0 = llike_load_3_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_857_p0 = llike_1_load_2_reg_2959;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_857_p0 = llike_load_2_reg_2879;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_857_p0 = llike_1_load_1_reg_2834;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_857_p0 = llike_load_1_reg_2824;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_857_p0 = llike_1_load_reg_2808;
    end else begin
        grp_fu_857_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_857_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_857_p1 = tmp_19_reg_3159;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_857_p1 = tmp_16_reg_3154;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_857_p1 = tmp_15_reg_3069;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_857_p1 = tmp_14_reg_3064;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_857_p1 = tmp_13_reg_2954;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_857_p1 = tmp_12_reg_2949;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_857_p1 = tmp_11_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_857_p1 = tmp_10_reg_2819;
    end else begin
        grp_fu_857_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_861_p0 = p_22_reg_3226;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_861_p0 = reg_895;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_861_p0 = reg_889;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_861_p0 = reg_883;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_861_p0 = reg_877;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_861_p0 = reg_871;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_861_p0 = reg_865;
    end else begin
        grp_fu_861_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_861_p1 = min_p_49_fu_2527_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_861_p1 = min_p_47_fu_2437_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_861_p1 = min_p_45_fu_2347_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_861_p1 = min_p_43_fu_2257_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_861_p1 = min_p_41_fu_2168_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_861_p1 = min_p_39_fu_2078_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_861_p1 = min_p_37_fu_1988_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_861_p1 = min_p_fu_140;
        end else begin
            grp_fu_861_p1 = 'bx;
        end
    end else begin
        grp_fu_861_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_6_fu_1330_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_1024_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln26_4_fu_1286_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_936_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_8_fu_1353_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_3_fu_1053_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln26_5_fu_1313_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_985_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_79_reg_2804_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_50_out_ap_vld = 1'b1;
    end else begin
        min_p_50_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_949_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_949_p1;
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
            transition_2_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_2_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_949_p1;
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
            transition_3_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_3_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_949_p1;
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
            transition_4_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_4_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_949_p1;
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
            transition_5_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_5_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_949_p1;
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
            transition_6_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_6_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_949_p1;
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
            transition_7_address0_local = zext_ln27_7_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address0_local = zext_ln27_5_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln27_3_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_998_p1;
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
            transition_7_address1_local = zext_ln27_6_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln27_4_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln27_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_949_p1;
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
assign add_ln25_1_fu_1029_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln25_2_fu_1291_p2 = (prev_1_reg_2680 + 6'd5);
assign add_ln25_3_fu_1058_p2 = (zext_ln16_fu_914_p1 + 7'd7);
assign add_ln25_4_fu_1891_p2 = (prev_1_reg_2680 + 6'd8);
assign add_ln25_fu_961_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_1348_p2 = (empty + zext_ln26_7_fu_1344_p1);
assign add_ln27_1_fu_990_p3 = {{add_ln25_fu_961_p2}, {lshr_ln}};
assign add_ln27_2_fu_1500_p2 = (shl_ln1_reg_2813 + 9'd32);
assign add_ln27_3_fu_1237_p3 = {{tmp_88_fu_1227_p4}, {lshr_ln}};
assign add_ln27_4_fu_1256_p3 = {{add_ln25_1_reg_2788}, {lshr_ln}};
assign add_ln27_5_fu_1552_p2 = (shl_ln1_reg_2813 + 9'd48);
assign add_ln27_6_fu_1515_p3 = {{tmp_97_fu_1505_p4}, {lshr_ln}};
assign add_ln27_7_fu_1534_p3 = {{add_ln25_2_reg_2929}, {lshr_ln}};
assign add_ln27_9_fu_1709_p3 = {{tmp_106_reg_3054}, {lshr_ln}};
assign add_ln27_fu_1221_p2 = (shl_ln1_fu_1072_p3 + 9'd16);
assign add_ln27_s_fu_1730_p3 = {{trunc_ln27_fu_1727_p1}, {lshr_ln}};
assign add_ln8_7_fu_1274_p2 = (lshr_ln7_1_reg_2687 + 5'd2);
assign add_ln8_8_fu_1318_p2 = (lshr_ln7_1_reg_2687 + 5'd3);
assign add_ln8_fu_1010_p2 = (lshr_ln7_1_fu_918_p4 + 5'd1);
assign add_ln_fu_941_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_2425_p2 = (or_ln29_11_fu_2419_p2 & or_ln29_10_fu_2401_p2);
assign and_ln29_11_fu_2431_p2 = (grp_fu_1957_p_dout0 & and_ln29_10_fu_2425_p2);
assign and_ln29_12_fu_2515_p2 = (or_ln29_13_fu_2509_p2 & or_ln29_12_fu_2491_p2);
assign and_ln29_13_fu_2521_p2 = (grp_fu_1957_p_dout0 & and_ln29_12_fu_2515_p2);
assign and_ln29_14_fu_2605_p2 = (or_ln29_15_fu_2599_p2 & or_ln29_14_fu_2581_p2);
assign and_ln29_15_fu_2611_p2 = (tmp_112_reg_3281 & and_ln29_14_fu_2605_p2);
assign and_ln29_1_fu_1982_p2 = (or_ln29_1_fu_1970_p2 & and_ln29_fu_1976_p2);
assign and_ln29_2_fu_2066_p2 = (or_ln29_3_fu_2060_p2 & or_ln29_2_fu_2042_p2);
assign and_ln29_3_fu_2072_p2 = (grp_fu_1957_p_dout0 & and_ln29_2_fu_2066_p2);
assign and_ln29_4_fu_2156_p2 = (or_ln29_5_fu_2150_p2 & or_ln29_4_fu_2132_p2);
assign and_ln29_5_fu_2162_p2 = (grp_fu_1957_p_dout0 & and_ln29_4_fu_2156_p2);
assign and_ln29_6_fu_2245_p2 = (or_ln29_7_fu_2241_p2 & or_ln29_6_fu_2235_p2);
assign and_ln29_7_fu_2251_p2 = (grp_fu_1957_p_dout0 & and_ln29_6_fu_2245_p2);
assign and_ln29_8_fu_2335_p2 = (or_ln29_9_fu_2329_p2 & or_ln29_8_fu_2311_p2);
assign and_ln29_9_fu_2341_p2 = (grp_fu_1957_p_dout0 & and_ln29_8_fu_2335_p2);
assign and_ln29_fu_1976_p2 = (or_ln29_fu_1952_p2 & grp_fu_1957_p_dout0);
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
assign bitcast_ln29_10_fu_2354_p1 = reg_889;
assign bitcast_ln29_11_fu_2372_p1 = min_p_45_reg_3250;
assign bitcast_ln29_12_fu_2444_p1 = reg_895;
assign bitcast_ln29_13_fu_2462_p1 = min_p_47_reg_3262;
assign bitcast_ln29_14_fu_2535_p1 = p_22_reg_3226;
assign bitcast_ln29_15_fu_2552_p1 = min_p_49_reg_3274;
assign bitcast_ln29_1_fu_1923_p1 = min_p_35_reg_3174;
assign bitcast_ln29_2_fu_1995_p1 = reg_871;
assign bitcast_ln29_3_fu_2013_p1 = min_p_37_reg_3186;
assign bitcast_ln29_4_fu_2085_p1 = reg_877;
assign bitcast_ln29_5_fu_2103_p1 = min_p_39_reg_3198;
assign bitcast_ln29_6_fu_2205_p1 = reg_865;
assign bitcast_ln29_7_fu_2175_p1 = min_p_41_fu_2168_p3;
assign bitcast_ln29_8_fu_2264_p1 = reg_883;
assign bitcast_ln29_9_fu_2282_p1 = min_p_43_reg_3238;
assign bitcast_ln29_fu_1905_p1 = reg_865;
assign grp_fu_1957_p_ce = 1'b1;
assign grp_fu_1957_p_din0 = grp_fu_861_p0;
assign grp_fu_1957_p_din1 = grp_fu_861_p1;
assign grp_fu_1957_p_opcode = 5'd4;
assign grp_fu_944_p_ce = 1'b1;
assign grp_fu_944_p_din0 = grp_fu_857_p0;
assign grp_fu_944_p_din1 = grp_fu_857_p1;
assign grp_fu_944_p_opcode = 2'd0;
assign icmp_ln29_10_fu_2138_p2 = ((tmp_90_fu_2106_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_2144_p2 = ((trunc_ln29_5_fu_2116_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_2223_p2 = ((tmp_93_fu_2209_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_2229_p2 = ((trunc_ln29_6_fu_2219_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_2193_p2 = ((tmp_94_fu_2179_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_2199_p2 = ((trunc_ln29_7_fu_2189_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_2299_p2 = ((tmp_98_fu_2268_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_2305_p2 = ((trunc_ln29_8_fu_2278_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_2317_p2 = ((tmp_99_fu_2285_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_2323_p2 = ((trunc_ln29_9_fu_2295_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1946_p2 = ((trunc_ln29_fu_1919_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_2389_p2 = ((tmp_102_fu_2358_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_2395_p2 = ((trunc_ln29_10_fu_2368_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_2407_p2 = ((tmp_103_fu_2375_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_2413_p2 = ((trunc_ln29_11_fu_2385_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2479_p2 = ((tmp_107_fu_2448_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2485_p2 = ((trunc_ln29_12_fu_2458_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2497_p2 = ((tmp_108_fu_2465_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2503_p2 = ((trunc_ln29_13_fu_2475_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2569_p2 = ((tmp_110_fu_2538_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2575_p2 = ((trunc_ln29_14_fu_2548_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1958_p2 = ((tmp_81_fu_1926_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2587_p2 = ((tmp_111_fu_2555_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2593_p2 = ((trunc_ln29_15_fu_2565_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1964_p2 = ((trunc_ln29_1_fu_1936_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_2030_p2 = ((tmp_84_fu_1999_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_2036_p2 = ((trunc_ln29_2_fu_2009_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_2048_p2 = ((tmp_85_fu_2016_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_2054_p2 = ((trunc_ln29_3_fu_2026_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_2120_p2 = ((tmp_89_fu_2089_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_2126_p2 = ((trunc_ln29_4_fu_2099_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1940_p2 = ((tmp_80_fu_1909_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln7_1_fu_918_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_1_fu_1335_p4 = {{add_ln25_3_reg_2798[6:1]}};
assign lshr_ln8_8_fu_967_p4 = {{add_ln25_fu_961_p2[5:1]}};
assign lshr_ln8_9_fu_1035_p4 = {{add_ln25_1_fu_1029_p2[5:1]}};
assign lshr_ln8_s_fu_1296_p4 = {{add_ln25_2_fu_1291_p2[5:1]}};
assign min_p_37_fu_1988_p3 = ((and_ln29_1_reg_3181[0:0] == 1'b1) ? reg_865 : min_p_35_reg_3174);
assign min_p_39_fu_2078_p3 = ((and_ln29_3_reg_3193[0:0] == 1'b1) ? reg_871 : min_p_37_reg_3186);
assign min_p_41_fu_2168_p3 = ((and_ln29_5_reg_3205[0:0] == 1'b1) ? reg_877 : min_p_39_reg_3198);
assign min_p_43_fu_2257_p3 = ((and_ln29_7_reg_3233[0:0] == 1'b1) ? reg_865 : min_p_41_reg_3210);
assign min_p_45_fu_2347_p3 = ((and_ln29_9_reg_3245[0:0] == 1'b1) ? reg_883 : min_p_43_reg_3238);
assign min_p_47_fu_2437_p3 = ((and_ln29_11_reg_3257[0:0] == 1'b1) ? reg_889 : min_p_45_reg_3250);
assign min_p_49_fu_2527_p3 = ((and_ln29_13_reg_3269[0:0] == 1'b1) ? reg_895 : min_p_47_reg_3262);
assign min_p_50_out = ((and_ln29_13_reg_3269[0:0] == 1'b1) ? reg_895 : min_p_47_reg_3262);
assign min_p_51_fu_2616_p3 = ((and_ln29_15_fu_2611_p2[0:0] == 1'b1) ? p_22_reg_3226 : min_p_49_reg_3274);
assign or_ln29_10_fu_2401_p2 = (icmp_ln29_21_fu_2395_p2 | icmp_ln29_20_fu_2389_p2);
assign or_ln29_11_fu_2419_p2 = (icmp_ln29_23_fu_2413_p2 | icmp_ln29_22_fu_2407_p2);
assign or_ln29_12_fu_2491_p2 = (icmp_ln29_25_fu_2485_p2 | icmp_ln29_24_fu_2479_p2);
assign or_ln29_13_fu_2509_p2 = (icmp_ln29_27_fu_2503_p2 | icmp_ln29_26_fu_2497_p2);
assign or_ln29_14_fu_2581_p2 = (icmp_ln29_29_fu_2575_p2 | icmp_ln29_28_fu_2569_p2);
assign or_ln29_15_fu_2599_p2 = (icmp_ln29_31_fu_2593_p2 | icmp_ln29_30_fu_2587_p2);
assign or_ln29_1_fu_1970_p2 = (icmp_ln29_3_fu_1964_p2 | icmp_ln29_2_fu_1958_p2);
assign or_ln29_2_fu_2042_p2 = (icmp_ln29_5_fu_2036_p2 | icmp_ln29_4_fu_2030_p2);
assign or_ln29_3_fu_2060_p2 = (icmp_ln29_7_fu_2054_p2 | icmp_ln29_6_fu_2048_p2);
assign or_ln29_4_fu_2132_p2 = (icmp_ln29_9_fu_2126_p2 | icmp_ln29_8_fu_2120_p2);
assign or_ln29_5_fu_2150_p2 = (icmp_ln29_11_fu_2144_p2 | icmp_ln29_10_fu_2138_p2);
assign or_ln29_6_fu_2235_p2 = (icmp_ln29_13_fu_2229_p2 | icmp_ln29_12_fu_2223_p2);
assign or_ln29_7_fu_2241_p2 = (icmp_ln29_15_reg_3221 | icmp_ln29_14_reg_3216);
assign or_ln29_8_fu_2311_p2 = (icmp_ln29_17_fu_2305_p2 | icmp_ln29_16_fu_2299_p2);
assign or_ln29_9_fu_2329_p2 = (icmp_ln29_19_fu_2323_p2 | icmp_ln29_18_fu_2317_p2);
assign or_ln29_fu_1952_p2 = (icmp_ln29_fu_1940_p2 | icmp_ln29_1_fu_1946_p2);
assign shl_ln1_fu_1072_p3 = {{prev_1_reg_2680}, {3'd0}};
assign tmp_101_fu_1306_p3 = {{empty_9}, {lshr_ln8_s_fu_1296_p4}};
assign tmp_102_fu_2358_p4 = {{bitcast_ln29_10_fu_2354_p1[62:52]}};
assign tmp_103_fu_2375_p4 = {{bitcast_ln29_11_fu_2372_p1[62:52]}};
assign tmp_105_fu_1323_p3 = {{empty_9}, {add_ln8_8_fu_1318_p2}};
assign tmp_107_fu_2448_p4 = {{bitcast_ln29_12_fu_2444_p1[62:52]}};
assign tmp_108_fu_2465_p4 = {{bitcast_ln29_13_fu_2462_p1[62:52]}};
assign tmp_10_fu_1111_p10 = transition_4_q1;
assign tmp_10_fu_1111_p12 = transition_5_q1;
assign tmp_10_fu_1111_p14 = transition_6_q1;
assign tmp_10_fu_1111_p16 = transition_7_q1;
assign tmp_10_fu_1111_p17 = 'bx;
assign tmp_10_fu_1111_p2 = transition_0_q1;
assign tmp_10_fu_1111_p4 = transition_1_q1;
assign tmp_10_fu_1111_p6 = transition_2_q1;
assign tmp_10_fu_1111_p8 = transition_3_q1;
assign tmp_110_fu_2538_p4 = {{bitcast_ln29_14_fu_2535_p1[62:52]}};
assign tmp_111_fu_2555_p4 = {{bitcast_ln29_15_fu_2552_p1[62:52]}};
assign tmp_11_fu_1182_p10 = transition_4_q0;
assign tmp_11_fu_1182_p12 = transition_5_q0;
assign tmp_11_fu_1182_p14 = transition_6_q0;
assign tmp_11_fu_1182_p16 = transition_7_q0;
assign tmp_11_fu_1182_p17 = 'bx;
assign tmp_11_fu_1182_p2 = transition_0_q0;
assign tmp_11_fu_1182_p4 = transition_1_q0;
assign tmp_11_fu_1182_p6 = transition_2_q0;
assign tmp_11_fu_1182_p8 = transition_3_q0;
assign tmp_12_fu_1390_p10 = transition_4_q1;
assign tmp_12_fu_1390_p12 = transition_5_q1;
assign tmp_12_fu_1390_p14 = transition_6_q1;
assign tmp_12_fu_1390_p16 = transition_7_q1;
assign tmp_12_fu_1390_p17 = 'bx;
assign tmp_12_fu_1390_p2 = transition_0_q1;
assign tmp_12_fu_1390_p4 = transition_1_q1;
assign tmp_12_fu_1390_p6 = transition_2_q1;
assign tmp_12_fu_1390_p8 = transition_3_q1;
assign tmp_13_fu_1461_p10 = transition_4_q0;
assign tmp_13_fu_1461_p12 = transition_5_q0;
assign tmp_13_fu_1461_p14 = transition_6_q0;
assign tmp_13_fu_1461_p16 = transition_7_q0;
assign tmp_13_fu_1461_p17 = 'bx;
assign tmp_13_fu_1461_p2 = transition_0_q0;
assign tmp_13_fu_1461_p4 = transition_1_q0;
assign tmp_13_fu_1461_p6 = transition_2_q0;
assign tmp_13_fu_1461_p8 = transition_3_q0;
assign tmp_14_fu_1599_p10 = transition_4_q1;
assign tmp_14_fu_1599_p12 = transition_5_q1;
assign tmp_14_fu_1599_p14 = transition_6_q1;
assign tmp_14_fu_1599_p16 = transition_7_q1;
assign tmp_14_fu_1599_p17 = 'bx;
assign tmp_14_fu_1599_p2 = transition_0_q1;
assign tmp_14_fu_1599_p4 = transition_1_q1;
assign tmp_14_fu_1599_p6 = transition_2_q1;
assign tmp_14_fu_1599_p8 = transition_3_q1;
assign tmp_15_fu_1670_p10 = transition_4_q0;
assign tmp_15_fu_1670_p12 = transition_5_q0;
assign tmp_15_fu_1670_p14 = transition_6_q0;
assign tmp_15_fu_1670_p16 = transition_7_q0;
assign tmp_15_fu_1670_p17 = 'bx;
assign tmp_15_fu_1670_p2 = transition_0_q0;
assign tmp_15_fu_1670_p4 = transition_1_q0;
assign tmp_15_fu_1670_p6 = transition_2_q0;
assign tmp_15_fu_1670_p8 = transition_3_q0;
assign tmp_16_fu_1781_p10 = transition_4_q1;
assign tmp_16_fu_1781_p12 = transition_5_q1;
assign tmp_16_fu_1781_p14 = transition_6_q1;
assign tmp_16_fu_1781_p16 = transition_7_q1;
assign tmp_16_fu_1781_p17 = 'bx;
assign tmp_16_fu_1781_p2 = transition_0_q1;
assign tmp_16_fu_1781_p4 = transition_1_q1;
assign tmp_16_fu_1781_p6 = transition_2_q1;
assign tmp_16_fu_1781_p8 = transition_3_q1;
assign tmp_19_fu_1852_p10 = transition_4_q0;
assign tmp_19_fu_1852_p12 = transition_5_q0;
assign tmp_19_fu_1852_p14 = transition_6_q0;
assign tmp_19_fu_1852_p16 = transition_7_q0;
assign tmp_19_fu_1852_p17 = 'bx;
assign tmp_19_fu_1852_p2 = transition_0_q0;
assign tmp_19_fu_1852_p4 = transition_1_q0;
assign tmp_19_fu_1852_p6 = transition_2_q0;
assign tmp_19_fu_1852_p8 = transition_3_q0;
assign tmp_80_fu_1909_p4 = {{bitcast_ln29_fu_1905_p1[62:52]}};
assign tmp_81_fu_1926_p4 = {{bitcast_ln29_1_fu_1923_p1[62:52]}};
assign tmp_83_fu_977_p3 = {{empty_9}, {lshr_ln8_8_fu_967_p4}};
assign tmp_84_fu_1999_p4 = {{bitcast_ln29_2_fu_1995_p1[62:52]}};
assign tmp_85_fu_2016_p4 = {{bitcast_ln29_3_fu_2013_p1[62:52]}};
assign tmp_87_fu_1016_p3 = {{empty_9}, {add_ln8_fu_1010_p2}};
assign tmp_88_fu_1227_p4 = {{add_ln27_fu_1221_p2[8:3]}};
assign tmp_89_fu_2089_p4 = {{bitcast_ln29_4_fu_2085_p1[62:52]}};
assign tmp_90_fu_2106_p4 = {{bitcast_ln29_5_fu_2103_p1[62:52]}};
assign tmp_92_fu_1045_p3 = {{empty_9}, {lshr_ln8_9_fu_1035_p4}};
assign tmp_93_fu_2209_p4 = {{bitcast_ln29_6_fu_2205_p1[62:52]}};
assign tmp_94_fu_2179_p4 = {{bitcast_ln29_7_fu_2175_p1[62:52]}};
assign tmp_96_fu_1279_p3 = {{empty_9}, {add_ln8_7_fu_1274_p2}};
assign tmp_97_fu_1505_p4 = {{add_ln27_2_fu_1500_p2[8:3]}};
assign tmp_98_fu_2268_p4 = {{bitcast_ln29_8_fu_2264_p1[62:52]}};
assign tmp_99_fu_2285_p4 = {{bitcast_ln29_9_fu_2282_p1[62:52]}};
assign tmp_s_fu_928_p3 = {{empty_9}, {lshr_ln7_1_fu_918_p4}};
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
assign trunc_ln27_fu_1727_p1 = add_ln25_3_reg_2798[5:0];
assign trunc_ln29_10_fu_2368_p1 = bitcast_ln29_10_fu_2354_p1[51:0];
assign trunc_ln29_11_fu_2385_p1 = bitcast_ln29_11_fu_2372_p1[51:0];
assign trunc_ln29_12_fu_2458_p1 = bitcast_ln29_12_fu_2444_p1[51:0];
assign trunc_ln29_13_fu_2475_p1 = bitcast_ln29_13_fu_2462_p1[51:0];
assign trunc_ln29_14_fu_2548_p1 = bitcast_ln29_14_fu_2535_p1[51:0];
assign trunc_ln29_15_fu_2565_p1 = bitcast_ln29_15_fu_2552_p1[51:0];
assign trunc_ln29_1_fu_1936_p1 = bitcast_ln29_1_fu_1923_p1[51:0];
assign trunc_ln29_2_fu_2009_p1 = bitcast_ln29_2_fu_1995_p1[51:0];
assign trunc_ln29_3_fu_2026_p1 = bitcast_ln29_3_fu_2013_p1[51:0];
assign trunc_ln29_4_fu_2099_p1 = bitcast_ln29_4_fu_2085_p1[51:0];
assign trunc_ln29_5_fu_2116_p1 = bitcast_ln29_5_fu_2103_p1[51:0];
assign trunc_ln29_6_fu_2219_p1 = bitcast_ln29_6_fu_2205_p1[51:0];
assign trunc_ln29_7_fu_2189_p1 = bitcast_ln29_7_fu_2175_p1[51:0];
assign trunc_ln29_8_fu_2278_p1 = bitcast_ln29_8_fu_2264_p1[51:0];
assign trunc_ln29_9_fu_2295_p1 = bitcast_ln29_9_fu_2282_p1[51:0];
assign trunc_ln29_fu_1919_p1 = bitcast_ln29_fu_1905_p1[51:0];
assign zext_ln16_fu_914_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_985_p1 = tmp_83_fu_977_p3;
assign zext_ln26_2_fu_1024_p1 = tmp_87_fu_1016_p3;
assign zext_ln26_3_fu_1053_p1 = tmp_92_fu_1045_p3;
assign zext_ln26_4_fu_1286_p1 = tmp_96_fu_1279_p3;
assign zext_ln26_5_fu_1313_p1 = tmp_101_fu_1306_p3;
assign zext_ln26_6_fu_1330_p1 = tmp_105_fu_1323_p3;
assign zext_ln26_7_fu_1344_p1 = lshr_ln8_1_fu_1335_p4;
assign zext_ln26_8_fu_1353_p1 = add_ln26_fu_1348_p2;
assign zext_ln26_fu_936_p1 = tmp_s_fu_928_p3;
assign zext_ln27_1_fu_998_p1 = add_ln27_1_fu_990_p3;
assign zext_ln27_2_fu_1244_p1 = add_ln27_3_fu_1237_p3;
assign zext_ln27_3_fu_1262_p1 = add_ln27_4_fu_1256_p3;
assign zext_ln27_4_fu_1522_p1 = add_ln27_6_fu_1515_p3;
assign zext_ln27_5_fu_1540_p1 = add_ln27_7_fu_1534_p3;
assign zext_ln27_6_fu_1715_p1 = add_ln27_9_fu_1709_p3;
assign zext_ln27_7_fu_1737_p1 = add_ln27_s_fu_1730_p3;
assign zext_ln27_fu_949_p1 = add_ln_fu_941_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2813[2:0] <= 3'b000;
end
endmodule 