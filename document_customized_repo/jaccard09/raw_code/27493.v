module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_195,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,llike_4_address0,llike_4_ce0,llike_4_q0,llike_4_address1,llike_4_ce1,llike_4_q1,llike_5_address0,llike_5_ce0,llike_5_q0,llike_5_address1,llike_5_ce1,llike_5_q1,llike_6_address0,llike_6_ce0,llike_6_q0,llike_6_address1,llike_6_ce1,llike_6_q1,llike_7_address0,llike_7_ce0,llike_7_q0,llike_7_address1,llike_7_ce1,llike_7_q1,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,llike_address0,llike_ce0,llike_q0,zext_ln52_2,min_s_34_out,min_s_34_out_ap_vld,grp_fu_247_p_din0,grp_fu_247_p_din1,grp_fu_247_p_opcode,grp_fu_247_p_dout0,grp_fu_247_p_ce,grp_fu_422_p_din0,grp_fu_422_p_din1,grp_fu_422_p_opcode,grp_fu_422_p_dout0,grp_fu_422_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 33'd1;
parameter    ap_ST_fsm_pp0_stage1 = 33'd2;
parameter    ap_ST_fsm_pp0_stage2 = 33'd4;
parameter    ap_ST_fsm_pp0_stage3 = 33'd8;
parameter    ap_ST_fsm_pp0_stage4 = 33'd16;
parameter    ap_ST_fsm_pp0_stage5 = 33'd32;
parameter    ap_ST_fsm_pp0_stage6 = 33'd64;
parameter    ap_ST_fsm_pp0_stage7 = 33'd128;
parameter    ap_ST_fsm_pp0_stage8 = 33'd256;
parameter    ap_ST_fsm_pp0_stage9 = 33'd512;
parameter    ap_ST_fsm_pp0_stage10 = 33'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 33'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 33'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 33'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 33'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 33'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 33'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 33'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 33'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 33'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 33'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 33'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 33'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 33'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 33'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 33'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 33'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 33'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 33'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 33'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 33'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 33'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 33'd4294967296;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_195;
input  [7:0] t_1;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_2_address1;
output   llike_2_ce1;
input  [63:0] llike_2_q1;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_3_address1;
output   llike_3_ce1;
input  [63:0] llike_3_q1;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_4_address1;
output   llike_4_ce1;
input  [63:0] llike_4_q1;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_5_address1;
output   llike_5_ce1;
input  [63:0] llike_5_q1;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_6_address1;
output   llike_6_ce1;
input  [63:0] llike_6_q1;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [10:0] llike_7_address1;
output   llike_7_ce1;
input  [63:0] llike_7_q1;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [10:0] zext_ln52_2;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_247_p_din0;
output  [63:0] grp_fu_247_p_din1;
output  [1:0] grp_fu_247_p_opcode;
input  [63:0] grp_fu_247_p_dout0;
output   grp_fu_247_p_ce;
output  [63:0] grp_fu_422_p_din0;
output  [63:0] grp_fu_422_p_din1;
output  [4:0] grp_fu_422_p_opcode;
input  [0:0] grp_fu_422_p_dout0;
output   grp_fu_422_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_reg_3067;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_508;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_513;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_517;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_522;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_527;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_532;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_537;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_542;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_547;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_552_p1;
reg   [11:0] zext_ln52_cast_reg_2897;
reg   [5:0] s_reg_2916;
wire   [5:0] add_ln53_fu_626_p2;
reg   [5:0] add_ln53_reg_2967;
wire   [5:0] add_ln53_1_fu_632_p2;
reg   [5:0] add_ln53_1_reg_2973;
wire   [5:0] add_ln53_6_fu_638_p2;
reg   [5:0] add_ln53_6_reg_2979;
wire   [5:0] add_ln53_8_fu_686_p2;
reg   [5:0] add_ln53_8_reg_2995;
wire   [5:0] add_ln53_9_fu_715_p2;
reg   [5:0] add_ln53_9_reg_3006;
reg   [5:0] add_ln53_9_reg_3006_pp0_iter1_reg;
wire   [5:0] add_ln53_10_fu_744_p2;
reg   [5:0] add_ln53_10_reg_3017;
reg   [5:0] add_ln53_10_reg_3017_pp0_iter1_reg;
wire   [5:0] add_ln53_11_fu_773_p2;
reg   [5:0] add_ln53_11_reg_3028;
reg   [5:0] add_ln53_11_reg_3028_pp0_iter1_reg;
wire   [5:0] add_ln53_12_fu_802_p2;
reg   [5:0] add_ln53_12_reg_3039;
reg   [5:0] add_ln53_12_reg_3039_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_831_p2;
reg   [5:0] add_ln53_13_reg_3050;
reg   [5:0] add_ln53_13_reg_3050_pp0_iter1_reg;
wire   [6:0] add_ln53_14_fu_860_p2;
reg   [6:0] add_ln53_14_reg_3061;
reg   [0:0] tmp_reg_3067_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3071;
reg   [63:0] llike_2_load_reg_3076;
reg   [63:0] llike_3_load_reg_3086;
wire   [5:0] add_ln53_2_fu_908_p2;
reg   [5:0] add_ln53_2_reg_3096;
reg   [63:0] llike_4_load_reg_3102;
wire   [5:0] add_ln53_3_fu_913_p2;
reg   [5:0] add_ln53_3_reg_3107;
reg   [63:0] llike_5_load_reg_3113;
reg   [63:0] llike_6_load_reg_3118;
reg   [63:0] llike_7_load_reg_3123;
reg   [63:0] llike_load_reg_3128;
reg   [63:0] llike_1_load_8_reg_3133;
reg   [63:0] llike_2_load_8_reg_3138;
reg   [63:0] llike_3_load_8_reg_3143;
reg   [63:0] llike_4_load_8_reg_3148;
reg   [63:0] llike_5_load_8_reg_3153;
reg   [63:0] llike_6_load_8_reg_3158;
reg   [63:0] llike_7_load_8_reg_3163;
wire   [63:0] bitcast_ln54_fu_941_p1;
wire   [5:0] add_ln53_4_fu_980_p2;
reg   [5:0] add_ln53_4_reg_3188;
wire   [5:0] add_ln53_5_fu_985_p2;
reg   [5:0] add_ln53_5_reg_3194;
reg   [63:0] llike_load_8_reg_3200;
wire   [63:0] bitcast_ln54_1_fu_990_p1;
wire   [5:0] add_ln53_7_fu_1029_p2;
reg   [5:0] add_ln53_7_reg_3220;
wire   [63:0] bitcast_ln54_2_fu_1034_p1;
wire   [63:0] bitcast_ln54_3_fu_1073_p1;
reg   [63:0] transition_load_71_reg_3246;
wire   [63:0] bitcast_ln54_4_fu_1112_p1;
reg   [63:0] transition_load_73_reg_3266;
wire   [63:0] bitcast_ln54_5_fu_1151_p1;
reg   [63:0] transition_load_75_reg_3286;
wire   [63:0] bitcast_ln54_6_fu_1190_p1;
reg   [63:0] transition_load_77_reg_3306;
wire   [5:0] trunc_ln54_fu_1195_p1;
reg   [5:0] trunc_ln54_reg_3311;
reg   [5:0] trunc_ln54_reg_3311_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_7_fu_1216_p1;
reg   [63:0] min_p_127_reg_3326;
wire   [63:0] bitcast_ln54_8_fu_1225_p1;
wire   [0:0] and_ln55_1_fu_1306_p2;
reg   [0:0] and_ln55_1_reg_3338;
wire   [63:0] bitcast_ln54_9_fu_1312_p1;
wire   [63:0] min_p_129_fu_1317_p3;
reg   [63:0] min_p_129_reg_3349;
wire   [63:0] bitcast_ln54_10_fu_1324_p1;
wire   [0:0] and_ln55_3_fu_1405_p2;
reg   [0:0] and_ln55_3_reg_3361;
wire   [63:0] bitcast_ln54_11_fu_1411_p1;
wire   [63:0] min_p_131_fu_1416_p3;
reg   [63:0] min_p_131_reg_3372;
wire   [63:0] bitcast_ln54_12_fu_1423_p1;
wire   [0:0] and_ln55_5_fu_1504_p2;
reg   [0:0] and_ln55_5_reg_3384;
wire   [63:0] bitcast_ln54_13_fu_1510_p1;
wire   [63:0] min_p_133_fu_1515_p3;
reg   [63:0] min_p_133_reg_3395;
wire   [63:0] bitcast_ln54_14_fu_1522_p1;
wire   [0:0] and_ln55_7_fu_1603_p2;
reg   [0:0] and_ln55_7_reg_3407;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_70_reg_3413;
wire   [63:0] bitcast_ln54_15_fu_1609_p1;
wire   [63:0] min_p_135_fu_1647_p3;
reg   [63:0] min_p_135_reg_3425;
wire   [7:0] min_s_7_fu_1657_p3;
reg   [7:0] min_s_7_reg_3432;
wire   [0:0] and_ln55_9_fu_1741_p2;
reg   [0:0] and_ln55_9_reg_3437;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_72_reg_3443;
wire   [63:0] min_p_137_fu_1747_p3;
reg   [63:0] min_p_137_reg_3450;
wire   [0:0] and_ln55_11_fu_1831_p2;
reg   [0:0] and_ln55_11_reg_3457;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_74_reg_3463;
wire   [63:0] min_p_139_fu_1846_p3;
reg   [63:0] min_p_139_reg_3470;
wire   [7:0] min_s_9_fu_1856_p3;
reg   [7:0] min_s_9_reg_3477;
wire   [0:0] and_ln55_13_fu_1940_p2;
reg   [0:0] and_ln55_13_reg_3482;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_76_reg_3488;
wire   [63:0] min_p_141_fu_1946_p3;
reg   [63:0] min_p_141_reg_3495;
wire   [0:0] and_ln55_15_fu_2030_p2;
reg   [0:0] and_ln55_15_reg_3502;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_143_fu_2045_p3;
reg   [63:0] min_p_143_reg_3508;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_2055_p3;
reg   [7:0] min_s_11_reg_3515;
wire   [0:0] and_ln55_17_fu_2138_p2;
reg   [0:0] and_ln55_17_reg_3520;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_145_fu_2144_p3;
reg   [63:0] min_p_145_reg_3526;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_2227_p2;
reg   [0:0] and_ln55_19_reg_3533;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_147_fu_2242_p3;
reg   [63:0] min_p_147_reg_3539;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_2252_p3;
reg   [7:0] min_s_13_reg_3546;
wire   [0:0] and_ln55_21_fu_2335_p2;
reg   [0:0] and_ln55_21_reg_3551;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_149_fu_2341_p3;
reg   [63:0] min_p_149_reg_3557;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_2434_p2;
reg   [0:0] and_ln55_23_reg_3564;
wire   [63:0] min_p_151_fu_2449_p3;
reg   [63:0] min_p_151_reg_3570;
wire   [7:0] min_s_15_fu_2459_p3;
reg   [7:0] min_s_15_reg_3577;
wire   [0:0] and_ln55_25_fu_2542_p2;
reg   [0:0] and_ln55_25_reg_3582;
wire   [63:0] min_p_153_fu_2548_p3;
reg   [63:0] min_p_153_reg_3588;
wire   [0:0] and_ln55_27_fu_2631_p2;
reg   [0:0] and_ln55_27_reg_3595;
wire   [63:0] min_p_155_fu_2637_p3;
reg   [63:0] min_p_155_reg_3601;
wire   [0:0] and_ln55_29_fu_2720_p2;
reg   [0:0] and_ln55_29_reg_3608;
wire   [63:0] min_p_157_fu_2726_p3;
reg   [63:0] min_p_157_reg_3614;
wire   [7:0] min_s_18_fu_2754_p3;
reg   [7:0] min_s_18_reg_3621;
reg   [0:0] tmp_253_reg_3626;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_596_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_621_p1;
wire   [63:0] zext_ln54_17_fu_662_p1;
wire   [63:0] zext_ln54_18_fu_681_p1;
wire   [63:0] zext_ln54_19_fu_710_p1;
wire   [63:0] zext_ln54_20_fu_739_p1;
wire   [63:0] zext_ln54_21_fu_768_p1;
wire   [63:0] zext_ln54_22_fu_797_p1;
wire   [63:0] zext_ln54_23_fu_826_p1;
wire   [63:0] zext_ln54_24_fu_855_p1;
wire   [63:0] zext_ln54_1_fu_886_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_903_p1;
wire   [63:0] zext_ln54_26_fu_936_p1;
wire   [63:0] zext_ln54_3_fu_958_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_975_p1;
wire   [63:0] zext_ln54_5_fu_1007_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1024_p1;
wire   [63:0] zext_ln54_7_fu_1051_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1068_p1;
wire   [63:0] zext_ln54_9_fu_1090_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1107_p1;
wire   [63:0] zext_ln54_11_fu_1129_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_1146_p1;
wire   [63:0] zext_ln54_13_fu_1168_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1185_p1;
wire   [63:0] zext_ln54_15_fu_1211_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_124;
wire   [63:0] min_p_159_fu_2844_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_128;
wire   [7:0] min_s_19_fu_2854_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_132;
wire   [5:0] add_ln53_15_fu_2347_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_4_ce1_local;
reg    llike_4_ce0_local;
reg    llike_5_ce1_local;
reg    llike_5_ce0_local;
reg    llike_6_ce1_local;
reg    llike_6_ce0_local;
reg    llike_7_ce1_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg   [63:0] grp_fu_500_p0;
reg   [63:0] grp_fu_500_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_504_p0;
reg   [63:0] grp_fu_504_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [2:0] lshr_ln8_8_fu_578_p4;
wire   [10:0] tmp_s_fu_588_p3;
wire   [11:0] shl_ln2_fu_607_p3;
wire   [11:0] add_ln54_fu_615_p2;
wire   [2:0] lshr_ln8_9_fu_644_p4;
wire   [10:0] tmp_219_fu_654_p3;
wire   [2:0] add_ln8_fu_667_p2;
wire   [10:0] tmp_223_fu_673_p3;
wire   [2:0] lshr_ln8_s_fu_692_p4;
wire   [10:0] tmp_227_fu_702_p3;
wire   [2:0] lshr_ln8_1_fu_721_p4;
wire   [10:0] tmp_231_fu_731_p3;
wire   [2:0] lshr_ln8_2_fu_750_p4;
wire   [10:0] tmp_235_fu_760_p3;
wire   [2:0] lshr_ln8_3_fu_779_p4;
wire   [10:0] tmp_239_fu_789_p3;
wire   [2:0] lshr_ln8_4_fu_808_p4;
wire   [10:0] tmp_243_fu_818_p3;
wire   [2:0] lshr_ln8_5_fu_837_p4;
wire   [10:0] tmp_247_fu_847_p3;
wire   [6:0] zext_ln12_fu_574_p1;
wire   [11:0] shl_ln54_1_fu_874_p3;
wire   [11:0] add_ln54_1_fu_881_p2;
wire   [11:0] shl_ln54_2_fu_891_p3;
wire   [11:0] add_ln54_2_fu_898_p2;
wire   [3:0] lshr_ln9_2_fu_918_p4;
wire   [10:0] zext_ln54_25_fu_927_p1;
wire   [10:0] add_ln54_16_fu_931_p2;
wire   [11:0] shl_ln54_3_fu_946_p3;
wire   [11:0] add_ln54_3_fu_953_p2;
wire   [11:0] shl_ln54_4_fu_963_p3;
wire   [11:0] add_ln54_4_fu_970_p2;
wire   [11:0] shl_ln54_5_fu_995_p3;
wire   [11:0] add_ln54_5_fu_1002_p2;
wire   [11:0] shl_ln54_6_fu_1012_p3;
wire   [11:0] add_ln54_6_fu_1019_p2;
wire   [11:0] shl_ln54_7_fu_1039_p3;
wire   [11:0] add_ln54_7_fu_1046_p2;
wire   [11:0] shl_ln54_8_fu_1056_p3;
wire   [11:0] add_ln54_8_fu_1063_p2;
wire   [11:0] shl_ln54_9_fu_1078_p3;
wire   [11:0] add_ln54_9_fu_1085_p2;
wire   [11:0] shl_ln54_s_fu_1095_p3;
wire   [11:0] add_ln54_10_fu_1102_p2;
wire   [11:0] shl_ln54_10_fu_1117_p3;
wire   [11:0] add_ln54_11_fu_1124_p2;
wire   [11:0] shl_ln54_11_fu_1134_p3;
wire   [11:0] add_ln54_12_fu_1141_p2;
wire   [11:0] shl_ln54_12_fu_1156_p3;
wire   [11:0] add_ln54_13_fu_1163_p2;
wire   [11:0] shl_ln54_13_fu_1173_p3;
wire   [11:0] add_ln54_14_fu_1180_p2;
wire   [11:0] shl_ln54_14_fu_1198_p3;
wire   [11:0] add_ln54_15_fu_1206_p2;
wire   [63:0] bitcast_ln55_fu_1229_p1;
wire   [63:0] bitcast_ln55_1_fu_1247_p1;
wire   [10:0] tmp_198_fu_1233_p4;
wire   [51:0] trunc_ln55_fu_1243_p1;
wire   [0:0] icmp_ln55_1_fu_1270_p2;
wire   [0:0] icmp_ln55_fu_1264_p2;
wire   [10:0] tmp_199_fu_1250_p4;
wire   [51:0] trunc_ln55_1_fu_1260_p1;
wire   [0:0] icmp_ln55_3_fu_1288_p2;
wire   [0:0] icmp_ln55_2_fu_1282_p2;
wire   [0:0] or_ln55_fu_1276_p2;
wire   [0:0] and_ln55_fu_1300_p2;
wire   [0:0] or_ln55_1_fu_1294_p2;
wire   [63:0] bitcast_ln55_2_fu_1328_p1;
wire   [63:0] bitcast_ln55_3_fu_1346_p1;
wire   [10:0] tmp_201_fu_1332_p4;
wire   [51:0] trunc_ln55_2_fu_1342_p1;
wire   [0:0] icmp_ln55_5_fu_1369_p2;
wire   [0:0] icmp_ln55_4_fu_1363_p2;
wire   [10:0] tmp_202_fu_1349_p4;
wire   [51:0] trunc_ln55_3_fu_1359_p1;
wire   [0:0] icmp_ln55_7_fu_1387_p2;
wire   [0:0] icmp_ln55_6_fu_1381_p2;
wire   [0:0] or_ln55_3_fu_1393_p2;
wire   [0:0] or_ln55_2_fu_1375_p2;
wire   [0:0] and_ln55_2_fu_1399_p2;
wire   [63:0] bitcast_ln55_4_fu_1427_p1;
wire   [63:0] bitcast_ln55_5_fu_1445_p1;
wire   [10:0] tmp_204_fu_1431_p4;
wire   [51:0] trunc_ln55_4_fu_1441_p1;
wire   [0:0] icmp_ln55_9_fu_1468_p2;
wire   [0:0] icmp_ln55_8_fu_1462_p2;
wire   [10:0] tmp_205_fu_1448_p4;
wire   [51:0] trunc_ln55_5_fu_1458_p1;
wire   [0:0] icmp_ln55_11_fu_1486_p2;
wire   [0:0] icmp_ln55_10_fu_1480_p2;
wire   [0:0] or_ln55_5_fu_1492_p2;
wire   [0:0] or_ln55_4_fu_1474_p2;
wire   [0:0] and_ln55_4_fu_1498_p2;
wire   [63:0] bitcast_ln55_6_fu_1526_p1;
wire   [63:0] bitcast_ln55_7_fu_1544_p1;
wire   [10:0] tmp_207_fu_1530_p4;
wire   [51:0] trunc_ln55_6_fu_1540_p1;
wire   [0:0] icmp_ln55_13_fu_1567_p2;
wire   [0:0] icmp_ln55_12_fu_1561_p2;
wire   [10:0] tmp_208_fu_1547_p4;
wire   [51:0] trunc_ln55_7_fu_1557_p1;
wire   [0:0] icmp_ln55_15_fu_1585_p2;
wire   [0:0] icmp_ln55_14_fu_1579_p2;
wire   [0:0] or_ln55_7_fu_1591_p2;
wire   [0:0] or_ln55_6_fu_1573_p2;
wire   [0:0] and_ln55_6_fu_1597_p2;
wire   [7:0] zext_ln55_fu_1617_p1;
wire   [7:0] zext_ln55_1_fu_1627_p1;
wire   [7:0] min_s_4_fu_1620_p3;
wire   [7:0] zext_ln55_2_fu_1637_p1;
wire   [7:0] min_s_5_fu_1630_p3;
wire   [7:0] zext_ln55_3_fu_1654_p1;
wire   [7:0] min_s_6_fu_1640_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_1664_p1;
wire   [63:0] bitcast_ln55_9_fu_1682_p1;
wire   [10:0] tmp_210_fu_1668_p4;
wire   [51:0] trunc_ln55_8_fu_1678_p1;
wire   [0:0] icmp_ln55_17_fu_1705_p2;
wire   [0:0] icmp_ln55_16_fu_1699_p2;
wire   [10:0] tmp_211_fu_1685_p4;
wire   [51:0] trunc_ln55_9_fu_1695_p1;
wire   [0:0] icmp_ln55_19_fu_1723_p2;
wire   [0:0] icmp_ln55_18_fu_1717_p2;
wire   [0:0] or_ln55_9_fu_1729_p2;
wire   [0:0] or_ln55_8_fu_1711_p2;
wire   [0:0] and_ln55_8_fu_1735_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_1754_p1;
wire   [63:0] bitcast_ln55_11_fu_1772_p1;
wire   [10:0] tmp_213_fu_1758_p4;
wire   [51:0] trunc_ln55_10_fu_1768_p1;
wire   [0:0] icmp_ln55_21_fu_1795_p2;
wire   [0:0] icmp_ln55_20_fu_1789_p2;
wire   [10:0] tmp_214_fu_1775_p4;
wire   [51:0] trunc_ln55_11_fu_1785_p1;
wire   [0:0] icmp_ln55_23_fu_1813_p2;
wire   [0:0] icmp_ln55_22_fu_1807_p2;
wire   [0:0] or_ln55_11_fu_1819_p2;
wire   [0:0] or_ln55_10_fu_1801_p2;
wire   [0:0] and_ln55_10_fu_1825_p2;
wire   [7:0] zext_ln55_4_fu_1837_p1;
wire   [7:0] zext_ln55_5_fu_1853_p1;
wire   [7:0] min_s_8_fu_1840_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_1863_p1;
wire   [63:0] bitcast_ln55_13_fu_1881_p1;
wire   [10:0] tmp_216_fu_1867_p4;
wire   [51:0] trunc_ln55_12_fu_1877_p1;
wire   [0:0] icmp_ln55_25_fu_1904_p2;
wire   [0:0] icmp_ln55_24_fu_1898_p2;
wire   [10:0] tmp_217_fu_1884_p4;
wire   [51:0] trunc_ln55_13_fu_1894_p1;
wire   [0:0] icmp_ln55_27_fu_1922_p2;
wire   [0:0] icmp_ln55_26_fu_1916_p2;
wire   [0:0] or_ln55_13_fu_1928_p2;
wire   [0:0] or_ln55_12_fu_1910_p2;
wire   [0:0] and_ln55_12_fu_1934_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_1953_p1;
wire   [63:0] bitcast_ln55_15_fu_1971_p1;
wire   [10:0] tmp_220_fu_1957_p4;
wire   [51:0] trunc_ln55_14_fu_1967_p1;
wire   [0:0] icmp_ln55_29_fu_1994_p2;
wire   [0:0] icmp_ln55_28_fu_1988_p2;
wire   [10:0] tmp_221_fu_1974_p4;
wire   [51:0] trunc_ln55_15_fu_1984_p1;
wire   [0:0] icmp_ln55_31_fu_2012_p2;
wire   [0:0] icmp_ln55_30_fu_2006_p2;
wire   [0:0] or_ln55_15_fu_2018_p2;
wire   [0:0] or_ln55_14_fu_2000_p2;
wire   [0:0] and_ln55_14_fu_2024_p2;
wire   [7:0] zext_ln55_6_fu_2036_p1;
wire   [7:0] zext_ln55_7_fu_2052_p1;
wire   [7:0] min_s_10_fu_2039_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_2062_p1;
wire   [63:0] bitcast_ln55_17_fu_2079_p1;
wire   [10:0] tmp_224_fu_2065_p4;
wire   [51:0] trunc_ln55_16_fu_2075_p1;
wire   [0:0] icmp_ln55_33_fu_2102_p2;
wire   [0:0] icmp_ln55_32_fu_2096_p2;
wire   [10:0] tmp_225_fu_2082_p4;
wire   [51:0] trunc_ln55_17_fu_2092_p1;
wire   [0:0] icmp_ln55_35_fu_2120_p2;
wire   [0:0] icmp_ln55_34_fu_2114_p2;
wire   [0:0] or_ln55_17_fu_2126_p2;
wire   [0:0] or_ln55_16_fu_2108_p2;
wire   [0:0] and_ln55_16_fu_2132_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_2150_p1;
wire   [63:0] bitcast_ln55_19_fu_2168_p1;
wire   [10:0] tmp_228_fu_2154_p4;
wire   [51:0] trunc_ln55_18_fu_2164_p1;
wire   [0:0] icmp_ln55_37_fu_2191_p2;
wire   [0:0] icmp_ln55_36_fu_2185_p2;
wire   [10:0] tmp_229_fu_2171_p4;
wire   [51:0] trunc_ln55_19_fu_2181_p1;
wire   [0:0] icmp_ln55_39_fu_2209_p2;
wire   [0:0] icmp_ln55_38_fu_2203_p2;
wire   [0:0] or_ln55_19_fu_2215_p2;
wire   [0:0] or_ln55_18_fu_2197_p2;
wire   [0:0] and_ln55_18_fu_2221_p2;
wire   [7:0] zext_ln55_8_fu_2233_p1;
wire   [7:0] zext_ln55_9_fu_2249_p1;
wire   [7:0] min_s_12_fu_2236_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_2259_p1;
wire   [63:0] bitcast_ln55_21_fu_2276_p1;
wire   [10:0] tmp_232_fu_2262_p4;
wire   [51:0] trunc_ln55_20_fu_2272_p1;
wire   [0:0] icmp_ln55_41_fu_2299_p2;
wire   [0:0] icmp_ln55_40_fu_2293_p2;
wire   [10:0] tmp_233_fu_2279_p4;
wire   [51:0] trunc_ln55_21_fu_2289_p1;
wire   [0:0] icmp_ln55_43_fu_2317_p2;
wire   [0:0] icmp_ln55_42_fu_2311_p2;
wire   [0:0] or_ln55_21_fu_2323_p2;
wire   [0:0] or_ln55_20_fu_2305_p2;
wire   [0:0] and_ln55_20_fu_2329_p2;
wire   [63:0] bitcast_ln55_22_fu_2357_p1;
wire   [63:0] bitcast_ln55_23_fu_2375_p1;
wire   [10:0] tmp_236_fu_2361_p4;
wire   [51:0] trunc_ln55_22_fu_2371_p1;
wire   [0:0] icmp_ln55_45_fu_2398_p2;
wire   [0:0] icmp_ln55_44_fu_2392_p2;
wire   [10:0] tmp_237_fu_2378_p4;
wire   [51:0] trunc_ln55_23_fu_2388_p1;
wire   [0:0] icmp_ln55_47_fu_2416_p2;
wire   [0:0] icmp_ln55_46_fu_2410_p2;
wire   [0:0] or_ln55_23_fu_2422_p2;
wire   [0:0] or_ln55_22_fu_2404_p2;
wire   [0:0] and_ln55_22_fu_2428_p2;
wire   [7:0] zext_ln55_10_fu_2440_p1;
wire   [7:0] zext_ln55_11_fu_2456_p1;
wire   [7:0] min_s_14_fu_2443_p3;
wire   [63:0] bitcast_ln55_24_fu_2466_p1;
wire   [63:0] bitcast_ln55_25_fu_2483_p1;
wire   [10:0] tmp_240_fu_2469_p4;
wire   [51:0] trunc_ln55_24_fu_2479_p1;
wire   [0:0] icmp_ln55_49_fu_2506_p2;
wire   [0:0] icmp_ln55_48_fu_2500_p2;
wire   [10:0] tmp_241_fu_2486_p4;
wire   [51:0] trunc_ln55_25_fu_2496_p1;
wire   [0:0] icmp_ln55_51_fu_2524_p2;
wire   [0:0] icmp_ln55_50_fu_2518_p2;
wire   [0:0] or_ln55_25_fu_2530_p2;
wire   [0:0] or_ln55_24_fu_2512_p2;
wire   [0:0] and_ln55_24_fu_2536_p2;
wire   [63:0] bitcast_ln55_26_fu_2554_p1;
wire   [63:0] bitcast_ln55_27_fu_2572_p1;
wire   [10:0] tmp_244_fu_2558_p4;
wire   [51:0] trunc_ln55_26_fu_2568_p1;
wire   [0:0] icmp_ln55_53_fu_2595_p2;
wire   [0:0] icmp_ln55_52_fu_2589_p2;
wire   [10:0] tmp_245_fu_2575_p4;
wire   [51:0] trunc_ln55_27_fu_2585_p1;
wire   [0:0] icmp_ln55_55_fu_2613_p2;
wire   [0:0] icmp_ln55_54_fu_2607_p2;
wire   [0:0] or_ln55_27_fu_2619_p2;
wire   [0:0] or_ln55_26_fu_2601_p2;
wire   [0:0] and_ln55_26_fu_2625_p2;
wire   [63:0] bitcast_ln55_28_fu_2644_p1;
wire   [63:0] bitcast_ln55_29_fu_2661_p1;
wire   [10:0] tmp_248_fu_2647_p4;
wire   [51:0] trunc_ln55_28_fu_2657_p1;
wire   [0:0] icmp_ln55_57_fu_2684_p2;
wire   [0:0] icmp_ln55_56_fu_2678_p2;
wire   [10:0] tmp_249_fu_2664_p4;
wire   [51:0] trunc_ln55_29_fu_2674_p1;
wire   [0:0] icmp_ln55_59_fu_2702_p2;
wire   [0:0] icmp_ln55_58_fu_2696_p2;
wire   [0:0] or_ln55_29_fu_2708_p2;
wire   [0:0] or_ln55_28_fu_2690_p2;
wire   [0:0] and_ln55_28_fu_2714_p2;
wire   [7:0] zext_ln55_12_fu_2732_p1;
wire   [7:0] zext_ln55_13_fu_2741_p1;
wire   [7:0] min_s_16_fu_2735_p3;
wire   [7:0] zext_ln55_14_fu_2751_p1;
wire   [7:0] min_s_17_fu_2744_p3;
wire   [63:0] bitcast_ln55_30_fu_2762_p1;
wire   [63:0] bitcast_ln55_31_fu_2780_p1;
wire   [10:0] tmp_251_fu_2766_p4;
wire   [51:0] trunc_ln55_30_fu_2776_p1;
wire   [0:0] icmp_ln55_61_fu_2803_p2;
wire   [0:0] icmp_ln55_60_fu_2797_p2;
wire   [10:0] tmp_252_fu_2783_p4;
wire   [51:0] trunc_ln55_31_fu_2793_p1;
wire   [0:0] icmp_ln55_63_fu_2821_p2;
wire   [0:0] icmp_ln55_62_fu_2815_p2;
wire   [0:0] or_ln55_31_fu_2827_p2;
wire   [0:0] or_ln55_30_fu_2809_p2;
wire   [0:0] and_ln55_30_fu_2833_p2;
wire   [0:0] and_ln55_31_fu_2839_p2;
wire   [7:0] zext_ln55_15_fu_2851_p1;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage30_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [32:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_124 = 64'd0;
#0 min_s_fu_128 = 8'd0;
#0 min_s_1_fu_132 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage32),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage8) | ((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage32_subdone) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_condition_exit_pp0_iter1_stage8) & (ap_idle_pp0_0to0 == 1'b1)) | ((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_p_fu_124 <= min_p_195;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (tmp_reg_3067_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_124 <= min_p_159_fu_2844_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_1_fu_132 <= 6'd1;
    end else if (((tmp_reg_3067 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_132 <= add_ln53_15_fu_2347_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_fu_128 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (tmp_reg_3067_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_128 <= min_s_19_fu_2854_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_508 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_508 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_517 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_517 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_522 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_522 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_10_reg_3017 <= add_ln53_10_fu_744_p2;
        add_ln53_10_reg_3017_pp0_iter1_reg <= add_ln53_10_reg_3017;
        add_ln53_11_reg_3028 <= add_ln53_11_fu_773_p2;
        add_ln53_11_reg_3028_pp0_iter1_reg <= add_ln53_11_reg_3028;
        add_ln53_12_reg_3039 <= add_ln53_12_fu_802_p2;
        add_ln53_12_reg_3039_pp0_iter1_reg <= add_ln53_12_reg_3039;
        add_ln53_13_reg_3050 <= add_ln53_13_fu_831_p2;
        add_ln53_13_reg_3050_pp0_iter1_reg <= add_ln53_13_reg_3050;
        add_ln53_14_reg_3061 <= add_ln53_14_fu_860_p2;
        add_ln53_1_reg_2973 <= add_ln53_1_fu_632_p2;
        add_ln53_6_reg_2979 <= add_ln53_6_fu_638_p2;
        add_ln53_8_reg_2995 <= add_ln53_8_fu_686_p2;
        add_ln53_9_reg_3006 <= add_ln53_9_fu_715_p2;
        add_ln53_9_reg_3006_pp0_iter1_reg <= add_ln53_9_reg_3006;
        add_ln53_reg_2967 <= add_ln53_fu_626_p2;
        and_ln55_23_reg_3564 <= and_ln55_23_fu_2434_p2;
        s_reg_2916 <= ap_sig_allocacmp_s;
        tmp_reg_3067 <= add_ln53_14_fu_860_p2[32'd6];
        tmp_reg_3067_pp0_iter1_reg <= tmp_reg_3067;
        zext_ln52_cast_reg_2897[7 : 0] <= zext_ln52_cast_fu_552_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_3096 <= add_ln53_2_fu_908_p2;
        add_ln53_3_reg_3107 <= add_ln53_3_fu_913_p2;
        min_p_151_reg_3570 <= min_p_151_fu_2449_p3;
        min_s_15_reg_3577 <= min_s_15_fu_2459_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_3188 <= add_ln53_4_fu_980_p2;
        add_ln53_5_reg_3194 <= add_ln53_5_fu_985_p2;
        and_ln55_25_reg_3582 <= and_ln55_25_fu_2542_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_7_reg_3220 <= add_ln53_7_fu_1029_p2;
        min_p_153_reg_3588 <= min_p_153_fu_2548_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_3457 <= and_ln55_11_fu_1831_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_3482 <= and_ln55_13_fu_1940_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_3502 <= and_ln55_15_fu_2030_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_3520 <= and_ln55_17_fu_2138_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_3533 <= and_ln55_19_fu_2227_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3338 <= and_ln55_1_fu_1306_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_3551 <= and_ln55_21_fu_2335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_27_reg_3595 <= and_ln55_27_fu_2631_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_29_reg_3608 <= and_ln55_29_fu_2720_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3361 <= and_ln55_3_fu_1405_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3384 <= and_ln55_5_fu_1504_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_3407 <= and_ln55_7_fu_1603_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_3437 <= and_ln55_9_fu_1741_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_8_reg_3133 <= llike_1_q0;
        llike_1_load_reg_3071 <= llike_1_q1;
        llike_2_load_8_reg_3138 <= llike_2_q0;
        llike_2_load_reg_3076 <= llike_2_q1;
        llike_3_load_8_reg_3143 <= llike_3_q0;
        llike_3_load_reg_3086 <= llike_3_q1;
        llike_4_load_8_reg_3148 <= llike_4_q0;
        llike_4_load_reg_3102 <= llike_4_q1;
        llike_5_load_8_reg_3153 <= llike_5_q0;
        llike_5_load_reg_3113 <= llike_5_q1;
        llike_6_load_8_reg_3158 <= llike_6_q0;
        llike_6_load_reg_3118 <= llike_6_q1;
        llike_7_load_8_reg_3163 <= llike_7_q0;
        llike_7_load_reg_3123 <= llike_7_q1;
        llike_load_reg_3128 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_8_reg_3200 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_3326 <= min_p_fu_124;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_3349 <= min_p_129_fu_1317_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_3372 <= min_p_131_fu_1416_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_133_reg_3395 <= min_p_133_fu_1515_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_135_reg_3425 <= min_p_135_fu_1647_p3;
        min_s_7_reg_3432 <= min_s_7_fu_1657_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_137_reg_3450 <= min_p_137_fu_1747_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_139_reg_3470 <= min_p_139_fu_1846_p3;
        min_s_9_reg_3477 <= min_s_9_fu_1856_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_141_reg_3495 <= min_p_141_fu_1946_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_143_reg_3508 <= min_p_143_fu_2045_p3;
        min_s_11_reg_3515 <= min_s_11_fu_2055_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_145_reg_3526 <= min_p_145_fu_2144_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_147_reg_3539 <= min_p_147_fu_2242_p3;
        min_s_13_reg_3546 <= min_s_13_fu_2252_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_149_reg_3557 <= min_p_149_fu_2341_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_155_reg_3601 <= min_p_155_fu_2637_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_157_reg_3614 <= min_p_157_fu_2726_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_3621 <= min_s_18_fu_2754_p3;
        tmp_253_reg_3626 <= grp_fu_422_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_70_reg_3413 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_72_reg_3443 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_74_reg_3463 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_76_reg_3488 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_513 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_527 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_532 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_537 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_542 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_547 <= grp_fu_247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        transition_load_71_reg_3246 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        transition_load_73_reg_3266 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        transition_load_75_reg_3286 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        transition_load_77_reg_3306 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln54_reg_3311 <= trunc_ln54_fu_1195_p1;
        trunc_ln54_reg_3311_pp0_iter1_reg <= trunc_ln54_reg_3311;
    end
end
always @ (*) begin
    if (((tmp_reg_3067 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (tmp_reg_3067_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_132;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_500_p0 = llike_load_8_reg_3200;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_500_p0 = llike_7_load_8_reg_3163;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_500_p0 = llike_6_load_8_reg_3158;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_500_p0 = llike_5_load_8_reg_3153;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_500_p0 = llike_4_load_8_reg_3148;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_500_p0 = llike_3_load_8_reg_3143;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_500_p0 = llike_2_load_8_reg_3138;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_500_p0 = llike_1_load_8_reg_3133;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_500_p0 = llike_load_reg_3128;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_500_p0 = llike_7_load_reg_3123;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_500_p0 = llike_6_load_reg_3118;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_500_p0 = llike_5_load_reg_3113;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_500_p0 = llike_4_load_reg_3102;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_500_p0 = llike_3_load_reg_3086;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_500_p0 = llike_2_load_reg_3076;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_500_p0 = llike_1_load_reg_3071;
        end else begin
            grp_fu_500_p0 = 'bx;
        end
    end else begin
        grp_fu_500_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_500_p1 = bitcast_ln54_15_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_500_p1 = bitcast_ln54_14_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_500_p1 = bitcast_ln54_13_fu_1510_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_500_p1 = bitcast_ln54_12_fu_1423_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_500_p1 = bitcast_ln54_11_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_500_p1 = bitcast_ln54_10_fu_1324_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_500_p1 = bitcast_ln54_9_fu_1312_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_500_p1 = bitcast_ln54_8_fu_1225_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_500_p1 = bitcast_ln54_7_fu_1216_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_500_p1 = bitcast_ln54_6_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_500_p1 = bitcast_ln54_5_fu_1151_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_500_p1 = bitcast_ln54_4_fu_1112_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_500_p1 = bitcast_ln54_3_fu_1073_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_500_p1 = bitcast_ln54_2_fu_1034_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_500_p1 = bitcast_ln54_1_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_500_p1 = bitcast_ln54_fu_941_p1;
        end else begin
            grp_fu_500_p1 = 'bx;
        end
    end else begin
        grp_fu_500_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_504_p0 = p_76_reg_3488;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_504_p0 = p_74_reg_3463;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_504_p0 = p_72_reg_3443;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_504_p0 = p_70_reg_3413;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_504_p0 = reg_547;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_504_p0 = reg_542;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_504_p0 = reg_537;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_504_p0 = reg_532;
    end else if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_504_p0 = reg_527;
    end else begin
        grp_fu_504_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_504_p1 = min_p_157_fu_2726_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_504_p1 = min_p_155_fu_2637_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_504_p1 = min_p_153_fu_2548_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_504_p1 = min_p_151_fu_2449_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_504_p1 = min_p_149_fu_2341_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_504_p1 = min_p_147_fu_2242_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_504_p1 = min_p_145_fu_2144_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_504_p1 = min_p_143_fu_2045_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_504_p1 = min_p_141_fu_1946_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_504_p1 = min_p_139_fu_1846_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_504_p1 = min_p_137_fu_1747_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_504_p1 = min_p_135_fu_1647_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_504_p1 = min_p_133_fu_1515_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_504_p1 = min_p_131_fu_1416_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_504_p1 = min_p_129_fu_1317_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_504_p1 = min_p_fu_124;
    end else begin
        grp_fu_504_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce1_local = 1'b1;
    end else begin
        llike_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce1_local = 1'b1;
    end else begin
        llike_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce1_local = 1'b1;
    end else begin
        llike_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce1_local = 1'b1;
    end else begin
        llike_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_26_fu_936_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_17_fu_662_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (tmp_reg_3067_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address0_local = zext_ln54_13_fu_1168_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address0_local = zext_ln54_11_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address0_local = zext_ln54_9_fu_1090_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address0_local = zext_ln54_7_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_958_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_621_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_address1_local = zext_ln54_15_fu_1211_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address1_local = zext_ln54_14_fu_1185_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address1_local = zext_ln54_12_fu_1146_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address1_local = zext_ln54_10_fu_1107_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln54_8_fu_1068_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_1024_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_975_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_886_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage8) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_10_fu_744_p2 = (ap_sig_allocacmp_s + 6'd11);
assign add_ln53_11_fu_773_p2 = (ap_sig_allocacmp_s + 6'd12);
assign add_ln53_12_fu_802_p2 = (ap_sig_allocacmp_s + 6'd13);
assign add_ln53_13_fu_831_p2 = (ap_sig_allocacmp_s + 6'd14);
assign add_ln53_14_fu_860_p2 = (zext_ln12_fu_574_p1 + 7'd15);
assign add_ln53_15_fu_2347_p2 = (s_reg_2916 + 6'd16);
assign add_ln53_1_fu_632_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_908_p2 = (s_reg_2916 + 6'd3);
assign add_ln53_3_fu_913_p2 = (s_reg_2916 + 6'd4);
assign add_ln53_4_fu_980_p2 = (s_reg_2916 + 6'd5);
assign add_ln53_5_fu_985_p2 = (s_reg_2916 + 6'd6);
assign add_ln53_6_fu_638_p2 = (ap_sig_allocacmp_s + 6'd7);
assign add_ln53_7_fu_1029_p2 = (s_reg_2916 + 6'd8);
assign add_ln53_8_fu_686_p2 = (ap_sig_allocacmp_s + 6'd9);
assign add_ln53_9_fu_715_p2 = (ap_sig_allocacmp_s + 6'd10);
assign add_ln53_fu_626_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1102_p2 = (shl_ln54_s_fu_1095_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_11_fu_1124_p2 = (shl_ln54_10_fu_1117_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_12_fu_1141_p2 = (shl_ln54_11_fu_1134_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_13_fu_1163_p2 = (shl_ln54_12_fu_1156_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_14_fu_1180_p2 = (shl_ln54_13_fu_1173_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_15_fu_1206_p2 = (shl_ln54_14_fu_1198_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_16_fu_931_p2 = (zext_ln52_2 + zext_ln54_25_fu_927_p1);
assign add_ln54_1_fu_881_p2 = (shl_ln54_1_fu_874_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_2_fu_898_p2 = (shl_ln54_2_fu_891_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_3_fu_953_p2 = (shl_ln54_3_fu_946_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_4_fu_970_p2 = (shl_ln54_4_fu_963_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_5_fu_1002_p2 = (shl_ln54_5_fu_995_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_6_fu_1019_p2 = (shl_ln54_6_fu_1012_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_7_fu_1046_p2 = (shl_ln54_7_fu_1039_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_8_fu_1063_p2 = (shl_ln54_8_fu_1056_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_9_fu_1085_p2 = (shl_ln54_9_fu_1078_p3 + zext_ln52_cast_reg_2897);
assign add_ln54_fu_615_p2 = (shl_ln2_fu_607_p3 + zext_ln52_cast_fu_552_p1);
assign add_ln8_fu_667_p2 = (lshr_ln8_8_fu_578_p4 + 3'd1);
assign and_ln55_10_fu_1825_p2 = (or_ln55_11_fu_1819_p2 & or_ln55_10_fu_1801_p2);
assign and_ln55_11_fu_1831_p2 = (grp_fu_422_p_dout0 & and_ln55_10_fu_1825_p2);
assign and_ln55_12_fu_1934_p2 = (or_ln55_13_fu_1928_p2 & or_ln55_12_fu_1910_p2);
assign and_ln55_13_fu_1940_p2 = (grp_fu_422_p_dout0 & and_ln55_12_fu_1934_p2);
assign and_ln55_14_fu_2024_p2 = (or_ln55_15_fu_2018_p2 & or_ln55_14_fu_2000_p2);
assign and_ln55_15_fu_2030_p2 = (grp_fu_422_p_dout0 & and_ln55_14_fu_2024_p2);
assign and_ln55_16_fu_2132_p2 = (or_ln55_17_fu_2126_p2 & or_ln55_16_fu_2108_p2);
assign and_ln55_17_fu_2138_p2 = (grp_fu_422_p_dout0 & and_ln55_16_fu_2132_p2);
assign and_ln55_18_fu_2221_p2 = (or_ln55_19_fu_2215_p2 & or_ln55_18_fu_2197_p2);
assign and_ln55_19_fu_2227_p2 = (grp_fu_422_p_dout0 & and_ln55_18_fu_2221_p2);
assign and_ln55_1_fu_1306_p2 = (or_ln55_1_fu_1294_p2 & and_ln55_fu_1300_p2);
assign and_ln55_20_fu_2329_p2 = (or_ln55_21_fu_2323_p2 & or_ln55_20_fu_2305_p2);
assign and_ln55_21_fu_2335_p2 = (grp_fu_422_p_dout0 & and_ln55_20_fu_2329_p2);
assign and_ln55_22_fu_2428_p2 = (or_ln55_23_fu_2422_p2 & or_ln55_22_fu_2404_p2);
assign and_ln55_23_fu_2434_p2 = (grp_fu_422_p_dout0 & and_ln55_22_fu_2428_p2);
assign and_ln55_24_fu_2536_p2 = (or_ln55_25_fu_2530_p2 & or_ln55_24_fu_2512_p2);
assign and_ln55_25_fu_2542_p2 = (grp_fu_422_p_dout0 & and_ln55_24_fu_2536_p2);
assign and_ln55_26_fu_2625_p2 = (or_ln55_27_fu_2619_p2 & or_ln55_26_fu_2601_p2);
assign and_ln55_27_fu_2631_p2 = (grp_fu_422_p_dout0 & and_ln55_26_fu_2625_p2);
assign and_ln55_28_fu_2714_p2 = (or_ln55_29_fu_2708_p2 & or_ln55_28_fu_2690_p2);
assign and_ln55_29_fu_2720_p2 = (grp_fu_422_p_dout0 & and_ln55_28_fu_2714_p2);
assign and_ln55_2_fu_1399_p2 = (or_ln55_3_fu_1393_p2 & or_ln55_2_fu_1375_p2);
assign and_ln55_30_fu_2833_p2 = (or_ln55_31_fu_2827_p2 & or_ln55_30_fu_2809_p2);
assign and_ln55_31_fu_2839_p2 = (tmp_253_reg_3626 & and_ln55_30_fu_2833_p2);
assign and_ln55_3_fu_1405_p2 = (grp_fu_422_p_dout0 & and_ln55_2_fu_1399_p2);
assign and_ln55_4_fu_1498_p2 = (or_ln55_5_fu_1492_p2 & or_ln55_4_fu_1474_p2);
assign and_ln55_5_fu_1504_p2 = (grp_fu_422_p_dout0 & and_ln55_4_fu_1498_p2);
assign and_ln55_6_fu_1597_p2 = (or_ln55_7_fu_1591_p2 & or_ln55_6_fu_1573_p2);
assign and_ln55_7_fu_1603_p2 = (grp_fu_422_p_dout0 & and_ln55_6_fu_1597_p2);
assign and_ln55_8_fu_1735_p2 = (or_ln55_9_fu_1729_p2 & or_ln55_8_fu_1711_p2);
assign and_ln55_9_fu_1741_p2 = (grp_fu_422_p_dout0 & and_ln55_8_fu_1735_p2);
assign and_ln55_fu_1300_p2 = (or_ln55_fu_1276_p2 & grp_fu_422_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage32;
assign ap_ready = ap_ready_sig;
assign bitcast_ln54_10_fu_1324_p1 = transition_load_73_reg_3266;
assign bitcast_ln54_11_fu_1411_p1 = reg_513;
assign bitcast_ln54_12_fu_1423_p1 = transition_load_75_reg_3286;
assign bitcast_ln54_13_fu_1510_p1 = reg_522;
assign bitcast_ln54_14_fu_1522_p1 = transition_load_77_reg_3306;
assign bitcast_ln54_15_fu_1609_p1 = reg_508;
assign bitcast_ln54_1_fu_990_p1 = reg_508;
assign bitcast_ln54_2_fu_1034_p1 = reg_513;
assign bitcast_ln54_3_fu_1073_p1 = reg_508;
assign bitcast_ln54_4_fu_1112_p1 = reg_517;
assign bitcast_ln54_5_fu_1151_p1 = reg_513;
assign bitcast_ln54_6_fu_1190_p1 = reg_522;
assign bitcast_ln54_7_fu_1216_p1 = reg_508;
assign bitcast_ln54_8_fu_1225_p1 = transition_load_71_reg_3246;
assign bitcast_ln54_9_fu_1312_p1 = reg_517;
assign bitcast_ln54_fu_941_p1 = reg_508;
assign bitcast_ln55_10_fu_1754_p1 = reg_532;
assign bitcast_ln55_11_fu_1772_p1 = min_p_137_reg_3450;
assign bitcast_ln55_12_fu_1863_p1 = reg_547;
assign bitcast_ln55_13_fu_1881_p1 = min_p_139_reg_3470;
assign bitcast_ln55_14_fu_1953_p1 = reg_537;
assign bitcast_ln55_15_fu_1971_p1 = min_p_141_reg_3495;
assign bitcast_ln55_16_fu_2062_p1 = p_70_reg_3413;
assign bitcast_ln55_17_fu_2079_p1 = min_p_143_reg_3508;
assign bitcast_ln55_18_fu_2150_p1 = reg_527;
assign bitcast_ln55_19_fu_2168_p1 = min_p_145_reg_3526;
assign bitcast_ln55_1_fu_1247_p1 = min_p_127_reg_3326;
assign bitcast_ln55_20_fu_2259_p1 = p_72_reg_3443;
assign bitcast_ln55_21_fu_2276_p1 = min_p_147_reg_3539;
assign bitcast_ln55_22_fu_2357_p1 = reg_542;
assign bitcast_ln55_23_fu_2375_p1 = min_p_149_reg_3557;
assign bitcast_ln55_24_fu_2466_p1 = p_74_reg_3463;
assign bitcast_ln55_25_fu_2483_p1 = min_p_151_reg_3570;
assign bitcast_ln55_26_fu_2554_p1 = reg_532;
assign bitcast_ln55_27_fu_2572_p1 = min_p_153_reg_3588;
assign bitcast_ln55_28_fu_2644_p1 = p_76_reg_3488;
assign bitcast_ln55_29_fu_2661_p1 = min_p_155_reg_3601;
assign bitcast_ln55_2_fu_1328_p1 = reg_532;
assign bitcast_ln55_30_fu_2762_p1 = reg_547;
assign bitcast_ln55_31_fu_2780_p1 = min_p_157_reg_3614;
assign bitcast_ln55_3_fu_1346_p1 = min_p_129_reg_3349;
assign bitcast_ln55_4_fu_1427_p1 = reg_537;
assign bitcast_ln55_5_fu_1445_p1 = min_p_131_reg_3372;
assign bitcast_ln55_6_fu_1526_p1 = reg_527;
assign bitcast_ln55_7_fu_1544_p1 = min_p_133_reg_3395;
assign bitcast_ln55_8_fu_1664_p1 = reg_542;
assign bitcast_ln55_9_fu_1682_p1 = min_p_135_reg_3425;
assign bitcast_ln55_fu_1229_p1 = reg_527;
assign grp_fu_247_p_ce = 1'b1;
assign grp_fu_247_p_din0 = grp_fu_500_p0;
assign grp_fu_247_p_din1 = grp_fu_500_p1;
assign grp_fu_247_p_opcode = 2'd0;
assign grp_fu_422_p_ce = 1'b1;
assign grp_fu_422_p_din0 = grp_fu_504_p0;
assign grp_fu_422_p_din1 = grp_fu_504_p1;
assign grp_fu_422_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1480_p2 = ((tmp_205_fu_1448_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1486_p2 = ((trunc_ln55_5_fu_1458_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1561_p2 = ((tmp_207_fu_1530_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1567_p2 = ((trunc_ln55_6_fu_1540_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1579_p2 = ((tmp_208_fu_1547_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1585_p2 = ((trunc_ln55_7_fu_1557_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1699_p2 = ((tmp_210_fu_1668_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1705_p2 = ((trunc_ln55_8_fu_1678_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1717_p2 = ((tmp_211_fu_1685_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1723_p2 = ((trunc_ln55_9_fu_1695_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1270_p2 = ((trunc_ln55_fu_1243_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1789_p2 = ((tmp_213_fu_1758_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1795_p2 = ((trunc_ln55_10_fu_1768_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1807_p2 = ((tmp_214_fu_1775_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1813_p2 = ((trunc_ln55_11_fu_1785_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1898_p2 = ((tmp_216_fu_1867_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1904_p2 = ((trunc_ln55_12_fu_1877_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1916_p2 = ((tmp_217_fu_1884_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1922_p2 = ((trunc_ln55_13_fu_1894_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1988_p2 = ((tmp_220_fu_1957_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1994_p2 = ((trunc_ln55_14_fu_1967_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1282_p2 = ((tmp_199_fu_1250_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2006_p2 = ((tmp_221_fu_1974_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2012_p2 = ((trunc_ln55_15_fu_1984_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_2096_p2 = ((tmp_224_fu_2065_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_2102_p2 = ((trunc_ln55_16_fu_2075_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_2114_p2 = ((tmp_225_fu_2082_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_2120_p2 = ((trunc_ln55_17_fu_2092_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_2185_p2 = ((tmp_228_fu_2154_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_2191_p2 = ((trunc_ln55_18_fu_2164_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_2203_p2 = ((tmp_229_fu_2171_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_2209_p2 = ((trunc_ln55_19_fu_2181_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1288_p2 = ((trunc_ln55_1_fu_1260_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_2293_p2 = ((tmp_232_fu_2262_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_2299_p2 = ((trunc_ln55_20_fu_2272_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_2311_p2 = ((tmp_233_fu_2279_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_2317_p2 = ((trunc_ln55_21_fu_2289_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_2392_p2 = ((tmp_236_fu_2361_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_2398_p2 = ((trunc_ln55_22_fu_2371_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_2410_p2 = ((tmp_237_fu_2378_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_2416_p2 = ((trunc_ln55_23_fu_2388_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_2500_p2 = ((tmp_240_fu_2469_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_2506_p2 = ((trunc_ln55_24_fu_2479_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1363_p2 = ((tmp_201_fu_1332_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_2518_p2 = ((tmp_241_fu_2486_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_2524_p2 = ((trunc_ln55_25_fu_2496_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_2589_p2 = ((tmp_244_fu_2558_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_2595_p2 = ((trunc_ln55_26_fu_2568_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_2607_p2 = ((tmp_245_fu_2575_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_2613_p2 = ((trunc_ln55_27_fu_2585_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_2678_p2 = ((tmp_248_fu_2647_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_2684_p2 = ((trunc_ln55_28_fu_2657_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_2696_p2 = ((tmp_249_fu_2664_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_2702_p2 = ((trunc_ln55_29_fu_2674_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1369_p2 = ((trunc_ln55_2_fu_1342_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_2797_p2 = ((tmp_251_fu_2766_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_2803_p2 = ((trunc_ln55_30_fu_2776_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_2815_p2 = ((tmp_252_fu_2783_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_2821_p2 = ((trunc_ln55_31_fu_2793_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1381_p2 = ((tmp_202_fu_1349_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1387_p2 = ((trunc_ln55_3_fu_1359_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1462_p2 = ((tmp_204_fu_1431_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1468_p2 = ((trunc_ln55_4_fu_1441_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1264_p2 = ((tmp_198_fu_1233_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_18_fu_681_p1;
assign llike_1_address1 = zext_ln54_16_fu_596_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln54_19_fu_710_p1;
assign llike_2_address1 = zext_ln54_16_fu_596_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln54_20_fu_739_p1;
assign llike_3_address1 = zext_ln54_16_fu_596_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_4_address0 = zext_ln54_21_fu_768_p1;
assign llike_4_address1 = zext_ln54_16_fu_596_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_ce1 = llike_4_ce1_local;
assign llike_5_address0 = zext_ln54_22_fu_797_p1;
assign llike_5_address1 = zext_ln54_16_fu_596_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_ce1 = llike_5_ce1_local;
assign llike_6_address0 = zext_ln54_23_fu_826_p1;
assign llike_6_address1 = zext_ln54_16_fu_596_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_ce1 = llike_6_ce1_local;
assign llike_7_address0 = zext_ln54_24_fu_855_p1;
assign llike_7_address1 = zext_ln54_16_fu_596_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_ce1 = llike_7_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_721_p4 = {{add_ln53_9_fu_715_p2[5:3]}};
assign lshr_ln8_2_fu_750_p4 = {{add_ln53_10_fu_744_p2[5:3]}};
assign lshr_ln8_3_fu_779_p4 = {{add_ln53_11_fu_773_p2[5:3]}};
assign lshr_ln8_4_fu_808_p4 = {{add_ln53_12_fu_802_p2[5:3]}};
assign lshr_ln8_5_fu_837_p4 = {{add_ln53_13_fu_831_p2[5:3]}};
assign lshr_ln8_8_fu_578_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln8_9_fu_644_p4 = {{add_ln53_6_fu_638_p2[5:3]}};
assign lshr_ln8_s_fu_692_p4 = {{add_ln53_8_fu_686_p2[5:3]}};
assign lshr_ln9_2_fu_918_p4 = {{add_ln53_14_reg_3061[6:3]}};
assign min_p_129_fu_1317_p3 = ((and_ln55_1_reg_3338[0:0] == 1'b1) ? reg_527 : min_p_127_reg_3326);
assign min_p_131_fu_1416_p3 = ((and_ln55_3_reg_3361[0:0] == 1'b1) ? reg_532 : min_p_129_reg_3349);
assign min_p_133_fu_1515_p3 = ((and_ln55_5_reg_3384[0:0] == 1'b1) ? reg_537 : min_p_131_reg_3372);
assign min_p_135_fu_1647_p3 = ((and_ln55_7_reg_3407[0:0] == 1'b1) ? reg_527 : min_p_133_reg_3395);
assign min_p_137_fu_1747_p3 = ((and_ln55_9_reg_3437[0:0] == 1'b1) ? reg_542 : min_p_135_reg_3425);
assign min_p_139_fu_1846_p3 = ((and_ln55_11_reg_3457[0:0] == 1'b1) ? reg_532 : min_p_137_reg_3450);
assign min_p_141_fu_1946_p3 = ((and_ln55_13_reg_3482[0:0] == 1'b1) ? reg_547 : min_p_139_reg_3470);
assign min_p_143_fu_2045_p3 = ((and_ln55_15_reg_3502[0:0] == 1'b1) ? reg_537 : min_p_141_reg_3495);
assign min_p_145_fu_2144_p3 = ((and_ln55_17_reg_3520[0:0] == 1'b1) ? p_70_reg_3413 : min_p_143_reg_3508);
assign min_p_147_fu_2242_p3 = ((and_ln55_19_reg_3533[0:0] == 1'b1) ? reg_527 : min_p_145_reg_3526);
assign min_p_149_fu_2341_p3 = ((and_ln55_21_reg_3551[0:0] == 1'b1) ? p_72_reg_3443 : min_p_147_reg_3539);
assign min_p_151_fu_2449_p3 = ((and_ln55_23_reg_3564[0:0] == 1'b1) ? reg_542 : min_p_149_reg_3557);
assign min_p_153_fu_2548_p3 = ((and_ln55_25_reg_3582[0:0] == 1'b1) ? p_74_reg_3463 : min_p_151_reg_3570);
assign min_p_155_fu_2637_p3 = ((and_ln55_27_reg_3595[0:0] == 1'b1) ? reg_532 : min_p_153_reg_3588);
assign min_p_157_fu_2726_p3 = ((and_ln55_29_reg_3608[0:0] == 1'b1) ? p_76_reg_3488 : min_p_155_reg_3601);
assign min_p_159_fu_2844_p3 = ((and_ln55_31_fu_2839_p2[0:0] == 1'b1) ? reg_547 : min_p_157_reg_3614);
assign min_s_10_fu_2039_p3 = ((and_ln55_13_reg_3482[0:0] == 1'b1) ? zext_ln55_6_fu_2036_p1 : min_s_9_reg_3477);
assign min_s_11_fu_2055_p3 = ((and_ln55_15_reg_3502[0:0] == 1'b1) ? zext_ln55_7_fu_2052_p1 : min_s_10_fu_2039_p3);
assign min_s_12_fu_2236_p3 = ((and_ln55_17_reg_3520[0:0] == 1'b1) ? zext_ln55_8_fu_2233_p1 : min_s_11_reg_3515);
assign min_s_13_fu_2252_p3 = ((and_ln55_19_reg_3533[0:0] == 1'b1) ? zext_ln55_9_fu_2249_p1 : min_s_12_fu_2236_p3);
assign min_s_14_fu_2443_p3 = ((and_ln55_21_reg_3551[0:0] == 1'b1) ? zext_ln55_10_fu_2440_p1 : min_s_13_reg_3546);
assign min_s_15_fu_2459_p3 = ((and_ln55_23_reg_3564[0:0] == 1'b1) ? zext_ln55_11_fu_2456_p1 : min_s_14_fu_2443_p3);
assign min_s_16_fu_2735_p3 = ((and_ln55_25_reg_3582[0:0] == 1'b1) ? zext_ln55_12_fu_2732_p1 : min_s_15_reg_3577);
assign min_s_17_fu_2744_p3 = ((and_ln55_27_reg_3595[0:0] == 1'b1) ? zext_ln55_13_fu_2741_p1 : min_s_16_fu_2735_p3);
assign min_s_18_fu_2754_p3 = ((and_ln55_29_reg_3608[0:0] == 1'b1) ? zext_ln55_14_fu_2751_p1 : min_s_17_fu_2744_p3);
assign min_s_19_fu_2854_p3 = ((and_ln55_31_fu_2839_p2[0:0] == 1'b1) ? zext_ln55_15_fu_2851_p1 : min_s_18_reg_3621);
assign min_s_34_out = ((and_ln55_29_reg_3608[0:0] == 1'b1) ? zext_ln55_14_fu_2751_p1 : min_s_17_fu_2744_p3);
assign min_s_4_fu_1620_p3 = ((and_ln55_1_reg_3338[0:0] == 1'b1) ? zext_ln55_fu_1617_p1 : min_s_fu_128);
assign min_s_5_fu_1630_p3 = ((and_ln55_3_reg_3361[0:0] == 1'b1) ? zext_ln55_1_fu_1627_p1 : min_s_4_fu_1620_p3);
assign min_s_6_fu_1640_p3 = ((and_ln55_5_reg_3384[0:0] == 1'b1) ? zext_ln55_2_fu_1637_p1 : min_s_5_fu_1630_p3);
assign min_s_7_fu_1657_p3 = ((and_ln55_7_reg_3407[0:0] == 1'b1) ? zext_ln55_3_fu_1654_p1 : min_s_6_fu_1640_p3);
assign min_s_8_fu_1840_p3 = ((and_ln55_9_reg_3437[0:0] == 1'b1) ? zext_ln55_4_fu_1837_p1 : min_s_7_reg_3432);
assign min_s_9_fu_1856_p3 = ((and_ln55_11_reg_3457[0:0] == 1'b1) ? zext_ln55_5_fu_1853_p1 : min_s_8_fu_1840_p3);
assign or_ln55_10_fu_1801_p2 = (icmp_ln55_21_fu_1795_p2 | icmp_ln55_20_fu_1789_p2);
assign or_ln55_11_fu_1819_p2 = (icmp_ln55_23_fu_1813_p2 | icmp_ln55_22_fu_1807_p2);
assign or_ln55_12_fu_1910_p2 = (icmp_ln55_25_fu_1904_p2 | icmp_ln55_24_fu_1898_p2);
assign or_ln55_13_fu_1928_p2 = (icmp_ln55_27_fu_1922_p2 | icmp_ln55_26_fu_1916_p2);
assign or_ln55_14_fu_2000_p2 = (icmp_ln55_29_fu_1994_p2 | icmp_ln55_28_fu_1988_p2);
assign or_ln55_15_fu_2018_p2 = (icmp_ln55_31_fu_2012_p2 | icmp_ln55_30_fu_2006_p2);
assign or_ln55_16_fu_2108_p2 = (icmp_ln55_33_fu_2102_p2 | icmp_ln55_32_fu_2096_p2);
assign or_ln55_17_fu_2126_p2 = (icmp_ln55_35_fu_2120_p2 | icmp_ln55_34_fu_2114_p2);
assign or_ln55_18_fu_2197_p2 = (icmp_ln55_37_fu_2191_p2 | icmp_ln55_36_fu_2185_p2);
assign or_ln55_19_fu_2215_p2 = (icmp_ln55_39_fu_2209_p2 | icmp_ln55_38_fu_2203_p2);
assign or_ln55_1_fu_1294_p2 = (icmp_ln55_3_fu_1288_p2 | icmp_ln55_2_fu_1282_p2);
assign or_ln55_20_fu_2305_p2 = (icmp_ln55_41_fu_2299_p2 | icmp_ln55_40_fu_2293_p2);
assign or_ln55_21_fu_2323_p2 = (icmp_ln55_43_fu_2317_p2 | icmp_ln55_42_fu_2311_p2);
assign or_ln55_22_fu_2404_p2 = (icmp_ln55_45_fu_2398_p2 | icmp_ln55_44_fu_2392_p2);
assign or_ln55_23_fu_2422_p2 = (icmp_ln55_47_fu_2416_p2 | icmp_ln55_46_fu_2410_p2);
assign or_ln55_24_fu_2512_p2 = (icmp_ln55_49_fu_2506_p2 | icmp_ln55_48_fu_2500_p2);
assign or_ln55_25_fu_2530_p2 = (icmp_ln55_51_fu_2524_p2 | icmp_ln55_50_fu_2518_p2);
assign or_ln55_26_fu_2601_p2 = (icmp_ln55_53_fu_2595_p2 | icmp_ln55_52_fu_2589_p2);
assign or_ln55_27_fu_2619_p2 = (icmp_ln55_55_fu_2613_p2 | icmp_ln55_54_fu_2607_p2);
assign or_ln55_28_fu_2690_p2 = (icmp_ln55_57_fu_2684_p2 | icmp_ln55_56_fu_2678_p2);
assign or_ln55_29_fu_2708_p2 = (icmp_ln55_59_fu_2702_p2 | icmp_ln55_58_fu_2696_p2);
assign or_ln55_2_fu_1375_p2 = (icmp_ln55_5_fu_1369_p2 | icmp_ln55_4_fu_1363_p2);
assign or_ln55_30_fu_2809_p2 = (icmp_ln55_61_fu_2803_p2 | icmp_ln55_60_fu_2797_p2);
assign or_ln55_31_fu_2827_p2 = (icmp_ln55_63_fu_2821_p2 | icmp_ln55_62_fu_2815_p2);
assign or_ln55_3_fu_1393_p2 = (icmp_ln55_7_fu_1387_p2 | icmp_ln55_6_fu_1381_p2);
assign or_ln55_4_fu_1474_p2 = (icmp_ln55_9_fu_1468_p2 | icmp_ln55_8_fu_1462_p2);
assign or_ln55_5_fu_1492_p2 = (icmp_ln55_11_fu_1486_p2 | icmp_ln55_10_fu_1480_p2);
assign or_ln55_6_fu_1573_p2 = (icmp_ln55_13_fu_1567_p2 | icmp_ln55_12_fu_1561_p2);
assign or_ln55_7_fu_1591_p2 = (icmp_ln55_15_fu_1585_p2 | icmp_ln55_14_fu_1579_p2);
assign or_ln55_8_fu_1711_p2 = (icmp_ln55_17_fu_1705_p2 | icmp_ln55_16_fu_1699_p2);
assign or_ln55_9_fu_1729_p2 = (icmp_ln55_19_fu_1723_p2 | icmp_ln55_18_fu_1717_p2);
assign or_ln55_fu_1276_p2 = (icmp_ln55_fu_1264_p2 | icmp_ln55_1_fu_1270_p2);
assign shl_ln2_fu_607_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_10_fu_1117_p3 = {{add_ln53_10_reg_3017}, {6'd0}};
assign shl_ln54_11_fu_1134_p3 = {{add_ln53_11_reg_3028}, {6'd0}};
assign shl_ln54_12_fu_1156_p3 = {{add_ln53_12_reg_3039}, {6'd0}};
assign shl_ln54_13_fu_1173_p3 = {{add_ln53_13_reg_3050}, {6'd0}};
assign shl_ln54_14_fu_1198_p3 = {{trunc_ln54_fu_1195_p1}, {6'd0}};
assign shl_ln54_1_fu_874_p3 = {{add_ln53_reg_2967}, {6'd0}};
assign shl_ln54_2_fu_891_p3 = {{add_ln53_1_reg_2973}, {6'd0}};
assign shl_ln54_3_fu_946_p3 = {{add_ln53_2_reg_3096}, {6'd0}};
assign shl_ln54_4_fu_963_p3 = {{add_ln53_3_reg_3107}, {6'd0}};
assign shl_ln54_5_fu_995_p3 = {{add_ln53_4_reg_3188}, {6'd0}};
assign shl_ln54_6_fu_1012_p3 = {{add_ln53_5_reg_3194}, {6'd0}};
assign shl_ln54_7_fu_1039_p3 = {{add_ln53_6_reg_2979}, {6'd0}};
assign shl_ln54_8_fu_1056_p3 = {{add_ln53_7_reg_3220}, {6'd0}};
assign shl_ln54_9_fu_1078_p3 = {{add_ln53_8_reg_2995}, {6'd0}};
assign shl_ln54_s_fu_1095_p3 = {{add_ln53_9_reg_3006}, {6'd0}};
assign tmp_198_fu_1233_p4 = {{bitcast_ln55_fu_1229_p1[62:52]}};
assign tmp_199_fu_1250_p4 = {{bitcast_ln55_1_fu_1247_p1[62:52]}};
assign tmp_201_fu_1332_p4 = {{bitcast_ln55_2_fu_1328_p1[62:52]}};
assign tmp_202_fu_1349_p4 = {{bitcast_ln55_3_fu_1346_p1[62:52]}};
assign tmp_204_fu_1431_p4 = {{bitcast_ln55_4_fu_1427_p1[62:52]}};
assign tmp_205_fu_1448_p4 = {{bitcast_ln55_5_fu_1445_p1[62:52]}};
assign tmp_207_fu_1530_p4 = {{bitcast_ln55_6_fu_1526_p1[62:52]}};
assign tmp_208_fu_1547_p4 = {{bitcast_ln55_7_fu_1544_p1[62:52]}};
assign tmp_210_fu_1668_p4 = {{bitcast_ln55_8_fu_1664_p1[62:52]}};
assign tmp_211_fu_1685_p4 = {{bitcast_ln55_9_fu_1682_p1[62:52]}};
assign tmp_213_fu_1758_p4 = {{bitcast_ln55_10_fu_1754_p1[62:52]}};
assign tmp_214_fu_1775_p4 = {{bitcast_ln55_11_fu_1772_p1[62:52]}};
assign tmp_216_fu_1867_p4 = {{bitcast_ln55_12_fu_1863_p1[62:52]}};
assign tmp_217_fu_1884_p4 = {{bitcast_ln55_13_fu_1881_p1[62:52]}};
assign tmp_219_fu_654_p3 = {{t_1}, {lshr_ln8_9_fu_644_p4}};
assign tmp_220_fu_1957_p4 = {{bitcast_ln55_14_fu_1953_p1[62:52]}};
assign tmp_221_fu_1974_p4 = {{bitcast_ln55_15_fu_1971_p1[62:52]}};
assign tmp_223_fu_673_p3 = {{t_1}, {add_ln8_fu_667_p2}};
assign tmp_224_fu_2065_p4 = {{bitcast_ln55_16_fu_2062_p1[62:52]}};
assign tmp_225_fu_2082_p4 = {{bitcast_ln55_17_fu_2079_p1[62:52]}};
assign tmp_227_fu_702_p3 = {{t_1}, {lshr_ln8_s_fu_692_p4}};
assign tmp_228_fu_2154_p4 = {{bitcast_ln55_18_fu_2150_p1[62:52]}};
assign tmp_229_fu_2171_p4 = {{bitcast_ln55_19_fu_2168_p1[62:52]}};
assign tmp_231_fu_731_p3 = {{t_1}, {lshr_ln8_1_fu_721_p4}};
assign tmp_232_fu_2262_p4 = {{bitcast_ln55_20_fu_2259_p1[62:52]}};
assign tmp_233_fu_2279_p4 = {{bitcast_ln55_21_fu_2276_p1[62:52]}};
assign tmp_235_fu_760_p3 = {{t_1}, {lshr_ln8_2_fu_750_p4}};
assign tmp_236_fu_2361_p4 = {{bitcast_ln55_22_fu_2357_p1[62:52]}};
assign tmp_237_fu_2378_p4 = {{bitcast_ln55_23_fu_2375_p1[62:52]}};
assign tmp_239_fu_789_p3 = {{t_1}, {lshr_ln8_3_fu_779_p4}};
assign tmp_240_fu_2469_p4 = {{bitcast_ln55_24_fu_2466_p1[62:52]}};
assign tmp_241_fu_2486_p4 = {{bitcast_ln55_25_fu_2483_p1[62:52]}};
assign tmp_243_fu_818_p3 = {{t_1}, {lshr_ln8_4_fu_808_p4}};
assign tmp_244_fu_2558_p4 = {{bitcast_ln55_26_fu_2554_p1[62:52]}};
assign tmp_245_fu_2575_p4 = {{bitcast_ln55_27_fu_2572_p1[62:52]}};
assign tmp_247_fu_847_p3 = {{t_1}, {lshr_ln8_5_fu_837_p4}};
assign tmp_248_fu_2647_p4 = {{bitcast_ln55_28_fu_2644_p1[62:52]}};
assign tmp_249_fu_2664_p4 = {{bitcast_ln55_29_fu_2661_p1[62:52]}};
assign tmp_251_fu_2766_p4 = {{bitcast_ln55_30_fu_2762_p1[62:52]}};
assign tmp_252_fu_2783_p4 = {{bitcast_ln55_31_fu_2780_p1[62:52]}};
assign tmp_s_fu_588_p3 = {{t_1}, {lshr_ln8_8_fu_578_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_1195_p1 = add_ln53_14_reg_3061[5:0];
assign trunc_ln55_10_fu_1768_p1 = bitcast_ln55_10_fu_1754_p1[51:0];
assign trunc_ln55_11_fu_1785_p1 = bitcast_ln55_11_fu_1772_p1[51:0];
assign trunc_ln55_12_fu_1877_p1 = bitcast_ln55_12_fu_1863_p1[51:0];
assign trunc_ln55_13_fu_1894_p1 = bitcast_ln55_13_fu_1881_p1[51:0];
assign trunc_ln55_14_fu_1967_p1 = bitcast_ln55_14_fu_1953_p1[51:0];
assign trunc_ln55_15_fu_1984_p1 = bitcast_ln55_15_fu_1971_p1[51:0];
assign trunc_ln55_16_fu_2075_p1 = bitcast_ln55_16_fu_2062_p1[51:0];
assign trunc_ln55_17_fu_2092_p1 = bitcast_ln55_17_fu_2079_p1[51:0];
assign trunc_ln55_18_fu_2164_p1 = bitcast_ln55_18_fu_2150_p1[51:0];
assign trunc_ln55_19_fu_2181_p1 = bitcast_ln55_19_fu_2168_p1[51:0];
assign trunc_ln55_1_fu_1260_p1 = bitcast_ln55_1_fu_1247_p1[51:0];
assign trunc_ln55_20_fu_2272_p1 = bitcast_ln55_20_fu_2259_p1[51:0];
assign trunc_ln55_21_fu_2289_p1 = bitcast_ln55_21_fu_2276_p1[51:0];
assign trunc_ln55_22_fu_2371_p1 = bitcast_ln55_22_fu_2357_p1[51:0];
assign trunc_ln55_23_fu_2388_p1 = bitcast_ln55_23_fu_2375_p1[51:0];
assign trunc_ln55_24_fu_2479_p1 = bitcast_ln55_24_fu_2466_p1[51:0];
assign trunc_ln55_25_fu_2496_p1 = bitcast_ln55_25_fu_2483_p1[51:0];
assign trunc_ln55_26_fu_2568_p1 = bitcast_ln55_26_fu_2554_p1[51:0];
assign trunc_ln55_27_fu_2585_p1 = bitcast_ln55_27_fu_2572_p1[51:0];
assign trunc_ln55_28_fu_2657_p1 = bitcast_ln55_28_fu_2644_p1[51:0];
assign trunc_ln55_29_fu_2674_p1 = bitcast_ln55_29_fu_2661_p1[51:0];
assign trunc_ln55_2_fu_1342_p1 = bitcast_ln55_2_fu_1328_p1[51:0];
assign trunc_ln55_30_fu_2776_p1 = bitcast_ln55_30_fu_2762_p1[51:0];
assign trunc_ln55_31_fu_2793_p1 = bitcast_ln55_31_fu_2780_p1[51:0];
assign trunc_ln55_3_fu_1359_p1 = bitcast_ln55_3_fu_1346_p1[51:0];
assign trunc_ln55_4_fu_1441_p1 = bitcast_ln55_4_fu_1427_p1[51:0];
assign trunc_ln55_5_fu_1458_p1 = bitcast_ln55_5_fu_1445_p1[51:0];
assign trunc_ln55_6_fu_1540_p1 = bitcast_ln55_6_fu_1526_p1[51:0];
assign trunc_ln55_7_fu_1557_p1 = bitcast_ln55_7_fu_1544_p1[51:0];
assign trunc_ln55_8_fu_1678_p1 = bitcast_ln55_8_fu_1664_p1[51:0];
assign trunc_ln55_9_fu_1695_p1 = bitcast_ln55_9_fu_1682_p1[51:0];
assign trunc_ln55_fu_1243_p1 = bitcast_ln55_fu_1229_p1[51:0];
assign zext_ln12_fu_574_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_552_p1 = zext_ln52;
assign zext_ln54_10_fu_1107_p1 = add_ln54_10_fu_1102_p2;
assign zext_ln54_11_fu_1129_p1 = add_ln54_11_fu_1124_p2;
assign zext_ln54_12_fu_1146_p1 = add_ln54_12_fu_1141_p2;
assign zext_ln54_13_fu_1168_p1 = add_ln54_13_fu_1163_p2;
assign zext_ln54_14_fu_1185_p1 = add_ln54_14_fu_1180_p2;
assign zext_ln54_15_fu_1211_p1 = add_ln54_15_fu_1206_p2;
assign zext_ln54_16_fu_596_p1 = tmp_s_fu_588_p3;
assign zext_ln54_17_fu_662_p1 = tmp_219_fu_654_p3;
assign zext_ln54_18_fu_681_p1 = tmp_223_fu_673_p3;
assign zext_ln54_19_fu_710_p1 = tmp_227_fu_702_p3;
assign zext_ln54_1_fu_886_p1 = add_ln54_1_fu_881_p2;
assign zext_ln54_20_fu_739_p1 = tmp_231_fu_731_p3;
assign zext_ln54_21_fu_768_p1 = tmp_235_fu_760_p3;
assign zext_ln54_22_fu_797_p1 = tmp_239_fu_789_p3;
assign zext_ln54_23_fu_826_p1 = tmp_243_fu_818_p3;
assign zext_ln54_24_fu_855_p1 = tmp_247_fu_847_p3;
assign zext_ln54_25_fu_927_p1 = lshr_ln9_2_fu_918_p4;
assign zext_ln54_26_fu_936_p1 = add_ln54_16_fu_931_p2;
assign zext_ln54_2_fu_903_p1 = add_ln54_2_fu_898_p2;
assign zext_ln54_3_fu_958_p1 = add_ln54_3_fu_953_p2;
assign zext_ln54_4_fu_975_p1 = add_ln54_4_fu_970_p2;
assign zext_ln54_5_fu_1007_p1 = add_ln54_5_fu_1002_p2;
assign zext_ln54_6_fu_1024_p1 = add_ln54_6_fu_1019_p2;
assign zext_ln54_7_fu_1051_p1 = add_ln54_7_fu_1046_p2;
assign zext_ln54_8_fu_1068_p1 = add_ln54_8_fu_1063_p2;
assign zext_ln54_9_fu_1090_p1 = add_ln54_9_fu_1085_p2;
assign zext_ln54_fu_621_p1 = add_ln54_fu_615_p2;
assign zext_ln55_10_fu_2440_p1 = add_ln53_9_reg_3006_pp0_iter1_reg;
assign zext_ln55_11_fu_2456_p1 = add_ln53_10_reg_3017_pp0_iter1_reg;
assign zext_ln55_12_fu_2732_p1 = add_ln53_11_reg_3028_pp0_iter1_reg;
assign zext_ln55_13_fu_2741_p1 = add_ln53_12_reg_3039_pp0_iter1_reg;
assign zext_ln55_14_fu_2751_p1 = add_ln53_13_reg_3050_pp0_iter1_reg;
assign zext_ln55_15_fu_2851_p1 = trunc_ln54_reg_3311_pp0_iter1_reg;
assign zext_ln55_1_fu_1627_p1 = add_ln53_reg_2967;
assign zext_ln55_2_fu_1637_p1 = add_ln53_1_reg_2973;
assign zext_ln55_3_fu_1654_p1 = add_ln53_2_reg_3096;
assign zext_ln55_4_fu_1837_p1 = add_ln53_3_reg_3107;
assign zext_ln55_5_fu_1853_p1 = add_ln53_4_reg_3188;
assign zext_ln55_6_fu_2036_p1 = add_ln53_5_reg_3194;
assign zext_ln55_7_fu_2052_p1 = add_ln53_6_reg_2979;
assign zext_ln55_8_fu_2233_p1 = add_ln53_7_reg_3220;
assign zext_ln55_9_fu_2249_p1 = add_ln53_8_reg_2995;
assign zext_ln55_fu_1617_p1 = s_reg_2916;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_2897[11:8] <= 4'b0000;
end
endmodule 