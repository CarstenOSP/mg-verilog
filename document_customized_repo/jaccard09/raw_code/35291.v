module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_36,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,llike_4_address0,llike_4_ce0,llike_4_q0,llike_4_address1,llike_4_ce1,llike_4_q1,llike_5_address0,llike_5_ce0,llike_5_q0,llike_5_address1,llike_5_ce1,llike_5_q1,llike_6_address0,llike_6_ce0,llike_6_q0,llike_6_address1,llike_6_ce1,llike_6_q1,llike_7_address0,llike_7_ce0,llike_7_q0,llike_7_address1,llike_7_ce1,llike_7_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_34_out,min_s_34_out_ap_vld,grp_fu_727_p_din0,grp_fu_727_p_din1,grp_fu_727_p_opcode,grp_fu_727_p_dout0,grp_fu_727_p_ce,grp_fu_1495_p_din0,grp_fu_1495_p_din1,grp_fu_1495_p_opcode,grp_fu_1495_p_dout0,grp_fu_1495_p_ce); 
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
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [10:0] zext_ln52_3;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_727_p_din0;
output  [63:0] grp_fu_727_p_din1;
output  [1:0] grp_fu_727_p_opcode;
input  [63:0] grp_fu_727_p_dout0;
output   grp_fu_727_p_ce;
output  [63:0] grp_fu_1495_p_din0;
output  [63:0] grp_fu_1495_p_din1;
output  [4:0] grp_fu_1495_p_opcode;
input  [0:0] grp_fu_1495_p_dout0;
output   grp_fu_1495_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_70_reg_4120;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_949;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_954;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_959;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_964;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_969;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_974_p1;
reg   [9:0] zext_ln52_2_cast_reg_3935;
reg   [5:0] s_reg_3954;
wire   [5:0] add_ln53_fu_1051_p2;
reg   [5:0] add_ln53_reg_4020;
wire   [5:0] add_ln53_1_fu_1057_p2;
reg   [5:0] add_ln53_1_reg_4026;
wire   [5:0] add_ln53_6_fu_1063_p2;
reg   [5:0] add_ln53_6_reg_4032;
wire   [5:0] add_ln53_8_fu_1111_p2;
reg   [5:0] add_ln53_8_reg_4048;
wire   [5:0] add_ln53_9_fu_1140_p2;
reg   [5:0] add_ln53_9_reg_4059;
reg   [5:0] add_ln53_9_reg_4059_pp0_iter1_reg;
wire   [5:0] add_ln53_10_fu_1169_p2;
reg   [5:0] add_ln53_10_reg_4070;
reg   [5:0] add_ln53_10_reg_4070_pp0_iter1_reg;
wire   [5:0] add_ln53_11_fu_1198_p2;
reg   [5:0] add_ln53_11_reg_4081;
reg   [5:0] add_ln53_11_reg_4081_pp0_iter1_reg;
wire   [5:0] add_ln53_12_fu_1227_p2;
reg   [5:0] add_ln53_12_reg_4092;
reg   [5:0] add_ln53_12_reg_4092_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_1256_p2;
reg   [5:0] add_ln53_13_reg_4103;
reg   [5:0] add_ln53_13_reg_4103_pp0_iter1_reg;
wire   [6:0] add_ln53_14_fu_1285_p2;
reg   [6:0] add_ln53_14_reg_4114;
reg   [0:0] tmp_70_reg_4120_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_4124;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_1315_p11;
reg   [63:0] tmp_1_reg_4129;
reg   [63:0] llike_2_load_reg_4134;
reg   [63:0] llike_3_load_reg_4159;
wire   [5:0] add_ln53_2_fu_1378_p2;
reg   [5:0] add_ln53_2_reg_4184;
reg   [63:0] llike_4_load_reg_4190;
wire   [5:0] add_ln53_3_fu_1383_p2;
reg   [5:0] add_ln53_3_reg_4195;
reg   [63:0] llike_5_load_reg_4201;
reg   [63:0] llike_6_load_reg_4206;
reg   [63:0] llike_7_load_reg_4211;
reg   [63:0] llike_load_reg_4216;
reg   [63:0] llike_1_load_1_reg_4221;
reg   [63:0] llike_2_load_1_reg_4226;
reg   [63:0] llike_3_load_1_reg_4231;
reg   [63:0] llike_4_load_1_reg_4236;
reg   [63:0] llike_5_load_1_reg_4241;
reg   [63:0] llike_6_load_1_reg_4246;
reg   [63:0] llike_7_load_1_reg_4251;
wire   [63:0] tmp_5_fu_1427_p11;
reg   [63:0] tmp_5_reg_4261;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_1466_p11;
reg   [63:0] tmp_9_reg_4266;
wire   [5:0] add_ln53_4_fu_1529_p2;
reg   [5:0] add_ln53_4_reg_4311;
wire   [5:0] add_ln53_5_fu_1534_p2;
reg   [5:0] add_ln53_5_reg_4317;
reg   [63:0] llike_load_1_reg_4323;
wire   [63:0] tmp_13_fu_1555_p11;
reg   [63:0] tmp_13_reg_4328;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_15_fu_1594_p11;
reg   [63:0] tmp_15_reg_4333;
wire   [5:0] add_ln53_7_fu_1657_p2;
reg   [5:0] add_ln53_7_reg_4378;
wire   [63:0] tmp_16_fu_1678_p11;
reg   [63:0] tmp_16_reg_4384;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_17_fu_1717_p11;
reg   [63:0] tmp_17_reg_4389;
wire   [63:0] tmp_18_fu_1796_p11;
reg   [63:0] tmp_18_reg_4434;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] tmp_19_fu_1835_p11;
reg   [63:0] tmp_19_reg_4439;
wire   [63:0] tmp_20_fu_1914_p11;
reg   [63:0] tmp_20_reg_4484;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] tmp_21_fu_1953_p11;
reg   [63:0] tmp_21_reg_4489;
wire   [63:0] tmp_22_fu_2032_p11;
reg   [63:0] tmp_22_reg_4534;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_23_fu_2071_p11;
reg   [63:0] tmp_23_reg_4539;
wire   [63:0] tmp_24_fu_2150_p11;
reg   [63:0] tmp_24_reg_4584;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] tmp_25_fu_2189_p11;
reg   [63:0] tmp_25_reg_4589;
wire   [5:0] trunc_ln54_fu_2212_p1;
reg   [5:0] trunc_ln54_reg_4594;
reg   [5:0] trunc_ln54_reg_4594_pp0_iter1_reg;
wire   [63:0] tmp_26_fu_2252_p11;
reg   [63:0] tmp_26_reg_4619;
reg   [63:0] min_p_1_reg_4624;
wire   [0:0] and_ln55_1_fu_2356_p2;
reg   [0:0] and_ln55_1_reg_4631;
wire   [63:0] min_p_3_fu_2362_p3;
reg   [63:0] min_p_3_reg_4637;
wire   [0:0] and_ln55_3_fu_2446_p2;
reg   [0:0] and_ln55_3_reg_4644;
wire   [63:0] min_p_5_fu_2452_p3;
reg   [63:0] min_p_5_reg_4650;
wire   [0:0] and_ln55_5_fu_2536_p2;
reg   [0:0] and_ln55_5_reg_4657;
wire   [63:0] min_p_7_fu_2542_p3;
reg   [63:0] min_p_7_reg_4663;
wire   [0:0] and_ln55_7_fu_2626_p2;
reg   [0:0] and_ln55_7_reg_4670;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_8_reg_4676;
wire   [63:0] min_p_9_fu_2665_p3;
reg   [63:0] min_p_9_reg_4683;
wire   [7:0] min_s_7_fu_2675_p3;
reg   [7:0] min_s_7_reg_4690;
wire   [0:0] and_ln55_9_fu_2759_p2;
reg   [0:0] and_ln55_9_reg_4695;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_10_reg_4701;
wire   [63:0] min_p_11_fu_2765_p3;
reg   [63:0] min_p_11_reg_4708;
wire   [0:0] and_ln55_11_fu_2849_p2;
reg   [0:0] and_ln55_11_reg_4715;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_12_reg_4721;
wire   [63:0] min_p_13_fu_2864_p3;
reg   [63:0] min_p_13_reg_4728;
wire   [7:0] min_s_9_fu_2874_p3;
reg   [7:0] min_s_9_reg_4735;
wire   [0:0] and_ln55_13_fu_2958_p2;
reg   [0:0] and_ln55_13_reg_4740;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_14_reg_4746;
wire   [63:0] min_p_15_fu_2964_p3;
reg   [63:0] min_p_15_reg_4753;
wire   [0:0] and_ln55_15_fu_3048_p2;
reg   [0:0] and_ln55_15_reg_4760;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_17_fu_3063_p3;
reg   [63:0] min_p_17_reg_4766;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_3073_p3;
reg   [7:0] min_s_11_reg_4773;
wire   [0:0] and_ln55_17_fu_3156_p2;
reg   [0:0] and_ln55_17_reg_4778;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_19_fu_3162_p3;
reg   [63:0] min_p_19_reg_4784;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_3245_p2;
reg   [0:0] and_ln55_19_reg_4791;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_21_fu_3260_p3;
reg   [63:0] min_p_21_reg_4797;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_3270_p3;
reg   [7:0] min_s_13_reg_4804;
wire   [0:0] and_ln55_21_fu_3353_p2;
reg   [0:0] and_ln55_21_reg_4809;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_23_fu_3359_p3;
reg   [63:0] min_p_23_reg_4815;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_3452_p2;
reg   [0:0] and_ln55_23_reg_4822;
wire   [63:0] min_p_25_fu_3467_p3;
reg   [63:0] min_p_25_reg_4828;
wire   [7:0] min_s_15_fu_3477_p3;
reg   [7:0] min_s_15_reg_4835;
wire   [0:0] and_ln55_25_fu_3560_p2;
reg   [0:0] and_ln55_25_reg_4840;
wire   [63:0] min_p_27_fu_3566_p3;
reg   [63:0] min_p_27_reg_4846;
wire   [0:0] and_ln55_27_fu_3649_p2;
reg   [0:0] and_ln55_27_reg_4853;
wire   [63:0] min_p_29_fu_3655_p3;
reg   [63:0] min_p_29_reg_4859;
wire   [0:0] and_ln55_29_fu_3738_p2;
reg   [0:0] and_ln55_29_reg_4866;
wire   [63:0] min_p_31_fu_3744_p3;
reg   [63:0] min_p_31_reg_4872;
wire   [7:0] min_s_18_fu_3772_p3;
reg   [7:0] min_s_18_reg_4879;
reg   [0:0] tmp_73_reg_4884;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_1018_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_1043_p1;
wire   [63:0] zext_ln54_17_fu_1087_p1;
wire   [63:0] zext_ln54_18_fu_1106_p1;
wire   [63:0] zext_ln54_19_fu_1135_p1;
wire   [63:0] zext_ln54_20_fu_1164_p1;
wire   [63:0] zext_ln54_21_fu_1193_p1;
wire   [63:0] zext_ln54_22_fu_1222_p1;
wire   [63:0] zext_ln54_23_fu_1251_p1;
wire   [63:0] zext_ln54_24_fu_1280_p1;
wire   [63:0] zext_ln54_1_fu_1350_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1370_p1;
wire   [63:0] zext_ln54_26_fu_1406_p1;
wire   [63:0] zext_ln54_3_fu_1501_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1521_p1;
wire   [63:0] zext_ln54_5_fu_1629_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1649_p1;
wire   [63:0] zext_ln54_7_fu_1752_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1772_p1;
wire   [63:0] zext_ln54_9_fu_1870_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1890_p1;
wire   [63:0] zext_ln54_11_fu_1988_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_2008_p1;
wire   [63:0] zext_ln54_13_fu_2106_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_2126_p1;
wire   [63:0] zext_ln54_15_fu_2228_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_148;
wire   [63:0] min_p_33_fu_3862_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_152;
wire   [7:0] min_s_19_fu_3872_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_156;
wire   [5:0] add_ln53_15_fu_3365_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
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
reg   [63:0] grp_fu_941_p0;
reg   [63:0] grp_fu_941_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_945_p0;
reg   [63:0] grp_fu_945_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [2:0] lshr_ln8_9_fu_1000_p4;
wire   [10:0] tmp_s_fu_1010_p3;
wire   [9:0] shl_ln2_fu_1029_p3;
wire   [9:0] add_ln54_fu_1037_p2;
wire   [2:0] lshr_ln8_s_fu_1069_p4;
wire   [10:0] tmp_38_fu_1079_p3;
wire   [2:0] add_ln8_fu_1092_p2;
wire   [10:0] tmp_42_fu_1098_p3;
wire   [2:0] lshr_ln8_1_fu_1117_p4;
wire   [10:0] tmp_46_fu_1127_p3;
wire   [2:0] lshr_ln8_2_fu_1146_p4;
wire   [10:0] tmp_50_fu_1156_p3;
wire   [2:0] lshr_ln8_3_fu_1175_p4;
wire   [10:0] tmp_54_fu_1185_p3;
wire   [2:0] lshr_ln8_4_fu_1204_p4;
wire   [10:0] tmp_58_fu_1214_p3;
wire   [2:0] lshr_ln8_5_fu_1233_p4;
wire   [10:0] tmp_62_fu_1243_p3;
wire   [2:0] lshr_ln8_6_fu_1262_p4;
wire   [10:0] tmp_66_fu_1272_p3;
wire   [6:0] zext_ln20_fu_996_p1;
wire   [63:0] tmp_1_fu_1315_p2;
wire   [63:0] tmp_1_fu_1315_p4;
wire   [63:0] tmp_1_fu_1315_p6;
wire   [63:0] tmp_1_fu_1315_p8;
wire   [63:0] tmp_1_fu_1315_p9;
wire   [9:0] shl_ln54_1_fu_1338_p3;
wire   [9:0] add_ln54_1_fu_1345_p2;
wire   [9:0] shl_ln54_2_fu_1358_p3;
wire   [9:0] add_ln54_2_fu_1365_p2;
wire   [3:0] lshr_ln9_3_fu_1388_p4;
wire   [10:0] zext_ln54_25_fu_1397_p1;
wire   [10:0] add_ln54_16_fu_1401_p2;
wire   [63:0] tmp_5_fu_1427_p2;
wire   [63:0] tmp_5_fu_1427_p4;
wire   [63:0] tmp_5_fu_1427_p6;
wire   [63:0] tmp_5_fu_1427_p8;
wire   [63:0] tmp_5_fu_1427_p9;
wire   [63:0] tmp_9_fu_1466_p2;
wire   [63:0] tmp_9_fu_1466_p4;
wire   [63:0] tmp_9_fu_1466_p6;
wire   [63:0] tmp_9_fu_1466_p8;
wire   [63:0] tmp_9_fu_1466_p9;
wire   [9:0] shl_ln54_3_fu_1489_p3;
wire   [9:0] add_ln54_3_fu_1496_p2;
wire   [9:0] shl_ln54_4_fu_1509_p3;
wire   [9:0] add_ln54_4_fu_1516_p2;
wire   [63:0] tmp_13_fu_1555_p2;
wire   [63:0] tmp_13_fu_1555_p4;
wire   [63:0] tmp_13_fu_1555_p6;
wire   [63:0] tmp_13_fu_1555_p8;
wire   [63:0] tmp_13_fu_1555_p9;
wire   [63:0] tmp_15_fu_1594_p2;
wire   [63:0] tmp_15_fu_1594_p4;
wire   [63:0] tmp_15_fu_1594_p6;
wire   [63:0] tmp_15_fu_1594_p8;
wire   [63:0] tmp_15_fu_1594_p9;
wire   [9:0] shl_ln54_5_fu_1617_p3;
wire   [9:0] add_ln54_5_fu_1624_p2;
wire   [9:0] shl_ln54_6_fu_1637_p3;
wire   [9:0] add_ln54_6_fu_1644_p2;
wire   [63:0] tmp_16_fu_1678_p2;
wire   [63:0] tmp_16_fu_1678_p4;
wire   [63:0] tmp_16_fu_1678_p6;
wire   [63:0] tmp_16_fu_1678_p8;
wire   [63:0] tmp_16_fu_1678_p9;
wire   [63:0] tmp_17_fu_1717_p2;
wire   [63:0] tmp_17_fu_1717_p4;
wire   [63:0] tmp_17_fu_1717_p6;
wire   [63:0] tmp_17_fu_1717_p8;
wire   [63:0] tmp_17_fu_1717_p9;
wire   [9:0] shl_ln54_7_fu_1740_p3;
wire   [9:0] add_ln54_7_fu_1747_p2;
wire   [9:0] shl_ln54_8_fu_1760_p3;
wire   [9:0] add_ln54_8_fu_1767_p2;
wire   [63:0] tmp_18_fu_1796_p2;
wire   [63:0] tmp_18_fu_1796_p4;
wire   [63:0] tmp_18_fu_1796_p6;
wire   [63:0] tmp_18_fu_1796_p8;
wire   [63:0] tmp_18_fu_1796_p9;
wire   [63:0] tmp_19_fu_1835_p2;
wire   [63:0] tmp_19_fu_1835_p4;
wire   [63:0] tmp_19_fu_1835_p6;
wire   [63:0] tmp_19_fu_1835_p8;
wire   [63:0] tmp_19_fu_1835_p9;
wire   [9:0] shl_ln54_9_fu_1858_p3;
wire   [9:0] add_ln54_9_fu_1865_p2;
wire   [9:0] shl_ln54_s_fu_1878_p3;
wire   [9:0] add_ln54_10_fu_1885_p2;
wire   [63:0] tmp_20_fu_1914_p2;
wire   [63:0] tmp_20_fu_1914_p4;
wire   [63:0] tmp_20_fu_1914_p6;
wire   [63:0] tmp_20_fu_1914_p8;
wire   [63:0] tmp_20_fu_1914_p9;
wire   [63:0] tmp_21_fu_1953_p2;
wire   [63:0] tmp_21_fu_1953_p4;
wire   [63:0] tmp_21_fu_1953_p6;
wire   [63:0] tmp_21_fu_1953_p8;
wire   [63:0] tmp_21_fu_1953_p9;
wire   [9:0] shl_ln54_10_fu_1976_p3;
wire   [9:0] add_ln54_11_fu_1983_p2;
wire   [9:0] shl_ln54_11_fu_1996_p3;
wire   [9:0] add_ln54_12_fu_2003_p2;
wire   [63:0] tmp_22_fu_2032_p2;
wire   [63:0] tmp_22_fu_2032_p4;
wire   [63:0] tmp_22_fu_2032_p6;
wire   [63:0] tmp_22_fu_2032_p8;
wire   [63:0] tmp_22_fu_2032_p9;
wire   [63:0] tmp_23_fu_2071_p2;
wire   [63:0] tmp_23_fu_2071_p4;
wire   [63:0] tmp_23_fu_2071_p6;
wire   [63:0] tmp_23_fu_2071_p8;
wire   [63:0] tmp_23_fu_2071_p9;
wire   [9:0] shl_ln54_12_fu_2094_p3;
wire   [9:0] add_ln54_13_fu_2101_p2;
wire   [9:0] shl_ln54_13_fu_2114_p3;
wire   [9:0] add_ln54_14_fu_2121_p2;
wire   [63:0] tmp_24_fu_2150_p2;
wire   [63:0] tmp_24_fu_2150_p4;
wire   [63:0] tmp_24_fu_2150_p6;
wire   [63:0] tmp_24_fu_2150_p8;
wire   [63:0] tmp_24_fu_2150_p9;
wire   [63:0] tmp_25_fu_2189_p2;
wire   [63:0] tmp_25_fu_2189_p4;
wire   [63:0] tmp_25_fu_2189_p6;
wire   [63:0] tmp_25_fu_2189_p8;
wire   [63:0] tmp_25_fu_2189_p9;
wire   [9:0] shl_ln54_14_fu_2215_p3;
wire   [9:0] add_ln54_15_fu_2223_p2;
wire   [63:0] tmp_26_fu_2252_p2;
wire   [63:0] tmp_26_fu_2252_p4;
wire   [63:0] tmp_26_fu_2252_p6;
wire   [63:0] tmp_26_fu_2252_p8;
wire   [63:0] tmp_26_fu_2252_p9;
wire   [63:0] bitcast_ln55_fu_2279_p1;
wire   [63:0] bitcast_ln55_1_fu_2297_p1;
wire   [10:0] tmp_2_fu_2283_p4;
wire   [51:0] trunc_ln55_fu_2293_p1;
wire   [0:0] icmp_ln55_1_fu_2320_p2;
wire   [0:0] icmp_ln55_fu_2314_p2;
wire   [10:0] tmp_3_fu_2300_p4;
wire   [51:0] trunc_ln55_1_fu_2310_p1;
wire   [0:0] icmp_ln55_3_fu_2338_p2;
wire   [0:0] icmp_ln55_2_fu_2332_p2;
wire   [0:0] or_ln55_fu_2326_p2;
wire   [0:0] and_ln55_fu_2350_p2;
wire   [0:0] or_ln55_1_fu_2344_p2;
wire   [63:0] bitcast_ln55_2_fu_2369_p1;
wire   [63:0] bitcast_ln55_3_fu_2387_p1;
wire   [10:0] tmp_6_fu_2373_p4;
wire   [51:0] trunc_ln55_2_fu_2383_p1;
wire   [0:0] icmp_ln55_5_fu_2410_p2;
wire   [0:0] icmp_ln55_4_fu_2404_p2;
wire   [10:0] tmp_7_fu_2390_p4;
wire   [51:0] trunc_ln55_3_fu_2400_p1;
wire   [0:0] icmp_ln55_7_fu_2428_p2;
wire   [0:0] icmp_ln55_6_fu_2422_p2;
wire   [0:0] or_ln55_3_fu_2434_p2;
wire   [0:0] or_ln55_2_fu_2416_p2;
wire   [0:0] and_ln55_2_fu_2440_p2;
wire   [63:0] bitcast_ln55_4_fu_2459_p1;
wire   [63:0] bitcast_ln55_5_fu_2477_p1;
wire   [10:0] tmp_10_fu_2463_p4;
wire   [51:0] trunc_ln55_4_fu_2473_p1;
wire   [0:0] icmp_ln55_9_fu_2500_p2;
wire   [0:0] icmp_ln55_8_fu_2494_p2;
wire   [10:0] tmp_11_fu_2480_p4;
wire   [51:0] trunc_ln55_5_fu_2490_p1;
wire   [0:0] icmp_ln55_11_fu_2518_p2;
wire   [0:0] icmp_ln55_10_fu_2512_p2;
wire   [0:0] or_ln55_5_fu_2524_p2;
wire   [0:0] or_ln55_4_fu_2506_p2;
wire   [0:0] and_ln55_4_fu_2530_p2;
wire   [63:0] bitcast_ln55_6_fu_2549_p1;
wire   [63:0] bitcast_ln55_7_fu_2567_p1;
wire   [10:0] tmp_14_fu_2553_p4;
wire   [51:0] trunc_ln55_6_fu_2563_p1;
wire   [0:0] icmp_ln55_13_fu_2590_p2;
wire   [0:0] icmp_ln55_12_fu_2584_p2;
wire   [10:0] tmp_27_fu_2570_p4;
wire   [51:0] trunc_ln55_7_fu_2580_p1;
wire   [0:0] icmp_ln55_15_fu_2608_p2;
wire   [0:0] icmp_ln55_14_fu_2602_p2;
wire   [0:0] or_ln55_7_fu_2614_p2;
wire   [0:0] or_ln55_6_fu_2596_p2;
wire   [0:0] and_ln55_6_fu_2620_p2;
wire   [7:0] zext_ln55_fu_2635_p1;
wire   [7:0] zext_ln55_1_fu_2645_p1;
wire   [7:0] min_s_4_fu_2638_p3;
wire   [7:0] zext_ln55_2_fu_2655_p1;
wire   [7:0] min_s_5_fu_2648_p3;
wire   [7:0] zext_ln55_3_fu_2672_p1;
wire   [7:0] min_s_6_fu_2658_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_2682_p1;
wire   [63:0] bitcast_ln55_9_fu_2700_p1;
wire   [10:0] tmp_29_fu_2686_p4;
wire   [51:0] trunc_ln55_8_fu_2696_p1;
wire   [0:0] icmp_ln55_17_fu_2723_p2;
wire   [0:0] icmp_ln55_16_fu_2717_p2;
wire   [10:0] tmp_30_fu_2703_p4;
wire   [51:0] trunc_ln55_9_fu_2713_p1;
wire   [0:0] icmp_ln55_19_fu_2741_p2;
wire   [0:0] icmp_ln55_18_fu_2735_p2;
wire   [0:0] or_ln55_9_fu_2747_p2;
wire   [0:0] or_ln55_8_fu_2729_p2;
wire   [0:0] and_ln55_8_fu_2753_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_2772_p1;
wire   [63:0] bitcast_ln55_11_fu_2790_p1;
wire   [10:0] tmp_32_fu_2776_p4;
wire   [51:0] trunc_ln55_10_fu_2786_p1;
wire   [0:0] icmp_ln55_21_fu_2813_p2;
wire   [0:0] icmp_ln55_20_fu_2807_p2;
wire   [10:0] tmp_33_fu_2793_p4;
wire   [51:0] trunc_ln55_11_fu_2803_p1;
wire   [0:0] icmp_ln55_23_fu_2831_p2;
wire   [0:0] icmp_ln55_22_fu_2825_p2;
wire   [0:0] or_ln55_11_fu_2837_p2;
wire   [0:0] or_ln55_10_fu_2819_p2;
wire   [0:0] and_ln55_10_fu_2843_p2;
wire   [7:0] zext_ln55_4_fu_2855_p1;
wire   [7:0] zext_ln55_5_fu_2871_p1;
wire   [7:0] min_s_8_fu_2858_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_2881_p1;
wire   [63:0] bitcast_ln55_13_fu_2899_p1;
wire   [10:0] tmp_35_fu_2885_p4;
wire   [51:0] trunc_ln55_12_fu_2895_p1;
wire   [0:0] icmp_ln55_25_fu_2922_p2;
wire   [0:0] icmp_ln55_24_fu_2916_p2;
wire   [10:0] tmp_36_fu_2902_p4;
wire   [51:0] trunc_ln55_13_fu_2912_p1;
wire   [0:0] icmp_ln55_27_fu_2940_p2;
wire   [0:0] icmp_ln55_26_fu_2934_p2;
wire   [0:0] or_ln55_13_fu_2946_p2;
wire   [0:0] or_ln55_12_fu_2928_p2;
wire   [0:0] and_ln55_12_fu_2952_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_2971_p1;
wire   [63:0] bitcast_ln55_15_fu_2989_p1;
wire   [10:0] tmp_39_fu_2975_p4;
wire   [51:0] trunc_ln55_14_fu_2985_p1;
wire   [0:0] icmp_ln55_29_fu_3012_p2;
wire   [0:0] icmp_ln55_28_fu_3006_p2;
wire   [10:0] tmp_40_fu_2992_p4;
wire   [51:0] trunc_ln55_15_fu_3002_p1;
wire   [0:0] icmp_ln55_31_fu_3030_p2;
wire   [0:0] icmp_ln55_30_fu_3024_p2;
wire   [0:0] or_ln55_15_fu_3036_p2;
wire   [0:0] or_ln55_14_fu_3018_p2;
wire   [0:0] and_ln55_14_fu_3042_p2;
wire   [7:0] zext_ln55_6_fu_3054_p1;
wire   [7:0] zext_ln55_7_fu_3070_p1;
wire   [7:0] min_s_10_fu_3057_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_3080_p1;
wire   [63:0] bitcast_ln55_17_fu_3097_p1;
wire   [10:0] tmp_43_fu_3083_p4;
wire   [51:0] trunc_ln55_16_fu_3093_p1;
wire   [0:0] icmp_ln55_33_fu_3120_p2;
wire   [0:0] icmp_ln55_32_fu_3114_p2;
wire   [10:0] tmp_44_fu_3100_p4;
wire   [51:0] trunc_ln55_17_fu_3110_p1;
wire   [0:0] icmp_ln55_35_fu_3138_p2;
wire   [0:0] icmp_ln55_34_fu_3132_p2;
wire   [0:0] or_ln55_17_fu_3144_p2;
wire   [0:0] or_ln55_16_fu_3126_p2;
wire   [0:0] and_ln55_16_fu_3150_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_3168_p1;
wire   [63:0] bitcast_ln55_19_fu_3186_p1;
wire   [10:0] tmp_47_fu_3172_p4;
wire   [51:0] trunc_ln55_18_fu_3182_p1;
wire   [0:0] icmp_ln55_37_fu_3209_p2;
wire   [0:0] icmp_ln55_36_fu_3203_p2;
wire   [10:0] tmp_48_fu_3189_p4;
wire   [51:0] trunc_ln55_19_fu_3199_p1;
wire   [0:0] icmp_ln55_39_fu_3227_p2;
wire   [0:0] icmp_ln55_38_fu_3221_p2;
wire   [0:0] or_ln55_19_fu_3233_p2;
wire   [0:0] or_ln55_18_fu_3215_p2;
wire   [0:0] and_ln55_18_fu_3239_p2;
wire   [7:0] zext_ln55_8_fu_3251_p1;
wire   [7:0] zext_ln55_9_fu_3267_p1;
wire   [7:0] min_s_12_fu_3254_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_3277_p1;
wire   [63:0] bitcast_ln55_21_fu_3294_p1;
wire   [10:0] tmp_51_fu_3280_p4;
wire   [51:0] trunc_ln55_20_fu_3290_p1;
wire   [0:0] icmp_ln55_41_fu_3317_p2;
wire   [0:0] icmp_ln55_40_fu_3311_p2;
wire   [10:0] tmp_52_fu_3297_p4;
wire   [51:0] trunc_ln55_21_fu_3307_p1;
wire   [0:0] icmp_ln55_43_fu_3335_p2;
wire   [0:0] icmp_ln55_42_fu_3329_p2;
wire   [0:0] or_ln55_21_fu_3341_p2;
wire   [0:0] or_ln55_20_fu_3323_p2;
wire   [0:0] and_ln55_20_fu_3347_p2;
wire   [63:0] bitcast_ln55_22_fu_3375_p1;
wire   [63:0] bitcast_ln55_23_fu_3393_p1;
wire   [10:0] tmp_55_fu_3379_p4;
wire   [51:0] trunc_ln55_22_fu_3389_p1;
wire   [0:0] icmp_ln55_45_fu_3416_p2;
wire   [0:0] icmp_ln55_44_fu_3410_p2;
wire   [10:0] tmp_56_fu_3396_p4;
wire   [51:0] trunc_ln55_23_fu_3406_p1;
wire   [0:0] icmp_ln55_47_fu_3434_p2;
wire   [0:0] icmp_ln55_46_fu_3428_p2;
wire   [0:0] or_ln55_23_fu_3440_p2;
wire   [0:0] or_ln55_22_fu_3422_p2;
wire   [0:0] and_ln55_22_fu_3446_p2;
wire   [7:0] zext_ln55_10_fu_3458_p1;
wire   [7:0] zext_ln55_11_fu_3474_p1;
wire   [7:0] min_s_14_fu_3461_p3;
wire   [63:0] bitcast_ln55_24_fu_3484_p1;
wire   [63:0] bitcast_ln55_25_fu_3501_p1;
wire   [10:0] tmp_59_fu_3487_p4;
wire   [51:0] trunc_ln55_24_fu_3497_p1;
wire   [0:0] icmp_ln55_49_fu_3524_p2;
wire   [0:0] icmp_ln55_48_fu_3518_p2;
wire   [10:0] tmp_60_fu_3504_p4;
wire   [51:0] trunc_ln55_25_fu_3514_p1;
wire   [0:0] icmp_ln55_51_fu_3542_p2;
wire   [0:0] icmp_ln55_50_fu_3536_p2;
wire   [0:0] or_ln55_25_fu_3548_p2;
wire   [0:0] or_ln55_24_fu_3530_p2;
wire   [0:0] and_ln55_24_fu_3554_p2;
wire   [63:0] bitcast_ln55_26_fu_3572_p1;
wire   [63:0] bitcast_ln55_27_fu_3590_p1;
wire   [10:0] tmp_63_fu_3576_p4;
wire   [51:0] trunc_ln55_26_fu_3586_p1;
wire   [0:0] icmp_ln55_53_fu_3613_p2;
wire   [0:0] icmp_ln55_52_fu_3607_p2;
wire   [10:0] tmp_64_fu_3593_p4;
wire   [51:0] trunc_ln55_27_fu_3603_p1;
wire   [0:0] icmp_ln55_55_fu_3631_p2;
wire   [0:0] icmp_ln55_54_fu_3625_p2;
wire   [0:0] or_ln55_27_fu_3637_p2;
wire   [0:0] or_ln55_26_fu_3619_p2;
wire   [0:0] and_ln55_26_fu_3643_p2;
wire   [63:0] bitcast_ln55_28_fu_3662_p1;
wire   [63:0] bitcast_ln55_29_fu_3679_p1;
wire   [10:0] tmp_67_fu_3665_p4;
wire   [51:0] trunc_ln55_28_fu_3675_p1;
wire   [0:0] icmp_ln55_57_fu_3702_p2;
wire   [0:0] icmp_ln55_56_fu_3696_p2;
wire   [10:0] tmp_68_fu_3682_p4;
wire   [51:0] trunc_ln55_29_fu_3692_p1;
wire   [0:0] icmp_ln55_59_fu_3720_p2;
wire   [0:0] icmp_ln55_58_fu_3714_p2;
wire   [0:0] or_ln55_29_fu_3726_p2;
wire   [0:0] or_ln55_28_fu_3708_p2;
wire   [0:0] and_ln55_28_fu_3732_p2;
wire   [7:0] zext_ln55_12_fu_3750_p1;
wire   [7:0] zext_ln55_13_fu_3759_p1;
wire   [7:0] min_s_16_fu_3753_p3;
wire   [7:0] zext_ln55_14_fu_3769_p1;
wire   [7:0] min_s_17_fu_3762_p3;
wire   [63:0] bitcast_ln55_30_fu_3780_p1;
wire   [63:0] bitcast_ln55_31_fu_3798_p1;
wire   [10:0] tmp_71_fu_3784_p4;
wire   [51:0] trunc_ln55_30_fu_3794_p1;
wire   [0:0] icmp_ln55_61_fu_3821_p2;
wire   [0:0] icmp_ln55_60_fu_3815_p2;
wire   [10:0] tmp_72_fu_3801_p4;
wire   [51:0] trunc_ln55_31_fu_3811_p1;
wire   [0:0] icmp_ln55_63_fu_3839_p2;
wire   [0:0] icmp_ln55_62_fu_3833_p2;
wire   [0:0] or_ln55_31_fu_3845_p2;
wire   [0:0] or_ln55_30_fu_3827_p2;
wire   [0:0] and_ln55_30_fu_3851_p2;
wire   [0:0] and_ln55_31_fu_3857_p2;
wire   [7:0] zext_ln55_15_fu_3869_p1;
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
wire   [1:0] tmp_1_fu_1315_p1;
wire   [1:0] tmp_1_fu_1315_p3;
wire  signed [1:0] tmp_1_fu_1315_p5;
wire  signed [1:0] tmp_1_fu_1315_p7;
wire   [1:0] tmp_5_fu_1427_p1;
wire   [1:0] tmp_5_fu_1427_p3;
wire  signed [1:0] tmp_5_fu_1427_p5;
wire  signed [1:0] tmp_5_fu_1427_p7;
wire   [1:0] tmp_9_fu_1466_p1;
wire   [1:0] tmp_9_fu_1466_p3;
wire  signed [1:0] tmp_9_fu_1466_p5;
wire  signed [1:0] tmp_9_fu_1466_p7;
wire   [1:0] tmp_13_fu_1555_p1;
wire   [1:0] tmp_13_fu_1555_p3;
wire  signed [1:0] tmp_13_fu_1555_p5;
wire  signed [1:0] tmp_13_fu_1555_p7;
wire   [1:0] tmp_15_fu_1594_p1;
wire   [1:0] tmp_15_fu_1594_p3;
wire  signed [1:0] tmp_15_fu_1594_p5;
wire  signed [1:0] tmp_15_fu_1594_p7;
wire   [1:0] tmp_16_fu_1678_p1;
wire   [1:0] tmp_16_fu_1678_p3;
wire  signed [1:0] tmp_16_fu_1678_p5;
wire  signed [1:0] tmp_16_fu_1678_p7;
wire   [1:0] tmp_17_fu_1717_p1;
wire   [1:0] tmp_17_fu_1717_p3;
wire  signed [1:0] tmp_17_fu_1717_p5;
wire  signed [1:0] tmp_17_fu_1717_p7;
wire   [1:0] tmp_18_fu_1796_p1;
wire   [1:0] tmp_18_fu_1796_p3;
wire  signed [1:0] tmp_18_fu_1796_p5;
wire  signed [1:0] tmp_18_fu_1796_p7;
wire   [1:0] tmp_19_fu_1835_p1;
wire   [1:0] tmp_19_fu_1835_p3;
wire  signed [1:0] tmp_19_fu_1835_p5;
wire  signed [1:0] tmp_19_fu_1835_p7;
wire   [1:0] tmp_20_fu_1914_p1;
wire   [1:0] tmp_20_fu_1914_p3;
wire  signed [1:0] tmp_20_fu_1914_p5;
wire  signed [1:0] tmp_20_fu_1914_p7;
wire   [1:0] tmp_21_fu_1953_p1;
wire   [1:0] tmp_21_fu_1953_p3;
wire  signed [1:0] tmp_21_fu_1953_p5;
wire  signed [1:0] tmp_21_fu_1953_p7;
wire   [1:0] tmp_22_fu_2032_p1;
wire   [1:0] tmp_22_fu_2032_p3;
wire  signed [1:0] tmp_22_fu_2032_p5;
wire  signed [1:0] tmp_22_fu_2032_p7;
wire   [1:0] tmp_23_fu_2071_p1;
wire   [1:0] tmp_23_fu_2071_p3;
wire  signed [1:0] tmp_23_fu_2071_p5;
wire  signed [1:0] tmp_23_fu_2071_p7;
wire   [1:0] tmp_24_fu_2150_p1;
wire   [1:0] tmp_24_fu_2150_p3;
wire  signed [1:0] tmp_24_fu_2150_p5;
wire  signed [1:0] tmp_24_fu_2150_p7;
wire   [1:0] tmp_25_fu_2189_p1;
wire   [1:0] tmp_25_fu_2189_p3;
wire  signed [1:0] tmp_25_fu_2189_p5;
wire  signed [1:0] tmp_25_fu_2189_p7;
wire   [1:0] tmp_26_fu_2252_p1;
wire   [1:0] tmp_26_fu_2252_p3;
wire  signed [1:0] tmp_26_fu_2252_p5;
wire  signed [1:0] tmp_26_fu_2252_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_148 = 64'd0;
#0 min_s_fu_152 = 8'd0;
#0 min_s_1_fu_156 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U65(.din0(tmp_1_fu_1315_p2),.din1(tmp_1_fu_1315_p4),.din2(tmp_1_fu_1315_p6),.din3(tmp_1_fu_1315_p8),.def(tmp_1_fu_1315_p9),.sel(empty),.dout(tmp_1_fu_1315_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U66(.din0(tmp_5_fu_1427_p2),.din1(tmp_5_fu_1427_p4),.din2(tmp_5_fu_1427_p6),.din3(tmp_5_fu_1427_p8),.def(tmp_5_fu_1427_p9),.sel(empty),.dout(tmp_5_fu_1427_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U67(.din0(tmp_9_fu_1466_p2),.din1(tmp_9_fu_1466_p4),.din2(tmp_9_fu_1466_p6),.din3(tmp_9_fu_1466_p8),.def(tmp_9_fu_1466_p9),.sel(empty),.dout(tmp_9_fu_1466_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U68(.din0(tmp_13_fu_1555_p2),.din1(tmp_13_fu_1555_p4),.din2(tmp_13_fu_1555_p6),.din3(tmp_13_fu_1555_p8),.def(tmp_13_fu_1555_p9),.sel(empty),.dout(tmp_13_fu_1555_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U69(.din0(tmp_15_fu_1594_p2),.din1(tmp_15_fu_1594_p4),.din2(tmp_15_fu_1594_p6),.din3(tmp_15_fu_1594_p8),.def(tmp_15_fu_1594_p9),.sel(empty),.dout(tmp_15_fu_1594_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U70(.din0(tmp_16_fu_1678_p2),.din1(tmp_16_fu_1678_p4),.din2(tmp_16_fu_1678_p6),.din3(tmp_16_fu_1678_p8),.def(tmp_16_fu_1678_p9),.sel(empty),.dout(tmp_16_fu_1678_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U71(.din0(tmp_17_fu_1717_p2),.din1(tmp_17_fu_1717_p4),.din2(tmp_17_fu_1717_p6),.din3(tmp_17_fu_1717_p8),.def(tmp_17_fu_1717_p9),.sel(empty),.dout(tmp_17_fu_1717_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U72(.din0(tmp_18_fu_1796_p2),.din1(tmp_18_fu_1796_p4),.din2(tmp_18_fu_1796_p6),.din3(tmp_18_fu_1796_p8),.def(tmp_18_fu_1796_p9),.sel(empty),.dout(tmp_18_fu_1796_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U73(.din0(tmp_19_fu_1835_p2),.din1(tmp_19_fu_1835_p4),.din2(tmp_19_fu_1835_p6),.din3(tmp_19_fu_1835_p8),.def(tmp_19_fu_1835_p9),.sel(empty),.dout(tmp_19_fu_1835_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U74(.din0(tmp_20_fu_1914_p2),.din1(tmp_20_fu_1914_p4),.din2(tmp_20_fu_1914_p6),.din3(tmp_20_fu_1914_p8),.def(tmp_20_fu_1914_p9),.sel(empty),.dout(tmp_20_fu_1914_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U75(.din0(tmp_21_fu_1953_p2),.din1(tmp_21_fu_1953_p4),.din2(tmp_21_fu_1953_p6),.din3(tmp_21_fu_1953_p8),.def(tmp_21_fu_1953_p9),.sel(empty),.dout(tmp_21_fu_1953_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U76(.din0(tmp_22_fu_2032_p2),.din1(tmp_22_fu_2032_p4),.din2(tmp_22_fu_2032_p6),.din3(tmp_22_fu_2032_p8),.def(tmp_22_fu_2032_p9),.sel(empty),.dout(tmp_22_fu_2032_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U77(.din0(tmp_23_fu_2071_p2),.din1(tmp_23_fu_2071_p4),.din2(tmp_23_fu_2071_p6),.din3(tmp_23_fu_2071_p8),.def(tmp_23_fu_2071_p9),.sel(empty),.dout(tmp_23_fu_2071_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U78(.din0(tmp_24_fu_2150_p2),.din1(tmp_24_fu_2150_p4),.din2(tmp_24_fu_2150_p6),.din3(tmp_24_fu_2150_p8),.def(tmp_24_fu_2150_p9),.sel(empty),.dout(tmp_24_fu_2150_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U79(.din0(tmp_25_fu_2189_p2),.din1(tmp_25_fu_2189_p4),.din2(tmp_25_fu_2189_p6),.din3(tmp_25_fu_2189_p8),.def(tmp_25_fu_2189_p9),.sel(empty),.dout(tmp_25_fu_2189_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U80(.din0(tmp_26_fu_2252_p2),.din1(tmp_26_fu_2252_p4),.din2(tmp_26_fu_2252_p6),.din3(tmp_26_fu_2252_p8),.def(tmp_26_fu_2252_p9),.sel(empty),.dout(tmp_26_fu_2252_p11));
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
        min_p_fu_148 <= min_p_36;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_70_reg_4120_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_148 <= min_p_33_fu_3862_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_1_fu_156 <= 6'd1;
    end else if (((tmp_70_reg_4120 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_156 <= add_ln53_15_fu_3365_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_fu_152 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_70_reg_4120_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_152 <= min_s_19_fu_3872_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_10_reg_4070 <= add_ln53_10_fu_1169_p2;
        add_ln53_10_reg_4070_pp0_iter1_reg <= add_ln53_10_reg_4070;
        add_ln53_11_reg_4081 <= add_ln53_11_fu_1198_p2;
        add_ln53_11_reg_4081_pp0_iter1_reg <= add_ln53_11_reg_4081;
        add_ln53_12_reg_4092 <= add_ln53_12_fu_1227_p2;
        add_ln53_12_reg_4092_pp0_iter1_reg <= add_ln53_12_reg_4092;
        add_ln53_13_reg_4103 <= add_ln53_13_fu_1256_p2;
        add_ln53_13_reg_4103_pp0_iter1_reg <= add_ln53_13_reg_4103;
        add_ln53_14_reg_4114 <= add_ln53_14_fu_1285_p2;
        add_ln53_1_reg_4026 <= add_ln53_1_fu_1057_p2;
        add_ln53_6_reg_4032 <= add_ln53_6_fu_1063_p2;
        add_ln53_8_reg_4048 <= add_ln53_8_fu_1111_p2;
        add_ln53_9_reg_4059 <= add_ln53_9_fu_1140_p2;
        add_ln53_9_reg_4059_pp0_iter1_reg <= add_ln53_9_reg_4059;
        add_ln53_reg_4020 <= add_ln53_fu_1051_p2;
        and_ln55_23_reg_4822 <= and_ln55_23_fu_3452_p2;
        s_reg_3954 <= ap_sig_allocacmp_s;
        tmp_70_reg_4120 <= add_ln53_14_fu_1285_p2[32'd6];
        tmp_70_reg_4120_pp0_iter1_reg <= tmp_70_reg_4120;
        zext_ln52_2_cast_reg_3935[5 : 0] <= zext_ln52_2_cast_fu_974_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_4184 <= add_ln53_2_fu_1378_p2;
        add_ln53_3_reg_4195 <= add_ln53_3_fu_1383_p2;
        min_p_25_reg_4828 <= min_p_25_fu_3467_p3;
        min_s_15_reg_4835 <= min_s_15_fu_3477_p3;
        tmp_1_reg_4129 <= tmp_1_fu_1315_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_4311 <= add_ln53_4_fu_1529_p2;
        add_ln53_5_reg_4317 <= add_ln53_5_fu_1534_p2;
        and_ln55_25_reg_4840 <= and_ln55_25_fu_3560_p2;
        tmp_5_reg_4261 <= tmp_5_fu_1427_p11;
        tmp_9_reg_4266 <= tmp_9_fu_1466_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_7_reg_4378 <= add_ln53_7_fu_1657_p2;
        min_p_27_reg_4846 <= min_p_27_fu_3566_p3;
        tmp_13_reg_4328 <= tmp_13_fu_1555_p11;
        tmp_15_reg_4333 <= tmp_15_fu_1594_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_4715 <= and_ln55_11_fu_2849_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_4740 <= and_ln55_13_fu_2958_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_4760 <= and_ln55_15_fu_3048_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_4778 <= and_ln55_17_fu_3156_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_4791 <= and_ln55_19_fu_3245_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_4631 <= and_ln55_1_fu_2356_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_4809 <= and_ln55_21_fu_3353_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_27_reg_4853 <= and_ln55_27_fu_3649_p2;
        tmp_16_reg_4384 <= tmp_16_fu_1678_p11;
        tmp_17_reg_4389 <= tmp_17_fu_1717_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_29_reg_4866 <= and_ln55_29_fu_3738_p2;
        tmp_20_reg_4484 <= tmp_20_fu_1914_p11;
        tmp_21_reg_4489 <= tmp_21_fu_1953_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_4644 <= and_ln55_3_fu_2446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_4657 <= and_ln55_5_fu_2536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_4670 <= and_ln55_7_fu_2626_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_4695 <= and_ln55_9_fu_2759_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_4221 <= llike_1_q0;
        llike_1_load_reg_4124 <= llike_1_q1;
        llike_2_load_1_reg_4226 <= llike_2_q0;
        llike_2_load_reg_4134 <= llike_2_q1;
        llike_3_load_1_reg_4231 <= llike_3_q0;
        llike_3_load_reg_4159 <= llike_3_q1;
        llike_4_load_1_reg_4236 <= llike_4_q0;
        llike_4_load_reg_4190 <= llike_4_q1;
        llike_5_load_1_reg_4241 <= llike_5_q0;
        llike_5_load_reg_4201 <= llike_5_q1;
        llike_6_load_1_reg_4246 <= llike_6_q0;
        llike_6_load_reg_4206 <= llike_6_q1;
        llike_7_load_1_reg_4251 <= llike_7_q0;
        llike_7_load_reg_4211 <= llike_7_q1;
        llike_load_reg_4216 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_4323 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_11_reg_4708 <= min_p_11_fu_2765_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_13_reg_4728 <= min_p_13_fu_2864_p3;
        min_s_9_reg_4735 <= min_s_9_fu_2874_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_15_reg_4753 <= min_p_15_fu_2964_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_17_reg_4766 <= min_p_17_fu_3063_p3;
        min_s_11_reg_4773 <= min_s_11_fu_3073_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_19_reg_4784 <= min_p_19_fu_3162_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_4624 <= min_p_fu_148;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_21_reg_4797 <= min_p_21_fu_3260_p3;
        min_s_13_reg_4804 <= min_s_13_fu_3270_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_23_reg_4815 <= min_p_23_fu_3359_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_29_reg_4859 <= min_p_29_fu_3655_p3;
        tmp_18_reg_4434 <= tmp_18_fu_1796_p11;
        tmp_19_reg_4439 <= tmp_19_fu_1835_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_31_reg_4872 <= min_p_31_fu_3744_p3;
        tmp_22_reg_4534 <= tmp_22_fu_2032_p11;
        tmp_23_reg_4539 <= tmp_23_fu_2071_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_4637 <= min_p_3_fu_2362_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_4650 <= min_p_5_fu_2452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_7_reg_4663 <= min_p_7_fu_2542_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_9_reg_4683 <= min_p_9_fu_2665_p3;
        min_s_7_reg_4690 <= min_s_7_fu_2675_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_4879 <= min_s_18_fu_3772_p3;
        tmp_73_reg_4884 <= grp_fu_1495_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_10_reg_4701 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_12_reg_4721 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_14_reg_4746 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_8_reg_4676 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_949 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_954 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_959 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_964 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_969 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_24_reg_4584 <= tmp_24_fu_2150_p11;
        tmp_25_reg_4589 <= tmp_25_fu_2189_p11;
        trunc_ln54_reg_4594 <= trunc_ln54_fu_2212_p1;
        trunc_ln54_reg_4594_pp0_iter1_reg <= trunc_ln54_reg_4594;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_26_reg_4619 <= tmp_26_fu_2252_p11;
    end
end
always @ (*) begin
    if (((tmp_70_reg_4120 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_70_reg_4120_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_156;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_941_p0 = llike_load_1_reg_4323;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_941_p0 = llike_7_load_1_reg_4251;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_941_p0 = llike_6_load_1_reg_4246;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_941_p0 = llike_5_load_1_reg_4241;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_941_p0 = llike_4_load_1_reg_4236;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_941_p0 = llike_3_load_1_reg_4231;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_941_p0 = llike_2_load_1_reg_4226;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_941_p0 = llike_1_load_1_reg_4221;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_941_p0 = llike_load_reg_4216;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_941_p0 = llike_7_load_reg_4211;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_941_p0 = llike_6_load_reg_4206;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_941_p0 = llike_5_load_reg_4201;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_941_p0 = llike_4_load_reg_4190;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_941_p0 = llike_3_load_reg_4159;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_941_p0 = llike_2_load_reg_4134;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_941_p0 = llike_1_load_reg_4124;
        end else begin
            grp_fu_941_p0 = 'bx;
        end
    end else begin
        grp_fu_941_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_941_p1 = tmp_26_reg_4619;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_941_p1 = tmp_25_reg_4589;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_941_p1 = tmp_24_reg_4584;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_941_p1 = tmp_23_reg_4539;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_941_p1 = tmp_22_reg_4534;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_941_p1 = tmp_21_reg_4489;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_941_p1 = tmp_20_reg_4484;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_941_p1 = tmp_19_reg_4439;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_941_p1 = tmp_18_reg_4434;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_941_p1 = tmp_17_reg_4389;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_941_p1 = tmp_16_reg_4384;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_941_p1 = tmp_15_reg_4333;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_941_p1 = tmp_13_reg_4328;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_941_p1 = tmp_9_reg_4266;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_941_p1 = tmp_5_reg_4261;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_941_p1 = tmp_1_reg_4129;
        end else begin
            grp_fu_941_p1 = 'bx;
        end
    end else begin
        grp_fu_941_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_945_p0 = p_14_reg_4746;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_945_p0 = p_12_reg_4721;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_945_p0 = p_10_reg_4701;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_945_p0 = p_8_reg_4676;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_945_p0 = reg_969;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_945_p0 = reg_964;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_945_p0 = reg_959;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_945_p0 = reg_954;
    end else if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_945_p0 = reg_949;
    end else begin
        grp_fu_945_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_945_p1 = min_p_31_fu_3744_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_945_p1 = min_p_29_fu_3655_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_945_p1 = min_p_27_fu_3566_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_945_p1 = min_p_25_fu_3467_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_945_p1 = min_p_23_fu_3359_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_945_p1 = min_p_21_fu_3260_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_945_p1 = min_p_19_fu_3162_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_945_p1 = min_p_17_fu_3063_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_945_p1 = min_p_15_fu_2964_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_945_p1 = min_p_13_fu_2864_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_945_p1 = min_p_11_fu_2765_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_945_p1 = min_p_9_fu_2665_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_945_p1 = min_p_7_fu_2542_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_945_p1 = min_p_5_fu_2452_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_945_p1 = min_p_3_fu_2362_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_945_p1 = min_p_fu_148;
    end else begin
        grp_fu_945_p1 = 'bx;
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
            llike_address0_local = zext_ln54_26_fu_1406_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_17_fu_1087_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage8_11001) & (tmp_70_reg_4120_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln54_13_fu_2106_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln54_11_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln54_9_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln54_7_fu_1752_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1629_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1501_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1370_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_1043_p1;
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
            transition_0_address1_local = zext_ln54_15_fu_2228_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln54_14_fu_2126_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln54_12_fu_2008_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln54_10_fu_1890_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_8_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1649_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1350_p1;
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
            transition_1_address0_local = zext_ln54_13_fu_2106_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln54_11_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln54_9_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln54_7_fu_1752_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1629_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1501_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1370_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_1043_p1;
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
            transition_1_address1_local = zext_ln54_15_fu_2228_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln54_14_fu_2126_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln54_12_fu_2008_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln54_10_fu_1890_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_8_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1649_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1350_p1;
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
            transition_2_address0_local = zext_ln54_13_fu_2106_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address0_local = zext_ln54_11_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address0_local = zext_ln54_9_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address0_local = zext_ln54_7_fu_1752_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln54_5_fu_1629_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_1501_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1370_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_1043_p1;
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
            transition_2_address1_local = zext_ln54_15_fu_2228_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_2_address1_local = zext_ln54_14_fu_2126_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address1_local = zext_ln54_12_fu_2008_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address1_local = zext_ln54_10_fu_1890_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address1_local = zext_ln54_8_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1649_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1350_p1;
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
            transition_3_address0_local = zext_ln54_13_fu_2106_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address0_local = zext_ln54_11_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address0_local = zext_ln54_9_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address0_local = zext_ln54_7_fu_1752_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln54_5_fu_1629_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_1501_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1370_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_1043_p1;
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
            transition_3_address1_local = zext_ln54_15_fu_2228_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_3_address1_local = zext_ln54_14_fu_2126_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address1_local = zext_ln54_12_fu_2008_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address1_local = zext_ln54_10_fu_1890_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address1_local = zext_ln54_8_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1649_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1350_p1;
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
assign add_ln53_10_fu_1169_p2 = (ap_sig_allocacmp_s + 6'd11);
assign add_ln53_11_fu_1198_p2 = (ap_sig_allocacmp_s + 6'd12);
assign add_ln53_12_fu_1227_p2 = (ap_sig_allocacmp_s + 6'd13);
assign add_ln53_13_fu_1256_p2 = (ap_sig_allocacmp_s + 6'd14);
assign add_ln53_14_fu_1285_p2 = (zext_ln20_fu_996_p1 + 7'd15);
assign add_ln53_15_fu_3365_p2 = (s_reg_3954 + 6'd16);
assign add_ln53_1_fu_1057_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1378_p2 = (s_reg_3954 + 6'd3);
assign add_ln53_3_fu_1383_p2 = (s_reg_3954 + 6'd4);
assign add_ln53_4_fu_1529_p2 = (s_reg_3954 + 6'd5);
assign add_ln53_5_fu_1534_p2 = (s_reg_3954 + 6'd6);
assign add_ln53_6_fu_1063_p2 = (ap_sig_allocacmp_s + 6'd7);
assign add_ln53_7_fu_1657_p2 = (s_reg_3954 + 6'd8);
assign add_ln53_8_fu_1111_p2 = (ap_sig_allocacmp_s + 6'd9);
assign add_ln53_9_fu_1140_p2 = (ap_sig_allocacmp_s + 6'd10);
assign add_ln53_fu_1051_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1885_p2 = (shl_ln54_s_fu_1878_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_11_fu_1983_p2 = (shl_ln54_10_fu_1976_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_12_fu_2003_p2 = (shl_ln54_11_fu_1996_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_13_fu_2101_p2 = (shl_ln54_12_fu_2094_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_14_fu_2121_p2 = (shl_ln54_13_fu_2114_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_15_fu_2223_p2 = (shl_ln54_14_fu_2215_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_16_fu_1401_p2 = (zext_ln52_3 + zext_ln54_25_fu_1397_p1);
assign add_ln54_1_fu_1345_p2 = (shl_ln54_1_fu_1338_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_2_fu_1365_p2 = (shl_ln54_2_fu_1358_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_3_fu_1496_p2 = (shl_ln54_3_fu_1489_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_4_fu_1516_p2 = (shl_ln54_4_fu_1509_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_5_fu_1624_p2 = (shl_ln54_5_fu_1617_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_6_fu_1644_p2 = (shl_ln54_6_fu_1637_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_7_fu_1747_p2 = (shl_ln54_7_fu_1740_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_8_fu_1767_p2 = (shl_ln54_8_fu_1760_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_9_fu_1865_p2 = (shl_ln54_9_fu_1858_p3 + zext_ln52_2_cast_reg_3935);
assign add_ln54_fu_1037_p2 = (shl_ln2_fu_1029_p3 + zext_ln52_2_cast_fu_974_p1);
assign add_ln8_fu_1092_p2 = (lshr_ln8_9_fu_1000_p4 + 3'd1);
assign and_ln55_10_fu_2843_p2 = (or_ln55_11_fu_2837_p2 & or_ln55_10_fu_2819_p2);
assign and_ln55_11_fu_2849_p2 = (grp_fu_1495_p_dout0 & and_ln55_10_fu_2843_p2);
assign and_ln55_12_fu_2952_p2 = (or_ln55_13_fu_2946_p2 & or_ln55_12_fu_2928_p2);
assign and_ln55_13_fu_2958_p2 = (grp_fu_1495_p_dout0 & and_ln55_12_fu_2952_p2);
assign and_ln55_14_fu_3042_p2 = (or_ln55_15_fu_3036_p2 & or_ln55_14_fu_3018_p2);
assign and_ln55_15_fu_3048_p2 = (grp_fu_1495_p_dout0 & and_ln55_14_fu_3042_p2);
assign and_ln55_16_fu_3150_p2 = (or_ln55_17_fu_3144_p2 & or_ln55_16_fu_3126_p2);
assign and_ln55_17_fu_3156_p2 = (grp_fu_1495_p_dout0 & and_ln55_16_fu_3150_p2);
assign and_ln55_18_fu_3239_p2 = (or_ln55_19_fu_3233_p2 & or_ln55_18_fu_3215_p2);
assign and_ln55_19_fu_3245_p2 = (grp_fu_1495_p_dout0 & and_ln55_18_fu_3239_p2);
assign and_ln55_1_fu_2356_p2 = (or_ln55_1_fu_2344_p2 & and_ln55_fu_2350_p2);
assign and_ln55_20_fu_3347_p2 = (or_ln55_21_fu_3341_p2 & or_ln55_20_fu_3323_p2);
assign and_ln55_21_fu_3353_p2 = (grp_fu_1495_p_dout0 & and_ln55_20_fu_3347_p2);
assign and_ln55_22_fu_3446_p2 = (or_ln55_23_fu_3440_p2 & or_ln55_22_fu_3422_p2);
assign and_ln55_23_fu_3452_p2 = (grp_fu_1495_p_dout0 & and_ln55_22_fu_3446_p2);
assign and_ln55_24_fu_3554_p2 = (or_ln55_25_fu_3548_p2 & or_ln55_24_fu_3530_p2);
assign and_ln55_25_fu_3560_p2 = (grp_fu_1495_p_dout0 & and_ln55_24_fu_3554_p2);
assign and_ln55_26_fu_3643_p2 = (or_ln55_27_fu_3637_p2 & or_ln55_26_fu_3619_p2);
assign and_ln55_27_fu_3649_p2 = (grp_fu_1495_p_dout0 & and_ln55_26_fu_3643_p2);
assign and_ln55_28_fu_3732_p2 = (or_ln55_29_fu_3726_p2 & or_ln55_28_fu_3708_p2);
assign and_ln55_29_fu_3738_p2 = (grp_fu_1495_p_dout0 & and_ln55_28_fu_3732_p2);
assign and_ln55_2_fu_2440_p2 = (or_ln55_3_fu_2434_p2 & or_ln55_2_fu_2416_p2);
assign and_ln55_30_fu_3851_p2 = (or_ln55_31_fu_3845_p2 & or_ln55_30_fu_3827_p2);
assign and_ln55_31_fu_3857_p2 = (tmp_73_reg_4884 & and_ln55_30_fu_3851_p2);
assign and_ln55_3_fu_2446_p2 = (grp_fu_1495_p_dout0 & and_ln55_2_fu_2440_p2);
assign and_ln55_4_fu_2530_p2 = (or_ln55_5_fu_2524_p2 & or_ln55_4_fu_2506_p2);
assign and_ln55_5_fu_2536_p2 = (grp_fu_1495_p_dout0 & and_ln55_4_fu_2530_p2);
assign and_ln55_6_fu_2620_p2 = (or_ln55_7_fu_2614_p2 & or_ln55_6_fu_2596_p2);
assign and_ln55_7_fu_2626_p2 = (grp_fu_1495_p_dout0 & and_ln55_6_fu_2620_p2);
assign and_ln55_8_fu_2753_p2 = (or_ln55_9_fu_2747_p2 & or_ln55_8_fu_2729_p2);
assign and_ln55_9_fu_2759_p2 = (grp_fu_1495_p_dout0 & and_ln55_8_fu_2753_p2);
assign and_ln55_fu_2350_p2 = (or_ln55_fu_2326_p2 & grp_fu_1495_p_dout0);
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
assign bitcast_ln55_10_fu_2772_p1 = reg_954;
assign bitcast_ln55_11_fu_2790_p1 = min_p_11_reg_4708;
assign bitcast_ln55_12_fu_2881_p1 = reg_969;
assign bitcast_ln55_13_fu_2899_p1 = min_p_13_reg_4728;
assign bitcast_ln55_14_fu_2971_p1 = reg_959;
assign bitcast_ln55_15_fu_2989_p1 = min_p_15_reg_4753;
assign bitcast_ln55_16_fu_3080_p1 = p_8_reg_4676;
assign bitcast_ln55_17_fu_3097_p1 = min_p_17_reg_4766;
assign bitcast_ln55_18_fu_3168_p1 = reg_949;
assign bitcast_ln55_19_fu_3186_p1 = min_p_19_reg_4784;
assign bitcast_ln55_1_fu_2297_p1 = min_p_1_reg_4624;
assign bitcast_ln55_20_fu_3277_p1 = p_10_reg_4701;
assign bitcast_ln55_21_fu_3294_p1 = min_p_21_reg_4797;
assign bitcast_ln55_22_fu_3375_p1 = reg_964;
assign bitcast_ln55_23_fu_3393_p1 = min_p_23_reg_4815;
assign bitcast_ln55_24_fu_3484_p1 = p_12_reg_4721;
assign bitcast_ln55_25_fu_3501_p1 = min_p_25_reg_4828;
assign bitcast_ln55_26_fu_3572_p1 = reg_954;
assign bitcast_ln55_27_fu_3590_p1 = min_p_27_reg_4846;
assign bitcast_ln55_28_fu_3662_p1 = p_14_reg_4746;
assign bitcast_ln55_29_fu_3679_p1 = min_p_29_reg_4859;
assign bitcast_ln55_2_fu_2369_p1 = reg_954;
assign bitcast_ln55_30_fu_3780_p1 = reg_969;
assign bitcast_ln55_31_fu_3798_p1 = min_p_31_reg_4872;
assign bitcast_ln55_3_fu_2387_p1 = min_p_3_reg_4637;
assign bitcast_ln55_4_fu_2459_p1 = reg_959;
assign bitcast_ln55_5_fu_2477_p1 = min_p_5_reg_4650;
assign bitcast_ln55_6_fu_2549_p1 = reg_949;
assign bitcast_ln55_7_fu_2567_p1 = min_p_7_reg_4663;
assign bitcast_ln55_8_fu_2682_p1 = reg_964;
assign bitcast_ln55_9_fu_2700_p1 = min_p_9_reg_4683;
assign bitcast_ln55_fu_2279_p1 = reg_949;
assign grp_fu_1495_p_ce = 1'b1;
assign grp_fu_1495_p_din0 = grp_fu_945_p0;
assign grp_fu_1495_p_din1 = grp_fu_945_p1;
assign grp_fu_1495_p_opcode = 5'd4;
assign grp_fu_727_p_ce = 1'b1;
assign grp_fu_727_p_din0 = grp_fu_941_p0;
assign grp_fu_727_p_din1 = grp_fu_941_p1;
assign grp_fu_727_p_opcode = 2'd0;
assign icmp_ln55_10_fu_2512_p2 = ((tmp_11_fu_2480_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_2518_p2 = ((trunc_ln55_5_fu_2490_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2584_p2 = ((tmp_14_fu_2553_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2590_p2 = ((trunc_ln55_6_fu_2563_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2602_p2 = ((tmp_27_fu_2570_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2608_p2 = ((trunc_ln55_7_fu_2580_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2717_p2 = ((tmp_29_fu_2686_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2723_p2 = ((trunc_ln55_8_fu_2696_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2735_p2 = ((tmp_30_fu_2703_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2741_p2 = ((trunc_ln55_9_fu_2713_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_2320_p2 = ((trunc_ln55_fu_2293_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2807_p2 = ((tmp_32_fu_2776_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2813_p2 = ((trunc_ln55_10_fu_2786_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2825_p2 = ((tmp_33_fu_2793_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2831_p2 = ((trunc_ln55_11_fu_2803_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2916_p2 = ((tmp_35_fu_2885_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2922_p2 = ((trunc_ln55_12_fu_2895_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2934_p2 = ((tmp_36_fu_2902_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2940_p2 = ((trunc_ln55_13_fu_2912_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_3006_p2 = ((tmp_39_fu_2975_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_3012_p2 = ((trunc_ln55_14_fu_2985_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_2332_p2 = ((tmp_3_fu_2300_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_3024_p2 = ((tmp_40_fu_2992_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_3030_p2 = ((trunc_ln55_15_fu_3002_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_3114_p2 = ((tmp_43_fu_3083_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_3120_p2 = ((trunc_ln55_16_fu_3093_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_3132_p2 = ((tmp_44_fu_3100_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_3138_p2 = ((trunc_ln55_17_fu_3110_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_3203_p2 = ((tmp_47_fu_3172_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_3209_p2 = ((trunc_ln55_18_fu_3182_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_3221_p2 = ((tmp_48_fu_3189_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_3227_p2 = ((trunc_ln55_19_fu_3199_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_2338_p2 = ((trunc_ln55_1_fu_2310_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_3311_p2 = ((tmp_51_fu_3280_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_3317_p2 = ((trunc_ln55_20_fu_3290_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_3329_p2 = ((tmp_52_fu_3297_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_3335_p2 = ((trunc_ln55_21_fu_3307_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_3410_p2 = ((tmp_55_fu_3379_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_3416_p2 = ((trunc_ln55_22_fu_3389_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_3428_p2 = ((tmp_56_fu_3396_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_3434_p2 = ((trunc_ln55_23_fu_3406_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_3518_p2 = ((tmp_59_fu_3487_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_3524_p2 = ((trunc_ln55_24_fu_3497_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_2404_p2 = ((tmp_6_fu_2373_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_3536_p2 = ((tmp_60_fu_3504_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_3542_p2 = ((trunc_ln55_25_fu_3514_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_3607_p2 = ((tmp_63_fu_3576_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_3613_p2 = ((trunc_ln55_26_fu_3586_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_3625_p2 = ((tmp_64_fu_3593_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_3631_p2 = ((trunc_ln55_27_fu_3603_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_3696_p2 = ((tmp_67_fu_3665_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_3702_p2 = ((trunc_ln55_28_fu_3675_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_3714_p2 = ((tmp_68_fu_3682_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_3720_p2 = ((trunc_ln55_29_fu_3692_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_2410_p2 = ((trunc_ln55_2_fu_2383_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_3815_p2 = ((tmp_71_fu_3784_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_3821_p2 = ((trunc_ln55_30_fu_3794_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_3833_p2 = ((tmp_72_fu_3801_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_3839_p2 = ((trunc_ln55_31_fu_3811_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_2422_p2 = ((tmp_7_fu_2390_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_2428_p2 = ((trunc_ln55_3_fu_2400_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_2494_p2 = ((tmp_10_fu_2463_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_2500_p2 = ((trunc_ln55_4_fu_2473_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_2314_p2 = ((tmp_2_fu_2283_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_18_fu_1106_p1;
assign llike_1_address1 = zext_ln54_16_fu_1018_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln54_19_fu_1135_p1;
assign llike_2_address1 = zext_ln54_16_fu_1018_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln54_20_fu_1164_p1;
assign llike_3_address1 = zext_ln54_16_fu_1018_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_4_address0 = zext_ln54_21_fu_1193_p1;
assign llike_4_address1 = zext_ln54_16_fu_1018_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_ce1 = llike_4_ce1_local;
assign llike_5_address0 = zext_ln54_22_fu_1222_p1;
assign llike_5_address1 = zext_ln54_16_fu_1018_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_ce1 = llike_5_ce1_local;
assign llike_6_address0 = zext_ln54_23_fu_1251_p1;
assign llike_6_address1 = zext_ln54_16_fu_1018_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_ce1 = llike_6_ce1_local;
assign llike_7_address0 = zext_ln54_24_fu_1280_p1;
assign llike_7_address1 = zext_ln54_16_fu_1018_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_ce1 = llike_7_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_1117_p4 = {{add_ln53_8_fu_1111_p2[5:3]}};
assign lshr_ln8_2_fu_1146_p4 = {{add_ln53_9_fu_1140_p2[5:3]}};
assign lshr_ln8_3_fu_1175_p4 = {{add_ln53_10_fu_1169_p2[5:3]}};
assign lshr_ln8_4_fu_1204_p4 = {{add_ln53_11_fu_1198_p2[5:3]}};
assign lshr_ln8_5_fu_1233_p4 = {{add_ln53_12_fu_1227_p2[5:3]}};
assign lshr_ln8_6_fu_1262_p4 = {{add_ln53_13_fu_1256_p2[5:3]}};
assign lshr_ln8_9_fu_1000_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln8_s_fu_1069_p4 = {{add_ln53_6_fu_1063_p2[5:3]}};
assign lshr_ln9_3_fu_1388_p4 = {{add_ln53_14_reg_4114[6:3]}};
assign min_p_11_fu_2765_p3 = ((and_ln55_9_reg_4695[0:0] == 1'b1) ? reg_964 : min_p_9_reg_4683);
assign min_p_13_fu_2864_p3 = ((and_ln55_11_reg_4715[0:0] == 1'b1) ? reg_954 : min_p_11_reg_4708);
assign min_p_15_fu_2964_p3 = ((and_ln55_13_reg_4740[0:0] == 1'b1) ? reg_969 : min_p_13_reg_4728);
assign min_p_17_fu_3063_p3 = ((and_ln55_15_reg_4760[0:0] == 1'b1) ? reg_959 : min_p_15_reg_4753);
assign min_p_19_fu_3162_p3 = ((and_ln55_17_reg_4778[0:0] == 1'b1) ? p_8_reg_4676 : min_p_17_reg_4766);
assign min_p_21_fu_3260_p3 = ((and_ln55_19_reg_4791[0:0] == 1'b1) ? reg_949 : min_p_19_reg_4784);
assign min_p_23_fu_3359_p3 = ((and_ln55_21_reg_4809[0:0] == 1'b1) ? p_10_reg_4701 : min_p_21_reg_4797);
assign min_p_25_fu_3467_p3 = ((and_ln55_23_reg_4822[0:0] == 1'b1) ? reg_964 : min_p_23_reg_4815);
assign min_p_27_fu_3566_p3 = ((and_ln55_25_reg_4840[0:0] == 1'b1) ? p_12_reg_4721 : min_p_25_reg_4828);
assign min_p_29_fu_3655_p3 = ((and_ln55_27_reg_4853[0:0] == 1'b1) ? reg_954 : min_p_27_reg_4846);
assign min_p_31_fu_3744_p3 = ((and_ln55_29_reg_4866[0:0] == 1'b1) ? p_14_reg_4746 : min_p_29_reg_4859);
assign min_p_33_fu_3862_p3 = ((and_ln55_31_fu_3857_p2[0:0] == 1'b1) ? reg_969 : min_p_31_reg_4872);
assign min_p_3_fu_2362_p3 = ((and_ln55_1_reg_4631[0:0] == 1'b1) ? reg_949 : min_p_1_reg_4624);
assign min_p_5_fu_2452_p3 = ((and_ln55_3_reg_4644[0:0] == 1'b1) ? reg_954 : min_p_3_reg_4637);
assign min_p_7_fu_2542_p3 = ((and_ln55_5_reg_4657[0:0] == 1'b1) ? reg_959 : min_p_5_reg_4650);
assign min_p_9_fu_2665_p3 = ((and_ln55_7_reg_4670[0:0] == 1'b1) ? reg_949 : min_p_7_reg_4663);
assign min_s_10_fu_3057_p3 = ((and_ln55_13_reg_4740[0:0] == 1'b1) ? zext_ln55_6_fu_3054_p1 : min_s_9_reg_4735);
assign min_s_11_fu_3073_p3 = ((and_ln55_15_reg_4760[0:0] == 1'b1) ? zext_ln55_7_fu_3070_p1 : min_s_10_fu_3057_p3);
assign min_s_12_fu_3254_p3 = ((and_ln55_17_reg_4778[0:0] == 1'b1) ? zext_ln55_8_fu_3251_p1 : min_s_11_reg_4773);
assign min_s_13_fu_3270_p3 = ((and_ln55_19_reg_4791[0:0] == 1'b1) ? zext_ln55_9_fu_3267_p1 : min_s_12_fu_3254_p3);
assign min_s_14_fu_3461_p3 = ((and_ln55_21_reg_4809[0:0] == 1'b1) ? zext_ln55_10_fu_3458_p1 : min_s_13_reg_4804);
assign min_s_15_fu_3477_p3 = ((and_ln55_23_reg_4822[0:0] == 1'b1) ? zext_ln55_11_fu_3474_p1 : min_s_14_fu_3461_p3);
assign min_s_16_fu_3753_p3 = ((and_ln55_25_reg_4840[0:0] == 1'b1) ? zext_ln55_12_fu_3750_p1 : min_s_15_reg_4835);
assign min_s_17_fu_3762_p3 = ((and_ln55_27_reg_4853[0:0] == 1'b1) ? zext_ln55_13_fu_3759_p1 : min_s_16_fu_3753_p3);
assign min_s_18_fu_3772_p3 = ((and_ln55_29_reg_4866[0:0] == 1'b1) ? zext_ln55_14_fu_3769_p1 : min_s_17_fu_3762_p3);
assign min_s_19_fu_3872_p3 = ((and_ln55_31_fu_3857_p2[0:0] == 1'b1) ? zext_ln55_15_fu_3869_p1 : min_s_18_reg_4879);
assign min_s_34_out = ((and_ln55_29_reg_4866[0:0] == 1'b1) ? zext_ln55_14_fu_3769_p1 : min_s_17_fu_3762_p3);
assign min_s_4_fu_2638_p3 = ((and_ln55_1_reg_4631[0:0] == 1'b1) ? zext_ln55_fu_2635_p1 : min_s_fu_152);
assign min_s_5_fu_2648_p3 = ((and_ln55_3_reg_4644[0:0] == 1'b1) ? zext_ln55_1_fu_2645_p1 : min_s_4_fu_2638_p3);
assign min_s_6_fu_2658_p3 = ((and_ln55_5_reg_4657[0:0] == 1'b1) ? zext_ln55_2_fu_2655_p1 : min_s_5_fu_2648_p3);
assign min_s_7_fu_2675_p3 = ((and_ln55_7_reg_4670[0:0] == 1'b1) ? zext_ln55_3_fu_2672_p1 : min_s_6_fu_2658_p3);
assign min_s_8_fu_2858_p3 = ((and_ln55_9_reg_4695[0:0] == 1'b1) ? zext_ln55_4_fu_2855_p1 : min_s_7_reg_4690);
assign min_s_9_fu_2874_p3 = ((and_ln55_11_reg_4715[0:0] == 1'b1) ? zext_ln55_5_fu_2871_p1 : min_s_8_fu_2858_p3);
assign or_ln55_10_fu_2819_p2 = (icmp_ln55_21_fu_2813_p2 | icmp_ln55_20_fu_2807_p2);
assign or_ln55_11_fu_2837_p2 = (icmp_ln55_23_fu_2831_p2 | icmp_ln55_22_fu_2825_p2);
assign or_ln55_12_fu_2928_p2 = (icmp_ln55_25_fu_2922_p2 | icmp_ln55_24_fu_2916_p2);
assign or_ln55_13_fu_2946_p2 = (icmp_ln55_27_fu_2940_p2 | icmp_ln55_26_fu_2934_p2);
assign or_ln55_14_fu_3018_p2 = (icmp_ln55_29_fu_3012_p2 | icmp_ln55_28_fu_3006_p2);
assign or_ln55_15_fu_3036_p2 = (icmp_ln55_31_fu_3030_p2 | icmp_ln55_30_fu_3024_p2);
assign or_ln55_16_fu_3126_p2 = (icmp_ln55_33_fu_3120_p2 | icmp_ln55_32_fu_3114_p2);
assign or_ln55_17_fu_3144_p2 = (icmp_ln55_35_fu_3138_p2 | icmp_ln55_34_fu_3132_p2);
assign or_ln55_18_fu_3215_p2 = (icmp_ln55_37_fu_3209_p2 | icmp_ln55_36_fu_3203_p2);
assign or_ln55_19_fu_3233_p2 = (icmp_ln55_39_fu_3227_p2 | icmp_ln55_38_fu_3221_p2);
assign or_ln55_1_fu_2344_p2 = (icmp_ln55_3_fu_2338_p2 | icmp_ln55_2_fu_2332_p2);
assign or_ln55_20_fu_3323_p2 = (icmp_ln55_41_fu_3317_p2 | icmp_ln55_40_fu_3311_p2);
assign or_ln55_21_fu_3341_p2 = (icmp_ln55_43_fu_3335_p2 | icmp_ln55_42_fu_3329_p2);
assign or_ln55_22_fu_3422_p2 = (icmp_ln55_45_fu_3416_p2 | icmp_ln55_44_fu_3410_p2);
assign or_ln55_23_fu_3440_p2 = (icmp_ln55_47_fu_3434_p2 | icmp_ln55_46_fu_3428_p2);
assign or_ln55_24_fu_3530_p2 = (icmp_ln55_49_fu_3524_p2 | icmp_ln55_48_fu_3518_p2);
assign or_ln55_25_fu_3548_p2 = (icmp_ln55_51_fu_3542_p2 | icmp_ln55_50_fu_3536_p2);
assign or_ln55_26_fu_3619_p2 = (icmp_ln55_53_fu_3613_p2 | icmp_ln55_52_fu_3607_p2);
assign or_ln55_27_fu_3637_p2 = (icmp_ln55_55_fu_3631_p2 | icmp_ln55_54_fu_3625_p2);
assign or_ln55_28_fu_3708_p2 = (icmp_ln55_57_fu_3702_p2 | icmp_ln55_56_fu_3696_p2);
assign or_ln55_29_fu_3726_p2 = (icmp_ln55_59_fu_3720_p2 | icmp_ln55_58_fu_3714_p2);
assign or_ln55_2_fu_2416_p2 = (icmp_ln55_5_fu_2410_p2 | icmp_ln55_4_fu_2404_p2);
assign or_ln55_30_fu_3827_p2 = (icmp_ln55_61_fu_3821_p2 | icmp_ln55_60_fu_3815_p2);
assign or_ln55_31_fu_3845_p2 = (icmp_ln55_63_fu_3839_p2 | icmp_ln55_62_fu_3833_p2);
assign or_ln55_3_fu_2434_p2 = (icmp_ln55_7_fu_2428_p2 | icmp_ln55_6_fu_2422_p2);
assign or_ln55_4_fu_2506_p2 = (icmp_ln55_9_fu_2500_p2 | icmp_ln55_8_fu_2494_p2);
assign or_ln55_5_fu_2524_p2 = (icmp_ln55_11_fu_2518_p2 | icmp_ln55_10_fu_2512_p2);
assign or_ln55_6_fu_2596_p2 = (icmp_ln55_13_fu_2590_p2 | icmp_ln55_12_fu_2584_p2);
assign or_ln55_7_fu_2614_p2 = (icmp_ln55_15_fu_2608_p2 | icmp_ln55_14_fu_2602_p2);
assign or_ln55_8_fu_2729_p2 = (icmp_ln55_17_fu_2723_p2 | icmp_ln55_16_fu_2717_p2);
assign or_ln55_9_fu_2747_p2 = (icmp_ln55_19_fu_2741_p2 | icmp_ln55_18_fu_2735_p2);
assign or_ln55_fu_2326_p2 = (icmp_ln55_fu_2314_p2 | icmp_ln55_1_fu_2320_p2);
assign shl_ln2_fu_1029_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_10_fu_1976_p3 = {{add_ln53_10_reg_4070}, {4'd0}};
assign shl_ln54_11_fu_1996_p3 = {{add_ln53_11_reg_4081}, {4'd0}};
assign shl_ln54_12_fu_2094_p3 = {{add_ln53_12_reg_4092}, {4'd0}};
assign shl_ln54_13_fu_2114_p3 = {{add_ln53_13_reg_4103}, {4'd0}};
assign shl_ln54_14_fu_2215_p3 = {{trunc_ln54_fu_2212_p1}, {4'd0}};
assign shl_ln54_1_fu_1338_p3 = {{add_ln53_reg_4020}, {4'd0}};
assign shl_ln54_2_fu_1358_p3 = {{add_ln53_1_reg_4026}, {4'd0}};
assign shl_ln54_3_fu_1489_p3 = {{add_ln53_2_reg_4184}, {4'd0}};
assign shl_ln54_4_fu_1509_p3 = {{add_ln53_3_reg_4195}, {4'd0}};
assign shl_ln54_5_fu_1617_p3 = {{add_ln53_4_reg_4311}, {4'd0}};
assign shl_ln54_6_fu_1637_p3 = {{add_ln53_5_reg_4317}, {4'd0}};
assign shl_ln54_7_fu_1740_p3 = {{add_ln53_6_reg_4032}, {4'd0}};
assign shl_ln54_8_fu_1760_p3 = {{add_ln53_7_reg_4378}, {4'd0}};
assign shl_ln54_9_fu_1858_p3 = {{add_ln53_8_reg_4048}, {4'd0}};
assign shl_ln54_s_fu_1878_p3 = {{add_ln53_9_reg_4059}, {4'd0}};
assign tmp_10_fu_2463_p4 = {{bitcast_ln55_4_fu_2459_p1[62:52]}};
assign tmp_11_fu_2480_p4 = {{bitcast_ln55_5_fu_2477_p1[62:52]}};
assign tmp_13_fu_1555_p2 = transition_0_q0;
assign tmp_13_fu_1555_p4 = transition_1_q0;
assign tmp_13_fu_1555_p6 = transition_2_q0;
assign tmp_13_fu_1555_p8 = transition_3_q0;
assign tmp_13_fu_1555_p9 = 'bx;
assign tmp_14_fu_2553_p4 = {{bitcast_ln55_6_fu_2549_p1[62:52]}};
assign tmp_15_fu_1594_p2 = transition_0_q1;
assign tmp_15_fu_1594_p4 = transition_1_q1;
assign tmp_15_fu_1594_p6 = transition_2_q1;
assign tmp_15_fu_1594_p8 = transition_3_q1;
assign tmp_15_fu_1594_p9 = 'bx;
assign tmp_16_fu_1678_p2 = transition_0_q0;
assign tmp_16_fu_1678_p4 = transition_1_q0;
assign tmp_16_fu_1678_p6 = transition_2_q0;
assign tmp_16_fu_1678_p8 = transition_3_q0;
assign tmp_16_fu_1678_p9 = 'bx;
assign tmp_17_fu_1717_p2 = transition_0_q1;
assign tmp_17_fu_1717_p4 = transition_1_q1;
assign tmp_17_fu_1717_p6 = transition_2_q1;
assign tmp_17_fu_1717_p8 = transition_3_q1;
assign tmp_17_fu_1717_p9 = 'bx;
assign tmp_18_fu_1796_p2 = transition_0_q0;
assign tmp_18_fu_1796_p4 = transition_1_q0;
assign tmp_18_fu_1796_p6 = transition_2_q0;
assign tmp_18_fu_1796_p8 = transition_3_q0;
assign tmp_18_fu_1796_p9 = 'bx;
assign tmp_19_fu_1835_p2 = transition_0_q1;
assign tmp_19_fu_1835_p4 = transition_1_q1;
assign tmp_19_fu_1835_p6 = transition_2_q1;
assign tmp_19_fu_1835_p8 = transition_3_q1;
assign tmp_19_fu_1835_p9 = 'bx;
assign tmp_1_fu_1315_p2 = transition_0_q0;
assign tmp_1_fu_1315_p4 = transition_1_q0;
assign tmp_1_fu_1315_p6 = transition_2_q0;
assign tmp_1_fu_1315_p8 = transition_3_q0;
assign tmp_1_fu_1315_p9 = 'bx;
assign tmp_20_fu_1914_p2 = transition_0_q0;
assign tmp_20_fu_1914_p4 = transition_1_q0;
assign tmp_20_fu_1914_p6 = transition_2_q0;
assign tmp_20_fu_1914_p8 = transition_3_q0;
assign tmp_20_fu_1914_p9 = 'bx;
assign tmp_21_fu_1953_p2 = transition_0_q1;
assign tmp_21_fu_1953_p4 = transition_1_q1;
assign tmp_21_fu_1953_p6 = transition_2_q1;
assign tmp_21_fu_1953_p8 = transition_3_q1;
assign tmp_21_fu_1953_p9 = 'bx;
assign tmp_22_fu_2032_p2 = transition_0_q0;
assign tmp_22_fu_2032_p4 = transition_1_q0;
assign tmp_22_fu_2032_p6 = transition_2_q0;
assign tmp_22_fu_2032_p8 = transition_3_q0;
assign tmp_22_fu_2032_p9 = 'bx;
assign tmp_23_fu_2071_p2 = transition_0_q1;
assign tmp_23_fu_2071_p4 = transition_1_q1;
assign tmp_23_fu_2071_p6 = transition_2_q1;
assign tmp_23_fu_2071_p8 = transition_3_q1;
assign tmp_23_fu_2071_p9 = 'bx;
assign tmp_24_fu_2150_p2 = transition_0_q0;
assign tmp_24_fu_2150_p4 = transition_1_q0;
assign tmp_24_fu_2150_p6 = transition_2_q0;
assign tmp_24_fu_2150_p8 = transition_3_q0;
assign tmp_24_fu_2150_p9 = 'bx;
assign tmp_25_fu_2189_p2 = transition_0_q1;
assign tmp_25_fu_2189_p4 = transition_1_q1;
assign tmp_25_fu_2189_p6 = transition_2_q1;
assign tmp_25_fu_2189_p8 = transition_3_q1;
assign tmp_25_fu_2189_p9 = 'bx;
assign tmp_26_fu_2252_p2 = transition_0_q1;
assign tmp_26_fu_2252_p4 = transition_1_q1;
assign tmp_26_fu_2252_p6 = transition_2_q1;
assign tmp_26_fu_2252_p8 = transition_3_q1;
assign tmp_26_fu_2252_p9 = 'bx;
assign tmp_27_fu_2570_p4 = {{bitcast_ln55_7_fu_2567_p1[62:52]}};
assign tmp_29_fu_2686_p4 = {{bitcast_ln55_8_fu_2682_p1[62:52]}};
assign tmp_2_fu_2283_p4 = {{bitcast_ln55_fu_2279_p1[62:52]}};
assign tmp_30_fu_2703_p4 = {{bitcast_ln55_9_fu_2700_p1[62:52]}};
assign tmp_32_fu_2776_p4 = {{bitcast_ln55_10_fu_2772_p1[62:52]}};
assign tmp_33_fu_2793_p4 = {{bitcast_ln55_11_fu_2790_p1[62:52]}};
assign tmp_35_fu_2885_p4 = {{bitcast_ln55_12_fu_2881_p1[62:52]}};
assign tmp_36_fu_2902_p4 = {{bitcast_ln55_13_fu_2899_p1[62:52]}};
assign tmp_38_fu_1079_p3 = {{t_1}, {lshr_ln8_s_fu_1069_p4}};
assign tmp_39_fu_2975_p4 = {{bitcast_ln55_14_fu_2971_p1[62:52]}};
assign tmp_3_fu_2300_p4 = {{bitcast_ln55_1_fu_2297_p1[62:52]}};
assign tmp_40_fu_2992_p4 = {{bitcast_ln55_15_fu_2989_p1[62:52]}};
assign tmp_42_fu_1098_p3 = {{t_1}, {add_ln8_fu_1092_p2}};
assign tmp_43_fu_3083_p4 = {{bitcast_ln55_16_fu_3080_p1[62:52]}};
assign tmp_44_fu_3100_p4 = {{bitcast_ln55_17_fu_3097_p1[62:52]}};
assign tmp_46_fu_1127_p3 = {{t_1}, {lshr_ln8_1_fu_1117_p4}};
assign tmp_47_fu_3172_p4 = {{bitcast_ln55_18_fu_3168_p1[62:52]}};
assign tmp_48_fu_3189_p4 = {{bitcast_ln55_19_fu_3186_p1[62:52]}};
assign tmp_50_fu_1156_p3 = {{t_1}, {lshr_ln8_2_fu_1146_p4}};
assign tmp_51_fu_3280_p4 = {{bitcast_ln55_20_fu_3277_p1[62:52]}};
assign tmp_52_fu_3297_p4 = {{bitcast_ln55_21_fu_3294_p1[62:52]}};
assign tmp_54_fu_1185_p3 = {{t_1}, {lshr_ln8_3_fu_1175_p4}};
assign tmp_55_fu_3379_p4 = {{bitcast_ln55_22_fu_3375_p1[62:52]}};
assign tmp_56_fu_3396_p4 = {{bitcast_ln55_23_fu_3393_p1[62:52]}};
assign tmp_58_fu_1214_p3 = {{t_1}, {lshr_ln8_4_fu_1204_p4}};
assign tmp_59_fu_3487_p4 = {{bitcast_ln55_24_fu_3484_p1[62:52]}};
assign tmp_5_fu_1427_p2 = transition_0_q1;
assign tmp_5_fu_1427_p4 = transition_1_q1;
assign tmp_5_fu_1427_p6 = transition_2_q1;
assign tmp_5_fu_1427_p8 = transition_3_q1;
assign tmp_5_fu_1427_p9 = 'bx;
assign tmp_60_fu_3504_p4 = {{bitcast_ln55_25_fu_3501_p1[62:52]}};
assign tmp_62_fu_1243_p3 = {{t_1}, {lshr_ln8_5_fu_1233_p4}};
assign tmp_63_fu_3576_p4 = {{bitcast_ln55_26_fu_3572_p1[62:52]}};
assign tmp_64_fu_3593_p4 = {{bitcast_ln55_27_fu_3590_p1[62:52]}};
assign tmp_66_fu_1272_p3 = {{t_1}, {lshr_ln8_6_fu_1262_p4}};
assign tmp_67_fu_3665_p4 = {{bitcast_ln55_28_fu_3662_p1[62:52]}};
assign tmp_68_fu_3682_p4 = {{bitcast_ln55_29_fu_3679_p1[62:52]}};
assign tmp_6_fu_2373_p4 = {{bitcast_ln55_2_fu_2369_p1[62:52]}};
assign tmp_71_fu_3784_p4 = {{bitcast_ln55_30_fu_3780_p1[62:52]}};
assign tmp_72_fu_3801_p4 = {{bitcast_ln55_31_fu_3798_p1[62:52]}};
assign tmp_7_fu_2390_p4 = {{bitcast_ln55_3_fu_2387_p1[62:52]}};
assign tmp_9_fu_1466_p2 = transition_0_q0;
assign tmp_9_fu_1466_p4 = transition_1_q0;
assign tmp_9_fu_1466_p6 = transition_2_q0;
assign tmp_9_fu_1466_p8 = transition_3_q0;
assign tmp_9_fu_1466_p9 = 'bx;
assign tmp_s_fu_1010_p3 = {{t_1}, {lshr_ln8_9_fu_1000_p4}};
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
assign trunc_ln54_fu_2212_p1 = add_ln53_14_reg_4114[5:0];
assign trunc_ln55_10_fu_2786_p1 = bitcast_ln55_10_fu_2772_p1[51:0];
assign trunc_ln55_11_fu_2803_p1 = bitcast_ln55_11_fu_2790_p1[51:0];
assign trunc_ln55_12_fu_2895_p1 = bitcast_ln55_12_fu_2881_p1[51:0];
assign trunc_ln55_13_fu_2912_p1 = bitcast_ln55_13_fu_2899_p1[51:0];
assign trunc_ln55_14_fu_2985_p1 = bitcast_ln55_14_fu_2971_p1[51:0];
assign trunc_ln55_15_fu_3002_p1 = bitcast_ln55_15_fu_2989_p1[51:0];
assign trunc_ln55_16_fu_3093_p1 = bitcast_ln55_16_fu_3080_p1[51:0];
assign trunc_ln55_17_fu_3110_p1 = bitcast_ln55_17_fu_3097_p1[51:0];
assign trunc_ln55_18_fu_3182_p1 = bitcast_ln55_18_fu_3168_p1[51:0];
assign trunc_ln55_19_fu_3199_p1 = bitcast_ln55_19_fu_3186_p1[51:0];
assign trunc_ln55_1_fu_2310_p1 = bitcast_ln55_1_fu_2297_p1[51:0];
assign trunc_ln55_20_fu_3290_p1 = bitcast_ln55_20_fu_3277_p1[51:0];
assign trunc_ln55_21_fu_3307_p1 = bitcast_ln55_21_fu_3294_p1[51:0];
assign trunc_ln55_22_fu_3389_p1 = bitcast_ln55_22_fu_3375_p1[51:0];
assign trunc_ln55_23_fu_3406_p1 = bitcast_ln55_23_fu_3393_p1[51:0];
assign trunc_ln55_24_fu_3497_p1 = bitcast_ln55_24_fu_3484_p1[51:0];
assign trunc_ln55_25_fu_3514_p1 = bitcast_ln55_25_fu_3501_p1[51:0];
assign trunc_ln55_26_fu_3586_p1 = bitcast_ln55_26_fu_3572_p1[51:0];
assign trunc_ln55_27_fu_3603_p1 = bitcast_ln55_27_fu_3590_p1[51:0];
assign trunc_ln55_28_fu_3675_p1 = bitcast_ln55_28_fu_3662_p1[51:0];
assign trunc_ln55_29_fu_3692_p1 = bitcast_ln55_29_fu_3679_p1[51:0];
assign trunc_ln55_2_fu_2383_p1 = bitcast_ln55_2_fu_2369_p1[51:0];
assign trunc_ln55_30_fu_3794_p1 = bitcast_ln55_30_fu_3780_p1[51:0];
assign trunc_ln55_31_fu_3811_p1 = bitcast_ln55_31_fu_3798_p1[51:0];
assign trunc_ln55_3_fu_2400_p1 = bitcast_ln55_3_fu_2387_p1[51:0];
assign trunc_ln55_4_fu_2473_p1 = bitcast_ln55_4_fu_2459_p1[51:0];
assign trunc_ln55_5_fu_2490_p1 = bitcast_ln55_5_fu_2477_p1[51:0];
assign trunc_ln55_6_fu_2563_p1 = bitcast_ln55_6_fu_2549_p1[51:0];
assign trunc_ln55_7_fu_2580_p1 = bitcast_ln55_7_fu_2567_p1[51:0];
assign trunc_ln55_8_fu_2696_p1 = bitcast_ln55_8_fu_2682_p1[51:0];
assign trunc_ln55_9_fu_2713_p1 = bitcast_ln55_9_fu_2700_p1[51:0];
assign trunc_ln55_fu_2293_p1 = bitcast_ln55_fu_2279_p1[51:0];
assign zext_ln20_fu_996_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_974_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1890_p1 = add_ln54_10_fu_1885_p2;
assign zext_ln54_11_fu_1988_p1 = add_ln54_11_fu_1983_p2;
assign zext_ln54_12_fu_2008_p1 = add_ln54_12_fu_2003_p2;
assign zext_ln54_13_fu_2106_p1 = add_ln54_13_fu_2101_p2;
assign zext_ln54_14_fu_2126_p1 = add_ln54_14_fu_2121_p2;
assign zext_ln54_15_fu_2228_p1 = add_ln54_15_fu_2223_p2;
assign zext_ln54_16_fu_1018_p1 = tmp_s_fu_1010_p3;
assign zext_ln54_17_fu_1087_p1 = tmp_38_fu_1079_p3;
assign zext_ln54_18_fu_1106_p1 = tmp_42_fu_1098_p3;
assign zext_ln54_19_fu_1135_p1 = tmp_46_fu_1127_p3;
assign zext_ln54_1_fu_1350_p1 = add_ln54_1_fu_1345_p2;
assign zext_ln54_20_fu_1164_p1 = tmp_50_fu_1156_p3;
assign zext_ln54_21_fu_1193_p1 = tmp_54_fu_1185_p3;
assign zext_ln54_22_fu_1222_p1 = tmp_58_fu_1214_p3;
assign zext_ln54_23_fu_1251_p1 = tmp_62_fu_1243_p3;
assign zext_ln54_24_fu_1280_p1 = tmp_66_fu_1272_p3;
assign zext_ln54_25_fu_1397_p1 = lshr_ln9_3_fu_1388_p4;
assign zext_ln54_26_fu_1406_p1 = add_ln54_16_fu_1401_p2;
assign zext_ln54_2_fu_1370_p1 = add_ln54_2_fu_1365_p2;
assign zext_ln54_3_fu_1501_p1 = add_ln54_3_fu_1496_p2;
assign zext_ln54_4_fu_1521_p1 = add_ln54_4_fu_1516_p2;
assign zext_ln54_5_fu_1629_p1 = add_ln54_5_fu_1624_p2;
assign zext_ln54_6_fu_1649_p1 = add_ln54_6_fu_1644_p2;
assign zext_ln54_7_fu_1752_p1 = add_ln54_7_fu_1747_p2;
assign zext_ln54_8_fu_1772_p1 = add_ln54_8_fu_1767_p2;
assign zext_ln54_9_fu_1870_p1 = add_ln54_9_fu_1865_p2;
assign zext_ln54_fu_1043_p1 = add_ln54_fu_1037_p2;
assign zext_ln55_10_fu_3458_p1 = add_ln53_9_reg_4059_pp0_iter1_reg;
assign zext_ln55_11_fu_3474_p1 = add_ln53_10_reg_4070_pp0_iter1_reg;
assign zext_ln55_12_fu_3750_p1 = add_ln53_11_reg_4081_pp0_iter1_reg;
assign zext_ln55_13_fu_3759_p1 = add_ln53_12_reg_4092_pp0_iter1_reg;
assign zext_ln55_14_fu_3769_p1 = add_ln53_13_reg_4103_pp0_iter1_reg;
assign zext_ln55_15_fu_3869_p1 = trunc_ln54_reg_4594_pp0_iter1_reg;
assign zext_ln55_1_fu_2645_p1 = add_ln53_reg_4020;
assign zext_ln55_2_fu_2655_p1 = add_ln53_1_reg_4026;
assign zext_ln55_3_fu_2672_p1 = add_ln53_2_reg_4184;
assign zext_ln55_4_fu_2855_p1 = add_ln53_3_reg_4195;
assign zext_ln55_5_fu_2871_p1 = add_ln53_4_reg_4311;
assign zext_ln55_6_fu_3054_p1 = add_ln53_5_reg_4317;
assign zext_ln55_7_fu_3070_p1 = add_ln53_6_reg_4032;
assign zext_ln55_8_fu_3251_p1 = add_ln53_7_reg_4378;
assign zext_ln55_9_fu_3267_p1 = add_ln53_8_reg_4048;
assign zext_ln55_fu_2635_p1 = s_reg_3954;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_3935[9:6] <= 4'b0000;
end
endmodule 