module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,empty_9,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_161_out,min_p_161_out_ap_vld,grp_fu_253_p_din0,grp_fu_253_p_din1,grp_fu_253_p_opcode,grp_fu_253_p_dout0,grp_fu_253_p_ce,grp_fu_526_p_din0,grp_fu_526_p_din1,grp_fu_526_p_opcode,grp_fu_526_p_dout0,grp_fu_526_p_ce,grp_fu_530_p_din0,grp_fu_530_p_din1,grp_fu_530_p_opcode,grp_fu_530_p_dout0,grp_fu_530_p_ce); 
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
input  [63:0] min_p_4;
input  [7:0] empty_8;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [5:0] empty_9;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] empty;
output  [63:0] min_p_161_out;
output   min_p_161_out_ap_vld;
output  [63:0] grp_fu_253_p_din0;
output  [63:0] grp_fu_253_p_din1;
output  [1:0] grp_fu_253_p_opcode;
input  [63:0] grp_fu_253_p_dout0;
output   grp_fu_253_p_ce;
output  [63:0] grp_fu_526_p_din0;
output  [63:0] grp_fu_526_p_din1;
output  [1:0] grp_fu_526_p_opcode;
input  [63:0] grp_fu_526_p_dout0;
output   grp_fu_526_p_ce;
output  [63:0] grp_fu_530_p_din0;
output  [63:0] grp_fu_530_p_din1;
output  [4:0] grp_fu_530_p_opcode;
input  [0:0] grp_fu_530_p_dout0;
output   grp_fu_530_p_ce;
reg ap_idle;
reg min_p_161_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_69_reg_3045;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_468;
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
reg   [63:0] reg_472;
reg   [63:0] reg_476;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_482;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_488;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_494;
reg   [63:0] reg_500;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_506;
reg   [63:0] reg_512;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_518;
reg   [63:0] reg_524;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_530;
reg   [63:0] reg_536;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_542;
reg   [63:0] reg_548;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_2842;
wire   [4:0] lshr_ln7_1_fu_567_p4;
reg   [4:0] lshr_ln7_1_reg_2854;
wire   [5:0] add_ln25_1_fu_664_p2;
reg   [5:0] add_ln25_1_reg_2889;
reg   [63:0] llike_1_load_reg_2899;
wire   [11:0] shl_ln2_fu_693_p3;
reg   [11:0] shl_ln2_reg_2904;
reg   [63:0] llike_load_reg_2914;
reg   [63:0] llike_1_load_1_reg_2919;
reg   [63:0] llike_load_1_reg_2929;
wire   [5:0] add_ln25_2_fu_756_p2;
reg   [5:0] add_ln25_2_reg_2944;
wire   [5:0] add_ln25_3_fu_800_p2;
reg   [5:0] add_ln25_3_reg_2959;
wire   [63:0] bitcast_ln27_fu_830_p1;
wire   [63:0] bitcast_ln27_1_fu_835_p1;
reg   [63:0] llike_1_load_2_reg_2979;
reg   [63:0] llike_load_2_reg_2989;
reg   [63:0] llike_1_load_3_reg_2999;
reg   [63:0] llike_load_3_reg_3004;
wire   [5:0] add_ln25_4_fu_895_p2;
reg   [5:0] add_ln25_4_reg_3014;
wire   [5:0] add_ln25_5_fu_939_p2;
reg   [5:0] add_ln25_5_reg_3029;
wire   [6:0] add_ln25_7_fu_966_p2;
reg   [6:0] add_ln25_7_reg_3039;
reg   [0:0] tmp_69_reg_3045_pp0_iter1_reg;
wire   [63:0] bitcast_ln27_2_fu_980_p1;
wire   [63:0] bitcast_ln27_3_fu_985_p1;
reg   [63:0] llike_1_load_4_reg_3069;
reg   [63:0] llike_load_4_reg_3074;
reg   [63:0] llike_1_load_5_reg_3079;
reg   [63:0] llike_load_5_reg_3084;
wire   [5:0] add_ln25_6_fu_1045_p2;
reg   [5:0] add_ln25_6_reg_3094;
wire   [63:0] bitcast_ln27_4_fu_1112_p1;
wire   [63:0] bitcast_ln27_5_fu_1117_p1;
reg   [63:0] llike_1_load_6_reg_3134;
reg   [63:0] llike_load_6_reg_3139;
reg   [63:0] llike_1_load_7_reg_3144;
reg   [63:0] llike_load_7_reg_3149;
wire   [63:0] bitcast_ln27_6_fu_1160_p1;
wire   [63:0] bitcast_ln27_7_fu_1165_p1;
wire   [63:0] bitcast_ln27_8_fu_1208_p1;
wire   [63:0] bitcast_ln27_9_fu_1213_p1;
reg   [5:0] tmp_50_reg_3194;
wire   [63:0] bitcast_ln27_10_fu_1271_p1;
wire   [63:0] bitcast_ln27_11_fu_1276_p1;
wire   [63:0] bitcast_ln27_12_fu_1307_p1;
wire   [63:0] bitcast_ln27_13_fu_1312_p1;
wire   [63:0] bitcast_ln27_14_fu_1317_p1;
wire   [63:0] bitcast_ln27_15_fu_1322_p1;
reg   [63:0] add52_12_reg_3239;
reg   [63:0] add52_13_reg_3244;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] add52_14_reg_3249;
reg   [63:0] min_p_1_reg_3254;
wire   [0:0] and_ln29_1_fu_1408_p2;
reg   [0:0] and_ln29_1_reg_3261;
wire   [63:0] min_p_3_fu_1414_p3;
reg   [63:0] min_p_3_reg_3266;
wire   [0:0] and_ln29_3_fu_1498_p2;
reg   [0:0] and_ln29_3_reg_3273;
wire   [63:0] min_p_6_fu_1504_p3;
reg   [63:0] min_p_6_reg_3278;
wire   [0:0] and_ln29_5_fu_1588_p2;
reg   [0:0] and_ln29_5_reg_3285;
wire   [63:0] min_p_8_fu_1594_p3;
reg   [63:0] min_p_8_reg_3290;
reg   [63:0] p_15_reg_3297;
wire   [0:0] and_ln29_7_fu_1678_p2;
reg   [0:0] and_ln29_7_reg_3304;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_10_fu_1684_p3;
reg   [63:0] min_p_10_reg_3309;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [0:0] and_ln29_9_fu_1768_p2;
reg   [0:0] and_ln29_9_reg_3316;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_12_fu_1774_p3;
reg   [63:0] min_p_12_reg_3321;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln29_11_fu_1858_p2;
reg   [0:0] and_ln29_11_reg_3328;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_14_fu_1864_p3;
reg   [63:0] min_p_14_reg_3333;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [0:0] and_ln29_13_fu_1948_p2;
reg   [0:0] and_ln29_13_reg_3340;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_16_fu_1954_p3;
reg   [63:0] min_p_16_reg_3345;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln29_15_fu_2048_p2;
reg   [0:0] and_ln29_15_reg_3352;
wire   [63:0] min_p_18_fu_2054_p3;
reg   [63:0] min_p_18_reg_3357;
wire   [0:0] and_ln29_17_fu_2138_p2;
reg   [0:0] and_ln29_17_reg_3364;
wire   [63:0] min_p_20_fu_2144_p3;
reg   [63:0] min_p_20_reg_3369;
wire   [0:0] and_ln29_19_fu_2228_p2;
reg   [0:0] and_ln29_19_reg_3376;
wire   [63:0] min_p_22_fu_2234_p3;
reg   [63:0] min_p_22_reg_3381;
wire   [0:0] and_ln29_21_fu_2318_p2;
reg   [0:0] and_ln29_21_reg_3388;
wire   [63:0] min_p_24_fu_2324_p3;
reg   [63:0] min_p_24_reg_3393;
wire   [0:0] and_ln29_23_fu_2408_p2;
reg   [0:0] and_ln29_23_reg_3400;
wire   [63:0] min_p_26_fu_2414_p3;
reg   [63:0] min_p_26_reg_3405;
wire   [0:0] and_ln29_25_fu_2498_p2;
reg   [0:0] and_ln29_25_reg_3412;
wire   [63:0] min_p_28_fu_2504_p3;
reg   [63:0] min_p_28_reg_3417;
wire   [0:0] and_ln29_27_fu_2588_p2;
reg   [0:0] and_ln29_27_reg_3424;
wire   [63:0] min_p_30_fu_2594_p3;
reg   [63:0] min_p_30_reg_3429;
wire   [0:0] and_ln29_29_fu_2678_p2;
reg   [0:0] and_ln29_29_reg_3436;
wire   [63:0] min_p_32_fu_2684_p3;
reg   [63:0] min_p_32_reg_3441;
reg   [0:0] tmp_72_reg_3448;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage17_subdone;
wire   [63:0] zext_ln26_fu_585_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_598_p1;
wire   [63:0] zext_ln26_1_fu_627_p1;
wire   [63:0] zext_ln27_1_fu_640_p1;
wire   [63:0] zext_ln26_2_fu_659_p1;
wire   [63:0] zext_ln26_3_fu_688_p1;
wire   [63:0] zext_ln27_2_fu_723_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_734_p1;
wire   [63:0] zext_ln26_4_fu_751_p1;
wire   [63:0] zext_ln26_5_fu_778_p1;
wire   [63:0] zext_ln26_6_fu_795_p1;
wire   [63:0] zext_ln26_7_fu_822_p1;
wire   [63:0] zext_ln27_4_fu_862_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_873_p1;
wire   [63:0] zext_ln26_8_fu_890_p1;
wire   [63:0] zext_ln26_9_fu_917_p1;
wire   [63:0] zext_ln26_10_fu_934_p1;
wire   [63:0] zext_ln26_11_fu_961_p1;
wire   [63:0] zext_ln27_6_fu_1012_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1023_p1;
wire   [63:0] zext_ln26_12_fu_1040_p1;
wire   [63:0] zext_ln26_13_fu_1067_p1;
wire   [63:0] zext_ln26_14_fu_1084_p1;
wire   [63:0] zext_ln26_16_fu_1107_p1;
wire   [63:0] zext_ln27_8_fu_1144_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln27_9_fu_1155_p1;
wire   [63:0] zext_ln27_10_fu_1192_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln27_11_fu_1203_p1;
wire   [63:0] zext_ln27_12_fu_1240_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln27_13_fu_1251_p1;
wire   [63:0] zext_ln27_14_fu_1287_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln27_15_fu_1302_p1;
reg   [63:0] min_p_fu_128;
wire   [63:0] min_p_34_fu_2773_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage18;
reg   [5:0] prev_fu_132;
wire   [5:0] add_ln25_8_fu_1961_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_456_p0;
reg   [63:0] grp_fu_456_p1;
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
reg   [63:0] grp_fu_460_p0;
reg   [63:0] grp_fu_460_p1;
reg   [63:0] grp_fu_464_p0;
reg   [63:0] grp_fu_464_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [12:0] tmp_54_fu_577_p3;
wire   [11:0] add_ln_fu_590_p3;
wire   [5:0] add_ln25_fu_603_p2;
wire   [4:0] lshr_ln8_1_fu_609_p4;
wire   [12:0] tmp_55_fu_619_p3;
wire   [11:0] add_ln27_1_fu_632_p3;
wire   [4:0] add_ln8_fu_645_p2;
wire   [12:0] tmp_56_fu_651_p3;
wire   [4:0] lshr_ln8_2_fu_670_p4;
wire   [12:0] tmp_57_fu_680_p3;
wire   [11:0] add_ln27_fu_700_p2;
wire   [5:0] tmp_9_fu_706_p4;
wire   [11:0] add_ln27_3_fu_716_p3;
wire   [11:0] add_ln27_4_fu_728_p3;
wire   [4:0] add_ln8_1_fu_739_p2;
wire   [12:0] tmp_58_fu_744_p3;
wire   [4:0] lshr_ln8_3_fu_761_p4;
wire   [12:0] tmp_59_fu_771_p3;
wire   [4:0] add_ln8_2_fu_783_p2;
wire   [12:0] tmp_60_fu_788_p3;
wire   [4:0] lshr_ln8_4_fu_805_p4;
wire   [12:0] tmp_61_fu_815_p3;
wire   [11:0] add_ln27_2_fu_840_p2;
wire   [5:0] tmp_15_fu_845_p4;
wire   [11:0] add_ln27_6_fu_855_p3;
wire   [11:0] add_ln27_7_fu_867_p3;
wire   [4:0] add_ln8_3_fu_878_p2;
wire   [12:0] tmp_62_fu_883_p3;
wire   [4:0] lshr_ln8_5_fu_900_p4;
wire   [12:0] tmp_63_fu_910_p3;
wire   [4:0] add_ln8_4_fu_922_p2;
wire   [12:0] tmp_64_fu_927_p3;
wire   [4:0] lshr_ln8_6_fu_944_p4;
wire   [12:0] tmp_65_fu_954_p3;
wire   [6:0] zext_ln11_fu_827_p1;
wire   [11:0] add_ln27_5_fu_990_p2;
wire   [5:0] tmp_22_fu_995_p4;
wire   [11:0] add_ln27_9_fu_1005_p3;
wire   [11:0] add_ln27_s_fu_1017_p3;
wire   [4:0] add_ln8_5_fu_1028_p2;
wire   [12:0] tmp_66_fu_1033_p3;
wire   [4:0] lshr_ln8_7_fu_1050_p4;
wire   [12:0] tmp_67_fu_1060_p3;
wire   [4:0] add_ln8_6_fu_1072_p2;
wire   [12:0] tmp_68_fu_1077_p3;
wire   [5:0] lshr_ln8_8_fu_1089_p4;
wire   [12:0] zext_ln26_15_fu_1098_p1;
wire   [12:0] add_ln26_fu_1102_p2;
wire   [11:0] add_ln27_8_fu_1122_p2;
wire   [5:0] tmp_29_fu_1127_p4;
wire   [11:0] add_ln27_10_fu_1137_p3;
wire   [11:0] add_ln27_11_fu_1149_p3;
wire   [11:0] add_ln27_12_fu_1170_p2;
wire   [5:0] tmp_36_fu_1175_p4;
wire   [11:0] add_ln27_13_fu_1185_p3;
wire   [11:0] add_ln27_14_fu_1197_p3;
wire   [11:0] add_ln27_15_fu_1218_p2;
wire   [5:0] tmp_43_fu_1223_p4;
wire   [11:0] add_ln27_16_fu_1233_p3;
wire   [11:0] add_ln27_17_fu_1245_p3;
wire   [11:0] add_ln27_18_fu_1256_p2;
wire   [11:0] add_ln27_19_fu_1281_p3;
wire   [5:0] trunc_ln27_fu_1292_p1;
wire   [11:0] add_ln27_20_fu_1295_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln29_fu_1331_p1;
wire   [63:0] bitcast_ln29_1_fu_1349_p1;
wire   [10:0] tmp_3_fu_1335_p4;
wire   [51:0] trunc_ln29_fu_1345_p1;
wire   [0:0] icmp_ln29_1_fu_1372_p2;
wire   [0:0] icmp_ln29_fu_1366_p2;
wire   [10:0] tmp_4_fu_1352_p4;
wire   [51:0] trunc_ln29_1_fu_1362_p1;
wire   [0:0] icmp_ln29_3_fu_1390_p2;
wire   [0:0] icmp_ln29_2_fu_1384_p2;
wire   [0:0] or_ln29_fu_1378_p2;
wire   [0:0] and_ln29_fu_1402_p2;
wire   [0:0] or_ln29_1_fu_1396_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln29_2_fu_1421_p1;
wire   [63:0] bitcast_ln29_3_fu_1439_p1;
wire   [10:0] tmp_6_fu_1425_p4;
wire   [51:0] trunc_ln29_2_fu_1435_p1;
wire   [0:0] icmp_ln29_5_fu_1462_p2;
wire   [0:0] icmp_ln29_4_fu_1456_p2;
wire   [10:0] tmp_7_fu_1442_p4;
wire   [51:0] trunc_ln29_3_fu_1452_p1;
wire   [0:0] icmp_ln29_7_fu_1480_p2;
wire   [0:0] icmp_ln29_6_fu_1474_p2;
wire   [0:0] or_ln29_3_fu_1486_p2;
wire   [0:0] or_ln29_2_fu_1468_p2;
wire   [0:0] and_ln29_2_fu_1492_p2;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln29_4_fu_1511_p1;
wire   [63:0] bitcast_ln29_5_fu_1529_p1;
wire   [10:0] tmp_s_fu_1515_p4;
wire   [51:0] trunc_ln29_4_fu_1525_p1;
wire   [0:0] icmp_ln29_9_fu_1552_p2;
wire   [0:0] icmp_ln29_8_fu_1546_p2;
wire   [10:0] tmp_10_fu_1532_p4;
wire   [51:0] trunc_ln29_5_fu_1542_p1;
wire   [0:0] icmp_ln29_11_fu_1570_p2;
wire   [0:0] icmp_ln29_10_fu_1564_p2;
wire   [0:0] or_ln29_5_fu_1576_p2;
wire   [0:0] or_ln29_4_fu_1558_p2;
wire   [0:0] and_ln29_4_fu_1582_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln29_6_fu_1601_p1;
wire   [63:0] bitcast_ln29_7_fu_1619_p1;
wire   [10:0] tmp_12_fu_1605_p4;
wire   [51:0] trunc_ln29_6_fu_1615_p1;
wire   [0:0] icmp_ln29_13_fu_1642_p2;
wire   [0:0] icmp_ln29_12_fu_1636_p2;
wire   [10:0] tmp_13_fu_1622_p4;
wire   [51:0] trunc_ln29_7_fu_1632_p1;
wire   [0:0] icmp_ln29_15_fu_1660_p2;
wire   [0:0] icmp_ln29_14_fu_1654_p2;
wire   [0:0] or_ln29_7_fu_1666_p2;
wire   [0:0] or_ln29_6_fu_1648_p2;
wire   [0:0] and_ln29_6_fu_1672_p2;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln29_8_fu_1691_p1;
wire   [63:0] bitcast_ln29_9_fu_1709_p1;
wire   [10:0] tmp_16_fu_1695_p4;
wire   [51:0] trunc_ln29_8_fu_1705_p1;
wire   [0:0] icmp_ln29_17_fu_1732_p2;
wire   [0:0] icmp_ln29_16_fu_1726_p2;
wire   [10:0] tmp_17_fu_1712_p4;
wire   [51:0] trunc_ln29_9_fu_1722_p1;
wire   [0:0] icmp_ln29_19_fu_1750_p2;
wire   [0:0] icmp_ln29_18_fu_1744_p2;
wire   [0:0] or_ln29_9_fu_1756_p2;
wire   [0:0] or_ln29_8_fu_1738_p2;
wire   [0:0] and_ln29_8_fu_1762_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln29_10_fu_1781_p1;
wire   [63:0] bitcast_ln29_11_fu_1799_p1;
wire   [10:0] tmp_19_fu_1785_p4;
wire   [51:0] trunc_ln29_10_fu_1795_p1;
wire   [0:0] icmp_ln29_21_fu_1822_p2;
wire   [0:0] icmp_ln29_20_fu_1816_p2;
wire   [10:0] tmp_20_fu_1802_p4;
wire   [51:0] trunc_ln29_11_fu_1812_p1;
wire   [0:0] icmp_ln29_23_fu_1840_p2;
wire   [0:0] icmp_ln29_22_fu_1834_p2;
wire   [0:0] or_ln29_11_fu_1846_p2;
wire   [0:0] or_ln29_10_fu_1828_p2;
wire   [0:0] and_ln29_10_fu_1852_p2;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln29_12_fu_1871_p1;
wire   [63:0] bitcast_ln29_13_fu_1889_p1;
wire   [10:0] tmp_23_fu_1875_p4;
wire   [51:0] trunc_ln29_12_fu_1885_p1;
wire   [0:0] icmp_ln29_25_fu_1912_p2;
wire   [0:0] icmp_ln29_24_fu_1906_p2;
wire   [10:0] tmp_24_fu_1892_p4;
wire   [51:0] trunc_ln29_13_fu_1902_p1;
wire   [0:0] icmp_ln29_27_fu_1930_p2;
wire   [0:0] icmp_ln29_26_fu_1924_p2;
wire   [0:0] or_ln29_13_fu_1936_p2;
wire   [0:0] or_ln29_12_fu_1918_p2;
wire   [0:0] and_ln29_12_fu_1942_p2;
wire   [63:0] bitcast_ln29_14_fu_1971_p1;
wire   [63:0] bitcast_ln29_15_fu_1989_p1;
wire   [10:0] tmp_26_fu_1975_p4;
wire   [51:0] trunc_ln29_14_fu_1985_p1;
wire   [0:0] icmp_ln29_29_fu_2012_p2;
wire   [0:0] icmp_ln29_28_fu_2006_p2;
wire   [10:0] tmp_27_fu_1992_p4;
wire   [51:0] trunc_ln29_15_fu_2002_p1;
wire   [0:0] icmp_ln29_31_fu_2030_p2;
wire   [0:0] icmp_ln29_30_fu_2024_p2;
wire   [0:0] or_ln29_15_fu_2036_p2;
wire   [0:0] or_ln29_14_fu_2018_p2;
wire   [0:0] and_ln29_14_fu_2042_p2;
wire   [63:0] bitcast_ln29_16_fu_2061_p1;
wire   [63:0] bitcast_ln29_17_fu_2079_p1;
wire   [10:0] tmp_30_fu_2065_p4;
wire   [51:0] trunc_ln29_16_fu_2075_p1;
wire   [0:0] icmp_ln29_33_fu_2102_p2;
wire   [0:0] icmp_ln29_32_fu_2096_p2;
wire   [10:0] tmp_31_fu_2082_p4;
wire   [51:0] trunc_ln29_17_fu_2092_p1;
wire   [0:0] icmp_ln29_35_fu_2120_p2;
wire   [0:0] icmp_ln29_34_fu_2114_p2;
wire   [0:0] or_ln29_17_fu_2126_p2;
wire   [0:0] or_ln29_16_fu_2108_p2;
wire   [0:0] and_ln29_16_fu_2132_p2;
wire   [63:0] bitcast_ln29_18_fu_2151_p1;
wire   [63:0] bitcast_ln29_19_fu_2169_p1;
wire   [10:0] tmp_33_fu_2155_p4;
wire   [51:0] trunc_ln29_18_fu_2165_p1;
wire   [0:0] icmp_ln29_37_fu_2192_p2;
wire   [0:0] icmp_ln29_36_fu_2186_p2;
wire   [10:0] tmp_34_fu_2172_p4;
wire   [51:0] trunc_ln29_19_fu_2182_p1;
wire   [0:0] icmp_ln29_39_fu_2210_p2;
wire   [0:0] icmp_ln29_38_fu_2204_p2;
wire   [0:0] or_ln29_19_fu_2216_p2;
wire   [0:0] or_ln29_18_fu_2198_p2;
wire   [0:0] and_ln29_18_fu_2222_p2;
wire   [63:0] bitcast_ln29_20_fu_2241_p1;
wire   [63:0] bitcast_ln29_21_fu_2259_p1;
wire   [10:0] tmp_37_fu_2245_p4;
wire   [51:0] trunc_ln29_20_fu_2255_p1;
wire   [0:0] icmp_ln29_41_fu_2282_p2;
wire   [0:0] icmp_ln29_40_fu_2276_p2;
wire   [10:0] tmp_38_fu_2262_p4;
wire   [51:0] trunc_ln29_21_fu_2272_p1;
wire   [0:0] icmp_ln29_43_fu_2300_p2;
wire   [0:0] icmp_ln29_42_fu_2294_p2;
wire   [0:0] or_ln29_21_fu_2306_p2;
wire   [0:0] or_ln29_20_fu_2288_p2;
wire   [0:0] and_ln29_20_fu_2312_p2;
wire   [63:0] bitcast_ln29_22_fu_2331_p1;
wire   [63:0] bitcast_ln29_23_fu_2349_p1;
wire   [10:0] tmp_40_fu_2335_p4;
wire   [51:0] trunc_ln29_22_fu_2345_p1;
wire   [0:0] icmp_ln29_45_fu_2372_p2;
wire   [0:0] icmp_ln29_44_fu_2366_p2;
wire   [10:0] tmp_41_fu_2352_p4;
wire   [51:0] trunc_ln29_23_fu_2362_p1;
wire   [0:0] icmp_ln29_47_fu_2390_p2;
wire   [0:0] icmp_ln29_46_fu_2384_p2;
wire   [0:0] or_ln29_23_fu_2396_p2;
wire   [0:0] or_ln29_22_fu_2378_p2;
wire   [0:0] and_ln29_22_fu_2402_p2;
wire   [63:0] bitcast_ln29_24_fu_2421_p1;
wire   [63:0] bitcast_ln29_25_fu_2439_p1;
wire   [10:0] tmp_44_fu_2425_p4;
wire   [51:0] trunc_ln29_24_fu_2435_p1;
wire   [0:0] icmp_ln29_49_fu_2462_p2;
wire   [0:0] icmp_ln29_48_fu_2456_p2;
wire   [10:0] tmp_45_fu_2442_p4;
wire   [51:0] trunc_ln29_25_fu_2452_p1;
wire   [0:0] icmp_ln29_51_fu_2480_p2;
wire   [0:0] icmp_ln29_50_fu_2474_p2;
wire   [0:0] or_ln29_25_fu_2486_p2;
wire   [0:0] or_ln29_24_fu_2468_p2;
wire   [0:0] and_ln29_24_fu_2492_p2;
wire   [63:0] bitcast_ln29_26_fu_2511_p1;
wire   [63:0] bitcast_ln29_27_fu_2529_p1;
wire   [10:0] tmp_47_fu_2515_p4;
wire   [51:0] trunc_ln29_26_fu_2525_p1;
wire   [0:0] icmp_ln29_53_fu_2552_p2;
wire   [0:0] icmp_ln29_52_fu_2546_p2;
wire   [10:0] tmp_48_fu_2532_p4;
wire   [51:0] trunc_ln29_27_fu_2542_p1;
wire   [0:0] icmp_ln29_55_fu_2570_p2;
wire   [0:0] icmp_ln29_54_fu_2564_p2;
wire   [0:0] or_ln29_27_fu_2576_p2;
wire   [0:0] or_ln29_26_fu_2558_p2;
wire   [0:0] and_ln29_26_fu_2582_p2;
wire   [63:0] bitcast_ln29_28_fu_2601_p1;
wire   [63:0] bitcast_ln29_29_fu_2619_p1;
wire   [10:0] tmp_51_fu_2605_p4;
wire   [51:0] trunc_ln29_28_fu_2615_p1;
wire   [0:0] icmp_ln29_57_fu_2642_p2;
wire   [0:0] icmp_ln29_56_fu_2636_p2;
wire   [10:0] tmp_52_fu_2622_p4;
wire   [51:0] trunc_ln29_29_fu_2632_p1;
wire   [0:0] icmp_ln29_59_fu_2660_p2;
wire   [0:0] icmp_ln29_58_fu_2654_p2;
wire   [0:0] or_ln29_29_fu_2666_p2;
wire   [0:0] or_ln29_28_fu_2648_p2;
wire   [0:0] and_ln29_28_fu_2672_p2;
wire   [63:0] bitcast_ln29_30_fu_2692_p1;
wire   [63:0] bitcast_ln29_31_fu_2709_p1;
wire   [10:0] tmp_70_fu_2695_p4;
wire   [51:0] trunc_ln29_30_fu_2705_p1;
wire   [0:0] icmp_ln29_61_fu_2732_p2;
wire   [0:0] icmp_ln29_60_fu_2726_p2;
wire   [10:0] tmp_71_fu_2712_p4;
wire   [51:0] trunc_ln29_31_fu_2722_p1;
wire   [0:0] icmp_ln29_63_fu_2750_p2;
wire   [0:0] icmp_ln29_62_fu_2744_p2;
wire   [0:0] or_ln29_31_fu_2756_p2;
wire   [0:0] or_ln29_30_fu_2738_p2;
wire   [0:0] and_ln29_30_fu_2762_p2;
wire   [0:0] and_ln29_31_fu_2768_p2;
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
        min_p_fu_128 <= min_p_4;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_69_reg_3045_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        min_p_fu_128 <= min_p_34_fu_2773_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_132 <= 6'd1;
    end else if (((tmp_69_reg_3045 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        prev_fu_132 <= add_ln25_8_fu_1961_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add52_12_reg_3239 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_13_reg_3244 <= grp_fu_253_p_dout0;
        add52_14_reg_3249 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_2889 <= add_ln25_1_fu_664_p2;
        and_ln29_15_reg_3352 <= and_ln29_15_fu_2048_p2;
        lshr_ln7_1_reg_2854 <= {{ap_sig_allocacmp_prev_1[5:1]}};
        prev_1_reg_2842 <= ap_sig_allocacmp_prev_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_2_reg_2944 <= add_ln25_2_fu_756_p2;
        add_ln25_3_reg_2959 <= add_ln25_3_fu_800_p2;
        min_p_18_reg_3357 <= min_p_18_fu_2054_p3;
        shl_ln2_reg_2904[11 : 6] <= shl_ln2_fu_693_p3[11 : 6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln25_4_reg_3014 <= add_ln25_4_fu_895_p2;
        add_ln25_5_reg_3029 <= add_ln25_5_fu_939_p2;
        add_ln25_7_reg_3039 <= add_ln25_7_fu_966_p2;
        and_ln29_17_reg_3364 <= and_ln29_17_fu_2138_p2;
        tmp_69_reg_3045 <= add_ln25_7_fu_966_p2[32'd6];
        tmp_69_reg_3045_pp0_iter1_reg <= tmp_69_reg_3045;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln25_6_reg_3094 <= add_ln25_6_fu_1045_p2;
        min_p_20_reg_3369 <= min_p_20_fu_2144_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln29_11_reg_3328 <= and_ln29_11_fu_1858_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln29_13_reg_3340 <= and_ln29_13_fu_1948_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_19_reg_3376 <= and_ln29_19_fu_2228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln29_1_reg_3261 <= and_ln29_1_fu_1408_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_21_reg_3388 <= and_ln29_21_fu_2318_p2;
        tmp_50_reg_3194 <= {{add_ln27_18_fu_1256_p2[11:6]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_23_reg_3400 <= and_ln29_23_fu_2408_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_25_reg_3412 <= and_ln29_25_fu_2498_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_27_reg_3424 <= and_ln29_27_fu_2588_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_29_reg_3436 <= and_ln29_29_fu_2678_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln29_3_reg_3273 <= and_ln29_3_fu_1498_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln29_5_reg_3285 <= and_ln29_5_fu_1588_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln29_7_reg_3304 <= and_ln29_7_fu_1678_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln29_9_reg_3316 <= and_ln29_9_fu_1768_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2919 <= llike_1_q0;
        llike_1_load_reg_2899 <= llike_1_q1;
        llike_load_1_reg_2929 <= llike_q0;
        llike_load_reg_2914 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_2979 <= llike_1_q1;
        llike_1_load_3_reg_2999 <= llike_1_q0;
        llike_load_2_reg_2989 <= llike_q1;
        llike_load_3_reg_3004 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_load_4_reg_3069 <= llike_1_q1;
        llike_1_load_5_reg_3079 <= llike_1_q0;
        llike_load_4_reg_3074 <= llike_q1;
        llike_load_5_reg_3084 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_load_6_reg_3134 <= llike_1_q1;
        llike_1_load_7_reg_3144 <= llike_1_q0;
        llike_load_6_reg_3139 <= llike_q1;
        llike_load_7_reg_3149 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_10_reg_3309 <= min_p_10_fu_1684_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_12_reg_3321 <= min_p_12_fu_1774_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_14_reg_3333 <= min_p_14_fu_1864_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_16_reg_3345 <= min_p_16_fu_1954_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_1_reg_3254 <= min_p_fu_128;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_22_reg_3381 <= min_p_22_fu_2234_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_24_reg_3393 <= min_p_24_fu_2324_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_26_reg_3405 <= min_p_26_fu_2414_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_28_reg_3417 <= min_p_28_fu_2504_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_30_reg_3429 <= min_p_30_fu_2594_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_32_reg_3441 <= min_p_32_fu_2684_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_3_reg_3266 <= min_p_3_fu_1414_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_6_reg_3278 <= min_p_6_fu_1504_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_8_reg_3290 <= min_p_8_fu_1594_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        p_15_reg_3297 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_468 <= transition_q1;
        reg_472 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_476 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_482 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_488 <= grp_fu_253_p_dout0;
        reg_494 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_500 <= grp_fu_253_p_dout0;
        reg_506 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_512 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_518 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_524 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        reg_530 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_536 <= grp_fu_253_p_dout0;
        reg_542 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_548 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_72_reg_3448 <= grp_fu_530_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_69_reg_3045 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_69_reg_3045_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
            grp_fu_456_p0 = add52_13_reg_3244;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_456_p0 = reg_548;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_456_p0 = reg_536;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_456_p0 = reg_524;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_456_p0 = reg_512;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_456_p0 = reg_500;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_456_p0 = reg_488;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_456_p0 = reg_476;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_456_p0 = llike_1_load_7_reg_3144;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_456_p0 = llike_1_load_6_reg_3134;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_456_p0 = llike_1_load_5_reg_3079;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_456_p0 = llike_1_load_4_reg_3069;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_456_p0 = llike_1_load_3_reg_2999;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_456_p0 = llike_1_load_2_reg_2979;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_456_p0 = llike_1_load_1_reg_2919;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_456_p0 = llike_1_load_reg_2899;
        end else begin
            grp_fu_456_p0 = 'bx;
        end
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_456_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_456_p1 = bitcast_ln27_14_fu_1317_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_456_p1 = bitcast_ln27_12_fu_1307_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_456_p1 = bitcast_ln27_10_fu_1271_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_456_p1 = bitcast_ln27_8_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_456_p1 = bitcast_ln27_6_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_456_p1 = bitcast_ln27_4_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_456_p1 = bitcast_ln27_2_fu_980_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p1 = bitcast_ln27_fu_830_p1;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_460_p0 = add52_14_reg_3249;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_460_p0 = add52_12_reg_3239;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_460_p0 = reg_542;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_460_p0 = reg_530;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_460_p0 = reg_518;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_460_p0 = reg_506;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_460_p0 = reg_494;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_460_p0 = reg_482;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_460_p0 = llike_load_7_reg_3149;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_460_p0 = llike_load_6_reg_3139;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_460_p0 = llike_load_5_reg_3084;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_460_p0 = llike_load_4_reg_3074;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_460_p0 = llike_load_3_reg_3004;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_460_p0 = llike_load_2_reg_2989;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_460_p0 = llike_load_1_reg_2929;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_460_p0 = llike_load_reg_2914;
        end else begin
            grp_fu_460_p0 = 'bx;
        end
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_460_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_460_p1 = bitcast_ln27_15_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_460_p1 = bitcast_ln27_13_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_460_p1 = bitcast_ln27_11_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_460_p1 = bitcast_ln27_9_fu_1213_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_460_p1 = bitcast_ln27_7_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_460_p1 = bitcast_ln27_5_fu_1117_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_p1 = bitcast_ln27_3_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_460_p1 = bitcast_ln27_1_fu_835_p1;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_464_p0 = p_15_reg_3297;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_464_p0 = reg_548;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_464_p0 = reg_542;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_464_p0 = reg_536;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_464_p0 = reg_524;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_464_p0 = reg_530;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p0 = reg_512;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_464_p0 = reg_518;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_464_p0 = reg_506;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_464_p0 = reg_500;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_464_p0 = reg_494;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_464_p0 = reg_488;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_464_p0 = reg_482;
    end else if ((((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_464_p0 = reg_476;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_464_p1 = min_p_32_fu_2684_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_464_p1 = min_p_30_fu_2594_p3;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_464_p1 = min_p_28_fu_2504_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_464_p1 = min_p_26_fu_2414_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_464_p1 = min_p_24_fu_2324_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_464_p1 = min_p_22_fu_2234_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_464_p1 = min_p_20_fu_2144_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p1 = min_p_18_fu_2054_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_464_p1 = min_p_16_fu_1954_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_464_p1 = min_p_14_fu_1864_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_464_p1 = min_p_12_fu_1774_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_464_p1 = min_p_10_fu_1684_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_464_p1 = min_p_8_fu_1594_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_464_p1 = min_p_6_fu_1504_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_464_p1 = min_p_3_fu_1414_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_464_p1 = min_p_fu_128;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_1_address0_local = zext_ln26_14_fu_1084_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_1_address0_local = zext_ln26_10_fu_934_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_6_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_659_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_1_address1_local = zext_ln26_12_fu_1040_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_1_address1_local = zext_ln26_8_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln26_4_fu_751_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_585_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address0_local = zext_ln26_16_fu_1107_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address0_local = zext_ln26_11_fu_961_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_7_fu_822_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_3_fu_688_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address1_local = zext_ln26_13_fu_1067_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address1_local = zext_ln26_9_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln26_5_fu_778_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_627_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_69_reg_3045_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_161_out_ap_vld = 1'b1;
    end else begin
        min_p_161_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address0_local = zext_ln27_15_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address0_local = zext_ln27_13_fu_1251_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address0_local = zext_ln27_11_fu_1203_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address0_local = zext_ln27_9_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln27_7_fu_1023_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln27_5_fu_873_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_640_p1;
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
            transition_address1_local = zext_ln27_14_fu_1287_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address1_local = zext_ln27_12_fu_1240_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address1_local = zext_ln27_10_fu_1192_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln27_8_fu_1144_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln27_6_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln27_4_fu_862_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_723_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_598_p1;
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
assign add_ln25_1_fu_664_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln25_2_fu_756_p2 = (prev_1_reg_2842 + 6'd5);
assign add_ln25_3_fu_800_p2 = (prev_1_reg_2842 + 6'd7);
assign add_ln25_4_fu_895_p2 = (prev_1_reg_2842 + 6'd9);
assign add_ln25_5_fu_939_p2 = (prev_1_reg_2842 + 6'd11);
assign add_ln25_6_fu_1045_p2 = (prev_1_reg_2842 + 6'd13);
assign add_ln25_7_fu_966_p2 = (zext_ln11_fu_827_p1 + 7'd15);
assign add_ln25_8_fu_1961_p2 = (prev_1_reg_2842 + 6'd16);
assign add_ln25_fu_603_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_1102_p2 = (empty + zext_ln26_15_fu_1098_p1);
assign add_ln27_10_fu_1137_p3 = {{tmp_29_fu_1127_p4}, {empty_9}};
assign add_ln27_11_fu_1149_p3 = {{add_ln25_4_reg_3014}, {empty_9}};
assign add_ln27_12_fu_1170_p2 = (shl_ln2_reg_2904 + 12'd640);
assign add_ln27_13_fu_1185_p3 = {{tmp_36_fu_1175_p4}, {empty_9}};
assign add_ln27_14_fu_1197_p3 = {{add_ln25_5_reg_3029}, {empty_9}};
assign add_ln27_15_fu_1218_p2 = (shl_ln2_reg_2904 + 12'd768);
assign add_ln27_16_fu_1233_p3 = {{tmp_43_fu_1223_p4}, {empty_9}};
assign add_ln27_17_fu_1245_p3 = {{add_ln25_6_reg_3094}, {empty_9}};
assign add_ln27_18_fu_1256_p2 = (shl_ln2_reg_2904 + 12'd896);
assign add_ln27_19_fu_1281_p3 = {{tmp_50_reg_3194}, {empty_9}};
assign add_ln27_1_fu_632_p3 = {{add_ln25_fu_603_p2}, {empty_9}};
assign add_ln27_20_fu_1295_p3 = {{trunc_ln27_fu_1292_p1}, {empty_9}};
assign add_ln27_2_fu_840_p2 = (shl_ln2_reg_2904 + 12'd256);
assign add_ln27_3_fu_716_p3 = {{tmp_9_fu_706_p4}, {empty_9}};
assign add_ln27_4_fu_728_p3 = {{add_ln25_1_reg_2889}, {empty_9}};
assign add_ln27_5_fu_990_p2 = (shl_ln2_reg_2904 + 12'd384);
assign add_ln27_6_fu_855_p3 = {{tmp_15_fu_845_p4}, {empty_9}};
assign add_ln27_7_fu_867_p3 = {{add_ln25_2_reg_2944}, {empty_9}};
assign add_ln27_8_fu_1122_p2 = (shl_ln2_reg_2904 + 12'd512);
assign add_ln27_9_fu_1005_p3 = {{tmp_22_fu_995_p4}, {empty_9}};
assign add_ln27_fu_700_p2 = (shl_ln2_fu_693_p3 + 12'd128);
assign add_ln27_s_fu_1017_p3 = {{add_ln25_3_reg_2959}, {empty_9}};
assign add_ln8_1_fu_739_p2 = (lshr_ln7_1_reg_2854 + 5'd2);
assign add_ln8_2_fu_783_p2 = (lshr_ln7_1_reg_2854 + 5'd3);
assign add_ln8_3_fu_878_p2 = (lshr_ln7_1_reg_2854 + 5'd4);
assign add_ln8_4_fu_922_p2 = (lshr_ln7_1_reg_2854 + 5'd5);
assign add_ln8_5_fu_1028_p2 = (lshr_ln7_1_reg_2854 + 5'd6);
assign add_ln8_6_fu_1072_p2 = (lshr_ln7_1_reg_2854 + 5'd7);
assign add_ln8_fu_645_p2 = (lshr_ln7_1_fu_567_p4 + 5'd1);
assign add_ln_fu_590_p3 = {{ap_sig_allocacmp_prev_1}, {empty_9}};
assign and_ln29_10_fu_1852_p2 = (or_ln29_11_fu_1846_p2 & or_ln29_10_fu_1828_p2);
assign and_ln29_11_fu_1858_p2 = (grp_fu_530_p_dout0 & and_ln29_10_fu_1852_p2);
assign and_ln29_12_fu_1942_p2 = (or_ln29_13_fu_1936_p2 & or_ln29_12_fu_1918_p2);
assign and_ln29_13_fu_1948_p2 = (grp_fu_530_p_dout0 & and_ln29_12_fu_1942_p2);
assign and_ln29_14_fu_2042_p2 = (or_ln29_15_fu_2036_p2 & or_ln29_14_fu_2018_p2);
assign and_ln29_15_fu_2048_p2 = (grp_fu_530_p_dout0 & and_ln29_14_fu_2042_p2);
assign and_ln29_16_fu_2132_p2 = (or_ln29_17_fu_2126_p2 & or_ln29_16_fu_2108_p2);
assign and_ln29_17_fu_2138_p2 = (grp_fu_530_p_dout0 & and_ln29_16_fu_2132_p2);
assign and_ln29_18_fu_2222_p2 = (or_ln29_19_fu_2216_p2 & or_ln29_18_fu_2198_p2);
assign and_ln29_19_fu_2228_p2 = (grp_fu_530_p_dout0 & and_ln29_18_fu_2222_p2);
assign and_ln29_1_fu_1408_p2 = (or_ln29_1_fu_1396_p2 & and_ln29_fu_1402_p2);
assign and_ln29_20_fu_2312_p2 = (or_ln29_21_fu_2306_p2 & or_ln29_20_fu_2288_p2);
assign and_ln29_21_fu_2318_p2 = (grp_fu_530_p_dout0 & and_ln29_20_fu_2312_p2);
assign and_ln29_22_fu_2402_p2 = (or_ln29_23_fu_2396_p2 & or_ln29_22_fu_2378_p2);
assign and_ln29_23_fu_2408_p2 = (grp_fu_530_p_dout0 & and_ln29_22_fu_2402_p2);
assign and_ln29_24_fu_2492_p2 = (or_ln29_25_fu_2486_p2 & or_ln29_24_fu_2468_p2);
assign and_ln29_25_fu_2498_p2 = (grp_fu_530_p_dout0 & and_ln29_24_fu_2492_p2);
assign and_ln29_26_fu_2582_p2 = (or_ln29_27_fu_2576_p2 & or_ln29_26_fu_2558_p2);
assign and_ln29_27_fu_2588_p2 = (grp_fu_530_p_dout0 & and_ln29_26_fu_2582_p2);
assign and_ln29_28_fu_2672_p2 = (or_ln29_29_fu_2666_p2 & or_ln29_28_fu_2648_p2);
assign and_ln29_29_fu_2678_p2 = (grp_fu_530_p_dout0 & and_ln29_28_fu_2672_p2);
assign and_ln29_2_fu_1492_p2 = (or_ln29_3_fu_1486_p2 & or_ln29_2_fu_1468_p2);
assign and_ln29_30_fu_2762_p2 = (or_ln29_31_fu_2756_p2 & or_ln29_30_fu_2738_p2);
assign and_ln29_31_fu_2768_p2 = (tmp_72_reg_3448 & and_ln29_30_fu_2762_p2);
assign and_ln29_3_fu_1498_p2 = (grp_fu_530_p_dout0 & and_ln29_2_fu_1492_p2);
assign and_ln29_4_fu_1582_p2 = (or_ln29_5_fu_1576_p2 & or_ln29_4_fu_1558_p2);
assign and_ln29_5_fu_1588_p2 = (grp_fu_530_p_dout0 & and_ln29_4_fu_1582_p2);
assign and_ln29_6_fu_1672_p2 = (or_ln29_7_fu_1666_p2 & or_ln29_6_fu_1648_p2);
assign and_ln29_7_fu_1678_p2 = (grp_fu_530_p_dout0 & and_ln29_6_fu_1672_p2);
assign and_ln29_8_fu_1762_p2 = (or_ln29_9_fu_1756_p2 & or_ln29_8_fu_1738_p2);
assign and_ln29_9_fu_1768_p2 = (grp_fu_530_p_dout0 & and_ln29_8_fu_1762_p2);
assign and_ln29_fu_1402_p2 = (or_ln29_fu_1378_p2 & grp_fu_530_p_dout0);
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
assign bitcast_ln27_10_fu_1271_p1 = reg_468;
assign bitcast_ln27_11_fu_1276_p1 = reg_472;
assign bitcast_ln27_12_fu_1307_p1 = reg_468;
assign bitcast_ln27_13_fu_1312_p1 = reg_472;
assign bitcast_ln27_14_fu_1317_p1 = reg_468;
assign bitcast_ln27_15_fu_1322_p1 = reg_472;
assign bitcast_ln27_1_fu_835_p1 = reg_472;
assign bitcast_ln27_2_fu_980_p1 = reg_468;
assign bitcast_ln27_3_fu_985_p1 = reg_472;
assign bitcast_ln27_4_fu_1112_p1 = reg_468;
assign bitcast_ln27_5_fu_1117_p1 = reg_472;
assign bitcast_ln27_6_fu_1160_p1 = reg_468;
assign bitcast_ln27_7_fu_1165_p1 = reg_472;
assign bitcast_ln27_8_fu_1208_p1 = reg_468;
assign bitcast_ln27_9_fu_1213_p1 = reg_472;
assign bitcast_ln27_fu_830_p1 = reg_468;
assign bitcast_ln29_10_fu_1781_p1 = reg_506;
assign bitcast_ln29_11_fu_1799_p1 = min_p_12_reg_3321;
assign bitcast_ln29_12_fu_1871_p1 = reg_476;
assign bitcast_ln29_13_fu_1889_p1 = min_p_14_reg_3333;
assign bitcast_ln29_14_fu_1971_p1 = reg_518;
assign bitcast_ln29_15_fu_1989_p1 = min_p_16_reg_3345;
assign bitcast_ln29_16_fu_2061_p1 = reg_512;
assign bitcast_ln29_17_fu_2079_p1 = min_p_18_reg_3357;
assign bitcast_ln29_18_fu_2151_p1 = reg_530;
assign bitcast_ln29_19_fu_2169_p1 = min_p_20_reg_3369;
assign bitcast_ln29_1_fu_1349_p1 = min_p_1_reg_3254;
assign bitcast_ln29_20_fu_2241_p1 = reg_524;
assign bitcast_ln29_21_fu_2259_p1 = min_p_22_reg_3381;
assign bitcast_ln29_22_fu_2331_p1 = reg_482;
assign bitcast_ln29_23_fu_2349_p1 = min_p_24_reg_3393;
assign bitcast_ln29_24_fu_2421_p1 = reg_536;
assign bitcast_ln29_25_fu_2439_p1 = min_p_26_reg_3405;
assign bitcast_ln29_26_fu_2511_p1 = reg_542;
assign bitcast_ln29_27_fu_2529_p1 = min_p_28_reg_3417;
assign bitcast_ln29_28_fu_2601_p1 = reg_548;
assign bitcast_ln29_29_fu_2619_p1 = min_p_30_reg_3429;
assign bitcast_ln29_2_fu_1421_p1 = reg_482;
assign bitcast_ln29_30_fu_2692_p1 = p_15_reg_3297;
assign bitcast_ln29_31_fu_2709_p1 = min_p_32_reg_3441;
assign bitcast_ln29_3_fu_1439_p1 = min_p_3_reg_3266;
assign bitcast_ln29_4_fu_1511_p1 = reg_488;
assign bitcast_ln29_5_fu_1529_p1 = min_p_6_reg_3278;
assign bitcast_ln29_6_fu_1601_p1 = reg_494;
assign bitcast_ln29_7_fu_1619_p1 = min_p_8_reg_3290;
assign bitcast_ln29_8_fu_1691_p1 = reg_500;
assign bitcast_ln29_9_fu_1709_p1 = min_p_10_reg_3309;
assign bitcast_ln29_fu_1331_p1 = reg_476;
assign grp_fu_253_p_ce = 1'b1;
assign grp_fu_253_p_din0 = grp_fu_456_p0;
assign grp_fu_253_p_din1 = grp_fu_456_p1;
assign grp_fu_253_p_opcode = 2'd0;
assign grp_fu_526_p_ce = 1'b1;
assign grp_fu_526_p_din0 = grp_fu_460_p0;
assign grp_fu_526_p_din1 = grp_fu_460_p1;
assign grp_fu_526_p_opcode = 2'd0;
assign grp_fu_530_p_ce = 1'b1;
assign grp_fu_530_p_din0 = grp_fu_464_p0;
assign grp_fu_530_p_din1 = grp_fu_464_p1;
assign grp_fu_530_p_opcode = 5'd4;
assign icmp_ln29_10_fu_1564_p2 = ((tmp_10_fu_1532_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1570_p2 = ((trunc_ln29_5_fu_1542_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1636_p2 = ((tmp_12_fu_1605_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1642_p2 = ((trunc_ln29_6_fu_1615_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1654_p2 = ((tmp_13_fu_1622_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1660_p2 = ((trunc_ln29_7_fu_1632_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1726_p2 = ((tmp_16_fu_1695_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1732_p2 = ((trunc_ln29_8_fu_1705_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1744_p2 = ((tmp_17_fu_1712_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1750_p2 = ((trunc_ln29_9_fu_1722_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1372_p2 = ((trunc_ln29_fu_1345_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1816_p2 = ((tmp_19_fu_1785_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1822_p2 = ((trunc_ln29_10_fu_1795_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1834_p2 = ((tmp_20_fu_1802_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1840_p2 = ((trunc_ln29_11_fu_1812_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1906_p2 = ((tmp_23_fu_1875_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1912_p2 = ((trunc_ln29_12_fu_1885_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1924_p2 = ((tmp_24_fu_1892_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1930_p2 = ((trunc_ln29_13_fu_1902_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2006_p2 = ((tmp_26_fu_1975_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2012_p2 = ((trunc_ln29_14_fu_1985_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1384_p2 = ((tmp_4_fu_1352_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2024_p2 = ((tmp_27_fu_1992_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2030_p2 = ((trunc_ln29_15_fu_2002_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_32_fu_2096_p2 = ((tmp_30_fu_2065_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_33_fu_2102_p2 = ((trunc_ln29_16_fu_2075_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_34_fu_2114_p2 = ((tmp_31_fu_2082_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_35_fu_2120_p2 = ((trunc_ln29_17_fu_2092_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_36_fu_2186_p2 = ((tmp_33_fu_2155_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_37_fu_2192_p2 = ((trunc_ln29_18_fu_2165_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_38_fu_2204_p2 = ((tmp_34_fu_2172_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_39_fu_2210_p2 = ((trunc_ln29_19_fu_2182_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1390_p2 = ((trunc_ln29_1_fu_1362_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_40_fu_2276_p2 = ((tmp_37_fu_2245_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_41_fu_2282_p2 = ((trunc_ln29_20_fu_2255_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_42_fu_2294_p2 = ((tmp_38_fu_2262_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_43_fu_2300_p2 = ((trunc_ln29_21_fu_2272_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_44_fu_2366_p2 = ((tmp_40_fu_2335_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_45_fu_2372_p2 = ((trunc_ln29_22_fu_2345_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_46_fu_2384_p2 = ((tmp_41_fu_2352_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_47_fu_2390_p2 = ((trunc_ln29_23_fu_2362_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_48_fu_2456_p2 = ((tmp_44_fu_2425_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_49_fu_2462_p2 = ((trunc_ln29_24_fu_2435_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1456_p2 = ((tmp_6_fu_1425_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_50_fu_2474_p2 = ((tmp_45_fu_2442_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_51_fu_2480_p2 = ((trunc_ln29_25_fu_2452_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_52_fu_2546_p2 = ((tmp_47_fu_2515_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_53_fu_2552_p2 = ((trunc_ln29_26_fu_2525_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_54_fu_2564_p2 = ((tmp_48_fu_2532_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_55_fu_2570_p2 = ((trunc_ln29_27_fu_2542_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_56_fu_2636_p2 = ((tmp_51_fu_2605_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_57_fu_2642_p2 = ((trunc_ln29_28_fu_2615_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_58_fu_2654_p2 = ((tmp_52_fu_2622_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_59_fu_2660_p2 = ((trunc_ln29_29_fu_2632_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1462_p2 = ((trunc_ln29_2_fu_1435_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_60_fu_2726_p2 = ((tmp_70_fu_2695_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_61_fu_2732_p2 = ((trunc_ln29_30_fu_2705_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_62_fu_2744_p2 = ((tmp_71_fu_2712_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_63_fu_2750_p2 = ((trunc_ln29_31_fu_2722_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1474_p2 = ((tmp_7_fu_1442_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1480_p2 = ((trunc_ln29_3_fu_1452_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1546_p2 = ((tmp_s_fu_1515_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1552_p2 = ((trunc_ln29_4_fu_1525_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1366_p2 = ((tmp_3_fu_1335_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln7_1_fu_567_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_1_fu_609_p4 = {{add_ln25_fu_603_p2[5:1]}};
assign lshr_ln8_2_fu_670_p4 = {{add_ln25_1_fu_664_p2[5:1]}};
assign lshr_ln8_3_fu_761_p4 = {{add_ln25_2_fu_756_p2[5:1]}};
assign lshr_ln8_4_fu_805_p4 = {{add_ln25_3_fu_800_p2[5:1]}};
assign lshr_ln8_5_fu_900_p4 = {{add_ln25_4_fu_895_p2[5:1]}};
assign lshr_ln8_6_fu_944_p4 = {{add_ln25_5_fu_939_p2[5:1]}};
assign lshr_ln8_7_fu_1050_p4 = {{add_ln25_6_fu_1045_p2[5:1]}};
assign lshr_ln8_8_fu_1089_p4 = {{add_ln25_7_reg_3039[6:1]}};
assign min_p_10_fu_1684_p3 = ((and_ln29_7_reg_3304[0:0] == 1'b1) ? reg_494 : min_p_8_reg_3290);
assign min_p_12_fu_1774_p3 = ((and_ln29_9_reg_3316[0:0] == 1'b1) ? reg_500 : min_p_10_reg_3309);
assign min_p_14_fu_1864_p3 = ((and_ln29_11_reg_3328[0:0] == 1'b1) ? reg_506 : min_p_12_reg_3321);
assign min_p_161_out = ((and_ln29_29_reg_3436[0:0] == 1'b1) ? reg_548 : min_p_30_reg_3429);
assign min_p_16_fu_1954_p3 = ((and_ln29_13_reg_3340[0:0] == 1'b1) ? reg_476 : min_p_14_reg_3333);
assign min_p_18_fu_2054_p3 = ((and_ln29_15_reg_3352[0:0] == 1'b1) ? reg_518 : min_p_16_reg_3345);
assign min_p_20_fu_2144_p3 = ((and_ln29_17_reg_3364[0:0] == 1'b1) ? reg_512 : min_p_18_reg_3357);
assign min_p_22_fu_2234_p3 = ((and_ln29_19_reg_3376[0:0] == 1'b1) ? reg_530 : min_p_20_reg_3369);
assign min_p_24_fu_2324_p3 = ((and_ln29_21_reg_3388[0:0] == 1'b1) ? reg_524 : min_p_22_reg_3381);
assign min_p_26_fu_2414_p3 = ((and_ln29_23_reg_3400[0:0] == 1'b1) ? reg_482 : min_p_24_reg_3393);
assign min_p_28_fu_2504_p3 = ((and_ln29_25_reg_3412[0:0] == 1'b1) ? reg_536 : min_p_26_reg_3405);
assign min_p_30_fu_2594_p3 = ((and_ln29_27_reg_3424[0:0] == 1'b1) ? reg_542 : min_p_28_reg_3417);
assign min_p_32_fu_2684_p3 = ((and_ln29_29_reg_3436[0:0] == 1'b1) ? reg_548 : min_p_30_reg_3429);
assign min_p_34_fu_2773_p3 = ((and_ln29_31_fu_2768_p2[0:0] == 1'b1) ? p_15_reg_3297 : min_p_32_reg_3441);
assign min_p_3_fu_1414_p3 = ((and_ln29_1_reg_3261[0:0] == 1'b1) ? reg_476 : min_p_1_reg_3254);
assign min_p_6_fu_1504_p3 = ((and_ln29_3_reg_3273[0:0] == 1'b1) ? reg_482 : min_p_3_reg_3266);
assign min_p_8_fu_1594_p3 = ((and_ln29_5_reg_3285[0:0] == 1'b1) ? reg_488 : min_p_6_reg_3278);
assign or_ln29_10_fu_1828_p2 = (icmp_ln29_21_fu_1822_p2 | icmp_ln29_20_fu_1816_p2);
assign or_ln29_11_fu_1846_p2 = (icmp_ln29_23_fu_1840_p2 | icmp_ln29_22_fu_1834_p2);
assign or_ln29_12_fu_1918_p2 = (icmp_ln29_25_fu_1912_p2 | icmp_ln29_24_fu_1906_p2);
assign or_ln29_13_fu_1936_p2 = (icmp_ln29_27_fu_1930_p2 | icmp_ln29_26_fu_1924_p2);
assign or_ln29_14_fu_2018_p2 = (icmp_ln29_29_fu_2012_p2 | icmp_ln29_28_fu_2006_p2);
assign or_ln29_15_fu_2036_p2 = (icmp_ln29_31_fu_2030_p2 | icmp_ln29_30_fu_2024_p2);
assign or_ln29_16_fu_2108_p2 = (icmp_ln29_33_fu_2102_p2 | icmp_ln29_32_fu_2096_p2);
assign or_ln29_17_fu_2126_p2 = (icmp_ln29_35_fu_2120_p2 | icmp_ln29_34_fu_2114_p2);
assign or_ln29_18_fu_2198_p2 = (icmp_ln29_37_fu_2192_p2 | icmp_ln29_36_fu_2186_p2);
assign or_ln29_19_fu_2216_p2 = (icmp_ln29_39_fu_2210_p2 | icmp_ln29_38_fu_2204_p2);
assign or_ln29_1_fu_1396_p2 = (icmp_ln29_3_fu_1390_p2 | icmp_ln29_2_fu_1384_p2);
assign or_ln29_20_fu_2288_p2 = (icmp_ln29_41_fu_2282_p2 | icmp_ln29_40_fu_2276_p2);
assign or_ln29_21_fu_2306_p2 = (icmp_ln29_43_fu_2300_p2 | icmp_ln29_42_fu_2294_p2);
assign or_ln29_22_fu_2378_p2 = (icmp_ln29_45_fu_2372_p2 | icmp_ln29_44_fu_2366_p2);
assign or_ln29_23_fu_2396_p2 = (icmp_ln29_47_fu_2390_p2 | icmp_ln29_46_fu_2384_p2);
assign or_ln29_24_fu_2468_p2 = (icmp_ln29_49_fu_2462_p2 | icmp_ln29_48_fu_2456_p2);
assign or_ln29_25_fu_2486_p2 = (icmp_ln29_51_fu_2480_p2 | icmp_ln29_50_fu_2474_p2);
assign or_ln29_26_fu_2558_p2 = (icmp_ln29_53_fu_2552_p2 | icmp_ln29_52_fu_2546_p2);
assign or_ln29_27_fu_2576_p2 = (icmp_ln29_55_fu_2570_p2 | icmp_ln29_54_fu_2564_p2);
assign or_ln29_28_fu_2648_p2 = (icmp_ln29_57_fu_2642_p2 | icmp_ln29_56_fu_2636_p2);
assign or_ln29_29_fu_2666_p2 = (icmp_ln29_59_fu_2660_p2 | icmp_ln29_58_fu_2654_p2);
assign or_ln29_2_fu_1468_p2 = (icmp_ln29_5_fu_1462_p2 | icmp_ln29_4_fu_1456_p2);
assign or_ln29_30_fu_2738_p2 = (icmp_ln29_61_fu_2732_p2 | icmp_ln29_60_fu_2726_p2);
assign or_ln29_31_fu_2756_p2 = (icmp_ln29_63_fu_2750_p2 | icmp_ln29_62_fu_2744_p2);
assign or_ln29_3_fu_1486_p2 = (icmp_ln29_7_fu_1480_p2 | icmp_ln29_6_fu_1474_p2);
assign or_ln29_4_fu_1558_p2 = (icmp_ln29_9_fu_1552_p2 | icmp_ln29_8_fu_1546_p2);
assign or_ln29_5_fu_1576_p2 = (icmp_ln29_11_fu_1570_p2 | icmp_ln29_10_fu_1564_p2);
assign or_ln29_6_fu_1648_p2 = (icmp_ln29_13_fu_1642_p2 | icmp_ln29_12_fu_1636_p2);
assign or_ln29_7_fu_1666_p2 = (icmp_ln29_15_fu_1660_p2 | icmp_ln29_14_fu_1654_p2);
assign or_ln29_8_fu_1738_p2 = (icmp_ln29_17_fu_1732_p2 | icmp_ln29_16_fu_1726_p2);
assign or_ln29_9_fu_1756_p2 = (icmp_ln29_19_fu_1750_p2 | icmp_ln29_18_fu_1744_p2);
assign or_ln29_fu_1378_p2 = (icmp_ln29_fu_1366_p2 | icmp_ln29_1_fu_1372_p2);
assign shl_ln2_fu_693_p3 = {{prev_1_reg_2842}, {6'd0}};
assign tmp_10_fu_1532_p4 = {{bitcast_ln29_5_fu_1529_p1[62:52]}};
assign tmp_12_fu_1605_p4 = {{bitcast_ln29_6_fu_1601_p1[62:52]}};
assign tmp_13_fu_1622_p4 = {{bitcast_ln29_7_fu_1619_p1[62:52]}};
assign tmp_15_fu_845_p4 = {{add_ln27_2_fu_840_p2[11:6]}};
assign tmp_16_fu_1695_p4 = {{bitcast_ln29_8_fu_1691_p1[62:52]}};
assign tmp_17_fu_1712_p4 = {{bitcast_ln29_9_fu_1709_p1[62:52]}};
assign tmp_19_fu_1785_p4 = {{bitcast_ln29_10_fu_1781_p1[62:52]}};
assign tmp_20_fu_1802_p4 = {{bitcast_ln29_11_fu_1799_p1[62:52]}};
assign tmp_22_fu_995_p4 = {{add_ln27_5_fu_990_p2[11:6]}};
assign tmp_23_fu_1875_p4 = {{bitcast_ln29_12_fu_1871_p1[62:52]}};
assign tmp_24_fu_1892_p4 = {{bitcast_ln29_13_fu_1889_p1[62:52]}};
assign tmp_26_fu_1975_p4 = {{bitcast_ln29_14_fu_1971_p1[62:52]}};
assign tmp_27_fu_1992_p4 = {{bitcast_ln29_15_fu_1989_p1[62:52]}};
assign tmp_29_fu_1127_p4 = {{add_ln27_8_fu_1122_p2[11:6]}};
assign tmp_30_fu_2065_p4 = {{bitcast_ln29_16_fu_2061_p1[62:52]}};
assign tmp_31_fu_2082_p4 = {{bitcast_ln29_17_fu_2079_p1[62:52]}};
assign tmp_33_fu_2155_p4 = {{bitcast_ln29_18_fu_2151_p1[62:52]}};
assign tmp_34_fu_2172_p4 = {{bitcast_ln29_19_fu_2169_p1[62:52]}};
assign tmp_36_fu_1175_p4 = {{add_ln27_12_fu_1170_p2[11:6]}};
assign tmp_37_fu_2245_p4 = {{bitcast_ln29_20_fu_2241_p1[62:52]}};
assign tmp_38_fu_2262_p4 = {{bitcast_ln29_21_fu_2259_p1[62:52]}};
assign tmp_3_fu_1335_p4 = {{bitcast_ln29_fu_1331_p1[62:52]}};
assign tmp_40_fu_2335_p4 = {{bitcast_ln29_22_fu_2331_p1[62:52]}};
assign tmp_41_fu_2352_p4 = {{bitcast_ln29_23_fu_2349_p1[62:52]}};
assign tmp_43_fu_1223_p4 = {{add_ln27_15_fu_1218_p2[11:6]}};
assign tmp_44_fu_2425_p4 = {{bitcast_ln29_24_fu_2421_p1[62:52]}};
assign tmp_45_fu_2442_p4 = {{bitcast_ln29_25_fu_2439_p1[62:52]}};
assign tmp_47_fu_2515_p4 = {{bitcast_ln29_26_fu_2511_p1[62:52]}};
assign tmp_48_fu_2532_p4 = {{bitcast_ln29_27_fu_2529_p1[62:52]}};
assign tmp_4_fu_1352_p4 = {{bitcast_ln29_1_fu_1349_p1[62:52]}};
assign tmp_51_fu_2605_p4 = {{bitcast_ln29_28_fu_2601_p1[62:52]}};
assign tmp_52_fu_2622_p4 = {{bitcast_ln29_29_fu_2619_p1[62:52]}};
assign tmp_54_fu_577_p3 = {{empty_8}, {lshr_ln7_1_fu_567_p4}};
assign tmp_55_fu_619_p3 = {{empty_8}, {lshr_ln8_1_fu_609_p4}};
assign tmp_56_fu_651_p3 = {{empty_8}, {add_ln8_fu_645_p2}};
assign tmp_57_fu_680_p3 = {{empty_8}, {lshr_ln8_2_fu_670_p4}};
assign tmp_58_fu_744_p3 = {{empty_8}, {add_ln8_1_fu_739_p2}};
assign tmp_59_fu_771_p3 = {{empty_8}, {lshr_ln8_3_fu_761_p4}};
assign tmp_60_fu_788_p3 = {{empty_8}, {add_ln8_2_fu_783_p2}};
assign tmp_61_fu_815_p3 = {{empty_8}, {lshr_ln8_4_fu_805_p4}};
assign tmp_62_fu_883_p3 = {{empty_8}, {add_ln8_3_fu_878_p2}};
assign tmp_63_fu_910_p3 = {{empty_8}, {lshr_ln8_5_fu_900_p4}};
assign tmp_64_fu_927_p3 = {{empty_8}, {add_ln8_4_fu_922_p2}};
assign tmp_65_fu_954_p3 = {{empty_8}, {lshr_ln8_6_fu_944_p4}};
assign tmp_66_fu_1033_p3 = {{empty_8}, {add_ln8_5_fu_1028_p2}};
assign tmp_67_fu_1060_p3 = {{empty_8}, {lshr_ln8_7_fu_1050_p4}};
assign tmp_68_fu_1077_p3 = {{empty_8}, {add_ln8_6_fu_1072_p2}};
assign tmp_6_fu_1425_p4 = {{bitcast_ln29_2_fu_1421_p1[62:52]}};
assign tmp_70_fu_2695_p4 = {{bitcast_ln29_30_fu_2692_p1[62:52]}};
assign tmp_71_fu_2712_p4 = {{bitcast_ln29_31_fu_2709_p1[62:52]}};
assign tmp_7_fu_1442_p4 = {{bitcast_ln29_3_fu_1439_p1[62:52]}};
assign tmp_9_fu_706_p4 = {{add_ln27_fu_700_p2[11:6]}};
assign tmp_s_fu_1515_p4 = {{bitcast_ln29_4_fu_1511_p1[62:52]}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_1292_p1 = add_ln25_7_reg_3039[5:0];
assign trunc_ln29_10_fu_1795_p1 = bitcast_ln29_10_fu_1781_p1[51:0];
assign trunc_ln29_11_fu_1812_p1 = bitcast_ln29_11_fu_1799_p1[51:0];
assign trunc_ln29_12_fu_1885_p1 = bitcast_ln29_12_fu_1871_p1[51:0];
assign trunc_ln29_13_fu_1902_p1 = bitcast_ln29_13_fu_1889_p1[51:0];
assign trunc_ln29_14_fu_1985_p1 = bitcast_ln29_14_fu_1971_p1[51:0];
assign trunc_ln29_15_fu_2002_p1 = bitcast_ln29_15_fu_1989_p1[51:0];
assign trunc_ln29_16_fu_2075_p1 = bitcast_ln29_16_fu_2061_p1[51:0];
assign trunc_ln29_17_fu_2092_p1 = bitcast_ln29_17_fu_2079_p1[51:0];
assign trunc_ln29_18_fu_2165_p1 = bitcast_ln29_18_fu_2151_p1[51:0];
assign trunc_ln29_19_fu_2182_p1 = bitcast_ln29_19_fu_2169_p1[51:0];
assign trunc_ln29_1_fu_1362_p1 = bitcast_ln29_1_fu_1349_p1[51:0];
assign trunc_ln29_20_fu_2255_p1 = bitcast_ln29_20_fu_2241_p1[51:0];
assign trunc_ln29_21_fu_2272_p1 = bitcast_ln29_21_fu_2259_p1[51:0];
assign trunc_ln29_22_fu_2345_p1 = bitcast_ln29_22_fu_2331_p1[51:0];
assign trunc_ln29_23_fu_2362_p1 = bitcast_ln29_23_fu_2349_p1[51:0];
assign trunc_ln29_24_fu_2435_p1 = bitcast_ln29_24_fu_2421_p1[51:0];
assign trunc_ln29_25_fu_2452_p1 = bitcast_ln29_25_fu_2439_p1[51:0];
assign trunc_ln29_26_fu_2525_p1 = bitcast_ln29_26_fu_2511_p1[51:0];
assign trunc_ln29_27_fu_2542_p1 = bitcast_ln29_27_fu_2529_p1[51:0];
assign trunc_ln29_28_fu_2615_p1 = bitcast_ln29_28_fu_2601_p1[51:0];
assign trunc_ln29_29_fu_2632_p1 = bitcast_ln29_29_fu_2619_p1[51:0];
assign trunc_ln29_2_fu_1435_p1 = bitcast_ln29_2_fu_1421_p1[51:0];
assign trunc_ln29_30_fu_2705_p1 = bitcast_ln29_30_fu_2692_p1[51:0];
assign trunc_ln29_31_fu_2722_p1 = bitcast_ln29_31_fu_2709_p1[51:0];
assign trunc_ln29_3_fu_1452_p1 = bitcast_ln29_3_fu_1439_p1[51:0];
assign trunc_ln29_4_fu_1525_p1 = bitcast_ln29_4_fu_1511_p1[51:0];
assign trunc_ln29_5_fu_1542_p1 = bitcast_ln29_5_fu_1529_p1[51:0];
assign trunc_ln29_6_fu_1615_p1 = bitcast_ln29_6_fu_1601_p1[51:0];
assign trunc_ln29_7_fu_1632_p1 = bitcast_ln29_7_fu_1619_p1[51:0];
assign trunc_ln29_8_fu_1705_p1 = bitcast_ln29_8_fu_1691_p1[51:0];
assign trunc_ln29_9_fu_1722_p1 = bitcast_ln29_9_fu_1709_p1[51:0];
assign trunc_ln29_fu_1345_p1 = bitcast_ln29_fu_1331_p1[51:0];
assign zext_ln11_fu_827_p1 = prev_1_reg_2842;
assign zext_ln26_10_fu_934_p1 = tmp_64_fu_927_p3;
assign zext_ln26_11_fu_961_p1 = tmp_65_fu_954_p3;
assign zext_ln26_12_fu_1040_p1 = tmp_66_fu_1033_p3;
assign zext_ln26_13_fu_1067_p1 = tmp_67_fu_1060_p3;
assign zext_ln26_14_fu_1084_p1 = tmp_68_fu_1077_p3;
assign zext_ln26_15_fu_1098_p1 = lshr_ln8_8_fu_1089_p4;
assign zext_ln26_16_fu_1107_p1 = add_ln26_fu_1102_p2;
assign zext_ln26_1_fu_627_p1 = tmp_55_fu_619_p3;
assign zext_ln26_2_fu_659_p1 = tmp_56_fu_651_p3;
assign zext_ln26_3_fu_688_p1 = tmp_57_fu_680_p3;
assign zext_ln26_4_fu_751_p1 = tmp_58_fu_744_p3;
assign zext_ln26_5_fu_778_p1 = tmp_59_fu_771_p3;
assign zext_ln26_6_fu_795_p1 = tmp_60_fu_788_p3;
assign zext_ln26_7_fu_822_p1 = tmp_61_fu_815_p3;
assign zext_ln26_8_fu_890_p1 = tmp_62_fu_883_p3;
assign zext_ln26_9_fu_917_p1 = tmp_63_fu_910_p3;
assign zext_ln26_fu_585_p1 = tmp_54_fu_577_p3;
assign zext_ln27_10_fu_1192_p1 = add_ln27_13_fu_1185_p3;
assign zext_ln27_11_fu_1203_p1 = add_ln27_14_fu_1197_p3;
assign zext_ln27_12_fu_1240_p1 = add_ln27_16_fu_1233_p3;
assign zext_ln27_13_fu_1251_p1 = add_ln27_17_fu_1245_p3;
assign zext_ln27_14_fu_1287_p1 = add_ln27_19_fu_1281_p3;
assign zext_ln27_15_fu_1302_p1 = add_ln27_20_fu_1295_p3;
assign zext_ln27_1_fu_640_p1 = add_ln27_1_fu_632_p3;
assign zext_ln27_2_fu_723_p1 = add_ln27_3_fu_716_p3;
assign zext_ln27_3_fu_734_p1 = add_ln27_4_fu_728_p3;
assign zext_ln27_4_fu_862_p1 = add_ln27_6_fu_855_p3;
assign zext_ln27_5_fu_873_p1 = add_ln27_7_fu_867_p3;
assign zext_ln27_6_fu_1012_p1 = add_ln27_9_fu_1005_p3;
assign zext_ln27_7_fu_1023_p1 = add_ln27_s_fu_1017_p3;
assign zext_ln27_8_fu_1144_p1 = add_ln27_10_fu_1137_p3;
assign zext_ln27_9_fu_1155_p1 = add_ln27_11_fu_1149_p3;
assign zext_ln27_fu_598_p1 = add_ln_fu_590_p3;
always @ (posedge ap_clk) begin
    shl_ln2_reg_2904[5:0] <= 6'b000000;
end
endmodule 