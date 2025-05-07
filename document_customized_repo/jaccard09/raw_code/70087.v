module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_18,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,empty_10,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_50_out,min_p_50_out_ap_vld,grp_fu_348_p_din0,grp_fu_348_p_din1,grp_fu_348_p_opcode,grp_fu_348_p_dout0,grp_fu_348_p_ce,grp_fu_754_p_din0,grp_fu_754_p_din1,grp_fu_754_p_opcode,grp_fu_754_p_dout0,grp_fu_754_p_ce,grp_fu_758_p_din0,grp_fu_758_p_din1,grp_fu_758_p_opcode,grp_fu_758_p_dout0,grp_fu_758_p_ce); 
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
input  [5:0] empty_10;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [11:0] empty;
output  [63:0] min_p_50_out;
output   min_p_50_out_ap_vld;
output  [63:0] grp_fu_348_p_din0;
output  [63:0] grp_fu_348_p_din1;
output  [1:0] grp_fu_348_p_opcode;
input  [63:0] grp_fu_348_p_dout0;
output   grp_fu_348_p_ce;
output  [63:0] grp_fu_754_p_din0;
output  [63:0] grp_fu_754_p_din1;
output  [1:0] grp_fu_754_p_opcode;
input  [63:0] grp_fu_754_p_dout0;
output   grp_fu_754_p_ce;
output  [63:0] grp_fu_758_p_din0;
output  [63:0] grp_fu_758_p_din1;
output  [4:0] grp_fu_758_p_opcode;
input  [0:0] grp_fu_758_p_dout0;
output   grp_fu_758_p_ce;
reg ap_idle;
reg min_p_50_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_3_reg_2917;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_486;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_490;
reg   [63:0] reg_494;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_500;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_506;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_512;
reg   [63:0] reg_518;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_524;
reg   [63:0] reg_530;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_536;
reg   [63:0] reg_542;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_548;
reg   [63:0] reg_554;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_560;
reg   [63:0] reg_566;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_2817;
wire   [3:0] lshr_ln7_1_fu_589_p4;
reg   [3:0] lshr_ln7_1_reg_2827;
wire   [11:0] shl_ln2_fu_614_p3;
reg   [11:0] shl_ln2_reg_2848;
wire   [5:0] add_ln25_fu_664_p2;
reg   [5:0] add_ln25_reg_2866;
wire   [5:0] add_ln25_1_fu_712_p2;
reg   [5:0] add_ln25_1_reg_2881;
wire   [5:0] add_ln25_2_fu_741_p2;
reg   [5:0] add_ln25_2_reg_2891;
wire   [5:0] add_ln25_3_fu_770_p2;
reg   [5:0] add_ln25_3_reg_2901;
wire   [6:0] add_ln25_9_fu_799_p2;
reg   [6:0] add_ln25_9_reg_2911;
reg   [0:0] tmp_3_reg_2917_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2921;
reg   [63:0] llike_2_load_reg_2926;
reg   [63:0] llike_3_load_reg_2931;
reg   [63:0] llike_load_1_reg_2941;
reg   [63:0] llike_1_load_1_reg_2951;
reg   [63:0] llike_2_load_1_reg_2956;
reg   [63:0] llike_3_load_1_reg_2961;
reg   [63:0] llike_load_reg_2966;
wire   [5:0] add_ln25_4_fu_868_p2;
reg   [5:0] add_ln25_4_reg_2976;
wire   [5:0] add_ln25_5_fu_895_p2;
reg   [5:0] add_ln25_5_reg_2986;
wire   [5:0] add_ln25_6_fu_922_p2;
reg   [5:0] add_ln25_6_reg_2996;
wire   [5:0] add_ln25_7_fu_966_p2;
reg   [5:0] add_ln25_7_reg_3011;
wire   [5:0] add_ln25_8_fu_993_p2;
reg   [5:0] add_ln25_8_reg_3021;
wire   [63:0] bitcast_ln27_fu_1043_p1;
wire   [63:0] bitcast_ln27_1_fu_1048_p1;
reg   [63:0] llike_1_load_2_reg_3056;
reg   [63:0] llike_2_load_2_reg_3061;
reg   [63:0] llike_3_load_2_reg_3066;
reg   [63:0] llike_load_2_reg_3071;
reg   [63:0] llike_1_load_3_reg_3076;
reg   [63:0] llike_2_load_3_reg_3081;
reg   [63:0] llike_3_load_3_reg_3086;
reg   [63:0] llike_load_3_reg_3091;
wire   [63:0] bitcast_ln27_2_fu_1091_p1;
wire   [63:0] bitcast_ln27_3_fu_1096_p1;
wire   [63:0] bitcast_ln27_4_fu_1123_p1;
wire   [63:0] bitcast_ln27_5_fu_1128_p1;
reg   [5:0] tmp_63_reg_3136;
wire   [63:0] bitcast_ln27_6_fu_1186_p1;
wire   [63:0] bitcast_ln27_7_fu_1191_p1;
wire   [63:0] bitcast_ln27_8_fu_1218_p1;
wire   [63:0] bitcast_ln27_9_fu_1223_p1;
wire   [63:0] bitcast_ln27_10_fu_1250_p1;
wire   [63:0] bitcast_ln27_11_fu_1255_p1;
wire   [63:0] bitcast_ln27_12_fu_1286_p1;
wire   [63:0] bitcast_ln27_13_fu_1291_p1;
wire   [63:0] bitcast_ln27_14_fu_1296_p1;
wire   [63:0] bitcast_ln27_15_fu_1301_p1;
reg   [63:0] add52_12_reg_3221;
reg   [63:0] add52_13_reg_3226;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] add52_14_reg_3231;
reg   [63:0] min_p_19_reg_3236;
wire   [0:0] and_ln29_1_fu_1387_p2;
reg   [0:0] and_ln29_1_reg_3243;
wire   [63:0] min_p_21_fu_1393_p3;
reg   [63:0] min_p_21_reg_3248;
wire   [0:0] and_ln29_3_fu_1477_p2;
reg   [0:0] and_ln29_3_reg_3255;
wire   [63:0] min_p_23_fu_1483_p3;
reg   [63:0] min_p_23_reg_3260;
wire   [0:0] and_ln29_5_fu_1567_p2;
reg   [0:0] and_ln29_5_reg_3267;
wire   [63:0] min_p_25_fu_1573_p3;
reg   [63:0] min_p_25_reg_3272;
reg   [63:0] p_22_reg_3279;
wire   [0:0] and_ln29_7_fu_1657_p2;
reg   [0:0] and_ln29_7_reg_3286;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_27_fu_1663_p3;
reg   [63:0] min_p_27_reg_3291;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [0:0] and_ln29_9_fu_1747_p2;
reg   [0:0] and_ln29_9_reg_3298;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_29_fu_1753_p3;
reg   [63:0] min_p_29_reg_3303;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln29_11_fu_1837_p2;
reg   [0:0] and_ln29_11_reg_3310;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_31_fu_1843_p3;
reg   [63:0] min_p_31_reg_3315;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [0:0] and_ln29_13_fu_1927_p2;
reg   [0:0] and_ln29_13_reg_3322;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_33_fu_1933_p3;
reg   [63:0] min_p_33_reg_3327;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln29_15_fu_2027_p2;
reg   [0:0] and_ln29_15_reg_3334;
wire   [63:0] min_p_35_fu_2033_p3;
reg   [63:0] min_p_35_reg_3339;
wire   [0:0] and_ln29_17_fu_2117_p2;
reg   [0:0] and_ln29_17_reg_3346;
wire   [63:0] min_p_37_fu_2123_p3;
reg   [63:0] min_p_37_reg_3351;
wire   [0:0] and_ln29_19_fu_2207_p2;
reg   [0:0] and_ln29_19_reg_3358;
wire   [63:0] min_p_39_fu_2213_p3;
reg   [63:0] min_p_39_reg_3363;
wire   [0:0] and_ln29_21_fu_2297_p2;
reg   [0:0] and_ln29_21_reg_3370;
wire   [63:0] min_p_41_fu_2303_p3;
reg   [63:0] min_p_41_reg_3375;
wire   [0:0] and_ln29_23_fu_2387_p2;
reg   [0:0] and_ln29_23_reg_3382;
wire   [63:0] min_p_43_fu_2393_p3;
reg   [63:0] min_p_43_reg_3387;
wire   [0:0] and_ln29_25_fu_2477_p2;
reg   [0:0] and_ln29_25_reg_3394;
wire   [63:0] min_p_45_fu_2483_p3;
reg   [63:0] min_p_45_reg_3399;
wire   [0:0] and_ln29_27_fu_2567_p2;
reg   [0:0] and_ln29_27_reg_3406;
wire   [63:0] min_p_47_fu_2573_p3;
reg   [63:0] min_p_47_reg_3411;
wire   [0:0] and_ln29_29_fu_2657_p2;
reg   [0:0] and_ln29_29_reg_3418;
wire   [63:0] min_p_49_fu_2663_p3;
reg   [63:0] min_p_49_reg_3423;
reg   [0:0] tmp_75_reg_3430;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage17_subdone;
wire   [63:0] zext_ln26_fu_607_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_630_p1;
wire   [63:0] zext_ln27_1_fu_659_p1;
wire   [63:0] zext_ln26_1_fu_688_p1;
wire   [63:0] zext_ln26_2_fu_707_p1;
wire   [63:0] zext_ln26_3_fu_736_p1;
wire   [63:0] zext_ln26_4_fu_765_p1;
wire   [63:0] zext_ln26_5_fu_794_p1;
wire   [63:0] zext_ln27_2_fu_835_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_846_p1;
wire   [63:0] zext_ln26_6_fu_863_p1;
wire   [63:0] zext_ln26_7_fu_890_p1;
wire   [63:0] zext_ln26_8_fu_917_p1;
wire   [63:0] zext_ln26_9_fu_944_p1;
wire   [63:0] zext_ln26_10_fu_961_p1;
wire   [63:0] zext_ln26_11_fu_988_p1;
wire   [63:0] zext_ln26_12_fu_1015_p1;
wire   [63:0] zext_ln26_14_fu_1038_p1;
wire   [63:0] zext_ln27_4_fu_1075_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1086_p1;
wire   [63:0] zext_ln27_6_fu_1107_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1118_p1;
wire   [63:0] zext_ln27_8_fu_1155_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln27_9_fu_1166_p1;
wire   [63:0] zext_ln27_10_fu_1202_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln27_11_fu_1213_p1;
wire   [63:0] zext_ln27_12_fu_1234_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln27_13_fu_1245_p1;
wire   [63:0] zext_ln27_14_fu_1266_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln27_15_fu_1281_p1;
reg   [63:0] min_p_fu_128;
wire   [63:0] min_p_51_fu_2752_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage18;
reg   [5:0] prev_fu_132;
wire   [5:0] add_ln25_10_fu_1940_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [11:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    llike_2_ce1_local;
reg   [11:0] llike_2_address1_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_ce1_local;
reg   [11:0] llike_3_address1_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg    llike_ce1_local;
reg   [11:0] llike_address1_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_474_p0;
reg   [63:0] grp_fu_474_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_478_p0;
reg   [63:0] grp_fu_478_p1;
reg   [63:0] grp_fu_482_p0;
reg   [63:0] grp_fu_482_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [11:0] tmp_s_fu_599_p3;
wire   [11:0] add_ln_fu_622_p3;
wire   [11:0] add_ln27_fu_635_p2;
wire   [5:0] tmp_26_fu_641_p4;
wire   [11:0] add_ln27_2_fu_651_p3;
wire   [3:0] lshr_ln8_4_fu_670_p4;
wire   [11:0] tmp_76_fu_680_p3;
wire   [3:0] add_ln8_fu_693_p2;
wire   [11:0] tmp_77_fu_699_p3;
wire   [3:0] lshr_ln8_5_fu_718_p4;
wire   [11:0] tmp_78_fu_728_p3;
wire   [3:0] lshr_ln8_6_fu_747_p4;
wire   [11:0] tmp_79_fu_757_p3;
wire   [3:0] lshr_ln8_7_fu_776_p4;
wire   [11:0] tmp_80_fu_786_p3;
wire   [6:0] zext_ln11_fu_585_p1;
wire   [11:0] add_ln27_1_fu_813_p2;
wire   [5:0] tmp_30_fu_818_p4;
wire   [11:0] add_ln27_4_fu_828_p3;
wire   [11:0] add_ln27_5_fu_840_p3;
wire   [3:0] add_ln8_1_fu_851_p2;
wire   [11:0] tmp_81_fu_856_p3;
wire   [3:0] lshr_ln8_8_fu_873_p4;
wire   [11:0] tmp_82_fu_883_p3;
wire   [3:0] lshr_ln8_9_fu_900_p4;
wire   [11:0] tmp_83_fu_910_p3;
wire   [3:0] lshr_ln8_s_fu_927_p4;
wire   [11:0] tmp_84_fu_937_p3;
wire   [3:0] add_ln8_2_fu_949_p2;
wire   [11:0] tmp_85_fu_954_p3;
wire   [3:0] lshr_ln8_1_fu_971_p4;
wire   [11:0] tmp_86_fu_981_p3;
wire   [3:0] lshr_ln8_2_fu_998_p4;
wire   [11:0] tmp_87_fu_1008_p3;
wire   [4:0] lshr_ln8_3_fu_1020_p4;
wire   [11:0] zext_ln26_13_fu_1029_p1;
wire   [11:0] add_ln26_fu_1033_p2;
wire   [11:0] add_ln27_3_fu_1053_p2;
wire   [5:0] tmp_37_fu_1058_p4;
wire   [11:0] add_ln27_7_fu_1068_p3;
wire   [11:0] add_ln27_8_fu_1080_p3;
wire   [11:0] add_ln27_9_fu_1101_p3;
wire   [11:0] add_ln27_s_fu_1112_p3;
wire   [11:0] add_ln27_6_fu_1133_p2;
wire   [5:0] tmp_50_fu_1138_p4;
wire   [11:0] add_ln27_10_fu_1148_p3;
wire   [11:0] add_ln27_11_fu_1160_p3;
wire   [11:0] add_ln27_14_fu_1171_p2;
wire   [11:0] add_ln27_12_fu_1196_p3;
wire   [11:0] add_ln27_13_fu_1207_p3;
wire   [11:0] add_ln27_15_fu_1228_p3;
wire   [11:0] add_ln27_16_fu_1239_p3;
wire   [11:0] add_ln27_17_fu_1260_p3;
wire   [5:0] trunc_ln27_fu_1271_p1;
wire   [11:0] add_ln27_18_fu_1274_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln29_fu_1310_p1;
wire   [63:0] bitcast_ln29_1_fu_1328_p1;
wire   [10:0] tmp_23_fu_1314_p4;
wire   [51:0] trunc_ln29_fu_1324_p1;
wire   [0:0] icmp_ln29_1_fu_1351_p2;
wire   [0:0] icmp_ln29_fu_1345_p2;
wire   [10:0] tmp_24_fu_1331_p4;
wire   [51:0] trunc_ln29_1_fu_1341_p1;
wire   [0:0] icmp_ln29_3_fu_1369_p2;
wire   [0:0] icmp_ln29_2_fu_1363_p2;
wire   [0:0] or_ln29_fu_1357_p2;
wire   [0:0] and_ln29_fu_1381_p2;
wire   [0:0] or_ln29_1_fu_1375_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln29_2_fu_1400_p1;
wire   [63:0] bitcast_ln29_3_fu_1418_p1;
wire   [10:0] tmp_27_fu_1404_p4;
wire   [51:0] trunc_ln29_2_fu_1414_p1;
wire   [0:0] icmp_ln29_5_fu_1441_p2;
wire   [0:0] icmp_ln29_4_fu_1435_p2;
wire   [10:0] tmp_28_fu_1421_p4;
wire   [51:0] trunc_ln29_3_fu_1431_p1;
wire   [0:0] icmp_ln29_7_fu_1459_p2;
wire   [0:0] icmp_ln29_6_fu_1453_p2;
wire   [0:0] or_ln29_3_fu_1465_p2;
wire   [0:0] or_ln29_2_fu_1447_p2;
wire   [0:0] and_ln29_2_fu_1471_p2;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln29_4_fu_1490_p1;
wire   [63:0] bitcast_ln29_5_fu_1508_p1;
wire   [10:0] tmp_31_fu_1494_p4;
wire   [51:0] trunc_ln29_4_fu_1504_p1;
wire   [0:0] icmp_ln29_9_fu_1531_p2;
wire   [0:0] icmp_ln29_8_fu_1525_p2;
wire   [10:0] tmp_32_fu_1511_p4;
wire   [51:0] trunc_ln29_5_fu_1521_p1;
wire   [0:0] icmp_ln29_11_fu_1549_p2;
wire   [0:0] icmp_ln29_10_fu_1543_p2;
wire   [0:0] or_ln29_5_fu_1555_p2;
wire   [0:0] or_ln29_4_fu_1537_p2;
wire   [0:0] and_ln29_4_fu_1561_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln29_6_fu_1580_p1;
wire   [63:0] bitcast_ln29_7_fu_1598_p1;
wire   [10:0] tmp_34_fu_1584_p4;
wire   [51:0] trunc_ln29_6_fu_1594_p1;
wire   [0:0] icmp_ln29_13_fu_1621_p2;
wire   [0:0] icmp_ln29_12_fu_1615_p2;
wire   [10:0] tmp_35_fu_1601_p4;
wire   [51:0] trunc_ln29_7_fu_1611_p1;
wire   [0:0] icmp_ln29_15_fu_1639_p2;
wire   [0:0] icmp_ln29_14_fu_1633_p2;
wire   [0:0] or_ln29_7_fu_1645_p2;
wire   [0:0] or_ln29_6_fu_1627_p2;
wire   [0:0] and_ln29_6_fu_1651_p2;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln29_8_fu_1670_p1;
wire   [63:0] bitcast_ln29_9_fu_1688_p1;
wire   [10:0] tmp_38_fu_1674_p4;
wire   [51:0] trunc_ln29_8_fu_1684_p1;
wire   [0:0] icmp_ln29_17_fu_1711_p2;
wire   [0:0] icmp_ln29_16_fu_1705_p2;
wire   [10:0] tmp_39_fu_1691_p4;
wire   [51:0] trunc_ln29_9_fu_1701_p1;
wire   [0:0] icmp_ln29_19_fu_1729_p2;
wire   [0:0] icmp_ln29_18_fu_1723_p2;
wire   [0:0] or_ln29_9_fu_1735_p2;
wire   [0:0] or_ln29_8_fu_1717_p2;
wire   [0:0] and_ln29_8_fu_1741_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln29_10_fu_1760_p1;
wire   [63:0] bitcast_ln29_11_fu_1778_p1;
wire   [10:0] tmp_41_fu_1764_p4;
wire   [51:0] trunc_ln29_10_fu_1774_p1;
wire   [0:0] icmp_ln29_21_fu_1801_p2;
wire   [0:0] icmp_ln29_20_fu_1795_p2;
wire   [10:0] tmp_42_fu_1781_p4;
wire   [51:0] trunc_ln29_11_fu_1791_p1;
wire   [0:0] icmp_ln29_23_fu_1819_p2;
wire   [0:0] icmp_ln29_22_fu_1813_p2;
wire   [0:0] or_ln29_11_fu_1825_p2;
wire   [0:0] or_ln29_10_fu_1807_p2;
wire   [0:0] and_ln29_10_fu_1831_p2;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln29_12_fu_1850_p1;
wire   [63:0] bitcast_ln29_13_fu_1868_p1;
wire   [10:0] tmp_44_fu_1854_p4;
wire   [51:0] trunc_ln29_12_fu_1864_p1;
wire   [0:0] icmp_ln29_25_fu_1891_p2;
wire   [0:0] icmp_ln29_24_fu_1885_p2;
wire   [10:0] tmp_45_fu_1871_p4;
wire   [51:0] trunc_ln29_13_fu_1881_p1;
wire   [0:0] icmp_ln29_27_fu_1909_p2;
wire   [0:0] icmp_ln29_26_fu_1903_p2;
wire   [0:0] or_ln29_13_fu_1915_p2;
wire   [0:0] or_ln29_12_fu_1897_p2;
wire   [0:0] and_ln29_12_fu_1921_p2;
wire   [63:0] bitcast_ln29_14_fu_1950_p1;
wire   [63:0] bitcast_ln29_15_fu_1968_p1;
wire   [10:0] tmp_47_fu_1954_p4;
wire   [51:0] trunc_ln29_14_fu_1964_p1;
wire   [0:0] icmp_ln29_29_fu_1991_p2;
wire   [0:0] icmp_ln29_28_fu_1985_p2;
wire   [10:0] tmp_48_fu_1971_p4;
wire   [51:0] trunc_ln29_15_fu_1981_p1;
wire   [0:0] icmp_ln29_31_fu_2009_p2;
wire   [0:0] icmp_ln29_30_fu_2003_p2;
wire   [0:0] or_ln29_15_fu_2015_p2;
wire   [0:0] or_ln29_14_fu_1997_p2;
wire   [0:0] and_ln29_14_fu_2021_p2;
wire   [63:0] bitcast_ln29_16_fu_2040_p1;
wire   [63:0] bitcast_ln29_17_fu_2058_p1;
wire   [10:0] tmp_51_fu_2044_p4;
wire   [51:0] trunc_ln29_16_fu_2054_p1;
wire   [0:0] icmp_ln29_33_fu_2081_p2;
wire   [0:0] icmp_ln29_32_fu_2075_p2;
wire   [10:0] tmp_52_fu_2061_p4;
wire   [51:0] trunc_ln29_17_fu_2071_p1;
wire   [0:0] icmp_ln29_35_fu_2099_p2;
wire   [0:0] icmp_ln29_34_fu_2093_p2;
wire   [0:0] or_ln29_17_fu_2105_p2;
wire   [0:0] or_ln29_16_fu_2087_p2;
wire   [0:0] and_ln29_16_fu_2111_p2;
wire   [63:0] bitcast_ln29_18_fu_2130_p1;
wire   [63:0] bitcast_ln29_19_fu_2148_p1;
wire   [10:0] tmp_54_fu_2134_p4;
wire   [51:0] trunc_ln29_18_fu_2144_p1;
wire   [0:0] icmp_ln29_37_fu_2171_p2;
wire   [0:0] icmp_ln29_36_fu_2165_p2;
wire   [10:0] tmp_55_fu_2151_p4;
wire   [51:0] trunc_ln29_19_fu_2161_p1;
wire   [0:0] icmp_ln29_39_fu_2189_p2;
wire   [0:0] icmp_ln29_38_fu_2183_p2;
wire   [0:0] or_ln29_19_fu_2195_p2;
wire   [0:0] or_ln29_18_fu_2177_p2;
wire   [0:0] and_ln29_18_fu_2201_p2;
wire   [63:0] bitcast_ln29_20_fu_2220_p1;
wire   [63:0] bitcast_ln29_21_fu_2238_p1;
wire   [10:0] tmp_57_fu_2224_p4;
wire   [51:0] trunc_ln29_20_fu_2234_p1;
wire   [0:0] icmp_ln29_41_fu_2261_p2;
wire   [0:0] icmp_ln29_40_fu_2255_p2;
wire   [10:0] tmp_58_fu_2241_p4;
wire   [51:0] trunc_ln29_21_fu_2251_p1;
wire   [0:0] icmp_ln29_43_fu_2279_p2;
wire   [0:0] icmp_ln29_42_fu_2273_p2;
wire   [0:0] or_ln29_21_fu_2285_p2;
wire   [0:0] or_ln29_20_fu_2267_p2;
wire   [0:0] and_ln29_20_fu_2291_p2;
wire   [63:0] bitcast_ln29_22_fu_2310_p1;
wire   [63:0] bitcast_ln29_23_fu_2328_p1;
wire   [10:0] tmp_60_fu_2314_p4;
wire   [51:0] trunc_ln29_22_fu_2324_p1;
wire   [0:0] icmp_ln29_45_fu_2351_p2;
wire   [0:0] icmp_ln29_44_fu_2345_p2;
wire   [10:0] tmp_61_fu_2331_p4;
wire   [51:0] trunc_ln29_23_fu_2341_p1;
wire   [0:0] icmp_ln29_47_fu_2369_p2;
wire   [0:0] icmp_ln29_46_fu_2363_p2;
wire   [0:0] or_ln29_23_fu_2375_p2;
wire   [0:0] or_ln29_22_fu_2357_p2;
wire   [0:0] and_ln29_22_fu_2381_p2;
wire   [63:0] bitcast_ln29_24_fu_2400_p1;
wire   [63:0] bitcast_ln29_25_fu_2418_p1;
wire   [10:0] tmp_64_fu_2404_p4;
wire   [51:0] trunc_ln29_24_fu_2414_p1;
wire   [0:0] icmp_ln29_49_fu_2441_p2;
wire   [0:0] icmp_ln29_48_fu_2435_p2;
wire   [10:0] tmp_65_fu_2421_p4;
wire   [51:0] trunc_ln29_25_fu_2431_p1;
wire   [0:0] icmp_ln29_51_fu_2459_p2;
wire   [0:0] icmp_ln29_50_fu_2453_p2;
wire   [0:0] or_ln29_25_fu_2465_p2;
wire   [0:0] or_ln29_24_fu_2447_p2;
wire   [0:0] and_ln29_24_fu_2471_p2;
wire   [63:0] bitcast_ln29_26_fu_2490_p1;
wire   [63:0] bitcast_ln29_27_fu_2508_p1;
wire   [10:0] tmp_67_fu_2494_p4;
wire   [51:0] trunc_ln29_26_fu_2504_p1;
wire   [0:0] icmp_ln29_53_fu_2531_p2;
wire   [0:0] icmp_ln29_52_fu_2525_p2;
wire   [10:0] tmp_68_fu_2511_p4;
wire   [51:0] trunc_ln29_27_fu_2521_p1;
wire   [0:0] icmp_ln29_55_fu_2549_p2;
wire   [0:0] icmp_ln29_54_fu_2543_p2;
wire   [0:0] or_ln29_27_fu_2555_p2;
wire   [0:0] or_ln29_26_fu_2537_p2;
wire   [0:0] and_ln29_26_fu_2561_p2;
wire   [63:0] bitcast_ln29_28_fu_2580_p1;
wire   [63:0] bitcast_ln29_29_fu_2598_p1;
wire   [10:0] tmp_70_fu_2584_p4;
wire   [51:0] trunc_ln29_28_fu_2594_p1;
wire   [0:0] icmp_ln29_57_fu_2621_p2;
wire   [0:0] icmp_ln29_56_fu_2615_p2;
wire   [10:0] tmp_71_fu_2601_p4;
wire   [51:0] trunc_ln29_29_fu_2611_p1;
wire   [0:0] icmp_ln29_59_fu_2639_p2;
wire   [0:0] icmp_ln29_58_fu_2633_p2;
wire   [0:0] or_ln29_29_fu_2645_p2;
wire   [0:0] or_ln29_28_fu_2627_p2;
wire   [0:0] and_ln29_28_fu_2651_p2;
wire   [63:0] bitcast_ln29_30_fu_2671_p1;
wire   [63:0] bitcast_ln29_31_fu_2688_p1;
wire   [10:0] tmp_73_fu_2674_p4;
wire   [51:0] trunc_ln29_30_fu_2684_p1;
wire   [0:0] icmp_ln29_61_fu_2711_p2;
wire   [0:0] icmp_ln29_60_fu_2705_p2;
wire   [10:0] tmp_74_fu_2691_p4;
wire   [51:0] trunc_ln29_31_fu_2701_p1;
wire   [0:0] icmp_ln29_63_fu_2729_p2;
wire   [0:0] icmp_ln29_62_fu_2723_p2;
wire   [0:0] or_ln29_31_fu_2735_p2;
wire   [0:0] or_ln29_30_fu_2717_p2;
wire   [0:0] and_ln29_30_fu_2741_p2;
wire   [0:0] and_ln29_31_fu_2747_p2;
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
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
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
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage16_subdone;
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
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_128 = 64'd0;
#0 prev_fu_132 = 6'd0;
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage15) | ((1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage32_subdone) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_128 <= min_p_18;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_2917_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        min_p_fu_128 <= min_p_51_fu_2752_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_132 <= 6'd1;
    end else if (((tmp_3_reg_2917 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        prev_fu_132 <= add_ln25_10_fu_1940_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add52_12_reg_3221 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_13_reg_3226 <= grp_fu_348_p_dout0;
        add52_14_reg_3231 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_2881 <= add_ln25_1_fu_712_p2;
        add_ln25_2_reg_2891 <= add_ln25_2_fu_741_p2;
        add_ln25_3_reg_2901 <= add_ln25_3_fu_770_p2;
        add_ln25_9_reg_2911 <= add_ln25_9_fu_799_p2;
        add_ln25_reg_2866 <= add_ln25_fu_664_p2;
        and_ln29_15_reg_3334 <= and_ln29_15_fu_2027_p2;
        lshr_ln7_1_reg_2827 <= {{ap_sig_allocacmp_prev_1[5:2]}};
        prev_1_reg_2817 <= ap_sig_allocacmp_prev_1;
        shl_ln2_reg_2848[11 : 6] <= shl_ln2_fu_614_p3[11 : 6];
        tmp_3_reg_2917 <= add_ln25_9_fu_799_p2[32'd6];
        tmp_3_reg_2917_pp0_iter1_reg <= tmp_3_reg_2917;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_4_reg_2976 <= add_ln25_4_fu_868_p2;
        add_ln25_5_reg_2986 <= add_ln25_5_fu_895_p2;
        add_ln25_6_reg_2996 <= add_ln25_6_fu_922_p2;
        add_ln25_7_reg_3011 <= add_ln25_7_fu_966_p2;
        add_ln25_8_reg_3021 <= add_ln25_8_fu_993_p2;
        min_p_35_reg_3339 <= min_p_35_fu_2033_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln29_11_reg_3310 <= and_ln29_11_fu_1837_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln29_13_reg_3322 <= and_ln29_13_fu_1927_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_17_reg_3346 <= and_ln29_17_fu_2117_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_19_reg_3358 <= and_ln29_19_fu_2207_p2;
        tmp_63_reg_3136 <= {{add_ln27_14_fu_1171_p2[11:6]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln29_1_reg_3243 <= and_ln29_1_fu_1387_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_21_reg_3370 <= and_ln29_21_fu_2297_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_23_reg_3382 <= and_ln29_23_fu_2387_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_25_reg_3394 <= and_ln29_25_fu_2477_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_27_reg_3406 <= and_ln29_27_fu_2567_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_29_reg_3418 <= and_ln29_29_fu_2657_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln29_3_reg_3255 <= and_ln29_3_fu_1477_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln29_5_reg_3267 <= and_ln29_5_fu_1567_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln29_7_reg_3286 <= and_ln29_7_fu_1657_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln29_9_reg_3298 <= and_ln29_9_fu_1747_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2951 <= llike_1_q0;
        llike_1_load_reg_2921 <= llike_1_q1;
        llike_2_load_1_reg_2956 <= llike_2_q0;
        llike_2_load_reg_2926 <= llike_2_q1;
        llike_3_load_1_reg_2961 <= llike_3_q0;
        llike_3_load_reg_2931 <= llike_3_q1;
        llike_load_1_reg_2941 <= llike_q1;
        llike_load_reg_2966 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_3056 <= llike_1_q1;
        llike_1_load_3_reg_3076 <= llike_1_q0;
        llike_2_load_2_reg_3061 <= llike_2_q1;
        llike_2_load_3_reg_3081 <= llike_2_q0;
        llike_3_load_2_reg_3066 <= llike_3_q1;
        llike_3_load_3_reg_3086 <= llike_3_q0;
        llike_load_2_reg_3071 <= llike_q1;
        llike_load_3_reg_3091 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_19_reg_3236 <= min_p_fu_128;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_21_reg_3248 <= min_p_21_fu_1393_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_23_reg_3260 <= min_p_23_fu_1483_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_25_reg_3272 <= min_p_25_fu_1573_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_27_reg_3291 <= min_p_27_fu_1663_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_29_reg_3303 <= min_p_29_fu_1753_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_31_reg_3315 <= min_p_31_fu_1843_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_33_reg_3327 <= min_p_33_fu_1933_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_37_reg_3351 <= min_p_37_fu_2123_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_39_reg_3363 <= min_p_39_fu_2213_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_41_reg_3375 <= min_p_41_fu_2303_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_43_reg_3387 <= min_p_43_fu_2393_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_45_reg_3399 <= min_p_45_fu_2483_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_47_reg_3411 <= min_p_47_fu_2573_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_49_reg_3423 <= min_p_49_fu_2663_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        p_22_reg_3279 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_486 <= transition_q1;
        reg_490 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_494 <= grp_fu_348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_500 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_506 <= grp_fu_348_p_dout0;
        reg_512 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_518 <= grp_fu_348_p_dout0;
        reg_524 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_530 <= grp_fu_348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_536 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_542 <= grp_fu_348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        reg_548 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_554 <= grp_fu_348_p_dout0;
        reg_560 <= grp_fu_754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_566 <= grp_fu_348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_75_reg_3430 <= grp_fu_758_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_2917 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_2917_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_132;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_474_p0 = add52_13_reg_3226;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_474_p0 = reg_566;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_474_p0 = reg_554;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_474_p0 = reg_542;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_474_p0 = reg_530;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_474_p0 = reg_518;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_474_p0 = reg_506;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_474_p0 = reg_494;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_474_p0 = llike_3_load_3_reg_3086;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_474_p0 = llike_1_load_3_reg_3076;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_474_p0 = llike_3_load_2_reg_3066;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_474_p0 = llike_1_load_2_reg_3056;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_474_p0 = llike_3_load_1_reg_2961;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_474_p0 = llike_1_load_1_reg_2951;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_474_p0 = llike_3_load_reg_2931;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_474_p0 = llike_1_load_reg_2921;
        end else begin
            grp_fu_474_p0 = 'bx;
        end
    end else begin
        grp_fu_474_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_474_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_474_p1 = bitcast_ln27_14_fu_1296_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_474_p1 = bitcast_ln27_12_fu_1286_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_474_p1 = bitcast_ln27_10_fu_1250_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_474_p1 = bitcast_ln27_8_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_474_p1 = bitcast_ln27_6_fu_1186_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_474_p1 = bitcast_ln27_4_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_474_p1 = bitcast_ln27_2_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_474_p1 = bitcast_ln27_fu_1043_p1;
    end else begin
        grp_fu_474_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_478_p0 = add52_14_reg_3231;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_478_p0 = add52_12_reg_3221;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_478_p0 = reg_560;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_478_p0 = reg_548;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_478_p0 = reg_536;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_478_p0 = reg_524;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_478_p0 = reg_512;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_478_p0 = reg_500;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_478_p0 = llike_load_3_reg_3091;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_478_p0 = llike_2_load_3_reg_3081;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_478_p0 = llike_load_2_reg_3071;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_478_p0 = llike_2_load_2_reg_3061;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_478_p0 = llike_load_reg_2966;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_478_p0 = llike_2_load_1_reg_2956;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_478_p0 = llike_load_1_reg_2941;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_478_p0 = llike_2_load_reg_2926;
        end else begin
            grp_fu_478_p0 = 'bx;
        end
    end else begin
        grp_fu_478_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_478_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_478_p1 = bitcast_ln27_15_fu_1301_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_478_p1 = bitcast_ln27_13_fu_1291_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_478_p1 = bitcast_ln27_11_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_478_p1 = bitcast_ln27_9_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_478_p1 = bitcast_ln27_7_fu_1191_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_478_p1 = bitcast_ln27_5_fu_1128_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_478_p1 = bitcast_ln27_3_fu_1096_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_478_p1 = bitcast_ln27_1_fu_1048_p1;
    end else begin
        grp_fu_478_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_482_p0 = p_22_reg_3279;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_482_p0 = reg_566;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_482_p0 = reg_560;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_482_p0 = reg_554;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_482_p0 = reg_542;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_482_p0 = reg_548;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_482_p0 = reg_530;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_482_p0 = reg_536;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_482_p0 = reg_524;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_482_p0 = reg_518;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_482_p0 = reg_512;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_482_p0 = reg_506;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_482_p0 = reg_500;
    end else if ((((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_482_p0 = reg_494;
    end else begin
        grp_fu_482_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_482_p1 = min_p_49_fu_2663_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_482_p1 = min_p_47_fu_2573_p3;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_482_p1 = min_p_45_fu_2483_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_482_p1 = min_p_43_fu_2393_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_482_p1 = min_p_41_fu_2303_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_482_p1 = min_p_39_fu_2213_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_482_p1 = min_p_37_fu_2123_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_482_p1 = min_p_35_fu_2033_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_482_p1 = min_p_33_fu_1933_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_482_p1 = min_p_31_fu_1843_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_482_p1 = min_p_29_fu_1753_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_482_p1 = min_p_27_fu_1663_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_482_p1 = min_p_25_fu_1573_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_482_p1 = min_p_23_fu_1483_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_482_p1 = min_p_21_fu_1393_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_482_p1 = min_p_fu_128;
    end else begin
        grp_fu_482_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_10_fu_961_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_707_p1;
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
            llike_1_address1_local = zext_ln26_6_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_607_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln26_11_fu_988_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_3_fu_736_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address1_local = zext_ln26_7_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address1_local = zext_ln26_fu_607_p1;
        end else begin
            llike_2_address1_local = 'bx;
        end
    end else begin
        llike_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln26_12_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_4_fu_765_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address1_local = zext_ln26_8_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address1_local = zext_ln26_fu_607_p1;
        end else begin
            llike_3_address1_local = 'bx;
        end
    end else begin
        llike_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_14_fu_1038_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_5_fu_794_p1;
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
            llike_address1_local = zext_ln26_9_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_688_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_3_reg_2917_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_50_out_ap_vld = 1'b1;
    end else begin
        min_p_50_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address0_local = zext_ln27_15_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address0_local = zext_ln27_13_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address0_local = zext_ln27_11_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address0_local = zext_ln27_9_fu_1166_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln27_7_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln27_5_fu_1086_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_846_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_659_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address1_local = zext_ln27_14_fu_1266_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address1_local = zext_ln27_12_fu_1234_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address1_local = zext_ln27_10_fu_1202_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln27_8_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln27_6_fu_1107_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln27_4_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_630_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln25_10_fu_1940_p2 = (prev_1_reg_2817 + 6'd16);
assign add_ln25_1_fu_712_p2 = (ap_sig_allocacmp_prev_1 + 6'd5);
assign add_ln25_2_fu_741_p2 = (ap_sig_allocacmp_prev_1 + 6'd6);
assign add_ln25_3_fu_770_p2 = (ap_sig_allocacmp_prev_1 + 6'd7);
assign add_ln25_4_fu_868_p2 = (prev_1_reg_2817 + 6'd9);
assign add_ln25_5_fu_895_p2 = (prev_1_reg_2817 + 6'd10);
assign add_ln25_6_fu_922_p2 = (prev_1_reg_2817 + 6'd11);
assign add_ln25_7_fu_966_p2 = (prev_1_reg_2817 + 6'd13);
assign add_ln25_8_fu_993_p2 = (prev_1_reg_2817 + 6'd14);
assign add_ln25_9_fu_799_p2 = (zext_ln11_fu_585_p1 + 7'd15);
assign add_ln25_fu_664_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln26_fu_1033_p2 = (empty + zext_ln26_13_fu_1029_p1);
assign add_ln27_10_fu_1148_p3 = {{tmp_50_fu_1138_p4}, {empty_10}};
assign add_ln27_11_fu_1160_p3 = {{add_ln25_4_reg_2976}, {empty_10}};
assign add_ln27_12_fu_1196_p3 = {{add_ln25_5_reg_2986}, {empty_10}};
assign add_ln27_13_fu_1207_p3 = {{add_ln25_6_reg_2996}, {empty_10}};
assign add_ln27_14_fu_1171_p2 = (shl_ln2_reg_2848 + 12'd768);
assign add_ln27_15_fu_1228_p3 = {{tmp_63_reg_3136}, {empty_10}};
assign add_ln27_16_fu_1239_p3 = {{add_ln25_7_reg_3011}, {empty_10}};
assign add_ln27_17_fu_1260_p3 = {{add_ln25_8_reg_3021}, {empty_10}};
assign add_ln27_18_fu_1274_p3 = {{trunc_ln27_fu_1271_p1}, {empty_10}};
assign add_ln27_1_fu_813_p2 = (shl_ln2_reg_2848 + 12'd128);
assign add_ln27_2_fu_651_p3 = {{tmp_26_fu_641_p4}, {empty_10}};
assign add_ln27_3_fu_1053_p2 = (shl_ln2_reg_2848 + 12'd256);
assign add_ln27_4_fu_828_p3 = {{tmp_30_fu_818_p4}, {empty_10}};
assign add_ln27_5_fu_840_p3 = {{add_ln25_reg_2866}, {empty_10}};
assign add_ln27_6_fu_1133_p2 = (shl_ln2_reg_2848 + 12'd512);
assign add_ln27_7_fu_1068_p3 = {{tmp_37_fu_1058_p4}, {empty_10}};
assign add_ln27_8_fu_1080_p3 = {{add_ln25_1_reg_2881}, {empty_10}};
assign add_ln27_9_fu_1101_p3 = {{add_ln25_2_reg_2891}, {empty_10}};
assign add_ln27_fu_635_p2 = (shl_ln2_fu_614_p3 + 12'd64);
assign add_ln27_s_fu_1112_p3 = {{add_ln25_3_reg_2901}, {empty_10}};
assign add_ln8_1_fu_851_p2 = (lshr_ln7_1_reg_2827 + 4'd2);
assign add_ln8_2_fu_949_p2 = (lshr_ln7_1_reg_2827 + 4'd3);
assign add_ln8_fu_693_p2 = (lshr_ln7_1_fu_589_p4 + 4'd1);
assign add_ln_fu_622_p3 = {{ap_sig_allocacmp_prev_1}, {empty_10}};
assign and_ln29_10_fu_1831_p2 = (or_ln29_11_fu_1825_p2 & or_ln29_10_fu_1807_p2);
assign and_ln29_11_fu_1837_p2 = (grp_fu_758_p_dout0 & and_ln29_10_fu_1831_p2);
assign and_ln29_12_fu_1921_p2 = (or_ln29_13_fu_1915_p2 & or_ln29_12_fu_1897_p2);
assign and_ln29_13_fu_1927_p2 = (grp_fu_758_p_dout0 & and_ln29_12_fu_1921_p2);
assign and_ln29_14_fu_2021_p2 = (or_ln29_15_fu_2015_p2 & or_ln29_14_fu_1997_p2);
assign and_ln29_15_fu_2027_p2 = (grp_fu_758_p_dout0 & and_ln29_14_fu_2021_p2);
assign and_ln29_16_fu_2111_p2 = (or_ln29_17_fu_2105_p2 & or_ln29_16_fu_2087_p2);
assign and_ln29_17_fu_2117_p2 = (grp_fu_758_p_dout0 & and_ln29_16_fu_2111_p2);
assign and_ln29_18_fu_2201_p2 = (or_ln29_19_fu_2195_p2 & or_ln29_18_fu_2177_p2);
assign and_ln29_19_fu_2207_p2 = (grp_fu_758_p_dout0 & and_ln29_18_fu_2201_p2);
assign and_ln29_1_fu_1387_p2 = (or_ln29_1_fu_1375_p2 & and_ln29_fu_1381_p2);
assign and_ln29_20_fu_2291_p2 = (or_ln29_21_fu_2285_p2 & or_ln29_20_fu_2267_p2);
assign and_ln29_21_fu_2297_p2 = (grp_fu_758_p_dout0 & and_ln29_20_fu_2291_p2);
assign and_ln29_22_fu_2381_p2 = (or_ln29_23_fu_2375_p2 & or_ln29_22_fu_2357_p2);
assign and_ln29_23_fu_2387_p2 = (grp_fu_758_p_dout0 & and_ln29_22_fu_2381_p2);
assign and_ln29_24_fu_2471_p2 = (or_ln29_25_fu_2465_p2 & or_ln29_24_fu_2447_p2);
assign and_ln29_25_fu_2477_p2 = (grp_fu_758_p_dout0 & and_ln29_24_fu_2471_p2);
assign and_ln29_26_fu_2561_p2 = (or_ln29_27_fu_2555_p2 & or_ln29_26_fu_2537_p2);
assign and_ln29_27_fu_2567_p2 = (grp_fu_758_p_dout0 & and_ln29_26_fu_2561_p2);
assign and_ln29_28_fu_2651_p2 = (or_ln29_29_fu_2645_p2 & or_ln29_28_fu_2627_p2);
assign and_ln29_29_fu_2657_p2 = (grp_fu_758_p_dout0 & and_ln29_28_fu_2651_p2);
assign and_ln29_2_fu_1471_p2 = (or_ln29_3_fu_1465_p2 & or_ln29_2_fu_1447_p2);
assign and_ln29_30_fu_2741_p2 = (or_ln29_31_fu_2735_p2 & or_ln29_30_fu_2717_p2);
assign and_ln29_31_fu_2747_p2 = (tmp_75_reg_3430 & and_ln29_30_fu_2741_p2);
assign and_ln29_3_fu_1477_p2 = (grp_fu_758_p_dout0 & and_ln29_2_fu_1471_p2);
assign and_ln29_4_fu_1561_p2 = (or_ln29_5_fu_1555_p2 & or_ln29_4_fu_1537_p2);
assign and_ln29_5_fu_1567_p2 = (grp_fu_758_p_dout0 & and_ln29_4_fu_1561_p2);
assign and_ln29_6_fu_1651_p2 = (or_ln29_7_fu_1645_p2 & or_ln29_6_fu_1627_p2);
assign and_ln29_7_fu_1657_p2 = (grp_fu_758_p_dout0 & and_ln29_6_fu_1651_p2);
assign and_ln29_8_fu_1741_p2 = (or_ln29_9_fu_1735_p2 & or_ln29_8_fu_1717_p2);
assign and_ln29_9_fu_1747_p2 = (grp_fu_758_p_dout0 & and_ln29_8_fu_1741_p2);
assign and_ln29_fu_1381_p2 = (or_ln29_fu_1357_p2 & grp_fu_758_p_dout0);
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
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
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
assign bitcast_ln27_10_fu_1250_p1 = reg_486;
assign bitcast_ln27_11_fu_1255_p1 = reg_490;
assign bitcast_ln27_12_fu_1286_p1 = reg_486;
assign bitcast_ln27_13_fu_1291_p1 = reg_490;
assign bitcast_ln27_14_fu_1296_p1 = reg_486;
assign bitcast_ln27_15_fu_1301_p1 = reg_490;
assign bitcast_ln27_1_fu_1048_p1 = reg_490;
assign bitcast_ln27_2_fu_1091_p1 = reg_486;
assign bitcast_ln27_3_fu_1096_p1 = reg_490;
assign bitcast_ln27_4_fu_1123_p1 = reg_486;
assign bitcast_ln27_5_fu_1128_p1 = reg_490;
assign bitcast_ln27_6_fu_1186_p1 = reg_486;
assign bitcast_ln27_7_fu_1191_p1 = reg_490;
assign bitcast_ln27_8_fu_1218_p1 = reg_486;
assign bitcast_ln27_9_fu_1223_p1 = reg_490;
assign bitcast_ln27_fu_1043_p1 = reg_486;
assign bitcast_ln29_10_fu_1760_p1 = reg_524;
assign bitcast_ln29_11_fu_1778_p1 = min_p_29_reg_3303;
assign bitcast_ln29_12_fu_1850_p1 = reg_494;
assign bitcast_ln29_13_fu_1868_p1 = min_p_31_reg_3315;
assign bitcast_ln29_14_fu_1950_p1 = reg_536;
assign bitcast_ln29_15_fu_1968_p1 = min_p_33_reg_3327;
assign bitcast_ln29_16_fu_2040_p1 = reg_530;
assign bitcast_ln29_17_fu_2058_p1 = min_p_35_reg_3339;
assign bitcast_ln29_18_fu_2130_p1 = reg_548;
assign bitcast_ln29_19_fu_2148_p1 = min_p_37_reg_3351;
assign bitcast_ln29_1_fu_1328_p1 = min_p_19_reg_3236;
assign bitcast_ln29_20_fu_2220_p1 = reg_542;
assign bitcast_ln29_21_fu_2238_p1 = min_p_39_reg_3363;
assign bitcast_ln29_22_fu_2310_p1 = reg_500;
assign bitcast_ln29_23_fu_2328_p1 = min_p_41_reg_3375;
assign bitcast_ln29_24_fu_2400_p1 = reg_554;
assign bitcast_ln29_25_fu_2418_p1 = min_p_43_reg_3387;
assign bitcast_ln29_26_fu_2490_p1 = reg_560;
assign bitcast_ln29_27_fu_2508_p1 = min_p_45_reg_3399;
assign bitcast_ln29_28_fu_2580_p1 = reg_566;
assign bitcast_ln29_29_fu_2598_p1 = min_p_47_reg_3411;
assign bitcast_ln29_2_fu_1400_p1 = reg_500;
assign bitcast_ln29_30_fu_2671_p1 = p_22_reg_3279;
assign bitcast_ln29_31_fu_2688_p1 = min_p_49_reg_3423;
assign bitcast_ln29_3_fu_1418_p1 = min_p_21_reg_3248;
assign bitcast_ln29_4_fu_1490_p1 = reg_506;
assign bitcast_ln29_5_fu_1508_p1 = min_p_23_reg_3260;
assign bitcast_ln29_6_fu_1580_p1 = reg_512;
assign bitcast_ln29_7_fu_1598_p1 = min_p_25_reg_3272;
assign bitcast_ln29_8_fu_1670_p1 = reg_518;
assign bitcast_ln29_9_fu_1688_p1 = min_p_27_reg_3291;
assign bitcast_ln29_fu_1310_p1 = reg_494;
assign grp_fu_348_p_ce = 1'b1;
assign grp_fu_348_p_din0 = grp_fu_474_p0;
assign grp_fu_348_p_din1 = grp_fu_474_p1;
assign grp_fu_348_p_opcode = 2'd0;
assign grp_fu_754_p_ce = 1'b1;
assign grp_fu_754_p_din0 = grp_fu_478_p0;
assign grp_fu_754_p_din1 = grp_fu_478_p1;
assign grp_fu_754_p_opcode = 2'd0;
assign grp_fu_758_p_ce = 1'b1;
assign grp_fu_758_p_din0 = grp_fu_482_p0;
assign grp_fu_758_p_din1 = grp_fu_482_p1;
assign grp_fu_758_p_opcode = 5'd4;
assign icmp_ln29_10_fu_1543_p2 = ((tmp_32_fu_1511_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1549_p2 = ((trunc_ln29_5_fu_1521_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1615_p2 = ((tmp_34_fu_1584_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1621_p2 = ((trunc_ln29_6_fu_1594_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1633_p2 = ((tmp_35_fu_1601_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1639_p2 = ((trunc_ln29_7_fu_1611_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1705_p2 = ((tmp_38_fu_1674_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1711_p2 = ((trunc_ln29_8_fu_1684_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1723_p2 = ((tmp_39_fu_1691_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1729_p2 = ((trunc_ln29_9_fu_1701_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1351_p2 = ((trunc_ln29_fu_1324_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1795_p2 = ((tmp_41_fu_1764_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1801_p2 = ((trunc_ln29_10_fu_1774_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1813_p2 = ((tmp_42_fu_1781_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1819_p2 = ((trunc_ln29_11_fu_1791_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1885_p2 = ((tmp_44_fu_1854_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1891_p2 = ((trunc_ln29_12_fu_1864_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1903_p2 = ((tmp_45_fu_1871_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1909_p2 = ((trunc_ln29_13_fu_1881_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1985_p2 = ((tmp_47_fu_1954_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1991_p2 = ((trunc_ln29_14_fu_1964_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1363_p2 = ((tmp_24_fu_1331_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2003_p2 = ((tmp_48_fu_1971_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2009_p2 = ((trunc_ln29_15_fu_1981_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_32_fu_2075_p2 = ((tmp_51_fu_2044_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_33_fu_2081_p2 = ((trunc_ln29_16_fu_2054_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_34_fu_2093_p2 = ((tmp_52_fu_2061_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_35_fu_2099_p2 = ((trunc_ln29_17_fu_2071_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_36_fu_2165_p2 = ((tmp_54_fu_2134_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_37_fu_2171_p2 = ((trunc_ln29_18_fu_2144_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_38_fu_2183_p2 = ((tmp_55_fu_2151_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_39_fu_2189_p2 = ((trunc_ln29_19_fu_2161_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1369_p2 = ((trunc_ln29_1_fu_1341_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_40_fu_2255_p2 = ((tmp_57_fu_2224_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_41_fu_2261_p2 = ((trunc_ln29_20_fu_2234_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_42_fu_2273_p2 = ((tmp_58_fu_2241_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_43_fu_2279_p2 = ((trunc_ln29_21_fu_2251_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_44_fu_2345_p2 = ((tmp_60_fu_2314_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_45_fu_2351_p2 = ((trunc_ln29_22_fu_2324_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_46_fu_2363_p2 = ((tmp_61_fu_2331_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_47_fu_2369_p2 = ((trunc_ln29_23_fu_2341_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_48_fu_2435_p2 = ((tmp_64_fu_2404_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_49_fu_2441_p2 = ((trunc_ln29_24_fu_2414_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1435_p2 = ((tmp_27_fu_1404_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_50_fu_2453_p2 = ((tmp_65_fu_2421_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_51_fu_2459_p2 = ((trunc_ln29_25_fu_2431_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_52_fu_2525_p2 = ((tmp_67_fu_2494_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_53_fu_2531_p2 = ((trunc_ln29_26_fu_2504_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_54_fu_2543_p2 = ((tmp_68_fu_2511_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_55_fu_2549_p2 = ((trunc_ln29_27_fu_2521_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_56_fu_2615_p2 = ((tmp_70_fu_2584_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_57_fu_2621_p2 = ((trunc_ln29_28_fu_2594_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_58_fu_2633_p2 = ((tmp_71_fu_2601_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_59_fu_2639_p2 = ((trunc_ln29_29_fu_2611_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1441_p2 = ((trunc_ln29_2_fu_1414_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_60_fu_2705_p2 = ((tmp_73_fu_2674_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_61_fu_2711_p2 = ((trunc_ln29_30_fu_2684_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_62_fu_2723_p2 = ((tmp_74_fu_2691_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_63_fu_2729_p2 = ((trunc_ln29_31_fu_2701_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1453_p2 = ((tmp_28_fu_1421_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1459_p2 = ((trunc_ln29_3_fu_1431_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1525_p2 = ((tmp_31_fu_1494_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1531_p2 = ((trunc_ln29_4_fu_1504_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1345_p2 = ((tmp_23_fu_1314_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_address1 = llike_2_address1_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_address1 = llike_3_address1_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln7_1_fu_589_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_971_p4 = {{add_ln25_7_fu_966_p2[5:2]}};
assign lshr_ln8_2_fu_998_p4 = {{add_ln25_8_fu_993_p2[5:2]}};
assign lshr_ln8_3_fu_1020_p4 = {{add_ln25_9_reg_2911[6:2]}};
assign lshr_ln8_4_fu_670_p4 = {{add_ln25_fu_664_p2[5:2]}};
assign lshr_ln8_5_fu_718_p4 = {{add_ln25_1_fu_712_p2[5:2]}};
assign lshr_ln8_6_fu_747_p4 = {{add_ln25_2_fu_741_p2[5:2]}};
assign lshr_ln8_7_fu_776_p4 = {{add_ln25_3_fu_770_p2[5:2]}};
assign lshr_ln8_8_fu_873_p4 = {{add_ln25_4_fu_868_p2[5:2]}};
assign lshr_ln8_9_fu_900_p4 = {{add_ln25_5_fu_895_p2[5:2]}};
assign lshr_ln8_s_fu_927_p4 = {{add_ln25_6_fu_922_p2[5:2]}};
assign min_p_21_fu_1393_p3 = ((and_ln29_1_reg_3243[0:0] == 1'b1) ? reg_494 : min_p_19_reg_3236);
assign min_p_23_fu_1483_p3 = ((and_ln29_3_reg_3255[0:0] == 1'b1) ? reg_500 : min_p_21_reg_3248);
assign min_p_25_fu_1573_p3 = ((and_ln29_5_reg_3267[0:0] == 1'b1) ? reg_506 : min_p_23_reg_3260);
assign min_p_27_fu_1663_p3 = ((and_ln29_7_reg_3286[0:0] == 1'b1) ? reg_512 : min_p_25_reg_3272);
assign min_p_29_fu_1753_p3 = ((and_ln29_9_reg_3298[0:0] == 1'b1) ? reg_518 : min_p_27_reg_3291);
assign min_p_31_fu_1843_p3 = ((and_ln29_11_reg_3310[0:0] == 1'b1) ? reg_524 : min_p_29_reg_3303);
assign min_p_33_fu_1933_p3 = ((and_ln29_13_reg_3322[0:0] == 1'b1) ? reg_494 : min_p_31_reg_3315);
assign min_p_35_fu_2033_p3 = ((and_ln29_15_reg_3334[0:0] == 1'b1) ? reg_536 : min_p_33_reg_3327);
assign min_p_37_fu_2123_p3 = ((and_ln29_17_reg_3346[0:0] == 1'b1) ? reg_530 : min_p_35_reg_3339);
assign min_p_39_fu_2213_p3 = ((and_ln29_19_reg_3358[0:0] == 1'b1) ? reg_548 : min_p_37_reg_3351);
assign min_p_41_fu_2303_p3 = ((and_ln29_21_reg_3370[0:0] == 1'b1) ? reg_542 : min_p_39_reg_3363);
assign min_p_43_fu_2393_p3 = ((and_ln29_23_reg_3382[0:0] == 1'b1) ? reg_500 : min_p_41_reg_3375);
assign min_p_45_fu_2483_p3 = ((and_ln29_25_reg_3394[0:0] == 1'b1) ? reg_554 : min_p_43_reg_3387);
assign min_p_47_fu_2573_p3 = ((and_ln29_27_reg_3406[0:0] == 1'b1) ? reg_560 : min_p_45_reg_3399);
assign min_p_49_fu_2663_p3 = ((and_ln29_29_reg_3418[0:0] == 1'b1) ? reg_566 : min_p_47_reg_3411);
assign min_p_50_out = ((and_ln29_29_reg_3418[0:0] == 1'b1) ? reg_566 : min_p_47_reg_3411);
assign min_p_51_fu_2752_p3 = ((and_ln29_31_fu_2747_p2[0:0] == 1'b1) ? p_22_reg_3279 : min_p_49_reg_3423);
assign or_ln29_10_fu_1807_p2 = (icmp_ln29_21_fu_1801_p2 | icmp_ln29_20_fu_1795_p2);
assign or_ln29_11_fu_1825_p2 = (icmp_ln29_23_fu_1819_p2 | icmp_ln29_22_fu_1813_p2);
assign or_ln29_12_fu_1897_p2 = (icmp_ln29_25_fu_1891_p2 | icmp_ln29_24_fu_1885_p2);
assign or_ln29_13_fu_1915_p2 = (icmp_ln29_27_fu_1909_p2 | icmp_ln29_26_fu_1903_p2);
assign or_ln29_14_fu_1997_p2 = (icmp_ln29_29_fu_1991_p2 | icmp_ln29_28_fu_1985_p2);
assign or_ln29_15_fu_2015_p2 = (icmp_ln29_31_fu_2009_p2 | icmp_ln29_30_fu_2003_p2);
assign or_ln29_16_fu_2087_p2 = (icmp_ln29_33_fu_2081_p2 | icmp_ln29_32_fu_2075_p2);
assign or_ln29_17_fu_2105_p2 = (icmp_ln29_35_fu_2099_p2 | icmp_ln29_34_fu_2093_p2);
assign or_ln29_18_fu_2177_p2 = (icmp_ln29_37_fu_2171_p2 | icmp_ln29_36_fu_2165_p2);
assign or_ln29_19_fu_2195_p2 = (icmp_ln29_39_fu_2189_p2 | icmp_ln29_38_fu_2183_p2);
assign or_ln29_1_fu_1375_p2 = (icmp_ln29_3_fu_1369_p2 | icmp_ln29_2_fu_1363_p2);
assign or_ln29_20_fu_2267_p2 = (icmp_ln29_41_fu_2261_p2 | icmp_ln29_40_fu_2255_p2);
assign or_ln29_21_fu_2285_p2 = (icmp_ln29_43_fu_2279_p2 | icmp_ln29_42_fu_2273_p2);
assign or_ln29_22_fu_2357_p2 = (icmp_ln29_45_fu_2351_p2 | icmp_ln29_44_fu_2345_p2);
assign or_ln29_23_fu_2375_p2 = (icmp_ln29_47_fu_2369_p2 | icmp_ln29_46_fu_2363_p2);
assign or_ln29_24_fu_2447_p2 = (icmp_ln29_49_fu_2441_p2 | icmp_ln29_48_fu_2435_p2);
assign or_ln29_25_fu_2465_p2 = (icmp_ln29_51_fu_2459_p2 | icmp_ln29_50_fu_2453_p2);
assign or_ln29_26_fu_2537_p2 = (icmp_ln29_53_fu_2531_p2 | icmp_ln29_52_fu_2525_p2);
assign or_ln29_27_fu_2555_p2 = (icmp_ln29_55_fu_2549_p2 | icmp_ln29_54_fu_2543_p2);
assign or_ln29_28_fu_2627_p2 = (icmp_ln29_57_fu_2621_p2 | icmp_ln29_56_fu_2615_p2);
assign or_ln29_29_fu_2645_p2 = (icmp_ln29_59_fu_2639_p2 | icmp_ln29_58_fu_2633_p2);
assign or_ln29_2_fu_1447_p2 = (icmp_ln29_5_fu_1441_p2 | icmp_ln29_4_fu_1435_p2);
assign or_ln29_30_fu_2717_p2 = (icmp_ln29_61_fu_2711_p2 | icmp_ln29_60_fu_2705_p2);
assign or_ln29_31_fu_2735_p2 = (icmp_ln29_63_fu_2729_p2 | icmp_ln29_62_fu_2723_p2);
assign or_ln29_3_fu_1465_p2 = (icmp_ln29_7_fu_1459_p2 | icmp_ln29_6_fu_1453_p2);
assign or_ln29_4_fu_1537_p2 = (icmp_ln29_9_fu_1531_p2 | icmp_ln29_8_fu_1525_p2);
assign or_ln29_5_fu_1555_p2 = (icmp_ln29_11_fu_1549_p2 | icmp_ln29_10_fu_1543_p2);
assign or_ln29_6_fu_1627_p2 = (icmp_ln29_13_fu_1621_p2 | icmp_ln29_12_fu_1615_p2);
assign or_ln29_7_fu_1645_p2 = (icmp_ln29_15_fu_1639_p2 | icmp_ln29_14_fu_1633_p2);
assign or_ln29_8_fu_1717_p2 = (icmp_ln29_17_fu_1711_p2 | icmp_ln29_16_fu_1705_p2);
assign or_ln29_9_fu_1735_p2 = (icmp_ln29_19_fu_1729_p2 | icmp_ln29_18_fu_1723_p2);
assign or_ln29_fu_1357_p2 = (icmp_ln29_fu_1345_p2 | icmp_ln29_1_fu_1351_p2);
assign shl_ln2_fu_614_p3 = {{ap_sig_allocacmp_prev_1}, {6'd0}};
assign tmp_23_fu_1314_p4 = {{bitcast_ln29_fu_1310_p1[62:52]}};
assign tmp_24_fu_1331_p4 = {{bitcast_ln29_1_fu_1328_p1[62:52]}};
assign tmp_26_fu_641_p4 = {{add_ln27_fu_635_p2[11:6]}};
assign tmp_27_fu_1404_p4 = {{bitcast_ln29_2_fu_1400_p1[62:52]}};
assign tmp_28_fu_1421_p4 = {{bitcast_ln29_3_fu_1418_p1[62:52]}};
assign tmp_30_fu_818_p4 = {{add_ln27_1_fu_813_p2[11:6]}};
assign tmp_31_fu_1494_p4 = {{bitcast_ln29_4_fu_1490_p1[62:52]}};
assign tmp_32_fu_1511_p4 = {{bitcast_ln29_5_fu_1508_p1[62:52]}};
assign tmp_34_fu_1584_p4 = {{bitcast_ln29_6_fu_1580_p1[62:52]}};
assign tmp_35_fu_1601_p4 = {{bitcast_ln29_7_fu_1598_p1[62:52]}};
assign tmp_37_fu_1058_p4 = {{add_ln27_3_fu_1053_p2[11:6]}};
assign tmp_38_fu_1674_p4 = {{bitcast_ln29_8_fu_1670_p1[62:52]}};
assign tmp_39_fu_1691_p4 = {{bitcast_ln29_9_fu_1688_p1[62:52]}};
assign tmp_41_fu_1764_p4 = {{bitcast_ln29_10_fu_1760_p1[62:52]}};
assign tmp_42_fu_1781_p4 = {{bitcast_ln29_11_fu_1778_p1[62:52]}};
assign tmp_44_fu_1854_p4 = {{bitcast_ln29_12_fu_1850_p1[62:52]}};
assign tmp_45_fu_1871_p4 = {{bitcast_ln29_13_fu_1868_p1[62:52]}};
assign tmp_47_fu_1954_p4 = {{bitcast_ln29_14_fu_1950_p1[62:52]}};
assign tmp_48_fu_1971_p4 = {{bitcast_ln29_15_fu_1968_p1[62:52]}};
assign tmp_50_fu_1138_p4 = {{add_ln27_6_fu_1133_p2[11:6]}};
assign tmp_51_fu_2044_p4 = {{bitcast_ln29_16_fu_2040_p1[62:52]}};
assign tmp_52_fu_2061_p4 = {{bitcast_ln29_17_fu_2058_p1[62:52]}};
assign tmp_54_fu_2134_p4 = {{bitcast_ln29_18_fu_2130_p1[62:52]}};
assign tmp_55_fu_2151_p4 = {{bitcast_ln29_19_fu_2148_p1[62:52]}};
assign tmp_57_fu_2224_p4 = {{bitcast_ln29_20_fu_2220_p1[62:52]}};
assign tmp_58_fu_2241_p4 = {{bitcast_ln29_21_fu_2238_p1[62:52]}};
assign tmp_60_fu_2314_p4 = {{bitcast_ln29_22_fu_2310_p1[62:52]}};
assign tmp_61_fu_2331_p4 = {{bitcast_ln29_23_fu_2328_p1[62:52]}};
assign tmp_64_fu_2404_p4 = {{bitcast_ln29_24_fu_2400_p1[62:52]}};
assign tmp_65_fu_2421_p4 = {{bitcast_ln29_25_fu_2418_p1[62:52]}};
assign tmp_67_fu_2494_p4 = {{bitcast_ln29_26_fu_2490_p1[62:52]}};
assign tmp_68_fu_2511_p4 = {{bitcast_ln29_27_fu_2508_p1[62:52]}};
assign tmp_70_fu_2584_p4 = {{bitcast_ln29_28_fu_2580_p1[62:52]}};
assign tmp_71_fu_2601_p4 = {{bitcast_ln29_29_fu_2598_p1[62:52]}};
assign tmp_73_fu_2674_p4 = {{bitcast_ln29_30_fu_2671_p1[62:52]}};
assign tmp_74_fu_2691_p4 = {{bitcast_ln29_31_fu_2688_p1[62:52]}};
assign tmp_76_fu_680_p3 = {{empty_9}, {lshr_ln8_4_fu_670_p4}};
assign tmp_77_fu_699_p3 = {{empty_9}, {add_ln8_fu_693_p2}};
assign tmp_78_fu_728_p3 = {{empty_9}, {lshr_ln8_5_fu_718_p4}};
assign tmp_79_fu_757_p3 = {{empty_9}, {lshr_ln8_6_fu_747_p4}};
assign tmp_80_fu_786_p3 = {{empty_9}, {lshr_ln8_7_fu_776_p4}};
assign tmp_81_fu_856_p3 = {{empty_9}, {add_ln8_1_fu_851_p2}};
assign tmp_82_fu_883_p3 = {{empty_9}, {lshr_ln8_8_fu_873_p4}};
assign tmp_83_fu_910_p3 = {{empty_9}, {lshr_ln8_9_fu_900_p4}};
assign tmp_84_fu_937_p3 = {{empty_9}, {lshr_ln8_s_fu_927_p4}};
assign tmp_85_fu_954_p3 = {{empty_9}, {add_ln8_2_fu_949_p2}};
assign tmp_86_fu_981_p3 = {{empty_9}, {lshr_ln8_1_fu_971_p4}};
assign tmp_87_fu_1008_p3 = {{empty_9}, {lshr_ln8_2_fu_998_p4}};
assign tmp_s_fu_599_p3 = {{empty_9}, {lshr_ln7_1_fu_589_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_1271_p1 = add_ln25_9_reg_2911[5:0];
assign trunc_ln29_10_fu_1774_p1 = bitcast_ln29_10_fu_1760_p1[51:0];
assign trunc_ln29_11_fu_1791_p1 = bitcast_ln29_11_fu_1778_p1[51:0];
assign trunc_ln29_12_fu_1864_p1 = bitcast_ln29_12_fu_1850_p1[51:0];
assign trunc_ln29_13_fu_1881_p1 = bitcast_ln29_13_fu_1868_p1[51:0];
assign trunc_ln29_14_fu_1964_p1 = bitcast_ln29_14_fu_1950_p1[51:0];
assign trunc_ln29_15_fu_1981_p1 = bitcast_ln29_15_fu_1968_p1[51:0];
assign trunc_ln29_16_fu_2054_p1 = bitcast_ln29_16_fu_2040_p1[51:0];
assign trunc_ln29_17_fu_2071_p1 = bitcast_ln29_17_fu_2058_p1[51:0];
assign trunc_ln29_18_fu_2144_p1 = bitcast_ln29_18_fu_2130_p1[51:0];
assign trunc_ln29_19_fu_2161_p1 = bitcast_ln29_19_fu_2148_p1[51:0];
assign trunc_ln29_1_fu_1341_p1 = bitcast_ln29_1_fu_1328_p1[51:0];
assign trunc_ln29_20_fu_2234_p1 = bitcast_ln29_20_fu_2220_p1[51:0];
assign trunc_ln29_21_fu_2251_p1 = bitcast_ln29_21_fu_2238_p1[51:0];
assign trunc_ln29_22_fu_2324_p1 = bitcast_ln29_22_fu_2310_p1[51:0];
assign trunc_ln29_23_fu_2341_p1 = bitcast_ln29_23_fu_2328_p1[51:0];
assign trunc_ln29_24_fu_2414_p1 = bitcast_ln29_24_fu_2400_p1[51:0];
assign trunc_ln29_25_fu_2431_p1 = bitcast_ln29_25_fu_2418_p1[51:0];
assign trunc_ln29_26_fu_2504_p1 = bitcast_ln29_26_fu_2490_p1[51:0];
assign trunc_ln29_27_fu_2521_p1 = bitcast_ln29_27_fu_2508_p1[51:0];
assign trunc_ln29_28_fu_2594_p1 = bitcast_ln29_28_fu_2580_p1[51:0];
assign trunc_ln29_29_fu_2611_p1 = bitcast_ln29_29_fu_2598_p1[51:0];
assign trunc_ln29_2_fu_1414_p1 = bitcast_ln29_2_fu_1400_p1[51:0];
assign trunc_ln29_30_fu_2684_p1 = bitcast_ln29_30_fu_2671_p1[51:0];
assign trunc_ln29_31_fu_2701_p1 = bitcast_ln29_31_fu_2688_p1[51:0];
assign trunc_ln29_3_fu_1431_p1 = bitcast_ln29_3_fu_1418_p1[51:0];
assign trunc_ln29_4_fu_1504_p1 = bitcast_ln29_4_fu_1490_p1[51:0];
assign trunc_ln29_5_fu_1521_p1 = bitcast_ln29_5_fu_1508_p1[51:0];
assign trunc_ln29_6_fu_1594_p1 = bitcast_ln29_6_fu_1580_p1[51:0];
assign trunc_ln29_7_fu_1611_p1 = bitcast_ln29_7_fu_1598_p1[51:0];
assign trunc_ln29_8_fu_1684_p1 = bitcast_ln29_8_fu_1670_p1[51:0];
assign trunc_ln29_9_fu_1701_p1 = bitcast_ln29_9_fu_1688_p1[51:0];
assign trunc_ln29_fu_1324_p1 = bitcast_ln29_fu_1310_p1[51:0];
assign zext_ln11_fu_585_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_10_fu_961_p1 = tmp_85_fu_954_p3;
assign zext_ln26_11_fu_988_p1 = tmp_86_fu_981_p3;
assign zext_ln26_12_fu_1015_p1 = tmp_87_fu_1008_p3;
assign zext_ln26_13_fu_1029_p1 = lshr_ln8_3_fu_1020_p4;
assign zext_ln26_14_fu_1038_p1 = add_ln26_fu_1033_p2;
assign zext_ln26_1_fu_688_p1 = tmp_76_fu_680_p3;
assign zext_ln26_2_fu_707_p1 = tmp_77_fu_699_p3;
assign zext_ln26_3_fu_736_p1 = tmp_78_fu_728_p3;
assign zext_ln26_4_fu_765_p1 = tmp_79_fu_757_p3;
assign zext_ln26_5_fu_794_p1 = tmp_80_fu_786_p3;
assign zext_ln26_6_fu_863_p1 = tmp_81_fu_856_p3;
assign zext_ln26_7_fu_890_p1 = tmp_82_fu_883_p3;
assign zext_ln26_8_fu_917_p1 = tmp_83_fu_910_p3;
assign zext_ln26_9_fu_944_p1 = tmp_84_fu_937_p3;
assign zext_ln26_fu_607_p1 = tmp_s_fu_599_p3;
assign zext_ln27_10_fu_1202_p1 = add_ln27_12_fu_1196_p3;
assign zext_ln27_11_fu_1213_p1 = add_ln27_13_fu_1207_p3;
assign zext_ln27_12_fu_1234_p1 = add_ln27_15_fu_1228_p3;
assign zext_ln27_13_fu_1245_p1 = add_ln27_16_fu_1239_p3;
assign zext_ln27_14_fu_1266_p1 = add_ln27_17_fu_1260_p3;
assign zext_ln27_15_fu_1281_p1 = add_ln27_18_fu_1274_p3;
assign zext_ln27_1_fu_659_p1 = add_ln27_2_fu_651_p3;
assign zext_ln27_2_fu_835_p1 = add_ln27_4_fu_828_p3;
assign zext_ln27_3_fu_846_p1 = add_ln27_5_fu_840_p3;
assign zext_ln27_4_fu_1075_p1 = add_ln27_7_fu_1068_p3;
assign zext_ln27_5_fu_1086_p1 = add_ln27_8_fu_1080_p3;
assign zext_ln27_6_fu_1107_p1 = add_ln27_9_fu_1101_p3;
assign zext_ln27_7_fu_1118_p1 = add_ln27_s_fu_1112_p3;
assign zext_ln27_8_fu_1155_p1 = add_ln27_10_fu_1148_p3;
assign zext_ln27_9_fu_1166_p1 = add_ln27_11_fu_1160_p3;
assign zext_ln27_fu_630_p1 = add_ln_fu_622_p3;
always @ (posedge ap_clk) begin
    shl_ln2_reg_2848[5:0] <= 6'b000000;
end
endmodule 