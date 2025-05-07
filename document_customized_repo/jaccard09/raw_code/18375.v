module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_195,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_2,min_s_34_out,min_s_34_out_ap_vld,grp_fu_215_p_din0,grp_fu_215_p_din1,grp_fu_215_p_opcode,grp_fu_215_p_dout0,grp_fu_215_p_ce,grp_fu_390_p_din0,grp_fu_390_p_din1,grp_fu_390_p_opcode,grp_fu_390_p_dout0,grp_fu_390_p_ce); 
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
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [11:0] zext_ln52_2;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_215_p_din0;
output  [63:0] grp_fu_215_p_din1;
output  [1:0] grp_fu_215_p_opcode;
input  [63:0] grp_fu_215_p_dout0;
output   grp_fu_215_p_ce;
output  [63:0] grp_fu_390_p_din0;
output  [63:0] grp_fu_390_p_din1;
output  [4:0] grp_fu_390_p_opcode;
input  [0:0] grp_fu_390_p_dout0;
output   grp_fu_390_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_reg_3066;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_472;
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
reg   [63:0] reg_477;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_481;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_486;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_491;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_496;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_501;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_506;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_511;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_516_p1;
reg   [11:0] zext_ln52_cast_reg_2940;
reg   [5:0] s_reg_2959;
wire   [3:0] lshr_ln8_s_fu_542_p4;
reg   [3:0] lshr_ln8_s_reg_2973;
wire   [5:0] add_ln53_fu_586_p2;
reg   [5:0] add_ln53_reg_2999;
wire   [5:0] add_ln53_1_fu_592_p2;
reg   [5:0] add_ln53_1_reg_3005;
wire   [5:0] add_ln53_2_fu_598_p2;
reg   [5:0] add_ln53_2_reg_3011;
wire   [5:0] add_ln53_4_fu_646_p2;
reg   [5:0] add_ln53_4_reg_3027;
wire   [5:0] add_ln53_5_fu_675_p2;
reg   [5:0] add_ln53_5_reg_3038;
wire   [5:0] add_ln53_6_fu_704_p2;
reg   [5:0] add_ln53_6_reg_3049;
wire   [6:0] add_ln53_14_fu_733_p2;
reg   [6:0] add_ln53_14_reg_3060;
reg   [0:0] tmp_reg_3066_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3070;
reg   [63:0] llike_2_load_reg_3075;
reg   [63:0] llike_3_load_reg_3085;
reg   [63:0] llike_load_reg_3095;
wire   [5:0] add_ln53_3_fu_781_p2;
reg   [5:0] add_ln53_3_reg_3100;
reg   [63:0] llike_1_load_16_reg_3106;
reg   [63:0] llike_2_load_16_reg_3111;
reg   [63:0] llike_3_load_16_reg_3116;
reg   [63:0] llike_load_16_reg_3121;
wire   [5:0] add_ln53_8_fu_803_p2;
reg   [5:0] add_ln53_8_reg_3131;
wire   [5:0] add_ln53_9_fu_830_p2;
reg   [5:0] add_ln53_9_reg_3142;
wire   [5:0] add_ln53_10_fu_857_p2;
reg   [5:0] add_ln53_10_reg_3153;
wire   [5:0] add_ln53_12_fu_901_p2;
reg   [5:0] add_ln53_12_reg_3169;
reg   [5:0] add_ln53_12_reg_3169_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_928_p2;
reg   [5:0] add_ln53_13_reg_3180;
reg   [5:0] add_ln53_13_reg_3180_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_fu_978_p1;
reg   [63:0] llike_1_load_17_reg_3211;
reg   [63:0] llike_2_load_17_reg_3216;
reg   [63:0] llike_3_load_17_reg_3221;
reg   [63:0] llike_load_17_reg_3226;
reg   [63:0] llike_1_load_18_reg_3231;
reg   [63:0] llike_2_load_18_reg_3236;
reg   [63:0] llike_3_load_18_reg_3241;
reg   [63:0] llike_load_18_reg_3246;
wire   [63:0] bitcast_ln54_1_fu_1017_p1;
wire   [5:0] add_ln53_7_fu_1056_p2;
reg   [5:0] add_ln53_7_reg_3266;
wire   [63:0] bitcast_ln54_2_fu_1061_p1;
wire   [63:0] bitcast_ln54_3_fu_1100_p1;
reg   [63:0] transition_load_71_reg_3292;
wire   [5:0] add_ln53_11_fu_1139_p2;
reg   [5:0] add_ln53_11_reg_3307;
reg   [5:0] add_ln53_11_reg_3307_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_4_fu_1144_p1;
reg   [63:0] transition_load_73_reg_3318;
wire   [63:0] bitcast_ln54_5_fu_1183_p1;
reg   [63:0] transition_load_75_reg_3338;
wire   [63:0] bitcast_ln54_6_fu_1222_p1;
reg   [63:0] transition_load_77_reg_3358;
wire   [5:0] trunc_ln54_fu_1227_p1;
reg   [5:0] trunc_ln54_reg_3363;
reg   [5:0] trunc_ln54_reg_3363_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_7_fu_1248_p1;
reg   [63:0] min_p_127_reg_3378;
wire   [63:0] bitcast_ln54_8_fu_1257_p1;
wire   [0:0] and_ln55_1_fu_1338_p2;
reg   [0:0] and_ln55_1_reg_3390;
wire   [63:0] bitcast_ln54_9_fu_1344_p1;
wire   [63:0] min_p_129_fu_1349_p3;
reg   [63:0] min_p_129_reg_3401;
wire   [63:0] bitcast_ln54_10_fu_1356_p1;
wire   [0:0] and_ln55_3_fu_1437_p2;
reg   [0:0] and_ln55_3_reg_3413;
wire   [63:0] bitcast_ln54_11_fu_1443_p1;
wire   [63:0] min_p_131_fu_1448_p3;
reg   [63:0] min_p_131_reg_3424;
wire   [63:0] bitcast_ln54_12_fu_1455_p1;
wire   [0:0] and_ln55_5_fu_1536_p2;
reg   [0:0] and_ln55_5_reg_3436;
wire   [63:0] bitcast_ln54_13_fu_1542_p1;
wire   [63:0] min_p_133_fu_1547_p3;
reg   [63:0] min_p_133_reg_3447;
wire   [63:0] bitcast_ln54_14_fu_1554_p1;
wire   [0:0] and_ln55_7_fu_1635_p2;
reg   [0:0] and_ln55_7_reg_3459;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_70_reg_3465;
wire   [63:0] bitcast_ln54_15_fu_1641_p1;
wire   [63:0] min_p_135_fu_1679_p3;
reg   [63:0] min_p_135_reg_3477;
wire   [7:0] min_s_7_fu_1689_p3;
reg   [7:0] min_s_7_reg_3484;
wire   [0:0] and_ln55_9_fu_1773_p2;
reg   [0:0] and_ln55_9_reg_3489;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_72_reg_3495;
wire   [63:0] min_p_137_fu_1779_p3;
reg   [63:0] min_p_137_reg_3502;
wire   [0:0] and_ln55_11_fu_1863_p2;
reg   [0:0] and_ln55_11_reg_3509;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_74_reg_3515;
wire   [63:0] min_p_139_fu_1878_p3;
reg   [63:0] min_p_139_reg_3522;
wire   [7:0] min_s_9_fu_1888_p3;
reg   [7:0] min_s_9_reg_3529;
wire   [0:0] and_ln55_13_fu_1972_p2;
reg   [0:0] and_ln55_13_reg_3534;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_76_reg_3540;
wire   [63:0] min_p_141_fu_1978_p3;
reg   [63:0] min_p_141_reg_3547;
wire   [0:0] and_ln55_15_fu_2062_p2;
reg   [0:0] and_ln55_15_reg_3554;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_143_fu_2077_p3;
reg   [63:0] min_p_143_reg_3560;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_2087_p3;
reg   [7:0] min_s_11_reg_3567;
wire   [0:0] and_ln55_17_fu_2170_p2;
reg   [0:0] and_ln55_17_reg_3572;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_145_fu_2176_p3;
reg   [63:0] min_p_145_reg_3578;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_2259_p2;
reg   [0:0] and_ln55_19_reg_3585;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_147_fu_2274_p3;
reg   [63:0] min_p_147_reg_3591;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_2284_p3;
reg   [7:0] min_s_13_reg_3598;
wire   [0:0] and_ln55_21_fu_2367_p2;
reg   [0:0] and_ln55_21_reg_3603;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_149_fu_2373_p3;
reg   [63:0] min_p_149_reg_3609;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_2466_p2;
reg   [0:0] and_ln55_23_reg_3616;
wire   [63:0] min_p_151_fu_2481_p3;
reg   [63:0] min_p_151_reg_3622;
wire   [7:0] min_s_15_fu_2491_p3;
reg   [7:0] min_s_15_reg_3629;
wire   [0:0] and_ln55_25_fu_2574_p2;
reg   [0:0] and_ln55_25_reg_3634;
wire   [63:0] min_p_153_fu_2580_p3;
reg   [63:0] min_p_153_reg_3640;
wire   [0:0] and_ln55_27_fu_2663_p2;
reg   [0:0] and_ln55_27_reg_3647;
wire   [63:0] min_p_155_fu_2669_p3;
reg   [63:0] min_p_155_reg_3653;
wire   [0:0] and_ln55_29_fu_2752_p2;
reg   [0:0] and_ln55_29_reg_3660;
wire   [63:0] min_p_157_fu_2758_p3;
reg   [63:0] min_p_157_reg_3666;
wire   [7:0] min_s_18_fu_2786_p3;
reg   [7:0] min_s_18_reg_3673;
reg   [0:0] tmp_265_reg_3678;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_560_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_581_p1;
wire   [63:0] zext_ln54_17_fu_622_p1;
wire   [63:0] zext_ln54_18_fu_641_p1;
wire   [63:0] zext_ln54_19_fu_670_p1;
wire   [63:0] zext_ln54_20_fu_699_p1;
wire   [63:0] zext_ln54_21_fu_728_p1;
wire   [63:0] zext_ln54_1_fu_759_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_776_p1;
wire   [63:0] zext_ln54_22_fu_798_p1;
wire   [63:0] zext_ln54_23_fu_825_p1;
wire   [63:0] zext_ln54_24_fu_852_p1;
wire   [63:0] zext_ln54_25_fu_879_p1;
wire   [63:0] zext_ln54_26_fu_896_p1;
wire   [63:0] zext_ln54_27_fu_923_p1;
wire   [63:0] zext_ln54_28_fu_950_p1;
wire   [63:0] zext_ln54_30_fu_973_p1;
wire   [63:0] zext_ln54_3_fu_995_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1012_p1;
wire   [63:0] zext_ln54_5_fu_1034_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1051_p1;
wire   [63:0] zext_ln54_7_fu_1078_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1095_p1;
wire   [63:0] zext_ln54_9_fu_1117_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1134_p1;
wire   [63:0] zext_ln54_11_fu_1161_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_1178_p1;
wire   [63:0] zext_ln54_13_fu_1200_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1217_p1;
wire   [63:0] zext_ln54_15_fu_1243_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_120;
wire   [63:0] min_p_159_fu_2876_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_124;
wire   [7:0] min_s_19_fu_2886_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_128;
wire   [5:0] add_ln53_15_fu_2379_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
reg   [11:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
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
reg   [63:0] grp_fu_464_p0;
reg   [63:0] grp_fu_464_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_468_p0;
reg   [63:0] grp_fu_468_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [11:0] tmp_s_fu_552_p3;
wire   [11:0] shl_ln2_fu_567_p3;
wire   [11:0] add_ln54_fu_575_p2;
wire   [3:0] lshr_ln8_1_fu_604_p4;
wire   [11:0] tmp_215_fu_614_p3;
wire   [3:0] add_ln8_fu_627_p2;
wire   [11:0] tmp_219_fu_633_p3;
wire   [3:0] lshr_ln8_2_fu_652_p4;
wire   [11:0] tmp_223_fu_662_p3;
wire   [3:0] lshr_ln8_3_fu_681_p4;
wire   [11:0] tmp_227_fu_691_p3;
wire   [3:0] lshr_ln8_4_fu_710_p4;
wire   [11:0] tmp_231_fu_720_p3;
wire   [6:0] zext_ln12_fu_538_p1;
wire   [11:0] shl_ln54_1_fu_747_p3;
wire   [11:0] add_ln54_1_fu_754_p2;
wire   [11:0] shl_ln54_2_fu_764_p3;
wire   [11:0] add_ln54_2_fu_771_p2;
wire   [3:0] add_ln8_1_fu_786_p2;
wire   [11:0] tmp_235_fu_791_p3;
wire   [3:0] lshr_ln8_5_fu_808_p4;
wire   [11:0] tmp_239_fu_818_p3;
wire   [3:0] lshr_ln8_6_fu_835_p4;
wire   [11:0] tmp_243_fu_845_p3;
wire   [3:0] lshr_ln8_7_fu_862_p4;
wire   [11:0] tmp_247_fu_872_p3;
wire   [3:0] add_ln8_2_fu_884_p2;
wire   [11:0] tmp_251_fu_889_p3;
wire   [3:0] lshr_ln8_8_fu_906_p4;
wire   [11:0] tmp_255_fu_916_p3;
wire   [3:0] lshr_ln8_9_fu_933_p4;
wire   [11:0] tmp_259_fu_943_p3;
wire   [4:0] lshr_ln9_2_fu_955_p4;
wire   [11:0] zext_ln54_29_fu_964_p1;
wire   [11:0] add_ln54_16_fu_968_p2;
wire   [11:0] shl_ln54_3_fu_983_p3;
wire   [11:0] add_ln54_3_fu_990_p2;
wire   [11:0] shl_ln54_4_fu_1000_p3;
wire   [11:0] add_ln54_4_fu_1007_p2;
wire   [11:0] shl_ln54_5_fu_1022_p3;
wire   [11:0] add_ln54_5_fu_1029_p2;
wire   [11:0] shl_ln54_6_fu_1039_p3;
wire   [11:0] add_ln54_6_fu_1046_p2;
wire   [11:0] shl_ln54_7_fu_1066_p3;
wire   [11:0] add_ln54_7_fu_1073_p2;
wire   [11:0] shl_ln54_8_fu_1083_p3;
wire   [11:0] add_ln54_8_fu_1090_p2;
wire   [11:0] shl_ln54_9_fu_1105_p3;
wire   [11:0] add_ln54_9_fu_1112_p2;
wire   [11:0] shl_ln54_s_fu_1122_p3;
wire   [11:0] add_ln54_10_fu_1129_p2;
wire   [11:0] shl_ln54_10_fu_1149_p3;
wire   [11:0] add_ln54_11_fu_1156_p2;
wire   [11:0] shl_ln54_11_fu_1166_p3;
wire   [11:0] add_ln54_12_fu_1173_p2;
wire   [11:0] shl_ln54_12_fu_1188_p3;
wire   [11:0] add_ln54_13_fu_1195_p2;
wire   [11:0] shl_ln54_13_fu_1205_p3;
wire   [11:0] add_ln54_14_fu_1212_p2;
wire   [11:0] shl_ln54_14_fu_1230_p3;
wire   [11:0] add_ln54_15_fu_1238_p2;
wire   [63:0] bitcast_ln55_fu_1261_p1;
wire   [63:0] bitcast_ln55_1_fu_1279_p1;
wire   [10:0] tmp_206_fu_1265_p4;
wire   [51:0] trunc_ln55_fu_1275_p1;
wire   [0:0] icmp_ln55_1_fu_1302_p2;
wire   [0:0] icmp_ln55_fu_1296_p2;
wire   [10:0] tmp_207_fu_1282_p4;
wire   [51:0] trunc_ln55_1_fu_1292_p1;
wire   [0:0] icmp_ln55_3_fu_1320_p2;
wire   [0:0] icmp_ln55_2_fu_1314_p2;
wire   [0:0] or_ln55_fu_1308_p2;
wire   [0:0] and_ln55_fu_1332_p2;
wire   [0:0] or_ln55_1_fu_1326_p2;
wire   [63:0] bitcast_ln55_2_fu_1360_p1;
wire   [63:0] bitcast_ln55_3_fu_1378_p1;
wire   [10:0] tmp_209_fu_1364_p4;
wire   [51:0] trunc_ln55_2_fu_1374_p1;
wire   [0:0] icmp_ln55_5_fu_1401_p2;
wire   [0:0] icmp_ln55_4_fu_1395_p2;
wire   [10:0] tmp_210_fu_1381_p4;
wire   [51:0] trunc_ln55_3_fu_1391_p1;
wire   [0:0] icmp_ln55_7_fu_1419_p2;
wire   [0:0] icmp_ln55_6_fu_1413_p2;
wire   [0:0] or_ln55_3_fu_1425_p2;
wire   [0:0] or_ln55_2_fu_1407_p2;
wire   [0:0] and_ln55_2_fu_1431_p2;
wire   [63:0] bitcast_ln55_4_fu_1459_p1;
wire   [63:0] bitcast_ln55_5_fu_1477_p1;
wire   [10:0] tmp_212_fu_1463_p4;
wire   [51:0] trunc_ln55_4_fu_1473_p1;
wire   [0:0] icmp_ln55_9_fu_1500_p2;
wire   [0:0] icmp_ln55_8_fu_1494_p2;
wire   [10:0] tmp_213_fu_1480_p4;
wire   [51:0] trunc_ln55_5_fu_1490_p1;
wire   [0:0] icmp_ln55_11_fu_1518_p2;
wire   [0:0] icmp_ln55_10_fu_1512_p2;
wire   [0:0] or_ln55_5_fu_1524_p2;
wire   [0:0] or_ln55_4_fu_1506_p2;
wire   [0:0] and_ln55_4_fu_1530_p2;
wire   [63:0] bitcast_ln55_6_fu_1558_p1;
wire   [63:0] bitcast_ln55_7_fu_1576_p1;
wire   [10:0] tmp_216_fu_1562_p4;
wire   [51:0] trunc_ln55_6_fu_1572_p1;
wire   [0:0] icmp_ln55_13_fu_1599_p2;
wire   [0:0] icmp_ln55_12_fu_1593_p2;
wire   [10:0] tmp_217_fu_1579_p4;
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
wire   [10:0] tmp_220_fu_1700_p4;
wire   [51:0] trunc_ln55_8_fu_1710_p1;
wire   [0:0] icmp_ln55_17_fu_1737_p2;
wire   [0:0] icmp_ln55_16_fu_1731_p2;
wire   [10:0] tmp_221_fu_1717_p4;
wire   [51:0] trunc_ln55_9_fu_1727_p1;
wire   [0:0] icmp_ln55_19_fu_1755_p2;
wire   [0:0] icmp_ln55_18_fu_1749_p2;
wire   [0:0] or_ln55_9_fu_1761_p2;
wire   [0:0] or_ln55_8_fu_1743_p2;
wire   [0:0] and_ln55_8_fu_1767_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_1786_p1;
wire   [63:0] bitcast_ln55_11_fu_1804_p1;
wire   [10:0] tmp_224_fu_1790_p4;
wire   [51:0] trunc_ln55_10_fu_1800_p1;
wire   [0:0] icmp_ln55_21_fu_1827_p2;
wire   [0:0] icmp_ln55_20_fu_1821_p2;
wire   [10:0] tmp_225_fu_1807_p4;
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
wire   [10:0] tmp_228_fu_1899_p4;
wire   [51:0] trunc_ln55_12_fu_1909_p1;
wire   [0:0] icmp_ln55_25_fu_1936_p2;
wire   [0:0] icmp_ln55_24_fu_1930_p2;
wire   [10:0] tmp_229_fu_1916_p4;
wire   [51:0] trunc_ln55_13_fu_1926_p1;
wire   [0:0] icmp_ln55_27_fu_1954_p2;
wire   [0:0] icmp_ln55_26_fu_1948_p2;
wire   [0:0] or_ln55_13_fu_1960_p2;
wire   [0:0] or_ln55_12_fu_1942_p2;
wire   [0:0] and_ln55_12_fu_1966_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_1985_p1;
wire   [63:0] bitcast_ln55_15_fu_2003_p1;
wire   [10:0] tmp_232_fu_1989_p4;
wire   [51:0] trunc_ln55_14_fu_1999_p1;
wire   [0:0] icmp_ln55_29_fu_2026_p2;
wire   [0:0] icmp_ln55_28_fu_2020_p2;
wire   [10:0] tmp_233_fu_2006_p4;
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
wire   [10:0] tmp_236_fu_2097_p4;
wire   [51:0] trunc_ln55_16_fu_2107_p1;
wire   [0:0] icmp_ln55_33_fu_2134_p2;
wire   [0:0] icmp_ln55_32_fu_2128_p2;
wire   [10:0] tmp_237_fu_2114_p4;
wire   [51:0] trunc_ln55_17_fu_2124_p1;
wire   [0:0] icmp_ln55_35_fu_2152_p2;
wire   [0:0] icmp_ln55_34_fu_2146_p2;
wire   [0:0] or_ln55_17_fu_2158_p2;
wire   [0:0] or_ln55_16_fu_2140_p2;
wire   [0:0] and_ln55_16_fu_2164_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_2182_p1;
wire   [63:0] bitcast_ln55_19_fu_2200_p1;
wire   [10:0] tmp_240_fu_2186_p4;
wire   [51:0] trunc_ln55_18_fu_2196_p1;
wire   [0:0] icmp_ln55_37_fu_2223_p2;
wire   [0:0] icmp_ln55_36_fu_2217_p2;
wire   [10:0] tmp_241_fu_2203_p4;
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
wire   [10:0] tmp_244_fu_2294_p4;
wire   [51:0] trunc_ln55_20_fu_2304_p1;
wire   [0:0] icmp_ln55_41_fu_2331_p2;
wire   [0:0] icmp_ln55_40_fu_2325_p2;
wire   [10:0] tmp_245_fu_2311_p4;
wire   [51:0] trunc_ln55_21_fu_2321_p1;
wire   [0:0] icmp_ln55_43_fu_2349_p2;
wire   [0:0] icmp_ln55_42_fu_2343_p2;
wire   [0:0] or_ln55_21_fu_2355_p2;
wire   [0:0] or_ln55_20_fu_2337_p2;
wire   [0:0] and_ln55_20_fu_2361_p2;
wire   [63:0] bitcast_ln55_22_fu_2389_p1;
wire   [63:0] bitcast_ln55_23_fu_2407_p1;
wire   [10:0] tmp_248_fu_2393_p4;
wire   [51:0] trunc_ln55_22_fu_2403_p1;
wire   [0:0] icmp_ln55_45_fu_2430_p2;
wire   [0:0] icmp_ln55_44_fu_2424_p2;
wire   [10:0] tmp_249_fu_2410_p4;
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
wire   [10:0] tmp_252_fu_2501_p4;
wire   [51:0] trunc_ln55_24_fu_2511_p1;
wire   [0:0] icmp_ln55_49_fu_2538_p2;
wire   [0:0] icmp_ln55_48_fu_2532_p2;
wire   [10:0] tmp_253_fu_2518_p4;
wire   [51:0] trunc_ln55_25_fu_2528_p1;
wire   [0:0] icmp_ln55_51_fu_2556_p2;
wire   [0:0] icmp_ln55_50_fu_2550_p2;
wire   [0:0] or_ln55_25_fu_2562_p2;
wire   [0:0] or_ln55_24_fu_2544_p2;
wire   [0:0] and_ln55_24_fu_2568_p2;
wire   [63:0] bitcast_ln55_26_fu_2586_p1;
wire   [63:0] bitcast_ln55_27_fu_2604_p1;
wire   [10:0] tmp_256_fu_2590_p4;
wire   [51:0] trunc_ln55_26_fu_2600_p1;
wire   [0:0] icmp_ln55_53_fu_2627_p2;
wire   [0:0] icmp_ln55_52_fu_2621_p2;
wire   [10:0] tmp_257_fu_2607_p4;
wire   [51:0] trunc_ln55_27_fu_2617_p1;
wire   [0:0] icmp_ln55_55_fu_2645_p2;
wire   [0:0] icmp_ln55_54_fu_2639_p2;
wire   [0:0] or_ln55_27_fu_2651_p2;
wire   [0:0] or_ln55_26_fu_2633_p2;
wire   [0:0] and_ln55_26_fu_2657_p2;
wire   [63:0] bitcast_ln55_28_fu_2676_p1;
wire   [63:0] bitcast_ln55_29_fu_2693_p1;
wire   [10:0] tmp_260_fu_2679_p4;
wire   [51:0] trunc_ln55_28_fu_2689_p1;
wire   [0:0] icmp_ln55_57_fu_2716_p2;
wire   [0:0] icmp_ln55_56_fu_2710_p2;
wire   [10:0] tmp_261_fu_2696_p4;
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
wire   [10:0] tmp_263_fu_2798_p4;
wire   [51:0] trunc_ln55_30_fu_2808_p1;
wire   [0:0] icmp_ln55_61_fu_2835_p2;
wire   [0:0] icmp_ln55_60_fu_2829_p2;
wire   [10:0] tmp_264_fu_2815_p4;
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
#0 min_p_fu_120 = 64'd0;
#0 min_s_fu_124 = 8'd0;
#0 min_s_1_fu_128 = 6'd0;
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
        min_p_fu_120 <= min_p_195;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_3066_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_120 <= min_p_159_fu_2876_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_128 <= 6'd1;
    end else if (((tmp_reg_3066 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_128 <= add_ln53_15_fu_2379_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_124 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_3066_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_124 <= min_s_19_fu_2886_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_472 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_472 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_481 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_481 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_486 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_486 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_10_reg_3153 <= add_ln53_10_fu_857_p2;
        add_ln53_12_reg_3169 <= add_ln53_12_fu_901_p2;
        add_ln53_12_reg_3169_pp0_iter1_reg <= add_ln53_12_reg_3169;
        add_ln53_13_reg_3180 <= add_ln53_13_fu_928_p2;
        add_ln53_13_reg_3180_pp0_iter1_reg <= add_ln53_13_reg_3180;
        add_ln53_3_reg_3100 <= add_ln53_3_fu_781_p2;
        add_ln53_8_reg_3131 <= add_ln53_8_fu_803_p2;
        add_ln53_9_reg_3142 <= add_ln53_9_fu_830_p2;
        min_p_151_reg_3622 <= min_p_151_fu_2481_p3;
        min_s_15_reg_3629 <= min_s_15_fu_2491_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln53_11_reg_3307 <= add_ln53_11_fu_1139_p2;
        add_ln53_11_reg_3307_pp0_iter1_reg <= add_ln53_11_reg_3307;
        min_p_155_reg_3653 <= min_p_155_fu_2669_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_14_reg_3060 <= add_ln53_14_fu_733_p2;
        add_ln53_1_reg_3005 <= add_ln53_1_fu_592_p2;
        add_ln53_2_reg_3011 <= add_ln53_2_fu_598_p2;
        add_ln53_4_reg_3027 <= add_ln53_4_fu_646_p2;
        add_ln53_5_reg_3038 <= add_ln53_5_fu_675_p2;
        add_ln53_6_reg_3049 <= add_ln53_6_fu_704_p2;
        add_ln53_reg_2999 <= add_ln53_fu_586_p2;
        and_ln55_23_reg_3616 <= and_ln55_23_fu_2466_p2;
        lshr_ln8_s_reg_2973 <= {{ap_sig_allocacmp_s[5:2]}};
        s_reg_2959 <= ap_sig_allocacmp_s;
        tmp_reg_3066 <= add_ln53_14_fu_733_p2[32'd6];
        tmp_reg_3066_pp0_iter1_reg <= tmp_reg_3066;
        zext_ln52_cast_reg_2940[7 : 0] <= zext_ln52_cast_fu_516_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_7_reg_3266 <= add_ln53_7_fu_1056_p2;
        min_p_153_reg_3640 <= min_p_153_fu_2580_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_3509 <= and_ln55_11_fu_1863_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_3534 <= and_ln55_13_fu_1972_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_3554 <= and_ln55_15_fu_2062_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_3572 <= and_ln55_17_fu_2170_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_3585 <= and_ln55_19_fu_2259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3390 <= and_ln55_1_fu_1338_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_3603 <= and_ln55_21_fu_2367_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_25_reg_3634 <= and_ln55_25_fu_2574_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_27_reg_3647 <= and_ln55_27_fu_2663_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_29_reg_3660 <= and_ln55_29_fu_2752_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3413 <= and_ln55_3_fu_1437_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3436 <= and_ln55_5_fu_1536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_3459 <= and_ln55_7_fu_1635_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_3489 <= and_ln55_9_fu_1773_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_16_reg_3106 <= llike_1_q0;
        llike_1_load_reg_3070 <= llike_1_q1;
        llike_2_load_16_reg_3111 <= llike_2_q0;
        llike_2_load_reg_3075 <= llike_2_q1;
        llike_3_load_16_reg_3116 <= llike_3_q0;
        llike_3_load_reg_3085 <= llike_3_q1;
        llike_load_16_reg_3121 <= llike_q0;
        llike_load_reg_3095 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_17_reg_3211 <= llike_1_q1;
        llike_1_load_18_reg_3231 <= llike_1_q0;
        llike_2_load_17_reg_3216 <= llike_2_q1;
        llike_2_load_18_reg_3236 <= llike_2_q0;
        llike_3_load_17_reg_3221 <= llike_3_q1;
        llike_3_load_18_reg_3241 <= llike_3_q0;
        llike_load_17_reg_3226 <= llike_q1;
        llike_load_18_reg_3246 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_3378 <= min_p_fu_120;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_3401 <= min_p_129_fu_1349_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_3424 <= min_p_131_fu_1448_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_133_reg_3447 <= min_p_133_fu_1547_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_135_reg_3477 <= min_p_135_fu_1679_p3;
        min_s_7_reg_3484 <= min_s_7_fu_1689_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_137_reg_3502 <= min_p_137_fu_1779_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_139_reg_3522 <= min_p_139_fu_1878_p3;
        min_s_9_reg_3529 <= min_s_9_fu_1888_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_141_reg_3547 <= min_p_141_fu_1978_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_143_reg_3560 <= min_p_143_fu_2077_p3;
        min_s_11_reg_3567 <= min_s_11_fu_2087_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_145_reg_3578 <= min_p_145_fu_2176_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_147_reg_3591 <= min_p_147_fu_2274_p3;
        min_s_13_reg_3598 <= min_s_13_fu_2284_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_149_reg_3609 <= min_p_149_fu_2373_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_157_reg_3666 <= min_p_157_fu_2758_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_3673 <= min_s_18_fu_2786_p3;
        tmp_265_reg_3678 <= grp_fu_390_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_70_reg_3465 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_72_reg_3495 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_74_reg_3515 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_76_reg_3540 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_477 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_491 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_496 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_501 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_506 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_511 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        transition_load_71_reg_3292 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        transition_load_73_reg_3318 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        transition_load_75_reg_3338 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        transition_load_77_reg_3358 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln54_reg_3363 <= trunc_ln54_fu_1227_p1;
        trunc_ln54_reg_3363_pp0_iter1_reg <= trunc_ln54_reg_3363;
    end
end
always @ (*) begin
    if (((tmp_reg_3066 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_3066_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_128;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_464_p0 = llike_load_18_reg_3246;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_464_p0 = llike_3_load_18_reg_3241;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_464_p0 = llike_2_load_18_reg_3236;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_464_p0 = llike_1_load_18_reg_3231;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_464_p0 = llike_load_17_reg_3226;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_464_p0 = llike_3_load_17_reg_3221;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_464_p0 = llike_2_load_17_reg_3216;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_464_p0 = llike_1_load_17_reg_3211;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_464_p0 = llike_load_16_reg_3121;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_464_p0 = llike_3_load_16_reg_3116;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_464_p0 = llike_2_load_16_reg_3111;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_464_p0 = llike_1_load_16_reg_3106;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_464_p0 = llike_load_reg_3095;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_464_p0 = llike_3_load_reg_3085;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_464_p0 = llike_2_load_reg_3075;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_464_p0 = llike_1_load_reg_3070;
        end else begin
            grp_fu_464_p0 = 'bx;
        end
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_464_p1 = bitcast_ln54_15_fu_1641_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_464_p1 = bitcast_ln54_14_fu_1554_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_464_p1 = bitcast_ln54_13_fu_1542_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_464_p1 = bitcast_ln54_12_fu_1455_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_464_p1 = bitcast_ln54_11_fu_1443_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_464_p1 = bitcast_ln54_10_fu_1356_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_464_p1 = bitcast_ln54_9_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_464_p1 = bitcast_ln54_8_fu_1257_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_464_p1 = bitcast_ln54_7_fu_1248_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_464_p1 = bitcast_ln54_6_fu_1222_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_464_p1 = bitcast_ln54_5_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_464_p1 = bitcast_ln54_4_fu_1144_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_464_p1 = bitcast_ln54_3_fu_1100_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_464_p1 = bitcast_ln54_2_fu_1061_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_464_p1 = bitcast_ln54_1_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_464_p1 = bitcast_ln54_fu_978_p1;
        end else begin
            grp_fu_464_p1 = 'bx;
        end
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_468_p0 = p_76_reg_3540;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = p_74_reg_3515;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_468_p0 = p_72_reg_3495;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_468_p0 = p_70_reg_3465;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_468_p0 = reg_511;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_468_p0 = reg_506;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_468_p0 = reg_501;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_468_p0 = reg_496;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_468_p0 = reg_491;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_468_p1 = min_p_157_fu_2758_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_468_p1 = min_p_155_fu_2669_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_468_p1 = min_p_153_fu_2580_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p1 = min_p_151_fu_2481_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_468_p1 = min_p_149_fu_2373_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_468_p1 = min_p_147_fu_2274_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_468_p1 = min_p_145_fu_2176_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_468_p1 = min_p_143_fu_2077_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_468_p1 = min_p_141_fu_1978_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_468_p1 = min_p_139_fu_1878_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_468_p1 = min_p_137_fu_1779_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_468_p1 = min_p_135_fu_1679_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_468_p1 = min_p_133_fu_1547_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_468_p1 = min_p_131_fu_1448_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_468_p1 = min_p_129_fu_1349_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_468_p1 = min_p_fu_120;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_26_fu_896_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_18_fu_641_p1;
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
            llike_1_address1_local = zext_ln54_22_fu_798_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_16_fu_560_p1;
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
            llike_2_address0_local = zext_ln54_27_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_19_fu_670_p1;
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
            llike_2_address1_local = zext_ln54_23_fu_825_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address1_local = zext_ln54_16_fu_560_p1;
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
            llike_3_address0_local = zext_ln54_28_fu_950_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_20_fu_699_p1;
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
            llike_3_address1_local = zext_ln54_24_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address1_local = zext_ln54_16_fu_560_p1;
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
            llike_address0_local = zext_ln54_30_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_21_fu_728_p1;
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
            llike_address1_local = zext_ln54_25_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_17_fu_622_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (tmp_reg_3066_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
            transition_address0_local = zext_ln54_11_fu_1161_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address0_local = zext_ln54_9_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address0_local = zext_ln54_7_fu_1078_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_1034_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_995_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_581_p1;
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
            transition_address1_local = zext_ln54_12_fu_1178_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address1_local = zext_ln54_10_fu_1134_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln54_8_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_759_p1;
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
assign add_ln53_10_fu_857_p2 = (s_reg_2959 + 6'd11);
assign add_ln53_11_fu_1139_p2 = (s_reg_2959 + 6'd12);
assign add_ln53_12_fu_901_p2 = (s_reg_2959 + 6'd13);
assign add_ln53_13_fu_928_p2 = (s_reg_2959 + 6'd14);
assign add_ln53_14_fu_733_p2 = (zext_ln12_fu_538_p1 + 7'd15);
assign add_ln53_15_fu_2379_p2 = (s_reg_2959 + 6'd16);
assign add_ln53_1_fu_592_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_598_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_781_p2 = (s_reg_2959 + 6'd4);
assign add_ln53_4_fu_646_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln53_5_fu_675_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln53_6_fu_704_p2 = (ap_sig_allocacmp_s + 6'd7);
assign add_ln53_7_fu_1056_p2 = (s_reg_2959 + 6'd8);
assign add_ln53_8_fu_803_p2 = (s_reg_2959 + 6'd9);
assign add_ln53_9_fu_830_p2 = (s_reg_2959 + 6'd10);
assign add_ln53_fu_586_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1129_p2 = (shl_ln54_s_fu_1122_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_11_fu_1156_p2 = (shl_ln54_10_fu_1149_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_12_fu_1173_p2 = (shl_ln54_11_fu_1166_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_13_fu_1195_p2 = (shl_ln54_12_fu_1188_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_14_fu_1212_p2 = (shl_ln54_13_fu_1205_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_15_fu_1238_p2 = (shl_ln54_14_fu_1230_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_16_fu_968_p2 = (zext_ln52_2 + zext_ln54_29_fu_964_p1);
assign add_ln54_1_fu_754_p2 = (shl_ln54_1_fu_747_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_2_fu_771_p2 = (shl_ln54_2_fu_764_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_3_fu_990_p2 = (shl_ln54_3_fu_983_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_4_fu_1007_p2 = (shl_ln54_4_fu_1000_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_5_fu_1029_p2 = (shl_ln54_5_fu_1022_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_6_fu_1046_p2 = (shl_ln54_6_fu_1039_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_7_fu_1073_p2 = (shl_ln54_7_fu_1066_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_8_fu_1090_p2 = (shl_ln54_8_fu_1083_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_9_fu_1112_p2 = (shl_ln54_9_fu_1105_p3 + zext_ln52_cast_reg_2940);
assign add_ln54_fu_575_p2 = (shl_ln2_fu_567_p3 + zext_ln52_cast_fu_516_p1);
assign add_ln8_1_fu_786_p2 = (lshr_ln8_s_reg_2973 + 4'd2);
assign add_ln8_2_fu_884_p2 = (lshr_ln8_s_reg_2973 + 4'd3);
assign add_ln8_fu_627_p2 = (lshr_ln8_s_fu_542_p4 + 4'd1);
assign and_ln55_10_fu_1857_p2 = (or_ln55_11_fu_1851_p2 & or_ln55_10_fu_1833_p2);
assign and_ln55_11_fu_1863_p2 = (grp_fu_390_p_dout0 & and_ln55_10_fu_1857_p2);
assign and_ln55_12_fu_1966_p2 = (or_ln55_13_fu_1960_p2 & or_ln55_12_fu_1942_p2);
assign and_ln55_13_fu_1972_p2 = (grp_fu_390_p_dout0 & and_ln55_12_fu_1966_p2);
assign and_ln55_14_fu_2056_p2 = (or_ln55_15_fu_2050_p2 & or_ln55_14_fu_2032_p2);
assign and_ln55_15_fu_2062_p2 = (grp_fu_390_p_dout0 & and_ln55_14_fu_2056_p2);
assign and_ln55_16_fu_2164_p2 = (or_ln55_17_fu_2158_p2 & or_ln55_16_fu_2140_p2);
assign and_ln55_17_fu_2170_p2 = (grp_fu_390_p_dout0 & and_ln55_16_fu_2164_p2);
assign and_ln55_18_fu_2253_p2 = (or_ln55_19_fu_2247_p2 & or_ln55_18_fu_2229_p2);
assign and_ln55_19_fu_2259_p2 = (grp_fu_390_p_dout0 & and_ln55_18_fu_2253_p2);
assign and_ln55_1_fu_1338_p2 = (or_ln55_1_fu_1326_p2 & and_ln55_fu_1332_p2);
assign and_ln55_20_fu_2361_p2 = (or_ln55_21_fu_2355_p2 & or_ln55_20_fu_2337_p2);
assign and_ln55_21_fu_2367_p2 = (grp_fu_390_p_dout0 & and_ln55_20_fu_2361_p2);
assign and_ln55_22_fu_2460_p2 = (or_ln55_23_fu_2454_p2 & or_ln55_22_fu_2436_p2);
assign and_ln55_23_fu_2466_p2 = (grp_fu_390_p_dout0 & and_ln55_22_fu_2460_p2);
assign and_ln55_24_fu_2568_p2 = (or_ln55_25_fu_2562_p2 & or_ln55_24_fu_2544_p2);
assign and_ln55_25_fu_2574_p2 = (grp_fu_390_p_dout0 & and_ln55_24_fu_2568_p2);
assign and_ln55_26_fu_2657_p2 = (or_ln55_27_fu_2651_p2 & or_ln55_26_fu_2633_p2);
assign and_ln55_27_fu_2663_p2 = (grp_fu_390_p_dout0 & and_ln55_26_fu_2657_p2);
assign and_ln55_28_fu_2746_p2 = (or_ln55_29_fu_2740_p2 & or_ln55_28_fu_2722_p2);
assign and_ln55_29_fu_2752_p2 = (grp_fu_390_p_dout0 & and_ln55_28_fu_2746_p2);
assign and_ln55_2_fu_1431_p2 = (or_ln55_3_fu_1425_p2 & or_ln55_2_fu_1407_p2);
assign and_ln55_30_fu_2865_p2 = (or_ln55_31_fu_2859_p2 & or_ln55_30_fu_2841_p2);
assign and_ln55_31_fu_2871_p2 = (tmp_265_reg_3678 & and_ln55_30_fu_2865_p2);
assign and_ln55_3_fu_1437_p2 = (grp_fu_390_p_dout0 & and_ln55_2_fu_1431_p2);
assign and_ln55_4_fu_1530_p2 = (or_ln55_5_fu_1524_p2 & or_ln55_4_fu_1506_p2);
assign and_ln55_5_fu_1536_p2 = (grp_fu_390_p_dout0 & and_ln55_4_fu_1530_p2);
assign and_ln55_6_fu_1629_p2 = (or_ln55_7_fu_1623_p2 & or_ln55_6_fu_1605_p2);
assign and_ln55_7_fu_1635_p2 = (grp_fu_390_p_dout0 & and_ln55_6_fu_1629_p2);
assign and_ln55_8_fu_1767_p2 = (or_ln55_9_fu_1761_p2 & or_ln55_8_fu_1743_p2);
assign and_ln55_9_fu_1773_p2 = (grp_fu_390_p_dout0 & and_ln55_8_fu_1767_p2);
assign and_ln55_fu_1332_p2 = (or_ln55_fu_1308_p2 & grp_fu_390_p_dout0);
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
assign bitcast_ln54_10_fu_1356_p1 = transition_load_73_reg_3318;
assign bitcast_ln54_11_fu_1443_p1 = reg_477;
assign bitcast_ln54_12_fu_1455_p1 = transition_load_75_reg_3338;
assign bitcast_ln54_13_fu_1542_p1 = reg_486;
assign bitcast_ln54_14_fu_1554_p1 = transition_load_77_reg_3358;
assign bitcast_ln54_15_fu_1641_p1 = reg_472;
assign bitcast_ln54_1_fu_1017_p1 = reg_472;
assign bitcast_ln54_2_fu_1061_p1 = reg_477;
assign bitcast_ln54_3_fu_1100_p1 = reg_472;
assign bitcast_ln54_4_fu_1144_p1 = reg_481;
assign bitcast_ln54_5_fu_1183_p1 = reg_477;
assign bitcast_ln54_6_fu_1222_p1 = reg_486;
assign bitcast_ln54_7_fu_1248_p1 = reg_472;
assign bitcast_ln54_8_fu_1257_p1 = transition_load_71_reg_3292;
assign bitcast_ln54_9_fu_1344_p1 = reg_481;
assign bitcast_ln54_fu_978_p1 = reg_472;
assign bitcast_ln55_10_fu_1786_p1 = reg_496;
assign bitcast_ln55_11_fu_1804_p1 = min_p_137_reg_3502;
assign bitcast_ln55_12_fu_1895_p1 = reg_511;
assign bitcast_ln55_13_fu_1913_p1 = min_p_139_reg_3522;
assign bitcast_ln55_14_fu_1985_p1 = reg_501;
assign bitcast_ln55_15_fu_2003_p1 = min_p_141_reg_3547;
assign bitcast_ln55_16_fu_2094_p1 = p_70_reg_3465;
assign bitcast_ln55_17_fu_2111_p1 = min_p_143_reg_3560;
assign bitcast_ln55_18_fu_2182_p1 = reg_491;
assign bitcast_ln55_19_fu_2200_p1 = min_p_145_reg_3578;
assign bitcast_ln55_1_fu_1279_p1 = min_p_127_reg_3378;
assign bitcast_ln55_20_fu_2291_p1 = p_72_reg_3495;
assign bitcast_ln55_21_fu_2308_p1 = min_p_147_reg_3591;
assign bitcast_ln55_22_fu_2389_p1 = reg_506;
assign bitcast_ln55_23_fu_2407_p1 = min_p_149_reg_3609;
assign bitcast_ln55_24_fu_2498_p1 = p_74_reg_3515;
assign bitcast_ln55_25_fu_2515_p1 = min_p_151_reg_3622;
assign bitcast_ln55_26_fu_2586_p1 = reg_496;
assign bitcast_ln55_27_fu_2604_p1 = min_p_153_reg_3640;
assign bitcast_ln55_28_fu_2676_p1 = p_76_reg_3540;
assign bitcast_ln55_29_fu_2693_p1 = min_p_155_reg_3653;
assign bitcast_ln55_2_fu_1360_p1 = reg_496;
assign bitcast_ln55_30_fu_2794_p1 = reg_511;
assign bitcast_ln55_31_fu_2812_p1 = min_p_157_reg_3666;
assign bitcast_ln55_3_fu_1378_p1 = min_p_129_reg_3401;
assign bitcast_ln55_4_fu_1459_p1 = reg_501;
assign bitcast_ln55_5_fu_1477_p1 = min_p_131_reg_3424;
assign bitcast_ln55_6_fu_1558_p1 = reg_491;
assign bitcast_ln55_7_fu_1576_p1 = min_p_133_reg_3447;
assign bitcast_ln55_8_fu_1696_p1 = reg_506;
assign bitcast_ln55_9_fu_1714_p1 = min_p_135_reg_3477;
assign bitcast_ln55_fu_1261_p1 = reg_491;
assign grp_fu_215_p_ce = 1'b1;
assign grp_fu_215_p_din0 = grp_fu_464_p0;
assign grp_fu_215_p_din1 = grp_fu_464_p1;
assign grp_fu_215_p_opcode = 2'd0;
assign grp_fu_390_p_ce = 1'b1;
assign grp_fu_390_p_din0 = grp_fu_468_p0;
assign grp_fu_390_p_din1 = grp_fu_468_p1;
assign grp_fu_390_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1512_p2 = ((tmp_213_fu_1480_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1518_p2 = ((trunc_ln55_5_fu_1490_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1593_p2 = ((tmp_216_fu_1562_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1599_p2 = ((trunc_ln55_6_fu_1572_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1611_p2 = ((tmp_217_fu_1579_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1617_p2 = ((trunc_ln55_7_fu_1589_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1731_p2 = ((tmp_220_fu_1700_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1737_p2 = ((trunc_ln55_8_fu_1710_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1749_p2 = ((tmp_221_fu_1717_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1755_p2 = ((trunc_ln55_9_fu_1727_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1302_p2 = ((trunc_ln55_fu_1275_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1821_p2 = ((tmp_224_fu_1790_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1827_p2 = ((trunc_ln55_10_fu_1800_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1839_p2 = ((tmp_225_fu_1807_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1845_p2 = ((trunc_ln55_11_fu_1817_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1930_p2 = ((tmp_228_fu_1899_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1936_p2 = ((trunc_ln55_12_fu_1909_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1948_p2 = ((tmp_229_fu_1916_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1954_p2 = ((trunc_ln55_13_fu_1926_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2020_p2 = ((tmp_232_fu_1989_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2026_p2 = ((trunc_ln55_14_fu_1999_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1314_p2 = ((tmp_207_fu_1282_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2038_p2 = ((tmp_233_fu_2006_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2044_p2 = ((trunc_ln55_15_fu_2016_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_2128_p2 = ((tmp_236_fu_2097_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_2134_p2 = ((trunc_ln55_16_fu_2107_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_2146_p2 = ((tmp_237_fu_2114_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_2152_p2 = ((trunc_ln55_17_fu_2124_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_2217_p2 = ((tmp_240_fu_2186_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_2223_p2 = ((trunc_ln55_18_fu_2196_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_2235_p2 = ((tmp_241_fu_2203_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_2241_p2 = ((trunc_ln55_19_fu_2213_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1320_p2 = ((trunc_ln55_1_fu_1292_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_2325_p2 = ((tmp_244_fu_2294_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_2331_p2 = ((trunc_ln55_20_fu_2304_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_2343_p2 = ((tmp_245_fu_2311_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_2349_p2 = ((trunc_ln55_21_fu_2321_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_2424_p2 = ((tmp_248_fu_2393_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_2430_p2 = ((trunc_ln55_22_fu_2403_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_2442_p2 = ((tmp_249_fu_2410_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_2448_p2 = ((trunc_ln55_23_fu_2420_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_2532_p2 = ((tmp_252_fu_2501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_2538_p2 = ((trunc_ln55_24_fu_2511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1395_p2 = ((tmp_209_fu_1364_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_2550_p2 = ((tmp_253_fu_2518_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_2556_p2 = ((trunc_ln55_25_fu_2528_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_2621_p2 = ((tmp_256_fu_2590_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_2627_p2 = ((trunc_ln55_26_fu_2600_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_2639_p2 = ((tmp_257_fu_2607_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_2645_p2 = ((trunc_ln55_27_fu_2617_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_2710_p2 = ((tmp_260_fu_2679_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_2716_p2 = ((trunc_ln55_28_fu_2689_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_2728_p2 = ((tmp_261_fu_2696_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_2734_p2 = ((trunc_ln55_29_fu_2706_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1401_p2 = ((trunc_ln55_2_fu_1374_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_2829_p2 = ((tmp_263_fu_2798_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_2835_p2 = ((trunc_ln55_30_fu_2808_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_2847_p2 = ((tmp_264_fu_2815_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_2853_p2 = ((trunc_ln55_31_fu_2825_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1413_p2 = ((tmp_210_fu_1381_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1419_p2 = ((trunc_ln55_3_fu_1391_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1494_p2 = ((tmp_212_fu_1463_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1500_p2 = ((trunc_ln55_4_fu_1473_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1296_p2 = ((tmp_206_fu_1265_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_1_fu_604_p4 = {{add_ln53_2_fu_598_p2[5:2]}};
assign lshr_ln8_2_fu_652_p4 = {{add_ln53_4_fu_646_p2[5:2]}};
assign lshr_ln8_3_fu_681_p4 = {{add_ln53_5_fu_675_p2[5:2]}};
assign lshr_ln8_4_fu_710_p4 = {{add_ln53_6_fu_704_p2[5:2]}};
assign lshr_ln8_5_fu_808_p4 = {{add_ln53_8_fu_803_p2[5:2]}};
assign lshr_ln8_6_fu_835_p4 = {{add_ln53_9_fu_830_p2[5:2]}};
assign lshr_ln8_7_fu_862_p4 = {{add_ln53_10_fu_857_p2[5:2]}};
assign lshr_ln8_8_fu_906_p4 = {{add_ln53_12_fu_901_p2[5:2]}};
assign lshr_ln8_9_fu_933_p4 = {{add_ln53_13_fu_928_p2[5:2]}};
assign lshr_ln8_s_fu_542_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_2_fu_955_p4 = {{add_ln53_14_reg_3060[6:2]}};
assign min_p_129_fu_1349_p3 = ((and_ln55_1_reg_3390[0:0] == 1'b1) ? reg_491 : min_p_127_reg_3378);
assign min_p_131_fu_1448_p3 = ((and_ln55_3_reg_3413[0:0] == 1'b1) ? reg_496 : min_p_129_reg_3401);
assign min_p_133_fu_1547_p3 = ((and_ln55_5_reg_3436[0:0] == 1'b1) ? reg_501 : min_p_131_reg_3424);
assign min_p_135_fu_1679_p3 = ((and_ln55_7_reg_3459[0:0] == 1'b1) ? reg_491 : min_p_133_reg_3447);
assign min_p_137_fu_1779_p3 = ((and_ln55_9_reg_3489[0:0] == 1'b1) ? reg_506 : min_p_135_reg_3477);
assign min_p_139_fu_1878_p3 = ((and_ln55_11_reg_3509[0:0] == 1'b1) ? reg_496 : min_p_137_reg_3502);
assign min_p_141_fu_1978_p3 = ((and_ln55_13_reg_3534[0:0] == 1'b1) ? reg_511 : min_p_139_reg_3522);
assign min_p_143_fu_2077_p3 = ((and_ln55_15_reg_3554[0:0] == 1'b1) ? reg_501 : min_p_141_reg_3547);
assign min_p_145_fu_2176_p3 = ((and_ln55_17_reg_3572[0:0] == 1'b1) ? p_70_reg_3465 : min_p_143_reg_3560);
assign min_p_147_fu_2274_p3 = ((and_ln55_19_reg_3585[0:0] == 1'b1) ? reg_491 : min_p_145_reg_3578);
assign min_p_149_fu_2373_p3 = ((and_ln55_21_reg_3603[0:0] == 1'b1) ? p_72_reg_3495 : min_p_147_reg_3591);
assign min_p_151_fu_2481_p3 = ((and_ln55_23_reg_3616[0:0] == 1'b1) ? reg_506 : min_p_149_reg_3609);
assign min_p_153_fu_2580_p3 = ((and_ln55_25_reg_3634[0:0] == 1'b1) ? p_74_reg_3515 : min_p_151_reg_3622);
assign min_p_155_fu_2669_p3 = ((and_ln55_27_reg_3647[0:0] == 1'b1) ? reg_496 : min_p_153_reg_3640);
assign min_p_157_fu_2758_p3 = ((and_ln55_29_reg_3660[0:0] == 1'b1) ? p_76_reg_3540 : min_p_155_reg_3653);
assign min_p_159_fu_2876_p3 = ((and_ln55_31_fu_2871_p2[0:0] == 1'b1) ? reg_511 : min_p_157_reg_3666);
assign min_s_10_fu_2071_p3 = ((and_ln55_13_reg_3534[0:0] == 1'b1) ? zext_ln55_6_fu_2068_p1 : min_s_9_reg_3529);
assign min_s_11_fu_2087_p3 = ((and_ln55_15_reg_3554[0:0] == 1'b1) ? zext_ln55_7_fu_2084_p1 : min_s_10_fu_2071_p3);
assign min_s_12_fu_2268_p3 = ((and_ln55_17_reg_3572[0:0] == 1'b1) ? zext_ln55_8_fu_2265_p1 : min_s_11_reg_3567);
assign min_s_13_fu_2284_p3 = ((and_ln55_19_reg_3585[0:0] == 1'b1) ? zext_ln55_9_fu_2281_p1 : min_s_12_fu_2268_p3);
assign min_s_14_fu_2475_p3 = ((and_ln55_21_reg_3603[0:0] == 1'b1) ? zext_ln55_10_fu_2472_p1 : min_s_13_reg_3598);
assign min_s_15_fu_2491_p3 = ((and_ln55_23_reg_3616[0:0] == 1'b1) ? zext_ln55_11_fu_2488_p1 : min_s_14_fu_2475_p3);
assign min_s_16_fu_2767_p3 = ((and_ln55_25_reg_3634[0:0] == 1'b1) ? zext_ln55_12_fu_2764_p1 : min_s_15_reg_3629);
assign min_s_17_fu_2776_p3 = ((and_ln55_27_reg_3647[0:0] == 1'b1) ? zext_ln55_13_fu_2773_p1 : min_s_16_fu_2767_p3);
assign min_s_18_fu_2786_p3 = ((and_ln55_29_reg_3660[0:0] == 1'b1) ? zext_ln55_14_fu_2783_p1 : min_s_17_fu_2776_p3);
assign min_s_19_fu_2886_p3 = ((and_ln55_31_fu_2871_p2[0:0] == 1'b1) ? zext_ln55_15_fu_2883_p1 : min_s_18_reg_3673);
assign min_s_34_out = ((and_ln55_29_reg_3660[0:0] == 1'b1) ? zext_ln55_14_fu_2783_p1 : min_s_17_fu_2776_p3);
assign min_s_4_fu_1652_p3 = ((and_ln55_1_reg_3390[0:0] == 1'b1) ? zext_ln55_fu_1649_p1 : min_s_fu_124);
assign min_s_5_fu_1662_p3 = ((and_ln55_3_reg_3413[0:0] == 1'b1) ? zext_ln55_1_fu_1659_p1 : min_s_4_fu_1652_p3);
assign min_s_6_fu_1672_p3 = ((and_ln55_5_reg_3436[0:0] == 1'b1) ? zext_ln55_2_fu_1669_p1 : min_s_5_fu_1662_p3);
assign min_s_7_fu_1689_p3 = ((and_ln55_7_reg_3459[0:0] == 1'b1) ? zext_ln55_3_fu_1686_p1 : min_s_6_fu_1672_p3);
assign min_s_8_fu_1872_p3 = ((and_ln55_9_reg_3489[0:0] == 1'b1) ? zext_ln55_4_fu_1869_p1 : min_s_7_reg_3484);
assign min_s_9_fu_1888_p3 = ((and_ln55_11_reg_3509[0:0] == 1'b1) ? zext_ln55_5_fu_1885_p1 : min_s_8_fu_1872_p3);
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
assign shl_ln2_fu_567_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_10_fu_1149_p3 = {{add_ln53_10_reg_3153}, {6'd0}};
assign shl_ln54_11_fu_1166_p3 = {{add_ln53_11_reg_3307}, {6'd0}};
assign shl_ln54_12_fu_1188_p3 = {{add_ln53_12_reg_3169}, {6'd0}};
assign shl_ln54_13_fu_1205_p3 = {{add_ln53_13_reg_3180}, {6'd0}};
assign shl_ln54_14_fu_1230_p3 = {{trunc_ln54_fu_1227_p1}, {6'd0}};
assign shl_ln54_1_fu_747_p3 = {{add_ln53_reg_2999}, {6'd0}};
assign shl_ln54_2_fu_764_p3 = {{add_ln53_1_reg_3005}, {6'd0}};
assign shl_ln54_3_fu_983_p3 = {{add_ln53_2_reg_3011}, {6'd0}};
assign shl_ln54_4_fu_1000_p3 = {{add_ln53_3_reg_3100}, {6'd0}};
assign shl_ln54_5_fu_1022_p3 = {{add_ln53_4_reg_3027}, {6'd0}};
assign shl_ln54_6_fu_1039_p3 = {{add_ln53_5_reg_3038}, {6'd0}};
assign shl_ln54_7_fu_1066_p3 = {{add_ln53_6_reg_3049}, {6'd0}};
assign shl_ln54_8_fu_1083_p3 = {{add_ln53_7_reg_3266}, {6'd0}};
assign shl_ln54_9_fu_1105_p3 = {{add_ln53_8_reg_3131}, {6'd0}};
assign shl_ln54_s_fu_1122_p3 = {{add_ln53_9_reg_3142}, {6'd0}};
assign tmp_206_fu_1265_p4 = {{bitcast_ln55_fu_1261_p1[62:52]}};
assign tmp_207_fu_1282_p4 = {{bitcast_ln55_1_fu_1279_p1[62:52]}};
assign tmp_209_fu_1364_p4 = {{bitcast_ln55_2_fu_1360_p1[62:52]}};
assign tmp_210_fu_1381_p4 = {{bitcast_ln55_3_fu_1378_p1[62:52]}};
assign tmp_212_fu_1463_p4 = {{bitcast_ln55_4_fu_1459_p1[62:52]}};
assign tmp_213_fu_1480_p4 = {{bitcast_ln55_5_fu_1477_p1[62:52]}};
assign tmp_215_fu_614_p3 = {{t_1}, {lshr_ln8_1_fu_604_p4}};
assign tmp_216_fu_1562_p4 = {{bitcast_ln55_6_fu_1558_p1[62:52]}};
assign tmp_217_fu_1579_p4 = {{bitcast_ln55_7_fu_1576_p1[62:52]}};
assign tmp_219_fu_633_p3 = {{t_1}, {add_ln8_fu_627_p2}};
assign tmp_220_fu_1700_p4 = {{bitcast_ln55_8_fu_1696_p1[62:52]}};
assign tmp_221_fu_1717_p4 = {{bitcast_ln55_9_fu_1714_p1[62:52]}};
assign tmp_223_fu_662_p3 = {{t_1}, {lshr_ln8_2_fu_652_p4}};
assign tmp_224_fu_1790_p4 = {{bitcast_ln55_10_fu_1786_p1[62:52]}};
assign tmp_225_fu_1807_p4 = {{bitcast_ln55_11_fu_1804_p1[62:52]}};
assign tmp_227_fu_691_p3 = {{t_1}, {lshr_ln8_3_fu_681_p4}};
assign tmp_228_fu_1899_p4 = {{bitcast_ln55_12_fu_1895_p1[62:52]}};
assign tmp_229_fu_1916_p4 = {{bitcast_ln55_13_fu_1913_p1[62:52]}};
assign tmp_231_fu_720_p3 = {{t_1}, {lshr_ln8_4_fu_710_p4}};
assign tmp_232_fu_1989_p4 = {{bitcast_ln55_14_fu_1985_p1[62:52]}};
assign tmp_233_fu_2006_p4 = {{bitcast_ln55_15_fu_2003_p1[62:52]}};
assign tmp_235_fu_791_p3 = {{t_1}, {add_ln8_1_fu_786_p2}};
assign tmp_236_fu_2097_p4 = {{bitcast_ln55_16_fu_2094_p1[62:52]}};
assign tmp_237_fu_2114_p4 = {{bitcast_ln55_17_fu_2111_p1[62:52]}};
assign tmp_239_fu_818_p3 = {{t_1}, {lshr_ln8_5_fu_808_p4}};
assign tmp_240_fu_2186_p4 = {{bitcast_ln55_18_fu_2182_p1[62:52]}};
assign tmp_241_fu_2203_p4 = {{bitcast_ln55_19_fu_2200_p1[62:52]}};
assign tmp_243_fu_845_p3 = {{t_1}, {lshr_ln8_6_fu_835_p4}};
assign tmp_244_fu_2294_p4 = {{bitcast_ln55_20_fu_2291_p1[62:52]}};
assign tmp_245_fu_2311_p4 = {{bitcast_ln55_21_fu_2308_p1[62:52]}};
assign tmp_247_fu_872_p3 = {{t_1}, {lshr_ln8_7_fu_862_p4}};
assign tmp_248_fu_2393_p4 = {{bitcast_ln55_22_fu_2389_p1[62:52]}};
assign tmp_249_fu_2410_p4 = {{bitcast_ln55_23_fu_2407_p1[62:52]}};
assign tmp_251_fu_889_p3 = {{t_1}, {add_ln8_2_fu_884_p2}};
assign tmp_252_fu_2501_p4 = {{bitcast_ln55_24_fu_2498_p1[62:52]}};
assign tmp_253_fu_2518_p4 = {{bitcast_ln55_25_fu_2515_p1[62:52]}};
assign tmp_255_fu_916_p3 = {{t_1}, {lshr_ln8_8_fu_906_p4}};
assign tmp_256_fu_2590_p4 = {{bitcast_ln55_26_fu_2586_p1[62:52]}};
assign tmp_257_fu_2607_p4 = {{bitcast_ln55_27_fu_2604_p1[62:52]}};
assign tmp_259_fu_943_p3 = {{t_1}, {lshr_ln8_9_fu_933_p4}};
assign tmp_260_fu_2679_p4 = {{bitcast_ln55_28_fu_2676_p1[62:52]}};
assign tmp_261_fu_2696_p4 = {{bitcast_ln55_29_fu_2693_p1[62:52]}};
assign tmp_263_fu_2798_p4 = {{bitcast_ln55_30_fu_2794_p1[62:52]}};
assign tmp_264_fu_2815_p4 = {{bitcast_ln55_31_fu_2812_p1[62:52]}};
assign tmp_s_fu_552_p3 = {{t_1}, {lshr_ln8_s_fu_542_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_1227_p1 = add_ln53_14_reg_3060[5:0];
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
assign zext_ln12_fu_538_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_516_p1 = zext_ln52;
assign zext_ln54_10_fu_1134_p1 = add_ln54_10_fu_1129_p2;
assign zext_ln54_11_fu_1161_p1 = add_ln54_11_fu_1156_p2;
assign zext_ln54_12_fu_1178_p1 = add_ln54_12_fu_1173_p2;
assign zext_ln54_13_fu_1200_p1 = add_ln54_13_fu_1195_p2;
assign zext_ln54_14_fu_1217_p1 = add_ln54_14_fu_1212_p2;
assign zext_ln54_15_fu_1243_p1 = add_ln54_15_fu_1238_p2;
assign zext_ln54_16_fu_560_p1 = tmp_s_fu_552_p3;
assign zext_ln54_17_fu_622_p1 = tmp_215_fu_614_p3;
assign zext_ln54_18_fu_641_p1 = tmp_219_fu_633_p3;
assign zext_ln54_19_fu_670_p1 = tmp_223_fu_662_p3;
assign zext_ln54_1_fu_759_p1 = add_ln54_1_fu_754_p2;
assign zext_ln54_20_fu_699_p1 = tmp_227_fu_691_p3;
assign zext_ln54_21_fu_728_p1 = tmp_231_fu_720_p3;
assign zext_ln54_22_fu_798_p1 = tmp_235_fu_791_p3;
assign zext_ln54_23_fu_825_p1 = tmp_239_fu_818_p3;
assign zext_ln54_24_fu_852_p1 = tmp_243_fu_845_p3;
assign zext_ln54_25_fu_879_p1 = tmp_247_fu_872_p3;
assign zext_ln54_26_fu_896_p1 = tmp_251_fu_889_p3;
assign zext_ln54_27_fu_923_p1 = tmp_255_fu_916_p3;
assign zext_ln54_28_fu_950_p1 = tmp_259_fu_943_p3;
assign zext_ln54_29_fu_964_p1 = lshr_ln9_2_fu_955_p4;
assign zext_ln54_2_fu_776_p1 = add_ln54_2_fu_771_p2;
assign zext_ln54_30_fu_973_p1 = add_ln54_16_fu_968_p2;
assign zext_ln54_3_fu_995_p1 = add_ln54_3_fu_990_p2;
assign zext_ln54_4_fu_1012_p1 = add_ln54_4_fu_1007_p2;
assign zext_ln54_5_fu_1034_p1 = add_ln54_5_fu_1029_p2;
assign zext_ln54_6_fu_1051_p1 = add_ln54_6_fu_1046_p2;
assign zext_ln54_7_fu_1078_p1 = add_ln54_7_fu_1073_p2;
assign zext_ln54_8_fu_1095_p1 = add_ln54_8_fu_1090_p2;
assign zext_ln54_9_fu_1117_p1 = add_ln54_9_fu_1112_p2;
assign zext_ln54_fu_581_p1 = add_ln54_fu_575_p2;
assign zext_ln55_10_fu_2472_p1 = add_ln53_9_reg_3142;
assign zext_ln55_11_fu_2488_p1 = add_ln53_10_reg_3153;
assign zext_ln55_12_fu_2764_p1 = add_ln53_11_reg_3307_pp0_iter1_reg;
assign zext_ln55_13_fu_2773_p1 = add_ln53_12_reg_3169_pp0_iter1_reg;
assign zext_ln55_14_fu_2783_p1 = add_ln53_13_reg_3180_pp0_iter1_reg;
assign zext_ln55_15_fu_2883_p1 = trunc_ln54_reg_3363_pp0_iter1_reg;
assign zext_ln55_1_fu_1659_p1 = add_ln53_reg_2999;
assign zext_ln55_2_fu_1669_p1 = add_ln53_1_reg_3005;
assign zext_ln55_3_fu_1686_p1 = add_ln53_2_reg_3011;
assign zext_ln55_4_fu_1869_p1 = add_ln53_3_reg_3100;
assign zext_ln55_5_fu_1885_p1 = add_ln53_4_reg_3027;
assign zext_ln55_6_fu_2068_p1 = add_ln53_5_reg_3038;
assign zext_ln55_7_fu_2084_p1 = add_ln53_6_reg_3049;
assign zext_ln55_8_fu_2265_p1 = add_ln53_7_reg_3266;
assign zext_ln55_9_fu_2281_p1 = add_ln53_8_reg_3131;
assign zext_ln55_fu_1649_p1 = s_reg_2959;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_2940[11:8] <= 4'b0000;
end
endmodule 