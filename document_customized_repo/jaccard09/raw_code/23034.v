module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_36,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_34_out,min_s_34_out_ap_vld,grp_fu_717_p_din0,grp_fu_717_p_din1,grp_fu_717_p_opcode,grp_fu_717_p_dout0,grp_fu_717_p_ce,grp_fu_1338_p_din0,grp_fu_1338_p_din1,grp_fu_1338_p_opcode,grp_fu_1338_p_dout0,grp_fu_1338_p_ce); 
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
input  [63:0] min_p_36;
input  [7:0] t_1;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
input  [6:0] zext_ln52_2;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
input  [0:0] empty;
input  [9:0] zext_ln52_3;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_717_p_din0;
output  [63:0] grp_fu_717_p_din1;
output  [1:0] grp_fu_717_p_opcode;
input  [63:0] grp_fu_717_p_dout0;
output   grp_fu_717_p_ce;
output  [63:0] grp_fu_1338_p_din0;
output  [63:0] grp_fu_1338_p_din1;
output  [4:0] grp_fu_1338_p_opcode;
input  [0:0] grp_fu_1338_p_dout0;
output   grp_fu_1338_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_46_reg_3067;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_685_p3;
reg   [63:0] reg_699;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_692_p3;
reg   [63:0] reg_703;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_707;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_711;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_715;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_720;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_725;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_730;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_735;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_740_p1;
reg   [10:0] zext_ln52_2_cast_reg_2927;
reg   [5:0] s_reg_2946;
wire   [5:0] add_ln53_fu_823_p2;
reg   [5:0] add_ln53_reg_3049;
wire   [5:0] add_ln53_1_fu_829_p2;
reg   [5:0] add_ln53_1_reg_3055;
wire   [6:0] add_ln53_14_fu_835_p2;
reg   [6:0] add_ln53_14_reg_3061;
reg   [0:0] tmp_46_reg_3067_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3071;
reg   [63:0] llike_2_load_reg_3076;
reg   [63:0] llike_3_load_reg_3091;
wire   [5:0] add_ln53_2_fu_885_p2;
reg   [5:0] add_ln53_2_reg_3106;
reg   [63:0] llike_4_load_reg_3112;
wire   [5:0] add_ln53_3_fu_890_p2;
reg   [5:0] add_ln53_3_reg_3117;
reg   [63:0] llike_5_load_reg_3123;
reg   [63:0] llike_6_load_reg_3128;
reg   [63:0] llike_7_load_reg_3133;
reg   [63:0] llike_8_load_reg_3138;
reg   [63:0] llike_9_load_reg_3143;
reg   [63:0] llike_10_load_reg_3148;
reg   [63:0] llike_11_load_reg_3153;
reg   [63:0] llike_12_load_reg_3158;
reg   [63:0] llike_13_load_reg_3163;
reg   [63:0] llike_14_load_reg_3168;
reg   [63:0] llike_15_load_reg_3173;
wire   [63:0] bitcast_ln54_fu_918_p1;
wire   [5:0] add_ln53_4_fu_959_p2;
reg   [5:0] add_ln53_4_reg_3208;
wire   [5:0] add_ln53_5_fu_964_p2;
reg   [5:0] add_ln53_5_reg_3214;
reg   [63:0] llike_load_reg_3220;
wire   [63:0] bitcast_ln54_1_fu_969_p1;
wire   [5:0] add_ln53_6_fu_1010_p2;
reg   [5:0] add_ln53_6_reg_3250;
wire   [5:0] add_ln53_7_fu_1015_p2;
reg   [5:0] add_ln53_7_reg_3256;
wire   [63:0] bitcast_ln54_2_fu_1020_p1;
wire   [5:0] add_ln53_8_fu_1061_p2;
reg   [5:0] add_ln53_8_reg_3287;
wire   [5:0] add_ln53_9_fu_1066_p2;
reg   [5:0] add_ln53_9_reg_3293;
wire   [63:0] bitcast_ln54_3_fu_1071_p1;
reg   [63:0] select_ln54_8_reg_3304;
wire   [5:0] add_ln53_10_fu_1112_p2;
reg   [5:0] add_ln53_10_reg_3329;
wire   [5:0] add_ln53_11_fu_1117_p2;
reg   [5:0] add_ln53_11_reg_3335;
reg   [5:0] add_ln53_11_reg_3335_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_4_fu_1122_p1;
reg   [63:0] select_ln54_9_reg_3346;
wire   [5:0] add_ln53_12_fu_1163_p2;
reg   [5:0] add_ln53_12_reg_3371;
reg   [5:0] add_ln53_12_reg_3371_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_1168_p2;
reg   [5:0] add_ln53_13_reg_3377;
reg   [5:0] add_ln53_13_reg_3377_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_5_fu_1173_p1;
reg   [63:0] select_ln54_12_reg_3388;
wire   [63:0] bitcast_ln54_6_fu_1214_p1;
reg   [63:0] select_ln54_13_reg_3418;
wire   [5:0] trunc_ln54_fu_1219_p1;
reg   [5:0] trunc_ln54_reg_3423;
reg   [5:0] trunc_ln54_reg_3423_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_7_fu_1241_p1;
reg   [63:0] select_ln54_15_reg_3443;
reg   [63:0] min_p_1_reg_3448;
wire   [63:0] bitcast_ln54_8_fu_1250_p1;
wire   [0:0] and_ln55_1_fu_1331_p2;
reg   [0:0] and_ln55_1_reg_3460;
wire   [63:0] bitcast_ln54_9_fu_1337_p1;
wire   [63:0] min_p_3_fu_1341_p3;
reg   [63:0] min_p_3_reg_3471;
wire   [63:0] bitcast_ln54_10_fu_1348_p1;
wire   [0:0] and_ln55_3_fu_1430_p2;
reg   [0:0] and_ln55_3_reg_3483;
wire   [63:0] bitcast_ln54_11_fu_1436_p1;
wire   [63:0] min_p_5_fu_1441_p3;
reg   [63:0] min_p_5_reg_3494;
wire   [63:0] bitcast_ln54_12_fu_1448_p1;
wire   [0:0] and_ln55_5_fu_1529_p2;
reg   [0:0] and_ln55_5_reg_3506;
wire   [63:0] bitcast_ln54_13_fu_1535_p1;
wire   [63:0] min_p_7_fu_1539_p3;
reg   [63:0] min_p_7_reg_3517;
wire   [63:0] bitcast_ln54_14_fu_1546_p1;
wire   [0:0] and_ln55_7_fu_1628_p2;
reg   [0:0] and_ln55_7_reg_3529;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_8_reg_3535;
wire   [63:0] bitcast_ln54_15_fu_1634_p1;
wire   [63:0] min_p_9_fu_1671_p3;
reg   [63:0] min_p_9_reg_3547;
wire   [7:0] min_s_7_fu_1681_p3;
reg   [7:0] min_s_7_reg_3554;
wire   [0:0] and_ln55_9_fu_1765_p2;
reg   [0:0] and_ln55_9_reg_3559;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_10_reg_3565;
wire   [63:0] min_p_11_fu_1771_p3;
reg   [63:0] min_p_11_reg_3572;
wire   [0:0] and_ln55_11_fu_1855_p2;
reg   [0:0] and_ln55_11_reg_3579;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_12_reg_3585;
wire   [63:0] min_p_13_fu_1870_p3;
reg   [63:0] min_p_13_reg_3592;
wire   [7:0] min_s_9_fu_1880_p3;
reg   [7:0] min_s_9_reg_3599;
wire   [0:0] and_ln55_13_fu_1964_p2;
reg   [0:0] and_ln55_13_reg_3604;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_14_reg_3610;
wire   [63:0] min_p_15_fu_1970_p3;
reg   [63:0] min_p_15_reg_3617;
wire   [0:0] and_ln55_15_fu_2054_p2;
reg   [0:0] and_ln55_15_reg_3624;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_17_fu_2069_p3;
reg   [63:0] min_p_17_reg_3630;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_2079_p3;
reg   [7:0] min_s_11_reg_3637;
wire   [0:0] and_ln55_17_fu_2162_p2;
reg   [0:0] and_ln55_17_reg_3642;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_19_fu_2168_p3;
reg   [63:0] min_p_19_reg_3648;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_2251_p2;
reg   [0:0] and_ln55_19_reg_3655;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_21_fu_2266_p3;
reg   [63:0] min_p_21_reg_3661;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_2276_p3;
reg   [7:0] min_s_13_reg_3668;
wire   [0:0] and_ln55_21_fu_2359_p2;
reg   [0:0] and_ln55_21_reg_3673;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_23_fu_2365_p3;
reg   [63:0] min_p_23_reg_3679;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_2458_p2;
reg   [0:0] and_ln55_23_reg_3686;
wire   [63:0] min_p_25_fu_2473_p3;
reg   [63:0] min_p_25_reg_3692;
wire   [7:0] min_s_15_fu_2483_p3;
reg   [7:0] min_s_15_reg_3699;
wire   [0:0] and_ln55_25_fu_2566_p2;
reg   [0:0] and_ln55_25_reg_3704;
wire   [63:0] min_p_27_fu_2572_p3;
reg   [63:0] min_p_27_reg_3710;
wire   [0:0] and_ln55_27_fu_2655_p2;
reg   [0:0] and_ln55_27_reg_3717;
wire   [63:0] min_p_29_fu_2661_p3;
reg   [63:0] min_p_29_reg_3723;
wire   [0:0] and_ln55_29_fu_2744_p2;
reg   [0:0] and_ln55_29_reg_3730;
wire   [63:0] min_p_31_fu_2750_p3;
reg   [63:0] min_p_31_reg_3736;
wire   [7:0] min_s_18_fu_2778_p3;
reg   [7:0] min_s_18_reg_3743;
reg   [0:0] tmp_49_reg_3748;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_784_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_817_p1;
wire   [63:0] zext_ln54_1_fu_861_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_879_p1;
wire   [63:0] zext_ln54_18_fu_913_p1;
wire   [63:0] zext_ln54_3_fu_935_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_953_p1;
wire   [63:0] zext_ln54_5_fu_986_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1004_p1;
wire   [63:0] zext_ln54_7_fu_1037_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1055_p1;
wire   [63:0] zext_ln54_9_fu_1088_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1106_p1;
wire   [63:0] zext_ln54_11_fu_1139_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_1157_p1;
wire   [63:0] zext_ln54_13_fu_1190_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1208_p1;
wire   [63:0] zext_ln54_15_fu_1235_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_146;
wire   [63:0] min_p_33_fu_2868_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_150;
wire   [7:0] min_s_19_fu_2878_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_154;
wire   [5:0] add_ln53_15_fu_2371_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_8_ce0_local;
reg    llike_9_ce0_local;
reg    llike_10_ce0_local;
reg    llike_11_ce0_local;
reg    llike_12_ce0_local;
reg    llike_13_ce0_local;
reg    llike_14_ce0_local;
reg    llike_15_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_677_p0;
reg   [63:0] grp_fu_677_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_681_p0;
reg   [63:0] grp_fu_681_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [1:0] lshr_ln8_2_fu_766_p4;
wire   [9:0] tmp_s_fu_776_p3;
wire   [10:0] shl_ln2_fu_803_p3;
wire   [10:0] add_ln54_fu_811_p2;
wire   [6:0] zext_ln21_fu_762_p1;
wire   [10:0] shl_ln54_1_fu_849_p3;
wire   [10:0] add_ln54_1_fu_856_p2;
wire   [10:0] shl_ln54_2_fu_867_p3;
wire   [10:0] add_ln54_2_fu_874_p2;
wire   [2:0] lshr_ln9_3_fu_895_p4;
wire   [9:0] zext_ln54_17_fu_904_p1;
wire   [9:0] add_ln54_16_fu_908_p2;
wire   [10:0] shl_ln54_3_fu_923_p3;
wire   [10:0] add_ln54_3_fu_930_p2;
wire   [10:0] shl_ln54_4_fu_941_p3;
wire   [10:0] add_ln54_4_fu_948_p2;
wire   [10:0] shl_ln54_5_fu_974_p3;
wire   [10:0] add_ln54_5_fu_981_p2;
wire   [10:0] shl_ln54_6_fu_992_p3;
wire   [10:0] add_ln54_6_fu_999_p2;
wire   [10:0] shl_ln54_7_fu_1025_p3;
wire   [10:0] add_ln54_7_fu_1032_p2;
wire   [10:0] shl_ln54_8_fu_1043_p3;
wire   [10:0] add_ln54_8_fu_1050_p2;
wire   [10:0] shl_ln54_9_fu_1076_p3;
wire   [10:0] add_ln54_9_fu_1083_p2;
wire   [10:0] shl_ln54_s_fu_1094_p3;
wire   [10:0] add_ln54_10_fu_1101_p2;
wire   [10:0] shl_ln54_10_fu_1127_p3;
wire   [10:0] add_ln54_11_fu_1134_p2;
wire   [10:0] shl_ln54_11_fu_1145_p3;
wire   [10:0] add_ln54_12_fu_1152_p2;
wire   [10:0] shl_ln54_12_fu_1178_p3;
wire   [10:0] add_ln54_13_fu_1185_p2;
wire   [10:0] shl_ln54_13_fu_1196_p3;
wire   [10:0] add_ln54_14_fu_1203_p2;
wire   [10:0] shl_ln54_14_fu_1222_p3;
wire   [10:0] add_ln54_15_fu_1230_p2;
wire   [63:0] bitcast_ln55_fu_1254_p1;
wire   [63:0] bitcast_ln55_1_fu_1272_p1;
wire   [10:0] tmp_1_fu_1258_p4;
wire   [51:0] trunc_ln55_fu_1268_p1;
wire   [0:0] icmp_ln55_1_fu_1295_p2;
wire   [0:0] icmp_ln55_fu_1289_p2;
wire   [10:0] tmp_2_fu_1275_p4;
wire   [51:0] trunc_ln55_1_fu_1285_p1;
wire   [0:0] icmp_ln55_3_fu_1313_p2;
wire   [0:0] icmp_ln55_2_fu_1307_p2;
wire   [0:0] or_ln55_fu_1301_p2;
wire   [0:0] and_ln55_fu_1325_p2;
wire   [0:0] or_ln55_1_fu_1319_p2;
wire   [63:0] bitcast_ln55_2_fu_1353_p1;
wire   [63:0] bitcast_ln55_3_fu_1371_p1;
wire   [10:0] tmp_4_fu_1357_p4;
wire   [51:0] trunc_ln55_2_fu_1367_p1;
wire   [0:0] icmp_ln55_5_fu_1394_p2;
wire   [0:0] icmp_ln55_4_fu_1388_p2;
wire   [10:0] tmp_5_fu_1374_p4;
wire   [51:0] trunc_ln55_3_fu_1384_p1;
wire   [0:0] icmp_ln55_7_fu_1412_p2;
wire   [0:0] icmp_ln55_6_fu_1406_p2;
wire   [0:0] or_ln55_3_fu_1418_p2;
wire   [0:0] or_ln55_2_fu_1400_p2;
wire   [0:0] and_ln55_2_fu_1424_p2;
wire   [63:0] bitcast_ln55_4_fu_1452_p1;
wire   [63:0] bitcast_ln55_5_fu_1470_p1;
wire   [10:0] tmp_7_fu_1456_p4;
wire   [51:0] trunc_ln55_4_fu_1466_p1;
wire   [0:0] icmp_ln55_9_fu_1493_p2;
wire   [0:0] icmp_ln55_8_fu_1487_p2;
wire   [10:0] tmp_8_fu_1473_p4;
wire   [51:0] trunc_ln55_5_fu_1483_p1;
wire   [0:0] icmp_ln55_11_fu_1511_p2;
wire   [0:0] icmp_ln55_10_fu_1505_p2;
wire   [0:0] or_ln55_5_fu_1517_p2;
wire   [0:0] or_ln55_4_fu_1499_p2;
wire   [0:0] and_ln55_4_fu_1523_p2;
wire   [63:0] bitcast_ln55_6_fu_1551_p1;
wire   [63:0] bitcast_ln55_7_fu_1569_p1;
wire   [10:0] tmp_10_fu_1555_p4;
wire   [51:0] trunc_ln55_6_fu_1565_p1;
wire   [0:0] icmp_ln55_13_fu_1592_p2;
wire   [0:0] icmp_ln55_12_fu_1586_p2;
wire   [10:0] tmp_11_fu_1572_p4;
wire   [51:0] trunc_ln55_7_fu_1582_p1;
wire   [0:0] icmp_ln55_15_fu_1610_p2;
wire   [0:0] icmp_ln55_14_fu_1604_p2;
wire   [0:0] or_ln55_7_fu_1616_p2;
wire   [0:0] or_ln55_6_fu_1598_p2;
wire   [0:0] and_ln55_6_fu_1622_p2;
wire   [7:0] zext_ln55_fu_1641_p1;
wire   [7:0] zext_ln55_1_fu_1651_p1;
wire   [7:0] min_s_4_fu_1644_p3;
wire   [7:0] zext_ln55_2_fu_1661_p1;
wire   [7:0] min_s_5_fu_1654_p3;
wire   [7:0] zext_ln55_3_fu_1678_p1;
wire   [7:0] min_s_6_fu_1664_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_1688_p1;
wire   [63:0] bitcast_ln55_9_fu_1706_p1;
wire   [10:0] tmp_13_fu_1692_p4;
wire   [51:0] trunc_ln55_8_fu_1702_p1;
wire   [0:0] icmp_ln55_17_fu_1729_p2;
wire   [0:0] icmp_ln55_16_fu_1723_p2;
wire   [10:0] tmp_14_fu_1709_p4;
wire   [51:0] trunc_ln55_9_fu_1719_p1;
wire   [0:0] icmp_ln55_19_fu_1747_p2;
wire   [0:0] icmp_ln55_18_fu_1741_p2;
wire   [0:0] or_ln55_9_fu_1753_p2;
wire   [0:0] or_ln55_8_fu_1735_p2;
wire   [0:0] and_ln55_8_fu_1759_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_1778_p1;
wire   [63:0] bitcast_ln55_11_fu_1796_p1;
wire   [10:0] tmp_16_fu_1782_p4;
wire   [51:0] trunc_ln55_10_fu_1792_p1;
wire   [0:0] icmp_ln55_21_fu_1819_p2;
wire   [0:0] icmp_ln55_20_fu_1813_p2;
wire   [10:0] tmp_17_fu_1799_p4;
wire   [51:0] trunc_ln55_11_fu_1809_p1;
wire   [0:0] icmp_ln55_23_fu_1837_p2;
wire   [0:0] icmp_ln55_22_fu_1831_p2;
wire   [0:0] or_ln55_11_fu_1843_p2;
wire   [0:0] or_ln55_10_fu_1825_p2;
wire   [0:0] and_ln55_10_fu_1849_p2;
wire   [7:0] zext_ln55_4_fu_1861_p1;
wire   [7:0] zext_ln55_5_fu_1877_p1;
wire   [7:0] min_s_8_fu_1864_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_1887_p1;
wire   [63:0] bitcast_ln55_13_fu_1905_p1;
wire   [10:0] tmp_19_fu_1891_p4;
wire   [51:0] trunc_ln55_12_fu_1901_p1;
wire   [0:0] icmp_ln55_25_fu_1928_p2;
wire   [0:0] icmp_ln55_24_fu_1922_p2;
wire   [10:0] tmp_20_fu_1908_p4;
wire   [51:0] trunc_ln55_13_fu_1918_p1;
wire   [0:0] icmp_ln55_27_fu_1946_p2;
wire   [0:0] icmp_ln55_26_fu_1940_p2;
wire   [0:0] or_ln55_13_fu_1952_p2;
wire   [0:0] or_ln55_12_fu_1934_p2;
wire   [0:0] and_ln55_12_fu_1958_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_1977_p1;
wire   [63:0] bitcast_ln55_15_fu_1995_p1;
wire   [10:0] tmp_22_fu_1981_p4;
wire   [51:0] trunc_ln55_14_fu_1991_p1;
wire   [0:0] icmp_ln55_29_fu_2018_p2;
wire   [0:0] icmp_ln55_28_fu_2012_p2;
wire   [10:0] tmp_23_fu_1998_p4;
wire   [51:0] trunc_ln55_15_fu_2008_p1;
wire   [0:0] icmp_ln55_31_fu_2036_p2;
wire   [0:0] icmp_ln55_30_fu_2030_p2;
wire   [0:0] or_ln55_15_fu_2042_p2;
wire   [0:0] or_ln55_14_fu_2024_p2;
wire   [0:0] and_ln55_14_fu_2048_p2;
wire   [7:0] zext_ln55_6_fu_2060_p1;
wire   [7:0] zext_ln55_7_fu_2076_p1;
wire   [7:0] min_s_10_fu_2063_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_2086_p1;
wire   [63:0] bitcast_ln55_17_fu_2103_p1;
wire   [10:0] tmp_25_fu_2089_p4;
wire   [51:0] trunc_ln55_16_fu_2099_p1;
wire   [0:0] icmp_ln55_33_fu_2126_p2;
wire   [0:0] icmp_ln55_32_fu_2120_p2;
wire   [10:0] tmp_26_fu_2106_p4;
wire   [51:0] trunc_ln55_17_fu_2116_p1;
wire   [0:0] icmp_ln55_35_fu_2144_p2;
wire   [0:0] icmp_ln55_34_fu_2138_p2;
wire   [0:0] or_ln55_17_fu_2150_p2;
wire   [0:0] or_ln55_16_fu_2132_p2;
wire   [0:0] and_ln55_16_fu_2156_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_2174_p1;
wire   [63:0] bitcast_ln55_19_fu_2192_p1;
wire   [10:0] tmp_28_fu_2178_p4;
wire   [51:0] trunc_ln55_18_fu_2188_p1;
wire   [0:0] icmp_ln55_37_fu_2215_p2;
wire   [0:0] icmp_ln55_36_fu_2209_p2;
wire   [10:0] tmp_29_fu_2195_p4;
wire   [51:0] trunc_ln55_19_fu_2205_p1;
wire   [0:0] icmp_ln55_39_fu_2233_p2;
wire   [0:0] icmp_ln55_38_fu_2227_p2;
wire   [0:0] or_ln55_19_fu_2239_p2;
wire   [0:0] or_ln55_18_fu_2221_p2;
wire   [0:0] and_ln55_18_fu_2245_p2;
wire   [7:0] zext_ln55_8_fu_2257_p1;
wire   [7:0] zext_ln55_9_fu_2273_p1;
wire   [7:0] min_s_12_fu_2260_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_2283_p1;
wire   [63:0] bitcast_ln55_21_fu_2300_p1;
wire   [10:0] tmp_31_fu_2286_p4;
wire   [51:0] trunc_ln55_20_fu_2296_p1;
wire   [0:0] icmp_ln55_41_fu_2323_p2;
wire   [0:0] icmp_ln55_40_fu_2317_p2;
wire   [10:0] tmp_32_fu_2303_p4;
wire   [51:0] trunc_ln55_21_fu_2313_p1;
wire   [0:0] icmp_ln55_43_fu_2341_p2;
wire   [0:0] icmp_ln55_42_fu_2335_p2;
wire   [0:0] or_ln55_21_fu_2347_p2;
wire   [0:0] or_ln55_20_fu_2329_p2;
wire   [0:0] and_ln55_20_fu_2353_p2;
wire   [63:0] bitcast_ln55_22_fu_2381_p1;
wire   [63:0] bitcast_ln55_23_fu_2399_p1;
wire   [10:0] tmp_34_fu_2385_p4;
wire   [51:0] trunc_ln55_22_fu_2395_p1;
wire   [0:0] icmp_ln55_45_fu_2422_p2;
wire   [0:0] icmp_ln55_44_fu_2416_p2;
wire   [10:0] tmp_35_fu_2402_p4;
wire   [51:0] trunc_ln55_23_fu_2412_p1;
wire   [0:0] icmp_ln55_47_fu_2440_p2;
wire   [0:0] icmp_ln55_46_fu_2434_p2;
wire   [0:0] or_ln55_23_fu_2446_p2;
wire   [0:0] or_ln55_22_fu_2428_p2;
wire   [0:0] and_ln55_22_fu_2452_p2;
wire   [7:0] zext_ln55_10_fu_2464_p1;
wire   [7:0] zext_ln55_11_fu_2480_p1;
wire   [7:0] min_s_14_fu_2467_p3;
wire   [63:0] bitcast_ln55_24_fu_2490_p1;
wire   [63:0] bitcast_ln55_25_fu_2507_p1;
wire   [10:0] tmp_37_fu_2493_p4;
wire   [51:0] trunc_ln55_24_fu_2503_p1;
wire   [0:0] icmp_ln55_49_fu_2530_p2;
wire   [0:0] icmp_ln55_48_fu_2524_p2;
wire   [10:0] tmp_38_fu_2510_p4;
wire   [51:0] trunc_ln55_25_fu_2520_p1;
wire   [0:0] icmp_ln55_51_fu_2548_p2;
wire   [0:0] icmp_ln55_50_fu_2542_p2;
wire   [0:0] or_ln55_25_fu_2554_p2;
wire   [0:0] or_ln55_24_fu_2536_p2;
wire   [0:0] and_ln55_24_fu_2560_p2;
wire   [63:0] bitcast_ln55_26_fu_2578_p1;
wire   [63:0] bitcast_ln55_27_fu_2596_p1;
wire   [10:0] tmp_40_fu_2582_p4;
wire   [51:0] trunc_ln55_26_fu_2592_p1;
wire   [0:0] icmp_ln55_53_fu_2619_p2;
wire   [0:0] icmp_ln55_52_fu_2613_p2;
wire   [10:0] tmp_41_fu_2599_p4;
wire   [51:0] trunc_ln55_27_fu_2609_p1;
wire   [0:0] icmp_ln55_55_fu_2637_p2;
wire   [0:0] icmp_ln55_54_fu_2631_p2;
wire   [0:0] or_ln55_27_fu_2643_p2;
wire   [0:0] or_ln55_26_fu_2625_p2;
wire   [0:0] and_ln55_26_fu_2649_p2;
wire   [63:0] bitcast_ln55_28_fu_2668_p1;
wire   [63:0] bitcast_ln55_29_fu_2685_p1;
wire   [10:0] tmp_43_fu_2671_p4;
wire   [51:0] trunc_ln55_28_fu_2681_p1;
wire   [0:0] icmp_ln55_57_fu_2708_p2;
wire   [0:0] icmp_ln55_56_fu_2702_p2;
wire   [10:0] tmp_44_fu_2688_p4;
wire   [51:0] trunc_ln55_29_fu_2698_p1;
wire   [0:0] icmp_ln55_59_fu_2726_p2;
wire   [0:0] icmp_ln55_58_fu_2720_p2;
wire   [0:0] or_ln55_29_fu_2732_p2;
wire   [0:0] or_ln55_28_fu_2714_p2;
wire   [0:0] and_ln55_28_fu_2738_p2;
wire   [7:0] zext_ln55_12_fu_2756_p1;
wire   [7:0] zext_ln55_13_fu_2765_p1;
wire   [7:0] min_s_16_fu_2759_p3;
wire   [7:0] zext_ln55_14_fu_2775_p1;
wire   [7:0] min_s_17_fu_2768_p3;
wire   [63:0] bitcast_ln55_30_fu_2786_p1;
wire   [63:0] bitcast_ln55_31_fu_2804_p1;
wire   [10:0] tmp_47_fu_2790_p4;
wire   [51:0] trunc_ln55_30_fu_2800_p1;
wire   [0:0] icmp_ln55_61_fu_2827_p2;
wire   [0:0] icmp_ln55_60_fu_2821_p2;
wire   [10:0] tmp_48_fu_2807_p4;
wire   [51:0] trunc_ln55_31_fu_2817_p1;
wire   [0:0] icmp_ln55_63_fu_2845_p2;
wire   [0:0] icmp_ln55_62_fu_2839_p2;
wire   [0:0] or_ln55_31_fu_2851_p2;
wire   [0:0] or_ln55_30_fu_2833_p2;
wire   [0:0] and_ln55_30_fu_2857_p2;
wire   [0:0] and_ln55_31_fu_2863_p2;
wire   [7:0] zext_ln55_15_fu_2875_p1;
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
#0 min_p_fu_146 = 64'd0;
#0 min_s_fu_150 = 8'd0;
#0 min_s_1_fu_154 = 6'd0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_146 <= min_p_36;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_46_reg_3067_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_146 <= min_p_33_fu_2868_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_154 <= 6'd1;
    end else if (((tmp_46_reg_3067 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_154 <= add_ln53_15_fu_2371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_150 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_46_reg_3067_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_150 <= min_s_19_fu_2878_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln53_10_reg_3329 <= add_ln53_10_fu_1112_p2;
        add_ln53_11_reg_3335 <= add_ln53_11_fu_1117_p2;
        add_ln53_11_reg_3335_pp0_iter1_reg <= add_ln53_11_reg_3335;
        min_p_29_reg_3723 <= min_p_29_fu_2661_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln53_12_reg_3371 <= add_ln53_12_fu_1163_p2;
        add_ln53_12_reg_3371_pp0_iter1_reg <= add_ln53_12_reg_3371;
        add_ln53_13_reg_3377 <= add_ln53_13_fu_1168_p2;
        add_ln53_13_reg_3377_pp0_iter1_reg <= add_ln53_13_reg_3377;
        and_ln55_29_reg_3730 <= and_ln55_29_fu_2744_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_14_reg_3061 <= add_ln53_14_fu_835_p2;
        add_ln53_1_reg_3055 <= add_ln53_1_fu_829_p2;
        add_ln53_reg_3049 <= add_ln53_fu_823_p2;
        and_ln55_23_reg_3686 <= and_ln55_23_fu_2458_p2;
        s_reg_2946 <= ap_sig_allocacmp_s;
        tmp_46_reg_3067 <= add_ln53_14_fu_835_p2[32'd6];
        tmp_46_reg_3067_pp0_iter1_reg <= tmp_46_reg_3067;
        zext_ln52_2_cast_reg_2927[6 : 0] <= zext_ln52_2_cast_fu_740_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_3106 <= add_ln53_2_fu_885_p2;
        add_ln53_3_reg_3117 <= add_ln53_3_fu_890_p2;
        llike_10_load_reg_3148 <= llike_10_q0;
        llike_11_load_reg_3153 <= llike_11_q0;
        llike_12_load_reg_3158 <= llike_12_q0;
        llike_13_load_reg_3163 <= llike_13_q0;
        llike_14_load_reg_3168 <= llike_14_q0;
        llike_15_load_reg_3173 <= llike_15_q0;
        llike_1_load_reg_3071 <= llike_1_q0;
        llike_2_load_reg_3076 <= llike_2_q0;
        llike_3_load_reg_3091 <= llike_3_q0;
        llike_4_load_reg_3112 <= llike_4_q0;
        llike_5_load_reg_3123 <= llike_5_q0;
        llike_6_load_reg_3128 <= llike_6_q0;
        llike_7_load_reg_3133 <= llike_7_q0;
        llike_8_load_reg_3138 <= llike_8_q0;
        llike_9_load_reg_3143 <= llike_9_q0;
        min_p_25_reg_3692 <= min_p_25_fu_2473_p3;
        min_s_15_reg_3699 <= min_s_15_fu_2483_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_3208 <= add_ln53_4_fu_959_p2;
        add_ln53_5_reg_3214 <= add_ln53_5_fu_964_p2;
        and_ln55_25_reg_3704 <= and_ln55_25_fu_2566_p2;
        llike_load_reg_3220 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_6_reg_3250 <= add_ln53_6_fu_1010_p2;
        add_ln53_7_reg_3256 <= add_ln53_7_fu_1015_p2;
        min_p_27_reg_3710 <= min_p_27_fu_2572_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln53_8_reg_3287 <= add_ln53_8_fu_1061_p2;
        add_ln53_9_reg_3293 <= add_ln53_9_fu_1066_p2;
        and_ln55_27_reg_3717 <= and_ln55_27_fu_2655_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_3579 <= and_ln55_11_fu_1855_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_3604 <= and_ln55_13_fu_1964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_3624 <= and_ln55_15_fu_2054_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_3642 <= and_ln55_17_fu_2162_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_3655 <= and_ln55_19_fu_2251_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3460 <= and_ln55_1_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_3673 <= and_ln55_21_fu_2359_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3483 <= and_ln55_3_fu_1430_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3506 <= and_ln55_5_fu_1529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_3529 <= and_ln55_7_fu_1628_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_3559 <= and_ln55_9_fu_1765_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_11_reg_3572 <= min_p_11_fu_1771_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_13_reg_3592 <= min_p_13_fu_1870_p3;
        min_s_9_reg_3599 <= min_s_9_fu_1880_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_15_reg_3617 <= min_p_15_fu_1970_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_17_reg_3630 <= min_p_17_fu_2069_p3;
        min_s_11_reg_3637 <= min_s_11_fu_2079_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_19_reg_3648 <= min_p_19_fu_2168_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_3448 <= min_p_fu_146;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_21_reg_3661 <= min_p_21_fu_2266_p3;
        min_s_13_reg_3668 <= min_s_13_fu_2276_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_23_reg_3679 <= min_p_23_fu_2365_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_31_reg_3736 <= min_p_31_fu_2750_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_3471 <= min_p_3_fu_1341_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_3494 <= min_p_5_fu_1441_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_7_reg_3517 <= min_p_7_fu_1539_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_9_reg_3547 <= min_p_9_fu_1671_p3;
        min_s_7_reg_3554 <= min_s_7_fu_1681_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_3743 <= min_s_18_fu_2778_p3;
        tmp_49_reg_3748 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_10_reg_3565 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_12_reg_3585 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_14_reg_3610 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_8_reg_3535 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_699 <= grp_fu_685_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_703 <= grp_fu_692_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_707 <= grp_fu_685_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_711 <= grp_fu_692_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_715 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_720 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_725 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_730 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_735 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        select_ln54_12_reg_3388 <= grp_fu_692_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        select_ln54_13_reg_3418 <= grp_fu_685_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        select_ln54_15_reg_3443 <= grp_fu_692_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln54_8_reg_3304 <= grp_fu_692_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        select_ln54_9_reg_3346 <= grp_fu_685_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln54_reg_3423 <= trunc_ln54_fu_1219_p1;
        trunc_ln54_reg_3423_pp0_iter1_reg <= trunc_ln54_reg_3423;
    end
end
always @ (*) begin
    if (((tmp_46_reg_3067 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_46_reg_3067_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_154;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_677_p0 = llike_load_reg_3220;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_677_p0 = llike_15_load_reg_3173;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_677_p0 = llike_14_load_reg_3168;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_677_p0 = llike_13_load_reg_3163;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_677_p0 = llike_12_load_reg_3158;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_677_p0 = llike_11_load_reg_3153;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_677_p0 = llike_10_load_reg_3148;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_677_p0 = llike_9_load_reg_3143;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_677_p0 = llike_8_load_reg_3138;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_677_p0 = llike_7_load_reg_3133;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_677_p0 = llike_6_load_reg_3128;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_677_p0 = llike_5_load_reg_3123;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_677_p0 = llike_4_load_reg_3112;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_677_p0 = llike_3_load_reg_3091;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_677_p0 = llike_2_load_reg_3076;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_677_p0 = llike_1_load_reg_3071;
        end else begin
            grp_fu_677_p0 = 'bx;
        end
    end else begin
        grp_fu_677_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_677_p1 = bitcast_ln54_15_fu_1634_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_677_p1 = bitcast_ln54_14_fu_1546_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_677_p1 = bitcast_ln54_13_fu_1535_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_677_p1 = bitcast_ln54_12_fu_1448_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_677_p1 = bitcast_ln54_11_fu_1436_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_677_p1 = bitcast_ln54_10_fu_1348_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_677_p1 = bitcast_ln54_9_fu_1337_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_677_p1 = bitcast_ln54_8_fu_1250_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_677_p1 = bitcast_ln54_7_fu_1241_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_677_p1 = bitcast_ln54_6_fu_1214_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_677_p1 = bitcast_ln54_5_fu_1173_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_677_p1 = bitcast_ln54_4_fu_1122_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_677_p1 = bitcast_ln54_3_fu_1071_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_677_p1 = bitcast_ln54_2_fu_1020_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_677_p1 = bitcast_ln54_1_fu_969_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_677_p1 = bitcast_ln54_fu_918_p1;
        end else begin
            grp_fu_677_p1 = 'bx;
        end
    end else begin
        grp_fu_677_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_681_p0 = p_14_reg_3610;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_681_p0 = p_12_reg_3585;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_681_p0 = p_10_reg_3565;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_681_p0 = p_8_reg_3535;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_681_p0 = reg_735;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_681_p0 = reg_730;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_681_p0 = reg_725;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_681_p0 = reg_720;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_681_p0 = reg_715;
    end else begin
        grp_fu_681_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_681_p1 = min_p_31_fu_2750_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_681_p1 = min_p_29_fu_2661_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_681_p1 = min_p_27_fu_2572_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_681_p1 = min_p_25_fu_2473_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_681_p1 = min_p_23_fu_2365_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_681_p1 = min_p_21_fu_2266_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_681_p1 = min_p_19_fu_2168_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_681_p1 = min_p_17_fu_2069_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_681_p1 = min_p_15_fu_1970_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_681_p1 = min_p_13_fu_1870_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_681_p1 = min_p_11_fu_1771_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_681_p1 = min_p_9_fu_1671_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_681_p1 = min_p_7_fu_1539_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_681_p1 = min_p_5_fu_1441_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_681_p1 = min_p_3_fu_1341_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_681_p1 = min_p_fu_146;
    end else begin
        grp_fu_681_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
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
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
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
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
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
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
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
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (tmp_46_reg_3067_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln54_13_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln54_11_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln54_9_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln54_7_fu_1037_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_935_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_817_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_0_address1_local = zext_ln54_15_fu_1235_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln54_14_fu_1208_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln54_12_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln54_10_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_8_fu_1055_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1004_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_953_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_861_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address0_local = zext_ln54_13_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln54_11_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln54_9_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln54_7_fu_1037_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_935_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_817_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_1_address1_local = zext_ln54_15_fu_1235_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln54_14_fu_1208_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln54_12_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln54_10_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_8_fu_1055_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1004_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_953_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_861_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
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
assign add_ln53_10_fu_1112_p2 = (s_reg_2946 + 6'd11);
assign add_ln53_11_fu_1117_p2 = (s_reg_2946 + 6'd12);
assign add_ln53_12_fu_1163_p2 = (s_reg_2946 + 6'd13);
assign add_ln53_13_fu_1168_p2 = (s_reg_2946 + 6'd14);
assign add_ln53_14_fu_835_p2 = (zext_ln21_fu_762_p1 + 7'd15);
assign add_ln53_15_fu_2371_p2 = (s_reg_2946 + 6'd16);
assign add_ln53_1_fu_829_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_885_p2 = (s_reg_2946 + 6'd3);
assign add_ln53_3_fu_890_p2 = (s_reg_2946 + 6'd4);
assign add_ln53_4_fu_959_p2 = (s_reg_2946 + 6'd5);
assign add_ln53_5_fu_964_p2 = (s_reg_2946 + 6'd6);
assign add_ln53_6_fu_1010_p2 = (s_reg_2946 + 6'd7);
assign add_ln53_7_fu_1015_p2 = (s_reg_2946 + 6'd8);
assign add_ln53_8_fu_1061_p2 = (s_reg_2946 + 6'd9);
assign add_ln53_9_fu_1066_p2 = (s_reg_2946 + 6'd10);
assign add_ln53_fu_823_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1101_p2 = (shl_ln54_s_fu_1094_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_11_fu_1134_p2 = (shl_ln54_10_fu_1127_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_12_fu_1152_p2 = (shl_ln54_11_fu_1145_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_13_fu_1185_p2 = (shl_ln54_12_fu_1178_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_14_fu_1203_p2 = (shl_ln54_13_fu_1196_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_15_fu_1230_p2 = (shl_ln54_14_fu_1222_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_16_fu_908_p2 = (zext_ln52_3 + zext_ln54_17_fu_904_p1);
assign add_ln54_1_fu_856_p2 = (shl_ln54_1_fu_849_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_2_fu_874_p2 = (shl_ln54_2_fu_867_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_3_fu_930_p2 = (shl_ln54_3_fu_923_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_4_fu_948_p2 = (shl_ln54_4_fu_941_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_5_fu_981_p2 = (shl_ln54_5_fu_974_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_6_fu_999_p2 = (shl_ln54_6_fu_992_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_7_fu_1032_p2 = (shl_ln54_7_fu_1025_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_8_fu_1050_p2 = (shl_ln54_8_fu_1043_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_9_fu_1083_p2 = (shl_ln54_9_fu_1076_p3 + zext_ln52_2_cast_reg_2927);
assign add_ln54_fu_811_p2 = (shl_ln2_fu_803_p3 + zext_ln52_2_cast_fu_740_p1);
assign and_ln55_10_fu_1849_p2 = (or_ln55_11_fu_1843_p2 & or_ln55_10_fu_1825_p2);
assign and_ln55_11_fu_1855_p2 = (grp_fu_1338_p_dout0 & and_ln55_10_fu_1849_p2);
assign and_ln55_12_fu_1958_p2 = (or_ln55_13_fu_1952_p2 & or_ln55_12_fu_1934_p2);
assign and_ln55_13_fu_1964_p2 = (grp_fu_1338_p_dout0 & and_ln55_12_fu_1958_p2);
assign and_ln55_14_fu_2048_p2 = (or_ln55_15_fu_2042_p2 & or_ln55_14_fu_2024_p2);
assign and_ln55_15_fu_2054_p2 = (grp_fu_1338_p_dout0 & and_ln55_14_fu_2048_p2);
assign and_ln55_16_fu_2156_p2 = (or_ln55_17_fu_2150_p2 & or_ln55_16_fu_2132_p2);
assign and_ln55_17_fu_2162_p2 = (grp_fu_1338_p_dout0 & and_ln55_16_fu_2156_p2);
assign and_ln55_18_fu_2245_p2 = (or_ln55_19_fu_2239_p2 & or_ln55_18_fu_2221_p2);
assign and_ln55_19_fu_2251_p2 = (grp_fu_1338_p_dout0 & and_ln55_18_fu_2245_p2);
assign and_ln55_1_fu_1331_p2 = (or_ln55_1_fu_1319_p2 & and_ln55_fu_1325_p2);
assign and_ln55_20_fu_2353_p2 = (or_ln55_21_fu_2347_p2 & or_ln55_20_fu_2329_p2);
assign and_ln55_21_fu_2359_p2 = (grp_fu_1338_p_dout0 & and_ln55_20_fu_2353_p2);
assign and_ln55_22_fu_2452_p2 = (or_ln55_23_fu_2446_p2 & or_ln55_22_fu_2428_p2);
assign and_ln55_23_fu_2458_p2 = (grp_fu_1338_p_dout0 & and_ln55_22_fu_2452_p2);
assign and_ln55_24_fu_2560_p2 = (or_ln55_25_fu_2554_p2 & or_ln55_24_fu_2536_p2);
assign and_ln55_25_fu_2566_p2 = (grp_fu_1338_p_dout0 & and_ln55_24_fu_2560_p2);
assign and_ln55_26_fu_2649_p2 = (or_ln55_27_fu_2643_p2 & or_ln55_26_fu_2625_p2);
assign and_ln55_27_fu_2655_p2 = (grp_fu_1338_p_dout0 & and_ln55_26_fu_2649_p2);
assign and_ln55_28_fu_2738_p2 = (or_ln55_29_fu_2732_p2 & or_ln55_28_fu_2714_p2);
assign and_ln55_29_fu_2744_p2 = (grp_fu_1338_p_dout0 & and_ln55_28_fu_2738_p2);
assign and_ln55_2_fu_1424_p2 = (or_ln55_3_fu_1418_p2 & or_ln55_2_fu_1400_p2);
assign and_ln55_30_fu_2857_p2 = (or_ln55_31_fu_2851_p2 & or_ln55_30_fu_2833_p2);
assign and_ln55_31_fu_2863_p2 = (tmp_49_reg_3748 & and_ln55_30_fu_2857_p2);
assign and_ln55_3_fu_1430_p2 = (grp_fu_1338_p_dout0 & and_ln55_2_fu_1424_p2);
assign and_ln55_4_fu_1523_p2 = (or_ln55_5_fu_1517_p2 & or_ln55_4_fu_1499_p2);
assign and_ln55_5_fu_1529_p2 = (grp_fu_1338_p_dout0 & and_ln55_4_fu_1523_p2);
assign and_ln55_6_fu_1622_p2 = (or_ln55_7_fu_1616_p2 & or_ln55_6_fu_1598_p2);
assign and_ln55_7_fu_1628_p2 = (grp_fu_1338_p_dout0 & and_ln55_6_fu_1622_p2);
assign and_ln55_8_fu_1759_p2 = (or_ln55_9_fu_1753_p2 & or_ln55_8_fu_1735_p2);
assign and_ln55_9_fu_1765_p2 = (grp_fu_1338_p_dout0 & and_ln55_8_fu_1759_p2);
assign and_ln55_fu_1325_p2 = (or_ln55_fu_1301_p2 & grp_fu_1338_p_dout0);
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
assign bitcast_ln54_10_fu_1348_p1 = reg_703;
assign bitcast_ln54_11_fu_1436_p1 = reg_699;
assign bitcast_ln54_12_fu_1448_p1 = select_ln54_12_reg_3388;
assign bitcast_ln54_13_fu_1535_p1 = select_ln54_13_reg_3418;
assign bitcast_ln54_14_fu_1546_p1 = reg_711;
assign bitcast_ln54_15_fu_1634_p1 = select_ln54_15_reg_3443;
assign bitcast_ln54_1_fu_969_p1 = reg_703;
assign bitcast_ln54_2_fu_1020_p1 = reg_699;
assign bitcast_ln54_3_fu_1071_p1 = reg_707;
assign bitcast_ln54_4_fu_1122_p1 = reg_703;
assign bitcast_ln54_5_fu_1173_p1 = reg_699;
assign bitcast_ln54_6_fu_1214_p1 = reg_711;
assign bitcast_ln54_7_fu_1241_p1 = reg_707;
assign bitcast_ln54_8_fu_1250_p1 = select_ln54_8_reg_3304;
assign bitcast_ln54_9_fu_1337_p1 = select_ln54_9_reg_3346;
assign bitcast_ln54_fu_918_p1 = reg_699;
assign bitcast_ln55_10_fu_1778_p1 = reg_720;
assign bitcast_ln55_11_fu_1796_p1 = min_p_11_reg_3572;
assign bitcast_ln55_12_fu_1887_p1 = reg_735;
assign bitcast_ln55_13_fu_1905_p1 = min_p_13_reg_3592;
assign bitcast_ln55_14_fu_1977_p1 = reg_725;
assign bitcast_ln55_15_fu_1995_p1 = min_p_15_reg_3617;
assign bitcast_ln55_16_fu_2086_p1 = p_8_reg_3535;
assign bitcast_ln55_17_fu_2103_p1 = min_p_17_reg_3630;
assign bitcast_ln55_18_fu_2174_p1 = reg_715;
assign bitcast_ln55_19_fu_2192_p1 = min_p_19_reg_3648;
assign bitcast_ln55_1_fu_1272_p1 = min_p_1_reg_3448;
assign bitcast_ln55_20_fu_2283_p1 = p_10_reg_3565;
assign bitcast_ln55_21_fu_2300_p1 = min_p_21_reg_3661;
assign bitcast_ln55_22_fu_2381_p1 = reg_730;
assign bitcast_ln55_23_fu_2399_p1 = min_p_23_reg_3679;
assign bitcast_ln55_24_fu_2490_p1 = p_12_reg_3585;
assign bitcast_ln55_25_fu_2507_p1 = min_p_25_reg_3692;
assign bitcast_ln55_26_fu_2578_p1 = reg_720;
assign bitcast_ln55_27_fu_2596_p1 = min_p_27_reg_3710;
assign bitcast_ln55_28_fu_2668_p1 = p_14_reg_3610;
assign bitcast_ln55_29_fu_2685_p1 = min_p_29_reg_3723;
assign bitcast_ln55_2_fu_1353_p1 = reg_720;
assign bitcast_ln55_30_fu_2786_p1 = reg_735;
assign bitcast_ln55_31_fu_2804_p1 = min_p_31_reg_3736;
assign bitcast_ln55_3_fu_1371_p1 = min_p_3_reg_3471;
assign bitcast_ln55_4_fu_1452_p1 = reg_725;
assign bitcast_ln55_5_fu_1470_p1 = min_p_5_reg_3494;
assign bitcast_ln55_6_fu_1551_p1 = reg_715;
assign bitcast_ln55_7_fu_1569_p1 = min_p_7_reg_3517;
assign bitcast_ln55_8_fu_1688_p1 = reg_730;
assign bitcast_ln55_9_fu_1706_p1 = min_p_9_reg_3547;
assign bitcast_ln55_fu_1254_p1 = reg_715;
assign grp_fu_1338_p_ce = 1'b1;
assign grp_fu_1338_p_din0 = grp_fu_681_p0;
assign grp_fu_1338_p_din1 = grp_fu_681_p1;
assign grp_fu_1338_p_opcode = 5'd4;
assign grp_fu_685_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_692_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_717_p_ce = 1'b1;
assign grp_fu_717_p_din0 = grp_fu_677_p0;
assign grp_fu_717_p_din1 = grp_fu_677_p1;
assign grp_fu_717_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1505_p2 = ((tmp_8_fu_1473_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1511_p2 = ((trunc_ln55_5_fu_1483_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1586_p2 = ((tmp_10_fu_1555_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1592_p2 = ((trunc_ln55_6_fu_1565_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1604_p2 = ((tmp_11_fu_1572_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1610_p2 = ((trunc_ln55_7_fu_1582_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1723_p2 = ((tmp_13_fu_1692_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1729_p2 = ((trunc_ln55_8_fu_1702_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1741_p2 = ((tmp_14_fu_1709_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1747_p2 = ((trunc_ln55_9_fu_1719_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1295_p2 = ((trunc_ln55_fu_1268_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1813_p2 = ((tmp_16_fu_1782_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1819_p2 = ((trunc_ln55_10_fu_1792_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1831_p2 = ((tmp_17_fu_1799_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1837_p2 = ((trunc_ln55_11_fu_1809_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1922_p2 = ((tmp_19_fu_1891_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1928_p2 = ((trunc_ln55_12_fu_1901_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1940_p2 = ((tmp_20_fu_1908_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1946_p2 = ((trunc_ln55_13_fu_1918_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2012_p2 = ((tmp_22_fu_1981_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2018_p2 = ((trunc_ln55_14_fu_1991_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1307_p2 = ((tmp_2_fu_1275_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2030_p2 = ((tmp_23_fu_1998_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2036_p2 = ((trunc_ln55_15_fu_2008_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_2120_p2 = ((tmp_25_fu_2089_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_2126_p2 = ((trunc_ln55_16_fu_2099_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_2138_p2 = ((tmp_26_fu_2106_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_2144_p2 = ((trunc_ln55_17_fu_2116_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_2209_p2 = ((tmp_28_fu_2178_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_2215_p2 = ((trunc_ln55_18_fu_2188_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_2227_p2 = ((tmp_29_fu_2195_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_2233_p2 = ((trunc_ln55_19_fu_2205_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1313_p2 = ((trunc_ln55_1_fu_1285_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_2317_p2 = ((tmp_31_fu_2286_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_2323_p2 = ((trunc_ln55_20_fu_2296_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_2335_p2 = ((tmp_32_fu_2303_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_2341_p2 = ((trunc_ln55_21_fu_2313_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_2416_p2 = ((tmp_34_fu_2385_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_2422_p2 = ((trunc_ln55_22_fu_2395_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_2434_p2 = ((tmp_35_fu_2402_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_2440_p2 = ((trunc_ln55_23_fu_2412_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_2524_p2 = ((tmp_37_fu_2493_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_2530_p2 = ((trunc_ln55_24_fu_2503_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1388_p2 = ((tmp_4_fu_1357_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_2542_p2 = ((tmp_38_fu_2510_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_2548_p2 = ((trunc_ln55_25_fu_2520_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_2613_p2 = ((tmp_40_fu_2582_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_2619_p2 = ((trunc_ln55_26_fu_2592_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_2631_p2 = ((tmp_41_fu_2599_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_2637_p2 = ((trunc_ln55_27_fu_2609_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_2702_p2 = ((tmp_43_fu_2671_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_2708_p2 = ((trunc_ln55_28_fu_2681_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_2720_p2 = ((tmp_44_fu_2688_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_2726_p2 = ((trunc_ln55_29_fu_2698_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1394_p2 = ((trunc_ln55_2_fu_1367_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_2821_p2 = ((tmp_47_fu_2790_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_2827_p2 = ((trunc_ln55_30_fu_2800_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_2839_p2 = ((tmp_48_fu_2807_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_2845_p2 = ((trunc_ln55_31_fu_2817_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1406_p2 = ((tmp_5_fu_1374_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1412_p2 = ((trunc_ln55_3_fu_1384_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1487_p2 = ((tmp_7_fu_1456_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1493_p2 = ((trunc_ln55_4_fu_1466_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1289_p2 = ((tmp_1_fu_1258_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = zext_ln54_16_fu_784_p1;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = zext_ln54_16_fu_784_p1;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = zext_ln54_16_fu_784_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = zext_ln54_16_fu_784_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = zext_ln54_16_fu_784_p1;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = zext_ln54_16_fu_784_p1;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = zext_ln54_16_fu_784_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_16_fu_784_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_16_fu_784_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln54_16_fu_784_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln54_16_fu_784_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln54_16_fu_784_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln54_16_fu_784_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = zext_ln54_16_fu_784_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = zext_ln54_16_fu_784_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = zext_ln54_18_fu_913_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_766_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_3_fu_895_p4 = {{add_ln53_14_reg_3061[6:4]}};
assign min_p_11_fu_1771_p3 = ((and_ln55_9_reg_3559[0:0] == 1'b1) ? reg_730 : min_p_9_reg_3547);
assign min_p_13_fu_1870_p3 = ((and_ln55_11_reg_3579[0:0] == 1'b1) ? reg_720 : min_p_11_reg_3572);
assign min_p_15_fu_1970_p3 = ((and_ln55_13_reg_3604[0:0] == 1'b1) ? reg_735 : min_p_13_reg_3592);
assign min_p_17_fu_2069_p3 = ((and_ln55_15_reg_3624[0:0] == 1'b1) ? reg_725 : min_p_15_reg_3617);
assign min_p_19_fu_2168_p3 = ((and_ln55_17_reg_3642[0:0] == 1'b1) ? p_8_reg_3535 : min_p_17_reg_3630);
assign min_p_21_fu_2266_p3 = ((and_ln55_19_reg_3655[0:0] == 1'b1) ? reg_715 : min_p_19_reg_3648);
assign min_p_23_fu_2365_p3 = ((and_ln55_21_reg_3673[0:0] == 1'b1) ? p_10_reg_3565 : min_p_21_reg_3661);
assign min_p_25_fu_2473_p3 = ((and_ln55_23_reg_3686[0:0] == 1'b1) ? reg_730 : min_p_23_reg_3679);
assign min_p_27_fu_2572_p3 = ((and_ln55_25_reg_3704[0:0] == 1'b1) ? p_12_reg_3585 : min_p_25_reg_3692);
assign min_p_29_fu_2661_p3 = ((and_ln55_27_reg_3717[0:0] == 1'b1) ? reg_720 : min_p_27_reg_3710);
assign min_p_31_fu_2750_p3 = ((and_ln55_29_reg_3730[0:0] == 1'b1) ? p_14_reg_3610 : min_p_29_reg_3723);
assign min_p_33_fu_2868_p3 = ((and_ln55_31_fu_2863_p2[0:0] == 1'b1) ? reg_735 : min_p_31_reg_3736);
assign min_p_3_fu_1341_p3 = ((and_ln55_1_reg_3460[0:0] == 1'b1) ? reg_715 : min_p_1_reg_3448);
assign min_p_5_fu_1441_p3 = ((and_ln55_3_reg_3483[0:0] == 1'b1) ? reg_720 : min_p_3_reg_3471);
assign min_p_7_fu_1539_p3 = ((and_ln55_5_reg_3506[0:0] == 1'b1) ? reg_725 : min_p_5_reg_3494);
assign min_p_9_fu_1671_p3 = ((and_ln55_7_reg_3529[0:0] == 1'b1) ? reg_715 : min_p_7_reg_3517);
assign min_s_10_fu_2063_p3 = ((and_ln55_13_reg_3604[0:0] == 1'b1) ? zext_ln55_6_fu_2060_p1 : min_s_9_reg_3599);
assign min_s_11_fu_2079_p3 = ((and_ln55_15_reg_3624[0:0] == 1'b1) ? zext_ln55_7_fu_2076_p1 : min_s_10_fu_2063_p3);
assign min_s_12_fu_2260_p3 = ((and_ln55_17_reg_3642[0:0] == 1'b1) ? zext_ln55_8_fu_2257_p1 : min_s_11_reg_3637);
assign min_s_13_fu_2276_p3 = ((and_ln55_19_reg_3655[0:0] == 1'b1) ? zext_ln55_9_fu_2273_p1 : min_s_12_fu_2260_p3);
assign min_s_14_fu_2467_p3 = ((and_ln55_21_reg_3673[0:0] == 1'b1) ? zext_ln55_10_fu_2464_p1 : min_s_13_reg_3668);
assign min_s_15_fu_2483_p3 = ((and_ln55_23_reg_3686[0:0] == 1'b1) ? zext_ln55_11_fu_2480_p1 : min_s_14_fu_2467_p3);
assign min_s_16_fu_2759_p3 = ((and_ln55_25_reg_3704[0:0] == 1'b1) ? zext_ln55_12_fu_2756_p1 : min_s_15_reg_3699);
assign min_s_17_fu_2768_p3 = ((and_ln55_27_reg_3717[0:0] == 1'b1) ? zext_ln55_13_fu_2765_p1 : min_s_16_fu_2759_p3);
assign min_s_18_fu_2778_p3 = ((and_ln55_29_reg_3730[0:0] == 1'b1) ? zext_ln55_14_fu_2775_p1 : min_s_17_fu_2768_p3);
assign min_s_19_fu_2878_p3 = ((and_ln55_31_fu_2863_p2[0:0] == 1'b1) ? zext_ln55_15_fu_2875_p1 : min_s_18_reg_3743);
assign min_s_34_out = ((and_ln55_29_reg_3730[0:0] == 1'b1) ? zext_ln55_14_fu_2775_p1 : min_s_17_fu_2768_p3);
assign min_s_4_fu_1644_p3 = ((and_ln55_1_reg_3460[0:0] == 1'b1) ? zext_ln55_fu_1641_p1 : min_s_fu_150);
assign min_s_5_fu_1654_p3 = ((and_ln55_3_reg_3483[0:0] == 1'b1) ? zext_ln55_1_fu_1651_p1 : min_s_4_fu_1644_p3);
assign min_s_6_fu_1664_p3 = ((and_ln55_5_reg_3506[0:0] == 1'b1) ? zext_ln55_2_fu_1661_p1 : min_s_5_fu_1654_p3);
assign min_s_7_fu_1681_p3 = ((and_ln55_7_reg_3529[0:0] == 1'b1) ? zext_ln55_3_fu_1678_p1 : min_s_6_fu_1664_p3);
assign min_s_8_fu_1864_p3 = ((and_ln55_9_reg_3559[0:0] == 1'b1) ? zext_ln55_4_fu_1861_p1 : min_s_7_reg_3554);
assign min_s_9_fu_1880_p3 = ((and_ln55_11_reg_3579[0:0] == 1'b1) ? zext_ln55_5_fu_1877_p1 : min_s_8_fu_1864_p3);
assign or_ln55_10_fu_1825_p2 = (icmp_ln55_21_fu_1819_p2 | icmp_ln55_20_fu_1813_p2);
assign or_ln55_11_fu_1843_p2 = (icmp_ln55_23_fu_1837_p2 | icmp_ln55_22_fu_1831_p2);
assign or_ln55_12_fu_1934_p2 = (icmp_ln55_25_fu_1928_p2 | icmp_ln55_24_fu_1922_p2);
assign or_ln55_13_fu_1952_p2 = (icmp_ln55_27_fu_1946_p2 | icmp_ln55_26_fu_1940_p2);
assign or_ln55_14_fu_2024_p2 = (icmp_ln55_29_fu_2018_p2 | icmp_ln55_28_fu_2012_p2);
assign or_ln55_15_fu_2042_p2 = (icmp_ln55_31_fu_2036_p2 | icmp_ln55_30_fu_2030_p2);
assign or_ln55_16_fu_2132_p2 = (icmp_ln55_33_fu_2126_p2 | icmp_ln55_32_fu_2120_p2);
assign or_ln55_17_fu_2150_p2 = (icmp_ln55_35_fu_2144_p2 | icmp_ln55_34_fu_2138_p2);
assign or_ln55_18_fu_2221_p2 = (icmp_ln55_37_fu_2215_p2 | icmp_ln55_36_fu_2209_p2);
assign or_ln55_19_fu_2239_p2 = (icmp_ln55_39_fu_2233_p2 | icmp_ln55_38_fu_2227_p2);
assign or_ln55_1_fu_1319_p2 = (icmp_ln55_3_fu_1313_p2 | icmp_ln55_2_fu_1307_p2);
assign or_ln55_20_fu_2329_p2 = (icmp_ln55_41_fu_2323_p2 | icmp_ln55_40_fu_2317_p2);
assign or_ln55_21_fu_2347_p2 = (icmp_ln55_43_fu_2341_p2 | icmp_ln55_42_fu_2335_p2);
assign or_ln55_22_fu_2428_p2 = (icmp_ln55_45_fu_2422_p2 | icmp_ln55_44_fu_2416_p2);
assign or_ln55_23_fu_2446_p2 = (icmp_ln55_47_fu_2440_p2 | icmp_ln55_46_fu_2434_p2);
assign or_ln55_24_fu_2536_p2 = (icmp_ln55_49_fu_2530_p2 | icmp_ln55_48_fu_2524_p2);
assign or_ln55_25_fu_2554_p2 = (icmp_ln55_51_fu_2548_p2 | icmp_ln55_50_fu_2542_p2);
assign or_ln55_26_fu_2625_p2 = (icmp_ln55_53_fu_2619_p2 | icmp_ln55_52_fu_2613_p2);
assign or_ln55_27_fu_2643_p2 = (icmp_ln55_55_fu_2637_p2 | icmp_ln55_54_fu_2631_p2);
assign or_ln55_28_fu_2714_p2 = (icmp_ln55_57_fu_2708_p2 | icmp_ln55_56_fu_2702_p2);
assign or_ln55_29_fu_2732_p2 = (icmp_ln55_59_fu_2726_p2 | icmp_ln55_58_fu_2720_p2);
assign or_ln55_2_fu_1400_p2 = (icmp_ln55_5_fu_1394_p2 | icmp_ln55_4_fu_1388_p2);
assign or_ln55_30_fu_2833_p2 = (icmp_ln55_61_fu_2827_p2 | icmp_ln55_60_fu_2821_p2);
assign or_ln55_31_fu_2851_p2 = (icmp_ln55_63_fu_2845_p2 | icmp_ln55_62_fu_2839_p2);
assign or_ln55_3_fu_1418_p2 = (icmp_ln55_7_fu_1412_p2 | icmp_ln55_6_fu_1406_p2);
assign or_ln55_4_fu_1499_p2 = (icmp_ln55_9_fu_1493_p2 | icmp_ln55_8_fu_1487_p2);
assign or_ln55_5_fu_1517_p2 = (icmp_ln55_11_fu_1511_p2 | icmp_ln55_10_fu_1505_p2);
assign or_ln55_6_fu_1598_p2 = (icmp_ln55_13_fu_1592_p2 | icmp_ln55_12_fu_1586_p2);
assign or_ln55_7_fu_1616_p2 = (icmp_ln55_15_fu_1610_p2 | icmp_ln55_14_fu_1604_p2);
assign or_ln55_8_fu_1735_p2 = (icmp_ln55_17_fu_1729_p2 | icmp_ln55_16_fu_1723_p2);
assign or_ln55_9_fu_1753_p2 = (icmp_ln55_19_fu_1747_p2 | icmp_ln55_18_fu_1741_p2);
assign or_ln55_fu_1301_p2 = (icmp_ln55_fu_1289_p2 | icmp_ln55_1_fu_1295_p2);
assign shl_ln2_fu_803_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_10_fu_1127_p3 = {{add_ln53_10_reg_3329}, {5'd0}};
assign shl_ln54_11_fu_1145_p3 = {{add_ln53_11_reg_3335}, {5'd0}};
assign shl_ln54_12_fu_1178_p3 = {{add_ln53_12_reg_3371}, {5'd0}};
assign shl_ln54_13_fu_1196_p3 = {{add_ln53_13_reg_3377}, {5'd0}};
assign shl_ln54_14_fu_1222_p3 = {{trunc_ln54_fu_1219_p1}, {5'd0}};
assign shl_ln54_1_fu_849_p3 = {{add_ln53_reg_3049}, {5'd0}};
assign shl_ln54_2_fu_867_p3 = {{add_ln53_1_reg_3055}, {5'd0}};
assign shl_ln54_3_fu_923_p3 = {{add_ln53_2_reg_3106}, {5'd0}};
assign shl_ln54_4_fu_941_p3 = {{add_ln53_3_reg_3117}, {5'd0}};
assign shl_ln54_5_fu_974_p3 = {{add_ln53_4_reg_3208}, {5'd0}};
assign shl_ln54_6_fu_992_p3 = {{add_ln53_5_reg_3214}, {5'd0}};
assign shl_ln54_7_fu_1025_p3 = {{add_ln53_6_reg_3250}, {5'd0}};
assign shl_ln54_8_fu_1043_p3 = {{add_ln53_7_reg_3256}, {5'd0}};
assign shl_ln54_9_fu_1076_p3 = {{add_ln53_8_reg_3287}, {5'd0}};
assign shl_ln54_s_fu_1094_p3 = {{add_ln53_9_reg_3293}, {5'd0}};
assign tmp_10_fu_1555_p4 = {{bitcast_ln55_6_fu_1551_p1[62:52]}};
assign tmp_11_fu_1572_p4 = {{bitcast_ln55_7_fu_1569_p1[62:52]}};
assign tmp_13_fu_1692_p4 = {{bitcast_ln55_8_fu_1688_p1[62:52]}};
assign tmp_14_fu_1709_p4 = {{bitcast_ln55_9_fu_1706_p1[62:52]}};
assign tmp_16_fu_1782_p4 = {{bitcast_ln55_10_fu_1778_p1[62:52]}};
assign tmp_17_fu_1799_p4 = {{bitcast_ln55_11_fu_1796_p1[62:52]}};
assign tmp_19_fu_1891_p4 = {{bitcast_ln55_12_fu_1887_p1[62:52]}};
assign tmp_1_fu_1258_p4 = {{bitcast_ln55_fu_1254_p1[62:52]}};
assign tmp_20_fu_1908_p4 = {{bitcast_ln55_13_fu_1905_p1[62:52]}};
assign tmp_22_fu_1981_p4 = {{bitcast_ln55_14_fu_1977_p1[62:52]}};
assign tmp_23_fu_1998_p4 = {{bitcast_ln55_15_fu_1995_p1[62:52]}};
assign tmp_25_fu_2089_p4 = {{bitcast_ln55_16_fu_2086_p1[62:52]}};
assign tmp_26_fu_2106_p4 = {{bitcast_ln55_17_fu_2103_p1[62:52]}};
assign tmp_28_fu_2178_p4 = {{bitcast_ln55_18_fu_2174_p1[62:52]}};
assign tmp_29_fu_2195_p4 = {{bitcast_ln55_19_fu_2192_p1[62:52]}};
assign tmp_2_fu_1275_p4 = {{bitcast_ln55_1_fu_1272_p1[62:52]}};
assign tmp_31_fu_2286_p4 = {{bitcast_ln55_20_fu_2283_p1[62:52]}};
assign tmp_32_fu_2303_p4 = {{bitcast_ln55_21_fu_2300_p1[62:52]}};
assign tmp_34_fu_2385_p4 = {{bitcast_ln55_22_fu_2381_p1[62:52]}};
assign tmp_35_fu_2402_p4 = {{bitcast_ln55_23_fu_2399_p1[62:52]}};
assign tmp_37_fu_2493_p4 = {{bitcast_ln55_24_fu_2490_p1[62:52]}};
assign tmp_38_fu_2510_p4 = {{bitcast_ln55_25_fu_2507_p1[62:52]}};
assign tmp_40_fu_2582_p4 = {{bitcast_ln55_26_fu_2578_p1[62:52]}};
assign tmp_41_fu_2599_p4 = {{bitcast_ln55_27_fu_2596_p1[62:52]}};
assign tmp_43_fu_2671_p4 = {{bitcast_ln55_28_fu_2668_p1[62:52]}};
assign tmp_44_fu_2688_p4 = {{bitcast_ln55_29_fu_2685_p1[62:52]}};
assign tmp_47_fu_2790_p4 = {{bitcast_ln55_30_fu_2786_p1[62:52]}};
assign tmp_48_fu_2807_p4 = {{bitcast_ln55_31_fu_2804_p1[62:52]}};
assign tmp_4_fu_1357_p4 = {{bitcast_ln55_2_fu_1353_p1[62:52]}};
assign tmp_5_fu_1374_p4 = {{bitcast_ln55_3_fu_1371_p1[62:52]}};
assign tmp_7_fu_1456_p4 = {{bitcast_ln55_4_fu_1452_p1[62:52]}};
assign tmp_8_fu_1473_p4 = {{bitcast_ln55_5_fu_1470_p1[62:52]}};
assign tmp_s_fu_776_p3 = {{t_1}, {lshr_ln8_2_fu_766_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_1219_p1 = add_ln53_14_reg_3061[5:0];
assign trunc_ln55_10_fu_1792_p1 = bitcast_ln55_10_fu_1778_p1[51:0];
assign trunc_ln55_11_fu_1809_p1 = bitcast_ln55_11_fu_1796_p1[51:0];
assign trunc_ln55_12_fu_1901_p1 = bitcast_ln55_12_fu_1887_p1[51:0];
assign trunc_ln55_13_fu_1918_p1 = bitcast_ln55_13_fu_1905_p1[51:0];
assign trunc_ln55_14_fu_1991_p1 = bitcast_ln55_14_fu_1977_p1[51:0];
assign trunc_ln55_15_fu_2008_p1 = bitcast_ln55_15_fu_1995_p1[51:0];
assign trunc_ln55_16_fu_2099_p1 = bitcast_ln55_16_fu_2086_p1[51:0];
assign trunc_ln55_17_fu_2116_p1 = bitcast_ln55_17_fu_2103_p1[51:0];
assign trunc_ln55_18_fu_2188_p1 = bitcast_ln55_18_fu_2174_p1[51:0];
assign trunc_ln55_19_fu_2205_p1 = bitcast_ln55_19_fu_2192_p1[51:0];
assign trunc_ln55_1_fu_1285_p1 = bitcast_ln55_1_fu_1272_p1[51:0];
assign trunc_ln55_20_fu_2296_p1 = bitcast_ln55_20_fu_2283_p1[51:0];
assign trunc_ln55_21_fu_2313_p1 = bitcast_ln55_21_fu_2300_p1[51:0];
assign trunc_ln55_22_fu_2395_p1 = bitcast_ln55_22_fu_2381_p1[51:0];
assign trunc_ln55_23_fu_2412_p1 = bitcast_ln55_23_fu_2399_p1[51:0];
assign trunc_ln55_24_fu_2503_p1 = bitcast_ln55_24_fu_2490_p1[51:0];
assign trunc_ln55_25_fu_2520_p1 = bitcast_ln55_25_fu_2507_p1[51:0];
assign trunc_ln55_26_fu_2592_p1 = bitcast_ln55_26_fu_2578_p1[51:0];
assign trunc_ln55_27_fu_2609_p1 = bitcast_ln55_27_fu_2596_p1[51:0];
assign trunc_ln55_28_fu_2681_p1 = bitcast_ln55_28_fu_2668_p1[51:0];
assign trunc_ln55_29_fu_2698_p1 = bitcast_ln55_29_fu_2685_p1[51:0];
assign trunc_ln55_2_fu_1367_p1 = bitcast_ln55_2_fu_1353_p1[51:0];
assign trunc_ln55_30_fu_2800_p1 = bitcast_ln55_30_fu_2786_p1[51:0];
assign trunc_ln55_31_fu_2817_p1 = bitcast_ln55_31_fu_2804_p1[51:0];
assign trunc_ln55_3_fu_1384_p1 = bitcast_ln55_3_fu_1371_p1[51:0];
assign trunc_ln55_4_fu_1466_p1 = bitcast_ln55_4_fu_1452_p1[51:0];
assign trunc_ln55_5_fu_1483_p1 = bitcast_ln55_5_fu_1470_p1[51:0];
assign trunc_ln55_6_fu_1565_p1 = bitcast_ln55_6_fu_1551_p1[51:0];
assign trunc_ln55_7_fu_1582_p1 = bitcast_ln55_7_fu_1569_p1[51:0];
assign trunc_ln55_8_fu_1702_p1 = bitcast_ln55_8_fu_1688_p1[51:0];
assign trunc_ln55_9_fu_1719_p1 = bitcast_ln55_9_fu_1706_p1[51:0];
assign trunc_ln55_fu_1268_p1 = bitcast_ln55_fu_1254_p1[51:0];
assign zext_ln21_fu_762_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_740_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1106_p1 = add_ln54_10_fu_1101_p2;
assign zext_ln54_11_fu_1139_p1 = add_ln54_11_fu_1134_p2;
assign zext_ln54_12_fu_1157_p1 = add_ln54_12_fu_1152_p2;
assign zext_ln54_13_fu_1190_p1 = add_ln54_13_fu_1185_p2;
assign zext_ln54_14_fu_1208_p1 = add_ln54_14_fu_1203_p2;
assign zext_ln54_15_fu_1235_p1 = add_ln54_15_fu_1230_p2;
assign zext_ln54_16_fu_784_p1 = tmp_s_fu_776_p3;
assign zext_ln54_17_fu_904_p1 = lshr_ln9_3_fu_895_p4;
assign zext_ln54_18_fu_913_p1 = add_ln54_16_fu_908_p2;
assign zext_ln54_1_fu_861_p1 = add_ln54_1_fu_856_p2;
assign zext_ln54_2_fu_879_p1 = add_ln54_2_fu_874_p2;
assign zext_ln54_3_fu_935_p1 = add_ln54_3_fu_930_p2;
assign zext_ln54_4_fu_953_p1 = add_ln54_4_fu_948_p2;
assign zext_ln54_5_fu_986_p1 = add_ln54_5_fu_981_p2;
assign zext_ln54_6_fu_1004_p1 = add_ln54_6_fu_999_p2;
assign zext_ln54_7_fu_1037_p1 = add_ln54_7_fu_1032_p2;
assign zext_ln54_8_fu_1055_p1 = add_ln54_8_fu_1050_p2;
assign zext_ln54_9_fu_1088_p1 = add_ln54_9_fu_1083_p2;
assign zext_ln54_fu_817_p1 = add_ln54_fu_811_p2;
assign zext_ln55_10_fu_2464_p1 = add_ln53_9_reg_3293;
assign zext_ln55_11_fu_2480_p1 = add_ln53_10_reg_3329;
assign zext_ln55_12_fu_2756_p1 = add_ln53_11_reg_3335_pp0_iter1_reg;
assign zext_ln55_13_fu_2765_p1 = add_ln53_12_reg_3371_pp0_iter1_reg;
assign zext_ln55_14_fu_2775_p1 = add_ln53_13_reg_3377_pp0_iter1_reg;
assign zext_ln55_15_fu_2875_p1 = trunc_ln54_reg_3423_pp0_iter1_reg;
assign zext_ln55_1_fu_1651_p1 = add_ln53_reg_3049;
assign zext_ln55_2_fu_1661_p1 = add_ln53_1_reg_3055;
assign zext_ln55_3_fu_1678_p1 = add_ln53_2_reg_3106;
assign zext_ln55_4_fu_1861_p1 = add_ln53_3_reg_3117;
assign zext_ln55_5_fu_1877_p1 = add_ln53_4_reg_3208;
assign zext_ln55_6_fu_2060_p1 = add_ln53_5_reg_3214;
assign zext_ln55_7_fu_2076_p1 = add_ln53_6_reg_3250;
assign zext_ln55_8_fu_2257_p1 = add_ln53_7_reg_3256;
assign zext_ln55_9_fu_2273_p1 = add_ln53_8_reg_3287;
assign zext_ln55_fu_1641_p1 = s_reg_2946;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2927[10:7] <= 4'b0000;
end
endmodule 