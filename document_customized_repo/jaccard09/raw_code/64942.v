module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_195,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,llike_4_address0,llike_4_ce0,llike_4_q0,llike_4_address1,llike_4_ce1,llike_4_q1,llike_5_address0,llike_5_ce0,llike_5_q0,llike_5_address1,llike_5_ce1,llike_5_q1,llike_6_address0,llike_6_ce0,llike_6_q0,llike_6_address1,llike_6_ce1,llike_6_q1,llike_7_address0,llike_7_ce0,llike_7_q0,llike_7_address1,llike_7_ce1,llike_7_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_34_out,min_s_34_out_ap_vld,grp_fu_319_p_din0,grp_fu_319_p_din1,grp_fu_319_p_opcode,grp_fu_319_p_dout0,grp_fu_319_p_ce,grp_fu_584_p_din0,grp_fu_584_p_din1,grp_fu_584_p_opcode,grp_fu_584_p_dout0,grp_fu_584_p_ce); 
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
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [10:0] zext_ln52_3;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_319_p_din0;
output  [63:0] grp_fu_319_p_din1;
output  [1:0] grp_fu_319_p_opcode;
input  [63:0] grp_fu_319_p_dout0;
output   grp_fu_319_p_ce;
output  [63:0] grp_fu_584_p_din0;
output  [63:0] grp_fu_584_p_din1;
output  [4:0] grp_fu_584_p_opcode;
input  [0:0] grp_fu_584_p_dout0;
output   grp_fu_584_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_1_reg_3255;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_659_p3;
reg   [63:0] reg_673;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_666_p3;
reg   [63:0] reg_677;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_681;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_685;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_689;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_694;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_699;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_704;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_709;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_714_p1;
reg   [10:0] zext_ln52_2_cast_reg_3080;
reg   [5:0] s_reg_3099;
wire   [5:0] add_ln53_fu_789_p2;
reg   [5:0] add_ln53_reg_3155;
wire   [5:0] add_ln53_1_fu_795_p2;
reg   [5:0] add_ln53_1_reg_3161;
wire   [5:0] add_ln53_6_fu_801_p2;
reg   [5:0] add_ln53_6_reg_3167;
wire   [5:0] add_ln53_8_fu_849_p2;
reg   [5:0] add_ln53_8_reg_3183;
wire   [5:0] add_ln53_9_fu_878_p2;
reg   [5:0] add_ln53_9_reg_3194;
reg   [5:0] add_ln53_9_reg_3194_pp0_iter1_reg;
wire   [5:0] add_ln53_10_fu_907_p2;
reg   [5:0] add_ln53_10_reg_3205;
reg   [5:0] add_ln53_10_reg_3205_pp0_iter1_reg;
wire   [5:0] add_ln53_11_fu_936_p2;
reg   [5:0] add_ln53_11_reg_3216;
reg   [5:0] add_ln53_11_reg_3216_pp0_iter1_reg;
wire   [5:0] add_ln53_12_fu_965_p2;
reg   [5:0] add_ln53_12_reg_3227;
reg   [5:0] add_ln53_12_reg_3227_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_994_p2;
reg   [5:0] add_ln53_13_reg_3238;
reg   [5:0] add_ln53_13_reg_3238_pp0_iter1_reg;
wire   [6:0] add_ln53_14_fu_1023_p2;
reg   [6:0] add_ln53_14_reg_3249;
reg   [0:0] tmp_1_reg_3255_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3259;
reg   [63:0] llike_2_load_reg_3264;
reg   [63:0] llike_3_load_reg_3279;
wire   [5:0] add_ln53_2_fu_1073_p2;
reg   [5:0] add_ln53_2_reg_3294;
reg   [63:0] llike_4_load_reg_3300;
wire   [5:0] add_ln53_3_fu_1078_p2;
reg   [5:0] add_ln53_3_reg_3305;
reg   [63:0] llike_5_load_reg_3311;
reg   [63:0] llike_6_load_reg_3316;
reg   [63:0] llike_7_load_reg_3321;
reg   [63:0] llike_load_reg_3326;
reg   [63:0] llike_1_load_8_reg_3331;
reg   [63:0] llike_2_load_8_reg_3336;
reg   [63:0] llike_3_load_8_reg_3341;
reg   [63:0] llike_4_load_8_reg_3346;
reg   [63:0] llike_5_load_8_reg_3351;
reg   [63:0] llike_6_load_8_reg_3356;
reg   [63:0] llike_7_load_8_reg_3361;
wire   [63:0] bitcast_ln54_fu_1106_p1;
wire   [5:0] add_ln53_4_fu_1147_p2;
reg   [5:0] add_ln53_4_reg_3396;
wire   [5:0] add_ln53_5_fu_1152_p2;
reg   [5:0] add_ln53_5_reg_3402;
reg   [63:0] llike_load_8_reg_3408;
wire   [63:0] bitcast_ln54_1_fu_1157_p1;
wire   [5:0] add_ln53_7_fu_1198_p2;
reg   [5:0] add_ln53_7_reg_3438;
wire   [63:0] bitcast_ln54_2_fu_1203_p1;
wire   [63:0] bitcast_ln54_3_fu_1244_p1;
reg   [63:0] select_ln54_8_reg_3474;
wire   [63:0] bitcast_ln54_4_fu_1285_p1;
reg   [63:0] select_ln54_9_reg_3504;
wire   [63:0] bitcast_ln54_5_fu_1326_p1;
reg   [63:0] select_ln54_12_reg_3534;
wire   [63:0] bitcast_ln54_6_fu_1367_p1;
reg   [63:0] select_ln54_13_reg_3564;
wire   [5:0] trunc_ln54_fu_1372_p1;
reg   [5:0] trunc_ln54_reg_3569;
reg   [5:0] trunc_ln54_reg_3569_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_7_fu_1394_p1;
reg   [63:0] select_ln54_15_reg_3589;
reg   [63:0] min_p_127_reg_3594;
wire   [63:0] bitcast_ln54_8_fu_1403_p1;
wire   [0:0] and_ln55_1_fu_1484_p2;
reg   [0:0] and_ln55_1_reg_3606;
wire   [63:0] bitcast_ln54_9_fu_1490_p1;
wire   [63:0] min_p_129_fu_1494_p3;
reg   [63:0] min_p_129_reg_3617;
wire   [63:0] bitcast_ln54_10_fu_1501_p1;
wire   [0:0] and_ln55_3_fu_1583_p2;
reg   [0:0] and_ln55_3_reg_3629;
wire   [63:0] bitcast_ln54_11_fu_1589_p1;
wire   [63:0] min_p_131_fu_1594_p3;
reg   [63:0] min_p_131_reg_3640;
wire   [63:0] bitcast_ln54_12_fu_1601_p1;
wire   [0:0] and_ln55_5_fu_1682_p2;
reg   [0:0] and_ln55_5_reg_3652;
wire   [63:0] bitcast_ln54_13_fu_1688_p1;
wire   [63:0] min_p_133_fu_1692_p3;
reg   [63:0] min_p_133_reg_3663;
wire   [63:0] bitcast_ln54_14_fu_1699_p1;
wire   [0:0] and_ln55_7_fu_1781_p2;
reg   [0:0] and_ln55_7_reg_3675;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_70_reg_3681;
wire   [63:0] bitcast_ln54_15_fu_1787_p1;
wire   [63:0] min_p_135_fu_1824_p3;
reg   [63:0] min_p_135_reg_3693;
wire   [7:0] min_s_7_fu_1834_p3;
reg   [7:0] min_s_7_reg_3700;
wire   [0:0] and_ln55_9_fu_1918_p2;
reg   [0:0] and_ln55_9_reg_3705;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_72_reg_3711;
wire   [63:0] min_p_137_fu_1924_p3;
reg   [63:0] min_p_137_reg_3718;
wire   [0:0] and_ln55_11_fu_2008_p2;
reg   [0:0] and_ln55_11_reg_3725;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_74_reg_3731;
wire   [63:0] min_p_139_fu_2023_p3;
reg   [63:0] min_p_139_reg_3738;
wire   [7:0] min_s_9_fu_2033_p3;
reg   [7:0] min_s_9_reg_3745;
wire   [0:0] and_ln55_13_fu_2117_p2;
reg   [0:0] and_ln55_13_reg_3750;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_76_reg_3756;
wire   [63:0] min_p_141_fu_2123_p3;
reg   [63:0] min_p_141_reg_3763;
wire   [0:0] and_ln55_15_fu_2207_p2;
reg   [0:0] and_ln55_15_reg_3770;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_143_fu_2222_p3;
reg   [63:0] min_p_143_reg_3776;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_2232_p3;
reg   [7:0] min_s_11_reg_3783;
wire   [0:0] and_ln55_17_fu_2315_p2;
reg   [0:0] and_ln55_17_reg_3788;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_145_fu_2321_p3;
reg   [63:0] min_p_145_reg_3794;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_2404_p2;
reg   [0:0] and_ln55_19_reg_3801;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_147_fu_2419_p3;
reg   [63:0] min_p_147_reg_3807;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_2429_p3;
reg   [7:0] min_s_13_reg_3814;
wire   [0:0] and_ln55_21_fu_2512_p2;
reg   [0:0] and_ln55_21_reg_3819;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_149_fu_2518_p3;
reg   [63:0] min_p_149_reg_3825;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_2611_p2;
reg   [0:0] and_ln55_23_reg_3832;
wire   [63:0] min_p_151_fu_2626_p3;
reg   [63:0] min_p_151_reg_3838;
wire   [7:0] min_s_15_fu_2636_p3;
reg   [7:0] min_s_15_reg_3845;
wire   [0:0] and_ln55_25_fu_2719_p2;
reg   [0:0] and_ln55_25_reg_3850;
wire   [63:0] min_p_153_fu_2725_p3;
reg   [63:0] min_p_153_reg_3856;
wire   [0:0] and_ln55_27_fu_2808_p2;
reg   [0:0] and_ln55_27_reg_3863;
wire   [63:0] min_p_155_fu_2814_p3;
reg   [63:0] min_p_155_reg_3869;
wire   [0:0] and_ln55_29_fu_2897_p2;
reg   [0:0] and_ln55_29_reg_3876;
wire   [63:0] min_p_157_fu_2903_p3;
reg   [63:0] min_p_157_reg_3882;
wire   [7:0] min_s_18_fu_2931_p3;
reg   [7:0] min_s_18_reg_3889;
reg   [0:0] tmp_254_reg_3894;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_758_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_783_p1;
wire   [63:0] zext_ln54_17_fu_825_p1;
wire   [63:0] zext_ln54_18_fu_844_p1;
wire   [63:0] zext_ln54_19_fu_873_p1;
wire   [63:0] zext_ln54_20_fu_902_p1;
wire   [63:0] zext_ln54_21_fu_931_p1;
wire   [63:0] zext_ln54_22_fu_960_p1;
wire   [63:0] zext_ln54_23_fu_989_p1;
wire   [63:0] zext_ln54_24_fu_1018_p1;
wire   [63:0] zext_ln54_1_fu_1049_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1067_p1;
wire   [63:0] zext_ln54_26_fu_1101_p1;
wire   [63:0] zext_ln54_3_fu_1123_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1141_p1;
wire   [63:0] zext_ln54_5_fu_1174_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1192_p1;
wire   [63:0] zext_ln54_7_fu_1220_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1238_p1;
wire   [63:0] zext_ln54_9_fu_1261_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1279_p1;
wire   [63:0] zext_ln54_11_fu_1302_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_1320_p1;
wire   [63:0] zext_ln54_13_fu_1343_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1361_p1;
wire   [63:0] zext_ln54_15_fu_1388_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_132;
wire   [63:0] min_p_159_fu_3021_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_136;
wire   [7:0] min_s_19_fu_3031_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_140;
wire   [5:0] add_ln53_15_fu_2524_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
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
reg   [63:0] grp_fu_651_p0;
reg   [63:0] grp_fu_651_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_655_p0;
reg   [63:0] grp_fu_655_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [2:0] lshr_ln8_8_fu_740_p4;
wire   [10:0] tmp_s_fu_750_p3;
wire   [10:0] shl_ln2_fu_769_p3;
wire   [10:0] add_ln54_fu_777_p2;
wire   [2:0] lshr_ln8_9_fu_807_p4;
wire   [10:0] tmp_220_fu_817_p3;
wire   [2:0] add_ln8_fu_830_p2;
wire   [10:0] tmp_224_fu_836_p3;
wire   [2:0] lshr_ln8_s_fu_855_p4;
wire   [10:0] tmp_228_fu_865_p3;
wire   [2:0] lshr_ln8_1_fu_884_p4;
wire   [10:0] tmp_232_fu_894_p3;
wire   [2:0] lshr_ln8_2_fu_913_p4;
wire   [10:0] tmp_236_fu_923_p3;
wire   [2:0] lshr_ln8_3_fu_942_p4;
wire   [10:0] tmp_240_fu_952_p3;
wire   [2:0] lshr_ln8_4_fu_971_p4;
wire   [10:0] tmp_244_fu_981_p3;
wire   [2:0] lshr_ln8_5_fu_1000_p4;
wire   [10:0] tmp_248_fu_1010_p3;
wire   [6:0] zext_ln17_fu_736_p1;
wire   [10:0] shl_ln54_1_fu_1037_p3;
wire   [10:0] add_ln54_1_fu_1044_p2;
wire   [10:0] shl_ln54_2_fu_1055_p3;
wire   [10:0] add_ln54_2_fu_1062_p2;
wire   [3:0] lshr_ln9_3_fu_1083_p4;
wire   [10:0] zext_ln54_25_fu_1092_p1;
wire   [10:0] add_ln54_16_fu_1096_p2;
wire   [10:0] shl_ln54_3_fu_1111_p3;
wire   [10:0] add_ln54_3_fu_1118_p2;
wire   [10:0] shl_ln54_4_fu_1129_p3;
wire   [10:0] add_ln54_4_fu_1136_p2;
wire   [10:0] shl_ln54_5_fu_1162_p3;
wire   [10:0] add_ln54_5_fu_1169_p2;
wire   [10:0] shl_ln54_6_fu_1180_p3;
wire   [10:0] add_ln54_6_fu_1187_p2;
wire   [10:0] shl_ln54_7_fu_1208_p3;
wire   [10:0] add_ln54_7_fu_1215_p2;
wire   [10:0] shl_ln54_8_fu_1226_p3;
wire   [10:0] add_ln54_8_fu_1233_p2;
wire   [10:0] shl_ln54_9_fu_1249_p3;
wire   [10:0] add_ln54_9_fu_1256_p2;
wire   [10:0] shl_ln54_s_fu_1267_p3;
wire   [10:0] add_ln54_10_fu_1274_p2;
wire   [10:0] shl_ln54_10_fu_1290_p3;
wire   [10:0] add_ln54_11_fu_1297_p2;
wire   [10:0] shl_ln54_11_fu_1308_p3;
wire   [10:0] add_ln54_12_fu_1315_p2;
wire   [10:0] shl_ln54_12_fu_1331_p3;
wire   [10:0] add_ln54_13_fu_1338_p2;
wire   [10:0] shl_ln54_13_fu_1349_p3;
wire   [10:0] add_ln54_14_fu_1356_p2;
wire   [10:0] shl_ln54_14_fu_1375_p3;
wire   [10:0] add_ln54_15_fu_1383_p2;
wire   [63:0] bitcast_ln55_fu_1407_p1;
wire   [63:0] bitcast_ln55_1_fu_1425_p1;
wire   [10:0] tmp_199_fu_1411_p4;
wire   [51:0] trunc_ln55_fu_1421_p1;
wire   [0:0] icmp_ln55_1_fu_1448_p2;
wire   [0:0] icmp_ln55_fu_1442_p2;
wire   [10:0] tmp_200_fu_1428_p4;
wire   [51:0] trunc_ln55_1_fu_1438_p1;
wire   [0:0] icmp_ln55_3_fu_1466_p2;
wire   [0:0] icmp_ln55_2_fu_1460_p2;
wire   [0:0] or_ln55_fu_1454_p2;
wire   [0:0] and_ln55_fu_1478_p2;
wire   [0:0] or_ln55_1_fu_1472_p2;
wire   [63:0] bitcast_ln55_2_fu_1506_p1;
wire   [63:0] bitcast_ln55_3_fu_1524_p1;
wire   [10:0] tmp_202_fu_1510_p4;
wire   [51:0] trunc_ln55_2_fu_1520_p1;
wire   [0:0] icmp_ln55_5_fu_1547_p2;
wire   [0:0] icmp_ln55_4_fu_1541_p2;
wire   [10:0] tmp_203_fu_1527_p4;
wire   [51:0] trunc_ln55_3_fu_1537_p1;
wire   [0:0] icmp_ln55_7_fu_1565_p2;
wire   [0:0] icmp_ln55_6_fu_1559_p2;
wire   [0:0] or_ln55_3_fu_1571_p2;
wire   [0:0] or_ln55_2_fu_1553_p2;
wire   [0:0] and_ln55_2_fu_1577_p2;
wire   [63:0] bitcast_ln55_4_fu_1605_p1;
wire   [63:0] bitcast_ln55_5_fu_1623_p1;
wire   [10:0] tmp_205_fu_1609_p4;
wire   [51:0] trunc_ln55_4_fu_1619_p1;
wire   [0:0] icmp_ln55_9_fu_1646_p2;
wire   [0:0] icmp_ln55_8_fu_1640_p2;
wire   [10:0] tmp_206_fu_1626_p4;
wire   [51:0] trunc_ln55_5_fu_1636_p1;
wire   [0:0] icmp_ln55_11_fu_1664_p2;
wire   [0:0] icmp_ln55_10_fu_1658_p2;
wire   [0:0] or_ln55_5_fu_1670_p2;
wire   [0:0] or_ln55_4_fu_1652_p2;
wire   [0:0] and_ln55_4_fu_1676_p2;
wire   [63:0] bitcast_ln55_6_fu_1704_p1;
wire   [63:0] bitcast_ln55_7_fu_1722_p1;
wire   [10:0] tmp_208_fu_1708_p4;
wire   [51:0] trunc_ln55_6_fu_1718_p1;
wire   [0:0] icmp_ln55_13_fu_1745_p2;
wire   [0:0] icmp_ln55_12_fu_1739_p2;
wire   [10:0] tmp_209_fu_1725_p4;
wire   [51:0] trunc_ln55_7_fu_1735_p1;
wire   [0:0] icmp_ln55_15_fu_1763_p2;
wire   [0:0] icmp_ln55_14_fu_1757_p2;
wire   [0:0] or_ln55_7_fu_1769_p2;
wire   [0:0] or_ln55_6_fu_1751_p2;
wire   [0:0] and_ln55_6_fu_1775_p2;
wire   [7:0] zext_ln55_fu_1794_p1;
wire   [7:0] zext_ln55_1_fu_1804_p1;
wire   [7:0] min_s_4_fu_1797_p3;
wire   [7:0] zext_ln55_2_fu_1814_p1;
wire   [7:0] min_s_5_fu_1807_p3;
wire   [7:0] zext_ln55_3_fu_1831_p1;
wire   [7:0] min_s_6_fu_1817_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_1841_p1;
wire   [63:0] bitcast_ln55_9_fu_1859_p1;
wire   [10:0] tmp_211_fu_1845_p4;
wire   [51:0] trunc_ln55_8_fu_1855_p1;
wire   [0:0] icmp_ln55_17_fu_1882_p2;
wire   [0:0] icmp_ln55_16_fu_1876_p2;
wire   [10:0] tmp_212_fu_1862_p4;
wire   [51:0] trunc_ln55_9_fu_1872_p1;
wire   [0:0] icmp_ln55_19_fu_1900_p2;
wire   [0:0] icmp_ln55_18_fu_1894_p2;
wire   [0:0] or_ln55_9_fu_1906_p2;
wire   [0:0] or_ln55_8_fu_1888_p2;
wire   [0:0] and_ln55_8_fu_1912_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_1931_p1;
wire   [63:0] bitcast_ln55_11_fu_1949_p1;
wire   [10:0] tmp_214_fu_1935_p4;
wire   [51:0] trunc_ln55_10_fu_1945_p1;
wire   [0:0] icmp_ln55_21_fu_1972_p2;
wire   [0:0] icmp_ln55_20_fu_1966_p2;
wire   [10:0] tmp_215_fu_1952_p4;
wire   [51:0] trunc_ln55_11_fu_1962_p1;
wire   [0:0] icmp_ln55_23_fu_1990_p2;
wire   [0:0] icmp_ln55_22_fu_1984_p2;
wire   [0:0] or_ln55_11_fu_1996_p2;
wire   [0:0] or_ln55_10_fu_1978_p2;
wire   [0:0] and_ln55_10_fu_2002_p2;
wire   [7:0] zext_ln55_4_fu_2014_p1;
wire   [7:0] zext_ln55_5_fu_2030_p1;
wire   [7:0] min_s_8_fu_2017_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_2040_p1;
wire   [63:0] bitcast_ln55_13_fu_2058_p1;
wire   [10:0] tmp_217_fu_2044_p4;
wire   [51:0] trunc_ln55_12_fu_2054_p1;
wire   [0:0] icmp_ln55_25_fu_2081_p2;
wire   [0:0] icmp_ln55_24_fu_2075_p2;
wire   [10:0] tmp_218_fu_2061_p4;
wire   [51:0] trunc_ln55_13_fu_2071_p1;
wire   [0:0] icmp_ln55_27_fu_2099_p2;
wire   [0:0] icmp_ln55_26_fu_2093_p2;
wire   [0:0] or_ln55_13_fu_2105_p2;
wire   [0:0] or_ln55_12_fu_2087_p2;
wire   [0:0] and_ln55_12_fu_2111_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_2130_p1;
wire   [63:0] bitcast_ln55_15_fu_2148_p1;
wire   [10:0] tmp_221_fu_2134_p4;
wire   [51:0] trunc_ln55_14_fu_2144_p1;
wire   [0:0] icmp_ln55_29_fu_2171_p2;
wire   [0:0] icmp_ln55_28_fu_2165_p2;
wire   [10:0] tmp_222_fu_2151_p4;
wire   [51:0] trunc_ln55_15_fu_2161_p1;
wire   [0:0] icmp_ln55_31_fu_2189_p2;
wire   [0:0] icmp_ln55_30_fu_2183_p2;
wire   [0:0] or_ln55_15_fu_2195_p2;
wire   [0:0] or_ln55_14_fu_2177_p2;
wire   [0:0] and_ln55_14_fu_2201_p2;
wire   [7:0] zext_ln55_6_fu_2213_p1;
wire   [7:0] zext_ln55_7_fu_2229_p1;
wire   [7:0] min_s_10_fu_2216_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_2239_p1;
wire   [63:0] bitcast_ln55_17_fu_2256_p1;
wire   [10:0] tmp_225_fu_2242_p4;
wire   [51:0] trunc_ln55_16_fu_2252_p1;
wire   [0:0] icmp_ln55_33_fu_2279_p2;
wire   [0:0] icmp_ln55_32_fu_2273_p2;
wire   [10:0] tmp_226_fu_2259_p4;
wire   [51:0] trunc_ln55_17_fu_2269_p1;
wire   [0:0] icmp_ln55_35_fu_2297_p2;
wire   [0:0] icmp_ln55_34_fu_2291_p2;
wire   [0:0] or_ln55_17_fu_2303_p2;
wire   [0:0] or_ln55_16_fu_2285_p2;
wire   [0:0] and_ln55_16_fu_2309_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_2327_p1;
wire   [63:0] bitcast_ln55_19_fu_2345_p1;
wire   [10:0] tmp_229_fu_2331_p4;
wire   [51:0] trunc_ln55_18_fu_2341_p1;
wire   [0:0] icmp_ln55_37_fu_2368_p2;
wire   [0:0] icmp_ln55_36_fu_2362_p2;
wire   [10:0] tmp_230_fu_2348_p4;
wire   [51:0] trunc_ln55_19_fu_2358_p1;
wire   [0:0] icmp_ln55_39_fu_2386_p2;
wire   [0:0] icmp_ln55_38_fu_2380_p2;
wire   [0:0] or_ln55_19_fu_2392_p2;
wire   [0:0] or_ln55_18_fu_2374_p2;
wire   [0:0] and_ln55_18_fu_2398_p2;
wire   [7:0] zext_ln55_8_fu_2410_p1;
wire   [7:0] zext_ln55_9_fu_2426_p1;
wire   [7:0] min_s_12_fu_2413_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_2436_p1;
wire   [63:0] bitcast_ln55_21_fu_2453_p1;
wire   [10:0] tmp_233_fu_2439_p4;
wire   [51:0] trunc_ln55_20_fu_2449_p1;
wire   [0:0] icmp_ln55_41_fu_2476_p2;
wire   [0:0] icmp_ln55_40_fu_2470_p2;
wire   [10:0] tmp_234_fu_2456_p4;
wire   [51:0] trunc_ln55_21_fu_2466_p1;
wire   [0:0] icmp_ln55_43_fu_2494_p2;
wire   [0:0] icmp_ln55_42_fu_2488_p2;
wire   [0:0] or_ln55_21_fu_2500_p2;
wire   [0:0] or_ln55_20_fu_2482_p2;
wire   [0:0] and_ln55_20_fu_2506_p2;
wire   [63:0] bitcast_ln55_22_fu_2534_p1;
wire   [63:0] bitcast_ln55_23_fu_2552_p1;
wire   [10:0] tmp_237_fu_2538_p4;
wire   [51:0] trunc_ln55_22_fu_2548_p1;
wire   [0:0] icmp_ln55_45_fu_2575_p2;
wire   [0:0] icmp_ln55_44_fu_2569_p2;
wire   [10:0] tmp_238_fu_2555_p4;
wire   [51:0] trunc_ln55_23_fu_2565_p1;
wire   [0:0] icmp_ln55_47_fu_2593_p2;
wire   [0:0] icmp_ln55_46_fu_2587_p2;
wire   [0:0] or_ln55_23_fu_2599_p2;
wire   [0:0] or_ln55_22_fu_2581_p2;
wire   [0:0] and_ln55_22_fu_2605_p2;
wire   [7:0] zext_ln55_10_fu_2617_p1;
wire   [7:0] zext_ln55_11_fu_2633_p1;
wire   [7:0] min_s_14_fu_2620_p3;
wire   [63:0] bitcast_ln55_24_fu_2643_p1;
wire   [63:0] bitcast_ln55_25_fu_2660_p1;
wire   [10:0] tmp_241_fu_2646_p4;
wire   [51:0] trunc_ln55_24_fu_2656_p1;
wire   [0:0] icmp_ln55_49_fu_2683_p2;
wire   [0:0] icmp_ln55_48_fu_2677_p2;
wire   [10:0] tmp_242_fu_2663_p4;
wire   [51:0] trunc_ln55_25_fu_2673_p1;
wire   [0:0] icmp_ln55_51_fu_2701_p2;
wire   [0:0] icmp_ln55_50_fu_2695_p2;
wire   [0:0] or_ln55_25_fu_2707_p2;
wire   [0:0] or_ln55_24_fu_2689_p2;
wire   [0:0] and_ln55_24_fu_2713_p2;
wire   [63:0] bitcast_ln55_26_fu_2731_p1;
wire   [63:0] bitcast_ln55_27_fu_2749_p1;
wire   [10:0] tmp_245_fu_2735_p4;
wire   [51:0] trunc_ln55_26_fu_2745_p1;
wire   [0:0] icmp_ln55_53_fu_2772_p2;
wire   [0:0] icmp_ln55_52_fu_2766_p2;
wire   [10:0] tmp_246_fu_2752_p4;
wire   [51:0] trunc_ln55_27_fu_2762_p1;
wire   [0:0] icmp_ln55_55_fu_2790_p2;
wire   [0:0] icmp_ln55_54_fu_2784_p2;
wire   [0:0] or_ln55_27_fu_2796_p2;
wire   [0:0] or_ln55_26_fu_2778_p2;
wire   [0:0] and_ln55_26_fu_2802_p2;
wire   [63:0] bitcast_ln55_28_fu_2821_p1;
wire   [63:0] bitcast_ln55_29_fu_2838_p1;
wire   [10:0] tmp_249_fu_2824_p4;
wire   [51:0] trunc_ln55_28_fu_2834_p1;
wire   [0:0] icmp_ln55_57_fu_2861_p2;
wire   [0:0] icmp_ln55_56_fu_2855_p2;
wire   [10:0] tmp_250_fu_2841_p4;
wire   [51:0] trunc_ln55_29_fu_2851_p1;
wire   [0:0] icmp_ln55_59_fu_2879_p2;
wire   [0:0] icmp_ln55_58_fu_2873_p2;
wire   [0:0] or_ln55_29_fu_2885_p2;
wire   [0:0] or_ln55_28_fu_2867_p2;
wire   [0:0] and_ln55_28_fu_2891_p2;
wire   [7:0] zext_ln55_12_fu_2909_p1;
wire   [7:0] zext_ln55_13_fu_2918_p1;
wire   [7:0] min_s_16_fu_2912_p3;
wire   [7:0] zext_ln55_14_fu_2928_p1;
wire   [7:0] min_s_17_fu_2921_p3;
wire   [63:0] bitcast_ln55_30_fu_2939_p1;
wire   [63:0] bitcast_ln55_31_fu_2957_p1;
wire   [10:0] tmp_252_fu_2943_p4;
wire   [51:0] trunc_ln55_30_fu_2953_p1;
wire   [0:0] icmp_ln55_61_fu_2980_p2;
wire   [0:0] icmp_ln55_60_fu_2974_p2;
wire   [10:0] tmp_253_fu_2960_p4;
wire   [51:0] trunc_ln55_31_fu_2970_p1;
wire   [0:0] icmp_ln55_63_fu_2998_p2;
wire   [0:0] icmp_ln55_62_fu_2992_p2;
wire   [0:0] or_ln55_31_fu_3004_p2;
wire   [0:0] or_ln55_30_fu_2986_p2;
wire   [0:0] and_ln55_30_fu_3010_p2;
wire   [0:0] and_ln55_31_fu_3016_p2;
wire   [7:0] zext_ln55_15_fu_3028_p1;
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
#0 min_p_fu_132 = 64'd0;
#0 min_s_fu_136 = 8'd0;
#0 min_s_1_fu_140 = 6'd0;
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
        min_p_fu_132 <= min_p_195;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (tmp_1_reg_3255_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_132 <= min_p_159_fu_3021_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_1_fu_140 <= 6'd1;
    end else if (((tmp_1_reg_3255 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_140 <= add_ln53_15_fu_2524_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_fu_136 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (tmp_1_reg_3255_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_136 <= min_s_19_fu_3031_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_10_reg_3205 <= add_ln53_10_fu_907_p2;
        add_ln53_10_reg_3205_pp0_iter1_reg <= add_ln53_10_reg_3205;
        add_ln53_11_reg_3216 <= add_ln53_11_fu_936_p2;
        add_ln53_11_reg_3216_pp0_iter1_reg <= add_ln53_11_reg_3216;
        add_ln53_12_reg_3227 <= add_ln53_12_fu_965_p2;
        add_ln53_12_reg_3227_pp0_iter1_reg <= add_ln53_12_reg_3227;
        add_ln53_13_reg_3238 <= add_ln53_13_fu_994_p2;
        add_ln53_13_reg_3238_pp0_iter1_reg <= add_ln53_13_reg_3238;
        add_ln53_14_reg_3249 <= add_ln53_14_fu_1023_p2;
        add_ln53_1_reg_3161 <= add_ln53_1_fu_795_p2;
        add_ln53_6_reg_3167 <= add_ln53_6_fu_801_p2;
        add_ln53_8_reg_3183 <= add_ln53_8_fu_849_p2;
        add_ln53_9_reg_3194 <= add_ln53_9_fu_878_p2;
        add_ln53_9_reg_3194_pp0_iter1_reg <= add_ln53_9_reg_3194;
        add_ln53_reg_3155 <= add_ln53_fu_789_p2;
        and_ln55_23_reg_3832 <= and_ln55_23_fu_2611_p2;
        s_reg_3099 <= ap_sig_allocacmp_s;
        tmp_1_reg_3255 <= add_ln53_14_fu_1023_p2[32'd6];
        tmp_1_reg_3255_pp0_iter1_reg <= tmp_1_reg_3255;
        zext_ln52_2_cast_reg_3080[6 : 0] <= zext_ln52_2_cast_fu_714_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_3294 <= add_ln53_2_fu_1073_p2;
        add_ln53_3_reg_3305 <= add_ln53_3_fu_1078_p2;
        min_p_151_reg_3838 <= min_p_151_fu_2626_p3;
        min_s_15_reg_3845 <= min_s_15_fu_2636_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_3396 <= add_ln53_4_fu_1147_p2;
        add_ln53_5_reg_3402 <= add_ln53_5_fu_1152_p2;
        and_ln55_25_reg_3850 <= and_ln55_25_fu_2719_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_7_reg_3438 <= add_ln53_7_fu_1198_p2;
        min_p_153_reg_3856 <= min_p_153_fu_2725_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_3725 <= and_ln55_11_fu_2008_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_3750 <= and_ln55_13_fu_2117_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_3770 <= and_ln55_15_fu_2207_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_3788 <= and_ln55_17_fu_2315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_3801 <= and_ln55_19_fu_2404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3606 <= and_ln55_1_fu_1484_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_3819 <= and_ln55_21_fu_2512_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_27_reg_3863 <= and_ln55_27_fu_2808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_29_reg_3876 <= and_ln55_29_fu_2897_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3629 <= and_ln55_3_fu_1583_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3652 <= and_ln55_5_fu_1682_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_3675 <= and_ln55_7_fu_1781_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_3705 <= and_ln55_9_fu_1918_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_8_reg_3331 <= llike_1_q0;
        llike_1_load_reg_3259 <= llike_1_q1;
        llike_2_load_8_reg_3336 <= llike_2_q0;
        llike_2_load_reg_3264 <= llike_2_q1;
        llike_3_load_8_reg_3341 <= llike_3_q0;
        llike_3_load_reg_3279 <= llike_3_q1;
        llike_4_load_8_reg_3346 <= llike_4_q0;
        llike_4_load_reg_3300 <= llike_4_q1;
        llike_5_load_8_reg_3351 <= llike_5_q0;
        llike_5_load_reg_3311 <= llike_5_q1;
        llike_6_load_8_reg_3356 <= llike_6_q0;
        llike_6_load_reg_3316 <= llike_6_q1;
        llike_7_load_8_reg_3361 <= llike_7_q0;
        llike_7_load_reg_3321 <= llike_7_q1;
        llike_load_reg_3326 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_8_reg_3408 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_3594 <= min_p_fu_132;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_3617 <= min_p_129_fu_1494_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_3640 <= min_p_131_fu_1594_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_133_reg_3663 <= min_p_133_fu_1692_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_135_reg_3693 <= min_p_135_fu_1824_p3;
        min_s_7_reg_3700 <= min_s_7_fu_1834_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_137_reg_3718 <= min_p_137_fu_1924_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_139_reg_3738 <= min_p_139_fu_2023_p3;
        min_s_9_reg_3745 <= min_s_9_fu_2033_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_141_reg_3763 <= min_p_141_fu_2123_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_143_reg_3776 <= min_p_143_fu_2222_p3;
        min_s_11_reg_3783 <= min_s_11_fu_2232_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_145_reg_3794 <= min_p_145_fu_2321_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_147_reg_3807 <= min_p_147_fu_2419_p3;
        min_s_13_reg_3814 <= min_s_13_fu_2429_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_149_reg_3825 <= min_p_149_fu_2518_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_155_reg_3869 <= min_p_155_fu_2814_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_157_reg_3882 <= min_p_157_fu_2903_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_3889 <= min_s_18_fu_2931_p3;
        tmp_254_reg_3894 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_70_reg_3681 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_72_reg_3711 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_74_reg_3731 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_76_reg_3756 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_673 <= grp_fu_659_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_677 <= grp_fu_666_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_681 <= grp_fu_659_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_685 <= grp_fu_666_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_689 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_694 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_699 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_704 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_709 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        select_ln54_12_reg_3534 <= grp_fu_666_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        select_ln54_13_reg_3564 <= grp_fu_659_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        select_ln54_15_reg_3589 <= grp_fu_666_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln54_8_reg_3474 <= grp_fu_666_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        select_ln54_9_reg_3504 <= grp_fu_659_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln54_reg_3569 <= trunc_ln54_fu_1372_p1;
        trunc_ln54_reg_3569_pp0_iter1_reg <= trunc_ln54_reg_3569;
    end
end
always @ (*) begin
    if (((tmp_1_reg_3255 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (tmp_1_reg_3255_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_140;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_651_p0 = llike_load_8_reg_3408;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_651_p0 = llike_7_load_8_reg_3361;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_651_p0 = llike_6_load_8_reg_3356;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_651_p0 = llike_5_load_8_reg_3351;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_651_p0 = llike_4_load_8_reg_3346;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_651_p0 = llike_3_load_8_reg_3341;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_651_p0 = llike_2_load_8_reg_3336;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_651_p0 = llike_1_load_8_reg_3331;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_651_p0 = llike_load_reg_3326;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_651_p0 = llike_7_load_reg_3321;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_651_p0 = llike_6_load_reg_3316;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_651_p0 = llike_5_load_reg_3311;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_651_p0 = llike_4_load_reg_3300;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_651_p0 = llike_3_load_reg_3279;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_651_p0 = llike_2_load_reg_3264;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_651_p0 = llike_1_load_reg_3259;
        end else begin
            grp_fu_651_p0 = 'bx;
        end
    end else begin
        grp_fu_651_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_651_p1 = bitcast_ln54_15_fu_1787_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_651_p1 = bitcast_ln54_14_fu_1699_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_651_p1 = bitcast_ln54_13_fu_1688_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_651_p1 = bitcast_ln54_12_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_651_p1 = bitcast_ln54_11_fu_1589_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_651_p1 = bitcast_ln54_10_fu_1501_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_651_p1 = bitcast_ln54_9_fu_1490_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_651_p1 = bitcast_ln54_8_fu_1403_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_651_p1 = bitcast_ln54_7_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_651_p1 = bitcast_ln54_6_fu_1367_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_651_p1 = bitcast_ln54_5_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_651_p1 = bitcast_ln54_4_fu_1285_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_651_p1 = bitcast_ln54_3_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_651_p1 = bitcast_ln54_2_fu_1203_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_651_p1 = bitcast_ln54_1_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_651_p1 = bitcast_ln54_fu_1106_p1;
        end else begin
            grp_fu_651_p1 = 'bx;
        end
    end else begin
        grp_fu_651_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_655_p0 = p_76_reg_3756;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_655_p0 = p_74_reg_3731;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_655_p0 = p_72_reg_3711;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_655_p0 = p_70_reg_3681;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_655_p0 = reg_709;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_655_p0 = reg_704;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_655_p0 = reg_699;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_655_p0 = reg_694;
    end else if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_655_p0 = reg_689;
    end else begin
        grp_fu_655_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_655_p1 = min_p_157_fu_2903_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_655_p1 = min_p_155_fu_2814_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_655_p1 = min_p_153_fu_2725_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_655_p1 = min_p_151_fu_2626_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_655_p1 = min_p_149_fu_2518_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_655_p1 = min_p_147_fu_2419_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_655_p1 = min_p_145_fu_2321_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_655_p1 = min_p_143_fu_2222_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_655_p1 = min_p_141_fu_2123_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_655_p1 = min_p_139_fu_2023_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_655_p1 = min_p_137_fu_1924_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_655_p1 = min_p_135_fu_1824_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_655_p1 = min_p_133_fu_1692_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_655_p1 = min_p_131_fu_1594_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_655_p1 = min_p_129_fu_1494_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_655_p1 = min_p_fu_132;
    end else begin
        grp_fu_655_p1 = 'bx;
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
            llike_address0_local = zext_ln54_26_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_17_fu_825_p1;
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
    if (((1'b0 == ap_block_pp0_stage8_11001) & (tmp_1_reg_3255_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln54_13_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln54_11_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln54_9_fu_1261_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln54_7_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1174_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1067_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_783_p1;
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
            transition_0_address1_local = zext_ln54_15_fu_1388_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln54_14_fu_1361_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln54_12_fu_1320_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln54_10_fu_1279_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_8_fu_1238_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1192_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1141_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1049_p1;
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
            transition_1_address0_local = zext_ln54_13_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln54_11_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln54_9_fu_1261_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln54_7_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1174_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1067_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_783_p1;
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
            transition_1_address1_local = zext_ln54_15_fu_1388_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln54_14_fu_1361_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln54_12_fu_1320_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln54_10_fu_1279_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_8_fu_1238_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1192_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1141_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1049_p1;
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
assign add_ln53_10_fu_907_p2 = (ap_sig_allocacmp_s + 6'd11);
assign add_ln53_11_fu_936_p2 = (ap_sig_allocacmp_s + 6'd12);
assign add_ln53_12_fu_965_p2 = (ap_sig_allocacmp_s + 6'd13);
assign add_ln53_13_fu_994_p2 = (ap_sig_allocacmp_s + 6'd14);
assign add_ln53_14_fu_1023_p2 = (zext_ln17_fu_736_p1 + 7'd15);
assign add_ln53_15_fu_2524_p2 = (s_reg_3099 + 6'd16);
assign add_ln53_1_fu_795_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1073_p2 = (s_reg_3099 + 6'd3);
assign add_ln53_3_fu_1078_p2 = (s_reg_3099 + 6'd4);
assign add_ln53_4_fu_1147_p2 = (s_reg_3099 + 6'd5);
assign add_ln53_5_fu_1152_p2 = (s_reg_3099 + 6'd6);
assign add_ln53_6_fu_801_p2 = (ap_sig_allocacmp_s + 6'd7);
assign add_ln53_7_fu_1198_p2 = (s_reg_3099 + 6'd8);
assign add_ln53_8_fu_849_p2 = (ap_sig_allocacmp_s + 6'd9);
assign add_ln53_9_fu_878_p2 = (ap_sig_allocacmp_s + 6'd10);
assign add_ln53_fu_789_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1274_p2 = (shl_ln54_s_fu_1267_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_11_fu_1297_p2 = (shl_ln54_10_fu_1290_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_12_fu_1315_p2 = (shl_ln54_11_fu_1308_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_13_fu_1338_p2 = (shl_ln54_12_fu_1331_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_14_fu_1356_p2 = (shl_ln54_13_fu_1349_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_15_fu_1383_p2 = (shl_ln54_14_fu_1375_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_16_fu_1096_p2 = (zext_ln52_3 + zext_ln54_25_fu_1092_p1);
assign add_ln54_1_fu_1044_p2 = (shl_ln54_1_fu_1037_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_2_fu_1062_p2 = (shl_ln54_2_fu_1055_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_3_fu_1118_p2 = (shl_ln54_3_fu_1111_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_4_fu_1136_p2 = (shl_ln54_4_fu_1129_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_5_fu_1169_p2 = (shl_ln54_5_fu_1162_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_6_fu_1187_p2 = (shl_ln54_6_fu_1180_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_7_fu_1215_p2 = (shl_ln54_7_fu_1208_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_8_fu_1233_p2 = (shl_ln54_8_fu_1226_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_9_fu_1256_p2 = (shl_ln54_9_fu_1249_p3 + zext_ln52_2_cast_reg_3080);
assign add_ln54_fu_777_p2 = (shl_ln2_fu_769_p3 + zext_ln52_2_cast_fu_714_p1);
assign add_ln8_fu_830_p2 = (lshr_ln8_8_fu_740_p4 + 3'd1);
assign and_ln55_10_fu_2002_p2 = (or_ln55_11_fu_1996_p2 & or_ln55_10_fu_1978_p2);
assign and_ln55_11_fu_2008_p2 = (grp_fu_584_p_dout0 & and_ln55_10_fu_2002_p2);
assign and_ln55_12_fu_2111_p2 = (or_ln55_13_fu_2105_p2 & or_ln55_12_fu_2087_p2);
assign and_ln55_13_fu_2117_p2 = (grp_fu_584_p_dout0 & and_ln55_12_fu_2111_p2);
assign and_ln55_14_fu_2201_p2 = (or_ln55_15_fu_2195_p2 & or_ln55_14_fu_2177_p2);
assign and_ln55_15_fu_2207_p2 = (grp_fu_584_p_dout0 & and_ln55_14_fu_2201_p2);
assign and_ln55_16_fu_2309_p2 = (or_ln55_17_fu_2303_p2 & or_ln55_16_fu_2285_p2);
assign and_ln55_17_fu_2315_p2 = (grp_fu_584_p_dout0 & and_ln55_16_fu_2309_p2);
assign and_ln55_18_fu_2398_p2 = (or_ln55_19_fu_2392_p2 & or_ln55_18_fu_2374_p2);
assign and_ln55_19_fu_2404_p2 = (grp_fu_584_p_dout0 & and_ln55_18_fu_2398_p2);
assign and_ln55_1_fu_1484_p2 = (or_ln55_1_fu_1472_p2 & and_ln55_fu_1478_p2);
assign and_ln55_20_fu_2506_p2 = (or_ln55_21_fu_2500_p2 & or_ln55_20_fu_2482_p2);
assign and_ln55_21_fu_2512_p2 = (grp_fu_584_p_dout0 & and_ln55_20_fu_2506_p2);
assign and_ln55_22_fu_2605_p2 = (or_ln55_23_fu_2599_p2 & or_ln55_22_fu_2581_p2);
assign and_ln55_23_fu_2611_p2 = (grp_fu_584_p_dout0 & and_ln55_22_fu_2605_p2);
assign and_ln55_24_fu_2713_p2 = (or_ln55_25_fu_2707_p2 & or_ln55_24_fu_2689_p2);
assign and_ln55_25_fu_2719_p2 = (grp_fu_584_p_dout0 & and_ln55_24_fu_2713_p2);
assign and_ln55_26_fu_2802_p2 = (or_ln55_27_fu_2796_p2 & or_ln55_26_fu_2778_p2);
assign and_ln55_27_fu_2808_p2 = (grp_fu_584_p_dout0 & and_ln55_26_fu_2802_p2);
assign and_ln55_28_fu_2891_p2 = (or_ln55_29_fu_2885_p2 & or_ln55_28_fu_2867_p2);
assign and_ln55_29_fu_2897_p2 = (grp_fu_584_p_dout0 & and_ln55_28_fu_2891_p2);
assign and_ln55_2_fu_1577_p2 = (or_ln55_3_fu_1571_p2 & or_ln55_2_fu_1553_p2);
assign and_ln55_30_fu_3010_p2 = (or_ln55_31_fu_3004_p2 & or_ln55_30_fu_2986_p2);
assign and_ln55_31_fu_3016_p2 = (tmp_254_reg_3894 & and_ln55_30_fu_3010_p2);
assign and_ln55_3_fu_1583_p2 = (grp_fu_584_p_dout0 & and_ln55_2_fu_1577_p2);
assign and_ln55_4_fu_1676_p2 = (or_ln55_5_fu_1670_p2 & or_ln55_4_fu_1652_p2);
assign and_ln55_5_fu_1682_p2 = (grp_fu_584_p_dout0 & and_ln55_4_fu_1676_p2);
assign and_ln55_6_fu_1775_p2 = (or_ln55_7_fu_1769_p2 & or_ln55_6_fu_1751_p2);
assign and_ln55_7_fu_1781_p2 = (grp_fu_584_p_dout0 & and_ln55_6_fu_1775_p2);
assign and_ln55_8_fu_1912_p2 = (or_ln55_9_fu_1906_p2 & or_ln55_8_fu_1888_p2);
assign and_ln55_9_fu_1918_p2 = (grp_fu_584_p_dout0 & and_ln55_8_fu_1912_p2);
assign and_ln55_fu_1478_p2 = (or_ln55_fu_1454_p2 & grp_fu_584_p_dout0);
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
assign bitcast_ln54_10_fu_1501_p1 = reg_677;
assign bitcast_ln54_11_fu_1589_p1 = reg_673;
assign bitcast_ln54_12_fu_1601_p1 = select_ln54_12_reg_3534;
assign bitcast_ln54_13_fu_1688_p1 = select_ln54_13_reg_3564;
assign bitcast_ln54_14_fu_1699_p1 = reg_685;
assign bitcast_ln54_15_fu_1787_p1 = select_ln54_15_reg_3589;
assign bitcast_ln54_1_fu_1157_p1 = reg_677;
assign bitcast_ln54_2_fu_1203_p1 = reg_673;
assign bitcast_ln54_3_fu_1244_p1 = reg_681;
assign bitcast_ln54_4_fu_1285_p1 = reg_677;
assign bitcast_ln54_5_fu_1326_p1 = reg_673;
assign bitcast_ln54_6_fu_1367_p1 = reg_685;
assign bitcast_ln54_7_fu_1394_p1 = reg_681;
assign bitcast_ln54_8_fu_1403_p1 = select_ln54_8_reg_3474;
assign bitcast_ln54_9_fu_1490_p1 = select_ln54_9_reg_3504;
assign bitcast_ln54_fu_1106_p1 = reg_673;
assign bitcast_ln55_10_fu_1931_p1 = reg_694;
assign bitcast_ln55_11_fu_1949_p1 = min_p_137_reg_3718;
assign bitcast_ln55_12_fu_2040_p1 = reg_709;
assign bitcast_ln55_13_fu_2058_p1 = min_p_139_reg_3738;
assign bitcast_ln55_14_fu_2130_p1 = reg_699;
assign bitcast_ln55_15_fu_2148_p1 = min_p_141_reg_3763;
assign bitcast_ln55_16_fu_2239_p1 = p_70_reg_3681;
assign bitcast_ln55_17_fu_2256_p1 = min_p_143_reg_3776;
assign bitcast_ln55_18_fu_2327_p1 = reg_689;
assign bitcast_ln55_19_fu_2345_p1 = min_p_145_reg_3794;
assign bitcast_ln55_1_fu_1425_p1 = min_p_127_reg_3594;
assign bitcast_ln55_20_fu_2436_p1 = p_72_reg_3711;
assign bitcast_ln55_21_fu_2453_p1 = min_p_147_reg_3807;
assign bitcast_ln55_22_fu_2534_p1 = reg_704;
assign bitcast_ln55_23_fu_2552_p1 = min_p_149_reg_3825;
assign bitcast_ln55_24_fu_2643_p1 = p_74_reg_3731;
assign bitcast_ln55_25_fu_2660_p1 = min_p_151_reg_3838;
assign bitcast_ln55_26_fu_2731_p1 = reg_694;
assign bitcast_ln55_27_fu_2749_p1 = min_p_153_reg_3856;
assign bitcast_ln55_28_fu_2821_p1 = p_76_reg_3756;
assign bitcast_ln55_29_fu_2838_p1 = min_p_155_reg_3869;
assign bitcast_ln55_2_fu_1506_p1 = reg_694;
assign bitcast_ln55_30_fu_2939_p1 = reg_709;
assign bitcast_ln55_31_fu_2957_p1 = min_p_157_reg_3882;
assign bitcast_ln55_3_fu_1524_p1 = min_p_129_reg_3617;
assign bitcast_ln55_4_fu_1605_p1 = reg_699;
assign bitcast_ln55_5_fu_1623_p1 = min_p_131_reg_3640;
assign bitcast_ln55_6_fu_1704_p1 = reg_689;
assign bitcast_ln55_7_fu_1722_p1 = min_p_133_reg_3663;
assign bitcast_ln55_8_fu_1841_p1 = reg_704;
assign bitcast_ln55_9_fu_1859_p1 = min_p_135_reg_3693;
assign bitcast_ln55_fu_1407_p1 = reg_689;
assign grp_fu_319_p_ce = 1'b1;
assign grp_fu_319_p_din0 = grp_fu_651_p0;
assign grp_fu_319_p_din1 = grp_fu_651_p1;
assign grp_fu_319_p_opcode = 2'd0;
assign grp_fu_584_p_ce = 1'b1;
assign grp_fu_584_p_din0 = grp_fu_655_p0;
assign grp_fu_584_p_din1 = grp_fu_655_p1;
assign grp_fu_584_p_opcode = 5'd4;
assign grp_fu_659_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_666_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign icmp_ln55_10_fu_1658_p2 = ((tmp_206_fu_1626_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1664_p2 = ((trunc_ln55_5_fu_1636_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1739_p2 = ((tmp_208_fu_1708_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1745_p2 = ((trunc_ln55_6_fu_1718_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1757_p2 = ((tmp_209_fu_1725_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1763_p2 = ((trunc_ln55_7_fu_1735_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1876_p2 = ((tmp_211_fu_1845_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1882_p2 = ((trunc_ln55_8_fu_1855_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1894_p2 = ((tmp_212_fu_1862_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1900_p2 = ((trunc_ln55_9_fu_1872_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1448_p2 = ((trunc_ln55_fu_1421_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1966_p2 = ((tmp_214_fu_1935_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1972_p2 = ((trunc_ln55_10_fu_1945_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1984_p2 = ((tmp_215_fu_1952_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1990_p2 = ((trunc_ln55_11_fu_1962_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2075_p2 = ((tmp_217_fu_2044_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2081_p2 = ((trunc_ln55_12_fu_2054_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2093_p2 = ((tmp_218_fu_2061_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2099_p2 = ((trunc_ln55_13_fu_2071_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2165_p2 = ((tmp_221_fu_2134_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2171_p2 = ((trunc_ln55_14_fu_2144_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1460_p2 = ((tmp_200_fu_1428_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2183_p2 = ((tmp_222_fu_2151_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2189_p2 = ((trunc_ln55_15_fu_2161_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_2273_p2 = ((tmp_225_fu_2242_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_2279_p2 = ((trunc_ln55_16_fu_2252_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_2291_p2 = ((tmp_226_fu_2259_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_2297_p2 = ((trunc_ln55_17_fu_2269_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_2362_p2 = ((tmp_229_fu_2331_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_2368_p2 = ((trunc_ln55_18_fu_2341_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_2380_p2 = ((tmp_230_fu_2348_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_2386_p2 = ((trunc_ln55_19_fu_2358_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1466_p2 = ((trunc_ln55_1_fu_1438_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_2470_p2 = ((tmp_233_fu_2439_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_2476_p2 = ((trunc_ln55_20_fu_2449_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_2488_p2 = ((tmp_234_fu_2456_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_2494_p2 = ((trunc_ln55_21_fu_2466_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_2569_p2 = ((tmp_237_fu_2538_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_2575_p2 = ((trunc_ln55_22_fu_2548_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_2587_p2 = ((tmp_238_fu_2555_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_2593_p2 = ((trunc_ln55_23_fu_2565_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_2677_p2 = ((tmp_241_fu_2646_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_2683_p2 = ((trunc_ln55_24_fu_2656_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1541_p2 = ((tmp_202_fu_1510_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_2695_p2 = ((tmp_242_fu_2663_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_2701_p2 = ((trunc_ln55_25_fu_2673_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_2766_p2 = ((tmp_245_fu_2735_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_2772_p2 = ((trunc_ln55_26_fu_2745_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_2784_p2 = ((tmp_246_fu_2752_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_2790_p2 = ((trunc_ln55_27_fu_2762_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_2855_p2 = ((tmp_249_fu_2824_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_2861_p2 = ((trunc_ln55_28_fu_2834_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_2873_p2 = ((tmp_250_fu_2841_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_2879_p2 = ((trunc_ln55_29_fu_2851_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1547_p2 = ((trunc_ln55_2_fu_1520_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_2974_p2 = ((tmp_252_fu_2943_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_2980_p2 = ((trunc_ln55_30_fu_2953_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_2992_p2 = ((tmp_253_fu_2960_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_2998_p2 = ((trunc_ln55_31_fu_2970_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1559_p2 = ((tmp_203_fu_1527_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1565_p2 = ((trunc_ln55_3_fu_1537_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1640_p2 = ((tmp_205_fu_1609_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1646_p2 = ((trunc_ln55_4_fu_1619_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1442_p2 = ((tmp_199_fu_1411_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_18_fu_844_p1;
assign llike_1_address1 = zext_ln54_16_fu_758_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln54_19_fu_873_p1;
assign llike_2_address1 = zext_ln54_16_fu_758_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln54_20_fu_902_p1;
assign llike_3_address1 = zext_ln54_16_fu_758_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_4_address0 = zext_ln54_21_fu_931_p1;
assign llike_4_address1 = zext_ln54_16_fu_758_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_ce1 = llike_4_ce1_local;
assign llike_5_address0 = zext_ln54_22_fu_960_p1;
assign llike_5_address1 = zext_ln54_16_fu_758_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_ce1 = llike_5_ce1_local;
assign llike_6_address0 = zext_ln54_23_fu_989_p1;
assign llike_6_address1 = zext_ln54_16_fu_758_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_ce1 = llike_6_ce1_local;
assign llike_7_address0 = zext_ln54_24_fu_1018_p1;
assign llike_7_address1 = zext_ln54_16_fu_758_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_ce1 = llike_7_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_884_p4 = {{add_ln53_9_fu_878_p2[5:3]}};
assign lshr_ln8_2_fu_913_p4 = {{add_ln53_10_fu_907_p2[5:3]}};
assign lshr_ln8_3_fu_942_p4 = {{add_ln53_11_fu_936_p2[5:3]}};
assign lshr_ln8_4_fu_971_p4 = {{add_ln53_12_fu_965_p2[5:3]}};
assign lshr_ln8_5_fu_1000_p4 = {{add_ln53_13_fu_994_p2[5:3]}};
assign lshr_ln8_8_fu_740_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln8_9_fu_807_p4 = {{add_ln53_6_fu_801_p2[5:3]}};
assign lshr_ln8_s_fu_855_p4 = {{add_ln53_8_fu_849_p2[5:3]}};
assign lshr_ln9_3_fu_1083_p4 = {{add_ln53_14_reg_3249[6:3]}};
assign min_p_129_fu_1494_p3 = ((and_ln55_1_reg_3606[0:0] == 1'b1) ? reg_689 : min_p_127_reg_3594);
assign min_p_131_fu_1594_p3 = ((and_ln55_3_reg_3629[0:0] == 1'b1) ? reg_694 : min_p_129_reg_3617);
assign min_p_133_fu_1692_p3 = ((and_ln55_5_reg_3652[0:0] == 1'b1) ? reg_699 : min_p_131_reg_3640);
assign min_p_135_fu_1824_p3 = ((and_ln55_7_reg_3675[0:0] == 1'b1) ? reg_689 : min_p_133_reg_3663);
assign min_p_137_fu_1924_p3 = ((and_ln55_9_reg_3705[0:0] == 1'b1) ? reg_704 : min_p_135_reg_3693);
assign min_p_139_fu_2023_p3 = ((and_ln55_11_reg_3725[0:0] == 1'b1) ? reg_694 : min_p_137_reg_3718);
assign min_p_141_fu_2123_p3 = ((and_ln55_13_reg_3750[0:0] == 1'b1) ? reg_709 : min_p_139_reg_3738);
assign min_p_143_fu_2222_p3 = ((and_ln55_15_reg_3770[0:0] == 1'b1) ? reg_699 : min_p_141_reg_3763);
assign min_p_145_fu_2321_p3 = ((and_ln55_17_reg_3788[0:0] == 1'b1) ? p_70_reg_3681 : min_p_143_reg_3776);
assign min_p_147_fu_2419_p3 = ((and_ln55_19_reg_3801[0:0] == 1'b1) ? reg_689 : min_p_145_reg_3794);
assign min_p_149_fu_2518_p3 = ((and_ln55_21_reg_3819[0:0] == 1'b1) ? p_72_reg_3711 : min_p_147_reg_3807);
assign min_p_151_fu_2626_p3 = ((and_ln55_23_reg_3832[0:0] == 1'b1) ? reg_704 : min_p_149_reg_3825);
assign min_p_153_fu_2725_p3 = ((and_ln55_25_reg_3850[0:0] == 1'b1) ? p_74_reg_3731 : min_p_151_reg_3838);
assign min_p_155_fu_2814_p3 = ((and_ln55_27_reg_3863[0:0] == 1'b1) ? reg_694 : min_p_153_reg_3856);
assign min_p_157_fu_2903_p3 = ((and_ln55_29_reg_3876[0:0] == 1'b1) ? p_76_reg_3756 : min_p_155_reg_3869);
assign min_p_159_fu_3021_p3 = ((and_ln55_31_fu_3016_p2[0:0] == 1'b1) ? reg_709 : min_p_157_reg_3882);
assign min_s_10_fu_2216_p3 = ((and_ln55_13_reg_3750[0:0] == 1'b1) ? zext_ln55_6_fu_2213_p1 : min_s_9_reg_3745);
assign min_s_11_fu_2232_p3 = ((and_ln55_15_reg_3770[0:0] == 1'b1) ? zext_ln55_7_fu_2229_p1 : min_s_10_fu_2216_p3);
assign min_s_12_fu_2413_p3 = ((and_ln55_17_reg_3788[0:0] == 1'b1) ? zext_ln55_8_fu_2410_p1 : min_s_11_reg_3783);
assign min_s_13_fu_2429_p3 = ((and_ln55_19_reg_3801[0:0] == 1'b1) ? zext_ln55_9_fu_2426_p1 : min_s_12_fu_2413_p3);
assign min_s_14_fu_2620_p3 = ((and_ln55_21_reg_3819[0:0] == 1'b1) ? zext_ln55_10_fu_2617_p1 : min_s_13_reg_3814);
assign min_s_15_fu_2636_p3 = ((and_ln55_23_reg_3832[0:0] == 1'b1) ? zext_ln55_11_fu_2633_p1 : min_s_14_fu_2620_p3);
assign min_s_16_fu_2912_p3 = ((and_ln55_25_reg_3850[0:0] == 1'b1) ? zext_ln55_12_fu_2909_p1 : min_s_15_reg_3845);
assign min_s_17_fu_2921_p3 = ((and_ln55_27_reg_3863[0:0] == 1'b1) ? zext_ln55_13_fu_2918_p1 : min_s_16_fu_2912_p3);
assign min_s_18_fu_2931_p3 = ((and_ln55_29_reg_3876[0:0] == 1'b1) ? zext_ln55_14_fu_2928_p1 : min_s_17_fu_2921_p3);
assign min_s_19_fu_3031_p3 = ((and_ln55_31_fu_3016_p2[0:0] == 1'b1) ? zext_ln55_15_fu_3028_p1 : min_s_18_reg_3889);
assign min_s_34_out = ((and_ln55_29_reg_3876[0:0] == 1'b1) ? zext_ln55_14_fu_2928_p1 : min_s_17_fu_2921_p3);
assign min_s_4_fu_1797_p3 = ((and_ln55_1_reg_3606[0:0] == 1'b1) ? zext_ln55_fu_1794_p1 : min_s_fu_136);
assign min_s_5_fu_1807_p3 = ((and_ln55_3_reg_3629[0:0] == 1'b1) ? zext_ln55_1_fu_1804_p1 : min_s_4_fu_1797_p3);
assign min_s_6_fu_1817_p3 = ((and_ln55_5_reg_3652[0:0] == 1'b1) ? zext_ln55_2_fu_1814_p1 : min_s_5_fu_1807_p3);
assign min_s_7_fu_1834_p3 = ((and_ln55_7_reg_3675[0:0] == 1'b1) ? zext_ln55_3_fu_1831_p1 : min_s_6_fu_1817_p3);
assign min_s_8_fu_2017_p3 = ((and_ln55_9_reg_3705[0:0] == 1'b1) ? zext_ln55_4_fu_2014_p1 : min_s_7_reg_3700);
assign min_s_9_fu_2033_p3 = ((and_ln55_11_reg_3725[0:0] == 1'b1) ? zext_ln55_5_fu_2030_p1 : min_s_8_fu_2017_p3);
assign or_ln55_10_fu_1978_p2 = (icmp_ln55_21_fu_1972_p2 | icmp_ln55_20_fu_1966_p2);
assign or_ln55_11_fu_1996_p2 = (icmp_ln55_23_fu_1990_p2 | icmp_ln55_22_fu_1984_p2);
assign or_ln55_12_fu_2087_p2 = (icmp_ln55_25_fu_2081_p2 | icmp_ln55_24_fu_2075_p2);
assign or_ln55_13_fu_2105_p2 = (icmp_ln55_27_fu_2099_p2 | icmp_ln55_26_fu_2093_p2);
assign or_ln55_14_fu_2177_p2 = (icmp_ln55_29_fu_2171_p2 | icmp_ln55_28_fu_2165_p2);
assign or_ln55_15_fu_2195_p2 = (icmp_ln55_31_fu_2189_p2 | icmp_ln55_30_fu_2183_p2);
assign or_ln55_16_fu_2285_p2 = (icmp_ln55_33_fu_2279_p2 | icmp_ln55_32_fu_2273_p2);
assign or_ln55_17_fu_2303_p2 = (icmp_ln55_35_fu_2297_p2 | icmp_ln55_34_fu_2291_p2);
assign or_ln55_18_fu_2374_p2 = (icmp_ln55_37_fu_2368_p2 | icmp_ln55_36_fu_2362_p2);
assign or_ln55_19_fu_2392_p2 = (icmp_ln55_39_fu_2386_p2 | icmp_ln55_38_fu_2380_p2);
assign or_ln55_1_fu_1472_p2 = (icmp_ln55_3_fu_1466_p2 | icmp_ln55_2_fu_1460_p2);
assign or_ln55_20_fu_2482_p2 = (icmp_ln55_41_fu_2476_p2 | icmp_ln55_40_fu_2470_p2);
assign or_ln55_21_fu_2500_p2 = (icmp_ln55_43_fu_2494_p2 | icmp_ln55_42_fu_2488_p2);
assign or_ln55_22_fu_2581_p2 = (icmp_ln55_45_fu_2575_p2 | icmp_ln55_44_fu_2569_p2);
assign or_ln55_23_fu_2599_p2 = (icmp_ln55_47_fu_2593_p2 | icmp_ln55_46_fu_2587_p2);
assign or_ln55_24_fu_2689_p2 = (icmp_ln55_49_fu_2683_p2 | icmp_ln55_48_fu_2677_p2);
assign or_ln55_25_fu_2707_p2 = (icmp_ln55_51_fu_2701_p2 | icmp_ln55_50_fu_2695_p2);
assign or_ln55_26_fu_2778_p2 = (icmp_ln55_53_fu_2772_p2 | icmp_ln55_52_fu_2766_p2);
assign or_ln55_27_fu_2796_p2 = (icmp_ln55_55_fu_2790_p2 | icmp_ln55_54_fu_2784_p2);
assign or_ln55_28_fu_2867_p2 = (icmp_ln55_57_fu_2861_p2 | icmp_ln55_56_fu_2855_p2);
assign or_ln55_29_fu_2885_p2 = (icmp_ln55_59_fu_2879_p2 | icmp_ln55_58_fu_2873_p2);
assign or_ln55_2_fu_1553_p2 = (icmp_ln55_5_fu_1547_p2 | icmp_ln55_4_fu_1541_p2);
assign or_ln55_30_fu_2986_p2 = (icmp_ln55_61_fu_2980_p2 | icmp_ln55_60_fu_2974_p2);
assign or_ln55_31_fu_3004_p2 = (icmp_ln55_63_fu_2998_p2 | icmp_ln55_62_fu_2992_p2);
assign or_ln55_3_fu_1571_p2 = (icmp_ln55_7_fu_1565_p2 | icmp_ln55_6_fu_1559_p2);
assign or_ln55_4_fu_1652_p2 = (icmp_ln55_9_fu_1646_p2 | icmp_ln55_8_fu_1640_p2);
assign or_ln55_5_fu_1670_p2 = (icmp_ln55_11_fu_1664_p2 | icmp_ln55_10_fu_1658_p2);
assign or_ln55_6_fu_1751_p2 = (icmp_ln55_13_fu_1745_p2 | icmp_ln55_12_fu_1739_p2);
assign or_ln55_7_fu_1769_p2 = (icmp_ln55_15_fu_1763_p2 | icmp_ln55_14_fu_1757_p2);
assign or_ln55_8_fu_1888_p2 = (icmp_ln55_17_fu_1882_p2 | icmp_ln55_16_fu_1876_p2);
assign or_ln55_9_fu_1906_p2 = (icmp_ln55_19_fu_1900_p2 | icmp_ln55_18_fu_1894_p2);
assign or_ln55_fu_1454_p2 = (icmp_ln55_fu_1442_p2 | icmp_ln55_1_fu_1448_p2);
assign shl_ln2_fu_769_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_10_fu_1290_p3 = {{add_ln53_10_reg_3205}, {5'd0}};
assign shl_ln54_11_fu_1308_p3 = {{add_ln53_11_reg_3216}, {5'd0}};
assign shl_ln54_12_fu_1331_p3 = {{add_ln53_12_reg_3227}, {5'd0}};
assign shl_ln54_13_fu_1349_p3 = {{add_ln53_13_reg_3238}, {5'd0}};
assign shl_ln54_14_fu_1375_p3 = {{trunc_ln54_fu_1372_p1}, {5'd0}};
assign shl_ln54_1_fu_1037_p3 = {{add_ln53_reg_3155}, {5'd0}};
assign shl_ln54_2_fu_1055_p3 = {{add_ln53_1_reg_3161}, {5'd0}};
assign shl_ln54_3_fu_1111_p3 = {{add_ln53_2_reg_3294}, {5'd0}};
assign shl_ln54_4_fu_1129_p3 = {{add_ln53_3_reg_3305}, {5'd0}};
assign shl_ln54_5_fu_1162_p3 = {{add_ln53_4_reg_3396}, {5'd0}};
assign shl_ln54_6_fu_1180_p3 = {{add_ln53_5_reg_3402}, {5'd0}};
assign shl_ln54_7_fu_1208_p3 = {{add_ln53_6_reg_3167}, {5'd0}};
assign shl_ln54_8_fu_1226_p3 = {{add_ln53_7_reg_3438}, {5'd0}};
assign shl_ln54_9_fu_1249_p3 = {{add_ln53_8_reg_3183}, {5'd0}};
assign shl_ln54_s_fu_1267_p3 = {{add_ln53_9_reg_3194}, {5'd0}};
assign tmp_199_fu_1411_p4 = {{bitcast_ln55_fu_1407_p1[62:52]}};
assign tmp_200_fu_1428_p4 = {{bitcast_ln55_1_fu_1425_p1[62:52]}};
assign tmp_202_fu_1510_p4 = {{bitcast_ln55_2_fu_1506_p1[62:52]}};
assign tmp_203_fu_1527_p4 = {{bitcast_ln55_3_fu_1524_p1[62:52]}};
assign tmp_205_fu_1609_p4 = {{bitcast_ln55_4_fu_1605_p1[62:52]}};
assign tmp_206_fu_1626_p4 = {{bitcast_ln55_5_fu_1623_p1[62:52]}};
assign tmp_208_fu_1708_p4 = {{bitcast_ln55_6_fu_1704_p1[62:52]}};
assign tmp_209_fu_1725_p4 = {{bitcast_ln55_7_fu_1722_p1[62:52]}};
assign tmp_211_fu_1845_p4 = {{bitcast_ln55_8_fu_1841_p1[62:52]}};
assign tmp_212_fu_1862_p4 = {{bitcast_ln55_9_fu_1859_p1[62:52]}};
assign tmp_214_fu_1935_p4 = {{bitcast_ln55_10_fu_1931_p1[62:52]}};
assign tmp_215_fu_1952_p4 = {{bitcast_ln55_11_fu_1949_p1[62:52]}};
assign tmp_217_fu_2044_p4 = {{bitcast_ln55_12_fu_2040_p1[62:52]}};
assign tmp_218_fu_2061_p4 = {{bitcast_ln55_13_fu_2058_p1[62:52]}};
assign tmp_220_fu_817_p3 = {{t_1}, {lshr_ln8_9_fu_807_p4}};
assign tmp_221_fu_2134_p4 = {{bitcast_ln55_14_fu_2130_p1[62:52]}};
assign tmp_222_fu_2151_p4 = {{bitcast_ln55_15_fu_2148_p1[62:52]}};
assign tmp_224_fu_836_p3 = {{t_1}, {add_ln8_fu_830_p2}};
assign tmp_225_fu_2242_p4 = {{bitcast_ln55_16_fu_2239_p1[62:52]}};
assign tmp_226_fu_2259_p4 = {{bitcast_ln55_17_fu_2256_p1[62:52]}};
assign tmp_228_fu_865_p3 = {{t_1}, {lshr_ln8_s_fu_855_p4}};
assign tmp_229_fu_2331_p4 = {{bitcast_ln55_18_fu_2327_p1[62:52]}};
assign tmp_230_fu_2348_p4 = {{bitcast_ln55_19_fu_2345_p1[62:52]}};
assign tmp_232_fu_894_p3 = {{t_1}, {lshr_ln8_1_fu_884_p4}};
assign tmp_233_fu_2439_p4 = {{bitcast_ln55_20_fu_2436_p1[62:52]}};
assign tmp_234_fu_2456_p4 = {{bitcast_ln55_21_fu_2453_p1[62:52]}};
assign tmp_236_fu_923_p3 = {{t_1}, {lshr_ln8_2_fu_913_p4}};
assign tmp_237_fu_2538_p4 = {{bitcast_ln55_22_fu_2534_p1[62:52]}};
assign tmp_238_fu_2555_p4 = {{bitcast_ln55_23_fu_2552_p1[62:52]}};
assign tmp_240_fu_952_p3 = {{t_1}, {lshr_ln8_3_fu_942_p4}};
assign tmp_241_fu_2646_p4 = {{bitcast_ln55_24_fu_2643_p1[62:52]}};
assign tmp_242_fu_2663_p4 = {{bitcast_ln55_25_fu_2660_p1[62:52]}};
assign tmp_244_fu_981_p3 = {{t_1}, {lshr_ln8_4_fu_971_p4}};
assign tmp_245_fu_2735_p4 = {{bitcast_ln55_26_fu_2731_p1[62:52]}};
assign tmp_246_fu_2752_p4 = {{bitcast_ln55_27_fu_2749_p1[62:52]}};
assign tmp_248_fu_1010_p3 = {{t_1}, {lshr_ln8_5_fu_1000_p4}};
assign tmp_249_fu_2824_p4 = {{bitcast_ln55_28_fu_2821_p1[62:52]}};
assign tmp_250_fu_2841_p4 = {{bitcast_ln55_29_fu_2838_p1[62:52]}};
assign tmp_252_fu_2943_p4 = {{bitcast_ln55_30_fu_2939_p1[62:52]}};
assign tmp_253_fu_2960_p4 = {{bitcast_ln55_31_fu_2957_p1[62:52]}};
assign tmp_s_fu_750_p3 = {{t_1}, {lshr_ln8_8_fu_740_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_1372_p1 = add_ln53_14_reg_3249[5:0];
assign trunc_ln55_10_fu_1945_p1 = bitcast_ln55_10_fu_1931_p1[51:0];
assign trunc_ln55_11_fu_1962_p1 = bitcast_ln55_11_fu_1949_p1[51:0];
assign trunc_ln55_12_fu_2054_p1 = bitcast_ln55_12_fu_2040_p1[51:0];
assign trunc_ln55_13_fu_2071_p1 = bitcast_ln55_13_fu_2058_p1[51:0];
assign trunc_ln55_14_fu_2144_p1 = bitcast_ln55_14_fu_2130_p1[51:0];
assign trunc_ln55_15_fu_2161_p1 = bitcast_ln55_15_fu_2148_p1[51:0];
assign trunc_ln55_16_fu_2252_p1 = bitcast_ln55_16_fu_2239_p1[51:0];
assign trunc_ln55_17_fu_2269_p1 = bitcast_ln55_17_fu_2256_p1[51:0];
assign trunc_ln55_18_fu_2341_p1 = bitcast_ln55_18_fu_2327_p1[51:0];
assign trunc_ln55_19_fu_2358_p1 = bitcast_ln55_19_fu_2345_p1[51:0];
assign trunc_ln55_1_fu_1438_p1 = bitcast_ln55_1_fu_1425_p1[51:0];
assign trunc_ln55_20_fu_2449_p1 = bitcast_ln55_20_fu_2436_p1[51:0];
assign trunc_ln55_21_fu_2466_p1 = bitcast_ln55_21_fu_2453_p1[51:0];
assign trunc_ln55_22_fu_2548_p1 = bitcast_ln55_22_fu_2534_p1[51:0];
assign trunc_ln55_23_fu_2565_p1 = bitcast_ln55_23_fu_2552_p1[51:0];
assign trunc_ln55_24_fu_2656_p1 = bitcast_ln55_24_fu_2643_p1[51:0];
assign trunc_ln55_25_fu_2673_p1 = bitcast_ln55_25_fu_2660_p1[51:0];
assign trunc_ln55_26_fu_2745_p1 = bitcast_ln55_26_fu_2731_p1[51:0];
assign trunc_ln55_27_fu_2762_p1 = bitcast_ln55_27_fu_2749_p1[51:0];
assign trunc_ln55_28_fu_2834_p1 = bitcast_ln55_28_fu_2821_p1[51:0];
assign trunc_ln55_29_fu_2851_p1 = bitcast_ln55_29_fu_2838_p1[51:0];
assign trunc_ln55_2_fu_1520_p1 = bitcast_ln55_2_fu_1506_p1[51:0];
assign trunc_ln55_30_fu_2953_p1 = bitcast_ln55_30_fu_2939_p1[51:0];
assign trunc_ln55_31_fu_2970_p1 = bitcast_ln55_31_fu_2957_p1[51:0];
assign trunc_ln55_3_fu_1537_p1 = bitcast_ln55_3_fu_1524_p1[51:0];
assign trunc_ln55_4_fu_1619_p1 = bitcast_ln55_4_fu_1605_p1[51:0];
assign trunc_ln55_5_fu_1636_p1 = bitcast_ln55_5_fu_1623_p1[51:0];
assign trunc_ln55_6_fu_1718_p1 = bitcast_ln55_6_fu_1704_p1[51:0];
assign trunc_ln55_7_fu_1735_p1 = bitcast_ln55_7_fu_1722_p1[51:0];
assign trunc_ln55_8_fu_1855_p1 = bitcast_ln55_8_fu_1841_p1[51:0];
assign trunc_ln55_9_fu_1872_p1 = bitcast_ln55_9_fu_1859_p1[51:0];
assign trunc_ln55_fu_1421_p1 = bitcast_ln55_fu_1407_p1[51:0];
assign zext_ln17_fu_736_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_714_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1279_p1 = add_ln54_10_fu_1274_p2;
assign zext_ln54_11_fu_1302_p1 = add_ln54_11_fu_1297_p2;
assign zext_ln54_12_fu_1320_p1 = add_ln54_12_fu_1315_p2;
assign zext_ln54_13_fu_1343_p1 = add_ln54_13_fu_1338_p2;
assign zext_ln54_14_fu_1361_p1 = add_ln54_14_fu_1356_p2;
assign zext_ln54_15_fu_1388_p1 = add_ln54_15_fu_1383_p2;
assign zext_ln54_16_fu_758_p1 = tmp_s_fu_750_p3;
assign zext_ln54_17_fu_825_p1 = tmp_220_fu_817_p3;
assign zext_ln54_18_fu_844_p1 = tmp_224_fu_836_p3;
assign zext_ln54_19_fu_873_p1 = tmp_228_fu_865_p3;
assign zext_ln54_1_fu_1049_p1 = add_ln54_1_fu_1044_p2;
assign zext_ln54_20_fu_902_p1 = tmp_232_fu_894_p3;
assign zext_ln54_21_fu_931_p1 = tmp_236_fu_923_p3;
assign zext_ln54_22_fu_960_p1 = tmp_240_fu_952_p3;
assign zext_ln54_23_fu_989_p1 = tmp_244_fu_981_p3;
assign zext_ln54_24_fu_1018_p1 = tmp_248_fu_1010_p3;
assign zext_ln54_25_fu_1092_p1 = lshr_ln9_3_fu_1083_p4;
assign zext_ln54_26_fu_1101_p1 = add_ln54_16_fu_1096_p2;
assign zext_ln54_2_fu_1067_p1 = add_ln54_2_fu_1062_p2;
assign zext_ln54_3_fu_1123_p1 = add_ln54_3_fu_1118_p2;
assign zext_ln54_4_fu_1141_p1 = add_ln54_4_fu_1136_p2;
assign zext_ln54_5_fu_1174_p1 = add_ln54_5_fu_1169_p2;
assign zext_ln54_6_fu_1192_p1 = add_ln54_6_fu_1187_p2;
assign zext_ln54_7_fu_1220_p1 = add_ln54_7_fu_1215_p2;
assign zext_ln54_8_fu_1238_p1 = add_ln54_8_fu_1233_p2;
assign zext_ln54_9_fu_1261_p1 = add_ln54_9_fu_1256_p2;
assign zext_ln54_fu_783_p1 = add_ln54_fu_777_p2;
assign zext_ln55_10_fu_2617_p1 = add_ln53_9_reg_3194_pp0_iter1_reg;
assign zext_ln55_11_fu_2633_p1 = add_ln53_10_reg_3205_pp0_iter1_reg;
assign zext_ln55_12_fu_2909_p1 = add_ln53_11_reg_3216_pp0_iter1_reg;
assign zext_ln55_13_fu_2918_p1 = add_ln53_12_reg_3227_pp0_iter1_reg;
assign zext_ln55_14_fu_2928_p1 = add_ln53_13_reg_3238_pp0_iter1_reg;
assign zext_ln55_15_fu_3028_p1 = trunc_ln54_reg_3569_pp0_iter1_reg;
assign zext_ln55_1_fu_1804_p1 = add_ln53_reg_3155;
assign zext_ln55_2_fu_1814_p1 = add_ln53_1_reg_3161;
assign zext_ln55_3_fu_1831_p1 = add_ln53_2_reg_3294;
assign zext_ln55_4_fu_2014_p1 = add_ln53_3_reg_3305;
assign zext_ln55_5_fu_2030_p1 = add_ln53_4_reg_3396;
assign zext_ln55_6_fu_2213_p1 = add_ln53_5_reg_3402;
assign zext_ln55_7_fu_2229_p1 = add_ln53_6_reg_3167;
assign zext_ln55_8_fu_2410_p1 = add_ln53_7_reg_3438;
assign zext_ln55_9_fu_2426_p1 = add_ln53_8_reg_3183;
assign zext_ln55_fu_1794_p1 = s_reg_3099;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_3080[10:7] <= 4'b0000;
end
endmodule 