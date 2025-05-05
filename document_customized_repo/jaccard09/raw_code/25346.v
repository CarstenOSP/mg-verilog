module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_195,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_2,min_s_34_out,min_s_34_out_ap_vld,grp_fu_199_p_din0,grp_fu_199_p_din1,grp_fu_199_p_opcode,grp_fu_199_p_dout0,grp_fu_199_p_ce,grp_fu_374_p_din0,grp_fu_374_p_din1,grp_fu_374_p_opcode,grp_fu_374_p_dout0,grp_fu_374_p_ce); 
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
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] zext_ln52_2;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_199_p_din0;
output  [63:0] grp_fu_199_p_din1;
output  [1:0] grp_fu_199_p_opcode;
input  [63:0] grp_fu_199_p_dout0;
output   grp_fu_199_p_ce;
output  [63:0] grp_fu_374_p_din0;
output  [63:0] grp_fu_374_p_din1;
output  [4:0] grp_fu_374_p_opcode;
input  [0:0] grp_fu_374_p_dout0;
output   grp_fu_374_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_reg_3181;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_456;
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
reg   [63:0] reg_461;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_465;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_470;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_475;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_480;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_485;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_490;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_495;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_500_p1;
reg   [11:0] zext_ln52_cast_reg_2944;
reg   [5:0] s_reg_2963;
wire   [4:0] lshr_ln8_8_fu_522_p4;
reg   [4:0] lshr_ln8_8_reg_2981;
wire   [5:0] add_ln53_fu_564_p2;
reg   [5:0] add_ln53_reg_3001;
wire   [5:0] add_ln53_1_fu_593_p2;
reg   [5:0] add_ln53_1_reg_3012;
wire   [5:0] add_ln53_2_fu_618_p2;
reg   [5:0] add_ln53_2_reg_3023;
reg   [63:0] llike_1_load_reg_3034;
reg   [63:0] llike_load_reg_3039;
reg   [63:0] llike_1_load_32_reg_3049;
reg   [63:0] llike_load_32_reg_3059;
wire   [5:0] add_ln53_3_fu_681_p2;
reg   [5:0] add_ln53_3_reg_3064;
wire   [5:0] add_ln53_4_fu_703_p2;
reg   [5:0] add_ln53_4_reg_3075;
wire   [5:0] add_ln53_6_fu_747_p2;
reg   [5:0] add_ln53_6_reg_3091;
wire   [63:0] bitcast_ln54_fu_777_p1;
reg   [63:0] llike_1_load_33_reg_3112;
reg   [63:0] llike_load_33_reg_3122;
wire   [5:0] add_ln53_5_fu_816_p2;
reg   [5:0] add_ln53_5_reg_3127;
reg   [63:0] llike_1_load_34_reg_3133;
reg   [63:0] llike_load_34_reg_3138;
wire   [5:0] add_ln53_8_fu_838_p2;
reg   [5:0] add_ln53_8_reg_3148;
wire   [5:0] add_ln53_10_fu_882_p2;
reg   [5:0] add_ln53_10_reg_3164;
wire   [6:0] add_ln53_14_fu_909_p2;
reg   [6:0] add_ln53_14_reg_3175;
reg   [0:0] tmp_reg_3181_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_923_p1;
wire   [5:0] add_ln53_7_fu_962_p2;
reg   [5:0] add_ln53_7_reg_3200;
reg   [63:0] llike_1_load_35_reg_3206;
reg   [63:0] llike_load_35_reg_3211;
reg   [63:0] llike_1_load_36_reg_3216;
reg   [63:0] llike_load_36_reg_3221;
wire   [5:0] add_ln53_12_fu_984_p2;
reg   [5:0] add_ln53_12_reg_3231;
reg   [5:0] add_ln53_12_reg_3231_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_2_fu_1051_p1;
wire   [5:0] add_ln53_9_fu_1090_p2;
reg   [5:0] add_ln53_9_reg_3267;
reg   [63:0] llike_1_load_37_reg_3273;
reg   [63:0] llike_load_37_reg_3278;
reg   [63:0] llike_1_load_38_reg_3283;
reg   [63:0] llike_load_38_reg_3288;
wire   [63:0] bitcast_ln54_3_fu_1095_p1;
reg   [63:0] transition_load_71_reg_3298;
wire   [5:0] add_ln53_11_fu_1134_p2;
reg   [5:0] add_ln53_11_reg_3313;
reg   [5:0] add_ln53_11_reg_3313_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_4_fu_1139_p1;
reg   [63:0] transition_load_73_reg_3324;
wire   [5:0] add_ln53_13_fu_1178_p2;
reg   [5:0] add_ln53_13_reg_3339;
reg   [5:0] add_ln53_13_reg_3339_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_5_fu_1183_p1;
reg   [63:0] transition_load_75_reg_3350;
wire   [63:0] bitcast_ln54_6_fu_1222_p1;
reg   [63:0] transition_load_77_reg_3370;
wire   [5:0] trunc_ln54_fu_1227_p1;
reg   [5:0] trunc_ln54_reg_3375;
reg   [5:0] trunc_ln54_reg_3375_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_7_fu_1248_p1;
reg   [63:0] min_p_127_reg_3390;
wire   [63:0] bitcast_ln54_8_fu_1257_p1;
wire   [0:0] and_ln55_1_fu_1338_p2;
reg   [0:0] and_ln55_1_reg_3402;
wire   [63:0] bitcast_ln54_9_fu_1344_p1;
wire   [63:0] min_p_129_fu_1349_p3;
reg   [63:0] min_p_129_reg_3413;
wire   [63:0] bitcast_ln54_10_fu_1356_p1;
wire   [0:0] and_ln55_3_fu_1437_p2;
reg   [0:0] and_ln55_3_reg_3425;
wire   [63:0] bitcast_ln54_11_fu_1443_p1;
wire   [63:0] min_p_131_fu_1448_p3;
reg   [63:0] min_p_131_reg_3436;
wire   [63:0] bitcast_ln54_12_fu_1455_p1;
wire   [0:0] and_ln55_5_fu_1536_p2;
reg   [0:0] and_ln55_5_reg_3448;
wire   [63:0] bitcast_ln54_13_fu_1542_p1;
wire   [63:0] min_p_133_fu_1547_p3;
reg   [63:0] min_p_133_reg_3459;
wire   [63:0] bitcast_ln54_14_fu_1554_p1;
wire   [0:0] and_ln55_7_fu_1635_p2;
reg   [0:0] and_ln55_7_reg_3471;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_70_reg_3477;
wire   [63:0] bitcast_ln54_15_fu_1641_p1;
wire   [63:0] min_p_135_fu_1679_p3;
reg   [63:0] min_p_135_reg_3489;
wire   [7:0] min_s_7_fu_1689_p3;
reg   [7:0] min_s_7_reg_3496;
wire   [0:0] and_ln55_9_fu_1773_p2;
reg   [0:0] and_ln55_9_reg_3501;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_72_reg_3507;
wire   [63:0] min_p_137_fu_1779_p3;
reg   [63:0] min_p_137_reg_3514;
wire   [0:0] and_ln55_11_fu_1863_p2;
reg   [0:0] and_ln55_11_reg_3521;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_74_reg_3527;
wire   [63:0] min_p_139_fu_1878_p3;
reg   [63:0] min_p_139_reg_3534;
wire   [7:0] min_s_9_fu_1888_p3;
reg   [7:0] min_s_9_reg_3541;
wire   [0:0] and_ln55_13_fu_1972_p2;
reg   [0:0] and_ln55_13_reg_3546;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_76_reg_3552;
wire   [63:0] min_p_141_fu_1978_p3;
reg   [63:0] min_p_141_reg_3559;
wire   [0:0] and_ln55_15_fu_2062_p2;
reg   [0:0] and_ln55_15_reg_3566;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_143_fu_2077_p3;
reg   [63:0] min_p_143_reg_3572;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_2087_p3;
reg   [7:0] min_s_11_reg_3579;
wire   [0:0] and_ln55_17_fu_2170_p2;
reg   [0:0] and_ln55_17_reg_3584;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_145_fu_2176_p3;
reg   [63:0] min_p_145_reg_3590;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_2259_p2;
reg   [0:0] and_ln55_19_reg_3597;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_147_fu_2274_p3;
reg   [63:0] min_p_147_reg_3603;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_2284_p3;
reg   [7:0] min_s_13_reg_3610;
wire   [0:0] and_ln55_21_fu_2367_p2;
reg   [0:0] and_ln55_21_reg_3615;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_149_fu_2373_p3;
reg   [63:0] min_p_149_reg_3621;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_2466_p2;
reg   [0:0] and_ln55_23_reg_3628;
wire   [63:0] min_p_151_fu_2481_p3;
reg   [63:0] min_p_151_reg_3634;
wire   [7:0] min_s_15_fu_2491_p3;
reg   [7:0] min_s_15_reg_3641;
wire   [0:0] and_ln55_25_fu_2574_p2;
reg   [0:0] and_ln55_25_reg_3646;
wire   [63:0] min_p_153_fu_2580_p3;
reg   [63:0] min_p_153_reg_3652;
wire   [0:0] and_ln55_27_fu_2663_p2;
reg   [0:0] and_ln55_27_reg_3659;
wire   [63:0] min_p_155_fu_2669_p3;
reg   [63:0] min_p_155_reg_3665;
wire   [0:0] and_ln55_29_fu_2752_p2;
reg   [0:0] and_ln55_29_reg_3672;
wire   [63:0] min_p_157_fu_2758_p3;
reg   [63:0] min_p_157_reg_3678;
wire   [7:0] min_s_18_fu_2786_p3;
reg   [7:0] min_s_18_reg_3685;
reg   [0:0] tmp_283_reg_3690;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_540_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_559_p1;
wire   [63:0] zext_ln54_17_fu_588_p1;
wire   [63:0] zext_ln54_18_fu_613_p1;
wire   [63:0] zext_ln54_19_fu_642_p1;
wire   [63:0] zext_ln54_1_fu_659_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_676_p1;
wire   [63:0] zext_ln54_20_fu_698_p1;
wire   [63:0] zext_ln54_21_fu_725_p1;
wire   [63:0] zext_ln54_22_fu_742_p1;
wire   [63:0] zext_ln54_23_fu_769_p1;
wire   [63:0] zext_ln54_3_fu_794_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_811_p1;
wire   [63:0] zext_ln54_24_fu_833_p1;
wire   [63:0] zext_ln54_25_fu_860_p1;
wire   [63:0] zext_ln54_26_fu_877_p1;
wire   [63:0] zext_ln54_27_fu_904_p1;
wire   [63:0] zext_ln54_5_fu_940_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_957_p1;
wire   [63:0] zext_ln54_28_fu_979_p1;
wire   [63:0] zext_ln54_29_fu_1006_p1;
wire   [63:0] zext_ln54_30_fu_1023_p1;
wire   [63:0] zext_ln54_32_fu_1046_p1;
wire   [63:0] zext_ln54_7_fu_1068_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1085_p1;
wire   [63:0] zext_ln54_9_fu_1112_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1129_p1;
wire   [63:0] zext_ln54_11_fu_1156_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_1173_p1;
wire   [63:0] zext_ln54_13_fu_1200_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1217_p1;
wire   [63:0] zext_ln54_15_fu_1243_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_122;
wire   [63:0] min_p_159_fu_2876_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_126;
wire   [7:0] min_s_19_fu_2886_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_130;
wire   [5:0] add_ln53_15_fu_2379_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_448_p0;
reg   [63:0] grp_fu_448_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_452_p0;
reg   [63:0] grp_fu_452_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [12:0] tmp_s_fu_532_p3;
wire   [11:0] shl_ln2_fu_545_p3;
wire   [11:0] add_ln54_fu_553_p2;
wire   [4:0] lshr_ln8_9_fu_570_p4;
wire   [12:0] tmp_225_fu_580_p3;
wire   [4:0] add_ln8_fu_599_p2;
wire   [12:0] tmp_229_fu_605_p3;
wire   [4:0] lshr_ln8_s_fu_624_p4;
wire   [12:0] tmp_233_fu_634_p3;
wire   [11:0] shl_ln54_1_fu_647_p3;
wire   [11:0] add_ln54_1_fu_654_p2;
wire   [11:0] shl_ln54_2_fu_664_p3;
wire   [11:0] add_ln54_2_fu_671_p2;
wire   [4:0] add_ln8_1_fu_686_p2;
wire   [12:0] tmp_237_fu_691_p3;
wire   [4:0] lshr_ln8_1_fu_708_p4;
wire   [12:0] tmp_241_fu_718_p3;
wire   [4:0] add_ln8_2_fu_730_p2;
wire   [12:0] tmp_245_fu_735_p3;
wire   [4:0] lshr_ln8_2_fu_752_p4;
wire   [12:0] tmp_249_fu_762_p3;
wire   [11:0] shl_ln54_3_fu_782_p3;
wire   [11:0] add_ln54_3_fu_789_p2;
wire   [11:0] shl_ln54_4_fu_799_p3;
wire   [11:0] add_ln54_4_fu_806_p2;
wire   [4:0] add_ln8_3_fu_821_p2;
wire   [12:0] tmp_253_fu_826_p3;
wire   [4:0] lshr_ln8_3_fu_843_p4;
wire   [12:0] tmp_257_fu_853_p3;
wire   [4:0] add_ln8_4_fu_865_p2;
wire   [12:0] tmp_261_fu_870_p3;
wire   [4:0] lshr_ln8_4_fu_887_p4;
wire   [12:0] tmp_265_fu_897_p3;
wire   [6:0] zext_ln12_fu_774_p1;
wire   [11:0] shl_ln54_5_fu_928_p3;
wire   [11:0] add_ln54_5_fu_935_p2;
wire   [11:0] shl_ln54_6_fu_945_p3;
wire   [11:0] add_ln54_6_fu_952_p2;
wire   [4:0] add_ln8_5_fu_967_p2;
wire   [12:0] tmp_269_fu_972_p3;
wire   [4:0] lshr_ln8_5_fu_989_p4;
wire   [12:0] tmp_273_fu_999_p3;
wire   [4:0] add_ln8_6_fu_1011_p2;
wire   [12:0] tmp_277_fu_1016_p3;
wire   [5:0] lshr_ln9_2_fu_1028_p4;
wire   [12:0] zext_ln54_31_fu_1037_p1;
wire   [12:0] add_ln54_16_fu_1041_p2;
wire   [11:0] shl_ln54_7_fu_1056_p3;
wire   [11:0] add_ln54_7_fu_1063_p2;
wire   [11:0] shl_ln54_8_fu_1073_p3;
wire   [11:0] add_ln54_8_fu_1080_p2;
wire   [11:0] shl_ln54_9_fu_1100_p3;
wire   [11:0] add_ln54_9_fu_1107_p2;
wire   [11:0] shl_ln54_s_fu_1117_p3;
wire   [11:0] add_ln54_10_fu_1124_p2;
wire   [11:0] shl_ln54_10_fu_1144_p3;
wire   [11:0] add_ln54_11_fu_1151_p2;
wire   [11:0] shl_ln54_11_fu_1161_p3;
wire   [11:0] add_ln54_12_fu_1168_p2;
wire   [11:0] shl_ln54_12_fu_1188_p3;
wire   [11:0] add_ln54_13_fu_1195_p2;
wire   [11:0] shl_ln54_13_fu_1205_p3;
wire   [11:0] add_ln54_14_fu_1212_p2;
wire   [11:0] shl_ln54_14_fu_1230_p3;
wire   [11:0] add_ln54_15_fu_1238_p2;
wire   [63:0] bitcast_ln55_fu_1261_p1;
wire   [63:0] bitcast_ln55_1_fu_1279_p1;
wire   [10:0] tmp_222_fu_1265_p4;
wire   [51:0] trunc_ln55_fu_1275_p1;
wire   [0:0] icmp_ln55_1_fu_1302_p2;
wire   [0:0] icmp_ln55_fu_1296_p2;
wire   [10:0] tmp_223_fu_1282_p4;
wire   [51:0] trunc_ln55_1_fu_1292_p1;
wire   [0:0] icmp_ln55_3_fu_1320_p2;
wire   [0:0] icmp_ln55_2_fu_1314_p2;
wire   [0:0] or_ln55_fu_1308_p2;
wire   [0:0] and_ln55_fu_1332_p2;
wire   [0:0] or_ln55_1_fu_1326_p2;
wire   [63:0] bitcast_ln55_2_fu_1360_p1;
wire   [63:0] bitcast_ln55_3_fu_1378_p1;
wire   [10:0] tmp_226_fu_1364_p4;
wire   [51:0] trunc_ln55_2_fu_1374_p1;
wire   [0:0] icmp_ln55_5_fu_1401_p2;
wire   [0:0] icmp_ln55_4_fu_1395_p2;
wire   [10:0] tmp_227_fu_1381_p4;
wire   [51:0] trunc_ln55_3_fu_1391_p1;
wire   [0:0] icmp_ln55_7_fu_1419_p2;
wire   [0:0] icmp_ln55_6_fu_1413_p2;
wire   [0:0] or_ln55_3_fu_1425_p2;
wire   [0:0] or_ln55_2_fu_1407_p2;
wire   [0:0] and_ln55_2_fu_1431_p2;
wire   [63:0] bitcast_ln55_4_fu_1459_p1;
wire   [63:0] bitcast_ln55_5_fu_1477_p1;
wire   [10:0] tmp_230_fu_1463_p4;
wire   [51:0] trunc_ln55_4_fu_1473_p1;
wire   [0:0] icmp_ln55_9_fu_1500_p2;
wire   [0:0] icmp_ln55_8_fu_1494_p2;
wire   [10:0] tmp_231_fu_1480_p4;
wire   [51:0] trunc_ln55_5_fu_1490_p1;
wire   [0:0] icmp_ln55_11_fu_1518_p2;
wire   [0:0] icmp_ln55_10_fu_1512_p2;
wire   [0:0] or_ln55_5_fu_1524_p2;
wire   [0:0] or_ln55_4_fu_1506_p2;
wire   [0:0] and_ln55_4_fu_1530_p2;
wire   [63:0] bitcast_ln55_6_fu_1558_p1;
wire   [63:0] bitcast_ln55_7_fu_1576_p1;
wire   [10:0] tmp_234_fu_1562_p4;
wire   [51:0] trunc_ln55_6_fu_1572_p1;
wire   [0:0] icmp_ln55_13_fu_1599_p2;
wire   [0:0] icmp_ln55_12_fu_1593_p2;
wire   [10:0] tmp_235_fu_1579_p4;
wire   [51:0] trunc_ln55_7_fu_1589_p1;
wire   [0:0] icmp_ln55_15_fu_1617_p2;
wire   [0:0] icmp_ln55_14_fu_1611_p2;
wire   [0:0] or_ln55_7_fu_1623_p2;
wire   [0:0] or_ln55_6_fu_1605_p2;
wire   [0:0] and_ln55_6_fu_1629_p2;
wire   [7:0] zext_ln55_fu_1649_p1;
wire   [7:0] zext_ln55_1_fu_1659_p1;
wire   [7:0] min_s_4_fu_1652_p3;
wire   [7:0] zext_ln55_2_fu_1669_p1;
wire   [7:0] min_s_5_fu_1662_p3;
wire   [7:0] zext_ln55_3_fu_1686_p1;
wire   [7:0] min_s_6_fu_1672_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_1696_p1;
wire   [63:0] bitcast_ln55_9_fu_1714_p1;
wire   [10:0] tmp_238_fu_1700_p4;
wire   [51:0] trunc_ln55_8_fu_1710_p1;
wire   [0:0] icmp_ln55_17_fu_1737_p2;
wire   [0:0] icmp_ln55_16_fu_1731_p2;
wire   [10:0] tmp_239_fu_1717_p4;
wire   [51:0] trunc_ln55_9_fu_1727_p1;
wire   [0:0] icmp_ln55_19_fu_1755_p2;
wire   [0:0] icmp_ln55_18_fu_1749_p2;
wire   [0:0] or_ln55_9_fu_1761_p2;
wire   [0:0] or_ln55_8_fu_1743_p2;
wire   [0:0] and_ln55_8_fu_1767_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_1786_p1;
wire   [63:0] bitcast_ln55_11_fu_1804_p1;
wire   [10:0] tmp_242_fu_1790_p4;
wire   [51:0] trunc_ln55_10_fu_1800_p1;
wire   [0:0] icmp_ln55_21_fu_1827_p2;
wire   [0:0] icmp_ln55_20_fu_1821_p2;
wire   [10:0] tmp_243_fu_1807_p4;
wire   [51:0] trunc_ln55_11_fu_1817_p1;
wire   [0:0] icmp_ln55_23_fu_1845_p2;
wire   [0:0] icmp_ln55_22_fu_1839_p2;
wire   [0:0] or_ln55_11_fu_1851_p2;
wire   [0:0] or_ln55_10_fu_1833_p2;
wire   [0:0] and_ln55_10_fu_1857_p2;
wire   [7:0] zext_ln55_4_fu_1869_p1;
wire   [7:0] zext_ln55_5_fu_1885_p1;
wire   [7:0] min_s_8_fu_1872_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_1895_p1;
wire   [63:0] bitcast_ln55_13_fu_1913_p1;
wire   [10:0] tmp_246_fu_1899_p4;
wire   [51:0] trunc_ln55_12_fu_1909_p1;
wire   [0:0] icmp_ln55_25_fu_1936_p2;
wire   [0:0] icmp_ln55_24_fu_1930_p2;
wire   [10:0] tmp_247_fu_1916_p4;
wire   [51:0] trunc_ln55_13_fu_1926_p1;
wire   [0:0] icmp_ln55_27_fu_1954_p2;
wire   [0:0] icmp_ln55_26_fu_1948_p2;
wire   [0:0] or_ln55_13_fu_1960_p2;
wire   [0:0] or_ln55_12_fu_1942_p2;
wire   [0:0] and_ln55_12_fu_1966_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_1985_p1;
wire   [63:0] bitcast_ln55_15_fu_2003_p1;
wire   [10:0] tmp_250_fu_1989_p4;
wire   [51:0] trunc_ln55_14_fu_1999_p1;
wire   [0:0] icmp_ln55_29_fu_2026_p2;
wire   [0:0] icmp_ln55_28_fu_2020_p2;
wire   [10:0] tmp_251_fu_2006_p4;
wire   [51:0] trunc_ln55_15_fu_2016_p1;
wire   [0:0] icmp_ln55_31_fu_2044_p2;
wire   [0:0] icmp_ln55_30_fu_2038_p2;
wire   [0:0] or_ln55_15_fu_2050_p2;
wire   [0:0] or_ln55_14_fu_2032_p2;
wire   [0:0] and_ln55_14_fu_2056_p2;
wire   [7:0] zext_ln55_6_fu_2068_p1;
wire   [7:0] zext_ln55_7_fu_2084_p1;
wire   [7:0] min_s_10_fu_2071_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_2094_p1;
wire   [63:0] bitcast_ln55_17_fu_2111_p1;
wire   [10:0] tmp_254_fu_2097_p4;
wire   [51:0] trunc_ln55_16_fu_2107_p1;
wire   [0:0] icmp_ln55_33_fu_2134_p2;
wire   [0:0] icmp_ln55_32_fu_2128_p2;
wire   [10:0] tmp_255_fu_2114_p4;
wire   [51:0] trunc_ln55_17_fu_2124_p1;
wire   [0:0] icmp_ln55_35_fu_2152_p2;
wire   [0:0] icmp_ln55_34_fu_2146_p2;
wire   [0:0] or_ln55_17_fu_2158_p2;
wire   [0:0] or_ln55_16_fu_2140_p2;
wire   [0:0] and_ln55_16_fu_2164_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_2182_p1;
wire   [63:0] bitcast_ln55_19_fu_2200_p1;
wire   [10:0] tmp_258_fu_2186_p4;
wire   [51:0] trunc_ln55_18_fu_2196_p1;
wire   [0:0] icmp_ln55_37_fu_2223_p2;
wire   [0:0] icmp_ln55_36_fu_2217_p2;
wire   [10:0] tmp_259_fu_2203_p4;
wire   [51:0] trunc_ln55_19_fu_2213_p1;
wire   [0:0] icmp_ln55_39_fu_2241_p2;
wire   [0:0] icmp_ln55_38_fu_2235_p2;
wire   [0:0] or_ln55_19_fu_2247_p2;
wire   [0:0] or_ln55_18_fu_2229_p2;
wire   [0:0] and_ln55_18_fu_2253_p2;
wire   [7:0] zext_ln55_8_fu_2265_p1;
wire   [7:0] zext_ln55_9_fu_2281_p1;
wire   [7:0] min_s_12_fu_2268_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_2291_p1;
wire   [63:0] bitcast_ln55_21_fu_2308_p1;
wire   [10:0] tmp_262_fu_2294_p4;
wire   [51:0] trunc_ln55_20_fu_2304_p1;
wire   [0:0] icmp_ln55_41_fu_2331_p2;
wire   [0:0] icmp_ln55_40_fu_2325_p2;
wire   [10:0] tmp_263_fu_2311_p4;
wire   [51:0] trunc_ln55_21_fu_2321_p1;
wire   [0:0] icmp_ln55_43_fu_2349_p2;
wire   [0:0] icmp_ln55_42_fu_2343_p2;
wire   [0:0] or_ln55_21_fu_2355_p2;
wire   [0:0] or_ln55_20_fu_2337_p2;
wire   [0:0] and_ln55_20_fu_2361_p2;
wire   [63:0] bitcast_ln55_22_fu_2389_p1;
wire   [63:0] bitcast_ln55_23_fu_2407_p1;
wire   [10:0] tmp_266_fu_2393_p4;
wire   [51:0] trunc_ln55_22_fu_2403_p1;
wire   [0:0] icmp_ln55_45_fu_2430_p2;
wire   [0:0] icmp_ln55_44_fu_2424_p2;
wire   [10:0] tmp_267_fu_2410_p4;
wire   [51:0] trunc_ln55_23_fu_2420_p1;
wire   [0:0] icmp_ln55_47_fu_2448_p2;
wire   [0:0] icmp_ln55_46_fu_2442_p2;
wire   [0:0] or_ln55_23_fu_2454_p2;
wire   [0:0] or_ln55_22_fu_2436_p2;
wire   [0:0] and_ln55_22_fu_2460_p2;
wire   [7:0] zext_ln55_10_fu_2472_p1;
wire   [7:0] zext_ln55_11_fu_2488_p1;
wire   [7:0] min_s_14_fu_2475_p3;
wire   [63:0] bitcast_ln55_24_fu_2498_p1;
wire   [63:0] bitcast_ln55_25_fu_2515_p1;
wire   [10:0] tmp_270_fu_2501_p4;
wire   [51:0] trunc_ln55_24_fu_2511_p1;
wire   [0:0] icmp_ln55_49_fu_2538_p2;
wire   [0:0] icmp_ln55_48_fu_2532_p2;
wire   [10:0] tmp_271_fu_2518_p4;
wire   [51:0] trunc_ln55_25_fu_2528_p1;
wire   [0:0] icmp_ln55_51_fu_2556_p2;
wire   [0:0] icmp_ln55_50_fu_2550_p2;
wire   [0:0] or_ln55_25_fu_2562_p2;
wire   [0:0] or_ln55_24_fu_2544_p2;
wire   [0:0] and_ln55_24_fu_2568_p2;
wire   [63:0] bitcast_ln55_26_fu_2586_p1;
wire   [63:0] bitcast_ln55_27_fu_2604_p1;
wire   [10:0] tmp_274_fu_2590_p4;
wire   [51:0] trunc_ln55_26_fu_2600_p1;
wire   [0:0] icmp_ln55_53_fu_2627_p2;
wire   [0:0] icmp_ln55_52_fu_2621_p2;
wire   [10:0] tmp_275_fu_2607_p4;
wire   [51:0] trunc_ln55_27_fu_2617_p1;
wire   [0:0] icmp_ln55_55_fu_2645_p2;
wire   [0:0] icmp_ln55_54_fu_2639_p2;
wire   [0:0] or_ln55_27_fu_2651_p2;
wire   [0:0] or_ln55_26_fu_2633_p2;
wire   [0:0] and_ln55_26_fu_2657_p2;
wire   [63:0] bitcast_ln55_28_fu_2676_p1;
wire   [63:0] bitcast_ln55_29_fu_2693_p1;
wire   [10:0] tmp_278_fu_2679_p4;
wire   [51:0] trunc_ln55_28_fu_2689_p1;
wire   [0:0] icmp_ln55_57_fu_2716_p2;
wire   [0:0] icmp_ln55_56_fu_2710_p2;
wire   [10:0] tmp_279_fu_2696_p4;
wire   [51:0] trunc_ln55_29_fu_2706_p1;
wire   [0:0] icmp_ln55_59_fu_2734_p2;
wire   [0:0] icmp_ln55_58_fu_2728_p2;
wire   [0:0] or_ln55_29_fu_2740_p2;
wire   [0:0] or_ln55_28_fu_2722_p2;
wire   [0:0] and_ln55_28_fu_2746_p2;
wire   [7:0] zext_ln55_12_fu_2764_p1;
wire   [7:0] zext_ln55_13_fu_2773_p1;
wire   [7:0] min_s_16_fu_2767_p3;
wire   [7:0] zext_ln55_14_fu_2783_p1;
wire   [7:0] min_s_17_fu_2776_p3;
wire   [63:0] bitcast_ln55_30_fu_2794_p1;
wire   [63:0] bitcast_ln55_31_fu_2812_p1;
wire   [10:0] tmp_281_fu_2798_p4;
wire   [51:0] trunc_ln55_30_fu_2808_p1;
wire   [0:0] icmp_ln55_61_fu_2835_p2;
wire   [0:0] icmp_ln55_60_fu_2829_p2;
wire   [10:0] tmp_282_fu_2815_p4;
wire   [51:0] trunc_ln55_31_fu_2825_p1;
wire   [0:0] icmp_ln55_63_fu_2853_p2;
wire   [0:0] icmp_ln55_62_fu_2847_p2;
wire   [0:0] or_ln55_31_fu_2859_p2;
wire   [0:0] or_ln55_30_fu_2841_p2;
wire   [0:0] and_ln55_30_fu_2865_p2;
wire   [0:0] and_ln55_31_fu_2871_p2;
wire   [7:0] zext_ln55_15_fu_2883_p1;
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
#0 min_p_fu_122 = 64'd0;
#0 min_s_fu_126 = 8'd0;
#0 min_s_1_fu_130 = 6'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_122 <= min_p_195;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_3181_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_122 <= min_p_159_fu_2876_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_130 <= 6'd1;
    end else if (((tmp_reg_3181 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_130 <= add_ln53_15_fu_2379_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_126 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_3181_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_126 <= min_s_19_fu_2886_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_456 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_456 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_465 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_465 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_470 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_470 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_10_reg_3164 <= add_ln53_10_fu_882_p2;
        add_ln53_14_reg_3175 <= add_ln53_14_fu_909_p2;
        add_ln53_5_reg_3127 <= add_ln53_5_fu_816_p2;
        add_ln53_8_reg_3148 <= add_ln53_8_fu_838_p2;
        and_ln55_25_reg_3646 <= and_ln55_25_fu_2574_p2;
        tmp_reg_3181 <= add_ln53_14_fu_909_p2[32'd6];
        tmp_reg_3181_pp0_iter1_reg <= tmp_reg_3181;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln53_11_reg_3313 <= add_ln53_11_fu_1134_p2;
        add_ln53_11_reg_3313_pp0_iter1_reg <= add_ln53_11_reg_3313;
        min_p_155_reg_3665 <= min_p_155_fu_2669_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_12_reg_3231 <= add_ln53_12_fu_984_p2;
        add_ln53_12_reg_3231_pp0_iter1_reg <= add_ln53_12_reg_3231;
        add_ln53_7_reg_3200 <= add_ln53_7_fu_962_p2;
        min_p_153_reg_3652 <= min_p_153_fu_2580_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln53_13_reg_3339 <= add_ln53_13_fu_1178_p2;
        add_ln53_13_reg_3339_pp0_iter1_reg <= add_ln53_13_reg_3339;
        and_ln55_29_reg_3672 <= and_ln55_29_fu_2752_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_3012 <= add_ln53_1_fu_593_p2;
        add_ln53_2_reg_3023 <= add_ln53_2_fu_618_p2;
        add_ln53_reg_3001 <= add_ln53_fu_564_p2;
        and_ln55_23_reg_3628 <= and_ln55_23_fu_2466_p2;
        lshr_ln8_8_reg_2981 <= {{ap_sig_allocacmp_s[5:1]}};
        s_reg_2963 <= ap_sig_allocacmp_s;
        zext_ln52_cast_reg_2944[7 : 0] <= zext_ln52_cast_fu_500_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_3064 <= add_ln53_3_fu_681_p2;
        add_ln53_4_reg_3075 <= add_ln53_4_fu_703_p2;
        add_ln53_6_reg_3091 <= add_ln53_6_fu_747_p2;
        min_p_151_reg_3634 <= min_p_151_fu_2481_p3;
        min_s_15_reg_3641 <= min_s_15_fu_2491_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln53_9_reg_3267 <= add_ln53_9_fu_1090_p2;
        and_ln55_27_reg_3659 <= and_ln55_27_fu_2663_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_3521 <= and_ln55_11_fu_1863_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_3546 <= and_ln55_13_fu_1972_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_3566 <= and_ln55_15_fu_2062_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_3584 <= and_ln55_17_fu_2170_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_3597 <= and_ln55_19_fu_2259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3402 <= and_ln55_1_fu_1338_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_3615 <= and_ln55_21_fu_2367_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3425 <= and_ln55_3_fu_1437_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3448 <= and_ln55_5_fu_1536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_3471 <= and_ln55_7_fu_1635_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_3501 <= and_ln55_9_fu_1773_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_32_reg_3049 <= llike_1_q0;
        llike_1_load_reg_3034 <= llike_1_q1;
        llike_load_32_reg_3059 <= llike_q0;
        llike_load_reg_3039 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_33_reg_3112 <= llike_1_q1;
        llike_1_load_34_reg_3133 <= llike_1_q0;
        llike_load_33_reg_3122 <= llike_q1;
        llike_load_34_reg_3138 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_load_35_reg_3206 <= llike_1_q1;
        llike_1_load_36_reg_3216 <= llike_1_q0;
        llike_load_35_reg_3211 <= llike_q1;
        llike_load_36_reg_3221 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_load_37_reg_3273 <= llike_1_q1;
        llike_1_load_38_reg_3283 <= llike_1_q0;
        llike_load_37_reg_3278 <= llike_q1;
        llike_load_38_reg_3288 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_3390 <= min_p_fu_122;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_3413 <= min_p_129_fu_1349_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_3436 <= min_p_131_fu_1448_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_133_reg_3459 <= min_p_133_fu_1547_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_135_reg_3489 <= min_p_135_fu_1679_p3;
        min_s_7_reg_3496 <= min_s_7_fu_1689_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_137_reg_3514 <= min_p_137_fu_1779_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_139_reg_3534 <= min_p_139_fu_1878_p3;
        min_s_9_reg_3541 <= min_s_9_fu_1888_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_141_reg_3559 <= min_p_141_fu_1978_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_143_reg_3572 <= min_p_143_fu_2077_p3;
        min_s_11_reg_3579 <= min_s_11_fu_2087_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_145_reg_3590 <= min_p_145_fu_2176_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_147_reg_3603 <= min_p_147_fu_2274_p3;
        min_s_13_reg_3610 <= min_s_13_fu_2284_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_149_reg_3621 <= min_p_149_fu_2373_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_157_reg_3678 <= min_p_157_fu_2758_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_3685 <= min_s_18_fu_2786_p3;
        tmp_283_reg_3690 <= grp_fu_374_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_70_reg_3477 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_72_reg_3507 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_74_reg_3527 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_76_reg_3552 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_461 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_475 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_480 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_485 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_490 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_495 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        transition_load_71_reg_3298 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        transition_load_73_reg_3324 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        transition_load_75_reg_3350 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        transition_load_77_reg_3370 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln54_reg_3375 <= trunc_ln54_fu_1227_p1;
        trunc_ln54_reg_3375_pp0_iter1_reg <= trunc_ln54_reg_3375;
    end
end
always @ (*) begin
    if (((tmp_reg_3181 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_3181_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_130;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_448_p0 = llike_load_38_reg_3288;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_448_p0 = llike_1_load_38_reg_3283;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_448_p0 = llike_load_37_reg_3278;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_448_p0 = llike_1_load_37_reg_3273;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_448_p0 = llike_load_36_reg_3221;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_448_p0 = llike_1_load_36_reg_3216;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_448_p0 = llike_load_35_reg_3211;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_448_p0 = llike_1_load_35_reg_3206;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_448_p0 = llike_load_34_reg_3138;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_448_p0 = llike_1_load_34_reg_3133;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_448_p0 = llike_load_33_reg_3122;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_448_p0 = llike_1_load_33_reg_3112;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_448_p0 = llike_load_32_reg_3059;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_448_p0 = llike_1_load_32_reg_3049;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_448_p0 = llike_load_reg_3039;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_448_p0 = llike_1_load_reg_3034;
        end else begin
            grp_fu_448_p0 = 'bx;
        end
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_448_p1 = bitcast_ln54_15_fu_1641_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_448_p1 = bitcast_ln54_14_fu_1554_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_448_p1 = bitcast_ln54_13_fu_1542_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_448_p1 = bitcast_ln54_12_fu_1455_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_448_p1 = bitcast_ln54_11_fu_1443_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_448_p1 = bitcast_ln54_10_fu_1356_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_448_p1 = bitcast_ln54_9_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_448_p1 = bitcast_ln54_8_fu_1257_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_448_p1 = bitcast_ln54_7_fu_1248_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_448_p1 = bitcast_ln54_6_fu_1222_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_448_p1 = bitcast_ln54_5_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_448_p1 = bitcast_ln54_4_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_448_p1 = bitcast_ln54_3_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_448_p1 = bitcast_ln54_2_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_448_p1 = bitcast_ln54_1_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_448_p1 = bitcast_ln54_fu_777_p1;
        end else begin
            grp_fu_448_p1 = 'bx;
        end
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_452_p0 = p_76_reg_3552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p0 = p_74_reg_3527;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_452_p0 = p_72_reg_3507;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_452_p0 = p_70_reg_3477;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_452_p0 = reg_495;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_452_p0 = reg_490;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_452_p0 = reg_485;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_452_p0 = reg_480;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        grp_fu_452_p0 = reg_475;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_452_p1 = min_p_157_fu_2758_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_452_p1 = min_p_155_fu_2669_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_452_p1 = min_p_153_fu_2580_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p1 = min_p_151_fu_2481_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_452_p1 = min_p_149_fu_2373_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_452_p1 = min_p_147_fu_2274_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_452_p1 = min_p_145_fu_2176_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_452_p1 = min_p_143_fu_2077_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_452_p1 = min_p_141_fu_1978_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_452_p1 = min_p_139_fu_1878_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_452_p1 = min_p_137_fu_1779_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_452_p1 = min_p_135_fu_1679_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_452_p1 = min_p_133_fu_1547_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_452_p1 = min_p_131_fu_1448_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_452_p1 = min_p_129_fu_1349_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_452_p1 = min_p_fu_122;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_1_address0_local = zext_ln54_30_fu_1023_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_1_address0_local = zext_ln54_26_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_22_fu_742_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_18_fu_613_p1;
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
            llike_1_address1_local = zext_ln54_28_fu_979_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_1_address1_local = zext_ln54_24_fu_833_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln54_20_fu_698_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_16_fu_540_p1;
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
            llike_address0_local = zext_ln54_32_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address0_local = zext_ln54_27_fu_904_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_23_fu_769_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_19_fu_642_p1;
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
            llike_address1_local = zext_ln54_29_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address1_local = zext_ln54_25_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln54_21_fu_725_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_17_fu_588_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (tmp_reg_3181_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address0_local = zext_ln54_13_fu_1200_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address0_local = zext_ln54_11_fu_1156_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address0_local = zext_ln54_9_fu_1112_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address0_local = zext_ln54_7_fu_1068_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_940_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_794_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_676_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_559_p1;
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
            transition_address1_local = zext_ln54_15_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address1_local = zext_ln54_14_fu_1217_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address1_local = zext_ln54_12_fu_1173_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address1_local = zext_ln54_10_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln54_8_fu_1085_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_957_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_811_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_659_p1;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
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
assign add_ln53_10_fu_882_p2 = (s_reg_2963 + 6'd11);
assign add_ln53_11_fu_1134_p2 = (s_reg_2963 + 6'd12);
assign add_ln53_12_fu_984_p2 = (s_reg_2963 + 6'd13);
assign add_ln53_13_fu_1178_p2 = (s_reg_2963 + 6'd14);
assign add_ln53_14_fu_909_p2 = (zext_ln12_fu_774_p1 + 7'd15);
assign add_ln53_15_fu_2379_p2 = (s_reg_2963 + 6'd16);
assign add_ln53_1_fu_593_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_618_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_681_p2 = (s_reg_2963 + 6'd4);
assign add_ln53_4_fu_703_p2 = (s_reg_2963 + 6'd5);
assign add_ln53_5_fu_816_p2 = (s_reg_2963 + 6'd6);
assign add_ln53_6_fu_747_p2 = (s_reg_2963 + 6'd7);
assign add_ln53_7_fu_962_p2 = (s_reg_2963 + 6'd8);
assign add_ln53_8_fu_838_p2 = (s_reg_2963 + 6'd9);
assign add_ln53_9_fu_1090_p2 = (s_reg_2963 + 6'd10);
assign add_ln53_fu_564_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1124_p2 = (shl_ln54_s_fu_1117_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_11_fu_1151_p2 = (shl_ln54_10_fu_1144_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_12_fu_1168_p2 = (shl_ln54_11_fu_1161_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_13_fu_1195_p2 = (shl_ln54_12_fu_1188_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_14_fu_1212_p2 = (shl_ln54_13_fu_1205_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_15_fu_1238_p2 = (shl_ln54_14_fu_1230_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_16_fu_1041_p2 = (zext_ln52_2 + zext_ln54_31_fu_1037_p1);
assign add_ln54_1_fu_654_p2 = (shl_ln54_1_fu_647_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_2_fu_671_p2 = (shl_ln54_2_fu_664_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_3_fu_789_p2 = (shl_ln54_3_fu_782_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_4_fu_806_p2 = (shl_ln54_4_fu_799_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_5_fu_935_p2 = (shl_ln54_5_fu_928_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_6_fu_952_p2 = (shl_ln54_6_fu_945_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_7_fu_1063_p2 = (shl_ln54_7_fu_1056_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_8_fu_1080_p2 = (shl_ln54_8_fu_1073_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_9_fu_1107_p2 = (shl_ln54_9_fu_1100_p3 + zext_ln52_cast_reg_2944);
assign add_ln54_fu_553_p2 = (shl_ln2_fu_545_p3 + zext_ln52_cast_fu_500_p1);
assign add_ln8_1_fu_686_p2 = (lshr_ln8_8_reg_2981 + 5'd2);
assign add_ln8_2_fu_730_p2 = (lshr_ln8_8_reg_2981 + 5'd3);
assign add_ln8_3_fu_821_p2 = (lshr_ln8_8_reg_2981 + 5'd4);
assign add_ln8_4_fu_865_p2 = (lshr_ln8_8_reg_2981 + 5'd5);
assign add_ln8_5_fu_967_p2 = (lshr_ln8_8_reg_2981 + 5'd6);
assign add_ln8_6_fu_1011_p2 = (lshr_ln8_8_reg_2981 + 5'd7);
assign add_ln8_fu_599_p2 = (lshr_ln8_8_fu_522_p4 + 5'd1);
assign and_ln55_10_fu_1857_p2 = (or_ln55_11_fu_1851_p2 & or_ln55_10_fu_1833_p2);
assign and_ln55_11_fu_1863_p2 = (grp_fu_374_p_dout0 & and_ln55_10_fu_1857_p2);
assign and_ln55_12_fu_1966_p2 = (or_ln55_13_fu_1960_p2 & or_ln55_12_fu_1942_p2);
assign and_ln55_13_fu_1972_p2 = (grp_fu_374_p_dout0 & and_ln55_12_fu_1966_p2);
assign and_ln55_14_fu_2056_p2 = (or_ln55_15_fu_2050_p2 & or_ln55_14_fu_2032_p2);
assign and_ln55_15_fu_2062_p2 = (grp_fu_374_p_dout0 & and_ln55_14_fu_2056_p2);
assign and_ln55_16_fu_2164_p2 = (or_ln55_17_fu_2158_p2 & or_ln55_16_fu_2140_p2);
assign and_ln55_17_fu_2170_p2 = (grp_fu_374_p_dout0 & and_ln55_16_fu_2164_p2);
assign and_ln55_18_fu_2253_p2 = (or_ln55_19_fu_2247_p2 & or_ln55_18_fu_2229_p2);
assign and_ln55_19_fu_2259_p2 = (grp_fu_374_p_dout0 & and_ln55_18_fu_2253_p2);
assign and_ln55_1_fu_1338_p2 = (or_ln55_1_fu_1326_p2 & and_ln55_fu_1332_p2);
assign and_ln55_20_fu_2361_p2 = (or_ln55_21_fu_2355_p2 & or_ln55_20_fu_2337_p2);
assign and_ln55_21_fu_2367_p2 = (grp_fu_374_p_dout0 & and_ln55_20_fu_2361_p2);
assign and_ln55_22_fu_2460_p2 = (or_ln55_23_fu_2454_p2 & or_ln55_22_fu_2436_p2);
assign and_ln55_23_fu_2466_p2 = (grp_fu_374_p_dout0 & and_ln55_22_fu_2460_p2);
assign and_ln55_24_fu_2568_p2 = (or_ln55_25_fu_2562_p2 & or_ln55_24_fu_2544_p2);
assign and_ln55_25_fu_2574_p2 = (grp_fu_374_p_dout0 & and_ln55_24_fu_2568_p2);
assign and_ln55_26_fu_2657_p2 = (or_ln55_27_fu_2651_p2 & or_ln55_26_fu_2633_p2);
assign and_ln55_27_fu_2663_p2 = (grp_fu_374_p_dout0 & and_ln55_26_fu_2657_p2);
assign and_ln55_28_fu_2746_p2 = (or_ln55_29_fu_2740_p2 & or_ln55_28_fu_2722_p2);
assign and_ln55_29_fu_2752_p2 = (grp_fu_374_p_dout0 & and_ln55_28_fu_2746_p2);
assign and_ln55_2_fu_1431_p2 = (or_ln55_3_fu_1425_p2 & or_ln55_2_fu_1407_p2);
assign and_ln55_30_fu_2865_p2 = (or_ln55_31_fu_2859_p2 & or_ln55_30_fu_2841_p2);
assign and_ln55_31_fu_2871_p2 = (tmp_283_reg_3690 & and_ln55_30_fu_2865_p2);
assign and_ln55_3_fu_1437_p2 = (grp_fu_374_p_dout0 & and_ln55_2_fu_1431_p2);
assign and_ln55_4_fu_1530_p2 = (or_ln55_5_fu_1524_p2 & or_ln55_4_fu_1506_p2);
assign and_ln55_5_fu_1536_p2 = (grp_fu_374_p_dout0 & and_ln55_4_fu_1530_p2);
assign and_ln55_6_fu_1629_p2 = (or_ln55_7_fu_1623_p2 & or_ln55_6_fu_1605_p2);
assign and_ln55_7_fu_1635_p2 = (grp_fu_374_p_dout0 & and_ln55_6_fu_1629_p2);
assign and_ln55_8_fu_1767_p2 = (or_ln55_9_fu_1761_p2 & or_ln55_8_fu_1743_p2);
assign and_ln55_9_fu_1773_p2 = (grp_fu_374_p_dout0 & and_ln55_8_fu_1767_p2);
assign and_ln55_fu_1332_p2 = (or_ln55_fu_1308_p2 & grp_fu_374_p_dout0);
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
assign bitcast_ln54_10_fu_1356_p1 = transition_load_73_reg_3324;
assign bitcast_ln54_11_fu_1443_p1 = reg_461;
assign bitcast_ln54_12_fu_1455_p1 = transition_load_75_reg_3350;
assign bitcast_ln54_13_fu_1542_p1 = reg_470;
assign bitcast_ln54_14_fu_1554_p1 = transition_load_77_reg_3370;
assign bitcast_ln54_15_fu_1641_p1 = reg_456;
assign bitcast_ln54_1_fu_923_p1 = reg_456;
assign bitcast_ln54_2_fu_1051_p1 = reg_461;
assign bitcast_ln54_3_fu_1095_p1 = reg_456;
assign bitcast_ln54_4_fu_1139_p1 = reg_465;
assign bitcast_ln54_5_fu_1183_p1 = reg_461;
assign bitcast_ln54_6_fu_1222_p1 = reg_470;
assign bitcast_ln54_7_fu_1248_p1 = reg_456;
assign bitcast_ln54_8_fu_1257_p1 = transition_load_71_reg_3298;
assign bitcast_ln54_9_fu_1344_p1 = reg_465;
assign bitcast_ln54_fu_777_p1 = reg_456;
assign bitcast_ln55_10_fu_1786_p1 = reg_480;
assign bitcast_ln55_11_fu_1804_p1 = min_p_137_reg_3514;
assign bitcast_ln55_12_fu_1895_p1 = reg_495;
assign bitcast_ln55_13_fu_1913_p1 = min_p_139_reg_3534;
assign bitcast_ln55_14_fu_1985_p1 = reg_485;
assign bitcast_ln55_15_fu_2003_p1 = min_p_141_reg_3559;
assign bitcast_ln55_16_fu_2094_p1 = p_70_reg_3477;
assign bitcast_ln55_17_fu_2111_p1 = min_p_143_reg_3572;
assign bitcast_ln55_18_fu_2182_p1 = reg_475;
assign bitcast_ln55_19_fu_2200_p1 = min_p_145_reg_3590;
assign bitcast_ln55_1_fu_1279_p1 = min_p_127_reg_3390;
assign bitcast_ln55_20_fu_2291_p1 = p_72_reg_3507;
assign bitcast_ln55_21_fu_2308_p1 = min_p_147_reg_3603;
assign bitcast_ln55_22_fu_2389_p1 = reg_490;
assign bitcast_ln55_23_fu_2407_p1 = min_p_149_reg_3621;
assign bitcast_ln55_24_fu_2498_p1 = p_74_reg_3527;
assign bitcast_ln55_25_fu_2515_p1 = min_p_151_reg_3634;
assign bitcast_ln55_26_fu_2586_p1 = reg_480;
assign bitcast_ln55_27_fu_2604_p1 = min_p_153_reg_3652;
assign bitcast_ln55_28_fu_2676_p1 = p_76_reg_3552;
assign bitcast_ln55_29_fu_2693_p1 = min_p_155_reg_3665;
assign bitcast_ln55_2_fu_1360_p1 = reg_480;
assign bitcast_ln55_30_fu_2794_p1 = reg_495;
assign bitcast_ln55_31_fu_2812_p1 = min_p_157_reg_3678;
assign bitcast_ln55_3_fu_1378_p1 = min_p_129_reg_3413;
assign bitcast_ln55_4_fu_1459_p1 = reg_485;
assign bitcast_ln55_5_fu_1477_p1 = min_p_131_reg_3436;
assign bitcast_ln55_6_fu_1558_p1 = reg_475;
assign bitcast_ln55_7_fu_1576_p1 = min_p_133_reg_3459;
assign bitcast_ln55_8_fu_1696_p1 = reg_490;
assign bitcast_ln55_9_fu_1714_p1 = min_p_135_reg_3489;
assign bitcast_ln55_fu_1261_p1 = reg_475;
assign grp_fu_199_p_ce = 1'b1;
assign grp_fu_199_p_din0 = grp_fu_448_p0;
assign grp_fu_199_p_din1 = grp_fu_448_p1;
assign grp_fu_199_p_opcode = 2'd0;
assign grp_fu_374_p_ce = 1'b1;
assign grp_fu_374_p_din0 = grp_fu_452_p0;
assign grp_fu_374_p_din1 = grp_fu_452_p1;
assign grp_fu_374_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1512_p2 = ((tmp_231_fu_1480_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1518_p2 = ((trunc_ln55_5_fu_1490_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1593_p2 = ((tmp_234_fu_1562_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1599_p2 = ((trunc_ln55_6_fu_1572_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1611_p2 = ((tmp_235_fu_1579_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1617_p2 = ((trunc_ln55_7_fu_1589_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1731_p2 = ((tmp_238_fu_1700_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1737_p2 = ((trunc_ln55_8_fu_1710_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1749_p2 = ((tmp_239_fu_1717_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1755_p2 = ((trunc_ln55_9_fu_1727_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1302_p2 = ((trunc_ln55_fu_1275_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1821_p2 = ((tmp_242_fu_1790_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1827_p2 = ((trunc_ln55_10_fu_1800_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1839_p2 = ((tmp_243_fu_1807_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1845_p2 = ((trunc_ln55_11_fu_1817_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1930_p2 = ((tmp_246_fu_1899_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1936_p2 = ((trunc_ln55_12_fu_1909_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1948_p2 = ((tmp_247_fu_1916_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1954_p2 = ((trunc_ln55_13_fu_1926_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2020_p2 = ((tmp_250_fu_1989_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2026_p2 = ((trunc_ln55_14_fu_1999_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1314_p2 = ((tmp_223_fu_1282_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2038_p2 = ((tmp_251_fu_2006_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2044_p2 = ((trunc_ln55_15_fu_2016_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_2128_p2 = ((tmp_254_fu_2097_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_2134_p2 = ((trunc_ln55_16_fu_2107_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_2146_p2 = ((tmp_255_fu_2114_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_2152_p2 = ((trunc_ln55_17_fu_2124_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_2217_p2 = ((tmp_258_fu_2186_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_2223_p2 = ((trunc_ln55_18_fu_2196_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_2235_p2 = ((tmp_259_fu_2203_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_2241_p2 = ((trunc_ln55_19_fu_2213_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1320_p2 = ((trunc_ln55_1_fu_1292_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_2325_p2 = ((tmp_262_fu_2294_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_2331_p2 = ((trunc_ln55_20_fu_2304_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_2343_p2 = ((tmp_263_fu_2311_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_2349_p2 = ((trunc_ln55_21_fu_2321_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_2424_p2 = ((tmp_266_fu_2393_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_2430_p2 = ((trunc_ln55_22_fu_2403_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_2442_p2 = ((tmp_267_fu_2410_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_2448_p2 = ((trunc_ln55_23_fu_2420_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_2532_p2 = ((tmp_270_fu_2501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_2538_p2 = ((trunc_ln55_24_fu_2511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1395_p2 = ((tmp_226_fu_1364_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_2550_p2 = ((tmp_271_fu_2518_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_2556_p2 = ((trunc_ln55_25_fu_2528_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_2621_p2 = ((tmp_274_fu_2590_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_2627_p2 = ((trunc_ln55_26_fu_2600_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_2639_p2 = ((tmp_275_fu_2607_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_2645_p2 = ((trunc_ln55_27_fu_2617_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_2710_p2 = ((tmp_278_fu_2679_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_2716_p2 = ((trunc_ln55_28_fu_2689_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_2728_p2 = ((tmp_279_fu_2696_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_2734_p2 = ((trunc_ln55_29_fu_2706_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1401_p2 = ((trunc_ln55_2_fu_1374_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_2829_p2 = ((tmp_281_fu_2798_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_2835_p2 = ((trunc_ln55_30_fu_2808_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_2847_p2 = ((tmp_282_fu_2815_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_2853_p2 = ((trunc_ln55_31_fu_2825_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1413_p2 = ((tmp_227_fu_1381_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1419_p2 = ((trunc_ln55_3_fu_1391_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1494_p2 = ((tmp_230_fu_1463_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1500_p2 = ((trunc_ln55_4_fu_1473_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1296_p2 = ((tmp_222_fu_1265_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln8_1_fu_708_p4 = {{add_ln53_4_fu_703_p2[5:1]}};
assign lshr_ln8_2_fu_752_p4 = {{add_ln53_6_fu_747_p2[5:1]}};
assign lshr_ln8_3_fu_843_p4 = {{add_ln53_8_fu_838_p2[5:1]}};
assign lshr_ln8_4_fu_887_p4 = {{add_ln53_10_fu_882_p2[5:1]}};
assign lshr_ln8_5_fu_989_p4 = {{add_ln53_12_fu_984_p2[5:1]}};
assign lshr_ln8_8_fu_522_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_9_fu_570_p4 = {{add_ln53_fu_564_p2[5:1]}};
assign lshr_ln8_s_fu_624_p4 = {{add_ln53_2_fu_618_p2[5:1]}};
assign lshr_ln9_2_fu_1028_p4 = {{add_ln53_14_reg_3175[6:1]}};
assign min_p_129_fu_1349_p3 = ((and_ln55_1_reg_3402[0:0] == 1'b1) ? reg_475 : min_p_127_reg_3390);
assign min_p_131_fu_1448_p3 = ((and_ln55_3_reg_3425[0:0] == 1'b1) ? reg_480 : min_p_129_reg_3413);
assign min_p_133_fu_1547_p3 = ((and_ln55_5_reg_3448[0:0] == 1'b1) ? reg_485 : min_p_131_reg_3436);
assign min_p_135_fu_1679_p3 = ((and_ln55_7_reg_3471[0:0] == 1'b1) ? reg_475 : min_p_133_reg_3459);
assign min_p_137_fu_1779_p3 = ((and_ln55_9_reg_3501[0:0] == 1'b1) ? reg_490 : min_p_135_reg_3489);
assign min_p_139_fu_1878_p3 = ((and_ln55_11_reg_3521[0:0] == 1'b1) ? reg_480 : min_p_137_reg_3514);
assign min_p_141_fu_1978_p3 = ((and_ln55_13_reg_3546[0:0] == 1'b1) ? reg_495 : min_p_139_reg_3534);
assign min_p_143_fu_2077_p3 = ((and_ln55_15_reg_3566[0:0] == 1'b1) ? reg_485 : min_p_141_reg_3559);
assign min_p_145_fu_2176_p3 = ((and_ln55_17_reg_3584[0:0] == 1'b1) ? p_70_reg_3477 : min_p_143_reg_3572);
assign min_p_147_fu_2274_p3 = ((and_ln55_19_reg_3597[0:0] == 1'b1) ? reg_475 : min_p_145_reg_3590);
assign min_p_149_fu_2373_p3 = ((and_ln55_21_reg_3615[0:0] == 1'b1) ? p_72_reg_3507 : min_p_147_reg_3603);
assign min_p_151_fu_2481_p3 = ((and_ln55_23_reg_3628[0:0] == 1'b1) ? reg_490 : min_p_149_reg_3621);
assign min_p_153_fu_2580_p3 = ((and_ln55_25_reg_3646[0:0] == 1'b1) ? p_74_reg_3527 : min_p_151_reg_3634);
assign min_p_155_fu_2669_p3 = ((and_ln55_27_reg_3659[0:0] == 1'b1) ? reg_480 : min_p_153_reg_3652);
assign min_p_157_fu_2758_p3 = ((and_ln55_29_reg_3672[0:0] == 1'b1) ? p_76_reg_3552 : min_p_155_reg_3665);
assign min_p_159_fu_2876_p3 = ((and_ln55_31_fu_2871_p2[0:0] == 1'b1) ? reg_495 : min_p_157_reg_3678);
assign min_s_10_fu_2071_p3 = ((and_ln55_13_reg_3546[0:0] == 1'b1) ? zext_ln55_6_fu_2068_p1 : min_s_9_reg_3541);
assign min_s_11_fu_2087_p3 = ((and_ln55_15_reg_3566[0:0] == 1'b1) ? zext_ln55_7_fu_2084_p1 : min_s_10_fu_2071_p3);
assign min_s_12_fu_2268_p3 = ((and_ln55_17_reg_3584[0:0] == 1'b1) ? zext_ln55_8_fu_2265_p1 : min_s_11_reg_3579);
assign min_s_13_fu_2284_p3 = ((and_ln55_19_reg_3597[0:0] == 1'b1) ? zext_ln55_9_fu_2281_p1 : min_s_12_fu_2268_p3);
assign min_s_14_fu_2475_p3 = ((and_ln55_21_reg_3615[0:0] == 1'b1) ? zext_ln55_10_fu_2472_p1 : min_s_13_reg_3610);
assign min_s_15_fu_2491_p3 = ((and_ln55_23_reg_3628[0:0] == 1'b1) ? zext_ln55_11_fu_2488_p1 : min_s_14_fu_2475_p3);
assign min_s_16_fu_2767_p3 = ((and_ln55_25_reg_3646[0:0] == 1'b1) ? zext_ln55_12_fu_2764_p1 : min_s_15_reg_3641);
assign min_s_17_fu_2776_p3 = ((and_ln55_27_reg_3659[0:0] == 1'b1) ? zext_ln55_13_fu_2773_p1 : min_s_16_fu_2767_p3);
assign min_s_18_fu_2786_p3 = ((and_ln55_29_reg_3672[0:0] == 1'b1) ? zext_ln55_14_fu_2783_p1 : min_s_17_fu_2776_p3);
assign min_s_19_fu_2886_p3 = ((and_ln55_31_fu_2871_p2[0:0] == 1'b1) ? zext_ln55_15_fu_2883_p1 : min_s_18_reg_3685);
assign min_s_34_out = ((and_ln55_29_reg_3672[0:0] == 1'b1) ? zext_ln55_14_fu_2783_p1 : min_s_17_fu_2776_p3);
assign min_s_4_fu_1652_p3 = ((and_ln55_1_reg_3402[0:0] == 1'b1) ? zext_ln55_fu_1649_p1 : min_s_fu_126);
assign min_s_5_fu_1662_p3 = ((and_ln55_3_reg_3425[0:0] == 1'b1) ? zext_ln55_1_fu_1659_p1 : min_s_4_fu_1652_p3);
assign min_s_6_fu_1672_p3 = ((and_ln55_5_reg_3448[0:0] == 1'b1) ? zext_ln55_2_fu_1669_p1 : min_s_5_fu_1662_p3);
assign min_s_7_fu_1689_p3 = ((and_ln55_7_reg_3471[0:0] == 1'b1) ? zext_ln55_3_fu_1686_p1 : min_s_6_fu_1672_p3);
assign min_s_8_fu_1872_p3 = ((and_ln55_9_reg_3501[0:0] == 1'b1) ? zext_ln55_4_fu_1869_p1 : min_s_7_reg_3496);
assign min_s_9_fu_1888_p3 = ((and_ln55_11_reg_3521[0:0] == 1'b1) ? zext_ln55_5_fu_1885_p1 : min_s_8_fu_1872_p3);
assign or_ln55_10_fu_1833_p2 = (icmp_ln55_21_fu_1827_p2 | icmp_ln55_20_fu_1821_p2);
assign or_ln55_11_fu_1851_p2 = (icmp_ln55_23_fu_1845_p2 | icmp_ln55_22_fu_1839_p2);
assign or_ln55_12_fu_1942_p2 = (icmp_ln55_25_fu_1936_p2 | icmp_ln55_24_fu_1930_p2);
assign or_ln55_13_fu_1960_p2 = (icmp_ln55_27_fu_1954_p2 | icmp_ln55_26_fu_1948_p2);
assign or_ln55_14_fu_2032_p2 = (icmp_ln55_29_fu_2026_p2 | icmp_ln55_28_fu_2020_p2);
assign or_ln55_15_fu_2050_p2 = (icmp_ln55_31_fu_2044_p2 | icmp_ln55_30_fu_2038_p2);
assign or_ln55_16_fu_2140_p2 = (icmp_ln55_33_fu_2134_p2 | icmp_ln55_32_fu_2128_p2);
assign or_ln55_17_fu_2158_p2 = (icmp_ln55_35_fu_2152_p2 | icmp_ln55_34_fu_2146_p2);
assign or_ln55_18_fu_2229_p2 = (icmp_ln55_37_fu_2223_p2 | icmp_ln55_36_fu_2217_p2);
assign or_ln55_19_fu_2247_p2 = (icmp_ln55_39_fu_2241_p2 | icmp_ln55_38_fu_2235_p2);
assign or_ln55_1_fu_1326_p2 = (icmp_ln55_3_fu_1320_p2 | icmp_ln55_2_fu_1314_p2);
assign or_ln55_20_fu_2337_p2 = (icmp_ln55_41_fu_2331_p2 | icmp_ln55_40_fu_2325_p2);
assign or_ln55_21_fu_2355_p2 = (icmp_ln55_43_fu_2349_p2 | icmp_ln55_42_fu_2343_p2);
assign or_ln55_22_fu_2436_p2 = (icmp_ln55_45_fu_2430_p2 | icmp_ln55_44_fu_2424_p2);
assign or_ln55_23_fu_2454_p2 = (icmp_ln55_47_fu_2448_p2 | icmp_ln55_46_fu_2442_p2);
assign or_ln55_24_fu_2544_p2 = (icmp_ln55_49_fu_2538_p2 | icmp_ln55_48_fu_2532_p2);
assign or_ln55_25_fu_2562_p2 = (icmp_ln55_51_fu_2556_p2 | icmp_ln55_50_fu_2550_p2);
assign or_ln55_26_fu_2633_p2 = (icmp_ln55_53_fu_2627_p2 | icmp_ln55_52_fu_2621_p2);
assign or_ln55_27_fu_2651_p2 = (icmp_ln55_55_fu_2645_p2 | icmp_ln55_54_fu_2639_p2);
assign or_ln55_28_fu_2722_p2 = (icmp_ln55_57_fu_2716_p2 | icmp_ln55_56_fu_2710_p2);
assign or_ln55_29_fu_2740_p2 = (icmp_ln55_59_fu_2734_p2 | icmp_ln55_58_fu_2728_p2);
assign or_ln55_2_fu_1407_p2 = (icmp_ln55_5_fu_1401_p2 | icmp_ln55_4_fu_1395_p2);
assign or_ln55_30_fu_2841_p2 = (icmp_ln55_61_fu_2835_p2 | icmp_ln55_60_fu_2829_p2);
assign or_ln55_31_fu_2859_p2 = (icmp_ln55_63_fu_2853_p2 | icmp_ln55_62_fu_2847_p2);
assign or_ln55_3_fu_1425_p2 = (icmp_ln55_7_fu_1419_p2 | icmp_ln55_6_fu_1413_p2);
assign or_ln55_4_fu_1506_p2 = (icmp_ln55_9_fu_1500_p2 | icmp_ln55_8_fu_1494_p2);
assign or_ln55_5_fu_1524_p2 = (icmp_ln55_11_fu_1518_p2 | icmp_ln55_10_fu_1512_p2);
assign or_ln55_6_fu_1605_p2 = (icmp_ln55_13_fu_1599_p2 | icmp_ln55_12_fu_1593_p2);
assign or_ln55_7_fu_1623_p2 = (icmp_ln55_15_fu_1617_p2 | icmp_ln55_14_fu_1611_p2);
assign or_ln55_8_fu_1743_p2 = (icmp_ln55_17_fu_1737_p2 | icmp_ln55_16_fu_1731_p2);
assign or_ln55_9_fu_1761_p2 = (icmp_ln55_19_fu_1755_p2 | icmp_ln55_18_fu_1749_p2);
assign or_ln55_fu_1308_p2 = (icmp_ln55_fu_1296_p2 | icmp_ln55_1_fu_1302_p2);
assign shl_ln2_fu_545_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_10_fu_1144_p3 = {{add_ln53_10_reg_3164}, {6'd0}};
assign shl_ln54_11_fu_1161_p3 = {{add_ln53_11_reg_3313}, {6'd0}};
assign shl_ln54_12_fu_1188_p3 = {{add_ln53_12_reg_3231}, {6'd0}};
assign shl_ln54_13_fu_1205_p3 = {{add_ln53_13_reg_3339}, {6'd0}};
assign shl_ln54_14_fu_1230_p3 = {{trunc_ln54_fu_1227_p1}, {6'd0}};
assign shl_ln54_1_fu_647_p3 = {{add_ln53_reg_3001}, {6'd0}};
assign shl_ln54_2_fu_664_p3 = {{add_ln53_1_reg_3012}, {6'd0}};
assign shl_ln54_3_fu_782_p3 = {{add_ln53_2_reg_3023}, {6'd0}};
assign shl_ln54_4_fu_799_p3 = {{add_ln53_3_reg_3064}, {6'd0}};
assign shl_ln54_5_fu_928_p3 = {{add_ln53_4_reg_3075}, {6'd0}};
assign shl_ln54_6_fu_945_p3 = {{add_ln53_5_reg_3127}, {6'd0}};
assign shl_ln54_7_fu_1056_p3 = {{add_ln53_6_reg_3091}, {6'd0}};
assign shl_ln54_8_fu_1073_p3 = {{add_ln53_7_reg_3200}, {6'd0}};
assign shl_ln54_9_fu_1100_p3 = {{add_ln53_8_reg_3148}, {6'd0}};
assign shl_ln54_s_fu_1117_p3 = {{add_ln53_9_reg_3267}, {6'd0}};
assign tmp_222_fu_1265_p4 = {{bitcast_ln55_fu_1261_p1[62:52]}};
assign tmp_223_fu_1282_p4 = {{bitcast_ln55_1_fu_1279_p1[62:52]}};
assign tmp_225_fu_580_p3 = {{t_1}, {lshr_ln8_9_fu_570_p4}};
assign tmp_226_fu_1364_p4 = {{bitcast_ln55_2_fu_1360_p1[62:52]}};
assign tmp_227_fu_1381_p4 = {{bitcast_ln55_3_fu_1378_p1[62:52]}};
assign tmp_229_fu_605_p3 = {{t_1}, {add_ln8_fu_599_p2}};
assign tmp_230_fu_1463_p4 = {{bitcast_ln55_4_fu_1459_p1[62:52]}};
assign tmp_231_fu_1480_p4 = {{bitcast_ln55_5_fu_1477_p1[62:52]}};
assign tmp_233_fu_634_p3 = {{t_1}, {lshr_ln8_s_fu_624_p4}};
assign tmp_234_fu_1562_p4 = {{bitcast_ln55_6_fu_1558_p1[62:52]}};
assign tmp_235_fu_1579_p4 = {{bitcast_ln55_7_fu_1576_p1[62:52]}};
assign tmp_237_fu_691_p3 = {{t_1}, {add_ln8_1_fu_686_p2}};
assign tmp_238_fu_1700_p4 = {{bitcast_ln55_8_fu_1696_p1[62:52]}};
assign tmp_239_fu_1717_p4 = {{bitcast_ln55_9_fu_1714_p1[62:52]}};
assign tmp_241_fu_718_p3 = {{t_1}, {lshr_ln8_1_fu_708_p4}};
assign tmp_242_fu_1790_p4 = {{bitcast_ln55_10_fu_1786_p1[62:52]}};
assign tmp_243_fu_1807_p4 = {{bitcast_ln55_11_fu_1804_p1[62:52]}};
assign tmp_245_fu_735_p3 = {{t_1}, {add_ln8_2_fu_730_p2}};
assign tmp_246_fu_1899_p4 = {{bitcast_ln55_12_fu_1895_p1[62:52]}};
assign tmp_247_fu_1916_p4 = {{bitcast_ln55_13_fu_1913_p1[62:52]}};
assign tmp_249_fu_762_p3 = {{t_1}, {lshr_ln8_2_fu_752_p4}};
assign tmp_250_fu_1989_p4 = {{bitcast_ln55_14_fu_1985_p1[62:52]}};
assign tmp_251_fu_2006_p4 = {{bitcast_ln55_15_fu_2003_p1[62:52]}};
assign tmp_253_fu_826_p3 = {{t_1}, {add_ln8_3_fu_821_p2}};
assign tmp_254_fu_2097_p4 = {{bitcast_ln55_16_fu_2094_p1[62:52]}};
assign tmp_255_fu_2114_p4 = {{bitcast_ln55_17_fu_2111_p1[62:52]}};
assign tmp_257_fu_853_p3 = {{t_1}, {lshr_ln8_3_fu_843_p4}};
assign tmp_258_fu_2186_p4 = {{bitcast_ln55_18_fu_2182_p1[62:52]}};
assign tmp_259_fu_2203_p4 = {{bitcast_ln55_19_fu_2200_p1[62:52]}};
assign tmp_261_fu_870_p3 = {{t_1}, {add_ln8_4_fu_865_p2}};
assign tmp_262_fu_2294_p4 = {{bitcast_ln55_20_fu_2291_p1[62:52]}};
assign tmp_263_fu_2311_p4 = {{bitcast_ln55_21_fu_2308_p1[62:52]}};
assign tmp_265_fu_897_p3 = {{t_1}, {lshr_ln8_4_fu_887_p4}};
assign tmp_266_fu_2393_p4 = {{bitcast_ln55_22_fu_2389_p1[62:52]}};
assign tmp_267_fu_2410_p4 = {{bitcast_ln55_23_fu_2407_p1[62:52]}};
assign tmp_269_fu_972_p3 = {{t_1}, {add_ln8_5_fu_967_p2}};
assign tmp_270_fu_2501_p4 = {{bitcast_ln55_24_fu_2498_p1[62:52]}};
assign tmp_271_fu_2518_p4 = {{bitcast_ln55_25_fu_2515_p1[62:52]}};
assign tmp_273_fu_999_p3 = {{t_1}, {lshr_ln8_5_fu_989_p4}};
assign tmp_274_fu_2590_p4 = {{bitcast_ln55_26_fu_2586_p1[62:52]}};
assign tmp_275_fu_2607_p4 = {{bitcast_ln55_27_fu_2604_p1[62:52]}};
assign tmp_277_fu_1016_p3 = {{t_1}, {add_ln8_6_fu_1011_p2}};
assign tmp_278_fu_2679_p4 = {{bitcast_ln55_28_fu_2676_p1[62:52]}};
assign tmp_279_fu_2696_p4 = {{bitcast_ln55_29_fu_2693_p1[62:52]}};
assign tmp_281_fu_2798_p4 = {{bitcast_ln55_30_fu_2794_p1[62:52]}};
assign tmp_282_fu_2815_p4 = {{bitcast_ln55_31_fu_2812_p1[62:52]}};
assign tmp_s_fu_532_p3 = {{t_1}, {lshr_ln8_8_fu_522_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_1227_p1 = add_ln53_14_reg_3175[5:0];
assign trunc_ln55_10_fu_1800_p1 = bitcast_ln55_10_fu_1786_p1[51:0];
assign trunc_ln55_11_fu_1817_p1 = bitcast_ln55_11_fu_1804_p1[51:0];
assign trunc_ln55_12_fu_1909_p1 = bitcast_ln55_12_fu_1895_p1[51:0];
assign trunc_ln55_13_fu_1926_p1 = bitcast_ln55_13_fu_1913_p1[51:0];
assign trunc_ln55_14_fu_1999_p1 = bitcast_ln55_14_fu_1985_p1[51:0];
assign trunc_ln55_15_fu_2016_p1 = bitcast_ln55_15_fu_2003_p1[51:0];
assign trunc_ln55_16_fu_2107_p1 = bitcast_ln55_16_fu_2094_p1[51:0];
assign trunc_ln55_17_fu_2124_p1 = bitcast_ln55_17_fu_2111_p1[51:0];
assign trunc_ln55_18_fu_2196_p1 = bitcast_ln55_18_fu_2182_p1[51:0];
assign trunc_ln55_19_fu_2213_p1 = bitcast_ln55_19_fu_2200_p1[51:0];
assign trunc_ln55_1_fu_1292_p1 = bitcast_ln55_1_fu_1279_p1[51:0];
assign trunc_ln55_20_fu_2304_p1 = bitcast_ln55_20_fu_2291_p1[51:0];
assign trunc_ln55_21_fu_2321_p1 = bitcast_ln55_21_fu_2308_p1[51:0];
assign trunc_ln55_22_fu_2403_p1 = bitcast_ln55_22_fu_2389_p1[51:0];
assign trunc_ln55_23_fu_2420_p1 = bitcast_ln55_23_fu_2407_p1[51:0];
assign trunc_ln55_24_fu_2511_p1 = bitcast_ln55_24_fu_2498_p1[51:0];
assign trunc_ln55_25_fu_2528_p1 = bitcast_ln55_25_fu_2515_p1[51:0];
assign trunc_ln55_26_fu_2600_p1 = bitcast_ln55_26_fu_2586_p1[51:0];
assign trunc_ln55_27_fu_2617_p1 = bitcast_ln55_27_fu_2604_p1[51:0];
assign trunc_ln55_28_fu_2689_p1 = bitcast_ln55_28_fu_2676_p1[51:0];
assign trunc_ln55_29_fu_2706_p1 = bitcast_ln55_29_fu_2693_p1[51:0];
assign trunc_ln55_2_fu_1374_p1 = bitcast_ln55_2_fu_1360_p1[51:0];
assign trunc_ln55_30_fu_2808_p1 = bitcast_ln55_30_fu_2794_p1[51:0];
assign trunc_ln55_31_fu_2825_p1 = bitcast_ln55_31_fu_2812_p1[51:0];
assign trunc_ln55_3_fu_1391_p1 = bitcast_ln55_3_fu_1378_p1[51:0];
assign trunc_ln55_4_fu_1473_p1 = bitcast_ln55_4_fu_1459_p1[51:0];
assign trunc_ln55_5_fu_1490_p1 = bitcast_ln55_5_fu_1477_p1[51:0];
assign trunc_ln55_6_fu_1572_p1 = bitcast_ln55_6_fu_1558_p1[51:0];
assign trunc_ln55_7_fu_1589_p1 = bitcast_ln55_7_fu_1576_p1[51:0];
assign trunc_ln55_8_fu_1710_p1 = bitcast_ln55_8_fu_1696_p1[51:0];
assign trunc_ln55_9_fu_1727_p1 = bitcast_ln55_9_fu_1714_p1[51:0];
assign trunc_ln55_fu_1275_p1 = bitcast_ln55_fu_1261_p1[51:0];
assign zext_ln12_fu_774_p1 = s_reg_2963;
assign zext_ln52_cast_fu_500_p1 = zext_ln52;
assign zext_ln54_10_fu_1129_p1 = add_ln54_10_fu_1124_p2;
assign zext_ln54_11_fu_1156_p1 = add_ln54_11_fu_1151_p2;
assign zext_ln54_12_fu_1173_p1 = add_ln54_12_fu_1168_p2;
assign zext_ln54_13_fu_1200_p1 = add_ln54_13_fu_1195_p2;
assign zext_ln54_14_fu_1217_p1 = add_ln54_14_fu_1212_p2;
assign zext_ln54_15_fu_1243_p1 = add_ln54_15_fu_1238_p2;
assign zext_ln54_16_fu_540_p1 = tmp_s_fu_532_p3;
assign zext_ln54_17_fu_588_p1 = tmp_225_fu_580_p3;
assign zext_ln54_18_fu_613_p1 = tmp_229_fu_605_p3;
assign zext_ln54_19_fu_642_p1 = tmp_233_fu_634_p3;
assign zext_ln54_1_fu_659_p1 = add_ln54_1_fu_654_p2;
assign zext_ln54_20_fu_698_p1 = tmp_237_fu_691_p3;
assign zext_ln54_21_fu_725_p1 = tmp_241_fu_718_p3;
assign zext_ln54_22_fu_742_p1 = tmp_245_fu_735_p3;
assign zext_ln54_23_fu_769_p1 = tmp_249_fu_762_p3;
assign zext_ln54_24_fu_833_p1 = tmp_253_fu_826_p3;
assign zext_ln54_25_fu_860_p1 = tmp_257_fu_853_p3;
assign zext_ln54_26_fu_877_p1 = tmp_261_fu_870_p3;
assign zext_ln54_27_fu_904_p1 = tmp_265_fu_897_p3;
assign zext_ln54_28_fu_979_p1 = tmp_269_fu_972_p3;
assign zext_ln54_29_fu_1006_p1 = tmp_273_fu_999_p3;
assign zext_ln54_2_fu_676_p1 = add_ln54_2_fu_671_p2;
assign zext_ln54_30_fu_1023_p1 = tmp_277_fu_1016_p3;
assign zext_ln54_31_fu_1037_p1 = lshr_ln9_2_fu_1028_p4;
assign zext_ln54_32_fu_1046_p1 = add_ln54_16_fu_1041_p2;
assign zext_ln54_3_fu_794_p1 = add_ln54_3_fu_789_p2;
assign zext_ln54_4_fu_811_p1 = add_ln54_4_fu_806_p2;
assign zext_ln54_5_fu_940_p1 = add_ln54_5_fu_935_p2;
assign zext_ln54_6_fu_957_p1 = add_ln54_6_fu_952_p2;
assign zext_ln54_7_fu_1068_p1 = add_ln54_7_fu_1063_p2;
assign zext_ln54_8_fu_1085_p1 = add_ln54_8_fu_1080_p2;
assign zext_ln54_9_fu_1112_p1 = add_ln54_9_fu_1107_p2;
assign zext_ln54_fu_559_p1 = add_ln54_fu_553_p2;
assign zext_ln55_10_fu_2472_p1 = add_ln53_9_reg_3267;
assign zext_ln55_11_fu_2488_p1 = add_ln53_10_reg_3164;
assign zext_ln55_12_fu_2764_p1 = add_ln53_11_reg_3313_pp0_iter1_reg;
assign zext_ln55_13_fu_2773_p1 = add_ln53_12_reg_3231_pp0_iter1_reg;
assign zext_ln55_14_fu_2783_p1 = add_ln53_13_reg_3339_pp0_iter1_reg;
assign zext_ln55_15_fu_2883_p1 = trunc_ln54_reg_3375_pp0_iter1_reg;
assign zext_ln55_1_fu_1659_p1 = add_ln53_reg_3001;
assign zext_ln55_2_fu_1669_p1 = add_ln53_1_reg_3012;
assign zext_ln55_3_fu_1686_p1 = add_ln53_2_reg_3023;
assign zext_ln55_4_fu_1869_p1 = add_ln53_3_reg_3064;
assign zext_ln55_5_fu_1885_p1 = add_ln53_4_reg_3075;
assign zext_ln55_6_fu_2068_p1 = add_ln53_5_reg_3127;
assign zext_ln55_7_fu_2084_p1 = add_ln53_6_reg_3091;
assign zext_ln55_8_fu_2265_p1 = add_ln53_7_reg_3200;
assign zext_ln55_9_fu_2281_p1 = add_ln53_8_reg_3148;
assign zext_ln55_fu_1649_p1 = s_reg_2963;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_2944[11:8] <= 4'b0000;
end
endmodule 