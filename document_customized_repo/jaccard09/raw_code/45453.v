module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_36,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_34_out,min_s_34_out_ap_vld,grp_fu_903_p_din0,grp_fu_903_p_din1,grp_fu_903_p_opcode,grp_fu_903_p_dout0,grp_fu_903_p_ce,grp_fu_1693_p_din0,grp_fu_1693_p_din1,grp_fu_1693_p_opcode,grp_fu_1693_p_dout0,grp_fu_1693_p_ce); 
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
input  [5:0] zext_ln52_2;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
input  [1:0] empty;
input  [9:0] zext_ln52_3;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_903_p_din0;
output  [63:0] grp_fu_903_p_din1;
output  [1:0] grp_fu_903_p_opcode;
input  [63:0] grp_fu_903_p_dout0;
output   grp_fu_903_p_ce;
output  [63:0] grp_fu_1693_p_din0;
output  [63:0] grp_fu_1693_p_din1;
output  [4:0] grp_fu_1693_p_opcode;
input  [0:0] grp_fu_1693_p_dout0;
output   grp_fu_1693_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_62_reg_3932;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_975;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_980;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_985;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_990;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_995;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_1000_p1;
reg   [9:0] zext_ln52_2_cast_reg_3782;
reg   [5:0] s_reg_3801;
wire   [5:0] add_ln53_fu_1085_p2;
reg   [5:0] add_ln53_reg_3914;
wire   [5:0] add_ln53_1_fu_1091_p2;
reg   [5:0] add_ln53_1_reg_3920;
wire   [6:0] add_ln53_14_fu_1097_p2;
reg   [6:0] add_ln53_14_reg_3926;
reg   [0:0] tmp_62_reg_3932_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3936;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_1127_p11;
reg   [63:0] tmp_1_reg_3941;
reg   [63:0] llike_2_load_reg_3946;
reg   [63:0] llike_3_load_reg_3971;
wire   [5:0] add_ln53_2_fu_1190_p2;
reg   [5:0] add_ln53_2_reg_3996;
reg   [63:0] llike_4_load_reg_4002;
wire   [5:0] add_ln53_3_fu_1195_p2;
reg   [5:0] add_ln53_3_reg_4007;
reg   [63:0] llike_5_load_reg_4013;
reg   [63:0] llike_6_load_reg_4018;
reg   [63:0] llike_7_load_reg_4023;
reg   [63:0] llike_8_load_reg_4028;
reg   [63:0] llike_9_load_reg_4033;
reg   [63:0] llike_10_load_reg_4038;
reg   [63:0] llike_11_load_reg_4043;
reg   [63:0] llike_12_load_reg_4048;
reg   [63:0] llike_13_load_reg_4053;
reg   [63:0] llike_14_load_reg_4058;
reg   [63:0] llike_15_load_reg_4063;
wire   [63:0] tmp_5_fu_1239_p11;
reg   [63:0] tmp_5_reg_4073;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_1278_p11;
reg   [63:0] tmp_9_reg_4078;
wire   [5:0] add_ln53_4_fu_1341_p2;
reg   [5:0] add_ln53_4_reg_4123;
wire   [5:0] add_ln53_5_fu_1346_p2;
reg   [5:0] add_ln53_5_reg_4129;
reg   [63:0] llike_load_reg_4135;
wire   [63:0] tmp_13_fu_1367_p11;
reg   [63:0] tmp_13_reg_4140;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_17_fu_1406_p11;
reg   [63:0] tmp_17_reg_4145;
wire   [5:0] add_ln53_6_fu_1469_p2;
reg   [5:0] add_ln53_6_reg_4190;
wire   [5:0] add_ln53_7_fu_1474_p2;
reg   [5:0] add_ln53_7_reg_4196;
wire   [63:0] tmp_21_fu_1495_p11;
reg   [63:0] tmp_21_reg_4202;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_25_fu_1534_p11;
reg   [63:0] tmp_25_reg_4207;
wire   [5:0] add_ln53_8_fu_1597_p2;
reg   [5:0] add_ln53_8_reg_4252;
wire   [5:0] add_ln53_9_fu_1602_p2;
reg   [5:0] add_ln53_9_reg_4258;
wire   [63:0] tmp_29_fu_1623_p11;
reg   [63:0] tmp_29_reg_4264;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] tmp_33_fu_1662_p11;
reg   [63:0] tmp_33_reg_4269;
wire   [5:0] add_ln53_10_fu_1725_p2;
reg   [5:0] add_ln53_10_reg_4314;
wire   [5:0] add_ln53_11_fu_1730_p2;
reg   [5:0] add_ln53_11_reg_4320;
reg   [5:0] add_ln53_11_reg_4320_pp0_iter1_reg;
wire   [63:0] tmp_37_fu_1751_p11;
reg   [63:0] tmp_37_reg_4326;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] tmp_41_fu_1790_p11;
reg   [63:0] tmp_41_reg_4331;
wire   [5:0] add_ln53_12_fu_1853_p2;
reg   [5:0] add_ln53_12_reg_4376;
reg   [5:0] add_ln53_12_reg_4376_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_1858_p2;
reg   [5:0] add_ln53_13_reg_4382;
reg   [5:0] add_ln53_13_reg_4382_pp0_iter1_reg;
wire   [63:0] tmp_45_fu_1879_p11;
reg   [63:0] tmp_45_reg_4388;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_48_fu_1918_p11;
reg   [63:0] tmp_48_reg_4393;
wire   [63:0] tmp_49_fu_1997_p11;
reg   [63:0] tmp_49_reg_4438;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] tmp_50_fu_2036_p11;
reg   [63:0] tmp_50_reg_4443;
wire   [5:0] trunc_ln54_fu_2059_p1;
reg   [5:0] trunc_ln54_reg_4448;
reg   [5:0] trunc_ln54_reg_4448_pp0_iter1_reg;
wire   [63:0] tmp_51_fu_2099_p11;
reg   [63:0] tmp_51_reg_4473;
reg   [63:0] min_p_1_reg_4478;
wire   [0:0] and_ln55_1_fu_2203_p2;
reg   [0:0] and_ln55_1_reg_4485;
wire   [63:0] min_p_3_fu_2209_p3;
reg   [63:0] min_p_3_reg_4491;
wire   [0:0] and_ln55_3_fu_2293_p2;
reg   [0:0] and_ln55_3_reg_4498;
wire   [63:0] min_p_5_fu_2299_p3;
reg   [63:0] min_p_5_reg_4504;
wire   [0:0] and_ln55_5_fu_2383_p2;
reg   [0:0] and_ln55_5_reg_4511;
wire   [63:0] min_p_7_fu_2389_p3;
reg   [63:0] min_p_7_reg_4517;
wire   [0:0] and_ln55_7_fu_2473_p2;
reg   [0:0] and_ln55_7_reg_4524;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_8_reg_4530;
wire   [63:0] min_p_9_fu_2512_p3;
reg   [63:0] min_p_9_reg_4537;
wire   [7:0] min_s_7_fu_2522_p3;
reg   [7:0] min_s_7_reg_4544;
wire   [0:0] and_ln55_9_fu_2606_p2;
reg   [0:0] and_ln55_9_reg_4549;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_10_reg_4555;
wire   [63:0] min_p_11_fu_2612_p3;
reg   [63:0] min_p_11_reg_4562;
wire   [0:0] and_ln55_11_fu_2696_p2;
reg   [0:0] and_ln55_11_reg_4569;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_12_reg_4575;
wire   [63:0] min_p_13_fu_2711_p3;
reg   [63:0] min_p_13_reg_4582;
wire   [7:0] min_s_9_fu_2721_p3;
reg   [7:0] min_s_9_reg_4589;
wire   [0:0] and_ln55_13_fu_2805_p2;
reg   [0:0] and_ln55_13_reg_4594;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_14_reg_4600;
wire   [63:0] min_p_15_fu_2811_p3;
reg   [63:0] min_p_15_reg_4607;
wire   [0:0] and_ln55_15_fu_2895_p2;
reg   [0:0] and_ln55_15_reg_4614;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_17_fu_2910_p3;
reg   [63:0] min_p_17_reg_4620;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_2920_p3;
reg   [7:0] min_s_11_reg_4627;
wire   [0:0] and_ln55_17_fu_3003_p2;
reg   [0:0] and_ln55_17_reg_4632;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_19_fu_3009_p3;
reg   [63:0] min_p_19_reg_4638;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_3092_p2;
reg   [0:0] and_ln55_19_reg_4645;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_21_fu_3107_p3;
reg   [63:0] min_p_21_reg_4651;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_3117_p3;
reg   [7:0] min_s_13_reg_4658;
wire   [0:0] and_ln55_21_fu_3200_p2;
reg   [0:0] and_ln55_21_reg_4663;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_23_fu_3206_p3;
reg   [63:0] min_p_23_reg_4669;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_3299_p2;
reg   [0:0] and_ln55_23_reg_4676;
wire   [63:0] min_p_25_fu_3314_p3;
reg   [63:0] min_p_25_reg_4682;
wire   [7:0] min_s_15_fu_3324_p3;
reg   [7:0] min_s_15_reg_4689;
wire   [0:0] and_ln55_25_fu_3407_p2;
reg   [0:0] and_ln55_25_reg_4694;
wire   [63:0] min_p_27_fu_3413_p3;
reg   [63:0] min_p_27_reg_4700;
wire   [0:0] and_ln55_27_fu_3496_p2;
reg   [0:0] and_ln55_27_reg_4707;
wire   [63:0] min_p_29_fu_3502_p3;
reg   [63:0] min_p_29_reg_4713;
wire   [0:0] and_ln55_29_fu_3585_p2;
reg   [0:0] and_ln55_29_reg_4720;
wire   [63:0] min_p_31_fu_3591_p3;
reg   [63:0] min_p_31_reg_4726;
wire   [7:0] min_s_18_fu_3619_p3;
reg   [7:0] min_s_18_reg_4733;
reg   [0:0] tmp_65_reg_4738;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_1044_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_1077_p1;
wire   [63:0] zext_ln54_1_fu_1162_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1182_p1;
wire   [63:0] zext_ln54_18_fu_1218_p1;
wire   [63:0] zext_ln54_3_fu_1313_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1333_p1;
wire   [63:0] zext_ln54_5_fu_1441_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1461_p1;
wire   [63:0] zext_ln54_7_fu_1569_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1589_p1;
wire   [63:0] zext_ln54_9_fu_1697_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1717_p1;
wire   [63:0] zext_ln54_11_fu_1825_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_1845_p1;
wire   [63:0] zext_ln54_13_fu_1953_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1973_p1;
wire   [63:0] zext_ln54_15_fu_2075_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_162;
wire   [63:0] min_p_33_fu_3709_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_166;
wire   [7:0] min_s_19_fu_3719_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_170;
wire   [5:0] add_ln53_15_fu_3212_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
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
reg   [63:0] grp_fu_967_p0;
reg   [63:0] grp_fu_967_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_971_p0;
reg   [63:0] grp_fu_971_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [1:0] lshr_ln8_2_fu_1026_p4;
wire   [9:0] tmp_s_fu_1036_p3;
wire   [9:0] shl_ln2_fu_1063_p3;
wire   [9:0] add_ln54_fu_1071_p2;
wire   [6:0] zext_ln21_fu_1022_p1;
wire   [63:0] tmp_1_fu_1127_p2;
wire   [63:0] tmp_1_fu_1127_p4;
wire   [63:0] tmp_1_fu_1127_p6;
wire   [63:0] tmp_1_fu_1127_p8;
wire   [63:0] tmp_1_fu_1127_p9;
wire   [9:0] shl_ln54_1_fu_1150_p3;
wire   [9:0] add_ln54_1_fu_1157_p2;
wire   [9:0] shl_ln54_2_fu_1170_p3;
wire   [9:0] add_ln54_2_fu_1177_p2;
wire   [2:0] lshr_ln9_3_fu_1200_p4;
wire   [9:0] zext_ln54_17_fu_1209_p1;
wire   [9:0] add_ln54_16_fu_1213_p2;
wire   [63:0] tmp_5_fu_1239_p2;
wire   [63:0] tmp_5_fu_1239_p4;
wire   [63:0] tmp_5_fu_1239_p6;
wire   [63:0] tmp_5_fu_1239_p8;
wire   [63:0] tmp_5_fu_1239_p9;
wire   [63:0] tmp_9_fu_1278_p2;
wire   [63:0] tmp_9_fu_1278_p4;
wire   [63:0] tmp_9_fu_1278_p6;
wire   [63:0] tmp_9_fu_1278_p8;
wire   [63:0] tmp_9_fu_1278_p9;
wire   [9:0] shl_ln54_3_fu_1301_p3;
wire   [9:0] add_ln54_3_fu_1308_p2;
wire   [9:0] shl_ln54_4_fu_1321_p3;
wire   [9:0] add_ln54_4_fu_1328_p2;
wire   [63:0] tmp_13_fu_1367_p2;
wire   [63:0] tmp_13_fu_1367_p4;
wire   [63:0] tmp_13_fu_1367_p6;
wire   [63:0] tmp_13_fu_1367_p8;
wire   [63:0] tmp_13_fu_1367_p9;
wire   [63:0] tmp_17_fu_1406_p2;
wire   [63:0] tmp_17_fu_1406_p4;
wire   [63:0] tmp_17_fu_1406_p6;
wire   [63:0] tmp_17_fu_1406_p8;
wire   [63:0] tmp_17_fu_1406_p9;
wire   [9:0] shl_ln54_5_fu_1429_p3;
wire   [9:0] add_ln54_5_fu_1436_p2;
wire   [9:0] shl_ln54_6_fu_1449_p3;
wire   [9:0] add_ln54_6_fu_1456_p2;
wire   [63:0] tmp_21_fu_1495_p2;
wire   [63:0] tmp_21_fu_1495_p4;
wire   [63:0] tmp_21_fu_1495_p6;
wire   [63:0] tmp_21_fu_1495_p8;
wire   [63:0] tmp_21_fu_1495_p9;
wire   [63:0] tmp_25_fu_1534_p2;
wire   [63:0] tmp_25_fu_1534_p4;
wire   [63:0] tmp_25_fu_1534_p6;
wire   [63:0] tmp_25_fu_1534_p8;
wire   [63:0] tmp_25_fu_1534_p9;
wire   [9:0] shl_ln54_7_fu_1557_p3;
wire   [9:0] add_ln54_7_fu_1564_p2;
wire   [9:0] shl_ln54_8_fu_1577_p3;
wire   [9:0] add_ln54_8_fu_1584_p2;
wire   [63:0] tmp_29_fu_1623_p2;
wire   [63:0] tmp_29_fu_1623_p4;
wire   [63:0] tmp_29_fu_1623_p6;
wire   [63:0] tmp_29_fu_1623_p8;
wire   [63:0] tmp_29_fu_1623_p9;
wire   [63:0] tmp_33_fu_1662_p2;
wire   [63:0] tmp_33_fu_1662_p4;
wire   [63:0] tmp_33_fu_1662_p6;
wire   [63:0] tmp_33_fu_1662_p8;
wire   [63:0] tmp_33_fu_1662_p9;
wire   [9:0] shl_ln54_9_fu_1685_p3;
wire   [9:0] add_ln54_9_fu_1692_p2;
wire   [9:0] shl_ln54_s_fu_1705_p3;
wire   [9:0] add_ln54_10_fu_1712_p2;
wire   [63:0] tmp_37_fu_1751_p2;
wire   [63:0] tmp_37_fu_1751_p4;
wire   [63:0] tmp_37_fu_1751_p6;
wire   [63:0] tmp_37_fu_1751_p8;
wire   [63:0] tmp_37_fu_1751_p9;
wire   [63:0] tmp_41_fu_1790_p2;
wire   [63:0] tmp_41_fu_1790_p4;
wire   [63:0] tmp_41_fu_1790_p6;
wire   [63:0] tmp_41_fu_1790_p8;
wire   [63:0] tmp_41_fu_1790_p9;
wire   [9:0] shl_ln54_10_fu_1813_p3;
wire   [9:0] add_ln54_11_fu_1820_p2;
wire   [9:0] shl_ln54_11_fu_1833_p3;
wire   [9:0] add_ln54_12_fu_1840_p2;
wire   [63:0] tmp_45_fu_1879_p2;
wire   [63:0] tmp_45_fu_1879_p4;
wire   [63:0] tmp_45_fu_1879_p6;
wire   [63:0] tmp_45_fu_1879_p8;
wire   [63:0] tmp_45_fu_1879_p9;
wire   [63:0] tmp_48_fu_1918_p2;
wire   [63:0] tmp_48_fu_1918_p4;
wire   [63:0] tmp_48_fu_1918_p6;
wire   [63:0] tmp_48_fu_1918_p8;
wire   [63:0] tmp_48_fu_1918_p9;
wire   [9:0] shl_ln54_12_fu_1941_p3;
wire   [9:0] add_ln54_13_fu_1948_p2;
wire   [9:0] shl_ln54_13_fu_1961_p3;
wire   [9:0] add_ln54_14_fu_1968_p2;
wire   [63:0] tmp_49_fu_1997_p2;
wire   [63:0] tmp_49_fu_1997_p4;
wire   [63:0] tmp_49_fu_1997_p6;
wire   [63:0] tmp_49_fu_1997_p8;
wire   [63:0] tmp_49_fu_1997_p9;
wire   [63:0] tmp_50_fu_2036_p2;
wire   [63:0] tmp_50_fu_2036_p4;
wire   [63:0] tmp_50_fu_2036_p6;
wire   [63:0] tmp_50_fu_2036_p8;
wire   [63:0] tmp_50_fu_2036_p9;
wire   [9:0] shl_ln54_14_fu_2062_p3;
wire   [9:0] add_ln54_15_fu_2070_p2;
wire   [63:0] tmp_51_fu_2099_p2;
wire   [63:0] tmp_51_fu_2099_p4;
wire   [63:0] tmp_51_fu_2099_p6;
wire   [63:0] tmp_51_fu_2099_p8;
wire   [63:0] tmp_51_fu_2099_p9;
wire   [63:0] bitcast_ln55_fu_2126_p1;
wire   [63:0] bitcast_ln55_1_fu_2144_p1;
wire   [10:0] tmp_2_fu_2130_p4;
wire   [51:0] trunc_ln55_fu_2140_p1;
wire   [0:0] icmp_ln55_1_fu_2167_p2;
wire   [0:0] icmp_ln55_fu_2161_p2;
wire   [10:0] tmp_3_fu_2147_p4;
wire   [51:0] trunc_ln55_1_fu_2157_p1;
wire   [0:0] icmp_ln55_3_fu_2185_p2;
wire   [0:0] icmp_ln55_2_fu_2179_p2;
wire   [0:0] or_ln55_fu_2173_p2;
wire   [0:0] and_ln55_fu_2197_p2;
wire   [0:0] or_ln55_1_fu_2191_p2;
wire   [63:0] bitcast_ln55_2_fu_2216_p1;
wire   [63:0] bitcast_ln55_3_fu_2234_p1;
wire   [10:0] tmp_6_fu_2220_p4;
wire   [51:0] trunc_ln55_2_fu_2230_p1;
wire   [0:0] icmp_ln55_5_fu_2257_p2;
wire   [0:0] icmp_ln55_4_fu_2251_p2;
wire   [10:0] tmp_7_fu_2237_p4;
wire   [51:0] trunc_ln55_3_fu_2247_p1;
wire   [0:0] icmp_ln55_7_fu_2275_p2;
wire   [0:0] icmp_ln55_6_fu_2269_p2;
wire   [0:0] or_ln55_3_fu_2281_p2;
wire   [0:0] or_ln55_2_fu_2263_p2;
wire   [0:0] and_ln55_2_fu_2287_p2;
wire   [63:0] bitcast_ln55_4_fu_2306_p1;
wire   [63:0] bitcast_ln55_5_fu_2324_p1;
wire   [10:0] tmp_10_fu_2310_p4;
wire   [51:0] trunc_ln55_4_fu_2320_p1;
wire   [0:0] icmp_ln55_9_fu_2347_p2;
wire   [0:0] icmp_ln55_8_fu_2341_p2;
wire   [10:0] tmp_11_fu_2327_p4;
wire   [51:0] trunc_ln55_5_fu_2337_p1;
wire   [0:0] icmp_ln55_11_fu_2365_p2;
wire   [0:0] icmp_ln55_10_fu_2359_p2;
wire   [0:0] or_ln55_5_fu_2371_p2;
wire   [0:0] or_ln55_4_fu_2353_p2;
wire   [0:0] and_ln55_4_fu_2377_p2;
wire   [63:0] bitcast_ln55_6_fu_2396_p1;
wire   [63:0] bitcast_ln55_7_fu_2414_p1;
wire   [10:0] tmp_14_fu_2400_p4;
wire   [51:0] trunc_ln55_6_fu_2410_p1;
wire   [0:0] icmp_ln55_13_fu_2437_p2;
wire   [0:0] icmp_ln55_12_fu_2431_p2;
wire   [10:0] tmp_15_fu_2417_p4;
wire   [51:0] trunc_ln55_7_fu_2427_p1;
wire   [0:0] icmp_ln55_15_fu_2455_p2;
wire   [0:0] icmp_ln55_14_fu_2449_p2;
wire   [0:0] or_ln55_7_fu_2461_p2;
wire   [0:0] or_ln55_6_fu_2443_p2;
wire   [0:0] and_ln55_6_fu_2467_p2;
wire   [7:0] zext_ln55_fu_2482_p1;
wire   [7:0] zext_ln55_1_fu_2492_p1;
wire   [7:0] min_s_4_fu_2485_p3;
wire   [7:0] zext_ln55_2_fu_2502_p1;
wire   [7:0] min_s_5_fu_2495_p3;
wire   [7:0] zext_ln55_3_fu_2519_p1;
wire   [7:0] min_s_6_fu_2505_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_2529_p1;
wire   [63:0] bitcast_ln55_9_fu_2547_p1;
wire   [10:0] tmp_18_fu_2533_p4;
wire   [51:0] trunc_ln55_8_fu_2543_p1;
wire   [0:0] icmp_ln55_17_fu_2570_p2;
wire   [0:0] icmp_ln55_16_fu_2564_p2;
wire   [10:0] tmp_19_fu_2550_p4;
wire   [51:0] trunc_ln55_9_fu_2560_p1;
wire   [0:0] icmp_ln55_19_fu_2588_p2;
wire   [0:0] icmp_ln55_18_fu_2582_p2;
wire   [0:0] or_ln55_9_fu_2594_p2;
wire   [0:0] or_ln55_8_fu_2576_p2;
wire   [0:0] and_ln55_8_fu_2600_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_2619_p1;
wire   [63:0] bitcast_ln55_11_fu_2637_p1;
wire   [10:0] tmp_22_fu_2623_p4;
wire   [51:0] trunc_ln55_10_fu_2633_p1;
wire   [0:0] icmp_ln55_21_fu_2660_p2;
wire   [0:0] icmp_ln55_20_fu_2654_p2;
wire   [10:0] tmp_23_fu_2640_p4;
wire   [51:0] trunc_ln55_11_fu_2650_p1;
wire   [0:0] icmp_ln55_23_fu_2678_p2;
wire   [0:0] icmp_ln55_22_fu_2672_p2;
wire   [0:0] or_ln55_11_fu_2684_p2;
wire   [0:0] or_ln55_10_fu_2666_p2;
wire   [0:0] and_ln55_10_fu_2690_p2;
wire   [7:0] zext_ln55_4_fu_2702_p1;
wire   [7:0] zext_ln55_5_fu_2718_p1;
wire   [7:0] min_s_8_fu_2705_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_2728_p1;
wire   [63:0] bitcast_ln55_13_fu_2746_p1;
wire   [10:0] tmp_26_fu_2732_p4;
wire   [51:0] trunc_ln55_12_fu_2742_p1;
wire   [0:0] icmp_ln55_25_fu_2769_p2;
wire   [0:0] icmp_ln55_24_fu_2763_p2;
wire   [10:0] tmp_27_fu_2749_p4;
wire   [51:0] trunc_ln55_13_fu_2759_p1;
wire   [0:0] icmp_ln55_27_fu_2787_p2;
wire   [0:0] icmp_ln55_26_fu_2781_p2;
wire   [0:0] or_ln55_13_fu_2793_p2;
wire   [0:0] or_ln55_12_fu_2775_p2;
wire   [0:0] and_ln55_12_fu_2799_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_2818_p1;
wire   [63:0] bitcast_ln55_15_fu_2836_p1;
wire   [10:0] tmp_30_fu_2822_p4;
wire   [51:0] trunc_ln55_14_fu_2832_p1;
wire   [0:0] icmp_ln55_29_fu_2859_p2;
wire   [0:0] icmp_ln55_28_fu_2853_p2;
wire   [10:0] tmp_31_fu_2839_p4;
wire   [51:0] trunc_ln55_15_fu_2849_p1;
wire   [0:0] icmp_ln55_31_fu_2877_p2;
wire   [0:0] icmp_ln55_30_fu_2871_p2;
wire   [0:0] or_ln55_15_fu_2883_p2;
wire   [0:0] or_ln55_14_fu_2865_p2;
wire   [0:0] and_ln55_14_fu_2889_p2;
wire   [7:0] zext_ln55_6_fu_2901_p1;
wire   [7:0] zext_ln55_7_fu_2917_p1;
wire   [7:0] min_s_10_fu_2904_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_2927_p1;
wire   [63:0] bitcast_ln55_17_fu_2944_p1;
wire   [10:0] tmp_34_fu_2930_p4;
wire   [51:0] trunc_ln55_16_fu_2940_p1;
wire   [0:0] icmp_ln55_33_fu_2967_p2;
wire   [0:0] icmp_ln55_32_fu_2961_p2;
wire   [10:0] tmp_35_fu_2947_p4;
wire   [51:0] trunc_ln55_17_fu_2957_p1;
wire   [0:0] icmp_ln55_35_fu_2985_p2;
wire   [0:0] icmp_ln55_34_fu_2979_p2;
wire   [0:0] or_ln55_17_fu_2991_p2;
wire   [0:0] or_ln55_16_fu_2973_p2;
wire   [0:0] and_ln55_16_fu_2997_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_3015_p1;
wire   [63:0] bitcast_ln55_19_fu_3033_p1;
wire   [10:0] tmp_38_fu_3019_p4;
wire   [51:0] trunc_ln55_18_fu_3029_p1;
wire   [0:0] icmp_ln55_37_fu_3056_p2;
wire   [0:0] icmp_ln55_36_fu_3050_p2;
wire   [10:0] tmp_39_fu_3036_p4;
wire   [51:0] trunc_ln55_19_fu_3046_p1;
wire   [0:0] icmp_ln55_39_fu_3074_p2;
wire   [0:0] icmp_ln55_38_fu_3068_p2;
wire   [0:0] or_ln55_19_fu_3080_p2;
wire   [0:0] or_ln55_18_fu_3062_p2;
wire   [0:0] and_ln55_18_fu_3086_p2;
wire   [7:0] zext_ln55_8_fu_3098_p1;
wire   [7:0] zext_ln55_9_fu_3114_p1;
wire   [7:0] min_s_12_fu_3101_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_3124_p1;
wire   [63:0] bitcast_ln55_21_fu_3141_p1;
wire   [10:0] tmp_42_fu_3127_p4;
wire   [51:0] trunc_ln55_20_fu_3137_p1;
wire   [0:0] icmp_ln55_41_fu_3164_p2;
wire   [0:0] icmp_ln55_40_fu_3158_p2;
wire   [10:0] tmp_43_fu_3144_p4;
wire   [51:0] trunc_ln55_21_fu_3154_p1;
wire   [0:0] icmp_ln55_43_fu_3182_p2;
wire   [0:0] icmp_ln55_42_fu_3176_p2;
wire   [0:0] or_ln55_21_fu_3188_p2;
wire   [0:0] or_ln55_20_fu_3170_p2;
wire   [0:0] and_ln55_20_fu_3194_p2;
wire   [63:0] bitcast_ln55_22_fu_3222_p1;
wire   [63:0] bitcast_ln55_23_fu_3240_p1;
wire   [10:0] tmp_46_fu_3226_p4;
wire   [51:0] trunc_ln55_22_fu_3236_p1;
wire   [0:0] icmp_ln55_45_fu_3263_p2;
wire   [0:0] icmp_ln55_44_fu_3257_p2;
wire   [10:0] tmp_47_fu_3243_p4;
wire   [51:0] trunc_ln55_23_fu_3253_p1;
wire   [0:0] icmp_ln55_47_fu_3281_p2;
wire   [0:0] icmp_ln55_46_fu_3275_p2;
wire   [0:0] or_ln55_23_fu_3287_p2;
wire   [0:0] or_ln55_22_fu_3269_p2;
wire   [0:0] and_ln55_22_fu_3293_p2;
wire   [7:0] zext_ln55_10_fu_3305_p1;
wire   [7:0] zext_ln55_11_fu_3321_p1;
wire   [7:0] min_s_14_fu_3308_p3;
wire   [63:0] bitcast_ln55_24_fu_3331_p1;
wire   [63:0] bitcast_ln55_25_fu_3348_p1;
wire   [10:0] tmp_53_fu_3334_p4;
wire   [51:0] trunc_ln55_24_fu_3344_p1;
wire   [0:0] icmp_ln55_49_fu_3371_p2;
wire   [0:0] icmp_ln55_48_fu_3365_p2;
wire   [10:0] tmp_54_fu_3351_p4;
wire   [51:0] trunc_ln55_25_fu_3361_p1;
wire   [0:0] icmp_ln55_51_fu_3389_p2;
wire   [0:0] icmp_ln55_50_fu_3383_p2;
wire   [0:0] or_ln55_25_fu_3395_p2;
wire   [0:0] or_ln55_24_fu_3377_p2;
wire   [0:0] and_ln55_24_fu_3401_p2;
wire   [63:0] bitcast_ln55_26_fu_3419_p1;
wire   [63:0] bitcast_ln55_27_fu_3437_p1;
wire   [10:0] tmp_56_fu_3423_p4;
wire   [51:0] trunc_ln55_26_fu_3433_p1;
wire   [0:0] icmp_ln55_53_fu_3460_p2;
wire   [0:0] icmp_ln55_52_fu_3454_p2;
wire   [10:0] tmp_57_fu_3440_p4;
wire   [51:0] trunc_ln55_27_fu_3450_p1;
wire   [0:0] icmp_ln55_55_fu_3478_p2;
wire   [0:0] icmp_ln55_54_fu_3472_p2;
wire   [0:0] or_ln55_27_fu_3484_p2;
wire   [0:0] or_ln55_26_fu_3466_p2;
wire   [0:0] and_ln55_26_fu_3490_p2;
wire   [63:0] bitcast_ln55_28_fu_3509_p1;
wire   [63:0] bitcast_ln55_29_fu_3526_p1;
wire   [10:0] tmp_59_fu_3512_p4;
wire   [51:0] trunc_ln55_28_fu_3522_p1;
wire   [0:0] icmp_ln55_57_fu_3549_p2;
wire   [0:0] icmp_ln55_56_fu_3543_p2;
wire   [10:0] tmp_60_fu_3529_p4;
wire   [51:0] trunc_ln55_29_fu_3539_p1;
wire   [0:0] icmp_ln55_59_fu_3567_p2;
wire   [0:0] icmp_ln55_58_fu_3561_p2;
wire   [0:0] or_ln55_29_fu_3573_p2;
wire   [0:0] or_ln55_28_fu_3555_p2;
wire   [0:0] and_ln55_28_fu_3579_p2;
wire   [7:0] zext_ln55_12_fu_3597_p1;
wire   [7:0] zext_ln55_13_fu_3606_p1;
wire   [7:0] min_s_16_fu_3600_p3;
wire   [7:0] zext_ln55_14_fu_3616_p1;
wire   [7:0] min_s_17_fu_3609_p3;
wire   [63:0] bitcast_ln55_30_fu_3627_p1;
wire   [63:0] bitcast_ln55_31_fu_3645_p1;
wire   [10:0] tmp_63_fu_3631_p4;
wire   [51:0] trunc_ln55_30_fu_3641_p1;
wire   [0:0] icmp_ln55_61_fu_3668_p2;
wire   [0:0] icmp_ln55_60_fu_3662_p2;
wire   [10:0] tmp_64_fu_3648_p4;
wire   [51:0] trunc_ln55_31_fu_3658_p1;
wire   [0:0] icmp_ln55_63_fu_3686_p2;
wire   [0:0] icmp_ln55_62_fu_3680_p2;
wire   [0:0] or_ln55_31_fu_3692_p2;
wire   [0:0] or_ln55_30_fu_3674_p2;
wire   [0:0] and_ln55_30_fu_3698_p2;
wire   [0:0] and_ln55_31_fu_3704_p2;
wire   [7:0] zext_ln55_15_fu_3716_p1;
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
wire   [1:0] tmp_1_fu_1127_p1;
wire   [1:0] tmp_1_fu_1127_p3;
wire  signed [1:0] tmp_1_fu_1127_p5;
wire  signed [1:0] tmp_1_fu_1127_p7;
wire   [1:0] tmp_5_fu_1239_p1;
wire   [1:0] tmp_5_fu_1239_p3;
wire  signed [1:0] tmp_5_fu_1239_p5;
wire  signed [1:0] tmp_5_fu_1239_p7;
wire   [1:0] tmp_9_fu_1278_p1;
wire   [1:0] tmp_9_fu_1278_p3;
wire  signed [1:0] tmp_9_fu_1278_p5;
wire  signed [1:0] tmp_9_fu_1278_p7;
wire   [1:0] tmp_13_fu_1367_p1;
wire   [1:0] tmp_13_fu_1367_p3;
wire  signed [1:0] tmp_13_fu_1367_p5;
wire  signed [1:0] tmp_13_fu_1367_p7;
wire   [1:0] tmp_17_fu_1406_p1;
wire   [1:0] tmp_17_fu_1406_p3;
wire  signed [1:0] tmp_17_fu_1406_p5;
wire  signed [1:0] tmp_17_fu_1406_p7;
wire   [1:0] tmp_21_fu_1495_p1;
wire   [1:0] tmp_21_fu_1495_p3;
wire  signed [1:0] tmp_21_fu_1495_p5;
wire  signed [1:0] tmp_21_fu_1495_p7;
wire   [1:0] tmp_25_fu_1534_p1;
wire   [1:0] tmp_25_fu_1534_p3;
wire  signed [1:0] tmp_25_fu_1534_p5;
wire  signed [1:0] tmp_25_fu_1534_p7;
wire   [1:0] tmp_29_fu_1623_p1;
wire   [1:0] tmp_29_fu_1623_p3;
wire  signed [1:0] tmp_29_fu_1623_p5;
wire  signed [1:0] tmp_29_fu_1623_p7;
wire   [1:0] tmp_33_fu_1662_p1;
wire   [1:0] tmp_33_fu_1662_p3;
wire  signed [1:0] tmp_33_fu_1662_p5;
wire  signed [1:0] tmp_33_fu_1662_p7;
wire   [1:0] tmp_37_fu_1751_p1;
wire   [1:0] tmp_37_fu_1751_p3;
wire  signed [1:0] tmp_37_fu_1751_p5;
wire  signed [1:0] tmp_37_fu_1751_p7;
wire   [1:0] tmp_41_fu_1790_p1;
wire   [1:0] tmp_41_fu_1790_p3;
wire  signed [1:0] tmp_41_fu_1790_p5;
wire  signed [1:0] tmp_41_fu_1790_p7;
wire   [1:0] tmp_45_fu_1879_p1;
wire   [1:0] tmp_45_fu_1879_p3;
wire  signed [1:0] tmp_45_fu_1879_p5;
wire  signed [1:0] tmp_45_fu_1879_p7;
wire   [1:0] tmp_48_fu_1918_p1;
wire   [1:0] tmp_48_fu_1918_p3;
wire  signed [1:0] tmp_48_fu_1918_p5;
wire  signed [1:0] tmp_48_fu_1918_p7;
wire   [1:0] tmp_49_fu_1997_p1;
wire   [1:0] tmp_49_fu_1997_p3;
wire  signed [1:0] tmp_49_fu_1997_p5;
wire  signed [1:0] tmp_49_fu_1997_p7;
wire   [1:0] tmp_50_fu_2036_p1;
wire   [1:0] tmp_50_fu_2036_p3;
wire  signed [1:0] tmp_50_fu_2036_p5;
wire  signed [1:0] tmp_50_fu_2036_p7;
wire   [1:0] tmp_51_fu_2099_p1;
wire   [1:0] tmp_51_fu_2099_p3;
wire  signed [1:0] tmp_51_fu_2099_p5;
wire  signed [1:0] tmp_51_fu_2099_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_162 = 64'd0;
#0 min_s_fu_166 = 8'd0;
#0 min_s_1_fu_170 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U115(.din0(tmp_1_fu_1127_p2),.din1(tmp_1_fu_1127_p4),.din2(tmp_1_fu_1127_p6),.din3(tmp_1_fu_1127_p8),.def(tmp_1_fu_1127_p9),.sel(empty),.dout(tmp_1_fu_1127_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U116(.din0(tmp_5_fu_1239_p2),.din1(tmp_5_fu_1239_p4),.din2(tmp_5_fu_1239_p6),.din3(tmp_5_fu_1239_p8),.def(tmp_5_fu_1239_p9),.sel(empty),.dout(tmp_5_fu_1239_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U117(.din0(tmp_9_fu_1278_p2),.din1(tmp_9_fu_1278_p4),.din2(tmp_9_fu_1278_p6),.din3(tmp_9_fu_1278_p8),.def(tmp_9_fu_1278_p9),.sel(empty),.dout(tmp_9_fu_1278_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U118(.din0(tmp_13_fu_1367_p2),.din1(tmp_13_fu_1367_p4),.din2(tmp_13_fu_1367_p6),.din3(tmp_13_fu_1367_p8),.def(tmp_13_fu_1367_p9),.sel(empty),.dout(tmp_13_fu_1367_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U119(.din0(tmp_17_fu_1406_p2),.din1(tmp_17_fu_1406_p4),.din2(tmp_17_fu_1406_p6),.din3(tmp_17_fu_1406_p8),.def(tmp_17_fu_1406_p9),.sel(empty),.dout(tmp_17_fu_1406_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U120(.din0(tmp_21_fu_1495_p2),.din1(tmp_21_fu_1495_p4),.din2(tmp_21_fu_1495_p6),.din3(tmp_21_fu_1495_p8),.def(tmp_21_fu_1495_p9),.sel(empty),.dout(tmp_21_fu_1495_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U121(.din0(tmp_25_fu_1534_p2),.din1(tmp_25_fu_1534_p4),.din2(tmp_25_fu_1534_p6),.din3(tmp_25_fu_1534_p8),.def(tmp_25_fu_1534_p9),.sel(empty),.dout(tmp_25_fu_1534_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U122(.din0(tmp_29_fu_1623_p2),.din1(tmp_29_fu_1623_p4),.din2(tmp_29_fu_1623_p6),.din3(tmp_29_fu_1623_p8),.def(tmp_29_fu_1623_p9),.sel(empty),.dout(tmp_29_fu_1623_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U123(.din0(tmp_33_fu_1662_p2),.din1(tmp_33_fu_1662_p4),.din2(tmp_33_fu_1662_p6),.din3(tmp_33_fu_1662_p8),.def(tmp_33_fu_1662_p9),.sel(empty),.dout(tmp_33_fu_1662_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U124(.din0(tmp_37_fu_1751_p2),.din1(tmp_37_fu_1751_p4),.din2(tmp_37_fu_1751_p6),.din3(tmp_37_fu_1751_p8),.def(tmp_37_fu_1751_p9),.sel(empty),.dout(tmp_37_fu_1751_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U125(.din0(tmp_41_fu_1790_p2),.din1(tmp_41_fu_1790_p4),.din2(tmp_41_fu_1790_p6),.din3(tmp_41_fu_1790_p8),.def(tmp_41_fu_1790_p9),.sel(empty),.dout(tmp_41_fu_1790_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U126(.din0(tmp_45_fu_1879_p2),.din1(tmp_45_fu_1879_p4),.din2(tmp_45_fu_1879_p6),.din3(tmp_45_fu_1879_p8),.def(tmp_45_fu_1879_p9),.sel(empty),.dout(tmp_45_fu_1879_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U127(.din0(tmp_48_fu_1918_p2),.din1(tmp_48_fu_1918_p4),.din2(tmp_48_fu_1918_p6),.din3(tmp_48_fu_1918_p8),.def(tmp_48_fu_1918_p9),.sel(empty),.dout(tmp_48_fu_1918_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U128(.din0(tmp_49_fu_1997_p2),.din1(tmp_49_fu_1997_p4),.din2(tmp_49_fu_1997_p6),.din3(tmp_49_fu_1997_p8),.def(tmp_49_fu_1997_p9),.sel(empty),.dout(tmp_49_fu_1997_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U129(.din0(tmp_50_fu_2036_p2),.din1(tmp_50_fu_2036_p4),.din2(tmp_50_fu_2036_p6),.din3(tmp_50_fu_2036_p8),.def(tmp_50_fu_2036_p9),.sel(empty),.dout(tmp_50_fu_2036_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U130(.din0(tmp_51_fu_2099_p2),.din1(tmp_51_fu_2099_p4),.din2(tmp_51_fu_2099_p6),.din3(tmp_51_fu_2099_p8),.def(tmp_51_fu_2099_p9),.sel(empty),.dout(tmp_51_fu_2099_p11));
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
        min_p_fu_162 <= min_p_36;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_62_reg_3932_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_162 <= min_p_33_fu_3709_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_1_fu_170 <= 6'd1;
    end else if (((tmp_62_reg_3932 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_170 <= add_ln53_15_fu_3212_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_fu_166 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_62_reg_3932_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_166 <= min_s_19_fu_3719_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln53_10_reg_4314 <= add_ln53_10_fu_1725_p2;
        add_ln53_11_reg_4320 <= add_ln53_11_fu_1730_p2;
        add_ln53_11_reg_4320_pp0_iter1_reg <= add_ln53_11_reg_4320;
        min_p_29_reg_4713 <= min_p_29_fu_3502_p3;
        tmp_29_reg_4264 <= tmp_29_fu_1623_p11;
        tmp_33_reg_4269 <= tmp_33_fu_1662_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln53_12_reg_4376 <= add_ln53_12_fu_1853_p2;
        add_ln53_12_reg_4376_pp0_iter1_reg <= add_ln53_12_reg_4376;
        add_ln53_13_reg_4382 <= add_ln53_13_fu_1858_p2;
        add_ln53_13_reg_4382_pp0_iter1_reg <= add_ln53_13_reg_4382;
        and_ln55_29_reg_4720 <= and_ln55_29_fu_3585_p2;
        tmp_37_reg_4326 <= tmp_37_fu_1751_p11;
        tmp_41_reg_4331 <= tmp_41_fu_1790_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_14_reg_3926 <= add_ln53_14_fu_1097_p2;
        add_ln53_1_reg_3920 <= add_ln53_1_fu_1091_p2;
        add_ln53_reg_3914 <= add_ln53_fu_1085_p2;
        and_ln55_23_reg_4676 <= and_ln55_23_fu_3299_p2;
        s_reg_3801 <= ap_sig_allocacmp_s;
        tmp_62_reg_3932 <= add_ln53_14_fu_1097_p2[32'd6];
        tmp_62_reg_3932_pp0_iter1_reg <= tmp_62_reg_3932;
        zext_ln52_2_cast_reg_3782[5 : 0] <= zext_ln52_2_cast_fu_1000_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_3996 <= add_ln53_2_fu_1190_p2;
        add_ln53_3_reg_4007 <= add_ln53_3_fu_1195_p2;
        llike_10_load_reg_4038 <= llike_10_q0;
        llike_11_load_reg_4043 <= llike_11_q0;
        llike_12_load_reg_4048 <= llike_12_q0;
        llike_13_load_reg_4053 <= llike_13_q0;
        llike_14_load_reg_4058 <= llike_14_q0;
        llike_15_load_reg_4063 <= llike_15_q0;
        llike_1_load_reg_3936 <= llike_1_q0;
        llike_2_load_reg_3946 <= llike_2_q0;
        llike_3_load_reg_3971 <= llike_3_q0;
        llike_4_load_reg_4002 <= llike_4_q0;
        llike_5_load_reg_4013 <= llike_5_q0;
        llike_6_load_reg_4018 <= llike_6_q0;
        llike_7_load_reg_4023 <= llike_7_q0;
        llike_8_load_reg_4028 <= llike_8_q0;
        llike_9_load_reg_4033 <= llike_9_q0;
        min_p_25_reg_4682 <= min_p_25_fu_3314_p3;
        min_s_15_reg_4689 <= min_s_15_fu_3324_p3;
        tmp_1_reg_3941 <= tmp_1_fu_1127_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_4123 <= add_ln53_4_fu_1341_p2;
        add_ln53_5_reg_4129 <= add_ln53_5_fu_1346_p2;
        and_ln55_25_reg_4694 <= and_ln55_25_fu_3407_p2;
        llike_load_reg_4135 <= llike_q0;
        tmp_5_reg_4073 <= tmp_5_fu_1239_p11;
        tmp_9_reg_4078 <= tmp_9_fu_1278_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_6_reg_4190 <= add_ln53_6_fu_1469_p2;
        add_ln53_7_reg_4196 <= add_ln53_7_fu_1474_p2;
        min_p_27_reg_4700 <= min_p_27_fu_3413_p3;
        tmp_13_reg_4140 <= tmp_13_fu_1367_p11;
        tmp_17_reg_4145 <= tmp_17_fu_1406_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln53_8_reg_4252 <= add_ln53_8_fu_1597_p2;
        add_ln53_9_reg_4258 <= add_ln53_9_fu_1602_p2;
        and_ln55_27_reg_4707 <= and_ln55_27_fu_3496_p2;
        tmp_21_reg_4202 <= tmp_21_fu_1495_p11;
        tmp_25_reg_4207 <= tmp_25_fu_1534_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_4569 <= and_ln55_11_fu_2696_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_4594 <= and_ln55_13_fu_2805_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_4614 <= and_ln55_15_fu_2895_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_4632 <= and_ln55_17_fu_3003_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_4645 <= and_ln55_19_fu_3092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_4485 <= and_ln55_1_fu_2203_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_4663 <= and_ln55_21_fu_3200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_4498 <= and_ln55_3_fu_2293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_4511 <= and_ln55_5_fu_2383_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_4524 <= and_ln55_7_fu_2473_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_4549 <= and_ln55_9_fu_2606_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_11_reg_4562 <= min_p_11_fu_2612_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_13_reg_4582 <= min_p_13_fu_2711_p3;
        min_s_9_reg_4589 <= min_s_9_fu_2721_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_15_reg_4607 <= min_p_15_fu_2811_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_17_reg_4620 <= min_p_17_fu_2910_p3;
        min_s_11_reg_4627 <= min_s_11_fu_2920_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_19_reg_4638 <= min_p_19_fu_3009_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_4478 <= min_p_fu_162;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_21_reg_4651 <= min_p_21_fu_3107_p3;
        min_s_13_reg_4658 <= min_s_13_fu_3117_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_23_reg_4669 <= min_p_23_fu_3206_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_31_reg_4726 <= min_p_31_fu_3591_p3;
        tmp_45_reg_4388 <= tmp_45_fu_1879_p11;
        tmp_48_reg_4393 <= tmp_48_fu_1918_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_4491 <= min_p_3_fu_2209_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_4504 <= min_p_5_fu_2299_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_7_reg_4517 <= min_p_7_fu_2389_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_9_reg_4537 <= min_p_9_fu_2512_p3;
        min_s_7_reg_4544 <= min_s_7_fu_2522_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_4733 <= min_s_18_fu_3619_p3;
        tmp_65_reg_4738 <= grp_fu_1693_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_10_reg_4555 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_12_reg_4575 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_14_reg_4600 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_8_reg_4530 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_975 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_980 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_985 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_990 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_995 <= grp_fu_903_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_49_reg_4438 <= tmp_49_fu_1997_p11;
        tmp_50_reg_4443 <= tmp_50_fu_2036_p11;
        trunc_ln54_reg_4448 <= trunc_ln54_fu_2059_p1;
        trunc_ln54_reg_4448_pp0_iter1_reg <= trunc_ln54_reg_4448;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_51_reg_4473 <= tmp_51_fu_2099_p11;
    end
end
always @ (*) begin
    if (((tmp_62_reg_3932 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_62_reg_3932_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_170;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_967_p0 = llike_load_reg_4135;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_967_p0 = llike_15_load_reg_4063;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_967_p0 = llike_14_load_reg_4058;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_967_p0 = llike_13_load_reg_4053;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_967_p0 = llike_12_load_reg_4048;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_967_p0 = llike_11_load_reg_4043;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_967_p0 = llike_10_load_reg_4038;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_967_p0 = llike_9_load_reg_4033;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_967_p0 = llike_8_load_reg_4028;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_967_p0 = llike_7_load_reg_4023;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_967_p0 = llike_6_load_reg_4018;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_967_p0 = llike_5_load_reg_4013;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_967_p0 = llike_4_load_reg_4002;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_967_p0 = llike_3_load_reg_3971;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_967_p0 = llike_2_load_reg_3946;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_967_p0 = llike_1_load_reg_3936;
        end else begin
            grp_fu_967_p0 = 'bx;
        end
    end else begin
        grp_fu_967_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_967_p1 = tmp_51_reg_4473;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_967_p1 = tmp_50_reg_4443;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_967_p1 = tmp_49_reg_4438;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_967_p1 = tmp_48_reg_4393;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_967_p1 = tmp_45_reg_4388;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_967_p1 = tmp_41_reg_4331;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_967_p1 = tmp_37_reg_4326;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_967_p1 = tmp_33_reg_4269;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_967_p1 = tmp_29_reg_4264;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_967_p1 = tmp_25_reg_4207;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_967_p1 = tmp_21_reg_4202;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_967_p1 = tmp_17_reg_4145;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_967_p1 = tmp_13_reg_4140;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_967_p1 = tmp_9_reg_4078;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_967_p1 = tmp_5_reg_4073;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_967_p1 = tmp_1_reg_3941;
        end else begin
            grp_fu_967_p1 = 'bx;
        end
    end else begin
        grp_fu_967_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_971_p0 = p_14_reg_4600;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_971_p0 = p_12_reg_4575;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_971_p0 = p_10_reg_4555;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_971_p0 = p_8_reg_4530;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_971_p0 = reg_995;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_971_p0 = reg_990;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_971_p0 = reg_985;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_971_p0 = reg_980;
    end else if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_971_p0 = reg_975;
    end else begin
        grp_fu_971_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_971_p1 = min_p_31_fu_3591_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_971_p1 = min_p_29_fu_3502_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_971_p1 = min_p_27_fu_3413_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_971_p1 = min_p_25_fu_3314_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_971_p1 = min_p_23_fu_3206_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_971_p1 = min_p_21_fu_3107_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_971_p1 = min_p_19_fu_3009_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_971_p1 = min_p_17_fu_2910_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_971_p1 = min_p_15_fu_2811_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_971_p1 = min_p_13_fu_2711_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_971_p1 = min_p_11_fu_2612_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_971_p1 = min_p_9_fu_2512_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_971_p1 = min_p_7_fu_2389_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_971_p1 = min_p_5_fu_2299_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_971_p1 = min_p_3_fu_2209_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_971_p1 = min_p_fu_162;
    end else begin
        grp_fu_971_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage8_11001) & (tmp_62_reg_3932_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln54_13_fu_1953_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln54_11_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln54_9_fu_1697_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln54_7_fu_1569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1441_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1313_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1182_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_1077_p1;
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
            transition_0_address1_local = zext_ln54_15_fu_2075_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln54_14_fu_1973_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln54_12_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln54_10_fu_1717_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_8_fu_1589_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1162_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address0_local = zext_ln54_13_fu_1953_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln54_11_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln54_9_fu_1697_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln54_7_fu_1569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1441_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1313_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1182_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_1077_p1;
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
            transition_1_address1_local = zext_ln54_15_fu_2075_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln54_14_fu_1973_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln54_12_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln54_10_fu_1717_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_8_fu_1589_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1162_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_2_address0_local = zext_ln54_13_fu_1953_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address0_local = zext_ln54_11_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address0_local = zext_ln54_9_fu_1697_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address0_local = zext_ln54_7_fu_1569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln54_5_fu_1441_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_1313_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1182_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_1077_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_2_address1_local = zext_ln54_15_fu_2075_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_2_address1_local = zext_ln54_14_fu_1973_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address1_local = zext_ln54_12_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address1_local = zext_ln54_10_fu_1717_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address1_local = zext_ln54_8_fu_1589_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1162_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_3_address0_local = zext_ln54_13_fu_1953_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address0_local = zext_ln54_11_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address0_local = zext_ln54_9_fu_1697_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address0_local = zext_ln54_7_fu_1569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln54_5_fu_1441_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_1313_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1182_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_1077_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_3_address1_local = zext_ln54_15_fu_2075_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_3_address1_local = zext_ln54_14_fu_1973_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address1_local = zext_ln54_12_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address1_local = zext_ln54_10_fu_1717_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address1_local = zext_ln54_8_fu_1589_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1162_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
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
assign add_ln53_10_fu_1725_p2 = (s_reg_3801 + 6'd11);
assign add_ln53_11_fu_1730_p2 = (s_reg_3801 + 6'd12);
assign add_ln53_12_fu_1853_p2 = (s_reg_3801 + 6'd13);
assign add_ln53_13_fu_1858_p2 = (s_reg_3801 + 6'd14);
assign add_ln53_14_fu_1097_p2 = (zext_ln21_fu_1022_p1 + 7'd15);
assign add_ln53_15_fu_3212_p2 = (s_reg_3801 + 6'd16);
assign add_ln53_1_fu_1091_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1190_p2 = (s_reg_3801 + 6'd3);
assign add_ln53_3_fu_1195_p2 = (s_reg_3801 + 6'd4);
assign add_ln53_4_fu_1341_p2 = (s_reg_3801 + 6'd5);
assign add_ln53_5_fu_1346_p2 = (s_reg_3801 + 6'd6);
assign add_ln53_6_fu_1469_p2 = (s_reg_3801 + 6'd7);
assign add_ln53_7_fu_1474_p2 = (s_reg_3801 + 6'd8);
assign add_ln53_8_fu_1597_p2 = (s_reg_3801 + 6'd9);
assign add_ln53_9_fu_1602_p2 = (s_reg_3801 + 6'd10);
assign add_ln53_fu_1085_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1712_p2 = (shl_ln54_s_fu_1705_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_11_fu_1820_p2 = (shl_ln54_10_fu_1813_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_12_fu_1840_p2 = (shl_ln54_11_fu_1833_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_13_fu_1948_p2 = (shl_ln54_12_fu_1941_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_14_fu_1968_p2 = (shl_ln54_13_fu_1961_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_15_fu_2070_p2 = (shl_ln54_14_fu_2062_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_16_fu_1213_p2 = (zext_ln52_3 + zext_ln54_17_fu_1209_p1);
assign add_ln54_1_fu_1157_p2 = (shl_ln54_1_fu_1150_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_2_fu_1177_p2 = (shl_ln54_2_fu_1170_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_3_fu_1308_p2 = (shl_ln54_3_fu_1301_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_4_fu_1328_p2 = (shl_ln54_4_fu_1321_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_5_fu_1436_p2 = (shl_ln54_5_fu_1429_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_6_fu_1456_p2 = (shl_ln54_6_fu_1449_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_7_fu_1564_p2 = (shl_ln54_7_fu_1557_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_8_fu_1584_p2 = (shl_ln54_8_fu_1577_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_9_fu_1692_p2 = (shl_ln54_9_fu_1685_p3 + zext_ln52_2_cast_reg_3782);
assign add_ln54_fu_1071_p2 = (shl_ln2_fu_1063_p3 + zext_ln52_2_cast_fu_1000_p1);
assign and_ln55_10_fu_2690_p2 = (or_ln55_11_fu_2684_p2 & or_ln55_10_fu_2666_p2);
assign and_ln55_11_fu_2696_p2 = (grp_fu_1693_p_dout0 & and_ln55_10_fu_2690_p2);
assign and_ln55_12_fu_2799_p2 = (or_ln55_13_fu_2793_p2 & or_ln55_12_fu_2775_p2);
assign and_ln55_13_fu_2805_p2 = (grp_fu_1693_p_dout0 & and_ln55_12_fu_2799_p2);
assign and_ln55_14_fu_2889_p2 = (or_ln55_15_fu_2883_p2 & or_ln55_14_fu_2865_p2);
assign and_ln55_15_fu_2895_p2 = (grp_fu_1693_p_dout0 & and_ln55_14_fu_2889_p2);
assign and_ln55_16_fu_2997_p2 = (or_ln55_17_fu_2991_p2 & or_ln55_16_fu_2973_p2);
assign and_ln55_17_fu_3003_p2 = (grp_fu_1693_p_dout0 & and_ln55_16_fu_2997_p2);
assign and_ln55_18_fu_3086_p2 = (or_ln55_19_fu_3080_p2 & or_ln55_18_fu_3062_p2);
assign and_ln55_19_fu_3092_p2 = (grp_fu_1693_p_dout0 & and_ln55_18_fu_3086_p2);
assign and_ln55_1_fu_2203_p2 = (or_ln55_1_fu_2191_p2 & and_ln55_fu_2197_p2);
assign and_ln55_20_fu_3194_p2 = (or_ln55_21_fu_3188_p2 & or_ln55_20_fu_3170_p2);
assign and_ln55_21_fu_3200_p2 = (grp_fu_1693_p_dout0 & and_ln55_20_fu_3194_p2);
assign and_ln55_22_fu_3293_p2 = (or_ln55_23_fu_3287_p2 & or_ln55_22_fu_3269_p2);
assign and_ln55_23_fu_3299_p2 = (grp_fu_1693_p_dout0 & and_ln55_22_fu_3293_p2);
assign and_ln55_24_fu_3401_p2 = (or_ln55_25_fu_3395_p2 & or_ln55_24_fu_3377_p2);
assign and_ln55_25_fu_3407_p2 = (grp_fu_1693_p_dout0 & and_ln55_24_fu_3401_p2);
assign and_ln55_26_fu_3490_p2 = (or_ln55_27_fu_3484_p2 & or_ln55_26_fu_3466_p2);
assign and_ln55_27_fu_3496_p2 = (grp_fu_1693_p_dout0 & and_ln55_26_fu_3490_p2);
assign and_ln55_28_fu_3579_p2 = (or_ln55_29_fu_3573_p2 & or_ln55_28_fu_3555_p2);
assign and_ln55_29_fu_3585_p2 = (grp_fu_1693_p_dout0 & and_ln55_28_fu_3579_p2);
assign and_ln55_2_fu_2287_p2 = (or_ln55_3_fu_2281_p2 & or_ln55_2_fu_2263_p2);
assign and_ln55_30_fu_3698_p2 = (or_ln55_31_fu_3692_p2 & or_ln55_30_fu_3674_p2);
assign and_ln55_31_fu_3704_p2 = (tmp_65_reg_4738 & and_ln55_30_fu_3698_p2);
assign and_ln55_3_fu_2293_p2 = (grp_fu_1693_p_dout0 & and_ln55_2_fu_2287_p2);
assign and_ln55_4_fu_2377_p2 = (or_ln55_5_fu_2371_p2 & or_ln55_4_fu_2353_p2);
assign and_ln55_5_fu_2383_p2 = (grp_fu_1693_p_dout0 & and_ln55_4_fu_2377_p2);
assign and_ln55_6_fu_2467_p2 = (or_ln55_7_fu_2461_p2 & or_ln55_6_fu_2443_p2);
assign and_ln55_7_fu_2473_p2 = (grp_fu_1693_p_dout0 & and_ln55_6_fu_2467_p2);
assign and_ln55_8_fu_2600_p2 = (or_ln55_9_fu_2594_p2 & or_ln55_8_fu_2576_p2);
assign and_ln55_9_fu_2606_p2 = (grp_fu_1693_p_dout0 & and_ln55_8_fu_2600_p2);
assign and_ln55_fu_2197_p2 = (or_ln55_fu_2173_p2 & grp_fu_1693_p_dout0);
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
assign bitcast_ln55_10_fu_2619_p1 = reg_980;
assign bitcast_ln55_11_fu_2637_p1 = min_p_11_reg_4562;
assign bitcast_ln55_12_fu_2728_p1 = reg_995;
assign bitcast_ln55_13_fu_2746_p1 = min_p_13_reg_4582;
assign bitcast_ln55_14_fu_2818_p1 = reg_985;
assign bitcast_ln55_15_fu_2836_p1 = min_p_15_reg_4607;
assign bitcast_ln55_16_fu_2927_p1 = p_8_reg_4530;
assign bitcast_ln55_17_fu_2944_p1 = min_p_17_reg_4620;
assign bitcast_ln55_18_fu_3015_p1 = reg_975;
assign bitcast_ln55_19_fu_3033_p1 = min_p_19_reg_4638;
assign bitcast_ln55_1_fu_2144_p1 = min_p_1_reg_4478;
assign bitcast_ln55_20_fu_3124_p1 = p_10_reg_4555;
assign bitcast_ln55_21_fu_3141_p1 = min_p_21_reg_4651;
assign bitcast_ln55_22_fu_3222_p1 = reg_990;
assign bitcast_ln55_23_fu_3240_p1 = min_p_23_reg_4669;
assign bitcast_ln55_24_fu_3331_p1 = p_12_reg_4575;
assign bitcast_ln55_25_fu_3348_p1 = min_p_25_reg_4682;
assign bitcast_ln55_26_fu_3419_p1 = reg_980;
assign bitcast_ln55_27_fu_3437_p1 = min_p_27_reg_4700;
assign bitcast_ln55_28_fu_3509_p1 = p_14_reg_4600;
assign bitcast_ln55_29_fu_3526_p1 = min_p_29_reg_4713;
assign bitcast_ln55_2_fu_2216_p1 = reg_980;
assign bitcast_ln55_30_fu_3627_p1 = reg_995;
assign bitcast_ln55_31_fu_3645_p1 = min_p_31_reg_4726;
assign bitcast_ln55_3_fu_2234_p1 = min_p_3_reg_4491;
assign bitcast_ln55_4_fu_2306_p1 = reg_985;
assign bitcast_ln55_5_fu_2324_p1 = min_p_5_reg_4504;
assign bitcast_ln55_6_fu_2396_p1 = reg_975;
assign bitcast_ln55_7_fu_2414_p1 = min_p_7_reg_4517;
assign bitcast_ln55_8_fu_2529_p1 = reg_990;
assign bitcast_ln55_9_fu_2547_p1 = min_p_9_reg_4537;
assign bitcast_ln55_fu_2126_p1 = reg_975;
assign grp_fu_1693_p_ce = 1'b1;
assign grp_fu_1693_p_din0 = grp_fu_971_p0;
assign grp_fu_1693_p_din1 = grp_fu_971_p1;
assign grp_fu_1693_p_opcode = 5'd4;
assign grp_fu_903_p_ce = 1'b1;
assign grp_fu_903_p_din0 = grp_fu_967_p0;
assign grp_fu_903_p_din1 = grp_fu_967_p1;
assign grp_fu_903_p_opcode = 2'd0;
assign icmp_ln55_10_fu_2359_p2 = ((tmp_11_fu_2327_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_2365_p2 = ((trunc_ln55_5_fu_2337_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2431_p2 = ((tmp_14_fu_2400_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2437_p2 = ((trunc_ln55_6_fu_2410_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2449_p2 = ((tmp_15_fu_2417_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2455_p2 = ((trunc_ln55_7_fu_2427_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2564_p2 = ((tmp_18_fu_2533_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2570_p2 = ((trunc_ln55_8_fu_2543_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2582_p2 = ((tmp_19_fu_2550_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2588_p2 = ((trunc_ln55_9_fu_2560_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_2167_p2 = ((trunc_ln55_fu_2140_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2654_p2 = ((tmp_22_fu_2623_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2660_p2 = ((trunc_ln55_10_fu_2633_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2672_p2 = ((tmp_23_fu_2640_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2678_p2 = ((trunc_ln55_11_fu_2650_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2763_p2 = ((tmp_26_fu_2732_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2769_p2 = ((trunc_ln55_12_fu_2742_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2781_p2 = ((tmp_27_fu_2749_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2787_p2 = ((trunc_ln55_13_fu_2759_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2853_p2 = ((tmp_30_fu_2822_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2859_p2 = ((trunc_ln55_14_fu_2832_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_2179_p2 = ((tmp_3_fu_2147_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2871_p2 = ((tmp_31_fu_2839_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2877_p2 = ((trunc_ln55_15_fu_2849_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_2961_p2 = ((tmp_34_fu_2930_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_2967_p2 = ((trunc_ln55_16_fu_2940_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_2979_p2 = ((tmp_35_fu_2947_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_2985_p2 = ((trunc_ln55_17_fu_2957_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_3050_p2 = ((tmp_38_fu_3019_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_3056_p2 = ((trunc_ln55_18_fu_3029_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_3068_p2 = ((tmp_39_fu_3036_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_3074_p2 = ((trunc_ln55_19_fu_3046_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_2185_p2 = ((trunc_ln55_1_fu_2157_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_3158_p2 = ((tmp_42_fu_3127_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_3164_p2 = ((trunc_ln55_20_fu_3137_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_3176_p2 = ((tmp_43_fu_3144_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_3182_p2 = ((trunc_ln55_21_fu_3154_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_3257_p2 = ((tmp_46_fu_3226_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_3263_p2 = ((trunc_ln55_22_fu_3236_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_3275_p2 = ((tmp_47_fu_3243_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_3281_p2 = ((trunc_ln55_23_fu_3253_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_3365_p2 = ((tmp_53_fu_3334_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_3371_p2 = ((trunc_ln55_24_fu_3344_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_2251_p2 = ((tmp_6_fu_2220_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_3383_p2 = ((tmp_54_fu_3351_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_3389_p2 = ((trunc_ln55_25_fu_3361_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_3454_p2 = ((tmp_56_fu_3423_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_3460_p2 = ((trunc_ln55_26_fu_3433_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_3472_p2 = ((tmp_57_fu_3440_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_3478_p2 = ((trunc_ln55_27_fu_3450_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_3543_p2 = ((tmp_59_fu_3512_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_3549_p2 = ((trunc_ln55_28_fu_3522_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_3561_p2 = ((tmp_60_fu_3529_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_3567_p2 = ((trunc_ln55_29_fu_3539_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_2257_p2 = ((trunc_ln55_2_fu_2230_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_3662_p2 = ((tmp_63_fu_3631_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_3668_p2 = ((trunc_ln55_30_fu_3641_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_3680_p2 = ((tmp_64_fu_3648_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_3686_p2 = ((trunc_ln55_31_fu_3658_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_2269_p2 = ((tmp_7_fu_2237_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_2275_p2 = ((trunc_ln55_3_fu_2247_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_2341_p2 = ((tmp_10_fu_2310_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_2347_p2 = ((trunc_ln55_4_fu_2320_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_2161_p2 = ((tmp_2_fu_2130_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = zext_ln54_16_fu_1044_p1;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = zext_ln54_16_fu_1044_p1;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = zext_ln54_16_fu_1044_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = zext_ln54_16_fu_1044_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = zext_ln54_16_fu_1044_p1;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = zext_ln54_16_fu_1044_p1;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = zext_ln54_16_fu_1044_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_16_fu_1044_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_16_fu_1044_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln54_16_fu_1044_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln54_16_fu_1044_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln54_16_fu_1044_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln54_16_fu_1044_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = zext_ln54_16_fu_1044_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = zext_ln54_16_fu_1044_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = zext_ln54_18_fu_1218_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_1026_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_3_fu_1200_p4 = {{add_ln53_14_reg_3926[6:4]}};
assign min_p_11_fu_2612_p3 = ((and_ln55_9_reg_4549[0:0] == 1'b1) ? reg_990 : min_p_9_reg_4537);
assign min_p_13_fu_2711_p3 = ((and_ln55_11_reg_4569[0:0] == 1'b1) ? reg_980 : min_p_11_reg_4562);
assign min_p_15_fu_2811_p3 = ((and_ln55_13_reg_4594[0:0] == 1'b1) ? reg_995 : min_p_13_reg_4582);
assign min_p_17_fu_2910_p3 = ((and_ln55_15_reg_4614[0:0] == 1'b1) ? reg_985 : min_p_15_reg_4607);
assign min_p_19_fu_3009_p3 = ((and_ln55_17_reg_4632[0:0] == 1'b1) ? p_8_reg_4530 : min_p_17_reg_4620);
assign min_p_21_fu_3107_p3 = ((and_ln55_19_reg_4645[0:0] == 1'b1) ? reg_975 : min_p_19_reg_4638);
assign min_p_23_fu_3206_p3 = ((and_ln55_21_reg_4663[0:0] == 1'b1) ? p_10_reg_4555 : min_p_21_reg_4651);
assign min_p_25_fu_3314_p3 = ((and_ln55_23_reg_4676[0:0] == 1'b1) ? reg_990 : min_p_23_reg_4669);
assign min_p_27_fu_3413_p3 = ((and_ln55_25_reg_4694[0:0] == 1'b1) ? p_12_reg_4575 : min_p_25_reg_4682);
assign min_p_29_fu_3502_p3 = ((and_ln55_27_reg_4707[0:0] == 1'b1) ? reg_980 : min_p_27_reg_4700);
assign min_p_31_fu_3591_p3 = ((and_ln55_29_reg_4720[0:0] == 1'b1) ? p_14_reg_4600 : min_p_29_reg_4713);
assign min_p_33_fu_3709_p3 = ((and_ln55_31_fu_3704_p2[0:0] == 1'b1) ? reg_995 : min_p_31_reg_4726);
assign min_p_3_fu_2209_p3 = ((and_ln55_1_reg_4485[0:0] == 1'b1) ? reg_975 : min_p_1_reg_4478);
assign min_p_5_fu_2299_p3 = ((and_ln55_3_reg_4498[0:0] == 1'b1) ? reg_980 : min_p_3_reg_4491);
assign min_p_7_fu_2389_p3 = ((and_ln55_5_reg_4511[0:0] == 1'b1) ? reg_985 : min_p_5_reg_4504);
assign min_p_9_fu_2512_p3 = ((and_ln55_7_reg_4524[0:0] == 1'b1) ? reg_975 : min_p_7_reg_4517);
assign min_s_10_fu_2904_p3 = ((and_ln55_13_reg_4594[0:0] == 1'b1) ? zext_ln55_6_fu_2901_p1 : min_s_9_reg_4589);
assign min_s_11_fu_2920_p3 = ((and_ln55_15_reg_4614[0:0] == 1'b1) ? zext_ln55_7_fu_2917_p1 : min_s_10_fu_2904_p3);
assign min_s_12_fu_3101_p3 = ((and_ln55_17_reg_4632[0:0] == 1'b1) ? zext_ln55_8_fu_3098_p1 : min_s_11_reg_4627);
assign min_s_13_fu_3117_p3 = ((and_ln55_19_reg_4645[0:0] == 1'b1) ? zext_ln55_9_fu_3114_p1 : min_s_12_fu_3101_p3);
assign min_s_14_fu_3308_p3 = ((and_ln55_21_reg_4663[0:0] == 1'b1) ? zext_ln55_10_fu_3305_p1 : min_s_13_reg_4658);
assign min_s_15_fu_3324_p3 = ((and_ln55_23_reg_4676[0:0] == 1'b1) ? zext_ln55_11_fu_3321_p1 : min_s_14_fu_3308_p3);
assign min_s_16_fu_3600_p3 = ((and_ln55_25_reg_4694[0:0] == 1'b1) ? zext_ln55_12_fu_3597_p1 : min_s_15_reg_4689);
assign min_s_17_fu_3609_p3 = ((and_ln55_27_reg_4707[0:0] == 1'b1) ? zext_ln55_13_fu_3606_p1 : min_s_16_fu_3600_p3);
assign min_s_18_fu_3619_p3 = ((and_ln55_29_reg_4720[0:0] == 1'b1) ? zext_ln55_14_fu_3616_p1 : min_s_17_fu_3609_p3);
assign min_s_19_fu_3719_p3 = ((and_ln55_31_fu_3704_p2[0:0] == 1'b1) ? zext_ln55_15_fu_3716_p1 : min_s_18_reg_4733);
assign min_s_34_out = ((and_ln55_29_reg_4720[0:0] == 1'b1) ? zext_ln55_14_fu_3616_p1 : min_s_17_fu_3609_p3);
assign min_s_4_fu_2485_p3 = ((and_ln55_1_reg_4485[0:0] == 1'b1) ? zext_ln55_fu_2482_p1 : min_s_fu_166);
assign min_s_5_fu_2495_p3 = ((and_ln55_3_reg_4498[0:0] == 1'b1) ? zext_ln55_1_fu_2492_p1 : min_s_4_fu_2485_p3);
assign min_s_6_fu_2505_p3 = ((and_ln55_5_reg_4511[0:0] == 1'b1) ? zext_ln55_2_fu_2502_p1 : min_s_5_fu_2495_p3);
assign min_s_7_fu_2522_p3 = ((and_ln55_7_reg_4524[0:0] == 1'b1) ? zext_ln55_3_fu_2519_p1 : min_s_6_fu_2505_p3);
assign min_s_8_fu_2705_p3 = ((and_ln55_9_reg_4549[0:0] == 1'b1) ? zext_ln55_4_fu_2702_p1 : min_s_7_reg_4544);
assign min_s_9_fu_2721_p3 = ((and_ln55_11_reg_4569[0:0] == 1'b1) ? zext_ln55_5_fu_2718_p1 : min_s_8_fu_2705_p3);
assign or_ln55_10_fu_2666_p2 = (icmp_ln55_21_fu_2660_p2 | icmp_ln55_20_fu_2654_p2);
assign or_ln55_11_fu_2684_p2 = (icmp_ln55_23_fu_2678_p2 | icmp_ln55_22_fu_2672_p2);
assign or_ln55_12_fu_2775_p2 = (icmp_ln55_25_fu_2769_p2 | icmp_ln55_24_fu_2763_p2);
assign or_ln55_13_fu_2793_p2 = (icmp_ln55_27_fu_2787_p2 | icmp_ln55_26_fu_2781_p2);
assign or_ln55_14_fu_2865_p2 = (icmp_ln55_29_fu_2859_p2 | icmp_ln55_28_fu_2853_p2);
assign or_ln55_15_fu_2883_p2 = (icmp_ln55_31_fu_2877_p2 | icmp_ln55_30_fu_2871_p2);
assign or_ln55_16_fu_2973_p2 = (icmp_ln55_33_fu_2967_p2 | icmp_ln55_32_fu_2961_p2);
assign or_ln55_17_fu_2991_p2 = (icmp_ln55_35_fu_2985_p2 | icmp_ln55_34_fu_2979_p2);
assign or_ln55_18_fu_3062_p2 = (icmp_ln55_37_fu_3056_p2 | icmp_ln55_36_fu_3050_p2);
assign or_ln55_19_fu_3080_p2 = (icmp_ln55_39_fu_3074_p2 | icmp_ln55_38_fu_3068_p2);
assign or_ln55_1_fu_2191_p2 = (icmp_ln55_3_fu_2185_p2 | icmp_ln55_2_fu_2179_p2);
assign or_ln55_20_fu_3170_p2 = (icmp_ln55_41_fu_3164_p2 | icmp_ln55_40_fu_3158_p2);
assign or_ln55_21_fu_3188_p2 = (icmp_ln55_43_fu_3182_p2 | icmp_ln55_42_fu_3176_p2);
assign or_ln55_22_fu_3269_p2 = (icmp_ln55_45_fu_3263_p2 | icmp_ln55_44_fu_3257_p2);
assign or_ln55_23_fu_3287_p2 = (icmp_ln55_47_fu_3281_p2 | icmp_ln55_46_fu_3275_p2);
assign or_ln55_24_fu_3377_p2 = (icmp_ln55_49_fu_3371_p2 | icmp_ln55_48_fu_3365_p2);
assign or_ln55_25_fu_3395_p2 = (icmp_ln55_51_fu_3389_p2 | icmp_ln55_50_fu_3383_p2);
assign or_ln55_26_fu_3466_p2 = (icmp_ln55_53_fu_3460_p2 | icmp_ln55_52_fu_3454_p2);
assign or_ln55_27_fu_3484_p2 = (icmp_ln55_55_fu_3478_p2 | icmp_ln55_54_fu_3472_p2);
assign or_ln55_28_fu_3555_p2 = (icmp_ln55_57_fu_3549_p2 | icmp_ln55_56_fu_3543_p2);
assign or_ln55_29_fu_3573_p2 = (icmp_ln55_59_fu_3567_p2 | icmp_ln55_58_fu_3561_p2);
assign or_ln55_2_fu_2263_p2 = (icmp_ln55_5_fu_2257_p2 | icmp_ln55_4_fu_2251_p2);
assign or_ln55_30_fu_3674_p2 = (icmp_ln55_61_fu_3668_p2 | icmp_ln55_60_fu_3662_p2);
assign or_ln55_31_fu_3692_p2 = (icmp_ln55_63_fu_3686_p2 | icmp_ln55_62_fu_3680_p2);
assign or_ln55_3_fu_2281_p2 = (icmp_ln55_7_fu_2275_p2 | icmp_ln55_6_fu_2269_p2);
assign or_ln55_4_fu_2353_p2 = (icmp_ln55_9_fu_2347_p2 | icmp_ln55_8_fu_2341_p2);
assign or_ln55_5_fu_2371_p2 = (icmp_ln55_11_fu_2365_p2 | icmp_ln55_10_fu_2359_p2);
assign or_ln55_6_fu_2443_p2 = (icmp_ln55_13_fu_2437_p2 | icmp_ln55_12_fu_2431_p2);
assign or_ln55_7_fu_2461_p2 = (icmp_ln55_15_fu_2455_p2 | icmp_ln55_14_fu_2449_p2);
assign or_ln55_8_fu_2576_p2 = (icmp_ln55_17_fu_2570_p2 | icmp_ln55_16_fu_2564_p2);
assign or_ln55_9_fu_2594_p2 = (icmp_ln55_19_fu_2588_p2 | icmp_ln55_18_fu_2582_p2);
assign or_ln55_fu_2173_p2 = (icmp_ln55_fu_2161_p2 | icmp_ln55_1_fu_2167_p2);
assign shl_ln2_fu_1063_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_10_fu_1813_p3 = {{add_ln53_10_reg_4314}, {4'd0}};
assign shl_ln54_11_fu_1833_p3 = {{add_ln53_11_reg_4320}, {4'd0}};
assign shl_ln54_12_fu_1941_p3 = {{add_ln53_12_reg_4376}, {4'd0}};
assign shl_ln54_13_fu_1961_p3 = {{add_ln53_13_reg_4382}, {4'd0}};
assign shl_ln54_14_fu_2062_p3 = {{trunc_ln54_fu_2059_p1}, {4'd0}};
assign shl_ln54_1_fu_1150_p3 = {{add_ln53_reg_3914}, {4'd0}};
assign shl_ln54_2_fu_1170_p3 = {{add_ln53_1_reg_3920}, {4'd0}};
assign shl_ln54_3_fu_1301_p3 = {{add_ln53_2_reg_3996}, {4'd0}};
assign shl_ln54_4_fu_1321_p3 = {{add_ln53_3_reg_4007}, {4'd0}};
assign shl_ln54_5_fu_1429_p3 = {{add_ln53_4_reg_4123}, {4'd0}};
assign shl_ln54_6_fu_1449_p3 = {{add_ln53_5_reg_4129}, {4'd0}};
assign shl_ln54_7_fu_1557_p3 = {{add_ln53_6_reg_4190}, {4'd0}};
assign shl_ln54_8_fu_1577_p3 = {{add_ln53_7_reg_4196}, {4'd0}};
assign shl_ln54_9_fu_1685_p3 = {{add_ln53_8_reg_4252}, {4'd0}};
assign shl_ln54_s_fu_1705_p3 = {{add_ln53_9_reg_4258}, {4'd0}};
assign tmp_10_fu_2310_p4 = {{bitcast_ln55_4_fu_2306_p1[62:52]}};
assign tmp_11_fu_2327_p4 = {{bitcast_ln55_5_fu_2324_p1[62:52]}};
assign tmp_13_fu_1367_p2 = transition_0_q0;
assign tmp_13_fu_1367_p4 = transition_1_q0;
assign tmp_13_fu_1367_p6 = transition_2_q0;
assign tmp_13_fu_1367_p8 = transition_3_q0;
assign tmp_13_fu_1367_p9 = 'bx;
assign tmp_14_fu_2400_p4 = {{bitcast_ln55_6_fu_2396_p1[62:52]}};
assign tmp_15_fu_2417_p4 = {{bitcast_ln55_7_fu_2414_p1[62:52]}};
assign tmp_17_fu_1406_p2 = transition_0_q1;
assign tmp_17_fu_1406_p4 = transition_1_q1;
assign tmp_17_fu_1406_p6 = transition_2_q1;
assign tmp_17_fu_1406_p8 = transition_3_q1;
assign tmp_17_fu_1406_p9 = 'bx;
assign tmp_18_fu_2533_p4 = {{bitcast_ln55_8_fu_2529_p1[62:52]}};
assign tmp_19_fu_2550_p4 = {{bitcast_ln55_9_fu_2547_p1[62:52]}};
assign tmp_1_fu_1127_p2 = transition_0_q0;
assign tmp_1_fu_1127_p4 = transition_1_q0;
assign tmp_1_fu_1127_p6 = transition_2_q0;
assign tmp_1_fu_1127_p8 = transition_3_q0;
assign tmp_1_fu_1127_p9 = 'bx;
assign tmp_21_fu_1495_p2 = transition_0_q0;
assign tmp_21_fu_1495_p4 = transition_1_q0;
assign tmp_21_fu_1495_p6 = transition_2_q0;
assign tmp_21_fu_1495_p8 = transition_3_q0;
assign tmp_21_fu_1495_p9 = 'bx;
assign tmp_22_fu_2623_p4 = {{bitcast_ln55_10_fu_2619_p1[62:52]}};
assign tmp_23_fu_2640_p4 = {{bitcast_ln55_11_fu_2637_p1[62:52]}};
assign tmp_25_fu_1534_p2 = transition_0_q1;
assign tmp_25_fu_1534_p4 = transition_1_q1;
assign tmp_25_fu_1534_p6 = transition_2_q1;
assign tmp_25_fu_1534_p8 = transition_3_q1;
assign tmp_25_fu_1534_p9 = 'bx;
assign tmp_26_fu_2732_p4 = {{bitcast_ln55_12_fu_2728_p1[62:52]}};
assign tmp_27_fu_2749_p4 = {{bitcast_ln55_13_fu_2746_p1[62:52]}};
assign tmp_29_fu_1623_p2 = transition_0_q0;
assign tmp_29_fu_1623_p4 = transition_1_q0;
assign tmp_29_fu_1623_p6 = transition_2_q0;
assign tmp_29_fu_1623_p8 = transition_3_q0;
assign tmp_29_fu_1623_p9 = 'bx;
assign tmp_2_fu_2130_p4 = {{bitcast_ln55_fu_2126_p1[62:52]}};
assign tmp_30_fu_2822_p4 = {{bitcast_ln55_14_fu_2818_p1[62:52]}};
assign tmp_31_fu_2839_p4 = {{bitcast_ln55_15_fu_2836_p1[62:52]}};
assign tmp_33_fu_1662_p2 = transition_0_q1;
assign tmp_33_fu_1662_p4 = transition_1_q1;
assign tmp_33_fu_1662_p6 = transition_2_q1;
assign tmp_33_fu_1662_p8 = transition_3_q1;
assign tmp_33_fu_1662_p9 = 'bx;
assign tmp_34_fu_2930_p4 = {{bitcast_ln55_16_fu_2927_p1[62:52]}};
assign tmp_35_fu_2947_p4 = {{bitcast_ln55_17_fu_2944_p1[62:52]}};
assign tmp_37_fu_1751_p2 = transition_0_q0;
assign tmp_37_fu_1751_p4 = transition_1_q0;
assign tmp_37_fu_1751_p6 = transition_2_q0;
assign tmp_37_fu_1751_p8 = transition_3_q0;
assign tmp_37_fu_1751_p9 = 'bx;
assign tmp_38_fu_3019_p4 = {{bitcast_ln55_18_fu_3015_p1[62:52]}};
assign tmp_39_fu_3036_p4 = {{bitcast_ln55_19_fu_3033_p1[62:52]}};
assign tmp_3_fu_2147_p4 = {{bitcast_ln55_1_fu_2144_p1[62:52]}};
assign tmp_41_fu_1790_p2 = transition_0_q1;
assign tmp_41_fu_1790_p4 = transition_1_q1;
assign tmp_41_fu_1790_p6 = transition_2_q1;
assign tmp_41_fu_1790_p8 = transition_3_q1;
assign tmp_41_fu_1790_p9 = 'bx;
assign tmp_42_fu_3127_p4 = {{bitcast_ln55_20_fu_3124_p1[62:52]}};
assign tmp_43_fu_3144_p4 = {{bitcast_ln55_21_fu_3141_p1[62:52]}};
assign tmp_45_fu_1879_p2 = transition_0_q0;
assign tmp_45_fu_1879_p4 = transition_1_q0;
assign tmp_45_fu_1879_p6 = transition_2_q0;
assign tmp_45_fu_1879_p8 = transition_3_q0;
assign tmp_45_fu_1879_p9 = 'bx;
assign tmp_46_fu_3226_p4 = {{bitcast_ln55_22_fu_3222_p1[62:52]}};
assign tmp_47_fu_3243_p4 = {{bitcast_ln55_23_fu_3240_p1[62:52]}};
assign tmp_48_fu_1918_p2 = transition_0_q1;
assign tmp_48_fu_1918_p4 = transition_1_q1;
assign tmp_48_fu_1918_p6 = transition_2_q1;
assign tmp_48_fu_1918_p8 = transition_3_q1;
assign tmp_48_fu_1918_p9 = 'bx;
assign tmp_49_fu_1997_p2 = transition_0_q0;
assign tmp_49_fu_1997_p4 = transition_1_q0;
assign tmp_49_fu_1997_p6 = transition_2_q0;
assign tmp_49_fu_1997_p8 = transition_3_q0;
assign tmp_49_fu_1997_p9 = 'bx;
assign tmp_50_fu_2036_p2 = transition_0_q1;
assign tmp_50_fu_2036_p4 = transition_1_q1;
assign tmp_50_fu_2036_p6 = transition_2_q1;
assign tmp_50_fu_2036_p8 = transition_3_q1;
assign tmp_50_fu_2036_p9 = 'bx;
assign tmp_51_fu_2099_p2 = transition_0_q1;
assign tmp_51_fu_2099_p4 = transition_1_q1;
assign tmp_51_fu_2099_p6 = transition_2_q1;
assign tmp_51_fu_2099_p8 = transition_3_q1;
assign tmp_51_fu_2099_p9 = 'bx;
assign tmp_53_fu_3334_p4 = {{bitcast_ln55_24_fu_3331_p1[62:52]}};
assign tmp_54_fu_3351_p4 = {{bitcast_ln55_25_fu_3348_p1[62:52]}};
assign tmp_56_fu_3423_p4 = {{bitcast_ln55_26_fu_3419_p1[62:52]}};
assign tmp_57_fu_3440_p4 = {{bitcast_ln55_27_fu_3437_p1[62:52]}};
assign tmp_59_fu_3512_p4 = {{bitcast_ln55_28_fu_3509_p1[62:52]}};
assign tmp_5_fu_1239_p2 = transition_0_q1;
assign tmp_5_fu_1239_p4 = transition_1_q1;
assign tmp_5_fu_1239_p6 = transition_2_q1;
assign tmp_5_fu_1239_p8 = transition_3_q1;
assign tmp_5_fu_1239_p9 = 'bx;
assign tmp_60_fu_3529_p4 = {{bitcast_ln55_29_fu_3526_p1[62:52]}};
assign tmp_63_fu_3631_p4 = {{bitcast_ln55_30_fu_3627_p1[62:52]}};
assign tmp_64_fu_3648_p4 = {{bitcast_ln55_31_fu_3645_p1[62:52]}};
assign tmp_6_fu_2220_p4 = {{bitcast_ln55_2_fu_2216_p1[62:52]}};
assign tmp_7_fu_2237_p4 = {{bitcast_ln55_3_fu_2234_p1[62:52]}};
assign tmp_9_fu_1278_p2 = transition_0_q0;
assign tmp_9_fu_1278_p4 = transition_1_q0;
assign tmp_9_fu_1278_p6 = transition_2_q0;
assign tmp_9_fu_1278_p8 = transition_3_q0;
assign tmp_9_fu_1278_p9 = 'bx;
assign tmp_s_fu_1036_p3 = {{t_1}, {lshr_ln8_2_fu_1026_p4}};
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
assign trunc_ln54_fu_2059_p1 = add_ln53_14_reg_3926[5:0];
assign trunc_ln55_10_fu_2633_p1 = bitcast_ln55_10_fu_2619_p1[51:0];
assign trunc_ln55_11_fu_2650_p1 = bitcast_ln55_11_fu_2637_p1[51:0];
assign trunc_ln55_12_fu_2742_p1 = bitcast_ln55_12_fu_2728_p1[51:0];
assign trunc_ln55_13_fu_2759_p1 = bitcast_ln55_13_fu_2746_p1[51:0];
assign trunc_ln55_14_fu_2832_p1 = bitcast_ln55_14_fu_2818_p1[51:0];
assign trunc_ln55_15_fu_2849_p1 = bitcast_ln55_15_fu_2836_p1[51:0];
assign trunc_ln55_16_fu_2940_p1 = bitcast_ln55_16_fu_2927_p1[51:0];
assign trunc_ln55_17_fu_2957_p1 = bitcast_ln55_17_fu_2944_p1[51:0];
assign trunc_ln55_18_fu_3029_p1 = bitcast_ln55_18_fu_3015_p1[51:0];
assign trunc_ln55_19_fu_3046_p1 = bitcast_ln55_19_fu_3033_p1[51:0];
assign trunc_ln55_1_fu_2157_p1 = bitcast_ln55_1_fu_2144_p1[51:0];
assign trunc_ln55_20_fu_3137_p1 = bitcast_ln55_20_fu_3124_p1[51:0];
assign trunc_ln55_21_fu_3154_p1 = bitcast_ln55_21_fu_3141_p1[51:0];
assign trunc_ln55_22_fu_3236_p1 = bitcast_ln55_22_fu_3222_p1[51:0];
assign trunc_ln55_23_fu_3253_p1 = bitcast_ln55_23_fu_3240_p1[51:0];
assign trunc_ln55_24_fu_3344_p1 = bitcast_ln55_24_fu_3331_p1[51:0];
assign trunc_ln55_25_fu_3361_p1 = bitcast_ln55_25_fu_3348_p1[51:0];
assign trunc_ln55_26_fu_3433_p1 = bitcast_ln55_26_fu_3419_p1[51:0];
assign trunc_ln55_27_fu_3450_p1 = bitcast_ln55_27_fu_3437_p1[51:0];
assign trunc_ln55_28_fu_3522_p1 = bitcast_ln55_28_fu_3509_p1[51:0];
assign trunc_ln55_29_fu_3539_p1 = bitcast_ln55_29_fu_3526_p1[51:0];
assign trunc_ln55_2_fu_2230_p1 = bitcast_ln55_2_fu_2216_p1[51:0];
assign trunc_ln55_30_fu_3641_p1 = bitcast_ln55_30_fu_3627_p1[51:0];
assign trunc_ln55_31_fu_3658_p1 = bitcast_ln55_31_fu_3645_p1[51:0];
assign trunc_ln55_3_fu_2247_p1 = bitcast_ln55_3_fu_2234_p1[51:0];
assign trunc_ln55_4_fu_2320_p1 = bitcast_ln55_4_fu_2306_p1[51:0];
assign trunc_ln55_5_fu_2337_p1 = bitcast_ln55_5_fu_2324_p1[51:0];
assign trunc_ln55_6_fu_2410_p1 = bitcast_ln55_6_fu_2396_p1[51:0];
assign trunc_ln55_7_fu_2427_p1 = bitcast_ln55_7_fu_2414_p1[51:0];
assign trunc_ln55_8_fu_2543_p1 = bitcast_ln55_8_fu_2529_p1[51:0];
assign trunc_ln55_9_fu_2560_p1 = bitcast_ln55_9_fu_2547_p1[51:0];
assign trunc_ln55_fu_2140_p1 = bitcast_ln55_fu_2126_p1[51:0];
assign zext_ln21_fu_1022_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_1000_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1717_p1 = add_ln54_10_fu_1712_p2;
assign zext_ln54_11_fu_1825_p1 = add_ln54_11_fu_1820_p2;
assign zext_ln54_12_fu_1845_p1 = add_ln54_12_fu_1840_p2;
assign zext_ln54_13_fu_1953_p1 = add_ln54_13_fu_1948_p2;
assign zext_ln54_14_fu_1973_p1 = add_ln54_14_fu_1968_p2;
assign zext_ln54_15_fu_2075_p1 = add_ln54_15_fu_2070_p2;
assign zext_ln54_16_fu_1044_p1 = tmp_s_fu_1036_p3;
assign zext_ln54_17_fu_1209_p1 = lshr_ln9_3_fu_1200_p4;
assign zext_ln54_18_fu_1218_p1 = add_ln54_16_fu_1213_p2;
assign zext_ln54_1_fu_1162_p1 = add_ln54_1_fu_1157_p2;
assign zext_ln54_2_fu_1182_p1 = add_ln54_2_fu_1177_p2;
assign zext_ln54_3_fu_1313_p1 = add_ln54_3_fu_1308_p2;
assign zext_ln54_4_fu_1333_p1 = add_ln54_4_fu_1328_p2;
assign zext_ln54_5_fu_1441_p1 = add_ln54_5_fu_1436_p2;
assign zext_ln54_6_fu_1461_p1 = add_ln54_6_fu_1456_p2;
assign zext_ln54_7_fu_1569_p1 = add_ln54_7_fu_1564_p2;
assign zext_ln54_8_fu_1589_p1 = add_ln54_8_fu_1584_p2;
assign zext_ln54_9_fu_1697_p1 = add_ln54_9_fu_1692_p2;
assign zext_ln54_fu_1077_p1 = add_ln54_fu_1071_p2;
assign zext_ln55_10_fu_3305_p1 = add_ln53_9_reg_4258;
assign zext_ln55_11_fu_3321_p1 = add_ln53_10_reg_4314;
assign zext_ln55_12_fu_3597_p1 = add_ln53_11_reg_4320_pp0_iter1_reg;
assign zext_ln55_13_fu_3606_p1 = add_ln53_12_reg_4376_pp0_iter1_reg;
assign zext_ln55_14_fu_3616_p1 = add_ln53_13_reg_4382_pp0_iter1_reg;
assign zext_ln55_15_fu_3716_p1 = trunc_ln54_reg_4448_pp0_iter1_reg;
assign zext_ln55_1_fu_2492_p1 = add_ln53_reg_3914;
assign zext_ln55_2_fu_2502_p1 = add_ln53_1_reg_3920;
assign zext_ln55_3_fu_2519_p1 = add_ln53_2_reg_3996;
assign zext_ln55_4_fu_2702_p1 = add_ln53_3_reg_4007;
assign zext_ln55_5_fu_2718_p1 = add_ln53_4_reg_4123;
assign zext_ln55_6_fu_2901_p1 = add_ln53_5_reg_4129;
assign zext_ln55_7_fu_2917_p1 = add_ln53_6_reg_4190;
assign zext_ln55_8_fu_3098_p1 = add_ln53_7_reg_4196;
assign zext_ln55_9_fu_3114_p1 = add_ln53_8_reg_4252;
assign zext_ln55_fu_2482_p1 = s_reg_3801;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_3782[9:6] <= 4'b0000;
end
endmodule 