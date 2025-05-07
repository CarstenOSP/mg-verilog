module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_36,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_3,min_s_34_out,min_s_34_out_ap_vld,grp_fu_630_p_din0,grp_fu_630_p_din1,grp_fu_630_p_opcode,grp_fu_630_p_dout0,grp_fu_630_p_ce,grp_fu_1374_p_din0,grp_fu_1374_p_din1,grp_fu_1374_p_opcode,grp_fu_1374_p_dout0,grp_fu_1374_p_ce); 
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
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [11:0] zext_ln52_3;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_630_p_din0;
output  [63:0] grp_fu_630_p_din1;
output  [1:0] grp_fu_630_p_opcode;
input  [63:0] grp_fu_630_p_dout0;
output   grp_fu_630_p_ce;
output  [63:0] grp_fu_1374_p_din0;
output  [63:0] grp_fu_1374_p_din1;
output  [4:0] grp_fu_1374_p_opcode;
input  [0:0] grp_fu_1374_p_dout0;
output   grp_fu_1374_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_74_reg_4119;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_913;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_918;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_923;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_928;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_933;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_938_p1;
reg   [9:0] zext_ln52_2_cast_reg_3978;
reg   [5:0] s_reg_3997;
wire   [3:0] lshr_ln8_s_fu_964_p4;
reg   [3:0] lshr_ln8_s_reg_4011;
wire   [5:0] add_ln53_fu_1011_p2;
reg   [5:0] add_ln53_reg_4052;
wire   [5:0] add_ln53_1_fu_1017_p2;
reg   [5:0] add_ln53_1_reg_4058;
wire   [5:0] add_ln53_2_fu_1023_p2;
reg   [5:0] add_ln53_2_reg_4064;
wire   [5:0] add_ln53_4_fu_1071_p2;
reg   [5:0] add_ln53_4_reg_4080;
wire   [5:0] add_ln53_5_fu_1100_p2;
reg   [5:0] add_ln53_5_reg_4091;
wire   [5:0] add_ln53_6_fu_1129_p2;
reg   [5:0] add_ln53_6_reg_4102;
wire   [6:0] add_ln53_14_fu_1158_p2;
reg   [6:0] add_ln53_14_reg_4113;
reg   [0:0] tmp_74_reg_4119_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_4123;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_1188_p11;
reg   [63:0] tmp_1_reg_4128;
reg   [63:0] llike_2_load_reg_4133;
reg   [63:0] llike_3_load_reg_4158;
reg   [63:0] llike_load_reg_4183;
wire   [5:0] add_ln53_3_fu_1251_p2;
reg   [5:0] add_ln53_3_reg_4188;
reg   [63:0] llike_1_load_1_reg_4194;
reg   [63:0] llike_2_load_1_reg_4199;
reg   [63:0] llike_3_load_1_reg_4204;
reg   [63:0] llike_load_1_reg_4209;
wire   [5:0] add_ln53_8_fu_1273_p2;
reg   [5:0] add_ln53_8_reg_4219;
wire   [5:0] add_ln53_9_fu_1300_p2;
reg   [5:0] add_ln53_9_reg_4230;
wire   [5:0] add_ln53_10_fu_1327_p2;
reg   [5:0] add_ln53_10_reg_4241;
wire   [5:0] add_ln53_12_fu_1371_p2;
reg   [5:0] add_ln53_12_reg_4257;
reg   [5:0] add_ln53_12_reg_4257_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_1398_p2;
reg   [5:0] add_ln53_13_reg_4268;
reg   [5:0] add_ln53_13_reg_4268_pp0_iter1_reg;
wire   [63:0] tmp_5_fu_1464_p11;
reg   [63:0] tmp_5_reg_4284;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_1503_p11;
reg   [63:0] tmp_9_reg_4289;
reg   [63:0] llike_1_load_2_reg_4334;
reg   [63:0] llike_2_load_2_reg_4339;
reg   [63:0] llike_3_load_2_reg_4344;
reg   [63:0] llike_load_2_reg_4349;
reg   [63:0] llike_1_load_3_reg_4354;
reg   [63:0] llike_2_load_3_reg_4359;
reg   [63:0] llike_3_load_3_reg_4364;
reg   [63:0] llike_load_3_reg_4369;
wire   [63:0] tmp_14_fu_1582_p11;
reg   [63:0] tmp_14_reg_4374;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_19_fu_1621_p11;
reg   [63:0] tmp_19_reg_4379;
wire   [5:0] add_ln53_7_fu_1684_p2;
reg   [5:0] add_ln53_7_reg_4424;
wire   [63:0] tmp_24_fu_1705_p11;
reg   [63:0] tmp_24_reg_4430;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_29_fu_1744_p11;
reg   [63:0] tmp_29_reg_4435;
wire   [63:0] tmp_34_fu_1823_p11;
reg   [63:0] tmp_34_reg_4480;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] tmp_39_fu_1862_p11;
reg   [63:0] tmp_39_reg_4485;
wire   [5:0] add_ln53_11_fu_1925_p2;
reg   [5:0] add_ln53_11_reg_4530;
reg   [5:0] add_ln53_11_reg_4530_pp0_iter1_reg;
wire   [63:0] tmp_44_fu_1946_p11;
reg   [63:0] tmp_44_reg_4536;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] tmp_46_fu_1985_p11;
reg   [63:0] tmp_46_reg_4541;
wire   [63:0] tmp_47_fu_2064_p11;
reg   [63:0] tmp_47_reg_4586;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_48_fu_2103_p11;
reg   [63:0] tmp_48_reg_4591;
wire   [63:0] tmp_49_fu_2182_p11;
reg   [63:0] tmp_49_reg_4636;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] tmp_50_fu_2221_p11;
reg   [63:0] tmp_50_reg_4641;
wire   [5:0] trunc_ln54_fu_2244_p1;
reg   [5:0] trunc_ln54_reg_4646;
reg   [5:0] trunc_ln54_reg_4646_pp0_iter1_reg;
wire   [63:0] tmp_51_fu_2284_p11;
reg   [63:0] tmp_51_reg_4671;
reg   [63:0] min_p_1_reg_4676;
wire   [0:0] and_ln55_1_fu_2388_p2;
reg   [0:0] and_ln55_1_reg_4683;
wire   [63:0] min_p_3_fu_2394_p3;
reg   [63:0] min_p_3_reg_4689;
wire   [0:0] and_ln55_3_fu_2478_p2;
reg   [0:0] and_ln55_3_reg_4696;
wire   [63:0] min_p_5_fu_2484_p3;
reg   [63:0] min_p_5_reg_4702;
wire   [0:0] and_ln55_5_fu_2568_p2;
reg   [0:0] and_ln55_5_reg_4709;
wire   [63:0] min_p_7_fu_2574_p3;
reg   [63:0] min_p_7_reg_4715;
wire   [0:0] and_ln55_7_fu_2658_p2;
reg   [0:0] and_ln55_7_reg_4722;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_8_reg_4728;
wire   [63:0] min_p_9_fu_2697_p3;
reg   [63:0] min_p_9_reg_4735;
wire   [7:0] min_s_7_fu_2707_p3;
reg   [7:0] min_s_7_reg_4742;
wire   [0:0] and_ln55_9_fu_2791_p2;
reg   [0:0] and_ln55_9_reg_4747;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_10_reg_4753;
wire   [63:0] min_p_11_fu_2797_p3;
reg   [63:0] min_p_11_reg_4760;
wire   [0:0] and_ln55_11_fu_2881_p2;
reg   [0:0] and_ln55_11_reg_4767;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_12_reg_4773;
wire   [63:0] min_p_13_fu_2896_p3;
reg   [63:0] min_p_13_reg_4780;
wire   [7:0] min_s_9_fu_2906_p3;
reg   [7:0] min_s_9_reg_4787;
wire   [0:0] and_ln55_13_fu_2990_p2;
reg   [0:0] and_ln55_13_reg_4792;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_14_reg_4798;
wire   [63:0] min_p_15_fu_2996_p3;
reg   [63:0] min_p_15_reg_4805;
wire   [0:0] and_ln55_15_fu_3080_p2;
reg   [0:0] and_ln55_15_reg_4812;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_17_fu_3095_p3;
reg   [63:0] min_p_17_reg_4818;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_3105_p3;
reg   [7:0] min_s_11_reg_4825;
wire   [0:0] and_ln55_17_fu_3188_p2;
reg   [0:0] and_ln55_17_reg_4830;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_19_fu_3194_p3;
reg   [63:0] min_p_19_reg_4836;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_3277_p2;
reg   [0:0] and_ln55_19_reg_4843;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_21_fu_3292_p3;
reg   [63:0] min_p_21_reg_4849;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_3302_p3;
reg   [7:0] min_s_13_reg_4856;
wire   [0:0] and_ln55_21_fu_3385_p2;
reg   [0:0] and_ln55_21_reg_4861;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_23_fu_3391_p3;
reg   [63:0] min_p_23_reg_4867;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_3484_p2;
reg   [0:0] and_ln55_23_reg_4874;
wire   [63:0] min_p_25_fu_3499_p3;
reg   [63:0] min_p_25_reg_4880;
wire   [7:0] min_s_15_fu_3509_p3;
reg   [7:0] min_s_15_reg_4887;
wire   [0:0] and_ln55_25_fu_3592_p2;
reg   [0:0] and_ln55_25_reg_4892;
wire   [63:0] min_p_27_fu_3598_p3;
reg   [63:0] min_p_27_reg_4898;
wire   [0:0] and_ln55_27_fu_3681_p2;
reg   [0:0] and_ln55_27_reg_4905;
wire   [63:0] min_p_29_fu_3687_p3;
reg   [63:0] min_p_29_reg_4911;
wire   [0:0] and_ln55_29_fu_3770_p2;
reg   [0:0] and_ln55_29_reg_4918;
wire   [63:0] min_p_31_fu_3776_p3;
reg   [63:0] min_p_31_reg_4924;
wire   [7:0] min_s_18_fu_3804_p3;
reg   [7:0] min_s_18_reg_4931;
reg   [0:0] tmp_77_reg_4936;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_982_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_1003_p1;
wire   [63:0] zext_ln54_17_fu_1047_p1;
wire   [63:0] zext_ln54_18_fu_1066_p1;
wire   [63:0] zext_ln54_19_fu_1095_p1;
wire   [63:0] zext_ln54_20_fu_1124_p1;
wire   [63:0] zext_ln54_21_fu_1153_p1;
wire   [63:0] zext_ln54_1_fu_1223_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1243_p1;
wire   [63:0] zext_ln54_22_fu_1268_p1;
wire   [63:0] zext_ln54_23_fu_1295_p1;
wire   [63:0] zext_ln54_24_fu_1322_p1;
wire   [63:0] zext_ln54_25_fu_1349_p1;
wire   [63:0] zext_ln54_26_fu_1366_p1;
wire   [63:0] zext_ln54_27_fu_1393_p1;
wire   [63:0] zext_ln54_28_fu_1420_p1;
wire   [63:0] zext_ln54_30_fu_1443_p1;
wire   [63:0] zext_ln54_3_fu_1538_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1558_p1;
wire   [63:0] zext_ln54_5_fu_1656_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1676_p1;
wire   [63:0] zext_ln54_7_fu_1779_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1799_p1;
wire   [63:0] zext_ln54_9_fu_1897_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1917_p1;
wire   [63:0] zext_ln54_11_fu_2020_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_2040_p1;
wire   [63:0] zext_ln54_13_fu_2138_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_2158_p1;
wire   [63:0] zext_ln54_15_fu_2260_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_144;
wire   [63:0] min_p_33_fu_3894_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_148;
wire   [7:0] min_s_19_fu_3904_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_152;
wire   [5:0] add_ln53_15_fu_3397_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
reg   [11:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
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
reg   [63:0] grp_fu_905_p0;
reg   [63:0] grp_fu_905_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_909_p0;
reg   [63:0] grp_fu_909_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [11:0] tmp_s_fu_974_p3;
wire   [9:0] shl_ln2_fu_989_p3;
wire   [9:0] add_ln54_fu_997_p2;
wire   [3:0] lshr_ln8_1_fu_1029_p4;
wire   [11:0] tmp_13_fu_1039_p3;
wire   [3:0] add_ln8_fu_1052_p2;
wire   [11:0] tmp_18_fu_1058_p3;
wire   [3:0] lshr_ln8_2_fu_1077_p4;
wire   [11:0] tmp_23_fu_1087_p3;
wire   [3:0] lshr_ln8_3_fu_1106_p4;
wire   [11:0] tmp_28_fu_1116_p3;
wire   [3:0] lshr_ln8_4_fu_1135_p4;
wire   [11:0] tmp_33_fu_1145_p3;
wire   [6:0] zext_ln21_fu_960_p1;
wire   [63:0] tmp_1_fu_1188_p2;
wire   [63:0] tmp_1_fu_1188_p4;
wire   [63:0] tmp_1_fu_1188_p6;
wire   [63:0] tmp_1_fu_1188_p8;
wire   [63:0] tmp_1_fu_1188_p9;
wire   [9:0] shl_ln54_1_fu_1211_p3;
wire   [9:0] add_ln54_1_fu_1218_p2;
wire   [9:0] shl_ln54_2_fu_1231_p3;
wire   [9:0] add_ln54_2_fu_1238_p2;
wire   [3:0] add_ln8_1_fu_1256_p2;
wire   [11:0] tmp_38_fu_1261_p3;
wire   [3:0] lshr_ln8_5_fu_1278_p4;
wire   [11:0] tmp_43_fu_1288_p3;
wire   [3:0] lshr_ln8_6_fu_1305_p4;
wire   [11:0] tmp_54_fu_1315_p3;
wire   [3:0] lshr_ln8_7_fu_1332_p4;
wire   [11:0] tmp_58_fu_1342_p3;
wire   [3:0] add_ln8_2_fu_1354_p2;
wire   [11:0] tmp_62_fu_1359_p3;
wire   [3:0] lshr_ln8_8_fu_1376_p4;
wire   [11:0] tmp_66_fu_1386_p3;
wire   [3:0] lshr_ln8_9_fu_1403_p4;
wire   [11:0] tmp_70_fu_1413_p3;
wire   [4:0] lshr_ln9_2_fu_1425_p4;
wire   [11:0] zext_ln54_29_fu_1434_p1;
wire   [11:0] add_ln54_16_fu_1438_p2;
wire   [63:0] tmp_5_fu_1464_p2;
wire   [63:0] tmp_5_fu_1464_p4;
wire   [63:0] tmp_5_fu_1464_p6;
wire   [63:0] tmp_5_fu_1464_p8;
wire   [63:0] tmp_5_fu_1464_p9;
wire   [63:0] tmp_9_fu_1503_p2;
wire   [63:0] tmp_9_fu_1503_p4;
wire   [63:0] tmp_9_fu_1503_p6;
wire   [63:0] tmp_9_fu_1503_p8;
wire   [63:0] tmp_9_fu_1503_p9;
wire   [9:0] shl_ln54_3_fu_1526_p3;
wire   [9:0] add_ln54_3_fu_1533_p2;
wire   [9:0] shl_ln54_4_fu_1546_p3;
wire   [9:0] add_ln54_4_fu_1553_p2;
wire   [63:0] tmp_14_fu_1582_p2;
wire   [63:0] tmp_14_fu_1582_p4;
wire   [63:0] tmp_14_fu_1582_p6;
wire   [63:0] tmp_14_fu_1582_p8;
wire   [63:0] tmp_14_fu_1582_p9;
wire   [63:0] tmp_19_fu_1621_p2;
wire   [63:0] tmp_19_fu_1621_p4;
wire   [63:0] tmp_19_fu_1621_p6;
wire   [63:0] tmp_19_fu_1621_p8;
wire   [63:0] tmp_19_fu_1621_p9;
wire   [9:0] shl_ln54_5_fu_1644_p3;
wire   [9:0] add_ln54_5_fu_1651_p2;
wire   [9:0] shl_ln54_6_fu_1664_p3;
wire   [9:0] add_ln54_6_fu_1671_p2;
wire   [63:0] tmp_24_fu_1705_p2;
wire   [63:0] tmp_24_fu_1705_p4;
wire   [63:0] tmp_24_fu_1705_p6;
wire   [63:0] tmp_24_fu_1705_p8;
wire   [63:0] tmp_24_fu_1705_p9;
wire   [63:0] tmp_29_fu_1744_p2;
wire   [63:0] tmp_29_fu_1744_p4;
wire   [63:0] tmp_29_fu_1744_p6;
wire   [63:0] tmp_29_fu_1744_p8;
wire   [63:0] tmp_29_fu_1744_p9;
wire   [9:0] shl_ln54_7_fu_1767_p3;
wire   [9:0] add_ln54_7_fu_1774_p2;
wire   [9:0] shl_ln54_8_fu_1787_p3;
wire   [9:0] add_ln54_8_fu_1794_p2;
wire   [63:0] tmp_34_fu_1823_p2;
wire   [63:0] tmp_34_fu_1823_p4;
wire   [63:0] tmp_34_fu_1823_p6;
wire   [63:0] tmp_34_fu_1823_p8;
wire   [63:0] tmp_34_fu_1823_p9;
wire   [63:0] tmp_39_fu_1862_p2;
wire   [63:0] tmp_39_fu_1862_p4;
wire   [63:0] tmp_39_fu_1862_p6;
wire   [63:0] tmp_39_fu_1862_p8;
wire   [63:0] tmp_39_fu_1862_p9;
wire   [9:0] shl_ln54_9_fu_1885_p3;
wire   [9:0] add_ln54_9_fu_1892_p2;
wire   [9:0] shl_ln54_s_fu_1905_p3;
wire   [9:0] add_ln54_10_fu_1912_p2;
wire   [63:0] tmp_44_fu_1946_p2;
wire   [63:0] tmp_44_fu_1946_p4;
wire   [63:0] tmp_44_fu_1946_p6;
wire   [63:0] tmp_44_fu_1946_p8;
wire   [63:0] tmp_44_fu_1946_p9;
wire   [63:0] tmp_46_fu_1985_p2;
wire   [63:0] tmp_46_fu_1985_p4;
wire   [63:0] tmp_46_fu_1985_p6;
wire   [63:0] tmp_46_fu_1985_p8;
wire   [63:0] tmp_46_fu_1985_p9;
wire   [9:0] shl_ln54_10_fu_2008_p3;
wire   [9:0] add_ln54_11_fu_2015_p2;
wire   [9:0] shl_ln54_11_fu_2028_p3;
wire   [9:0] add_ln54_12_fu_2035_p2;
wire   [63:0] tmp_47_fu_2064_p2;
wire   [63:0] tmp_47_fu_2064_p4;
wire   [63:0] tmp_47_fu_2064_p6;
wire   [63:0] tmp_47_fu_2064_p8;
wire   [63:0] tmp_47_fu_2064_p9;
wire   [63:0] tmp_48_fu_2103_p2;
wire   [63:0] tmp_48_fu_2103_p4;
wire   [63:0] tmp_48_fu_2103_p6;
wire   [63:0] tmp_48_fu_2103_p8;
wire   [63:0] tmp_48_fu_2103_p9;
wire   [9:0] shl_ln54_12_fu_2126_p3;
wire   [9:0] add_ln54_13_fu_2133_p2;
wire   [9:0] shl_ln54_13_fu_2146_p3;
wire   [9:0] add_ln54_14_fu_2153_p2;
wire   [63:0] tmp_49_fu_2182_p2;
wire   [63:0] tmp_49_fu_2182_p4;
wire   [63:0] tmp_49_fu_2182_p6;
wire   [63:0] tmp_49_fu_2182_p8;
wire   [63:0] tmp_49_fu_2182_p9;
wire   [63:0] tmp_50_fu_2221_p2;
wire   [63:0] tmp_50_fu_2221_p4;
wire   [63:0] tmp_50_fu_2221_p6;
wire   [63:0] tmp_50_fu_2221_p8;
wire   [63:0] tmp_50_fu_2221_p9;
wire   [9:0] shl_ln54_14_fu_2247_p3;
wire   [9:0] add_ln54_15_fu_2255_p2;
wire   [63:0] tmp_51_fu_2284_p2;
wire   [63:0] tmp_51_fu_2284_p4;
wire   [63:0] tmp_51_fu_2284_p6;
wire   [63:0] tmp_51_fu_2284_p8;
wire   [63:0] tmp_51_fu_2284_p9;
wire   [63:0] bitcast_ln55_fu_2311_p1;
wire   [63:0] bitcast_ln55_1_fu_2329_p1;
wire   [10:0] tmp_2_fu_2315_p4;
wire   [51:0] trunc_ln55_fu_2325_p1;
wire   [0:0] icmp_ln55_1_fu_2352_p2;
wire   [0:0] icmp_ln55_fu_2346_p2;
wire   [10:0] tmp_3_fu_2332_p4;
wire   [51:0] trunc_ln55_1_fu_2342_p1;
wire   [0:0] icmp_ln55_3_fu_2370_p2;
wire   [0:0] icmp_ln55_2_fu_2364_p2;
wire   [0:0] or_ln55_fu_2358_p2;
wire   [0:0] and_ln55_fu_2382_p2;
wire   [0:0] or_ln55_1_fu_2376_p2;
wire   [63:0] bitcast_ln55_2_fu_2401_p1;
wire   [63:0] bitcast_ln55_3_fu_2419_p1;
wire   [10:0] tmp_6_fu_2405_p4;
wire   [51:0] trunc_ln55_2_fu_2415_p1;
wire   [0:0] icmp_ln55_5_fu_2442_p2;
wire   [0:0] icmp_ln55_4_fu_2436_p2;
wire   [10:0] tmp_7_fu_2422_p4;
wire   [51:0] trunc_ln55_3_fu_2432_p1;
wire   [0:0] icmp_ln55_7_fu_2460_p2;
wire   [0:0] icmp_ln55_6_fu_2454_p2;
wire   [0:0] or_ln55_3_fu_2466_p2;
wire   [0:0] or_ln55_2_fu_2448_p2;
wire   [0:0] and_ln55_2_fu_2472_p2;
wire   [63:0] bitcast_ln55_4_fu_2491_p1;
wire   [63:0] bitcast_ln55_5_fu_2509_p1;
wire   [10:0] tmp_10_fu_2495_p4;
wire   [51:0] trunc_ln55_4_fu_2505_p1;
wire   [0:0] icmp_ln55_9_fu_2532_p2;
wire   [0:0] icmp_ln55_8_fu_2526_p2;
wire   [10:0] tmp_11_fu_2512_p4;
wire   [51:0] trunc_ln55_5_fu_2522_p1;
wire   [0:0] icmp_ln55_11_fu_2550_p2;
wire   [0:0] icmp_ln55_10_fu_2544_p2;
wire   [0:0] or_ln55_5_fu_2556_p2;
wire   [0:0] or_ln55_4_fu_2538_p2;
wire   [0:0] and_ln55_4_fu_2562_p2;
wire   [63:0] bitcast_ln55_6_fu_2581_p1;
wire   [63:0] bitcast_ln55_7_fu_2599_p1;
wire   [10:0] tmp_15_fu_2585_p4;
wire   [51:0] trunc_ln55_6_fu_2595_p1;
wire   [0:0] icmp_ln55_13_fu_2622_p2;
wire   [0:0] icmp_ln55_12_fu_2616_p2;
wire   [10:0] tmp_16_fu_2602_p4;
wire   [51:0] trunc_ln55_7_fu_2612_p1;
wire   [0:0] icmp_ln55_15_fu_2640_p2;
wire   [0:0] icmp_ln55_14_fu_2634_p2;
wire   [0:0] or_ln55_7_fu_2646_p2;
wire   [0:0] or_ln55_6_fu_2628_p2;
wire   [0:0] and_ln55_6_fu_2652_p2;
wire   [7:0] zext_ln55_fu_2667_p1;
wire   [7:0] zext_ln55_1_fu_2677_p1;
wire   [7:0] min_s_4_fu_2670_p3;
wire   [7:0] zext_ln55_2_fu_2687_p1;
wire   [7:0] min_s_5_fu_2680_p3;
wire   [7:0] zext_ln55_3_fu_2704_p1;
wire   [7:0] min_s_6_fu_2690_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_2714_p1;
wire   [63:0] bitcast_ln55_9_fu_2732_p1;
wire   [10:0] tmp_20_fu_2718_p4;
wire   [51:0] trunc_ln55_8_fu_2728_p1;
wire   [0:0] icmp_ln55_17_fu_2755_p2;
wire   [0:0] icmp_ln55_16_fu_2749_p2;
wire   [10:0] tmp_21_fu_2735_p4;
wire   [51:0] trunc_ln55_9_fu_2745_p1;
wire   [0:0] icmp_ln55_19_fu_2773_p2;
wire   [0:0] icmp_ln55_18_fu_2767_p2;
wire   [0:0] or_ln55_9_fu_2779_p2;
wire   [0:0] or_ln55_8_fu_2761_p2;
wire   [0:0] and_ln55_8_fu_2785_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_2804_p1;
wire   [63:0] bitcast_ln55_11_fu_2822_p1;
wire   [10:0] tmp_25_fu_2808_p4;
wire   [51:0] trunc_ln55_10_fu_2818_p1;
wire   [0:0] icmp_ln55_21_fu_2845_p2;
wire   [0:0] icmp_ln55_20_fu_2839_p2;
wire   [10:0] tmp_26_fu_2825_p4;
wire   [51:0] trunc_ln55_11_fu_2835_p1;
wire   [0:0] icmp_ln55_23_fu_2863_p2;
wire   [0:0] icmp_ln55_22_fu_2857_p2;
wire   [0:0] or_ln55_11_fu_2869_p2;
wire   [0:0] or_ln55_10_fu_2851_p2;
wire   [0:0] and_ln55_10_fu_2875_p2;
wire   [7:0] zext_ln55_4_fu_2887_p1;
wire   [7:0] zext_ln55_5_fu_2903_p1;
wire   [7:0] min_s_8_fu_2890_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_2913_p1;
wire   [63:0] bitcast_ln55_13_fu_2931_p1;
wire   [10:0] tmp_30_fu_2917_p4;
wire   [51:0] trunc_ln55_12_fu_2927_p1;
wire   [0:0] icmp_ln55_25_fu_2954_p2;
wire   [0:0] icmp_ln55_24_fu_2948_p2;
wire   [10:0] tmp_31_fu_2934_p4;
wire   [51:0] trunc_ln55_13_fu_2944_p1;
wire   [0:0] icmp_ln55_27_fu_2972_p2;
wire   [0:0] icmp_ln55_26_fu_2966_p2;
wire   [0:0] or_ln55_13_fu_2978_p2;
wire   [0:0] or_ln55_12_fu_2960_p2;
wire   [0:0] and_ln55_12_fu_2984_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_3003_p1;
wire   [63:0] bitcast_ln55_15_fu_3021_p1;
wire   [10:0] tmp_35_fu_3007_p4;
wire   [51:0] trunc_ln55_14_fu_3017_p1;
wire   [0:0] icmp_ln55_29_fu_3044_p2;
wire   [0:0] icmp_ln55_28_fu_3038_p2;
wire   [10:0] tmp_36_fu_3024_p4;
wire   [51:0] trunc_ln55_15_fu_3034_p1;
wire   [0:0] icmp_ln55_31_fu_3062_p2;
wire   [0:0] icmp_ln55_30_fu_3056_p2;
wire   [0:0] or_ln55_15_fu_3068_p2;
wire   [0:0] or_ln55_14_fu_3050_p2;
wire   [0:0] and_ln55_14_fu_3074_p2;
wire   [7:0] zext_ln55_6_fu_3086_p1;
wire   [7:0] zext_ln55_7_fu_3102_p1;
wire   [7:0] min_s_10_fu_3089_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_3112_p1;
wire   [63:0] bitcast_ln55_17_fu_3129_p1;
wire   [10:0] tmp_40_fu_3115_p4;
wire   [51:0] trunc_ln55_16_fu_3125_p1;
wire   [0:0] icmp_ln55_33_fu_3152_p2;
wire   [0:0] icmp_ln55_32_fu_3146_p2;
wire   [10:0] tmp_41_fu_3132_p4;
wire   [51:0] trunc_ln55_17_fu_3142_p1;
wire   [0:0] icmp_ln55_35_fu_3170_p2;
wire   [0:0] icmp_ln55_34_fu_3164_p2;
wire   [0:0] or_ln55_17_fu_3176_p2;
wire   [0:0] or_ln55_16_fu_3158_p2;
wire   [0:0] and_ln55_16_fu_3182_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_3200_p1;
wire   [63:0] bitcast_ln55_19_fu_3218_p1;
wire   [10:0] tmp_45_fu_3204_p4;
wire   [51:0] trunc_ln55_18_fu_3214_p1;
wire   [0:0] icmp_ln55_37_fu_3241_p2;
wire   [0:0] icmp_ln55_36_fu_3235_p2;
wire   [10:0] tmp_52_fu_3221_p4;
wire   [51:0] trunc_ln55_19_fu_3231_p1;
wire   [0:0] icmp_ln55_39_fu_3259_p2;
wire   [0:0] icmp_ln55_38_fu_3253_p2;
wire   [0:0] or_ln55_19_fu_3265_p2;
wire   [0:0] or_ln55_18_fu_3247_p2;
wire   [0:0] and_ln55_18_fu_3271_p2;
wire   [7:0] zext_ln55_8_fu_3283_p1;
wire   [7:0] zext_ln55_9_fu_3299_p1;
wire   [7:0] min_s_12_fu_3286_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_3309_p1;
wire   [63:0] bitcast_ln55_21_fu_3326_p1;
wire   [10:0] tmp_55_fu_3312_p4;
wire   [51:0] trunc_ln55_20_fu_3322_p1;
wire   [0:0] icmp_ln55_41_fu_3349_p2;
wire   [0:0] icmp_ln55_40_fu_3343_p2;
wire   [10:0] tmp_56_fu_3329_p4;
wire   [51:0] trunc_ln55_21_fu_3339_p1;
wire   [0:0] icmp_ln55_43_fu_3367_p2;
wire   [0:0] icmp_ln55_42_fu_3361_p2;
wire   [0:0] or_ln55_21_fu_3373_p2;
wire   [0:0] or_ln55_20_fu_3355_p2;
wire   [0:0] and_ln55_20_fu_3379_p2;
wire   [63:0] bitcast_ln55_22_fu_3407_p1;
wire   [63:0] bitcast_ln55_23_fu_3425_p1;
wire   [10:0] tmp_59_fu_3411_p4;
wire   [51:0] trunc_ln55_22_fu_3421_p1;
wire   [0:0] icmp_ln55_45_fu_3448_p2;
wire   [0:0] icmp_ln55_44_fu_3442_p2;
wire   [10:0] tmp_60_fu_3428_p4;
wire   [51:0] trunc_ln55_23_fu_3438_p1;
wire   [0:0] icmp_ln55_47_fu_3466_p2;
wire   [0:0] icmp_ln55_46_fu_3460_p2;
wire   [0:0] or_ln55_23_fu_3472_p2;
wire   [0:0] or_ln55_22_fu_3454_p2;
wire   [0:0] and_ln55_22_fu_3478_p2;
wire   [7:0] zext_ln55_10_fu_3490_p1;
wire   [7:0] zext_ln55_11_fu_3506_p1;
wire   [7:0] min_s_14_fu_3493_p3;
wire   [63:0] bitcast_ln55_24_fu_3516_p1;
wire   [63:0] bitcast_ln55_25_fu_3533_p1;
wire   [10:0] tmp_63_fu_3519_p4;
wire   [51:0] trunc_ln55_24_fu_3529_p1;
wire   [0:0] icmp_ln55_49_fu_3556_p2;
wire   [0:0] icmp_ln55_48_fu_3550_p2;
wire   [10:0] tmp_64_fu_3536_p4;
wire   [51:0] trunc_ln55_25_fu_3546_p1;
wire   [0:0] icmp_ln55_51_fu_3574_p2;
wire   [0:0] icmp_ln55_50_fu_3568_p2;
wire   [0:0] or_ln55_25_fu_3580_p2;
wire   [0:0] or_ln55_24_fu_3562_p2;
wire   [0:0] and_ln55_24_fu_3586_p2;
wire   [63:0] bitcast_ln55_26_fu_3604_p1;
wire   [63:0] bitcast_ln55_27_fu_3622_p1;
wire   [10:0] tmp_67_fu_3608_p4;
wire   [51:0] trunc_ln55_26_fu_3618_p1;
wire   [0:0] icmp_ln55_53_fu_3645_p2;
wire   [0:0] icmp_ln55_52_fu_3639_p2;
wire   [10:0] tmp_68_fu_3625_p4;
wire   [51:0] trunc_ln55_27_fu_3635_p1;
wire   [0:0] icmp_ln55_55_fu_3663_p2;
wire   [0:0] icmp_ln55_54_fu_3657_p2;
wire   [0:0] or_ln55_27_fu_3669_p2;
wire   [0:0] or_ln55_26_fu_3651_p2;
wire   [0:0] and_ln55_26_fu_3675_p2;
wire   [63:0] bitcast_ln55_28_fu_3694_p1;
wire   [63:0] bitcast_ln55_29_fu_3711_p1;
wire   [10:0] tmp_71_fu_3697_p4;
wire   [51:0] trunc_ln55_28_fu_3707_p1;
wire   [0:0] icmp_ln55_57_fu_3734_p2;
wire   [0:0] icmp_ln55_56_fu_3728_p2;
wire   [10:0] tmp_72_fu_3714_p4;
wire   [51:0] trunc_ln55_29_fu_3724_p1;
wire   [0:0] icmp_ln55_59_fu_3752_p2;
wire   [0:0] icmp_ln55_58_fu_3746_p2;
wire   [0:0] or_ln55_29_fu_3758_p2;
wire   [0:0] or_ln55_28_fu_3740_p2;
wire   [0:0] and_ln55_28_fu_3764_p2;
wire   [7:0] zext_ln55_12_fu_3782_p1;
wire   [7:0] zext_ln55_13_fu_3791_p1;
wire   [7:0] min_s_16_fu_3785_p3;
wire   [7:0] zext_ln55_14_fu_3801_p1;
wire   [7:0] min_s_17_fu_3794_p3;
wire   [63:0] bitcast_ln55_30_fu_3812_p1;
wire   [63:0] bitcast_ln55_31_fu_3830_p1;
wire   [10:0] tmp_75_fu_3816_p4;
wire   [51:0] trunc_ln55_30_fu_3826_p1;
wire   [0:0] icmp_ln55_61_fu_3853_p2;
wire   [0:0] icmp_ln55_60_fu_3847_p2;
wire   [10:0] tmp_76_fu_3833_p4;
wire   [51:0] trunc_ln55_31_fu_3843_p1;
wire   [0:0] icmp_ln55_63_fu_3871_p2;
wire   [0:0] icmp_ln55_62_fu_3865_p2;
wire   [0:0] or_ln55_31_fu_3877_p2;
wire   [0:0] or_ln55_30_fu_3859_p2;
wire   [0:0] and_ln55_30_fu_3883_p2;
wire   [0:0] and_ln55_31_fu_3889_p2;
wire   [7:0] zext_ln55_15_fu_3901_p1;
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
wire   [1:0] tmp_1_fu_1188_p1;
wire   [1:0] tmp_1_fu_1188_p3;
wire  signed [1:0] tmp_1_fu_1188_p5;
wire  signed [1:0] tmp_1_fu_1188_p7;
wire   [1:0] tmp_5_fu_1464_p1;
wire   [1:0] tmp_5_fu_1464_p3;
wire  signed [1:0] tmp_5_fu_1464_p5;
wire  signed [1:0] tmp_5_fu_1464_p7;
wire   [1:0] tmp_9_fu_1503_p1;
wire   [1:0] tmp_9_fu_1503_p3;
wire  signed [1:0] tmp_9_fu_1503_p5;
wire  signed [1:0] tmp_9_fu_1503_p7;
wire   [1:0] tmp_14_fu_1582_p1;
wire   [1:0] tmp_14_fu_1582_p3;
wire  signed [1:0] tmp_14_fu_1582_p5;
wire  signed [1:0] tmp_14_fu_1582_p7;
wire   [1:0] tmp_19_fu_1621_p1;
wire   [1:0] tmp_19_fu_1621_p3;
wire  signed [1:0] tmp_19_fu_1621_p5;
wire  signed [1:0] tmp_19_fu_1621_p7;
wire   [1:0] tmp_24_fu_1705_p1;
wire   [1:0] tmp_24_fu_1705_p3;
wire  signed [1:0] tmp_24_fu_1705_p5;
wire  signed [1:0] tmp_24_fu_1705_p7;
wire   [1:0] tmp_29_fu_1744_p1;
wire   [1:0] tmp_29_fu_1744_p3;
wire  signed [1:0] tmp_29_fu_1744_p5;
wire  signed [1:0] tmp_29_fu_1744_p7;
wire   [1:0] tmp_34_fu_1823_p1;
wire   [1:0] tmp_34_fu_1823_p3;
wire  signed [1:0] tmp_34_fu_1823_p5;
wire  signed [1:0] tmp_34_fu_1823_p7;
wire   [1:0] tmp_39_fu_1862_p1;
wire   [1:0] tmp_39_fu_1862_p3;
wire  signed [1:0] tmp_39_fu_1862_p5;
wire  signed [1:0] tmp_39_fu_1862_p7;
wire   [1:0] tmp_44_fu_1946_p1;
wire   [1:0] tmp_44_fu_1946_p3;
wire  signed [1:0] tmp_44_fu_1946_p5;
wire  signed [1:0] tmp_44_fu_1946_p7;
wire   [1:0] tmp_46_fu_1985_p1;
wire   [1:0] tmp_46_fu_1985_p3;
wire  signed [1:0] tmp_46_fu_1985_p5;
wire  signed [1:0] tmp_46_fu_1985_p7;
wire   [1:0] tmp_47_fu_2064_p1;
wire   [1:0] tmp_47_fu_2064_p3;
wire  signed [1:0] tmp_47_fu_2064_p5;
wire  signed [1:0] tmp_47_fu_2064_p7;
wire   [1:0] tmp_48_fu_2103_p1;
wire   [1:0] tmp_48_fu_2103_p3;
wire  signed [1:0] tmp_48_fu_2103_p5;
wire  signed [1:0] tmp_48_fu_2103_p7;
wire   [1:0] tmp_49_fu_2182_p1;
wire   [1:0] tmp_49_fu_2182_p3;
wire  signed [1:0] tmp_49_fu_2182_p5;
wire  signed [1:0] tmp_49_fu_2182_p7;
wire   [1:0] tmp_50_fu_2221_p1;
wire   [1:0] tmp_50_fu_2221_p3;
wire  signed [1:0] tmp_50_fu_2221_p5;
wire  signed [1:0] tmp_50_fu_2221_p7;
wire   [1:0] tmp_51_fu_2284_p1;
wire   [1:0] tmp_51_fu_2284_p3;
wire  signed [1:0] tmp_51_fu_2284_p5;
wire  signed [1:0] tmp_51_fu_2284_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_144 = 64'd0;
#0 min_s_fu_148 = 8'd0;
#0 min_s_1_fu_152 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U79(.din0(tmp_1_fu_1188_p2),.din1(tmp_1_fu_1188_p4),.din2(tmp_1_fu_1188_p6),.din3(tmp_1_fu_1188_p8),.def(tmp_1_fu_1188_p9),.sel(empty),.dout(tmp_1_fu_1188_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U80(.din0(tmp_5_fu_1464_p2),.din1(tmp_5_fu_1464_p4),.din2(tmp_5_fu_1464_p6),.din3(tmp_5_fu_1464_p8),.def(tmp_5_fu_1464_p9),.sel(empty),.dout(tmp_5_fu_1464_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U81(.din0(tmp_9_fu_1503_p2),.din1(tmp_9_fu_1503_p4),.din2(tmp_9_fu_1503_p6),.din3(tmp_9_fu_1503_p8),.def(tmp_9_fu_1503_p9),.sel(empty),.dout(tmp_9_fu_1503_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U82(.din0(tmp_14_fu_1582_p2),.din1(tmp_14_fu_1582_p4),.din2(tmp_14_fu_1582_p6),.din3(tmp_14_fu_1582_p8),.def(tmp_14_fu_1582_p9),.sel(empty),.dout(tmp_14_fu_1582_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U83(.din0(tmp_19_fu_1621_p2),.din1(tmp_19_fu_1621_p4),.din2(tmp_19_fu_1621_p6),.din3(tmp_19_fu_1621_p8),.def(tmp_19_fu_1621_p9),.sel(empty),.dout(tmp_19_fu_1621_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U84(.din0(tmp_24_fu_1705_p2),.din1(tmp_24_fu_1705_p4),.din2(tmp_24_fu_1705_p6),.din3(tmp_24_fu_1705_p8),.def(tmp_24_fu_1705_p9),.sel(empty),.dout(tmp_24_fu_1705_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U85(.din0(tmp_29_fu_1744_p2),.din1(tmp_29_fu_1744_p4),.din2(tmp_29_fu_1744_p6),.din3(tmp_29_fu_1744_p8),.def(tmp_29_fu_1744_p9),.sel(empty),.dout(tmp_29_fu_1744_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U86(.din0(tmp_34_fu_1823_p2),.din1(tmp_34_fu_1823_p4),.din2(tmp_34_fu_1823_p6),.din3(tmp_34_fu_1823_p8),.def(tmp_34_fu_1823_p9),.sel(empty),.dout(tmp_34_fu_1823_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U87(.din0(tmp_39_fu_1862_p2),.din1(tmp_39_fu_1862_p4),.din2(tmp_39_fu_1862_p6),.din3(tmp_39_fu_1862_p8),.def(tmp_39_fu_1862_p9),.sel(empty),.dout(tmp_39_fu_1862_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U88(.din0(tmp_44_fu_1946_p2),.din1(tmp_44_fu_1946_p4),.din2(tmp_44_fu_1946_p6),.din3(tmp_44_fu_1946_p8),.def(tmp_44_fu_1946_p9),.sel(empty),.dout(tmp_44_fu_1946_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U89(.din0(tmp_46_fu_1985_p2),.din1(tmp_46_fu_1985_p4),.din2(tmp_46_fu_1985_p6),.din3(tmp_46_fu_1985_p8),.def(tmp_46_fu_1985_p9),.sel(empty),.dout(tmp_46_fu_1985_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U90(.din0(tmp_47_fu_2064_p2),.din1(tmp_47_fu_2064_p4),.din2(tmp_47_fu_2064_p6),.din3(tmp_47_fu_2064_p8),.def(tmp_47_fu_2064_p9),.sel(empty),.dout(tmp_47_fu_2064_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U91(.din0(tmp_48_fu_2103_p2),.din1(tmp_48_fu_2103_p4),.din2(tmp_48_fu_2103_p6),.din3(tmp_48_fu_2103_p8),.def(tmp_48_fu_2103_p9),.sel(empty),.dout(tmp_48_fu_2103_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U92(.din0(tmp_49_fu_2182_p2),.din1(tmp_49_fu_2182_p4),.din2(tmp_49_fu_2182_p6),.din3(tmp_49_fu_2182_p8),.def(tmp_49_fu_2182_p9),.sel(empty),.dout(tmp_49_fu_2182_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U93(.din0(tmp_50_fu_2221_p2),.din1(tmp_50_fu_2221_p4),.din2(tmp_50_fu_2221_p6),.din3(tmp_50_fu_2221_p8),.def(tmp_50_fu_2221_p9),.sel(empty),.dout(tmp_50_fu_2221_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U94(.din0(tmp_51_fu_2284_p2),.din1(tmp_51_fu_2284_p4),.din2(tmp_51_fu_2284_p6),.din3(tmp_51_fu_2284_p8),.def(tmp_51_fu_2284_p9),.sel(empty),.dout(tmp_51_fu_2284_p11));
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
        min_p_fu_144 <= min_p_36;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_74_reg_4119_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_144 <= min_p_33_fu_3894_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_1_fu_152 <= 6'd1;
    end else if (((tmp_74_reg_4119 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_152 <= add_ln53_15_fu_3397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_fu_148 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_74_reg_4119_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_148 <= min_s_19_fu_3904_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_10_reg_4241 <= add_ln53_10_fu_1327_p2;
        add_ln53_12_reg_4257 <= add_ln53_12_fu_1371_p2;
        add_ln53_12_reg_4257_pp0_iter1_reg <= add_ln53_12_reg_4257;
        add_ln53_13_reg_4268 <= add_ln53_13_fu_1398_p2;
        add_ln53_13_reg_4268_pp0_iter1_reg <= add_ln53_13_reg_4268;
        add_ln53_3_reg_4188 <= add_ln53_3_fu_1251_p2;
        add_ln53_8_reg_4219 <= add_ln53_8_fu_1273_p2;
        add_ln53_9_reg_4230 <= add_ln53_9_fu_1300_p2;
        min_p_25_reg_4880 <= min_p_25_fu_3499_p3;
        min_s_15_reg_4887 <= min_s_15_fu_3509_p3;
        tmp_1_reg_4128 <= tmp_1_fu_1188_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln53_11_reg_4530 <= add_ln53_11_fu_1925_p2;
        add_ln53_11_reg_4530_pp0_iter1_reg <= add_ln53_11_reg_4530;
        min_p_29_reg_4911 <= min_p_29_fu_3687_p3;
        tmp_34_reg_4480 <= tmp_34_fu_1823_p11;
        tmp_39_reg_4485 <= tmp_39_fu_1862_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_14_reg_4113 <= add_ln53_14_fu_1158_p2;
        add_ln53_1_reg_4058 <= add_ln53_1_fu_1017_p2;
        add_ln53_2_reg_4064 <= add_ln53_2_fu_1023_p2;
        add_ln53_4_reg_4080 <= add_ln53_4_fu_1071_p2;
        add_ln53_5_reg_4091 <= add_ln53_5_fu_1100_p2;
        add_ln53_6_reg_4102 <= add_ln53_6_fu_1129_p2;
        add_ln53_reg_4052 <= add_ln53_fu_1011_p2;
        and_ln55_23_reg_4874 <= and_ln55_23_fu_3484_p2;
        lshr_ln8_s_reg_4011 <= {{ap_sig_allocacmp_s[5:2]}};
        s_reg_3997 <= ap_sig_allocacmp_s;
        tmp_74_reg_4119 <= add_ln53_14_fu_1158_p2[32'd6];
        tmp_74_reg_4119_pp0_iter1_reg <= tmp_74_reg_4119;
        zext_ln52_2_cast_reg_3978[5 : 0] <= zext_ln52_2_cast_fu_938_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_7_reg_4424 <= add_ln53_7_fu_1684_p2;
        min_p_27_reg_4898 <= min_p_27_fu_3598_p3;
        tmp_14_reg_4374 <= tmp_14_fu_1582_p11;
        tmp_19_reg_4379 <= tmp_19_fu_1621_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_4767 <= and_ln55_11_fu_2881_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_4792 <= and_ln55_13_fu_2990_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_4812 <= and_ln55_15_fu_3080_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_4830 <= and_ln55_17_fu_3188_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_4843 <= and_ln55_19_fu_3277_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_4683 <= and_ln55_1_fu_2388_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_4861 <= and_ln55_21_fu_3385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_25_reg_4892 <= and_ln55_25_fu_3592_p2;
        tmp_5_reg_4284 <= tmp_5_fu_1464_p11;
        tmp_9_reg_4289 <= tmp_9_fu_1503_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_27_reg_4905 <= and_ln55_27_fu_3681_p2;
        tmp_24_reg_4430 <= tmp_24_fu_1705_p11;
        tmp_29_reg_4435 <= tmp_29_fu_1744_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_29_reg_4918 <= and_ln55_29_fu_3770_p2;
        tmp_44_reg_4536 <= tmp_44_fu_1946_p11;
        tmp_46_reg_4541 <= tmp_46_fu_1985_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_4696 <= and_ln55_3_fu_2478_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_4709 <= and_ln55_5_fu_2568_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_4722 <= and_ln55_7_fu_2658_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_4747 <= and_ln55_9_fu_2791_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_4194 <= llike_1_q0;
        llike_1_load_reg_4123 <= llike_1_q1;
        llike_2_load_1_reg_4199 <= llike_2_q0;
        llike_2_load_reg_4133 <= llike_2_q1;
        llike_3_load_1_reg_4204 <= llike_3_q0;
        llike_3_load_reg_4158 <= llike_3_q1;
        llike_load_1_reg_4209 <= llike_q0;
        llike_load_reg_4183 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_4334 <= llike_1_q1;
        llike_1_load_3_reg_4354 <= llike_1_q0;
        llike_2_load_2_reg_4339 <= llike_2_q1;
        llike_2_load_3_reg_4359 <= llike_2_q0;
        llike_3_load_2_reg_4344 <= llike_3_q1;
        llike_3_load_3_reg_4364 <= llike_3_q0;
        llike_load_2_reg_4349 <= llike_q1;
        llike_load_3_reg_4369 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_11_reg_4760 <= min_p_11_fu_2797_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_13_reg_4780 <= min_p_13_fu_2896_p3;
        min_s_9_reg_4787 <= min_s_9_fu_2906_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_15_reg_4805 <= min_p_15_fu_2996_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_17_reg_4818 <= min_p_17_fu_3095_p3;
        min_s_11_reg_4825 <= min_s_11_fu_3105_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_19_reg_4836 <= min_p_19_fu_3194_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_4676 <= min_p_fu_144;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_21_reg_4849 <= min_p_21_fu_3292_p3;
        min_s_13_reg_4856 <= min_s_13_fu_3302_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_23_reg_4867 <= min_p_23_fu_3391_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_31_reg_4924 <= min_p_31_fu_3776_p3;
        tmp_47_reg_4586 <= tmp_47_fu_2064_p11;
        tmp_48_reg_4591 <= tmp_48_fu_2103_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_4689 <= min_p_3_fu_2394_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_4702 <= min_p_5_fu_2484_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_7_reg_4715 <= min_p_7_fu_2574_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_9_reg_4735 <= min_p_9_fu_2697_p3;
        min_s_7_reg_4742 <= min_s_7_fu_2707_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_4931 <= min_s_18_fu_3804_p3;
        tmp_77_reg_4936 <= grp_fu_1374_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_10_reg_4753 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_12_reg_4773 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_14_reg_4798 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_8_reg_4728 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_913 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_918 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_923 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_928 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_933 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_49_reg_4636 <= tmp_49_fu_2182_p11;
        tmp_50_reg_4641 <= tmp_50_fu_2221_p11;
        trunc_ln54_reg_4646 <= trunc_ln54_fu_2244_p1;
        trunc_ln54_reg_4646_pp0_iter1_reg <= trunc_ln54_reg_4646;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_51_reg_4671 <= tmp_51_fu_2284_p11;
    end
end
always @ (*) begin
    if (((tmp_74_reg_4119 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_74_reg_4119_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_152;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_905_p0 = llike_load_3_reg_4369;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_905_p0 = llike_3_load_3_reg_4364;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_905_p0 = llike_2_load_3_reg_4359;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_905_p0 = llike_1_load_3_reg_4354;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_905_p0 = llike_load_2_reg_4349;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_905_p0 = llike_3_load_2_reg_4344;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_905_p0 = llike_2_load_2_reg_4339;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_905_p0 = llike_1_load_2_reg_4334;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_905_p0 = llike_load_1_reg_4209;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_905_p0 = llike_3_load_1_reg_4204;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_905_p0 = llike_2_load_1_reg_4199;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_905_p0 = llike_1_load_1_reg_4194;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_905_p0 = llike_load_reg_4183;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_905_p0 = llike_3_load_reg_4158;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_905_p0 = llike_2_load_reg_4133;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_905_p0 = llike_1_load_reg_4123;
        end else begin
            grp_fu_905_p0 = 'bx;
        end
    end else begin
        grp_fu_905_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_905_p1 = tmp_51_reg_4671;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_905_p1 = tmp_50_reg_4641;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_905_p1 = tmp_49_reg_4636;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_905_p1 = tmp_48_reg_4591;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_905_p1 = tmp_47_reg_4586;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_905_p1 = tmp_46_reg_4541;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_905_p1 = tmp_44_reg_4536;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_905_p1 = tmp_39_reg_4485;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_905_p1 = tmp_34_reg_4480;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_905_p1 = tmp_29_reg_4435;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_905_p1 = tmp_24_reg_4430;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_905_p1 = tmp_19_reg_4379;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_905_p1 = tmp_14_reg_4374;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_905_p1 = tmp_9_reg_4289;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_905_p1 = tmp_5_reg_4284;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_905_p1 = tmp_1_reg_4128;
        end else begin
            grp_fu_905_p1 = 'bx;
        end
    end else begin
        grp_fu_905_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_909_p0 = p_14_reg_4798;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_909_p0 = p_12_reg_4773;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_909_p0 = p_10_reg_4753;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_909_p0 = p_8_reg_4728;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_909_p0 = reg_933;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_909_p0 = reg_928;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_909_p0 = reg_923;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_909_p0 = reg_918;
    end else if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_909_p0 = reg_913;
    end else begin
        grp_fu_909_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_909_p1 = min_p_31_fu_3776_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_909_p1 = min_p_29_fu_3687_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_909_p1 = min_p_27_fu_3598_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_909_p1 = min_p_25_fu_3499_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_909_p1 = min_p_23_fu_3391_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_909_p1 = min_p_21_fu_3292_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_909_p1 = min_p_19_fu_3194_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_909_p1 = min_p_17_fu_3095_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_909_p1 = min_p_15_fu_2996_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_909_p1 = min_p_13_fu_2896_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_909_p1 = min_p_11_fu_2797_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_909_p1 = min_p_9_fu_2697_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_909_p1 = min_p_7_fu_2574_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_909_p1 = min_p_5_fu_2484_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_909_p1 = min_p_3_fu_2394_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_909_p1 = min_p_fu_144;
    end else begin
        grp_fu_909_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_26_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_18_fu_1066_p1;
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
            llike_1_address1_local = zext_ln54_22_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_16_fu_982_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln54_27_fu_1393_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_19_fu_1095_p1;
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
            llike_2_address1_local = zext_ln54_23_fu_1295_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address1_local = zext_ln54_16_fu_982_p1;
        end else begin
            llike_2_address1_local = 'bx;
        end
    end else begin
        llike_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln54_28_fu_1420_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_20_fu_1124_p1;
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
            llike_3_address1_local = zext_ln54_24_fu_1322_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address1_local = zext_ln54_16_fu_982_p1;
        end else begin
            llike_3_address1_local = 'bx;
        end
    end else begin
        llike_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_30_fu_1443_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_21_fu_1153_p1;
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
            llike_address1_local = zext_ln54_25_fu_1349_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_17_fu_1047_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (tmp_74_reg_4119_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln54_13_fu_2138_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln54_11_fu_2020_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln54_9_fu_1897_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln54_7_fu_1779_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1538_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_1003_p1;
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
            transition_0_address1_local = zext_ln54_15_fu_2260_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln54_14_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln54_12_fu_2040_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln54_10_fu_1917_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_8_fu_1799_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1676_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1558_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1223_p1;
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
            transition_1_address0_local = zext_ln54_13_fu_2138_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln54_11_fu_2020_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln54_9_fu_1897_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln54_7_fu_1779_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1538_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_1003_p1;
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
            transition_1_address1_local = zext_ln54_15_fu_2260_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln54_14_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln54_12_fu_2040_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln54_10_fu_1917_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_8_fu_1799_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1676_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1558_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1223_p1;
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
            transition_2_address0_local = zext_ln54_13_fu_2138_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address0_local = zext_ln54_11_fu_2020_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address0_local = zext_ln54_9_fu_1897_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address0_local = zext_ln54_7_fu_1779_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln54_5_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_1538_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_1003_p1;
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
            transition_2_address1_local = zext_ln54_15_fu_2260_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_2_address1_local = zext_ln54_14_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address1_local = zext_ln54_12_fu_2040_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address1_local = zext_ln54_10_fu_1917_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address1_local = zext_ln54_8_fu_1799_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1676_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1558_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1223_p1;
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
            transition_3_address0_local = zext_ln54_13_fu_2138_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address0_local = zext_ln54_11_fu_2020_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address0_local = zext_ln54_9_fu_1897_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address0_local = zext_ln54_7_fu_1779_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln54_5_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_1538_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_1003_p1;
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
            transition_3_address1_local = zext_ln54_15_fu_2260_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_3_address1_local = zext_ln54_14_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address1_local = zext_ln54_12_fu_2040_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address1_local = zext_ln54_10_fu_1917_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address1_local = zext_ln54_8_fu_1799_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1676_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1558_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1223_p1;
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
assign add_ln53_10_fu_1327_p2 = (s_reg_3997 + 6'd11);
assign add_ln53_11_fu_1925_p2 = (s_reg_3997 + 6'd12);
assign add_ln53_12_fu_1371_p2 = (s_reg_3997 + 6'd13);
assign add_ln53_13_fu_1398_p2 = (s_reg_3997 + 6'd14);
assign add_ln53_14_fu_1158_p2 = (zext_ln21_fu_960_p1 + 7'd15);
assign add_ln53_15_fu_3397_p2 = (s_reg_3997 + 6'd16);
assign add_ln53_1_fu_1017_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1023_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_1251_p2 = (s_reg_3997 + 6'd4);
assign add_ln53_4_fu_1071_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln53_5_fu_1100_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln53_6_fu_1129_p2 = (ap_sig_allocacmp_s + 6'd7);
assign add_ln53_7_fu_1684_p2 = (s_reg_3997 + 6'd8);
assign add_ln53_8_fu_1273_p2 = (s_reg_3997 + 6'd9);
assign add_ln53_9_fu_1300_p2 = (s_reg_3997 + 6'd10);
assign add_ln53_fu_1011_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1912_p2 = (shl_ln54_s_fu_1905_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_11_fu_2015_p2 = (shl_ln54_10_fu_2008_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_12_fu_2035_p2 = (shl_ln54_11_fu_2028_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_13_fu_2133_p2 = (shl_ln54_12_fu_2126_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_14_fu_2153_p2 = (shl_ln54_13_fu_2146_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_15_fu_2255_p2 = (shl_ln54_14_fu_2247_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_16_fu_1438_p2 = (zext_ln52_3 + zext_ln54_29_fu_1434_p1);
assign add_ln54_1_fu_1218_p2 = (shl_ln54_1_fu_1211_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_2_fu_1238_p2 = (shl_ln54_2_fu_1231_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_3_fu_1533_p2 = (shl_ln54_3_fu_1526_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_4_fu_1553_p2 = (shl_ln54_4_fu_1546_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_5_fu_1651_p2 = (shl_ln54_5_fu_1644_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_6_fu_1671_p2 = (shl_ln54_6_fu_1664_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_7_fu_1774_p2 = (shl_ln54_7_fu_1767_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_8_fu_1794_p2 = (shl_ln54_8_fu_1787_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_9_fu_1892_p2 = (shl_ln54_9_fu_1885_p3 + zext_ln52_2_cast_reg_3978);
assign add_ln54_fu_997_p2 = (shl_ln2_fu_989_p3 + zext_ln52_2_cast_fu_938_p1);
assign add_ln8_1_fu_1256_p2 = (lshr_ln8_s_reg_4011 + 4'd2);
assign add_ln8_2_fu_1354_p2 = (lshr_ln8_s_reg_4011 + 4'd3);
assign add_ln8_fu_1052_p2 = (lshr_ln8_s_fu_964_p4 + 4'd1);
assign and_ln55_10_fu_2875_p2 = (or_ln55_11_fu_2869_p2 & or_ln55_10_fu_2851_p2);
assign and_ln55_11_fu_2881_p2 = (grp_fu_1374_p_dout0 & and_ln55_10_fu_2875_p2);
assign and_ln55_12_fu_2984_p2 = (or_ln55_13_fu_2978_p2 & or_ln55_12_fu_2960_p2);
assign and_ln55_13_fu_2990_p2 = (grp_fu_1374_p_dout0 & and_ln55_12_fu_2984_p2);
assign and_ln55_14_fu_3074_p2 = (or_ln55_15_fu_3068_p2 & or_ln55_14_fu_3050_p2);
assign and_ln55_15_fu_3080_p2 = (grp_fu_1374_p_dout0 & and_ln55_14_fu_3074_p2);
assign and_ln55_16_fu_3182_p2 = (or_ln55_17_fu_3176_p2 & or_ln55_16_fu_3158_p2);
assign and_ln55_17_fu_3188_p2 = (grp_fu_1374_p_dout0 & and_ln55_16_fu_3182_p2);
assign and_ln55_18_fu_3271_p2 = (or_ln55_19_fu_3265_p2 & or_ln55_18_fu_3247_p2);
assign and_ln55_19_fu_3277_p2 = (grp_fu_1374_p_dout0 & and_ln55_18_fu_3271_p2);
assign and_ln55_1_fu_2388_p2 = (or_ln55_1_fu_2376_p2 & and_ln55_fu_2382_p2);
assign and_ln55_20_fu_3379_p2 = (or_ln55_21_fu_3373_p2 & or_ln55_20_fu_3355_p2);
assign and_ln55_21_fu_3385_p2 = (grp_fu_1374_p_dout0 & and_ln55_20_fu_3379_p2);
assign and_ln55_22_fu_3478_p2 = (or_ln55_23_fu_3472_p2 & or_ln55_22_fu_3454_p2);
assign and_ln55_23_fu_3484_p2 = (grp_fu_1374_p_dout0 & and_ln55_22_fu_3478_p2);
assign and_ln55_24_fu_3586_p2 = (or_ln55_25_fu_3580_p2 & or_ln55_24_fu_3562_p2);
assign and_ln55_25_fu_3592_p2 = (grp_fu_1374_p_dout0 & and_ln55_24_fu_3586_p2);
assign and_ln55_26_fu_3675_p2 = (or_ln55_27_fu_3669_p2 & or_ln55_26_fu_3651_p2);
assign and_ln55_27_fu_3681_p2 = (grp_fu_1374_p_dout0 & and_ln55_26_fu_3675_p2);
assign and_ln55_28_fu_3764_p2 = (or_ln55_29_fu_3758_p2 & or_ln55_28_fu_3740_p2);
assign and_ln55_29_fu_3770_p2 = (grp_fu_1374_p_dout0 & and_ln55_28_fu_3764_p2);
assign and_ln55_2_fu_2472_p2 = (or_ln55_3_fu_2466_p2 & or_ln55_2_fu_2448_p2);
assign and_ln55_30_fu_3883_p2 = (or_ln55_31_fu_3877_p2 & or_ln55_30_fu_3859_p2);
assign and_ln55_31_fu_3889_p2 = (tmp_77_reg_4936 & and_ln55_30_fu_3883_p2);
assign and_ln55_3_fu_2478_p2 = (grp_fu_1374_p_dout0 & and_ln55_2_fu_2472_p2);
assign and_ln55_4_fu_2562_p2 = (or_ln55_5_fu_2556_p2 & or_ln55_4_fu_2538_p2);
assign and_ln55_5_fu_2568_p2 = (grp_fu_1374_p_dout0 & and_ln55_4_fu_2562_p2);
assign and_ln55_6_fu_2652_p2 = (or_ln55_7_fu_2646_p2 & or_ln55_6_fu_2628_p2);
assign and_ln55_7_fu_2658_p2 = (grp_fu_1374_p_dout0 & and_ln55_6_fu_2652_p2);
assign and_ln55_8_fu_2785_p2 = (or_ln55_9_fu_2779_p2 & or_ln55_8_fu_2761_p2);
assign and_ln55_9_fu_2791_p2 = (grp_fu_1374_p_dout0 & and_ln55_8_fu_2785_p2);
assign and_ln55_fu_2382_p2 = (or_ln55_fu_2358_p2 & grp_fu_1374_p_dout0);
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
assign bitcast_ln55_10_fu_2804_p1 = reg_918;
assign bitcast_ln55_11_fu_2822_p1 = min_p_11_reg_4760;
assign bitcast_ln55_12_fu_2913_p1 = reg_933;
assign bitcast_ln55_13_fu_2931_p1 = min_p_13_reg_4780;
assign bitcast_ln55_14_fu_3003_p1 = reg_923;
assign bitcast_ln55_15_fu_3021_p1 = min_p_15_reg_4805;
assign bitcast_ln55_16_fu_3112_p1 = p_8_reg_4728;
assign bitcast_ln55_17_fu_3129_p1 = min_p_17_reg_4818;
assign bitcast_ln55_18_fu_3200_p1 = reg_913;
assign bitcast_ln55_19_fu_3218_p1 = min_p_19_reg_4836;
assign bitcast_ln55_1_fu_2329_p1 = min_p_1_reg_4676;
assign bitcast_ln55_20_fu_3309_p1 = p_10_reg_4753;
assign bitcast_ln55_21_fu_3326_p1 = min_p_21_reg_4849;
assign bitcast_ln55_22_fu_3407_p1 = reg_928;
assign bitcast_ln55_23_fu_3425_p1 = min_p_23_reg_4867;
assign bitcast_ln55_24_fu_3516_p1 = p_12_reg_4773;
assign bitcast_ln55_25_fu_3533_p1 = min_p_25_reg_4880;
assign bitcast_ln55_26_fu_3604_p1 = reg_918;
assign bitcast_ln55_27_fu_3622_p1 = min_p_27_reg_4898;
assign bitcast_ln55_28_fu_3694_p1 = p_14_reg_4798;
assign bitcast_ln55_29_fu_3711_p1 = min_p_29_reg_4911;
assign bitcast_ln55_2_fu_2401_p1 = reg_918;
assign bitcast_ln55_30_fu_3812_p1 = reg_933;
assign bitcast_ln55_31_fu_3830_p1 = min_p_31_reg_4924;
assign bitcast_ln55_3_fu_2419_p1 = min_p_3_reg_4689;
assign bitcast_ln55_4_fu_2491_p1 = reg_923;
assign bitcast_ln55_5_fu_2509_p1 = min_p_5_reg_4702;
assign bitcast_ln55_6_fu_2581_p1 = reg_913;
assign bitcast_ln55_7_fu_2599_p1 = min_p_7_reg_4715;
assign bitcast_ln55_8_fu_2714_p1 = reg_928;
assign bitcast_ln55_9_fu_2732_p1 = min_p_9_reg_4735;
assign bitcast_ln55_fu_2311_p1 = reg_913;
assign grp_fu_1374_p_ce = 1'b1;
assign grp_fu_1374_p_din0 = grp_fu_909_p0;
assign grp_fu_1374_p_din1 = grp_fu_909_p1;
assign grp_fu_1374_p_opcode = 5'd4;
assign grp_fu_630_p_ce = 1'b1;
assign grp_fu_630_p_din0 = grp_fu_905_p0;
assign grp_fu_630_p_din1 = grp_fu_905_p1;
assign grp_fu_630_p_opcode = 2'd0;
assign icmp_ln55_10_fu_2544_p2 = ((tmp_11_fu_2512_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_2550_p2 = ((trunc_ln55_5_fu_2522_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2616_p2 = ((tmp_15_fu_2585_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2622_p2 = ((trunc_ln55_6_fu_2595_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2634_p2 = ((tmp_16_fu_2602_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2640_p2 = ((trunc_ln55_7_fu_2612_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2749_p2 = ((tmp_20_fu_2718_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2755_p2 = ((trunc_ln55_8_fu_2728_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2767_p2 = ((tmp_21_fu_2735_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2773_p2 = ((trunc_ln55_9_fu_2745_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_2352_p2 = ((trunc_ln55_fu_2325_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2839_p2 = ((tmp_25_fu_2808_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2845_p2 = ((trunc_ln55_10_fu_2818_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2857_p2 = ((tmp_26_fu_2825_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2863_p2 = ((trunc_ln55_11_fu_2835_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2948_p2 = ((tmp_30_fu_2917_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2954_p2 = ((trunc_ln55_12_fu_2927_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2966_p2 = ((tmp_31_fu_2934_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2972_p2 = ((trunc_ln55_13_fu_2944_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_3038_p2 = ((tmp_35_fu_3007_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_3044_p2 = ((trunc_ln55_14_fu_3017_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_2364_p2 = ((tmp_3_fu_2332_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_3056_p2 = ((tmp_36_fu_3024_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_3062_p2 = ((trunc_ln55_15_fu_3034_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_3146_p2 = ((tmp_40_fu_3115_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_3152_p2 = ((trunc_ln55_16_fu_3125_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_3164_p2 = ((tmp_41_fu_3132_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_3170_p2 = ((trunc_ln55_17_fu_3142_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_3235_p2 = ((tmp_45_fu_3204_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_3241_p2 = ((trunc_ln55_18_fu_3214_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_3253_p2 = ((tmp_52_fu_3221_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_3259_p2 = ((trunc_ln55_19_fu_3231_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_2370_p2 = ((trunc_ln55_1_fu_2342_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_3343_p2 = ((tmp_55_fu_3312_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_3349_p2 = ((trunc_ln55_20_fu_3322_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_3361_p2 = ((tmp_56_fu_3329_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_3367_p2 = ((trunc_ln55_21_fu_3339_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_3442_p2 = ((tmp_59_fu_3411_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_3448_p2 = ((trunc_ln55_22_fu_3421_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_3460_p2 = ((tmp_60_fu_3428_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_3466_p2 = ((trunc_ln55_23_fu_3438_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_3550_p2 = ((tmp_63_fu_3519_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_3556_p2 = ((trunc_ln55_24_fu_3529_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_2436_p2 = ((tmp_6_fu_2405_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_3568_p2 = ((tmp_64_fu_3536_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_3574_p2 = ((trunc_ln55_25_fu_3546_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_3639_p2 = ((tmp_67_fu_3608_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_3645_p2 = ((trunc_ln55_26_fu_3618_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_3657_p2 = ((tmp_68_fu_3625_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_3663_p2 = ((trunc_ln55_27_fu_3635_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_3728_p2 = ((tmp_71_fu_3697_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_3734_p2 = ((trunc_ln55_28_fu_3707_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_3746_p2 = ((tmp_72_fu_3714_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_3752_p2 = ((trunc_ln55_29_fu_3724_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_2442_p2 = ((trunc_ln55_2_fu_2415_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_3847_p2 = ((tmp_75_fu_3816_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_3853_p2 = ((trunc_ln55_30_fu_3826_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_3865_p2 = ((tmp_76_fu_3833_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_3871_p2 = ((trunc_ln55_31_fu_3843_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_2454_p2 = ((tmp_7_fu_2422_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_2460_p2 = ((trunc_ln55_3_fu_2432_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_2526_p2 = ((tmp_10_fu_2495_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_2532_p2 = ((trunc_ln55_4_fu_2505_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_2346_p2 = ((tmp_2_fu_2315_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_1_fu_1029_p4 = {{add_ln53_2_fu_1023_p2[5:2]}};
assign lshr_ln8_2_fu_1077_p4 = {{add_ln53_4_fu_1071_p2[5:2]}};
assign lshr_ln8_3_fu_1106_p4 = {{add_ln53_5_fu_1100_p2[5:2]}};
assign lshr_ln8_4_fu_1135_p4 = {{add_ln53_6_fu_1129_p2[5:2]}};
assign lshr_ln8_5_fu_1278_p4 = {{add_ln53_8_fu_1273_p2[5:2]}};
assign lshr_ln8_6_fu_1305_p4 = {{add_ln53_9_fu_1300_p2[5:2]}};
assign lshr_ln8_7_fu_1332_p4 = {{add_ln53_10_fu_1327_p2[5:2]}};
assign lshr_ln8_8_fu_1376_p4 = {{add_ln53_12_fu_1371_p2[5:2]}};
assign lshr_ln8_9_fu_1403_p4 = {{add_ln53_13_fu_1398_p2[5:2]}};
assign lshr_ln8_s_fu_964_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_2_fu_1425_p4 = {{add_ln53_14_reg_4113[6:2]}};
assign min_p_11_fu_2797_p3 = ((and_ln55_9_reg_4747[0:0] == 1'b1) ? reg_928 : min_p_9_reg_4735);
assign min_p_13_fu_2896_p3 = ((and_ln55_11_reg_4767[0:0] == 1'b1) ? reg_918 : min_p_11_reg_4760);
assign min_p_15_fu_2996_p3 = ((and_ln55_13_reg_4792[0:0] == 1'b1) ? reg_933 : min_p_13_reg_4780);
assign min_p_17_fu_3095_p3 = ((and_ln55_15_reg_4812[0:0] == 1'b1) ? reg_923 : min_p_15_reg_4805);
assign min_p_19_fu_3194_p3 = ((and_ln55_17_reg_4830[0:0] == 1'b1) ? p_8_reg_4728 : min_p_17_reg_4818);
assign min_p_21_fu_3292_p3 = ((and_ln55_19_reg_4843[0:0] == 1'b1) ? reg_913 : min_p_19_reg_4836);
assign min_p_23_fu_3391_p3 = ((and_ln55_21_reg_4861[0:0] == 1'b1) ? p_10_reg_4753 : min_p_21_reg_4849);
assign min_p_25_fu_3499_p3 = ((and_ln55_23_reg_4874[0:0] == 1'b1) ? reg_928 : min_p_23_reg_4867);
assign min_p_27_fu_3598_p3 = ((and_ln55_25_reg_4892[0:0] == 1'b1) ? p_12_reg_4773 : min_p_25_reg_4880);
assign min_p_29_fu_3687_p3 = ((and_ln55_27_reg_4905[0:0] == 1'b1) ? reg_918 : min_p_27_reg_4898);
assign min_p_31_fu_3776_p3 = ((and_ln55_29_reg_4918[0:0] == 1'b1) ? p_14_reg_4798 : min_p_29_reg_4911);
assign min_p_33_fu_3894_p3 = ((and_ln55_31_fu_3889_p2[0:0] == 1'b1) ? reg_933 : min_p_31_reg_4924);
assign min_p_3_fu_2394_p3 = ((and_ln55_1_reg_4683[0:0] == 1'b1) ? reg_913 : min_p_1_reg_4676);
assign min_p_5_fu_2484_p3 = ((and_ln55_3_reg_4696[0:0] == 1'b1) ? reg_918 : min_p_3_reg_4689);
assign min_p_7_fu_2574_p3 = ((and_ln55_5_reg_4709[0:0] == 1'b1) ? reg_923 : min_p_5_reg_4702);
assign min_p_9_fu_2697_p3 = ((and_ln55_7_reg_4722[0:0] == 1'b1) ? reg_913 : min_p_7_reg_4715);
assign min_s_10_fu_3089_p3 = ((and_ln55_13_reg_4792[0:0] == 1'b1) ? zext_ln55_6_fu_3086_p1 : min_s_9_reg_4787);
assign min_s_11_fu_3105_p3 = ((and_ln55_15_reg_4812[0:0] == 1'b1) ? zext_ln55_7_fu_3102_p1 : min_s_10_fu_3089_p3);
assign min_s_12_fu_3286_p3 = ((and_ln55_17_reg_4830[0:0] == 1'b1) ? zext_ln55_8_fu_3283_p1 : min_s_11_reg_4825);
assign min_s_13_fu_3302_p3 = ((and_ln55_19_reg_4843[0:0] == 1'b1) ? zext_ln55_9_fu_3299_p1 : min_s_12_fu_3286_p3);
assign min_s_14_fu_3493_p3 = ((and_ln55_21_reg_4861[0:0] == 1'b1) ? zext_ln55_10_fu_3490_p1 : min_s_13_reg_4856);
assign min_s_15_fu_3509_p3 = ((and_ln55_23_reg_4874[0:0] == 1'b1) ? zext_ln55_11_fu_3506_p1 : min_s_14_fu_3493_p3);
assign min_s_16_fu_3785_p3 = ((and_ln55_25_reg_4892[0:0] == 1'b1) ? zext_ln55_12_fu_3782_p1 : min_s_15_reg_4887);
assign min_s_17_fu_3794_p3 = ((and_ln55_27_reg_4905[0:0] == 1'b1) ? zext_ln55_13_fu_3791_p1 : min_s_16_fu_3785_p3);
assign min_s_18_fu_3804_p3 = ((and_ln55_29_reg_4918[0:0] == 1'b1) ? zext_ln55_14_fu_3801_p1 : min_s_17_fu_3794_p3);
assign min_s_19_fu_3904_p3 = ((and_ln55_31_fu_3889_p2[0:0] == 1'b1) ? zext_ln55_15_fu_3901_p1 : min_s_18_reg_4931);
assign min_s_34_out = ((and_ln55_29_reg_4918[0:0] == 1'b1) ? zext_ln55_14_fu_3801_p1 : min_s_17_fu_3794_p3);
assign min_s_4_fu_2670_p3 = ((and_ln55_1_reg_4683[0:0] == 1'b1) ? zext_ln55_fu_2667_p1 : min_s_fu_148);
assign min_s_5_fu_2680_p3 = ((and_ln55_3_reg_4696[0:0] == 1'b1) ? zext_ln55_1_fu_2677_p1 : min_s_4_fu_2670_p3);
assign min_s_6_fu_2690_p3 = ((and_ln55_5_reg_4709[0:0] == 1'b1) ? zext_ln55_2_fu_2687_p1 : min_s_5_fu_2680_p3);
assign min_s_7_fu_2707_p3 = ((and_ln55_7_reg_4722[0:0] == 1'b1) ? zext_ln55_3_fu_2704_p1 : min_s_6_fu_2690_p3);
assign min_s_8_fu_2890_p3 = ((and_ln55_9_reg_4747[0:0] == 1'b1) ? zext_ln55_4_fu_2887_p1 : min_s_7_reg_4742);
assign min_s_9_fu_2906_p3 = ((and_ln55_11_reg_4767[0:0] == 1'b1) ? zext_ln55_5_fu_2903_p1 : min_s_8_fu_2890_p3);
assign or_ln55_10_fu_2851_p2 = (icmp_ln55_21_fu_2845_p2 | icmp_ln55_20_fu_2839_p2);
assign or_ln55_11_fu_2869_p2 = (icmp_ln55_23_fu_2863_p2 | icmp_ln55_22_fu_2857_p2);
assign or_ln55_12_fu_2960_p2 = (icmp_ln55_25_fu_2954_p2 | icmp_ln55_24_fu_2948_p2);
assign or_ln55_13_fu_2978_p2 = (icmp_ln55_27_fu_2972_p2 | icmp_ln55_26_fu_2966_p2);
assign or_ln55_14_fu_3050_p2 = (icmp_ln55_29_fu_3044_p2 | icmp_ln55_28_fu_3038_p2);
assign or_ln55_15_fu_3068_p2 = (icmp_ln55_31_fu_3062_p2 | icmp_ln55_30_fu_3056_p2);
assign or_ln55_16_fu_3158_p2 = (icmp_ln55_33_fu_3152_p2 | icmp_ln55_32_fu_3146_p2);
assign or_ln55_17_fu_3176_p2 = (icmp_ln55_35_fu_3170_p2 | icmp_ln55_34_fu_3164_p2);
assign or_ln55_18_fu_3247_p2 = (icmp_ln55_37_fu_3241_p2 | icmp_ln55_36_fu_3235_p2);
assign or_ln55_19_fu_3265_p2 = (icmp_ln55_39_fu_3259_p2 | icmp_ln55_38_fu_3253_p2);
assign or_ln55_1_fu_2376_p2 = (icmp_ln55_3_fu_2370_p2 | icmp_ln55_2_fu_2364_p2);
assign or_ln55_20_fu_3355_p2 = (icmp_ln55_41_fu_3349_p2 | icmp_ln55_40_fu_3343_p2);
assign or_ln55_21_fu_3373_p2 = (icmp_ln55_43_fu_3367_p2 | icmp_ln55_42_fu_3361_p2);
assign or_ln55_22_fu_3454_p2 = (icmp_ln55_45_fu_3448_p2 | icmp_ln55_44_fu_3442_p2);
assign or_ln55_23_fu_3472_p2 = (icmp_ln55_47_fu_3466_p2 | icmp_ln55_46_fu_3460_p2);
assign or_ln55_24_fu_3562_p2 = (icmp_ln55_49_fu_3556_p2 | icmp_ln55_48_fu_3550_p2);
assign or_ln55_25_fu_3580_p2 = (icmp_ln55_51_fu_3574_p2 | icmp_ln55_50_fu_3568_p2);
assign or_ln55_26_fu_3651_p2 = (icmp_ln55_53_fu_3645_p2 | icmp_ln55_52_fu_3639_p2);
assign or_ln55_27_fu_3669_p2 = (icmp_ln55_55_fu_3663_p2 | icmp_ln55_54_fu_3657_p2);
assign or_ln55_28_fu_3740_p2 = (icmp_ln55_57_fu_3734_p2 | icmp_ln55_56_fu_3728_p2);
assign or_ln55_29_fu_3758_p2 = (icmp_ln55_59_fu_3752_p2 | icmp_ln55_58_fu_3746_p2);
assign or_ln55_2_fu_2448_p2 = (icmp_ln55_5_fu_2442_p2 | icmp_ln55_4_fu_2436_p2);
assign or_ln55_30_fu_3859_p2 = (icmp_ln55_61_fu_3853_p2 | icmp_ln55_60_fu_3847_p2);
assign or_ln55_31_fu_3877_p2 = (icmp_ln55_63_fu_3871_p2 | icmp_ln55_62_fu_3865_p2);
assign or_ln55_3_fu_2466_p2 = (icmp_ln55_7_fu_2460_p2 | icmp_ln55_6_fu_2454_p2);
assign or_ln55_4_fu_2538_p2 = (icmp_ln55_9_fu_2532_p2 | icmp_ln55_8_fu_2526_p2);
assign or_ln55_5_fu_2556_p2 = (icmp_ln55_11_fu_2550_p2 | icmp_ln55_10_fu_2544_p2);
assign or_ln55_6_fu_2628_p2 = (icmp_ln55_13_fu_2622_p2 | icmp_ln55_12_fu_2616_p2);
assign or_ln55_7_fu_2646_p2 = (icmp_ln55_15_fu_2640_p2 | icmp_ln55_14_fu_2634_p2);
assign or_ln55_8_fu_2761_p2 = (icmp_ln55_17_fu_2755_p2 | icmp_ln55_16_fu_2749_p2);
assign or_ln55_9_fu_2779_p2 = (icmp_ln55_19_fu_2773_p2 | icmp_ln55_18_fu_2767_p2);
assign or_ln55_fu_2358_p2 = (icmp_ln55_fu_2346_p2 | icmp_ln55_1_fu_2352_p2);
assign shl_ln2_fu_989_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_10_fu_2008_p3 = {{add_ln53_10_reg_4241}, {4'd0}};
assign shl_ln54_11_fu_2028_p3 = {{add_ln53_11_reg_4530}, {4'd0}};
assign shl_ln54_12_fu_2126_p3 = {{add_ln53_12_reg_4257}, {4'd0}};
assign shl_ln54_13_fu_2146_p3 = {{add_ln53_13_reg_4268}, {4'd0}};
assign shl_ln54_14_fu_2247_p3 = {{trunc_ln54_fu_2244_p1}, {4'd0}};
assign shl_ln54_1_fu_1211_p3 = {{add_ln53_reg_4052}, {4'd0}};
assign shl_ln54_2_fu_1231_p3 = {{add_ln53_1_reg_4058}, {4'd0}};
assign shl_ln54_3_fu_1526_p3 = {{add_ln53_2_reg_4064}, {4'd0}};
assign shl_ln54_4_fu_1546_p3 = {{add_ln53_3_reg_4188}, {4'd0}};
assign shl_ln54_5_fu_1644_p3 = {{add_ln53_4_reg_4080}, {4'd0}};
assign shl_ln54_6_fu_1664_p3 = {{add_ln53_5_reg_4091}, {4'd0}};
assign shl_ln54_7_fu_1767_p3 = {{add_ln53_6_reg_4102}, {4'd0}};
assign shl_ln54_8_fu_1787_p3 = {{add_ln53_7_reg_4424}, {4'd0}};
assign shl_ln54_9_fu_1885_p3 = {{add_ln53_8_reg_4219}, {4'd0}};
assign shl_ln54_s_fu_1905_p3 = {{add_ln53_9_reg_4230}, {4'd0}};
assign tmp_10_fu_2495_p4 = {{bitcast_ln55_4_fu_2491_p1[62:52]}};
assign tmp_11_fu_2512_p4 = {{bitcast_ln55_5_fu_2509_p1[62:52]}};
assign tmp_13_fu_1039_p3 = {{t_1}, {lshr_ln8_1_fu_1029_p4}};
assign tmp_14_fu_1582_p2 = transition_0_q0;
assign tmp_14_fu_1582_p4 = transition_1_q0;
assign tmp_14_fu_1582_p6 = transition_2_q0;
assign tmp_14_fu_1582_p8 = transition_3_q0;
assign tmp_14_fu_1582_p9 = 'bx;
assign tmp_15_fu_2585_p4 = {{bitcast_ln55_6_fu_2581_p1[62:52]}};
assign tmp_16_fu_2602_p4 = {{bitcast_ln55_7_fu_2599_p1[62:52]}};
assign tmp_18_fu_1058_p3 = {{t_1}, {add_ln8_fu_1052_p2}};
assign tmp_19_fu_1621_p2 = transition_0_q1;
assign tmp_19_fu_1621_p4 = transition_1_q1;
assign tmp_19_fu_1621_p6 = transition_2_q1;
assign tmp_19_fu_1621_p8 = transition_3_q1;
assign tmp_19_fu_1621_p9 = 'bx;
assign tmp_1_fu_1188_p2 = transition_0_q0;
assign tmp_1_fu_1188_p4 = transition_1_q0;
assign tmp_1_fu_1188_p6 = transition_2_q0;
assign tmp_1_fu_1188_p8 = transition_3_q0;
assign tmp_1_fu_1188_p9 = 'bx;
assign tmp_20_fu_2718_p4 = {{bitcast_ln55_8_fu_2714_p1[62:52]}};
assign tmp_21_fu_2735_p4 = {{bitcast_ln55_9_fu_2732_p1[62:52]}};
assign tmp_23_fu_1087_p3 = {{t_1}, {lshr_ln8_2_fu_1077_p4}};
assign tmp_24_fu_1705_p2 = transition_0_q0;
assign tmp_24_fu_1705_p4 = transition_1_q0;
assign tmp_24_fu_1705_p6 = transition_2_q0;
assign tmp_24_fu_1705_p8 = transition_3_q0;
assign tmp_24_fu_1705_p9 = 'bx;
assign tmp_25_fu_2808_p4 = {{bitcast_ln55_10_fu_2804_p1[62:52]}};
assign tmp_26_fu_2825_p4 = {{bitcast_ln55_11_fu_2822_p1[62:52]}};
assign tmp_28_fu_1116_p3 = {{t_1}, {lshr_ln8_3_fu_1106_p4}};
assign tmp_29_fu_1744_p2 = transition_0_q1;
assign tmp_29_fu_1744_p4 = transition_1_q1;
assign tmp_29_fu_1744_p6 = transition_2_q1;
assign tmp_29_fu_1744_p8 = transition_3_q1;
assign tmp_29_fu_1744_p9 = 'bx;
assign tmp_2_fu_2315_p4 = {{bitcast_ln55_fu_2311_p1[62:52]}};
assign tmp_30_fu_2917_p4 = {{bitcast_ln55_12_fu_2913_p1[62:52]}};
assign tmp_31_fu_2934_p4 = {{bitcast_ln55_13_fu_2931_p1[62:52]}};
assign tmp_33_fu_1145_p3 = {{t_1}, {lshr_ln8_4_fu_1135_p4}};
assign tmp_34_fu_1823_p2 = transition_0_q0;
assign tmp_34_fu_1823_p4 = transition_1_q0;
assign tmp_34_fu_1823_p6 = transition_2_q0;
assign tmp_34_fu_1823_p8 = transition_3_q0;
assign tmp_34_fu_1823_p9 = 'bx;
assign tmp_35_fu_3007_p4 = {{bitcast_ln55_14_fu_3003_p1[62:52]}};
assign tmp_36_fu_3024_p4 = {{bitcast_ln55_15_fu_3021_p1[62:52]}};
assign tmp_38_fu_1261_p3 = {{t_1}, {add_ln8_1_fu_1256_p2}};
assign tmp_39_fu_1862_p2 = transition_0_q1;
assign tmp_39_fu_1862_p4 = transition_1_q1;
assign tmp_39_fu_1862_p6 = transition_2_q1;
assign tmp_39_fu_1862_p8 = transition_3_q1;
assign tmp_39_fu_1862_p9 = 'bx;
assign tmp_3_fu_2332_p4 = {{bitcast_ln55_1_fu_2329_p1[62:52]}};
assign tmp_40_fu_3115_p4 = {{bitcast_ln55_16_fu_3112_p1[62:52]}};
assign tmp_41_fu_3132_p4 = {{bitcast_ln55_17_fu_3129_p1[62:52]}};
assign tmp_43_fu_1288_p3 = {{t_1}, {lshr_ln8_5_fu_1278_p4}};
assign tmp_44_fu_1946_p2 = transition_0_q0;
assign tmp_44_fu_1946_p4 = transition_1_q0;
assign tmp_44_fu_1946_p6 = transition_2_q0;
assign tmp_44_fu_1946_p8 = transition_3_q0;
assign tmp_44_fu_1946_p9 = 'bx;
assign tmp_45_fu_3204_p4 = {{bitcast_ln55_18_fu_3200_p1[62:52]}};
assign tmp_46_fu_1985_p2 = transition_0_q1;
assign tmp_46_fu_1985_p4 = transition_1_q1;
assign tmp_46_fu_1985_p6 = transition_2_q1;
assign tmp_46_fu_1985_p8 = transition_3_q1;
assign tmp_46_fu_1985_p9 = 'bx;
assign tmp_47_fu_2064_p2 = transition_0_q0;
assign tmp_47_fu_2064_p4 = transition_1_q0;
assign tmp_47_fu_2064_p6 = transition_2_q0;
assign tmp_47_fu_2064_p8 = transition_3_q0;
assign tmp_47_fu_2064_p9 = 'bx;
assign tmp_48_fu_2103_p2 = transition_0_q1;
assign tmp_48_fu_2103_p4 = transition_1_q1;
assign tmp_48_fu_2103_p6 = transition_2_q1;
assign tmp_48_fu_2103_p8 = transition_3_q1;
assign tmp_48_fu_2103_p9 = 'bx;
assign tmp_49_fu_2182_p2 = transition_0_q0;
assign tmp_49_fu_2182_p4 = transition_1_q0;
assign tmp_49_fu_2182_p6 = transition_2_q0;
assign tmp_49_fu_2182_p8 = transition_3_q0;
assign tmp_49_fu_2182_p9 = 'bx;
assign tmp_50_fu_2221_p2 = transition_0_q1;
assign tmp_50_fu_2221_p4 = transition_1_q1;
assign tmp_50_fu_2221_p6 = transition_2_q1;
assign tmp_50_fu_2221_p8 = transition_3_q1;
assign tmp_50_fu_2221_p9 = 'bx;
assign tmp_51_fu_2284_p2 = transition_0_q1;
assign tmp_51_fu_2284_p4 = transition_1_q1;
assign tmp_51_fu_2284_p6 = transition_2_q1;
assign tmp_51_fu_2284_p8 = transition_3_q1;
assign tmp_51_fu_2284_p9 = 'bx;
assign tmp_52_fu_3221_p4 = {{bitcast_ln55_19_fu_3218_p1[62:52]}};
assign tmp_54_fu_1315_p3 = {{t_1}, {lshr_ln8_6_fu_1305_p4}};
assign tmp_55_fu_3312_p4 = {{bitcast_ln55_20_fu_3309_p1[62:52]}};
assign tmp_56_fu_3329_p4 = {{bitcast_ln55_21_fu_3326_p1[62:52]}};
assign tmp_58_fu_1342_p3 = {{t_1}, {lshr_ln8_7_fu_1332_p4}};
assign tmp_59_fu_3411_p4 = {{bitcast_ln55_22_fu_3407_p1[62:52]}};
assign tmp_5_fu_1464_p2 = transition_0_q1;
assign tmp_5_fu_1464_p4 = transition_1_q1;
assign tmp_5_fu_1464_p6 = transition_2_q1;
assign tmp_5_fu_1464_p8 = transition_3_q1;
assign tmp_5_fu_1464_p9 = 'bx;
assign tmp_60_fu_3428_p4 = {{bitcast_ln55_23_fu_3425_p1[62:52]}};
assign tmp_62_fu_1359_p3 = {{t_1}, {add_ln8_2_fu_1354_p2}};
assign tmp_63_fu_3519_p4 = {{bitcast_ln55_24_fu_3516_p1[62:52]}};
assign tmp_64_fu_3536_p4 = {{bitcast_ln55_25_fu_3533_p1[62:52]}};
assign tmp_66_fu_1386_p3 = {{t_1}, {lshr_ln8_8_fu_1376_p4}};
assign tmp_67_fu_3608_p4 = {{bitcast_ln55_26_fu_3604_p1[62:52]}};
assign tmp_68_fu_3625_p4 = {{bitcast_ln55_27_fu_3622_p1[62:52]}};
assign tmp_6_fu_2405_p4 = {{bitcast_ln55_2_fu_2401_p1[62:52]}};
assign tmp_70_fu_1413_p3 = {{t_1}, {lshr_ln8_9_fu_1403_p4}};
assign tmp_71_fu_3697_p4 = {{bitcast_ln55_28_fu_3694_p1[62:52]}};
assign tmp_72_fu_3714_p4 = {{bitcast_ln55_29_fu_3711_p1[62:52]}};
assign tmp_75_fu_3816_p4 = {{bitcast_ln55_30_fu_3812_p1[62:52]}};
assign tmp_76_fu_3833_p4 = {{bitcast_ln55_31_fu_3830_p1[62:52]}};
assign tmp_7_fu_2422_p4 = {{bitcast_ln55_3_fu_2419_p1[62:52]}};
assign tmp_9_fu_1503_p2 = transition_0_q0;
assign tmp_9_fu_1503_p4 = transition_1_q0;
assign tmp_9_fu_1503_p6 = transition_2_q0;
assign tmp_9_fu_1503_p8 = transition_3_q0;
assign tmp_9_fu_1503_p9 = 'bx;
assign tmp_s_fu_974_p3 = {{t_1}, {lshr_ln8_s_fu_964_p4}};
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
assign trunc_ln54_fu_2244_p1 = add_ln53_14_reg_4113[5:0];
assign trunc_ln55_10_fu_2818_p1 = bitcast_ln55_10_fu_2804_p1[51:0];
assign trunc_ln55_11_fu_2835_p1 = bitcast_ln55_11_fu_2822_p1[51:0];
assign trunc_ln55_12_fu_2927_p1 = bitcast_ln55_12_fu_2913_p1[51:0];
assign trunc_ln55_13_fu_2944_p1 = bitcast_ln55_13_fu_2931_p1[51:0];
assign trunc_ln55_14_fu_3017_p1 = bitcast_ln55_14_fu_3003_p1[51:0];
assign trunc_ln55_15_fu_3034_p1 = bitcast_ln55_15_fu_3021_p1[51:0];
assign trunc_ln55_16_fu_3125_p1 = bitcast_ln55_16_fu_3112_p1[51:0];
assign trunc_ln55_17_fu_3142_p1 = bitcast_ln55_17_fu_3129_p1[51:0];
assign trunc_ln55_18_fu_3214_p1 = bitcast_ln55_18_fu_3200_p1[51:0];
assign trunc_ln55_19_fu_3231_p1 = bitcast_ln55_19_fu_3218_p1[51:0];
assign trunc_ln55_1_fu_2342_p1 = bitcast_ln55_1_fu_2329_p1[51:0];
assign trunc_ln55_20_fu_3322_p1 = bitcast_ln55_20_fu_3309_p1[51:0];
assign trunc_ln55_21_fu_3339_p1 = bitcast_ln55_21_fu_3326_p1[51:0];
assign trunc_ln55_22_fu_3421_p1 = bitcast_ln55_22_fu_3407_p1[51:0];
assign trunc_ln55_23_fu_3438_p1 = bitcast_ln55_23_fu_3425_p1[51:0];
assign trunc_ln55_24_fu_3529_p1 = bitcast_ln55_24_fu_3516_p1[51:0];
assign trunc_ln55_25_fu_3546_p1 = bitcast_ln55_25_fu_3533_p1[51:0];
assign trunc_ln55_26_fu_3618_p1 = bitcast_ln55_26_fu_3604_p1[51:0];
assign trunc_ln55_27_fu_3635_p1 = bitcast_ln55_27_fu_3622_p1[51:0];
assign trunc_ln55_28_fu_3707_p1 = bitcast_ln55_28_fu_3694_p1[51:0];
assign trunc_ln55_29_fu_3724_p1 = bitcast_ln55_29_fu_3711_p1[51:0];
assign trunc_ln55_2_fu_2415_p1 = bitcast_ln55_2_fu_2401_p1[51:0];
assign trunc_ln55_30_fu_3826_p1 = bitcast_ln55_30_fu_3812_p1[51:0];
assign trunc_ln55_31_fu_3843_p1 = bitcast_ln55_31_fu_3830_p1[51:0];
assign trunc_ln55_3_fu_2432_p1 = bitcast_ln55_3_fu_2419_p1[51:0];
assign trunc_ln55_4_fu_2505_p1 = bitcast_ln55_4_fu_2491_p1[51:0];
assign trunc_ln55_5_fu_2522_p1 = bitcast_ln55_5_fu_2509_p1[51:0];
assign trunc_ln55_6_fu_2595_p1 = bitcast_ln55_6_fu_2581_p1[51:0];
assign trunc_ln55_7_fu_2612_p1 = bitcast_ln55_7_fu_2599_p1[51:0];
assign trunc_ln55_8_fu_2728_p1 = bitcast_ln55_8_fu_2714_p1[51:0];
assign trunc_ln55_9_fu_2745_p1 = bitcast_ln55_9_fu_2732_p1[51:0];
assign trunc_ln55_fu_2325_p1 = bitcast_ln55_fu_2311_p1[51:0];
assign zext_ln21_fu_960_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_938_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1917_p1 = add_ln54_10_fu_1912_p2;
assign zext_ln54_11_fu_2020_p1 = add_ln54_11_fu_2015_p2;
assign zext_ln54_12_fu_2040_p1 = add_ln54_12_fu_2035_p2;
assign zext_ln54_13_fu_2138_p1 = add_ln54_13_fu_2133_p2;
assign zext_ln54_14_fu_2158_p1 = add_ln54_14_fu_2153_p2;
assign zext_ln54_15_fu_2260_p1 = add_ln54_15_fu_2255_p2;
assign zext_ln54_16_fu_982_p1 = tmp_s_fu_974_p3;
assign zext_ln54_17_fu_1047_p1 = tmp_13_fu_1039_p3;
assign zext_ln54_18_fu_1066_p1 = tmp_18_fu_1058_p3;
assign zext_ln54_19_fu_1095_p1 = tmp_23_fu_1087_p3;
assign zext_ln54_1_fu_1223_p1 = add_ln54_1_fu_1218_p2;
assign zext_ln54_20_fu_1124_p1 = tmp_28_fu_1116_p3;
assign zext_ln54_21_fu_1153_p1 = tmp_33_fu_1145_p3;
assign zext_ln54_22_fu_1268_p1 = tmp_38_fu_1261_p3;
assign zext_ln54_23_fu_1295_p1 = tmp_43_fu_1288_p3;
assign zext_ln54_24_fu_1322_p1 = tmp_54_fu_1315_p3;
assign zext_ln54_25_fu_1349_p1 = tmp_58_fu_1342_p3;
assign zext_ln54_26_fu_1366_p1 = tmp_62_fu_1359_p3;
assign zext_ln54_27_fu_1393_p1 = tmp_66_fu_1386_p3;
assign zext_ln54_28_fu_1420_p1 = tmp_70_fu_1413_p3;
assign zext_ln54_29_fu_1434_p1 = lshr_ln9_2_fu_1425_p4;
assign zext_ln54_2_fu_1243_p1 = add_ln54_2_fu_1238_p2;
assign zext_ln54_30_fu_1443_p1 = add_ln54_16_fu_1438_p2;
assign zext_ln54_3_fu_1538_p1 = add_ln54_3_fu_1533_p2;
assign zext_ln54_4_fu_1558_p1 = add_ln54_4_fu_1553_p2;
assign zext_ln54_5_fu_1656_p1 = add_ln54_5_fu_1651_p2;
assign zext_ln54_6_fu_1676_p1 = add_ln54_6_fu_1671_p2;
assign zext_ln54_7_fu_1779_p1 = add_ln54_7_fu_1774_p2;
assign zext_ln54_8_fu_1799_p1 = add_ln54_8_fu_1794_p2;
assign zext_ln54_9_fu_1897_p1 = add_ln54_9_fu_1892_p2;
assign zext_ln54_fu_1003_p1 = add_ln54_fu_997_p2;
assign zext_ln55_10_fu_3490_p1 = add_ln53_9_reg_4230;
assign zext_ln55_11_fu_3506_p1 = add_ln53_10_reg_4241;
assign zext_ln55_12_fu_3782_p1 = add_ln53_11_reg_4530_pp0_iter1_reg;
assign zext_ln55_13_fu_3791_p1 = add_ln53_12_reg_4257_pp0_iter1_reg;
assign zext_ln55_14_fu_3801_p1 = add_ln53_13_reg_4268_pp0_iter1_reg;
assign zext_ln55_15_fu_3901_p1 = trunc_ln54_reg_4646_pp0_iter1_reg;
assign zext_ln55_1_fu_2677_p1 = add_ln53_reg_4052;
assign zext_ln55_2_fu_2687_p1 = add_ln53_1_reg_4058;
assign zext_ln55_3_fu_2704_p1 = add_ln53_2_reg_4064;
assign zext_ln55_4_fu_2887_p1 = add_ln53_3_reg_4188;
assign zext_ln55_5_fu_2903_p1 = add_ln53_4_reg_4080;
assign zext_ln55_6_fu_3086_p1 = add_ln53_5_reg_4091;
assign zext_ln55_7_fu_3102_p1 = add_ln53_6_reg_4102;
assign zext_ln55_8_fu_3283_p1 = add_ln53_7_reg_4424;
assign zext_ln55_9_fu_3299_p1 = add_ln53_8_reg_4219;
assign zext_ln55_fu_2667_p1 = s_reg_3997;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_3978[9:6] <= 4'b0000;
end
endmodule 