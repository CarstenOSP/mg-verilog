module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_18,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,empty,llike_address0,llike_ce0,llike_q0,min_p_50_out,min_p_50_out_ap_vld,grp_fu_717_p_din0,grp_fu_717_p_din1,grp_fu_717_p_opcode,grp_fu_717_p_dout0,grp_fu_717_p_ce,grp_fu_1338_p_din0,grp_fu_1338_p_din1,grp_fu_1338_p_opcode,grp_fu_1338_p_dout0,grp_fu_1338_p_ce,grp_fu_1342_p_din0,grp_fu_1342_p_din1,grp_fu_1342_p_opcode,grp_fu_1342_p_dout0,grp_fu_1342_p_ce); 
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
input  [4:0] lshr_ln;
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
input  [0:0] empty_10;
input  [63:0] bitcast_ln24;
input  [9:0] empty;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_50_out;
output   min_p_50_out_ap_vld;
output  [63:0] grp_fu_717_p_din0;
output  [63:0] grp_fu_717_p_din1;
output  [1:0] grp_fu_717_p_opcode;
input  [63:0] grp_fu_717_p_dout0;
output   grp_fu_717_p_ce;
output  [63:0] grp_fu_1338_p_din0;
output  [63:0] grp_fu_1338_p_din1;
output  [1:0] grp_fu_1338_p_opcode;
input  [63:0] grp_fu_1338_p_dout0;
output   grp_fu_1338_p_ce;
output  [63:0] grp_fu_1342_p_din0;
output  [63:0] grp_fu_1342_p_din1;
output  [4:0] grp_fu_1342_p_opcode;
input  [0:0] grp_fu_1342_p_dout0;
output   grp_fu_1342_p_ce;
reg ap_idle;
reg min_p_50_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_33_reg_3028;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_697_p3;
reg   [63:0] reg_711;
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
wire   [63:0] grp_fu_704_p3;
reg   [63:0] reg_715;
reg   [63:0] reg_719;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_725;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_731;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_737;
reg   [63:0] reg_743;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_749;
reg   [63:0] reg_755;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_761;
reg   [63:0] reg_767;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_773;
reg   [63:0] reg_779;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_785;
reg   [63:0] reg_791;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_2905;
wire   [10:0] shl_ln1_fu_851_p3;
reg   [10:0] shl_ln1_reg_2985;
wire   [6:0] add_ln25_fu_903_p2;
reg   [6:0] add_ln25_reg_3022;
reg   [0:0] tmp_33_reg_3028_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3032;
reg   [63:0] llike_2_load_reg_3037;
reg   [63:0] llike_3_load_reg_3042;
reg   [63:0] llike_4_load_reg_3057;
reg   [63:0] llike_5_load_reg_3072;
reg   [63:0] llike_6_load_reg_3077;
reg   [63:0] llike_7_load_reg_3082;
reg   [63:0] llike_8_load_reg_3087;
reg   [63:0] llike_9_load_reg_3092;
reg   [63:0] llike_10_load_reg_3097;
reg   [63:0] llike_11_load_reg_3102;
reg   [63:0] llike_12_load_reg_3107;
reg   [63:0] llike_13_load_reg_3112;
reg   [63:0] llike_14_load_reg_3117;
reg   [63:0] llike_15_load_reg_3122;
wire   [63:0] bitcast_ln27_fu_996_p1;
wire   [63:0] bitcast_ln27_1_fu_1001_p1;
reg   [63:0] llike_load_reg_3162;
wire   [63:0] bitcast_ln27_2_fu_1062_p1;
wire   [63:0] bitcast_ln27_3_fu_1067_p1;
wire   [63:0] bitcast_ln27_4_fu_1128_p1;
wire   [63:0] bitcast_ln27_5_fu_1133_p1;
wire   [63:0] bitcast_ln27_6_fu_1194_p1;
wire   [63:0] bitcast_ln27_7_fu_1199_p1;
wire   [63:0] bitcast_ln27_8_fu_1260_p1;
wire   [63:0] bitcast_ln27_9_fu_1265_p1;
reg   [5:0] tmp_89_reg_3287;
wire   [63:0] bitcast_ln27_10_fu_1341_p1;
wire   [63:0] bitcast_ln27_11_fu_1346_p1;
wire   [63:0] bitcast_ln27_12_fu_1379_p1;
wire   [63:0] bitcast_ln27_13_fu_1384_p1;
wire   [63:0] bitcast_ln27_14_fu_1389_p1;
wire   [63:0] bitcast_ln27_15_fu_1394_p1;
reg   [63:0] add52_12_reg_3342;
reg   [63:0] add52_13_reg_3347;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] add52_14_reg_3352;
reg   [63:0] min_p_19_reg_3357;
wire   [0:0] and_ln29_1_fu_1480_p2;
reg   [0:0] and_ln29_1_reg_3364;
wire   [63:0] min_p_21_fu_1486_p3;
reg   [63:0] min_p_21_reg_3369;
wire   [0:0] and_ln29_3_fu_1570_p2;
reg   [0:0] and_ln29_3_reg_3376;
wire   [63:0] min_p_23_fu_1576_p3;
reg   [63:0] min_p_23_reg_3381;
wire   [0:0] and_ln29_5_fu_1660_p2;
reg   [0:0] and_ln29_5_reg_3388;
wire   [63:0] min_p_25_fu_1666_p3;
reg   [63:0] min_p_25_reg_3393;
reg   [63:0] p_22_reg_3400;
wire   [0:0] and_ln29_7_fu_1750_p2;
reg   [0:0] and_ln29_7_reg_3407;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_27_fu_1756_p3;
reg   [63:0] min_p_27_reg_3412;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [0:0] and_ln29_9_fu_1840_p2;
reg   [0:0] and_ln29_9_reg_3419;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_29_fu_1846_p3;
reg   [63:0] min_p_29_reg_3424;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln29_11_fu_1930_p2;
reg   [0:0] and_ln29_11_reg_3431;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_31_fu_1936_p3;
reg   [63:0] min_p_31_reg_3436;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [0:0] and_ln29_13_fu_2020_p2;
reg   [0:0] and_ln29_13_reg_3443;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_33_fu_2026_p3;
reg   [63:0] min_p_33_reg_3448;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln29_15_fu_2120_p2;
reg   [0:0] and_ln29_15_reg_3455;
wire   [63:0] min_p_35_fu_2126_p3;
reg   [63:0] min_p_35_reg_3460;
wire   [0:0] and_ln29_17_fu_2210_p2;
reg   [0:0] and_ln29_17_reg_3467;
wire   [63:0] min_p_37_fu_2216_p3;
reg   [63:0] min_p_37_reg_3472;
wire   [0:0] and_ln29_19_fu_2300_p2;
reg   [0:0] and_ln29_19_reg_3479;
wire   [63:0] min_p_39_fu_2306_p3;
reg   [63:0] min_p_39_reg_3484;
wire   [0:0] and_ln29_21_fu_2390_p2;
reg   [0:0] and_ln29_21_reg_3491;
wire   [63:0] min_p_41_fu_2396_p3;
reg   [63:0] min_p_41_reg_3496;
wire   [0:0] and_ln29_23_fu_2480_p2;
reg   [0:0] and_ln29_23_reg_3503;
wire   [63:0] min_p_43_fu_2486_p3;
reg   [63:0] min_p_43_reg_3508;
wire   [0:0] and_ln29_25_fu_2570_p2;
reg   [0:0] and_ln29_25_reg_3515;
wire   [63:0] min_p_45_fu_2576_p3;
reg   [63:0] min_p_45_reg_3520;
wire   [0:0] and_ln29_27_fu_2660_p2;
reg   [0:0] and_ln29_27_reg_3527;
wire   [63:0] min_p_47_fu_2666_p3;
reg   [63:0] min_p_47_reg_3532;
wire   [0:0] and_ln29_29_fu_2750_p2;
reg   [0:0] and_ln29_29_reg_3539;
wire   [63:0] min_p_49_fu_2756_p3;
reg   [63:0] min_p_49_reg_3544;
reg   [0:0] tmp_95_reg_3551;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage17_subdone;
wire   [63:0] zext_ln26_fu_832_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_867_p1;
wire   [63:0] zext_ln27_1_fu_897_p1;
wire   [63:0] zext_ln27_2_fu_939_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_967_p1;
wire   [63:0] zext_ln26_2_fu_991_p1;
wire   [63:0] zext_ln27_4_fu_1028_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1056_p1;
wire   [63:0] zext_ln27_6_fu_1094_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1122_p1;
wire   [63:0] zext_ln27_8_fu_1160_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln27_9_fu_1188_p1;
wire   [63:0] zext_ln27_10_fu_1226_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln27_11_fu_1254_p1;
wire   [63:0] zext_ln27_12_fu_1292_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln27_13_fu_1320_p1;
wire   [63:0] zext_ln27_14_fu_1357_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln27_15_fu_1373_p1;
reg   [63:0] min_p_fu_152;
wire   [63:0] min_p_51_fu_2845_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage18;
reg   [5:0] prev_fu_156;
wire   [5:0] add_ln25_1_fu_2033_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
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
reg   [63:0] grp_fu_685_p0;
reg   [63:0] grp_fu_685_p1;
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
reg   [63:0] grp_fu_689_p0;
reg   [63:0] grp_fu_689_p1;
reg   [63:0] grp_fu_693_p0;
reg   [63:0] grp_fu_693_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [1:0] lshr_ln7_1_fu_814_p4;
wire   [9:0] tmp_s_fu_824_p3;
wire   [10:0] add_ln_fu_859_p3;
wire   [10:0] add_ln27_fu_873_p2;
wire   [5:0] tmp_37_fu_879_p4;
wire   [10:0] add_ln27_2_fu_889_p3;
wire   [6:0] zext_ln16_fu_810_p1;
wire   [10:0] add_ln27_1_fu_917_p2;
wire   [5:0] tmp_41_fu_922_p4;
wire   [10:0] add_ln27_4_fu_932_p3;
wire   [10:0] add_ln27_3_fu_945_p2;
wire   [5:0] tmp_45_fu_950_p4;
wire   [10:0] add_ln27_6_fu_960_p3;
wire   [2:0] lshr_ln8_1_fu_973_p4;
wire   [9:0] zext_ln26_1_fu_982_p1;
wire   [9:0] add_ln26_fu_986_p2;
wire   [10:0] add_ln27_5_fu_1006_p2;
wire   [5:0] tmp_49_fu_1011_p4;
wire   [10:0] add_ln27_8_fu_1021_p3;
wire   [10:0] add_ln27_7_fu_1034_p2;
wire   [5:0] tmp_53_fu_1039_p4;
wire   [10:0] add_ln27_s_fu_1049_p3;
wire   [10:0] add_ln27_9_fu_1072_p2;
wire   [5:0] tmp_57_fu_1077_p4;
wire   [10:0] add_ln27_10_fu_1087_p3;
wire   [10:0] add_ln27_11_fu_1100_p2;
wire   [5:0] tmp_61_fu_1105_p4;
wire   [10:0] add_ln27_12_fu_1115_p3;
wire   [10:0] add_ln27_13_fu_1138_p2;
wire   [5:0] tmp_65_fu_1143_p4;
wire   [10:0] add_ln27_14_fu_1153_p3;
wire   [10:0] add_ln27_15_fu_1166_p2;
wire   [5:0] tmp_69_fu_1171_p4;
wire   [10:0] add_ln27_16_fu_1181_p3;
wire   [10:0] add_ln27_17_fu_1204_p2;
wire   [5:0] tmp_73_fu_1209_p4;
wire   [10:0] add_ln27_18_fu_1219_p3;
wire   [10:0] add_ln27_19_fu_1232_p2;
wire   [5:0] tmp_77_fu_1237_p4;
wire   [10:0] add_ln27_20_fu_1247_p3;
wire   [10:0] add_ln27_21_fu_1270_p2;
wire   [5:0] tmp_81_fu_1275_p4;
wire   [10:0] add_ln27_22_fu_1285_p3;
wire   [10:0] add_ln27_23_fu_1298_p2;
wire   [5:0] tmp_85_fu_1303_p4;
wire   [10:0] add_ln27_24_fu_1313_p3;
wire   [10:0] add_ln27_25_fu_1326_p2;
wire   [10:0] add_ln27_26_fu_1351_p3;
wire   [5:0] trunc_ln27_fu_1363_p1;
wire   [10:0] add_ln27_27_fu_1366_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln29_fu_1403_p1;
wire   [63:0] bitcast_ln29_1_fu_1421_p1;
wire   [10:0] tmp_34_fu_1407_p4;
wire   [51:0] trunc_ln29_fu_1417_p1;
wire   [0:0] icmp_ln29_1_fu_1444_p2;
wire   [0:0] icmp_ln29_fu_1438_p2;
wire   [10:0] tmp_35_fu_1424_p4;
wire   [51:0] trunc_ln29_1_fu_1434_p1;
wire   [0:0] icmp_ln29_3_fu_1462_p2;
wire   [0:0] icmp_ln29_2_fu_1456_p2;
wire   [0:0] or_ln29_fu_1450_p2;
wire   [0:0] and_ln29_fu_1474_p2;
wire   [0:0] or_ln29_1_fu_1468_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln29_2_fu_1493_p1;
wire   [63:0] bitcast_ln29_3_fu_1511_p1;
wire   [10:0] tmp_38_fu_1497_p4;
wire   [51:0] trunc_ln29_2_fu_1507_p1;
wire   [0:0] icmp_ln29_5_fu_1534_p2;
wire   [0:0] icmp_ln29_4_fu_1528_p2;
wire   [10:0] tmp_39_fu_1514_p4;
wire   [51:0] trunc_ln29_3_fu_1524_p1;
wire   [0:0] icmp_ln29_7_fu_1552_p2;
wire   [0:0] icmp_ln29_6_fu_1546_p2;
wire   [0:0] or_ln29_3_fu_1558_p2;
wire   [0:0] or_ln29_2_fu_1540_p2;
wire   [0:0] and_ln29_2_fu_1564_p2;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln29_4_fu_1583_p1;
wire   [63:0] bitcast_ln29_5_fu_1601_p1;
wire   [10:0] tmp_42_fu_1587_p4;
wire   [51:0] trunc_ln29_4_fu_1597_p1;
wire   [0:0] icmp_ln29_9_fu_1624_p2;
wire   [0:0] icmp_ln29_8_fu_1618_p2;
wire   [10:0] tmp_43_fu_1604_p4;
wire   [51:0] trunc_ln29_5_fu_1614_p1;
wire   [0:0] icmp_ln29_11_fu_1642_p2;
wire   [0:0] icmp_ln29_10_fu_1636_p2;
wire   [0:0] or_ln29_5_fu_1648_p2;
wire   [0:0] or_ln29_4_fu_1630_p2;
wire   [0:0] and_ln29_4_fu_1654_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln29_6_fu_1673_p1;
wire   [63:0] bitcast_ln29_7_fu_1691_p1;
wire   [10:0] tmp_46_fu_1677_p4;
wire   [51:0] trunc_ln29_6_fu_1687_p1;
wire   [0:0] icmp_ln29_13_fu_1714_p2;
wire   [0:0] icmp_ln29_12_fu_1708_p2;
wire   [10:0] tmp_47_fu_1694_p4;
wire   [51:0] trunc_ln29_7_fu_1704_p1;
wire   [0:0] icmp_ln29_15_fu_1732_p2;
wire   [0:0] icmp_ln29_14_fu_1726_p2;
wire   [0:0] or_ln29_7_fu_1738_p2;
wire   [0:0] or_ln29_6_fu_1720_p2;
wire   [0:0] and_ln29_6_fu_1744_p2;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln29_8_fu_1763_p1;
wire   [63:0] bitcast_ln29_9_fu_1781_p1;
wire   [10:0] tmp_50_fu_1767_p4;
wire   [51:0] trunc_ln29_8_fu_1777_p1;
wire   [0:0] icmp_ln29_17_fu_1804_p2;
wire   [0:0] icmp_ln29_16_fu_1798_p2;
wire   [10:0] tmp_51_fu_1784_p4;
wire   [51:0] trunc_ln29_9_fu_1794_p1;
wire   [0:0] icmp_ln29_19_fu_1822_p2;
wire   [0:0] icmp_ln29_18_fu_1816_p2;
wire   [0:0] or_ln29_9_fu_1828_p2;
wire   [0:0] or_ln29_8_fu_1810_p2;
wire   [0:0] and_ln29_8_fu_1834_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln29_10_fu_1853_p1;
wire   [63:0] bitcast_ln29_11_fu_1871_p1;
wire   [10:0] tmp_54_fu_1857_p4;
wire   [51:0] trunc_ln29_10_fu_1867_p1;
wire   [0:0] icmp_ln29_21_fu_1894_p2;
wire   [0:0] icmp_ln29_20_fu_1888_p2;
wire   [10:0] tmp_55_fu_1874_p4;
wire   [51:0] trunc_ln29_11_fu_1884_p1;
wire   [0:0] icmp_ln29_23_fu_1912_p2;
wire   [0:0] icmp_ln29_22_fu_1906_p2;
wire   [0:0] or_ln29_11_fu_1918_p2;
wire   [0:0] or_ln29_10_fu_1900_p2;
wire   [0:0] and_ln29_10_fu_1924_p2;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln29_12_fu_1943_p1;
wire   [63:0] bitcast_ln29_13_fu_1961_p1;
wire   [10:0] tmp_58_fu_1947_p4;
wire   [51:0] trunc_ln29_12_fu_1957_p1;
wire   [0:0] icmp_ln29_25_fu_1984_p2;
wire   [0:0] icmp_ln29_24_fu_1978_p2;
wire   [10:0] tmp_59_fu_1964_p4;
wire   [51:0] trunc_ln29_13_fu_1974_p1;
wire   [0:0] icmp_ln29_27_fu_2002_p2;
wire   [0:0] icmp_ln29_26_fu_1996_p2;
wire   [0:0] or_ln29_13_fu_2008_p2;
wire   [0:0] or_ln29_12_fu_1990_p2;
wire   [0:0] and_ln29_12_fu_2014_p2;
wire   [63:0] bitcast_ln29_14_fu_2043_p1;
wire   [63:0] bitcast_ln29_15_fu_2061_p1;
wire   [10:0] tmp_62_fu_2047_p4;
wire   [51:0] trunc_ln29_14_fu_2057_p1;
wire   [0:0] icmp_ln29_29_fu_2084_p2;
wire   [0:0] icmp_ln29_28_fu_2078_p2;
wire   [10:0] tmp_63_fu_2064_p4;
wire   [51:0] trunc_ln29_15_fu_2074_p1;
wire   [0:0] icmp_ln29_31_fu_2102_p2;
wire   [0:0] icmp_ln29_30_fu_2096_p2;
wire   [0:0] or_ln29_15_fu_2108_p2;
wire   [0:0] or_ln29_14_fu_2090_p2;
wire   [0:0] and_ln29_14_fu_2114_p2;
wire   [63:0] bitcast_ln29_16_fu_2133_p1;
wire   [63:0] bitcast_ln29_17_fu_2151_p1;
wire   [10:0] tmp_66_fu_2137_p4;
wire   [51:0] trunc_ln29_16_fu_2147_p1;
wire   [0:0] icmp_ln29_33_fu_2174_p2;
wire   [0:0] icmp_ln29_32_fu_2168_p2;
wire   [10:0] tmp_67_fu_2154_p4;
wire   [51:0] trunc_ln29_17_fu_2164_p1;
wire   [0:0] icmp_ln29_35_fu_2192_p2;
wire   [0:0] icmp_ln29_34_fu_2186_p2;
wire   [0:0] or_ln29_17_fu_2198_p2;
wire   [0:0] or_ln29_16_fu_2180_p2;
wire   [0:0] and_ln29_16_fu_2204_p2;
wire   [63:0] bitcast_ln29_18_fu_2223_p1;
wire   [63:0] bitcast_ln29_19_fu_2241_p1;
wire   [10:0] tmp_70_fu_2227_p4;
wire   [51:0] trunc_ln29_18_fu_2237_p1;
wire   [0:0] icmp_ln29_37_fu_2264_p2;
wire   [0:0] icmp_ln29_36_fu_2258_p2;
wire   [10:0] tmp_71_fu_2244_p4;
wire   [51:0] trunc_ln29_19_fu_2254_p1;
wire   [0:0] icmp_ln29_39_fu_2282_p2;
wire   [0:0] icmp_ln29_38_fu_2276_p2;
wire   [0:0] or_ln29_19_fu_2288_p2;
wire   [0:0] or_ln29_18_fu_2270_p2;
wire   [0:0] and_ln29_18_fu_2294_p2;
wire   [63:0] bitcast_ln29_20_fu_2313_p1;
wire   [63:0] bitcast_ln29_21_fu_2331_p1;
wire   [10:0] tmp_74_fu_2317_p4;
wire   [51:0] trunc_ln29_20_fu_2327_p1;
wire   [0:0] icmp_ln29_41_fu_2354_p2;
wire   [0:0] icmp_ln29_40_fu_2348_p2;
wire   [10:0] tmp_75_fu_2334_p4;
wire   [51:0] trunc_ln29_21_fu_2344_p1;
wire   [0:0] icmp_ln29_43_fu_2372_p2;
wire   [0:0] icmp_ln29_42_fu_2366_p2;
wire   [0:0] or_ln29_21_fu_2378_p2;
wire   [0:0] or_ln29_20_fu_2360_p2;
wire   [0:0] and_ln29_20_fu_2384_p2;
wire   [63:0] bitcast_ln29_22_fu_2403_p1;
wire   [63:0] bitcast_ln29_23_fu_2421_p1;
wire   [10:0] tmp_78_fu_2407_p4;
wire   [51:0] trunc_ln29_22_fu_2417_p1;
wire   [0:0] icmp_ln29_45_fu_2444_p2;
wire   [0:0] icmp_ln29_44_fu_2438_p2;
wire   [10:0] tmp_79_fu_2424_p4;
wire   [51:0] trunc_ln29_23_fu_2434_p1;
wire   [0:0] icmp_ln29_47_fu_2462_p2;
wire   [0:0] icmp_ln29_46_fu_2456_p2;
wire   [0:0] or_ln29_23_fu_2468_p2;
wire   [0:0] or_ln29_22_fu_2450_p2;
wire   [0:0] and_ln29_22_fu_2474_p2;
wire   [63:0] bitcast_ln29_24_fu_2493_p1;
wire   [63:0] bitcast_ln29_25_fu_2511_p1;
wire   [10:0] tmp_82_fu_2497_p4;
wire   [51:0] trunc_ln29_24_fu_2507_p1;
wire   [0:0] icmp_ln29_49_fu_2534_p2;
wire   [0:0] icmp_ln29_48_fu_2528_p2;
wire   [10:0] tmp_83_fu_2514_p4;
wire   [51:0] trunc_ln29_25_fu_2524_p1;
wire   [0:0] icmp_ln29_51_fu_2552_p2;
wire   [0:0] icmp_ln29_50_fu_2546_p2;
wire   [0:0] or_ln29_25_fu_2558_p2;
wire   [0:0] or_ln29_24_fu_2540_p2;
wire   [0:0] and_ln29_24_fu_2564_p2;
wire   [63:0] bitcast_ln29_26_fu_2583_p1;
wire   [63:0] bitcast_ln29_27_fu_2601_p1;
wire   [10:0] tmp_86_fu_2587_p4;
wire   [51:0] trunc_ln29_26_fu_2597_p1;
wire   [0:0] icmp_ln29_53_fu_2624_p2;
wire   [0:0] icmp_ln29_52_fu_2618_p2;
wire   [10:0] tmp_87_fu_2604_p4;
wire   [51:0] trunc_ln29_27_fu_2614_p1;
wire   [0:0] icmp_ln29_55_fu_2642_p2;
wire   [0:0] icmp_ln29_54_fu_2636_p2;
wire   [0:0] or_ln29_27_fu_2648_p2;
wire   [0:0] or_ln29_26_fu_2630_p2;
wire   [0:0] and_ln29_26_fu_2654_p2;
wire   [63:0] bitcast_ln29_28_fu_2673_p1;
wire   [63:0] bitcast_ln29_29_fu_2691_p1;
wire   [10:0] tmp_90_fu_2677_p4;
wire   [51:0] trunc_ln29_28_fu_2687_p1;
wire   [0:0] icmp_ln29_57_fu_2714_p2;
wire   [0:0] icmp_ln29_56_fu_2708_p2;
wire   [10:0] tmp_91_fu_2694_p4;
wire   [51:0] trunc_ln29_29_fu_2704_p1;
wire   [0:0] icmp_ln29_59_fu_2732_p2;
wire   [0:0] icmp_ln29_58_fu_2726_p2;
wire   [0:0] or_ln29_29_fu_2738_p2;
wire   [0:0] or_ln29_28_fu_2720_p2;
wire   [0:0] and_ln29_28_fu_2744_p2;
wire   [63:0] bitcast_ln29_30_fu_2764_p1;
wire   [63:0] bitcast_ln29_31_fu_2781_p1;
wire   [10:0] tmp_93_fu_2767_p4;
wire   [51:0] trunc_ln29_30_fu_2777_p1;
wire   [0:0] icmp_ln29_61_fu_2804_p2;
wire   [0:0] icmp_ln29_60_fu_2798_p2;
wire   [10:0] tmp_94_fu_2784_p4;
wire   [51:0] trunc_ln29_31_fu_2794_p1;
wire   [0:0] icmp_ln29_63_fu_2822_p2;
wire   [0:0] icmp_ln29_62_fu_2816_p2;
wire   [0:0] or_ln29_31_fu_2828_p2;
wire   [0:0] or_ln29_30_fu_2810_p2;
wire   [0:0] and_ln29_30_fu_2834_p2;
wire   [0:0] and_ln29_31_fu_2840_p2;
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
#0 min_p_fu_152 = 64'd0;
#0 prev_fu_156 = 6'd0;
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
        min_p_fu_152 <= min_p_18;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_3028_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        min_p_fu_152 <= min_p_51_fu_2845_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_156 <= 6'd1;
    end else if (((tmp_33_reg_3028 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        prev_fu_156 <= add_ln25_1_fu_2033_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add52_12_reg_3342 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_13_reg_3347 <= grp_fu_717_p_dout0;
        add52_14_reg_3352 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_3022 <= add_ln25_fu_903_p2;
        and_ln29_15_reg_3455 <= and_ln29_15_fu_2120_p2;
        prev_1_reg_2905 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_2985[10 : 5] <= shl_ln1_fu_851_p3[10 : 5];
        tmp_33_reg_3028 <= add_ln25_fu_903_p2[32'd6];
        tmp_33_reg_3028_pp0_iter1_reg <= tmp_33_reg_3028;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln29_11_reg_3431 <= and_ln29_11_fu_1930_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln29_13_reg_3443 <= and_ln29_13_fu_2020_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_17_reg_3467 <= and_ln29_17_fu_2210_p2;
        llike_load_reg_3162 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_19_reg_3479 <= and_ln29_19_fu_2300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln29_1_reg_3364 <= and_ln29_1_fu_1480_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_21_reg_3491 <= and_ln29_21_fu_2390_p2;
        tmp_89_reg_3287 <= {{add_ln27_25_fu_1326_p2[10:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_23_reg_3503 <= and_ln29_23_fu_2480_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_25_reg_3515 <= and_ln29_25_fu_2570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_27_reg_3527 <= and_ln29_27_fu_2660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_29_reg_3539 <= and_ln29_29_fu_2750_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln29_3_reg_3376 <= and_ln29_3_fu_1570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln29_5_reg_3388 <= and_ln29_5_fu_1660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln29_7_reg_3407 <= and_ln29_7_fu_1750_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln29_9_reg_3419 <= and_ln29_9_fu_1840_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_10_load_reg_3097 <= llike_10_q0;
        llike_11_load_reg_3102 <= llike_11_q0;
        llike_12_load_reg_3107 <= llike_12_q0;
        llike_13_load_reg_3112 <= llike_13_q0;
        llike_14_load_reg_3117 <= llike_14_q0;
        llike_15_load_reg_3122 <= llike_15_q0;
        llike_1_load_reg_3032 <= llike_1_q0;
        llike_2_load_reg_3037 <= llike_2_q0;
        llike_3_load_reg_3042 <= llike_3_q0;
        llike_4_load_reg_3057 <= llike_4_q0;
        llike_5_load_reg_3072 <= llike_5_q0;
        llike_6_load_reg_3077 <= llike_6_q0;
        llike_7_load_reg_3082 <= llike_7_q0;
        llike_8_load_reg_3087 <= llike_8_q0;
        llike_9_load_reg_3092 <= llike_9_q0;
        min_p_35_reg_3460 <= min_p_35_fu_2126_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_19_reg_3357 <= min_p_fu_152;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_21_reg_3369 <= min_p_21_fu_1486_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_23_reg_3381 <= min_p_23_fu_1576_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_25_reg_3393 <= min_p_25_fu_1666_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_27_reg_3412 <= min_p_27_fu_1756_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_29_reg_3424 <= min_p_29_fu_1846_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_31_reg_3436 <= min_p_31_fu_1936_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_33_reg_3448 <= min_p_33_fu_2026_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_37_reg_3472 <= min_p_37_fu_2216_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_39_reg_3484 <= min_p_39_fu_2306_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_41_reg_3496 <= min_p_41_fu_2396_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_43_reg_3508 <= min_p_43_fu_2486_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_45_reg_3520 <= min_p_45_fu_2576_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_47_reg_3532 <= min_p_47_fu_2666_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_49_reg_3544 <= min_p_49_fu_2756_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        p_22_reg_3400 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_711 <= grp_fu_697_p3;
        reg_715 <= grp_fu_704_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_719 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_725 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_731 <= grp_fu_717_p_dout0;
        reg_737 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_743 <= grp_fu_717_p_dout0;
        reg_749 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_755 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_761 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_767 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        reg_773 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_779 <= grp_fu_717_p_dout0;
        reg_785 <= grp_fu_1338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_791 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_95_reg_3551 <= grp_fu_1342_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_33_reg_3028 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_3028_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_156;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_685_p0 = add52_13_reg_3347;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_685_p0 = reg_791;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_685_p0 = reg_779;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_685_p0 = reg_767;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_685_p0 = reg_755;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_685_p0 = reg_743;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_685_p0 = reg_731;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_685_p0 = reg_719;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_685_p0 = llike_15_load_reg_3122;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_685_p0 = llike_13_load_reg_3112;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_685_p0 = llike_11_load_reg_3102;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_685_p0 = llike_9_load_reg_3092;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_685_p0 = llike_7_load_reg_3082;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_685_p0 = llike_5_load_reg_3072;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_685_p0 = llike_3_load_reg_3042;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_685_p0 = llike_1_load_reg_3032;
        end else begin
            grp_fu_685_p0 = 'bx;
        end
    end else begin
        grp_fu_685_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_685_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_685_p1 = bitcast_ln27_14_fu_1389_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_685_p1 = bitcast_ln27_12_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_685_p1 = bitcast_ln27_10_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_685_p1 = bitcast_ln27_8_fu_1260_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_685_p1 = bitcast_ln27_6_fu_1194_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_685_p1 = bitcast_ln27_4_fu_1128_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_685_p1 = bitcast_ln27_2_fu_1062_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_685_p1 = bitcast_ln27_fu_996_p1;
    end else begin
        grp_fu_685_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_689_p0 = add52_14_reg_3352;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_689_p0 = add52_12_reg_3342;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_689_p0 = reg_785;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_689_p0 = reg_773;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_689_p0 = reg_761;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_689_p0 = reg_749;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_689_p0 = reg_737;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_689_p0 = reg_725;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_689_p0 = llike_load_reg_3162;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_689_p0 = llike_14_load_reg_3117;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_689_p0 = llike_12_load_reg_3107;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_689_p0 = llike_10_load_reg_3097;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_689_p0 = llike_8_load_reg_3087;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_689_p0 = llike_6_load_reg_3077;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_689_p0 = llike_4_load_reg_3057;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_689_p0 = llike_2_load_reg_3037;
        end else begin
            grp_fu_689_p0 = 'bx;
        end
    end else begin
        grp_fu_689_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_689_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_689_p1 = bitcast_ln27_15_fu_1394_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_689_p1 = bitcast_ln27_13_fu_1384_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_689_p1 = bitcast_ln27_11_fu_1346_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_689_p1 = bitcast_ln27_9_fu_1265_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_689_p1 = bitcast_ln27_7_fu_1199_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_689_p1 = bitcast_ln27_5_fu_1133_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_689_p1 = bitcast_ln27_3_fu_1067_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_689_p1 = bitcast_ln27_1_fu_1001_p1;
    end else begin
        grp_fu_689_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_693_p0 = p_22_reg_3400;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_693_p0 = reg_791;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_693_p0 = reg_785;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_693_p0 = reg_779;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_693_p0 = reg_767;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_693_p0 = reg_773;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_693_p0 = reg_755;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_693_p0 = reg_761;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_693_p0 = reg_749;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_693_p0 = reg_743;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_693_p0 = reg_737;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_693_p0 = reg_731;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_693_p0 = reg_725;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        grp_fu_693_p0 = reg_719;
    end else begin
        grp_fu_693_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_693_p1 = min_p_49_fu_2756_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_693_p1 = min_p_47_fu_2666_p3;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_693_p1 = min_p_45_fu_2576_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_693_p1 = min_p_43_fu_2486_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_693_p1 = min_p_41_fu_2396_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_693_p1 = min_p_39_fu_2306_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_693_p1 = min_p_37_fu_2216_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_693_p1 = min_p_35_fu_2126_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_693_p1 = min_p_33_fu_2026_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_693_p1 = min_p_31_fu_1936_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_693_p1 = min_p_29_fu_1846_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_693_p1 = min_p_27_fu_1756_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_693_p1 = min_p_25_fu_1666_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_693_p1 = min_p_23_fu_1576_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_693_p1 = min_p_21_fu_1486_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_693_p1 = min_p_fu_152;
    end else begin
        grp_fu_693_p1 = 'bx;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_33_reg_3028_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_50_out_ap_vld = 1'b1;
    end else begin
        min_p_50_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln27_15_fu_1373_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln27_13_fu_1320_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln27_11_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln27_9_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1122_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1056_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_897_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln27_14_fu_1357_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln27_12_fu_1292_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln27_10_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln27_8_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln27_6_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1028_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_939_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_867_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address0_local = zext_ln27_15_fu_1373_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln27_13_fu_1320_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln27_11_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln27_9_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_1122_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1056_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_897_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln27_14_fu_1357_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln27_12_fu_1292_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln27_10_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln27_8_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln27_6_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1028_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_939_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_867_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln25_1_fu_2033_p2 = (prev_1_reg_2905 + 6'd16);
assign add_ln25_fu_903_p2 = (zext_ln16_fu_810_p1 + 7'd15);
assign add_ln26_fu_986_p2 = (empty + zext_ln26_1_fu_982_p1);
assign add_ln27_10_fu_1087_p3 = {{tmp_57_fu_1077_p4}, {lshr_ln}};
assign add_ln27_11_fu_1100_p2 = (shl_ln1_reg_2985 + 11'd224);
assign add_ln27_12_fu_1115_p3 = {{tmp_61_fu_1105_p4}, {lshr_ln}};
assign add_ln27_13_fu_1138_p2 = (shl_ln1_reg_2985 + 11'd256);
assign add_ln27_14_fu_1153_p3 = {{tmp_65_fu_1143_p4}, {lshr_ln}};
assign add_ln27_15_fu_1166_p2 = (shl_ln1_reg_2985 + 11'd288);
assign add_ln27_16_fu_1181_p3 = {{tmp_69_fu_1171_p4}, {lshr_ln}};
assign add_ln27_17_fu_1204_p2 = (shl_ln1_reg_2985 + 11'd320);
assign add_ln27_18_fu_1219_p3 = {{tmp_73_fu_1209_p4}, {lshr_ln}};
assign add_ln27_19_fu_1232_p2 = (shl_ln1_reg_2985 + 11'd352);
assign add_ln27_1_fu_917_p2 = (shl_ln1_reg_2985 + 11'd64);
assign add_ln27_20_fu_1247_p3 = {{tmp_77_fu_1237_p4}, {lshr_ln}};
assign add_ln27_21_fu_1270_p2 = (shl_ln1_reg_2985 + 11'd384);
assign add_ln27_22_fu_1285_p3 = {{tmp_81_fu_1275_p4}, {lshr_ln}};
assign add_ln27_23_fu_1298_p2 = (shl_ln1_reg_2985 + 11'd416);
assign add_ln27_24_fu_1313_p3 = {{tmp_85_fu_1303_p4}, {lshr_ln}};
assign add_ln27_25_fu_1326_p2 = (shl_ln1_reg_2985 + 11'd448);
assign add_ln27_26_fu_1351_p3 = {{tmp_89_reg_3287}, {lshr_ln}};
assign add_ln27_27_fu_1366_p3 = {{trunc_ln27_fu_1363_p1}, {lshr_ln}};
assign add_ln27_2_fu_889_p3 = {{tmp_37_fu_879_p4}, {lshr_ln}};
assign add_ln27_3_fu_945_p2 = (shl_ln1_reg_2985 + 11'd96);
assign add_ln27_4_fu_932_p3 = {{tmp_41_fu_922_p4}, {lshr_ln}};
assign add_ln27_5_fu_1006_p2 = (shl_ln1_reg_2985 + 11'd128);
assign add_ln27_6_fu_960_p3 = {{tmp_45_fu_950_p4}, {lshr_ln}};
assign add_ln27_7_fu_1034_p2 = (shl_ln1_reg_2985 + 11'd160);
assign add_ln27_8_fu_1021_p3 = {{tmp_49_fu_1011_p4}, {lshr_ln}};
assign add_ln27_9_fu_1072_p2 = (shl_ln1_reg_2985 + 11'd192);
assign add_ln27_fu_873_p2 = (shl_ln1_fu_851_p3 + 11'd32);
assign add_ln27_s_fu_1049_p3 = {{tmp_53_fu_1039_p4}, {lshr_ln}};
assign add_ln_fu_859_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_1924_p2 = (or_ln29_11_fu_1918_p2 & or_ln29_10_fu_1900_p2);
assign and_ln29_11_fu_1930_p2 = (grp_fu_1342_p_dout0 & and_ln29_10_fu_1924_p2);
assign and_ln29_12_fu_2014_p2 = (or_ln29_13_fu_2008_p2 & or_ln29_12_fu_1990_p2);
assign and_ln29_13_fu_2020_p2 = (grp_fu_1342_p_dout0 & and_ln29_12_fu_2014_p2);
assign and_ln29_14_fu_2114_p2 = (or_ln29_15_fu_2108_p2 & or_ln29_14_fu_2090_p2);
assign and_ln29_15_fu_2120_p2 = (grp_fu_1342_p_dout0 & and_ln29_14_fu_2114_p2);
assign and_ln29_16_fu_2204_p2 = (or_ln29_17_fu_2198_p2 & or_ln29_16_fu_2180_p2);
assign and_ln29_17_fu_2210_p2 = (grp_fu_1342_p_dout0 & and_ln29_16_fu_2204_p2);
assign and_ln29_18_fu_2294_p2 = (or_ln29_19_fu_2288_p2 & or_ln29_18_fu_2270_p2);
assign and_ln29_19_fu_2300_p2 = (grp_fu_1342_p_dout0 & and_ln29_18_fu_2294_p2);
assign and_ln29_1_fu_1480_p2 = (or_ln29_1_fu_1468_p2 & and_ln29_fu_1474_p2);
assign and_ln29_20_fu_2384_p2 = (or_ln29_21_fu_2378_p2 & or_ln29_20_fu_2360_p2);
assign and_ln29_21_fu_2390_p2 = (grp_fu_1342_p_dout0 & and_ln29_20_fu_2384_p2);
assign and_ln29_22_fu_2474_p2 = (or_ln29_23_fu_2468_p2 & or_ln29_22_fu_2450_p2);
assign and_ln29_23_fu_2480_p2 = (grp_fu_1342_p_dout0 & and_ln29_22_fu_2474_p2);
assign and_ln29_24_fu_2564_p2 = (or_ln29_25_fu_2558_p2 & or_ln29_24_fu_2540_p2);
assign and_ln29_25_fu_2570_p2 = (grp_fu_1342_p_dout0 & and_ln29_24_fu_2564_p2);
assign and_ln29_26_fu_2654_p2 = (or_ln29_27_fu_2648_p2 & or_ln29_26_fu_2630_p2);
assign and_ln29_27_fu_2660_p2 = (grp_fu_1342_p_dout0 & and_ln29_26_fu_2654_p2);
assign and_ln29_28_fu_2744_p2 = (or_ln29_29_fu_2738_p2 & or_ln29_28_fu_2720_p2);
assign and_ln29_29_fu_2750_p2 = (grp_fu_1342_p_dout0 & and_ln29_28_fu_2744_p2);
assign and_ln29_2_fu_1564_p2 = (or_ln29_3_fu_1558_p2 & or_ln29_2_fu_1540_p2);
assign and_ln29_30_fu_2834_p2 = (or_ln29_31_fu_2828_p2 & or_ln29_30_fu_2810_p2);
assign and_ln29_31_fu_2840_p2 = (tmp_95_reg_3551 & and_ln29_30_fu_2834_p2);
assign and_ln29_3_fu_1570_p2 = (grp_fu_1342_p_dout0 & and_ln29_2_fu_1564_p2);
assign and_ln29_4_fu_1654_p2 = (or_ln29_5_fu_1648_p2 & or_ln29_4_fu_1630_p2);
assign and_ln29_5_fu_1660_p2 = (grp_fu_1342_p_dout0 & and_ln29_4_fu_1654_p2);
assign and_ln29_6_fu_1744_p2 = (or_ln29_7_fu_1738_p2 & or_ln29_6_fu_1720_p2);
assign and_ln29_7_fu_1750_p2 = (grp_fu_1342_p_dout0 & and_ln29_6_fu_1744_p2);
assign and_ln29_8_fu_1834_p2 = (or_ln29_9_fu_1828_p2 & or_ln29_8_fu_1810_p2);
assign and_ln29_9_fu_1840_p2 = (grp_fu_1342_p_dout0 & and_ln29_8_fu_1834_p2);
assign and_ln29_fu_1474_p2 = (or_ln29_fu_1450_p2 & grp_fu_1342_p_dout0);
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
assign bitcast_ln27_10_fu_1341_p1 = reg_711;
assign bitcast_ln27_11_fu_1346_p1 = reg_715;
assign bitcast_ln27_12_fu_1379_p1 = reg_711;
assign bitcast_ln27_13_fu_1384_p1 = reg_715;
assign bitcast_ln27_14_fu_1389_p1 = reg_711;
assign bitcast_ln27_15_fu_1394_p1 = reg_715;
assign bitcast_ln27_1_fu_1001_p1 = reg_715;
assign bitcast_ln27_2_fu_1062_p1 = reg_711;
assign bitcast_ln27_3_fu_1067_p1 = reg_715;
assign bitcast_ln27_4_fu_1128_p1 = reg_711;
assign bitcast_ln27_5_fu_1133_p1 = reg_715;
assign bitcast_ln27_6_fu_1194_p1 = reg_711;
assign bitcast_ln27_7_fu_1199_p1 = reg_715;
assign bitcast_ln27_8_fu_1260_p1 = reg_711;
assign bitcast_ln27_9_fu_1265_p1 = reg_715;
assign bitcast_ln27_fu_996_p1 = reg_711;
assign bitcast_ln29_10_fu_1853_p1 = reg_749;
assign bitcast_ln29_11_fu_1871_p1 = min_p_29_reg_3424;
assign bitcast_ln29_12_fu_1943_p1 = reg_719;
assign bitcast_ln29_13_fu_1961_p1 = min_p_31_reg_3436;
assign bitcast_ln29_14_fu_2043_p1 = reg_761;
assign bitcast_ln29_15_fu_2061_p1 = min_p_33_reg_3448;
assign bitcast_ln29_16_fu_2133_p1 = reg_755;
assign bitcast_ln29_17_fu_2151_p1 = min_p_35_reg_3460;
assign bitcast_ln29_18_fu_2223_p1 = reg_773;
assign bitcast_ln29_19_fu_2241_p1 = min_p_37_reg_3472;
assign bitcast_ln29_1_fu_1421_p1 = min_p_19_reg_3357;
assign bitcast_ln29_20_fu_2313_p1 = reg_767;
assign bitcast_ln29_21_fu_2331_p1 = min_p_39_reg_3484;
assign bitcast_ln29_22_fu_2403_p1 = reg_725;
assign bitcast_ln29_23_fu_2421_p1 = min_p_41_reg_3496;
assign bitcast_ln29_24_fu_2493_p1 = reg_779;
assign bitcast_ln29_25_fu_2511_p1 = min_p_43_reg_3508;
assign bitcast_ln29_26_fu_2583_p1 = reg_785;
assign bitcast_ln29_27_fu_2601_p1 = min_p_45_reg_3520;
assign bitcast_ln29_28_fu_2673_p1 = reg_791;
assign bitcast_ln29_29_fu_2691_p1 = min_p_47_reg_3532;
assign bitcast_ln29_2_fu_1493_p1 = reg_725;
assign bitcast_ln29_30_fu_2764_p1 = p_22_reg_3400;
assign bitcast_ln29_31_fu_2781_p1 = min_p_49_reg_3544;
assign bitcast_ln29_3_fu_1511_p1 = min_p_21_reg_3369;
assign bitcast_ln29_4_fu_1583_p1 = reg_731;
assign bitcast_ln29_5_fu_1601_p1 = min_p_23_reg_3381;
assign bitcast_ln29_6_fu_1673_p1 = reg_737;
assign bitcast_ln29_7_fu_1691_p1 = min_p_25_reg_3393;
assign bitcast_ln29_8_fu_1763_p1 = reg_743;
assign bitcast_ln29_9_fu_1781_p1 = min_p_27_reg_3412;
assign bitcast_ln29_fu_1403_p1 = reg_719;
assign grp_fu_1338_p_ce = 1'b1;
assign grp_fu_1338_p_din0 = grp_fu_689_p0;
assign grp_fu_1338_p_din1 = grp_fu_689_p1;
assign grp_fu_1338_p_opcode = 2'd0;
assign grp_fu_1342_p_ce = 1'b1;
assign grp_fu_1342_p_din0 = grp_fu_693_p0;
assign grp_fu_1342_p_din1 = grp_fu_693_p1;
assign grp_fu_1342_p_opcode = 5'd4;
assign grp_fu_697_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_704_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_717_p_ce = 1'b1;
assign grp_fu_717_p_din0 = grp_fu_685_p0;
assign grp_fu_717_p_din1 = grp_fu_685_p1;
assign grp_fu_717_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1636_p2 = ((tmp_43_fu_1604_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1642_p2 = ((trunc_ln29_5_fu_1614_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1708_p2 = ((tmp_46_fu_1677_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1714_p2 = ((trunc_ln29_6_fu_1687_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1726_p2 = ((tmp_47_fu_1694_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1732_p2 = ((trunc_ln29_7_fu_1704_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1798_p2 = ((tmp_50_fu_1767_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1804_p2 = ((trunc_ln29_8_fu_1777_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1816_p2 = ((tmp_51_fu_1784_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1822_p2 = ((trunc_ln29_9_fu_1794_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1444_p2 = ((trunc_ln29_fu_1417_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1888_p2 = ((tmp_54_fu_1857_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1894_p2 = ((trunc_ln29_10_fu_1867_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1906_p2 = ((tmp_55_fu_1874_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1912_p2 = ((trunc_ln29_11_fu_1884_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1978_p2 = ((tmp_58_fu_1947_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1984_p2 = ((trunc_ln29_12_fu_1957_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1996_p2 = ((tmp_59_fu_1964_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2002_p2 = ((trunc_ln29_13_fu_1974_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2078_p2 = ((tmp_62_fu_2047_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2084_p2 = ((trunc_ln29_14_fu_2057_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1456_p2 = ((tmp_35_fu_1424_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2096_p2 = ((tmp_63_fu_2064_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2102_p2 = ((trunc_ln29_15_fu_2074_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_32_fu_2168_p2 = ((tmp_66_fu_2137_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_33_fu_2174_p2 = ((trunc_ln29_16_fu_2147_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_34_fu_2186_p2 = ((tmp_67_fu_2154_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_35_fu_2192_p2 = ((trunc_ln29_17_fu_2164_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_36_fu_2258_p2 = ((tmp_70_fu_2227_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_37_fu_2264_p2 = ((trunc_ln29_18_fu_2237_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_38_fu_2276_p2 = ((tmp_71_fu_2244_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_39_fu_2282_p2 = ((trunc_ln29_19_fu_2254_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1462_p2 = ((trunc_ln29_1_fu_1434_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_40_fu_2348_p2 = ((tmp_74_fu_2317_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_41_fu_2354_p2 = ((trunc_ln29_20_fu_2327_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_42_fu_2366_p2 = ((tmp_75_fu_2334_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_43_fu_2372_p2 = ((trunc_ln29_21_fu_2344_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_44_fu_2438_p2 = ((tmp_78_fu_2407_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_45_fu_2444_p2 = ((trunc_ln29_22_fu_2417_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_46_fu_2456_p2 = ((tmp_79_fu_2424_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_47_fu_2462_p2 = ((trunc_ln29_23_fu_2434_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_48_fu_2528_p2 = ((tmp_82_fu_2497_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_49_fu_2534_p2 = ((trunc_ln29_24_fu_2507_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1528_p2 = ((tmp_38_fu_1497_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_50_fu_2546_p2 = ((tmp_83_fu_2514_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_51_fu_2552_p2 = ((trunc_ln29_25_fu_2524_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_52_fu_2618_p2 = ((tmp_86_fu_2587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_53_fu_2624_p2 = ((trunc_ln29_26_fu_2597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_54_fu_2636_p2 = ((tmp_87_fu_2604_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_55_fu_2642_p2 = ((trunc_ln29_27_fu_2614_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_56_fu_2708_p2 = ((tmp_90_fu_2677_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_57_fu_2714_p2 = ((trunc_ln29_28_fu_2687_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_58_fu_2726_p2 = ((tmp_91_fu_2694_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_59_fu_2732_p2 = ((trunc_ln29_29_fu_2704_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1534_p2 = ((trunc_ln29_2_fu_1507_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_60_fu_2798_p2 = ((tmp_93_fu_2767_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_61_fu_2804_p2 = ((trunc_ln29_30_fu_2777_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_62_fu_2816_p2 = ((tmp_94_fu_2784_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_63_fu_2822_p2 = ((trunc_ln29_31_fu_2794_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1546_p2 = ((tmp_39_fu_1514_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1552_p2 = ((trunc_ln29_3_fu_1524_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1618_p2 = ((tmp_42_fu_1587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1624_p2 = ((trunc_ln29_4_fu_1597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1438_p2 = ((tmp_34_fu_1407_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = zext_ln26_fu_832_p1;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = zext_ln26_fu_832_p1;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = zext_ln26_fu_832_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = zext_ln26_fu_832_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = zext_ln26_fu_832_p1;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = zext_ln26_fu_832_p1;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = zext_ln26_fu_832_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_832_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_832_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln26_fu_832_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln26_fu_832_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln26_fu_832_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln26_fu_832_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = zext_ln26_fu_832_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = zext_ln26_fu_832_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = zext_ln26_2_fu_991_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_814_p4 = {{ap_sig_allocacmp_prev_1[5:4]}};
assign lshr_ln8_1_fu_973_p4 = {{add_ln25_reg_3022[6:4]}};
assign min_p_21_fu_1486_p3 = ((and_ln29_1_reg_3364[0:0] == 1'b1) ? reg_719 : min_p_19_reg_3357);
assign min_p_23_fu_1576_p3 = ((and_ln29_3_reg_3376[0:0] == 1'b1) ? reg_725 : min_p_21_reg_3369);
assign min_p_25_fu_1666_p3 = ((and_ln29_5_reg_3388[0:0] == 1'b1) ? reg_731 : min_p_23_reg_3381);
assign min_p_27_fu_1756_p3 = ((and_ln29_7_reg_3407[0:0] == 1'b1) ? reg_737 : min_p_25_reg_3393);
assign min_p_29_fu_1846_p3 = ((and_ln29_9_reg_3419[0:0] == 1'b1) ? reg_743 : min_p_27_reg_3412);
assign min_p_31_fu_1936_p3 = ((and_ln29_11_reg_3431[0:0] == 1'b1) ? reg_749 : min_p_29_reg_3424);
assign min_p_33_fu_2026_p3 = ((and_ln29_13_reg_3443[0:0] == 1'b1) ? reg_719 : min_p_31_reg_3436);
assign min_p_35_fu_2126_p3 = ((and_ln29_15_reg_3455[0:0] == 1'b1) ? reg_761 : min_p_33_reg_3448);
assign min_p_37_fu_2216_p3 = ((and_ln29_17_reg_3467[0:0] == 1'b1) ? reg_755 : min_p_35_reg_3460);
assign min_p_39_fu_2306_p3 = ((and_ln29_19_reg_3479[0:0] == 1'b1) ? reg_773 : min_p_37_reg_3472);
assign min_p_41_fu_2396_p3 = ((and_ln29_21_reg_3491[0:0] == 1'b1) ? reg_767 : min_p_39_reg_3484);
assign min_p_43_fu_2486_p3 = ((and_ln29_23_reg_3503[0:0] == 1'b1) ? reg_725 : min_p_41_reg_3496);
assign min_p_45_fu_2576_p3 = ((and_ln29_25_reg_3515[0:0] == 1'b1) ? reg_779 : min_p_43_reg_3508);
assign min_p_47_fu_2666_p3 = ((and_ln29_27_reg_3527[0:0] == 1'b1) ? reg_785 : min_p_45_reg_3520);
assign min_p_49_fu_2756_p3 = ((and_ln29_29_reg_3539[0:0] == 1'b1) ? reg_791 : min_p_47_reg_3532);
assign min_p_50_out = ((and_ln29_29_reg_3539[0:0] == 1'b1) ? reg_791 : min_p_47_reg_3532);
assign min_p_51_fu_2845_p3 = ((and_ln29_31_fu_2840_p2[0:0] == 1'b1) ? p_22_reg_3400 : min_p_49_reg_3544);
assign or_ln29_10_fu_1900_p2 = (icmp_ln29_21_fu_1894_p2 | icmp_ln29_20_fu_1888_p2);
assign or_ln29_11_fu_1918_p2 = (icmp_ln29_23_fu_1912_p2 | icmp_ln29_22_fu_1906_p2);
assign or_ln29_12_fu_1990_p2 = (icmp_ln29_25_fu_1984_p2 | icmp_ln29_24_fu_1978_p2);
assign or_ln29_13_fu_2008_p2 = (icmp_ln29_27_fu_2002_p2 | icmp_ln29_26_fu_1996_p2);
assign or_ln29_14_fu_2090_p2 = (icmp_ln29_29_fu_2084_p2 | icmp_ln29_28_fu_2078_p2);
assign or_ln29_15_fu_2108_p2 = (icmp_ln29_31_fu_2102_p2 | icmp_ln29_30_fu_2096_p2);
assign or_ln29_16_fu_2180_p2 = (icmp_ln29_33_fu_2174_p2 | icmp_ln29_32_fu_2168_p2);
assign or_ln29_17_fu_2198_p2 = (icmp_ln29_35_fu_2192_p2 | icmp_ln29_34_fu_2186_p2);
assign or_ln29_18_fu_2270_p2 = (icmp_ln29_37_fu_2264_p2 | icmp_ln29_36_fu_2258_p2);
assign or_ln29_19_fu_2288_p2 = (icmp_ln29_39_fu_2282_p2 | icmp_ln29_38_fu_2276_p2);
assign or_ln29_1_fu_1468_p2 = (icmp_ln29_3_fu_1462_p2 | icmp_ln29_2_fu_1456_p2);
assign or_ln29_20_fu_2360_p2 = (icmp_ln29_41_fu_2354_p2 | icmp_ln29_40_fu_2348_p2);
assign or_ln29_21_fu_2378_p2 = (icmp_ln29_43_fu_2372_p2 | icmp_ln29_42_fu_2366_p2);
assign or_ln29_22_fu_2450_p2 = (icmp_ln29_45_fu_2444_p2 | icmp_ln29_44_fu_2438_p2);
assign or_ln29_23_fu_2468_p2 = (icmp_ln29_47_fu_2462_p2 | icmp_ln29_46_fu_2456_p2);
assign or_ln29_24_fu_2540_p2 = (icmp_ln29_49_fu_2534_p2 | icmp_ln29_48_fu_2528_p2);
assign or_ln29_25_fu_2558_p2 = (icmp_ln29_51_fu_2552_p2 | icmp_ln29_50_fu_2546_p2);
assign or_ln29_26_fu_2630_p2 = (icmp_ln29_53_fu_2624_p2 | icmp_ln29_52_fu_2618_p2);
assign or_ln29_27_fu_2648_p2 = (icmp_ln29_55_fu_2642_p2 | icmp_ln29_54_fu_2636_p2);
assign or_ln29_28_fu_2720_p2 = (icmp_ln29_57_fu_2714_p2 | icmp_ln29_56_fu_2708_p2);
assign or_ln29_29_fu_2738_p2 = (icmp_ln29_59_fu_2732_p2 | icmp_ln29_58_fu_2726_p2);
assign or_ln29_2_fu_1540_p2 = (icmp_ln29_5_fu_1534_p2 | icmp_ln29_4_fu_1528_p2);
assign or_ln29_30_fu_2810_p2 = (icmp_ln29_61_fu_2804_p2 | icmp_ln29_60_fu_2798_p2);
assign or_ln29_31_fu_2828_p2 = (icmp_ln29_63_fu_2822_p2 | icmp_ln29_62_fu_2816_p2);
assign or_ln29_3_fu_1558_p2 = (icmp_ln29_7_fu_1552_p2 | icmp_ln29_6_fu_1546_p2);
assign or_ln29_4_fu_1630_p2 = (icmp_ln29_9_fu_1624_p2 | icmp_ln29_8_fu_1618_p2);
assign or_ln29_5_fu_1648_p2 = (icmp_ln29_11_fu_1642_p2 | icmp_ln29_10_fu_1636_p2);
assign or_ln29_6_fu_1720_p2 = (icmp_ln29_13_fu_1714_p2 | icmp_ln29_12_fu_1708_p2);
assign or_ln29_7_fu_1738_p2 = (icmp_ln29_15_fu_1732_p2 | icmp_ln29_14_fu_1726_p2);
assign or_ln29_8_fu_1810_p2 = (icmp_ln29_17_fu_1804_p2 | icmp_ln29_16_fu_1798_p2);
assign or_ln29_9_fu_1828_p2 = (icmp_ln29_19_fu_1822_p2 | icmp_ln29_18_fu_1816_p2);
assign or_ln29_fu_1450_p2 = (icmp_ln29_fu_1438_p2 | icmp_ln29_1_fu_1444_p2);
assign shl_ln1_fu_851_p3 = {{ap_sig_allocacmp_prev_1}, {5'd0}};
assign tmp_34_fu_1407_p4 = {{bitcast_ln29_fu_1403_p1[62:52]}};
assign tmp_35_fu_1424_p4 = {{bitcast_ln29_1_fu_1421_p1[62:52]}};
assign tmp_37_fu_879_p4 = {{add_ln27_fu_873_p2[10:5]}};
assign tmp_38_fu_1497_p4 = {{bitcast_ln29_2_fu_1493_p1[62:52]}};
assign tmp_39_fu_1514_p4 = {{bitcast_ln29_3_fu_1511_p1[62:52]}};
assign tmp_41_fu_922_p4 = {{add_ln27_1_fu_917_p2[10:5]}};
assign tmp_42_fu_1587_p4 = {{bitcast_ln29_4_fu_1583_p1[62:52]}};
assign tmp_43_fu_1604_p4 = {{bitcast_ln29_5_fu_1601_p1[62:52]}};
assign tmp_45_fu_950_p4 = {{add_ln27_3_fu_945_p2[10:5]}};
assign tmp_46_fu_1677_p4 = {{bitcast_ln29_6_fu_1673_p1[62:52]}};
assign tmp_47_fu_1694_p4 = {{bitcast_ln29_7_fu_1691_p1[62:52]}};
assign tmp_49_fu_1011_p4 = {{add_ln27_5_fu_1006_p2[10:5]}};
assign tmp_50_fu_1767_p4 = {{bitcast_ln29_8_fu_1763_p1[62:52]}};
assign tmp_51_fu_1784_p4 = {{bitcast_ln29_9_fu_1781_p1[62:52]}};
assign tmp_53_fu_1039_p4 = {{add_ln27_7_fu_1034_p2[10:5]}};
assign tmp_54_fu_1857_p4 = {{bitcast_ln29_10_fu_1853_p1[62:52]}};
assign tmp_55_fu_1874_p4 = {{bitcast_ln29_11_fu_1871_p1[62:52]}};
assign tmp_57_fu_1077_p4 = {{add_ln27_9_fu_1072_p2[10:5]}};
assign tmp_58_fu_1947_p4 = {{bitcast_ln29_12_fu_1943_p1[62:52]}};
assign tmp_59_fu_1964_p4 = {{bitcast_ln29_13_fu_1961_p1[62:52]}};
assign tmp_61_fu_1105_p4 = {{add_ln27_11_fu_1100_p2[10:5]}};
assign tmp_62_fu_2047_p4 = {{bitcast_ln29_14_fu_2043_p1[62:52]}};
assign tmp_63_fu_2064_p4 = {{bitcast_ln29_15_fu_2061_p1[62:52]}};
assign tmp_65_fu_1143_p4 = {{add_ln27_13_fu_1138_p2[10:5]}};
assign tmp_66_fu_2137_p4 = {{bitcast_ln29_16_fu_2133_p1[62:52]}};
assign tmp_67_fu_2154_p4 = {{bitcast_ln29_17_fu_2151_p1[62:52]}};
assign tmp_69_fu_1171_p4 = {{add_ln27_15_fu_1166_p2[10:5]}};
assign tmp_70_fu_2227_p4 = {{bitcast_ln29_18_fu_2223_p1[62:52]}};
assign tmp_71_fu_2244_p4 = {{bitcast_ln29_19_fu_2241_p1[62:52]}};
assign tmp_73_fu_1209_p4 = {{add_ln27_17_fu_1204_p2[10:5]}};
assign tmp_74_fu_2317_p4 = {{bitcast_ln29_20_fu_2313_p1[62:52]}};
assign tmp_75_fu_2334_p4 = {{bitcast_ln29_21_fu_2331_p1[62:52]}};
assign tmp_77_fu_1237_p4 = {{add_ln27_19_fu_1232_p2[10:5]}};
assign tmp_78_fu_2407_p4 = {{bitcast_ln29_22_fu_2403_p1[62:52]}};
assign tmp_79_fu_2424_p4 = {{bitcast_ln29_23_fu_2421_p1[62:52]}};
assign tmp_81_fu_1275_p4 = {{add_ln27_21_fu_1270_p2[10:5]}};
assign tmp_82_fu_2497_p4 = {{bitcast_ln29_24_fu_2493_p1[62:52]}};
assign tmp_83_fu_2514_p4 = {{bitcast_ln29_25_fu_2511_p1[62:52]}};
assign tmp_85_fu_1303_p4 = {{add_ln27_23_fu_1298_p2[10:5]}};
assign tmp_86_fu_2587_p4 = {{bitcast_ln29_26_fu_2583_p1[62:52]}};
assign tmp_87_fu_2604_p4 = {{bitcast_ln29_27_fu_2601_p1[62:52]}};
assign tmp_90_fu_2677_p4 = {{bitcast_ln29_28_fu_2673_p1[62:52]}};
assign tmp_91_fu_2694_p4 = {{bitcast_ln29_29_fu_2691_p1[62:52]}};
assign tmp_93_fu_2767_p4 = {{bitcast_ln29_30_fu_2764_p1[62:52]}};
assign tmp_94_fu_2784_p4 = {{bitcast_ln29_31_fu_2781_p1[62:52]}};
assign tmp_s_fu_824_p3 = {{empty_9}, {lshr_ln7_1_fu_814_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_1363_p1 = add_ln25_reg_3022[5:0];
assign trunc_ln29_10_fu_1867_p1 = bitcast_ln29_10_fu_1853_p1[51:0];
assign trunc_ln29_11_fu_1884_p1 = bitcast_ln29_11_fu_1871_p1[51:0];
assign trunc_ln29_12_fu_1957_p1 = bitcast_ln29_12_fu_1943_p1[51:0];
assign trunc_ln29_13_fu_1974_p1 = bitcast_ln29_13_fu_1961_p1[51:0];
assign trunc_ln29_14_fu_2057_p1 = bitcast_ln29_14_fu_2043_p1[51:0];
assign trunc_ln29_15_fu_2074_p1 = bitcast_ln29_15_fu_2061_p1[51:0];
assign trunc_ln29_16_fu_2147_p1 = bitcast_ln29_16_fu_2133_p1[51:0];
assign trunc_ln29_17_fu_2164_p1 = bitcast_ln29_17_fu_2151_p1[51:0];
assign trunc_ln29_18_fu_2237_p1 = bitcast_ln29_18_fu_2223_p1[51:0];
assign trunc_ln29_19_fu_2254_p1 = bitcast_ln29_19_fu_2241_p1[51:0];
assign trunc_ln29_1_fu_1434_p1 = bitcast_ln29_1_fu_1421_p1[51:0];
assign trunc_ln29_20_fu_2327_p1 = bitcast_ln29_20_fu_2313_p1[51:0];
assign trunc_ln29_21_fu_2344_p1 = bitcast_ln29_21_fu_2331_p1[51:0];
assign trunc_ln29_22_fu_2417_p1 = bitcast_ln29_22_fu_2403_p1[51:0];
assign trunc_ln29_23_fu_2434_p1 = bitcast_ln29_23_fu_2421_p1[51:0];
assign trunc_ln29_24_fu_2507_p1 = bitcast_ln29_24_fu_2493_p1[51:0];
assign trunc_ln29_25_fu_2524_p1 = bitcast_ln29_25_fu_2511_p1[51:0];
assign trunc_ln29_26_fu_2597_p1 = bitcast_ln29_26_fu_2583_p1[51:0];
assign trunc_ln29_27_fu_2614_p1 = bitcast_ln29_27_fu_2601_p1[51:0];
assign trunc_ln29_28_fu_2687_p1 = bitcast_ln29_28_fu_2673_p1[51:0];
assign trunc_ln29_29_fu_2704_p1 = bitcast_ln29_29_fu_2691_p1[51:0];
assign trunc_ln29_2_fu_1507_p1 = bitcast_ln29_2_fu_1493_p1[51:0];
assign trunc_ln29_30_fu_2777_p1 = bitcast_ln29_30_fu_2764_p1[51:0];
assign trunc_ln29_31_fu_2794_p1 = bitcast_ln29_31_fu_2781_p1[51:0];
assign trunc_ln29_3_fu_1524_p1 = bitcast_ln29_3_fu_1511_p1[51:0];
assign trunc_ln29_4_fu_1597_p1 = bitcast_ln29_4_fu_1583_p1[51:0];
assign trunc_ln29_5_fu_1614_p1 = bitcast_ln29_5_fu_1601_p1[51:0];
assign trunc_ln29_6_fu_1687_p1 = bitcast_ln29_6_fu_1673_p1[51:0];
assign trunc_ln29_7_fu_1704_p1 = bitcast_ln29_7_fu_1691_p1[51:0];
assign trunc_ln29_8_fu_1777_p1 = bitcast_ln29_8_fu_1763_p1[51:0];
assign trunc_ln29_9_fu_1794_p1 = bitcast_ln29_9_fu_1781_p1[51:0];
assign trunc_ln29_fu_1417_p1 = bitcast_ln29_fu_1403_p1[51:0];
assign zext_ln16_fu_810_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_982_p1 = lshr_ln8_1_fu_973_p4;
assign zext_ln26_2_fu_991_p1 = add_ln26_fu_986_p2;
assign zext_ln26_fu_832_p1 = tmp_s_fu_824_p3;
assign zext_ln27_10_fu_1226_p1 = add_ln27_18_fu_1219_p3;
assign zext_ln27_11_fu_1254_p1 = add_ln27_20_fu_1247_p3;
assign zext_ln27_12_fu_1292_p1 = add_ln27_22_fu_1285_p3;
assign zext_ln27_13_fu_1320_p1 = add_ln27_24_fu_1313_p3;
assign zext_ln27_14_fu_1357_p1 = add_ln27_26_fu_1351_p3;
assign zext_ln27_15_fu_1373_p1 = add_ln27_27_fu_1366_p3;
assign zext_ln27_1_fu_897_p1 = add_ln27_2_fu_889_p3;
assign zext_ln27_2_fu_939_p1 = add_ln27_4_fu_932_p3;
assign zext_ln27_3_fu_967_p1 = add_ln27_6_fu_960_p3;
assign zext_ln27_4_fu_1028_p1 = add_ln27_8_fu_1021_p3;
assign zext_ln27_5_fu_1056_p1 = add_ln27_s_fu_1049_p3;
assign zext_ln27_6_fu_1094_p1 = add_ln27_10_fu_1087_p3;
assign zext_ln27_7_fu_1122_p1 = add_ln27_12_fu_1115_p3;
assign zext_ln27_8_fu_1160_p1 = add_ln27_14_fu_1153_p3;
assign zext_ln27_9_fu_1188_p1 = add_ln27_16_fu_1181_p3;
assign zext_ln27_fu_867_p1 = add_ln_fu_859_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2985[4:0] <= 5'b00000;
end
endmodule 