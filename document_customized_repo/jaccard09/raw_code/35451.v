module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_34,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,lshr_ln7,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_17,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_66_out,min_p_66_out_ap_vld,grp_fu_630_p_din0,grp_fu_630_p_din1,grp_fu_630_p_opcode,grp_fu_630_p_dout0,grp_fu_630_p_ce,grp_fu_1370_p_din0,grp_fu_1370_p_din1,grp_fu_1370_p_opcode,grp_fu_1370_p_dout0,grp_fu_1370_p_ce,grp_fu_1374_p_din0,grp_fu_1374_p_din1,grp_fu_1374_p_opcode,grp_fu_1374_p_dout0,grp_fu_1374_p_ce); 
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
input  [63:0] min_p_34;
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
input  [3:0] lshr_ln7;
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
input  [1:0] empty_10;
input  [63:0] tmp_17;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [11:0] empty;
output  [63:0] min_p_66_out;
output   min_p_66_out_ap_vld;
output  [63:0] grp_fu_630_p_din0;
output  [63:0] grp_fu_630_p_din1;
output  [1:0] grp_fu_630_p_opcode;
input  [63:0] grp_fu_630_p_dout0;
output   grp_fu_630_p_ce;
output  [63:0] grp_fu_1370_p_din0;
output  [63:0] grp_fu_1370_p_din1;
output  [1:0] grp_fu_1370_p_opcode;
input  [63:0] grp_fu_1370_p_dout0;
output   grp_fu_1370_p_ce;
output  [63:0] grp_fu_1374_p_din0;
output  [63:0] grp_fu_1374_p_din1;
output  [4:0] grp_fu_1374_p_opcode;
input  [0:0] grp_fu_1374_p_dout0;
output   grp_fu_1374_p_ce;
reg ap_idle;
reg min_p_66_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_77_reg_3992;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_927;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_933;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_939;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_945;
reg   [63:0] reg_951;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_957;
reg   [63:0] reg_963;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_969;
reg   [63:0] reg_975;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_981;
reg   [63:0] reg_987;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_993;
reg   [63:0] reg_999;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_3862;
wire   [3:0] lshr_ln7_1_fu_1022_p4;
reg   [3:0] lshr_ln7_1_reg_3872;
wire   [9:0] shl_ln1_fu_1047_p3;
reg   [9:0] shl_ln1_reg_3893;
wire   [5:0] add_ln25_fu_1103_p2;
reg   [5:0] add_ln25_reg_3941;
wire   [5:0] add_ln25_1_fu_1151_p2;
reg   [5:0] add_ln25_1_reg_3956;
wire   [5:0] add_ln25_2_fu_1180_p2;
reg   [5:0] add_ln25_2_reg_3966;
wire   [5:0] add_ln25_3_fu_1209_p2;
reg   [5:0] add_ln25_3_reg_3976;
wire   [6:0] add_ln25_9_fu_1238_p2;
reg   [6:0] add_ln25_9_reg_3986;
reg   [0:0] tmp_77_reg_3992_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3996;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_18_fu_1268_p11;
reg   [63:0] tmp_18_reg_4001;
reg   [63:0] llike_2_load_reg_4006;
wire   [63:0] tmp_19_fu_1307_p11;
reg   [63:0] tmp_19_reg_4011;
reg   [63:0] llike_3_load_reg_4016;
reg   [63:0] llike_load_1_reg_4041;
reg   [63:0] llike_1_load_1_reg_4066;
reg   [63:0] llike_2_load_1_reg_4071;
reg   [63:0] llike_3_load_1_reg_4076;
reg   [63:0] llike_load_2_reg_4081;
wire   [5:0] add_ln25_4_fu_1391_p2;
reg   [5:0] add_ln25_4_reg_4091;
wire   [5:0] add_ln25_5_fu_1418_p2;
reg   [5:0] add_ln25_5_reg_4101;
wire   [5:0] add_ln25_6_fu_1445_p2;
reg   [5:0] add_ln25_6_reg_4111;
wire   [5:0] add_ln25_7_fu_1489_p2;
reg   [5:0] add_ln25_7_reg_4126;
wire   [5:0] add_ln25_8_fu_1516_p2;
reg   [5:0] add_ln25_8_reg_4136;
wire   [63:0] tmp_20_fu_1582_p11;
reg   [63:0] tmp_20_reg_4151;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_21_fu_1621_p11;
reg   [63:0] tmp_21_reg_4156;
reg   [63:0] llike_1_load_2_reg_4201;
reg   [63:0] llike_2_load_2_reg_4206;
reg   [63:0] llike_3_load_2_reg_4211;
reg   [63:0] llike_load_3_reg_4216;
reg   [63:0] llike_1_load_3_reg_4221;
reg   [63:0] llike_2_load_3_reg_4226;
reg   [63:0] llike_3_load_3_reg_4231;
reg   [63:0] llike_load_reg_4236;
wire   [63:0] tmp_22_fu_1704_p11;
reg   [63:0] tmp_22_reg_4241;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_23_fu_1743_p11;
reg   [63:0] tmp_23_reg_4246;
wire   [63:0] tmp_24_fu_1810_p11;
reg   [63:0] tmp_24_reg_4291;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_25_fu_1849_p11;
reg   [63:0] tmp_25_reg_4296;
reg   [5:0] tmp_128_reg_4341;
wire   [63:0] tmp_26_fu_1947_p11;
reg   [63:0] tmp_26_reg_4346;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] tmp_27_fu_1986_p11;
reg   [63:0] tmp_27_reg_4351;
wire   [63:0] tmp_28_fu_2053_p11;
reg   [63:0] tmp_28_reg_4396;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] tmp_29_fu_2092_p11;
reg   [63:0] tmp_29_reg_4401;
wire   [63:0] tmp_30_fu_2159_p11;
reg   [63:0] tmp_30_reg_4446;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_31_fu_2198_p11;
reg   [63:0] tmp_31_reg_4451;
wire   [63:0] tmp_32_fu_2269_p11;
reg   [63:0] tmp_32_reg_4496;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] tmp_35_fu_2308_p11;
reg   [63:0] tmp_35_reg_4501;
reg   [63:0] add52_12_reg_4506;
reg   [63:0] add52_13_reg_4511;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] add52_14_reg_4516;
reg   [63:0] min_p_35_reg_4521;
wire   [0:0] and_ln29_1_fu_2412_p2;
reg   [0:0] and_ln29_1_reg_4528;
wire   [63:0] min_p_37_fu_2418_p3;
reg   [63:0] min_p_37_reg_4533;
wire   [0:0] and_ln29_3_fu_2502_p2;
reg   [0:0] and_ln29_3_reg_4540;
wire   [63:0] min_p_39_fu_2508_p3;
reg   [63:0] min_p_39_reg_4545;
wire   [0:0] and_ln29_5_fu_2592_p2;
reg   [0:0] and_ln29_5_reg_4552;
wire   [63:0] min_p_41_fu_2598_p3;
reg   [63:0] min_p_41_reg_4557;
reg   [63:0] p_30_reg_4564;
wire   [0:0] and_ln29_7_fu_2682_p2;
reg   [0:0] and_ln29_7_reg_4571;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_43_fu_2688_p3;
reg   [63:0] min_p_43_reg_4576;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [0:0] and_ln29_9_fu_2772_p2;
reg   [0:0] and_ln29_9_reg_4583;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_45_fu_2778_p3;
reg   [63:0] min_p_45_reg_4588;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln29_11_fu_2862_p2;
reg   [0:0] and_ln29_11_reg_4595;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_47_fu_2868_p3;
reg   [63:0] min_p_47_reg_4600;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [0:0] and_ln29_13_fu_2952_p2;
reg   [0:0] and_ln29_13_reg_4607;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_49_fu_2958_p3;
reg   [63:0] min_p_49_reg_4612;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln29_15_fu_3052_p2;
reg   [0:0] and_ln29_15_reg_4619;
wire   [63:0] min_p_51_fu_3058_p3;
reg   [63:0] min_p_51_reg_4624;
wire   [0:0] and_ln29_17_fu_3142_p2;
reg   [0:0] and_ln29_17_reg_4631;
wire   [63:0] min_p_53_fu_3148_p3;
reg   [63:0] min_p_53_reg_4636;
wire   [0:0] and_ln29_19_fu_3232_p2;
reg   [0:0] and_ln29_19_reg_4643;
wire   [63:0] min_p_55_fu_3238_p3;
reg   [63:0] min_p_55_reg_4648;
wire   [0:0] and_ln29_21_fu_3322_p2;
reg   [0:0] and_ln29_21_reg_4655;
wire   [63:0] min_p_57_fu_3328_p3;
reg   [63:0] min_p_57_reg_4660;
wire   [0:0] and_ln29_23_fu_3412_p2;
reg   [0:0] and_ln29_23_reg_4667;
wire   [63:0] min_p_59_fu_3418_p3;
reg   [63:0] min_p_59_reg_4672;
wire   [0:0] and_ln29_25_fu_3502_p2;
reg   [0:0] and_ln29_25_reg_4679;
wire   [63:0] min_p_61_fu_3508_p3;
reg   [63:0] min_p_61_reg_4684;
wire   [0:0] and_ln29_27_fu_3592_p2;
reg   [0:0] and_ln29_27_reg_4691;
wire   [63:0] min_p_63_fu_3598_p3;
reg   [63:0] min_p_63_reg_4696;
wire   [0:0] and_ln29_29_fu_3682_p2;
reg   [0:0] and_ln29_29_reg_4703;
wire   [63:0] min_p_65_fu_3688_p3;
reg   [63:0] min_p_65_reg_4708;
reg   [0:0] tmp_142_reg_4715;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage17_subdone;
wire   [63:0] zext_ln26_fu_1040_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_1063_p1;
wire   [63:0] zext_ln27_1_fu_1095_p1;
wire   [63:0] zext_ln26_1_fu_1127_p1;
wire   [63:0] zext_ln26_2_fu_1146_p1;
wire   [63:0] zext_ln26_3_fu_1175_p1;
wire   [63:0] zext_ln26_4_fu_1204_p1;
wire   [63:0] zext_ln26_5_fu_1233_p1;
wire   [63:0] zext_ln27_2_fu_1352_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1366_p1;
wire   [63:0] zext_ln26_6_fu_1386_p1;
wire   [63:0] zext_ln26_7_fu_1413_p1;
wire   [63:0] zext_ln26_8_fu_1440_p1;
wire   [63:0] zext_ln26_9_fu_1467_p1;
wire   [63:0] zext_ln26_10_fu_1484_p1;
wire   [63:0] zext_ln26_11_fu_1511_p1;
wire   [63:0] zext_ln26_12_fu_1538_p1;
wire   [63:0] zext_ln26_14_fu_1561_p1;
wire   [63:0] zext_ln27_4_fu_1666_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1680_p1;
wire   [63:0] zext_ln27_6_fu_1772_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1786_p1;
wire   [63:0] zext_ln27_8_fu_1894_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln27_9_fu_1908_p1;
wire   [63:0] zext_ln27_10_fu_2015_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln27_11_fu_2029_p1;
wire   [63:0] zext_ln27_12_fu_2121_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln27_13_fu_2135_p1;
wire   [63:0] zext_ln27_14_fu_2227_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln27_15_fu_2245_p1;
reg   [63:0] min_p_fu_152;
wire   [63:0] min_p_67_fu_3777_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage18;
reg   [5:0] prev_fu_156;
wire   [5:0] add_ln25_10_fu_2965_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [11:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
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
reg   [63:0] grp_fu_915_p0;
reg   [63:0] grp_fu_915_p1;
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
reg   [63:0] grp_fu_919_p0;
reg   [63:0] grp_fu_919_p1;
reg   [63:0] grp_fu_923_p0;
reg   [63:0] grp_fu_923_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [11:0] tmp_s_fu_1032_p3;
wire   [9:0] add_ln_fu_1055_p3;
wire   [9:0] add_ln27_fu_1071_p2;
wire   [5:0] tmp_81_fu_1077_p4;
wire   [9:0] add_ln27_2_fu_1087_p3;
wire   [3:0] lshr_ln8_s_fu_1109_p4;
wire   [11:0] tmp_89_fu_1119_p3;
wire   [3:0] add_ln8_fu_1132_p2;
wire   [11:0] tmp_93_fu_1138_p3;
wire   [3:0] lshr_ln8_1_fu_1157_p4;
wire   [11:0] tmp_98_fu_1167_p3;
wire   [3:0] lshr_ln8_2_fu_1186_p4;
wire   [11:0] tmp_102_fu_1196_p3;
wire   [3:0] lshr_ln8_3_fu_1215_p4;
wire   [11:0] tmp_106_fu_1225_p3;
wire   [6:0] zext_ln16_fu_1018_p1;
wire   [63:0] tmp_18_fu_1268_p2;
wire   [63:0] tmp_18_fu_1268_p4;
wire   [63:0] tmp_18_fu_1268_p6;
wire   [63:0] tmp_18_fu_1268_p8;
wire   [63:0] tmp_18_fu_1268_p9;
wire   [63:0] tmp_19_fu_1307_p2;
wire   [63:0] tmp_19_fu_1307_p4;
wire   [63:0] tmp_19_fu_1307_p6;
wire   [63:0] tmp_19_fu_1307_p8;
wire   [63:0] tmp_19_fu_1307_p9;
wire   [9:0] add_ln27_1_fu_1330_p2;
wire   [5:0] tmp_85_fu_1335_p4;
wire   [9:0] add_ln27_4_fu_1345_p3;
wire   [9:0] add_ln27_5_fu_1360_p3;
wire   [3:0] add_ln8_3_fu_1374_p2;
wire   [11:0] tmp_110_fu_1379_p3;
wire   [3:0] lshr_ln8_4_fu_1396_p4;
wire   [11:0] tmp_115_fu_1406_p3;
wire   [3:0] lshr_ln8_5_fu_1423_p4;
wire   [11:0] tmp_119_fu_1433_p3;
wire   [3:0] lshr_ln8_6_fu_1450_p4;
wire   [11:0] tmp_123_fu_1460_p3;
wire   [3:0] add_ln8_4_fu_1472_p2;
wire   [11:0] tmp_127_fu_1477_p3;
wire   [3:0] lshr_ln8_7_fu_1494_p4;
wire   [11:0] tmp_132_fu_1504_p3;
wire   [3:0] lshr_ln8_8_fu_1521_p4;
wire   [11:0] tmp_136_fu_1531_p3;
wire   [4:0] lshr_ln8_9_fu_1543_p4;
wire   [11:0] zext_ln26_13_fu_1552_p1;
wire   [11:0] add_ln26_fu_1556_p2;
wire   [63:0] tmp_20_fu_1582_p2;
wire   [63:0] tmp_20_fu_1582_p4;
wire   [63:0] tmp_20_fu_1582_p6;
wire   [63:0] tmp_20_fu_1582_p8;
wire   [63:0] tmp_20_fu_1582_p9;
wire   [63:0] tmp_21_fu_1621_p2;
wire   [63:0] tmp_21_fu_1621_p4;
wire   [63:0] tmp_21_fu_1621_p6;
wire   [63:0] tmp_21_fu_1621_p8;
wire   [63:0] tmp_21_fu_1621_p9;
wire   [9:0] add_ln27_3_fu_1644_p2;
wire   [5:0] tmp_94_fu_1649_p4;
wire   [9:0] add_ln27_7_fu_1659_p3;
wire   [9:0] add_ln27_8_fu_1674_p3;
wire   [63:0] tmp_22_fu_1704_p2;
wire   [63:0] tmp_22_fu_1704_p4;
wire   [63:0] tmp_22_fu_1704_p6;
wire   [63:0] tmp_22_fu_1704_p8;
wire   [63:0] tmp_22_fu_1704_p9;
wire   [63:0] tmp_23_fu_1743_p2;
wire   [63:0] tmp_23_fu_1743_p4;
wire   [63:0] tmp_23_fu_1743_p6;
wire   [63:0] tmp_23_fu_1743_p8;
wire   [63:0] tmp_23_fu_1743_p9;
wire   [9:0] add_ln27_9_fu_1766_p3;
wire   [9:0] add_ln27_s_fu_1780_p3;
wire   [63:0] tmp_24_fu_1810_p2;
wire   [63:0] tmp_24_fu_1810_p4;
wire   [63:0] tmp_24_fu_1810_p6;
wire   [63:0] tmp_24_fu_1810_p8;
wire   [63:0] tmp_24_fu_1810_p9;
wire   [63:0] tmp_25_fu_1849_p2;
wire   [63:0] tmp_25_fu_1849_p4;
wire   [63:0] tmp_25_fu_1849_p6;
wire   [63:0] tmp_25_fu_1849_p8;
wire   [63:0] tmp_25_fu_1849_p9;
wire   [9:0] add_ln27_6_fu_1872_p2;
wire   [5:0] tmp_111_fu_1877_p4;
wire   [9:0] add_ln27_10_fu_1887_p3;
wire   [9:0] add_ln27_11_fu_1902_p3;
wire   [9:0] add_ln27_14_fu_1916_p2;
wire   [63:0] tmp_26_fu_1947_p2;
wire   [63:0] tmp_26_fu_1947_p4;
wire   [63:0] tmp_26_fu_1947_p6;
wire   [63:0] tmp_26_fu_1947_p8;
wire   [63:0] tmp_26_fu_1947_p9;
wire   [63:0] tmp_27_fu_1986_p2;
wire   [63:0] tmp_27_fu_1986_p4;
wire   [63:0] tmp_27_fu_1986_p6;
wire   [63:0] tmp_27_fu_1986_p8;
wire   [63:0] tmp_27_fu_1986_p9;
wire   [9:0] add_ln27_12_fu_2009_p3;
wire   [9:0] add_ln27_13_fu_2023_p3;
wire   [63:0] tmp_28_fu_2053_p2;
wire   [63:0] tmp_28_fu_2053_p4;
wire   [63:0] tmp_28_fu_2053_p6;
wire   [63:0] tmp_28_fu_2053_p8;
wire   [63:0] tmp_28_fu_2053_p9;
wire   [63:0] tmp_29_fu_2092_p2;
wire   [63:0] tmp_29_fu_2092_p4;
wire   [63:0] tmp_29_fu_2092_p6;
wire   [63:0] tmp_29_fu_2092_p8;
wire   [63:0] tmp_29_fu_2092_p9;
wire   [9:0] add_ln27_15_fu_2115_p3;
wire   [9:0] add_ln27_16_fu_2129_p3;
wire   [63:0] tmp_30_fu_2159_p2;
wire   [63:0] tmp_30_fu_2159_p4;
wire   [63:0] tmp_30_fu_2159_p6;
wire   [63:0] tmp_30_fu_2159_p8;
wire   [63:0] tmp_30_fu_2159_p9;
wire   [63:0] tmp_31_fu_2198_p2;
wire   [63:0] tmp_31_fu_2198_p4;
wire   [63:0] tmp_31_fu_2198_p6;
wire   [63:0] tmp_31_fu_2198_p8;
wire   [63:0] tmp_31_fu_2198_p9;
wire   [9:0] add_ln27_17_fu_2221_p3;
wire   [5:0] trunc_ln27_fu_2235_p1;
wire   [9:0] add_ln27_18_fu_2238_p3;
wire   [63:0] tmp_32_fu_2269_p2;
wire   [63:0] tmp_32_fu_2269_p4;
wire   [63:0] tmp_32_fu_2269_p6;
wire   [63:0] tmp_32_fu_2269_p8;
wire   [63:0] tmp_32_fu_2269_p9;
wire   [63:0] tmp_35_fu_2308_p2;
wire   [63:0] tmp_35_fu_2308_p4;
wire   [63:0] tmp_35_fu_2308_p6;
wire   [63:0] tmp_35_fu_2308_p8;
wire   [63:0] tmp_35_fu_2308_p9;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln29_fu_2335_p1;
wire   [63:0] bitcast_ln29_1_fu_2353_p1;
wire   [10:0] tmp_78_fu_2339_p4;
wire   [51:0] trunc_ln29_fu_2349_p1;
wire   [0:0] icmp_ln29_1_fu_2376_p2;
wire   [0:0] icmp_ln29_fu_2370_p2;
wire   [10:0] tmp_79_fu_2356_p4;
wire   [51:0] trunc_ln29_1_fu_2366_p1;
wire   [0:0] icmp_ln29_3_fu_2394_p2;
wire   [0:0] icmp_ln29_2_fu_2388_p2;
wire   [0:0] or_ln29_fu_2382_p2;
wire   [0:0] and_ln29_fu_2406_p2;
wire   [0:0] or_ln29_1_fu_2400_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln29_2_fu_2425_p1;
wire   [63:0] bitcast_ln29_3_fu_2443_p1;
wire   [10:0] tmp_82_fu_2429_p4;
wire   [51:0] trunc_ln29_2_fu_2439_p1;
wire   [0:0] icmp_ln29_5_fu_2466_p2;
wire   [0:0] icmp_ln29_4_fu_2460_p2;
wire   [10:0] tmp_83_fu_2446_p4;
wire   [51:0] trunc_ln29_3_fu_2456_p1;
wire   [0:0] icmp_ln29_7_fu_2484_p2;
wire   [0:0] icmp_ln29_6_fu_2478_p2;
wire   [0:0] or_ln29_3_fu_2490_p2;
wire   [0:0] or_ln29_2_fu_2472_p2;
wire   [0:0] and_ln29_2_fu_2496_p2;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln29_4_fu_2515_p1;
wire   [63:0] bitcast_ln29_5_fu_2533_p1;
wire   [10:0] tmp_86_fu_2519_p4;
wire   [51:0] trunc_ln29_4_fu_2529_p1;
wire   [0:0] icmp_ln29_9_fu_2556_p2;
wire   [0:0] icmp_ln29_8_fu_2550_p2;
wire   [10:0] tmp_87_fu_2536_p4;
wire   [51:0] trunc_ln29_5_fu_2546_p1;
wire   [0:0] icmp_ln29_11_fu_2574_p2;
wire   [0:0] icmp_ln29_10_fu_2568_p2;
wire   [0:0] or_ln29_5_fu_2580_p2;
wire   [0:0] or_ln29_4_fu_2562_p2;
wire   [0:0] and_ln29_4_fu_2586_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln29_6_fu_2605_p1;
wire   [63:0] bitcast_ln29_7_fu_2623_p1;
wire   [10:0] tmp_90_fu_2609_p4;
wire   [51:0] trunc_ln29_6_fu_2619_p1;
wire   [0:0] icmp_ln29_13_fu_2646_p2;
wire   [0:0] icmp_ln29_12_fu_2640_p2;
wire   [10:0] tmp_91_fu_2626_p4;
wire   [51:0] trunc_ln29_7_fu_2636_p1;
wire   [0:0] icmp_ln29_15_fu_2664_p2;
wire   [0:0] icmp_ln29_14_fu_2658_p2;
wire   [0:0] or_ln29_7_fu_2670_p2;
wire   [0:0] or_ln29_6_fu_2652_p2;
wire   [0:0] and_ln29_6_fu_2676_p2;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln29_8_fu_2695_p1;
wire   [63:0] bitcast_ln29_9_fu_2713_p1;
wire   [10:0] tmp_95_fu_2699_p4;
wire   [51:0] trunc_ln29_8_fu_2709_p1;
wire   [0:0] icmp_ln29_17_fu_2736_p2;
wire   [0:0] icmp_ln29_16_fu_2730_p2;
wire   [10:0] tmp_96_fu_2716_p4;
wire   [51:0] trunc_ln29_9_fu_2726_p1;
wire   [0:0] icmp_ln29_19_fu_2754_p2;
wire   [0:0] icmp_ln29_18_fu_2748_p2;
wire   [0:0] or_ln29_9_fu_2760_p2;
wire   [0:0] or_ln29_8_fu_2742_p2;
wire   [0:0] and_ln29_8_fu_2766_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln29_10_fu_2785_p1;
wire   [63:0] bitcast_ln29_11_fu_2803_p1;
wire   [10:0] tmp_99_fu_2789_p4;
wire   [51:0] trunc_ln29_10_fu_2799_p1;
wire   [0:0] icmp_ln29_21_fu_2826_p2;
wire   [0:0] icmp_ln29_20_fu_2820_p2;
wire   [10:0] tmp_100_fu_2806_p4;
wire   [51:0] trunc_ln29_11_fu_2816_p1;
wire   [0:0] icmp_ln29_23_fu_2844_p2;
wire   [0:0] icmp_ln29_22_fu_2838_p2;
wire   [0:0] or_ln29_11_fu_2850_p2;
wire   [0:0] or_ln29_10_fu_2832_p2;
wire   [0:0] and_ln29_10_fu_2856_p2;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln29_12_fu_2875_p1;
wire   [63:0] bitcast_ln29_13_fu_2893_p1;
wire   [10:0] tmp_103_fu_2879_p4;
wire   [51:0] trunc_ln29_12_fu_2889_p1;
wire   [0:0] icmp_ln29_25_fu_2916_p2;
wire   [0:0] icmp_ln29_24_fu_2910_p2;
wire   [10:0] tmp_104_fu_2896_p4;
wire   [51:0] trunc_ln29_13_fu_2906_p1;
wire   [0:0] icmp_ln29_27_fu_2934_p2;
wire   [0:0] icmp_ln29_26_fu_2928_p2;
wire   [0:0] or_ln29_13_fu_2940_p2;
wire   [0:0] or_ln29_12_fu_2922_p2;
wire   [0:0] and_ln29_12_fu_2946_p2;
wire   [63:0] bitcast_ln29_14_fu_2975_p1;
wire   [63:0] bitcast_ln29_15_fu_2993_p1;
wire   [10:0] tmp_107_fu_2979_p4;
wire   [51:0] trunc_ln29_14_fu_2989_p1;
wire   [0:0] icmp_ln29_29_fu_3016_p2;
wire   [0:0] icmp_ln29_28_fu_3010_p2;
wire   [10:0] tmp_108_fu_2996_p4;
wire   [51:0] trunc_ln29_15_fu_3006_p1;
wire   [0:0] icmp_ln29_31_fu_3034_p2;
wire   [0:0] icmp_ln29_30_fu_3028_p2;
wire   [0:0] or_ln29_15_fu_3040_p2;
wire   [0:0] or_ln29_14_fu_3022_p2;
wire   [0:0] and_ln29_14_fu_3046_p2;
wire   [63:0] bitcast_ln29_16_fu_3065_p1;
wire   [63:0] bitcast_ln29_17_fu_3083_p1;
wire   [10:0] tmp_112_fu_3069_p4;
wire   [51:0] trunc_ln29_16_fu_3079_p1;
wire   [0:0] icmp_ln29_33_fu_3106_p2;
wire   [0:0] icmp_ln29_32_fu_3100_p2;
wire   [10:0] tmp_113_fu_3086_p4;
wire   [51:0] trunc_ln29_17_fu_3096_p1;
wire   [0:0] icmp_ln29_35_fu_3124_p2;
wire   [0:0] icmp_ln29_34_fu_3118_p2;
wire   [0:0] or_ln29_17_fu_3130_p2;
wire   [0:0] or_ln29_16_fu_3112_p2;
wire   [0:0] and_ln29_16_fu_3136_p2;
wire   [63:0] bitcast_ln29_18_fu_3155_p1;
wire   [63:0] bitcast_ln29_19_fu_3173_p1;
wire   [10:0] tmp_116_fu_3159_p4;
wire   [51:0] trunc_ln29_18_fu_3169_p1;
wire   [0:0] icmp_ln29_37_fu_3196_p2;
wire   [0:0] icmp_ln29_36_fu_3190_p2;
wire   [10:0] tmp_117_fu_3176_p4;
wire   [51:0] trunc_ln29_19_fu_3186_p1;
wire   [0:0] icmp_ln29_39_fu_3214_p2;
wire   [0:0] icmp_ln29_38_fu_3208_p2;
wire   [0:0] or_ln29_19_fu_3220_p2;
wire   [0:0] or_ln29_18_fu_3202_p2;
wire   [0:0] and_ln29_18_fu_3226_p2;
wire   [63:0] bitcast_ln29_20_fu_3245_p1;
wire   [63:0] bitcast_ln29_21_fu_3263_p1;
wire   [10:0] tmp_120_fu_3249_p4;
wire   [51:0] trunc_ln29_20_fu_3259_p1;
wire   [0:0] icmp_ln29_41_fu_3286_p2;
wire   [0:0] icmp_ln29_40_fu_3280_p2;
wire   [10:0] tmp_121_fu_3266_p4;
wire   [51:0] trunc_ln29_21_fu_3276_p1;
wire   [0:0] icmp_ln29_43_fu_3304_p2;
wire   [0:0] icmp_ln29_42_fu_3298_p2;
wire   [0:0] or_ln29_21_fu_3310_p2;
wire   [0:0] or_ln29_20_fu_3292_p2;
wire   [0:0] and_ln29_20_fu_3316_p2;
wire   [63:0] bitcast_ln29_22_fu_3335_p1;
wire   [63:0] bitcast_ln29_23_fu_3353_p1;
wire   [10:0] tmp_124_fu_3339_p4;
wire   [51:0] trunc_ln29_22_fu_3349_p1;
wire   [0:0] icmp_ln29_45_fu_3376_p2;
wire   [0:0] icmp_ln29_44_fu_3370_p2;
wire   [10:0] tmp_125_fu_3356_p4;
wire   [51:0] trunc_ln29_23_fu_3366_p1;
wire   [0:0] icmp_ln29_47_fu_3394_p2;
wire   [0:0] icmp_ln29_46_fu_3388_p2;
wire   [0:0] or_ln29_23_fu_3400_p2;
wire   [0:0] or_ln29_22_fu_3382_p2;
wire   [0:0] and_ln29_22_fu_3406_p2;
wire   [63:0] bitcast_ln29_24_fu_3425_p1;
wire   [63:0] bitcast_ln29_25_fu_3443_p1;
wire   [10:0] tmp_129_fu_3429_p4;
wire   [51:0] trunc_ln29_24_fu_3439_p1;
wire   [0:0] icmp_ln29_49_fu_3466_p2;
wire   [0:0] icmp_ln29_48_fu_3460_p2;
wire   [10:0] tmp_130_fu_3446_p4;
wire   [51:0] trunc_ln29_25_fu_3456_p1;
wire   [0:0] icmp_ln29_51_fu_3484_p2;
wire   [0:0] icmp_ln29_50_fu_3478_p2;
wire   [0:0] or_ln29_25_fu_3490_p2;
wire   [0:0] or_ln29_24_fu_3472_p2;
wire   [0:0] and_ln29_24_fu_3496_p2;
wire   [63:0] bitcast_ln29_26_fu_3515_p1;
wire   [63:0] bitcast_ln29_27_fu_3533_p1;
wire   [10:0] tmp_133_fu_3519_p4;
wire   [51:0] trunc_ln29_26_fu_3529_p1;
wire   [0:0] icmp_ln29_53_fu_3556_p2;
wire   [0:0] icmp_ln29_52_fu_3550_p2;
wire   [10:0] tmp_134_fu_3536_p4;
wire   [51:0] trunc_ln29_27_fu_3546_p1;
wire   [0:0] icmp_ln29_55_fu_3574_p2;
wire   [0:0] icmp_ln29_54_fu_3568_p2;
wire   [0:0] or_ln29_27_fu_3580_p2;
wire   [0:0] or_ln29_26_fu_3562_p2;
wire   [0:0] and_ln29_26_fu_3586_p2;
wire   [63:0] bitcast_ln29_28_fu_3605_p1;
wire   [63:0] bitcast_ln29_29_fu_3623_p1;
wire   [10:0] tmp_137_fu_3609_p4;
wire   [51:0] trunc_ln29_28_fu_3619_p1;
wire   [0:0] icmp_ln29_57_fu_3646_p2;
wire   [0:0] icmp_ln29_56_fu_3640_p2;
wire   [10:0] tmp_138_fu_3626_p4;
wire   [51:0] trunc_ln29_29_fu_3636_p1;
wire   [0:0] icmp_ln29_59_fu_3664_p2;
wire   [0:0] icmp_ln29_58_fu_3658_p2;
wire   [0:0] or_ln29_29_fu_3670_p2;
wire   [0:0] or_ln29_28_fu_3652_p2;
wire   [0:0] and_ln29_28_fu_3676_p2;
wire   [63:0] bitcast_ln29_30_fu_3696_p1;
wire   [63:0] bitcast_ln29_31_fu_3713_p1;
wire   [10:0] tmp_140_fu_3699_p4;
wire   [51:0] trunc_ln29_30_fu_3709_p1;
wire   [0:0] icmp_ln29_61_fu_3736_p2;
wire   [0:0] icmp_ln29_60_fu_3730_p2;
wire   [10:0] tmp_141_fu_3716_p4;
wire   [51:0] trunc_ln29_31_fu_3726_p1;
wire   [0:0] icmp_ln29_63_fu_3754_p2;
wire   [0:0] icmp_ln29_62_fu_3748_p2;
wire   [0:0] or_ln29_31_fu_3760_p2;
wire   [0:0] or_ln29_30_fu_3742_p2;
wire   [0:0] and_ln29_30_fu_3766_p2;
wire   [0:0] and_ln29_31_fu_3772_p2;
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
wire   [1:0] tmp_18_fu_1268_p1;
wire   [1:0] tmp_18_fu_1268_p3;
wire  signed [1:0] tmp_18_fu_1268_p5;
wire  signed [1:0] tmp_18_fu_1268_p7;
wire   [1:0] tmp_19_fu_1307_p1;
wire   [1:0] tmp_19_fu_1307_p3;
wire  signed [1:0] tmp_19_fu_1307_p5;
wire  signed [1:0] tmp_19_fu_1307_p7;
wire   [1:0] tmp_20_fu_1582_p1;
wire   [1:0] tmp_20_fu_1582_p3;
wire  signed [1:0] tmp_20_fu_1582_p5;
wire  signed [1:0] tmp_20_fu_1582_p7;
wire   [1:0] tmp_21_fu_1621_p1;
wire   [1:0] tmp_21_fu_1621_p3;
wire  signed [1:0] tmp_21_fu_1621_p5;
wire  signed [1:0] tmp_21_fu_1621_p7;
wire   [1:0] tmp_22_fu_1704_p1;
wire   [1:0] tmp_22_fu_1704_p3;
wire  signed [1:0] tmp_22_fu_1704_p5;
wire  signed [1:0] tmp_22_fu_1704_p7;
wire   [1:0] tmp_23_fu_1743_p1;
wire   [1:0] tmp_23_fu_1743_p3;
wire  signed [1:0] tmp_23_fu_1743_p5;
wire  signed [1:0] tmp_23_fu_1743_p7;
wire   [1:0] tmp_24_fu_1810_p1;
wire   [1:0] tmp_24_fu_1810_p3;
wire  signed [1:0] tmp_24_fu_1810_p5;
wire  signed [1:0] tmp_24_fu_1810_p7;
wire   [1:0] tmp_25_fu_1849_p1;
wire   [1:0] tmp_25_fu_1849_p3;
wire  signed [1:0] tmp_25_fu_1849_p5;
wire  signed [1:0] tmp_25_fu_1849_p7;
wire   [1:0] tmp_26_fu_1947_p1;
wire   [1:0] tmp_26_fu_1947_p3;
wire  signed [1:0] tmp_26_fu_1947_p5;
wire  signed [1:0] tmp_26_fu_1947_p7;
wire   [1:0] tmp_27_fu_1986_p1;
wire   [1:0] tmp_27_fu_1986_p3;
wire  signed [1:0] tmp_27_fu_1986_p5;
wire  signed [1:0] tmp_27_fu_1986_p7;
wire   [1:0] tmp_28_fu_2053_p1;
wire   [1:0] tmp_28_fu_2053_p3;
wire  signed [1:0] tmp_28_fu_2053_p5;
wire  signed [1:0] tmp_28_fu_2053_p7;
wire   [1:0] tmp_29_fu_2092_p1;
wire   [1:0] tmp_29_fu_2092_p3;
wire  signed [1:0] tmp_29_fu_2092_p5;
wire  signed [1:0] tmp_29_fu_2092_p7;
wire   [1:0] tmp_30_fu_2159_p1;
wire   [1:0] tmp_30_fu_2159_p3;
wire  signed [1:0] tmp_30_fu_2159_p5;
wire  signed [1:0] tmp_30_fu_2159_p7;
wire   [1:0] tmp_31_fu_2198_p1;
wire   [1:0] tmp_31_fu_2198_p3;
wire  signed [1:0] tmp_31_fu_2198_p5;
wire  signed [1:0] tmp_31_fu_2198_p7;
wire   [1:0] tmp_32_fu_2269_p1;
wire   [1:0] tmp_32_fu_2269_p3;
wire  signed [1:0] tmp_32_fu_2269_p5;
wire  signed [1:0] tmp_32_fu_2269_p7;
wire   [1:0] tmp_35_fu_2308_p1;
wire   [1:0] tmp_35_fu_2308_p3;
wire  signed [1:0] tmp_35_fu_2308_p5;
wire  signed [1:0] tmp_35_fu_2308_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_152 = 64'd0;
#0 prev_fu_156 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U39(.din0(tmp_18_fu_1268_p2),.din1(tmp_18_fu_1268_p4),.din2(tmp_18_fu_1268_p6),.din3(tmp_18_fu_1268_p8),.def(tmp_18_fu_1268_p9),.sel(empty_10),.dout(tmp_18_fu_1268_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U40(.din0(tmp_19_fu_1307_p2),.din1(tmp_19_fu_1307_p4),.din2(tmp_19_fu_1307_p6),.din3(tmp_19_fu_1307_p8),.def(tmp_19_fu_1307_p9),.sel(empty_10),.dout(tmp_19_fu_1307_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U41(.din0(tmp_20_fu_1582_p2),.din1(tmp_20_fu_1582_p4),.din2(tmp_20_fu_1582_p6),.din3(tmp_20_fu_1582_p8),.def(tmp_20_fu_1582_p9),.sel(empty_10),.dout(tmp_20_fu_1582_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U42(.din0(tmp_21_fu_1621_p2),.din1(tmp_21_fu_1621_p4),.din2(tmp_21_fu_1621_p6),.din3(tmp_21_fu_1621_p8),.def(tmp_21_fu_1621_p9),.sel(empty_10),.dout(tmp_21_fu_1621_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U43(.din0(tmp_22_fu_1704_p2),.din1(tmp_22_fu_1704_p4),.din2(tmp_22_fu_1704_p6),.din3(tmp_22_fu_1704_p8),.def(tmp_22_fu_1704_p9),.sel(empty_10),.dout(tmp_22_fu_1704_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U44(.din0(tmp_23_fu_1743_p2),.din1(tmp_23_fu_1743_p4),.din2(tmp_23_fu_1743_p6),.din3(tmp_23_fu_1743_p8),.def(tmp_23_fu_1743_p9),.sel(empty_10),.dout(tmp_23_fu_1743_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U45(.din0(tmp_24_fu_1810_p2),.din1(tmp_24_fu_1810_p4),.din2(tmp_24_fu_1810_p6),.din3(tmp_24_fu_1810_p8),.def(tmp_24_fu_1810_p9),.sel(empty_10),.dout(tmp_24_fu_1810_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U46(.din0(tmp_25_fu_1849_p2),.din1(tmp_25_fu_1849_p4),.din2(tmp_25_fu_1849_p6),.din3(tmp_25_fu_1849_p8),.def(tmp_25_fu_1849_p9),.sel(empty_10),.dout(tmp_25_fu_1849_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U47(.din0(tmp_26_fu_1947_p2),.din1(tmp_26_fu_1947_p4),.din2(tmp_26_fu_1947_p6),.din3(tmp_26_fu_1947_p8),.def(tmp_26_fu_1947_p9),.sel(empty_10),.dout(tmp_26_fu_1947_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U48(.din0(tmp_27_fu_1986_p2),.din1(tmp_27_fu_1986_p4),.din2(tmp_27_fu_1986_p6),.din3(tmp_27_fu_1986_p8),.def(tmp_27_fu_1986_p9),.sel(empty_10),.dout(tmp_27_fu_1986_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U49(.din0(tmp_28_fu_2053_p2),.din1(tmp_28_fu_2053_p4),.din2(tmp_28_fu_2053_p6),.din3(tmp_28_fu_2053_p8),.def(tmp_28_fu_2053_p9),.sel(empty_10),.dout(tmp_28_fu_2053_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U50(.din0(tmp_29_fu_2092_p2),.din1(tmp_29_fu_2092_p4),.din2(tmp_29_fu_2092_p6),.din3(tmp_29_fu_2092_p8),.def(tmp_29_fu_2092_p9),.sel(empty_10),.dout(tmp_29_fu_2092_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U51(.din0(tmp_30_fu_2159_p2),.din1(tmp_30_fu_2159_p4),.din2(tmp_30_fu_2159_p6),.din3(tmp_30_fu_2159_p8),.def(tmp_30_fu_2159_p9),.sel(empty_10),.dout(tmp_30_fu_2159_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U52(.din0(tmp_31_fu_2198_p2),.din1(tmp_31_fu_2198_p4),.din2(tmp_31_fu_2198_p6),.din3(tmp_31_fu_2198_p8),.def(tmp_31_fu_2198_p9),.sel(empty_10),.dout(tmp_31_fu_2198_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U53(.din0(tmp_32_fu_2269_p2),.din1(tmp_32_fu_2269_p4),.din2(tmp_32_fu_2269_p6),.din3(tmp_32_fu_2269_p8),.def(tmp_32_fu_2269_p9),.sel(empty_10),.dout(tmp_32_fu_2269_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U54(.din0(tmp_35_fu_2308_p2),.din1(tmp_35_fu_2308_p4),.din2(tmp_35_fu_2308_p6),.din3(tmp_35_fu_2308_p8),.def(tmp_35_fu_2308_p9),.sel(empty_10),.dout(tmp_35_fu_2308_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((((1'b1 == ap_condition_exit_pp0_iter1_stage15) & (ap_idle_pp0_0to0 == 1'b1)) | ((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_152 <= min_p_34;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_77_reg_3992_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        min_p_fu_152 <= min_p_67_fu_3777_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_156 <= 6'd1;
    end else if (((tmp_77_reg_3992 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        prev_fu_156 <= add_ln25_10_fu_2965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add52_12_reg_4506 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_13_reg_4511 <= grp_fu_630_p_dout0;
        add52_14_reg_4516 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_3956 <= add_ln25_1_fu_1151_p2;
        add_ln25_2_reg_3966 <= add_ln25_2_fu_1180_p2;
        add_ln25_3_reg_3976 <= add_ln25_3_fu_1209_p2;
        add_ln25_9_reg_3986 <= add_ln25_9_fu_1238_p2;
        add_ln25_reg_3941 <= add_ln25_fu_1103_p2;
        and_ln29_15_reg_4619 <= and_ln29_15_fu_3052_p2;
        lshr_ln7_1_reg_3872 <= {{ap_sig_allocacmp_prev_1[5:2]}};
        prev_1_reg_3862 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_3893[9 : 4] <= shl_ln1_fu_1047_p3[9 : 4];
        tmp_77_reg_3992 <= add_ln25_9_fu_1238_p2[32'd6];
        tmp_77_reg_3992_pp0_iter1_reg <= tmp_77_reg_3992;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_4_reg_4091 <= add_ln25_4_fu_1391_p2;
        add_ln25_5_reg_4101 <= add_ln25_5_fu_1418_p2;
        add_ln25_6_reg_4111 <= add_ln25_6_fu_1445_p2;
        add_ln25_7_reg_4126 <= add_ln25_7_fu_1489_p2;
        add_ln25_8_reg_4136 <= add_ln25_8_fu_1516_p2;
        min_p_51_reg_4624 <= min_p_51_fu_3058_p3;
        tmp_18_reg_4001 <= tmp_18_fu_1268_p11;
        tmp_19_reg_4011 <= tmp_19_fu_1307_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln29_11_reg_4595 <= and_ln29_11_fu_2862_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln29_13_reg_4607 <= and_ln29_13_fu_2952_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_17_reg_4631 <= and_ln29_17_fu_3142_p2;
        tmp_20_reg_4151 <= tmp_20_fu_1582_p11;
        tmp_21_reg_4156 <= tmp_21_fu_1621_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_19_reg_4643 <= and_ln29_19_fu_3232_p2;
        tmp_128_reg_4341 <= {{add_ln27_14_fu_1916_p2[9:4]}};
        tmp_24_reg_4291 <= tmp_24_fu_1810_p11;
        tmp_25_reg_4296 <= tmp_25_fu_1849_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln29_1_reg_4528 <= and_ln29_1_fu_2412_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_21_reg_4655 <= and_ln29_21_fu_3322_p2;
        tmp_28_reg_4396 <= tmp_28_fu_2053_p11;
        tmp_29_reg_4401 <= tmp_29_fu_2092_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_23_reg_4667 <= and_ln29_23_fu_3412_p2;
        tmp_32_reg_4496 <= tmp_32_fu_2269_p11;
        tmp_35_reg_4501 <= tmp_35_fu_2308_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_25_reg_4679 <= and_ln29_25_fu_3502_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_27_reg_4691 <= and_ln29_27_fu_3592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_29_reg_4703 <= and_ln29_29_fu_3682_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln29_3_reg_4540 <= and_ln29_3_fu_2502_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln29_5_reg_4552 <= and_ln29_5_fu_2592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln29_7_reg_4571 <= and_ln29_7_fu_2682_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln29_9_reg_4583 <= and_ln29_9_fu_2772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_4066 <= llike_1_q0;
        llike_1_load_reg_3996 <= llike_1_q1;
        llike_2_load_1_reg_4071 <= llike_2_q0;
        llike_2_load_reg_4006 <= llike_2_q1;
        llike_3_load_1_reg_4076 <= llike_3_q0;
        llike_3_load_reg_4016 <= llike_3_q1;
        llike_load_1_reg_4041 <= llike_q1;
        llike_load_2_reg_4081 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_4201 <= llike_1_q1;
        llike_1_load_3_reg_4221 <= llike_1_q0;
        llike_2_load_2_reg_4206 <= llike_2_q1;
        llike_2_load_3_reg_4226 <= llike_2_q0;
        llike_3_load_2_reg_4211 <= llike_3_q1;
        llike_3_load_3_reg_4231 <= llike_3_q0;
        llike_load_3_reg_4216 <= llike_q1;
        llike_load_reg_4236 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_35_reg_4521 <= min_p_fu_152;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_37_reg_4533 <= min_p_37_fu_2418_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_39_reg_4545 <= min_p_39_fu_2508_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_41_reg_4557 <= min_p_41_fu_2598_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_43_reg_4576 <= min_p_43_fu_2688_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_45_reg_4588 <= min_p_45_fu_2778_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_47_reg_4600 <= min_p_47_fu_2868_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_49_reg_4612 <= min_p_49_fu_2958_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_53_reg_4636 <= min_p_53_fu_3148_p3;
        tmp_22_reg_4241 <= tmp_22_fu_1704_p11;
        tmp_23_reg_4246 <= tmp_23_fu_1743_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_55_reg_4648 <= min_p_55_fu_3238_p3;
        tmp_26_reg_4346 <= tmp_26_fu_1947_p11;
        tmp_27_reg_4351 <= tmp_27_fu_1986_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_57_reg_4660 <= min_p_57_fu_3328_p3;
        tmp_30_reg_4446 <= tmp_30_fu_2159_p11;
        tmp_31_reg_4451 <= tmp_31_fu_2198_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_59_reg_4672 <= min_p_59_fu_3418_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_61_reg_4684 <= min_p_61_fu_3508_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_63_reg_4696 <= min_p_63_fu_3598_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_65_reg_4708 <= min_p_65_fu_3688_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        p_30_reg_4564 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_927 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_933 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_939 <= grp_fu_630_p_dout0;
        reg_945 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_951 <= grp_fu_630_p_dout0;
        reg_957 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_963 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_969 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_975 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        reg_981 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_987 <= grp_fu_630_p_dout0;
        reg_993 <= grp_fu_1370_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_999 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_142_reg_4715 <= grp_fu_1374_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_77_reg_3992 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_77_reg_3992_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
            grp_fu_915_p0 = add52_13_reg_4511;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_915_p0 = reg_999;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_915_p0 = reg_987;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_915_p0 = reg_975;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_915_p0 = reg_963;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_915_p0 = reg_951;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_915_p0 = reg_939;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_915_p0 = reg_927;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_915_p0 = llike_3_load_3_reg_4231;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_915_p0 = llike_1_load_3_reg_4221;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_915_p0 = llike_3_load_2_reg_4211;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_915_p0 = llike_1_load_2_reg_4201;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_915_p0 = llike_3_load_1_reg_4076;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_915_p0 = llike_1_load_1_reg_4066;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_915_p0 = llike_3_load_reg_4016;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_915_p0 = llike_1_load_reg_3996;
        end else begin
            grp_fu_915_p0 = 'bx;
        end
    end else begin
        grp_fu_915_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_915_p1 = tmp_17;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_915_p1 = tmp_32_reg_4496;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_915_p1 = tmp_30_reg_4446;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_915_p1 = tmp_28_reg_4396;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_915_p1 = tmp_26_reg_4346;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_915_p1 = tmp_24_reg_4291;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_915_p1 = tmp_22_reg_4241;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_915_p1 = tmp_20_reg_4151;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_915_p1 = tmp_18_reg_4001;
    end else begin
        grp_fu_915_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_919_p0 = add52_14_reg_4516;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_919_p0 = add52_12_reg_4506;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_919_p0 = reg_993;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_919_p0 = reg_981;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_919_p0 = reg_969;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_919_p0 = reg_957;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_919_p0 = reg_945;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_919_p0 = reg_933;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_919_p0 = llike_load_reg_4236;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_919_p0 = llike_2_load_3_reg_4226;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_919_p0 = llike_load_3_reg_4216;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_919_p0 = llike_2_load_2_reg_4206;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_919_p0 = llike_load_2_reg_4081;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_919_p0 = llike_2_load_1_reg_4071;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_919_p0 = llike_load_1_reg_4041;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_919_p0 = llike_2_load_reg_4006;
        end else begin
            grp_fu_919_p0 = 'bx;
        end
    end else begin
        grp_fu_919_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_919_p1 = tmp_17;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_919_p1 = tmp_35_reg_4501;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_919_p1 = tmp_31_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_919_p1 = tmp_29_reg_4401;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_919_p1 = tmp_27_reg_4351;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_919_p1 = tmp_25_reg_4296;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_919_p1 = tmp_23_reg_4246;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_919_p1 = tmp_21_reg_4156;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_919_p1 = tmp_19_reg_4011;
    end else begin
        grp_fu_919_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_923_p0 = p_30_reg_4564;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_923_p0 = reg_999;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_923_p0 = reg_993;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_923_p0 = reg_987;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_923_p0 = reg_975;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_923_p0 = reg_981;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_923_p0 = reg_963;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_923_p0 = reg_969;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_923_p0 = reg_957;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_923_p0 = reg_951;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_923_p0 = reg_945;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_923_p0 = reg_939;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_923_p0 = reg_933;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        grp_fu_923_p0 = reg_927;
    end else begin
        grp_fu_923_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_923_p1 = min_p_65_fu_3688_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_923_p1 = min_p_63_fu_3598_p3;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_923_p1 = min_p_61_fu_3508_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_923_p1 = min_p_59_fu_3418_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_923_p1 = min_p_57_fu_3328_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_923_p1 = min_p_55_fu_3238_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_923_p1 = min_p_53_fu_3148_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_923_p1 = min_p_51_fu_3058_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_923_p1 = min_p_49_fu_2958_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_923_p1 = min_p_47_fu_2868_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_923_p1 = min_p_45_fu_2778_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_923_p1 = min_p_43_fu_2688_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_923_p1 = min_p_41_fu_2598_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_923_p1 = min_p_39_fu_2508_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_923_p1 = min_p_37_fu_2418_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_923_p1 = min_p_fu_152;
    end else begin
        grp_fu_923_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_10_fu_1484_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_1146_p1;
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
            llike_1_address1_local = zext_ln26_6_fu_1386_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_1040_p1;
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
            llike_2_address0_local = zext_ln26_11_fu_1511_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_3_fu_1175_p1;
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
            llike_2_address1_local = zext_ln26_7_fu_1413_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address1_local = zext_ln26_fu_1040_p1;
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
            llike_3_address0_local = zext_ln26_12_fu_1538_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_4_fu_1204_p1;
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
            llike_3_address1_local = zext_ln26_8_fu_1440_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address1_local = zext_ln26_fu_1040_p1;
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
            llike_address0_local = zext_ln26_14_fu_1561_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_5_fu_1233_p1;
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
            llike_address1_local = zext_ln26_9_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_1127_p1;
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
    if (((1'b0 == ap_block_pp0_stage15_11001) & (tmp_77_reg_3992_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        min_p_66_out_ap_vld = 1'b1;
    end else begin
        min_p_66_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln27_15_fu_2245_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln27_13_fu_2135_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln27_11_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln27_9_fu_1908_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1786_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_1095_p1;
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
            transition_0_address1_local = zext_ln27_14_fu_2227_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln27_12_fu_2121_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln27_10_fu_2015_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln27_8_fu_1894_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln27_6_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1666_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_1063_p1;
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
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address0_local = zext_ln27_15_fu_2245_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln27_13_fu_2135_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln27_11_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln27_9_fu_1908_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_1786_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_1095_p1;
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
            transition_1_address1_local = zext_ln27_14_fu_2227_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln27_12_fu_2121_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln27_10_fu_2015_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln27_8_fu_1894_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln27_6_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1666_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_1063_p1;
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
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_2_address0_local = zext_ln27_15_fu_2245_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address0_local = zext_ln27_13_fu_2135_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address0_local = zext_ln27_11_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address0_local = zext_ln27_9_fu_1908_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln27_7_fu_1786_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_1095_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_2_address1_local = zext_ln27_14_fu_2227_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_2_address1_local = zext_ln27_12_fu_2121_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_2_address1_local = zext_ln27_10_fu_2015_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address1_local = zext_ln27_8_fu_1894_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln27_6_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1666_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_1063_p1;
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
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_3_address0_local = zext_ln27_15_fu_2245_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address0_local = zext_ln27_13_fu_2135_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address0_local = zext_ln27_11_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address0_local = zext_ln27_9_fu_1908_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln27_7_fu_1786_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_1095_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_3_address1_local = zext_ln27_14_fu_2227_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_3_address1_local = zext_ln27_12_fu_2121_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_3_address1_local = zext_ln27_10_fu_2015_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address1_local = zext_ln27_8_fu_1894_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln27_6_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1666_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_1063_p1;
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
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage15) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
assign add_ln25_10_fu_2965_p2 = (prev_1_reg_3862 + 6'd16);
assign add_ln25_1_fu_1151_p2 = (ap_sig_allocacmp_prev_1 + 6'd5);
assign add_ln25_2_fu_1180_p2 = (ap_sig_allocacmp_prev_1 + 6'd6);
assign add_ln25_3_fu_1209_p2 = (ap_sig_allocacmp_prev_1 + 6'd7);
assign add_ln25_4_fu_1391_p2 = (prev_1_reg_3862 + 6'd9);
assign add_ln25_5_fu_1418_p2 = (prev_1_reg_3862 + 6'd10);
assign add_ln25_6_fu_1445_p2 = (prev_1_reg_3862 + 6'd11);
assign add_ln25_7_fu_1489_p2 = (prev_1_reg_3862 + 6'd13);
assign add_ln25_8_fu_1516_p2 = (prev_1_reg_3862 + 6'd14);
assign add_ln25_9_fu_1238_p2 = (zext_ln16_fu_1018_p1 + 7'd15);
assign add_ln25_fu_1103_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln26_fu_1556_p2 = (empty + zext_ln26_13_fu_1552_p1);
assign add_ln27_10_fu_1887_p3 = {{tmp_111_fu_1877_p4}, {lshr_ln7}};
assign add_ln27_11_fu_1902_p3 = {{add_ln25_4_reg_4091}, {lshr_ln7}};
assign add_ln27_12_fu_2009_p3 = {{add_ln25_5_reg_4101}, {lshr_ln7}};
assign add_ln27_13_fu_2023_p3 = {{add_ln25_6_reg_4111}, {lshr_ln7}};
assign add_ln27_14_fu_1916_p2 = (shl_ln1_reg_3893 + 10'd192);
assign add_ln27_15_fu_2115_p3 = {{tmp_128_reg_4341}, {lshr_ln7}};
assign add_ln27_16_fu_2129_p3 = {{add_ln25_7_reg_4126}, {lshr_ln7}};
assign add_ln27_17_fu_2221_p3 = {{add_ln25_8_reg_4136}, {lshr_ln7}};
assign add_ln27_18_fu_2238_p3 = {{trunc_ln27_fu_2235_p1}, {lshr_ln7}};
assign add_ln27_1_fu_1330_p2 = (shl_ln1_reg_3893 + 10'd32);
assign add_ln27_2_fu_1087_p3 = {{tmp_81_fu_1077_p4}, {lshr_ln7}};
assign add_ln27_3_fu_1644_p2 = (shl_ln1_reg_3893 + 10'd64);
assign add_ln27_4_fu_1345_p3 = {{tmp_85_fu_1335_p4}, {lshr_ln7}};
assign add_ln27_5_fu_1360_p3 = {{add_ln25_reg_3941}, {lshr_ln7}};
assign add_ln27_6_fu_1872_p2 = (shl_ln1_reg_3893 + 10'd128);
assign add_ln27_7_fu_1659_p3 = {{tmp_94_fu_1649_p4}, {lshr_ln7}};
assign add_ln27_8_fu_1674_p3 = {{add_ln25_1_reg_3956}, {lshr_ln7}};
assign add_ln27_9_fu_1766_p3 = {{add_ln25_2_reg_3966}, {lshr_ln7}};
assign add_ln27_fu_1071_p2 = (shl_ln1_fu_1047_p3 + 10'd16);
assign add_ln27_s_fu_1780_p3 = {{add_ln25_3_reg_3976}, {lshr_ln7}};
assign add_ln8_3_fu_1374_p2 = (lshr_ln7_1_reg_3872 + 4'd2);
assign add_ln8_4_fu_1472_p2 = (lshr_ln7_1_reg_3872 + 4'd3);
assign add_ln8_fu_1132_p2 = (lshr_ln7_1_fu_1022_p4 + 4'd1);
assign add_ln_fu_1055_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln7}};
assign and_ln29_10_fu_2856_p2 = (or_ln29_11_fu_2850_p2 & or_ln29_10_fu_2832_p2);
assign and_ln29_11_fu_2862_p2 = (grp_fu_1374_p_dout0 & and_ln29_10_fu_2856_p2);
assign and_ln29_12_fu_2946_p2 = (or_ln29_13_fu_2940_p2 & or_ln29_12_fu_2922_p2);
assign and_ln29_13_fu_2952_p2 = (grp_fu_1374_p_dout0 & and_ln29_12_fu_2946_p2);
assign and_ln29_14_fu_3046_p2 = (or_ln29_15_fu_3040_p2 & or_ln29_14_fu_3022_p2);
assign and_ln29_15_fu_3052_p2 = (grp_fu_1374_p_dout0 & and_ln29_14_fu_3046_p2);
assign and_ln29_16_fu_3136_p2 = (or_ln29_17_fu_3130_p2 & or_ln29_16_fu_3112_p2);
assign and_ln29_17_fu_3142_p2 = (grp_fu_1374_p_dout0 & and_ln29_16_fu_3136_p2);
assign and_ln29_18_fu_3226_p2 = (or_ln29_19_fu_3220_p2 & or_ln29_18_fu_3202_p2);
assign and_ln29_19_fu_3232_p2 = (grp_fu_1374_p_dout0 & and_ln29_18_fu_3226_p2);
assign and_ln29_1_fu_2412_p2 = (or_ln29_1_fu_2400_p2 & and_ln29_fu_2406_p2);
assign and_ln29_20_fu_3316_p2 = (or_ln29_21_fu_3310_p2 & or_ln29_20_fu_3292_p2);
assign and_ln29_21_fu_3322_p2 = (grp_fu_1374_p_dout0 & and_ln29_20_fu_3316_p2);
assign and_ln29_22_fu_3406_p2 = (or_ln29_23_fu_3400_p2 & or_ln29_22_fu_3382_p2);
assign and_ln29_23_fu_3412_p2 = (grp_fu_1374_p_dout0 & and_ln29_22_fu_3406_p2);
assign and_ln29_24_fu_3496_p2 = (or_ln29_25_fu_3490_p2 & or_ln29_24_fu_3472_p2);
assign and_ln29_25_fu_3502_p2 = (grp_fu_1374_p_dout0 & and_ln29_24_fu_3496_p2);
assign and_ln29_26_fu_3586_p2 = (or_ln29_27_fu_3580_p2 & or_ln29_26_fu_3562_p2);
assign and_ln29_27_fu_3592_p2 = (grp_fu_1374_p_dout0 & and_ln29_26_fu_3586_p2);
assign and_ln29_28_fu_3676_p2 = (or_ln29_29_fu_3670_p2 & or_ln29_28_fu_3652_p2);
assign and_ln29_29_fu_3682_p2 = (grp_fu_1374_p_dout0 & and_ln29_28_fu_3676_p2);
assign and_ln29_2_fu_2496_p2 = (or_ln29_3_fu_2490_p2 & or_ln29_2_fu_2472_p2);
assign and_ln29_30_fu_3766_p2 = (or_ln29_31_fu_3760_p2 & or_ln29_30_fu_3742_p2);
assign and_ln29_31_fu_3772_p2 = (tmp_142_reg_4715 & and_ln29_30_fu_3766_p2);
assign and_ln29_3_fu_2502_p2 = (grp_fu_1374_p_dout0 & and_ln29_2_fu_2496_p2);
assign and_ln29_4_fu_2586_p2 = (or_ln29_5_fu_2580_p2 & or_ln29_4_fu_2562_p2);
assign and_ln29_5_fu_2592_p2 = (grp_fu_1374_p_dout0 & and_ln29_4_fu_2586_p2);
assign and_ln29_6_fu_2676_p2 = (or_ln29_7_fu_2670_p2 & or_ln29_6_fu_2652_p2);
assign and_ln29_7_fu_2682_p2 = (grp_fu_1374_p_dout0 & and_ln29_6_fu_2676_p2);
assign and_ln29_8_fu_2766_p2 = (or_ln29_9_fu_2760_p2 & or_ln29_8_fu_2742_p2);
assign and_ln29_9_fu_2772_p2 = (grp_fu_1374_p_dout0 & and_ln29_8_fu_2766_p2);
assign and_ln29_fu_2406_p2 = (or_ln29_fu_2382_p2 & grp_fu_1374_p_dout0);
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
assign bitcast_ln29_10_fu_2785_p1 = reg_957;
assign bitcast_ln29_11_fu_2803_p1 = min_p_45_reg_4588;
assign bitcast_ln29_12_fu_2875_p1 = reg_927;
assign bitcast_ln29_13_fu_2893_p1 = min_p_47_reg_4600;
assign bitcast_ln29_14_fu_2975_p1 = reg_969;
assign bitcast_ln29_15_fu_2993_p1 = min_p_49_reg_4612;
assign bitcast_ln29_16_fu_3065_p1 = reg_963;
assign bitcast_ln29_17_fu_3083_p1 = min_p_51_reg_4624;
assign bitcast_ln29_18_fu_3155_p1 = reg_981;
assign bitcast_ln29_19_fu_3173_p1 = min_p_53_reg_4636;
assign bitcast_ln29_1_fu_2353_p1 = min_p_35_reg_4521;
assign bitcast_ln29_20_fu_3245_p1 = reg_975;
assign bitcast_ln29_21_fu_3263_p1 = min_p_55_reg_4648;
assign bitcast_ln29_22_fu_3335_p1 = reg_933;
assign bitcast_ln29_23_fu_3353_p1 = min_p_57_reg_4660;
assign bitcast_ln29_24_fu_3425_p1 = reg_987;
assign bitcast_ln29_25_fu_3443_p1 = min_p_59_reg_4672;
assign bitcast_ln29_26_fu_3515_p1 = reg_993;
assign bitcast_ln29_27_fu_3533_p1 = min_p_61_reg_4684;
assign bitcast_ln29_28_fu_3605_p1 = reg_999;
assign bitcast_ln29_29_fu_3623_p1 = min_p_63_reg_4696;
assign bitcast_ln29_2_fu_2425_p1 = reg_933;
assign bitcast_ln29_30_fu_3696_p1 = p_30_reg_4564;
assign bitcast_ln29_31_fu_3713_p1 = min_p_65_reg_4708;
assign bitcast_ln29_3_fu_2443_p1 = min_p_37_reg_4533;
assign bitcast_ln29_4_fu_2515_p1 = reg_939;
assign bitcast_ln29_5_fu_2533_p1 = min_p_39_reg_4545;
assign bitcast_ln29_6_fu_2605_p1 = reg_945;
assign bitcast_ln29_7_fu_2623_p1 = min_p_41_reg_4557;
assign bitcast_ln29_8_fu_2695_p1 = reg_951;
assign bitcast_ln29_9_fu_2713_p1 = min_p_43_reg_4576;
assign bitcast_ln29_fu_2335_p1 = reg_927;
assign grp_fu_1370_p_ce = 1'b1;
assign grp_fu_1370_p_din0 = grp_fu_919_p0;
assign grp_fu_1370_p_din1 = grp_fu_919_p1;
assign grp_fu_1370_p_opcode = 2'd0;
assign grp_fu_1374_p_ce = 1'b1;
assign grp_fu_1374_p_din0 = grp_fu_923_p0;
assign grp_fu_1374_p_din1 = grp_fu_923_p1;
assign grp_fu_1374_p_opcode = 5'd4;
assign grp_fu_630_p_ce = 1'b1;
assign grp_fu_630_p_din0 = grp_fu_915_p0;
assign grp_fu_630_p_din1 = grp_fu_915_p1;
assign grp_fu_630_p_opcode = 2'd0;
assign icmp_ln29_10_fu_2568_p2 = ((tmp_87_fu_2536_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_2574_p2 = ((trunc_ln29_5_fu_2546_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_2640_p2 = ((tmp_90_fu_2609_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_2646_p2 = ((trunc_ln29_6_fu_2619_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_2658_p2 = ((tmp_91_fu_2626_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_2664_p2 = ((trunc_ln29_7_fu_2636_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_2730_p2 = ((tmp_95_fu_2699_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_2736_p2 = ((trunc_ln29_8_fu_2709_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_2748_p2 = ((tmp_96_fu_2716_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_2754_p2 = ((trunc_ln29_9_fu_2726_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_2376_p2 = ((trunc_ln29_fu_2349_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_2820_p2 = ((tmp_99_fu_2789_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_2826_p2 = ((trunc_ln29_10_fu_2799_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_2838_p2 = ((tmp_100_fu_2806_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_2844_p2 = ((trunc_ln29_11_fu_2816_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2910_p2 = ((tmp_103_fu_2879_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2916_p2 = ((trunc_ln29_12_fu_2889_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2928_p2 = ((tmp_104_fu_2896_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2934_p2 = ((trunc_ln29_13_fu_2906_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_3010_p2 = ((tmp_107_fu_2979_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_3016_p2 = ((trunc_ln29_14_fu_2989_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_2388_p2 = ((tmp_79_fu_2356_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_3028_p2 = ((tmp_108_fu_2996_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_3034_p2 = ((trunc_ln29_15_fu_3006_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_32_fu_3100_p2 = ((tmp_112_fu_3069_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_33_fu_3106_p2 = ((trunc_ln29_16_fu_3079_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_34_fu_3118_p2 = ((tmp_113_fu_3086_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_35_fu_3124_p2 = ((trunc_ln29_17_fu_3096_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_36_fu_3190_p2 = ((tmp_116_fu_3159_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_37_fu_3196_p2 = ((trunc_ln29_18_fu_3169_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_38_fu_3208_p2 = ((tmp_117_fu_3176_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_39_fu_3214_p2 = ((trunc_ln29_19_fu_3186_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_2394_p2 = ((trunc_ln29_1_fu_2366_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_40_fu_3280_p2 = ((tmp_120_fu_3249_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_41_fu_3286_p2 = ((trunc_ln29_20_fu_3259_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_42_fu_3298_p2 = ((tmp_121_fu_3266_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_43_fu_3304_p2 = ((trunc_ln29_21_fu_3276_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_44_fu_3370_p2 = ((tmp_124_fu_3339_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_45_fu_3376_p2 = ((trunc_ln29_22_fu_3349_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_46_fu_3388_p2 = ((tmp_125_fu_3356_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_47_fu_3394_p2 = ((trunc_ln29_23_fu_3366_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_48_fu_3460_p2 = ((tmp_129_fu_3429_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_49_fu_3466_p2 = ((trunc_ln29_24_fu_3439_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_2460_p2 = ((tmp_82_fu_2429_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_50_fu_3478_p2 = ((tmp_130_fu_3446_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_51_fu_3484_p2 = ((trunc_ln29_25_fu_3456_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_52_fu_3550_p2 = ((tmp_133_fu_3519_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_53_fu_3556_p2 = ((trunc_ln29_26_fu_3529_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_54_fu_3568_p2 = ((tmp_134_fu_3536_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_55_fu_3574_p2 = ((trunc_ln29_27_fu_3546_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_56_fu_3640_p2 = ((tmp_137_fu_3609_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_57_fu_3646_p2 = ((trunc_ln29_28_fu_3619_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_58_fu_3658_p2 = ((tmp_138_fu_3626_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_59_fu_3664_p2 = ((trunc_ln29_29_fu_3636_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_2466_p2 = ((trunc_ln29_2_fu_2439_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_60_fu_3730_p2 = ((tmp_140_fu_3699_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_61_fu_3736_p2 = ((trunc_ln29_30_fu_3709_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_62_fu_3748_p2 = ((tmp_141_fu_3716_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_63_fu_3754_p2 = ((trunc_ln29_31_fu_3726_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_2478_p2 = ((tmp_83_fu_2446_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_2484_p2 = ((trunc_ln29_3_fu_2456_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_2550_p2 = ((tmp_86_fu_2519_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_2556_p2 = ((trunc_ln29_4_fu_2529_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_2370_p2 = ((tmp_78_fu_2339_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln7_1_fu_1022_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_1157_p4 = {{add_ln25_1_fu_1151_p2[5:2]}};
assign lshr_ln8_2_fu_1186_p4 = {{add_ln25_2_fu_1180_p2[5:2]}};
assign lshr_ln8_3_fu_1215_p4 = {{add_ln25_3_fu_1209_p2[5:2]}};
assign lshr_ln8_4_fu_1396_p4 = {{add_ln25_4_fu_1391_p2[5:2]}};
assign lshr_ln8_5_fu_1423_p4 = {{add_ln25_5_fu_1418_p2[5:2]}};
assign lshr_ln8_6_fu_1450_p4 = {{add_ln25_6_fu_1445_p2[5:2]}};
assign lshr_ln8_7_fu_1494_p4 = {{add_ln25_7_fu_1489_p2[5:2]}};
assign lshr_ln8_8_fu_1521_p4 = {{add_ln25_8_fu_1516_p2[5:2]}};
assign lshr_ln8_9_fu_1543_p4 = {{add_ln25_9_reg_3986[6:2]}};
assign lshr_ln8_s_fu_1109_p4 = {{add_ln25_fu_1103_p2[5:2]}};
assign min_p_37_fu_2418_p3 = ((and_ln29_1_reg_4528[0:0] == 1'b1) ? reg_927 : min_p_35_reg_4521);
assign min_p_39_fu_2508_p3 = ((and_ln29_3_reg_4540[0:0] == 1'b1) ? reg_933 : min_p_37_reg_4533);
assign min_p_41_fu_2598_p3 = ((and_ln29_5_reg_4552[0:0] == 1'b1) ? reg_939 : min_p_39_reg_4545);
assign min_p_43_fu_2688_p3 = ((and_ln29_7_reg_4571[0:0] == 1'b1) ? reg_945 : min_p_41_reg_4557);
assign min_p_45_fu_2778_p3 = ((and_ln29_9_reg_4583[0:0] == 1'b1) ? reg_951 : min_p_43_reg_4576);
assign min_p_47_fu_2868_p3 = ((and_ln29_11_reg_4595[0:0] == 1'b1) ? reg_957 : min_p_45_reg_4588);
assign min_p_49_fu_2958_p3 = ((and_ln29_13_reg_4607[0:0] == 1'b1) ? reg_927 : min_p_47_reg_4600);
assign min_p_51_fu_3058_p3 = ((and_ln29_15_reg_4619[0:0] == 1'b1) ? reg_969 : min_p_49_reg_4612);
assign min_p_53_fu_3148_p3 = ((and_ln29_17_reg_4631[0:0] == 1'b1) ? reg_963 : min_p_51_reg_4624);
assign min_p_55_fu_3238_p3 = ((and_ln29_19_reg_4643[0:0] == 1'b1) ? reg_981 : min_p_53_reg_4636);
assign min_p_57_fu_3328_p3 = ((and_ln29_21_reg_4655[0:0] == 1'b1) ? reg_975 : min_p_55_reg_4648);
assign min_p_59_fu_3418_p3 = ((and_ln29_23_reg_4667[0:0] == 1'b1) ? reg_933 : min_p_57_reg_4660);
assign min_p_61_fu_3508_p3 = ((and_ln29_25_reg_4679[0:0] == 1'b1) ? reg_987 : min_p_59_reg_4672);
assign min_p_63_fu_3598_p3 = ((and_ln29_27_reg_4691[0:0] == 1'b1) ? reg_993 : min_p_61_reg_4684);
assign min_p_65_fu_3688_p3 = ((and_ln29_29_reg_4703[0:0] == 1'b1) ? reg_999 : min_p_63_reg_4696);
assign min_p_66_out = ((and_ln29_29_reg_4703[0:0] == 1'b1) ? reg_999 : min_p_63_reg_4696);
assign min_p_67_fu_3777_p3 = ((and_ln29_31_fu_3772_p2[0:0] == 1'b1) ? p_30_reg_4564 : min_p_65_reg_4708);
assign or_ln29_10_fu_2832_p2 = (icmp_ln29_21_fu_2826_p2 | icmp_ln29_20_fu_2820_p2);
assign or_ln29_11_fu_2850_p2 = (icmp_ln29_23_fu_2844_p2 | icmp_ln29_22_fu_2838_p2);
assign or_ln29_12_fu_2922_p2 = (icmp_ln29_25_fu_2916_p2 | icmp_ln29_24_fu_2910_p2);
assign or_ln29_13_fu_2940_p2 = (icmp_ln29_27_fu_2934_p2 | icmp_ln29_26_fu_2928_p2);
assign or_ln29_14_fu_3022_p2 = (icmp_ln29_29_fu_3016_p2 | icmp_ln29_28_fu_3010_p2);
assign or_ln29_15_fu_3040_p2 = (icmp_ln29_31_fu_3034_p2 | icmp_ln29_30_fu_3028_p2);
assign or_ln29_16_fu_3112_p2 = (icmp_ln29_33_fu_3106_p2 | icmp_ln29_32_fu_3100_p2);
assign or_ln29_17_fu_3130_p2 = (icmp_ln29_35_fu_3124_p2 | icmp_ln29_34_fu_3118_p2);
assign or_ln29_18_fu_3202_p2 = (icmp_ln29_37_fu_3196_p2 | icmp_ln29_36_fu_3190_p2);
assign or_ln29_19_fu_3220_p2 = (icmp_ln29_39_fu_3214_p2 | icmp_ln29_38_fu_3208_p2);
assign or_ln29_1_fu_2400_p2 = (icmp_ln29_3_fu_2394_p2 | icmp_ln29_2_fu_2388_p2);
assign or_ln29_20_fu_3292_p2 = (icmp_ln29_41_fu_3286_p2 | icmp_ln29_40_fu_3280_p2);
assign or_ln29_21_fu_3310_p2 = (icmp_ln29_43_fu_3304_p2 | icmp_ln29_42_fu_3298_p2);
assign or_ln29_22_fu_3382_p2 = (icmp_ln29_45_fu_3376_p2 | icmp_ln29_44_fu_3370_p2);
assign or_ln29_23_fu_3400_p2 = (icmp_ln29_47_fu_3394_p2 | icmp_ln29_46_fu_3388_p2);
assign or_ln29_24_fu_3472_p2 = (icmp_ln29_49_fu_3466_p2 | icmp_ln29_48_fu_3460_p2);
assign or_ln29_25_fu_3490_p2 = (icmp_ln29_51_fu_3484_p2 | icmp_ln29_50_fu_3478_p2);
assign or_ln29_26_fu_3562_p2 = (icmp_ln29_53_fu_3556_p2 | icmp_ln29_52_fu_3550_p2);
assign or_ln29_27_fu_3580_p2 = (icmp_ln29_55_fu_3574_p2 | icmp_ln29_54_fu_3568_p2);
assign or_ln29_28_fu_3652_p2 = (icmp_ln29_57_fu_3646_p2 | icmp_ln29_56_fu_3640_p2);
assign or_ln29_29_fu_3670_p2 = (icmp_ln29_59_fu_3664_p2 | icmp_ln29_58_fu_3658_p2);
assign or_ln29_2_fu_2472_p2 = (icmp_ln29_5_fu_2466_p2 | icmp_ln29_4_fu_2460_p2);
assign or_ln29_30_fu_3742_p2 = (icmp_ln29_61_fu_3736_p2 | icmp_ln29_60_fu_3730_p2);
assign or_ln29_31_fu_3760_p2 = (icmp_ln29_63_fu_3754_p2 | icmp_ln29_62_fu_3748_p2);
assign or_ln29_3_fu_2490_p2 = (icmp_ln29_7_fu_2484_p2 | icmp_ln29_6_fu_2478_p2);
assign or_ln29_4_fu_2562_p2 = (icmp_ln29_9_fu_2556_p2 | icmp_ln29_8_fu_2550_p2);
assign or_ln29_5_fu_2580_p2 = (icmp_ln29_11_fu_2574_p2 | icmp_ln29_10_fu_2568_p2);
assign or_ln29_6_fu_2652_p2 = (icmp_ln29_13_fu_2646_p2 | icmp_ln29_12_fu_2640_p2);
assign or_ln29_7_fu_2670_p2 = (icmp_ln29_15_fu_2664_p2 | icmp_ln29_14_fu_2658_p2);
assign or_ln29_8_fu_2742_p2 = (icmp_ln29_17_fu_2736_p2 | icmp_ln29_16_fu_2730_p2);
assign or_ln29_9_fu_2760_p2 = (icmp_ln29_19_fu_2754_p2 | icmp_ln29_18_fu_2748_p2);
assign or_ln29_fu_2382_p2 = (icmp_ln29_fu_2370_p2 | icmp_ln29_1_fu_2376_p2);
assign shl_ln1_fu_1047_p3 = {{ap_sig_allocacmp_prev_1}, {4'd0}};
assign tmp_100_fu_2806_p4 = {{bitcast_ln29_11_fu_2803_p1[62:52]}};
assign tmp_102_fu_1196_p3 = {{empty_9}, {lshr_ln8_2_fu_1186_p4}};
assign tmp_103_fu_2879_p4 = {{bitcast_ln29_12_fu_2875_p1[62:52]}};
assign tmp_104_fu_2896_p4 = {{bitcast_ln29_13_fu_2893_p1[62:52]}};
assign tmp_106_fu_1225_p3 = {{empty_9}, {lshr_ln8_3_fu_1215_p4}};
assign tmp_107_fu_2979_p4 = {{bitcast_ln29_14_fu_2975_p1[62:52]}};
assign tmp_108_fu_2996_p4 = {{bitcast_ln29_15_fu_2993_p1[62:52]}};
assign tmp_110_fu_1379_p3 = {{empty_9}, {add_ln8_3_fu_1374_p2}};
assign tmp_111_fu_1877_p4 = {{add_ln27_6_fu_1872_p2[9:4]}};
assign tmp_112_fu_3069_p4 = {{bitcast_ln29_16_fu_3065_p1[62:52]}};
assign tmp_113_fu_3086_p4 = {{bitcast_ln29_17_fu_3083_p1[62:52]}};
assign tmp_115_fu_1406_p3 = {{empty_9}, {lshr_ln8_4_fu_1396_p4}};
assign tmp_116_fu_3159_p4 = {{bitcast_ln29_18_fu_3155_p1[62:52]}};
assign tmp_117_fu_3176_p4 = {{bitcast_ln29_19_fu_3173_p1[62:52]}};
assign tmp_119_fu_1433_p3 = {{empty_9}, {lshr_ln8_5_fu_1423_p4}};
assign tmp_120_fu_3249_p4 = {{bitcast_ln29_20_fu_3245_p1[62:52]}};
assign tmp_121_fu_3266_p4 = {{bitcast_ln29_21_fu_3263_p1[62:52]}};
assign tmp_123_fu_1460_p3 = {{empty_9}, {lshr_ln8_6_fu_1450_p4}};
assign tmp_124_fu_3339_p4 = {{bitcast_ln29_22_fu_3335_p1[62:52]}};
assign tmp_125_fu_3356_p4 = {{bitcast_ln29_23_fu_3353_p1[62:52]}};
assign tmp_127_fu_1477_p3 = {{empty_9}, {add_ln8_4_fu_1472_p2}};
assign tmp_129_fu_3429_p4 = {{bitcast_ln29_24_fu_3425_p1[62:52]}};
assign tmp_130_fu_3446_p4 = {{bitcast_ln29_25_fu_3443_p1[62:52]}};
assign tmp_132_fu_1504_p3 = {{empty_9}, {lshr_ln8_7_fu_1494_p4}};
assign tmp_133_fu_3519_p4 = {{bitcast_ln29_26_fu_3515_p1[62:52]}};
assign tmp_134_fu_3536_p4 = {{bitcast_ln29_27_fu_3533_p1[62:52]}};
assign tmp_136_fu_1531_p3 = {{empty_9}, {lshr_ln8_8_fu_1521_p4}};
assign tmp_137_fu_3609_p4 = {{bitcast_ln29_28_fu_3605_p1[62:52]}};
assign tmp_138_fu_3626_p4 = {{bitcast_ln29_29_fu_3623_p1[62:52]}};
assign tmp_140_fu_3699_p4 = {{bitcast_ln29_30_fu_3696_p1[62:52]}};
assign tmp_141_fu_3716_p4 = {{bitcast_ln29_31_fu_3713_p1[62:52]}};
assign tmp_18_fu_1268_p2 = transition_0_q1;
assign tmp_18_fu_1268_p4 = transition_1_q1;
assign tmp_18_fu_1268_p6 = transition_2_q1;
assign tmp_18_fu_1268_p8 = transition_3_q1;
assign tmp_18_fu_1268_p9 = 'bx;
assign tmp_19_fu_1307_p2 = transition_0_q0;
assign tmp_19_fu_1307_p4 = transition_1_q0;
assign tmp_19_fu_1307_p6 = transition_2_q0;
assign tmp_19_fu_1307_p8 = transition_3_q0;
assign tmp_19_fu_1307_p9 = 'bx;
assign tmp_20_fu_1582_p2 = transition_0_q1;
assign tmp_20_fu_1582_p4 = transition_1_q1;
assign tmp_20_fu_1582_p6 = transition_2_q1;
assign tmp_20_fu_1582_p8 = transition_3_q1;
assign tmp_20_fu_1582_p9 = 'bx;
assign tmp_21_fu_1621_p2 = transition_0_q0;
assign tmp_21_fu_1621_p4 = transition_1_q0;
assign tmp_21_fu_1621_p6 = transition_2_q0;
assign tmp_21_fu_1621_p8 = transition_3_q0;
assign tmp_21_fu_1621_p9 = 'bx;
assign tmp_22_fu_1704_p2 = transition_0_q1;
assign tmp_22_fu_1704_p4 = transition_1_q1;
assign tmp_22_fu_1704_p6 = transition_2_q1;
assign tmp_22_fu_1704_p8 = transition_3_q1;
assign tmp_22_fu_1704_p9 = 'bx;
assign tmp_23_fu_1743_p2 = transition_0_q0;
assign tmp_23_fu_1743_p4 = transition_1_q0;
assign tmp_23_fu_1743_p6 = transition_2_q0;
assign tmp_23_fu_1743_p8 = transition_3_q0;
assign tmp_23_fu_1743_p9 = 'bx;
assign tmp_24_fu_1810_p2 = transition_0_q1;
assign tmp_24_fu_1810_p4 = transition_1_q1;
assign tmp_24_fu_1810_p6 = transition_2_q1;
assign tmp_24_fu_1810_p8 = transition_3_q1;
assign tmp_24_fu_1810_p9 = 'bx;
assign tmp_25_fu_1849_p2 = transition_0_q0;
assign tmp_25_fu_1849_p4 = transition_1_q0;
assign tmp_25_fu_1849_p6 = transition_2_q0;
assign tmp_25_fu_1849_p8 = transition_3_q0;
assign tmp_25_fu_1849_p9 = 'bx;
assign tmp_26_fu_1947_p2 = transition_0_q1;
assign tmp_26_fu_1947_p4 = transition_1_q1;
assign tmp_26_fu_1947_p6 = transition_2_q1;
assign tmp_26_fu_1947_p8 = transition_3_q1;
assign tmp_26_fu_1947_p9 = 'bx;
assign tmp_27_fu_1986_p2 = transition_0_q0;
assign tmp_27_fu_1986_p4 = transition_1_q0;
assign tmp_27_fu_1986_p6 = transition_2_q0;
assign tmp_27_fu_1986_p8 = transition_3_q0;
assign tmp_27_fu_1986_p9 = 'bx;
assign tmp_28_fu_2053_p2 = transition_0_q1;
assign tmp_28_fu_2053_p4 = transition_1_q1;
assign tmp_28_fu_2053_p6 = transition_2_q1;
assign tmp_28_fu_2053_p8 = transition_3_q1;
assign tmp_28_fu_2053_p9 = 'bx;
assign tmp_29_fu_2092_p2 = transition_0_q0;
assign tmp_29_fu_2092_p4 = transition_1_q0;
assign tmp_29_fu_2092_p6 = transition_2_q0;
assign tmp_29_fu_2092_p8 = transition_3_q0;
assign tmp_29_fu_2092_p9 = 'bx;
assign tmp_30_fu_2159_p2 = transition_0_q1;
assign tmp_30_fu_2159_p4 = transition_1_q1;
assign tmp_30_fu_2159_p6 = transition_2_q1;
assign tmp_30_fu_2159_p8 = transition_3_q1;
assign tmp_30_fu_2159_p9 = 'bx;
assign tmp_31_fu_2198_p2 = transition_0_q0;
assign tmp_31_fu_2198_p4 = transition_1_q0;
assign tmp_31_fu_2198_p6 = transition_2_q0;
assign tmp_31_fu_2198_p8 = transition_3_q0;
assign tmp_31_fu_2198_p9 = 'bx;
assign tmp_32_fu_2269_p2 = transition_0_q1;
assign tmp_32_fu_2269_p4 = transition_1_q1;
assign tmp_32_fu_2269_p6 = transition_2_q1;
assign tmp_32_fu_2269_p8 = transition_3_q1;
assign tmp_32_fu_2269_p9 = 'bx;
assign tmp_35_fu_2308_p2 = transition_0_q0;
assign tmp_35_fu_2308_p4 = transition_1_q0;
assign tmp_35_fu_2308_p6 = transition_2_q0;
assign tmp_35_fu_2308_p8 = transition_3_q0;
assign tmp_35_fu_2308_p9 = 'bx;
assign tmp_78_fu_2339_p4 = {{bitcast_ln29_fu_2335_p1[62:52]}};
assign tmp_79_fu_2356_p4 = {{bitcast_ln29_1_fu_2353_p1[62:52]}};
assign tmp_81_fu_1077_p4 = {{add_ln27_fu_1071_p2[9:4]}};
assign tmp_82_fu_2429_p4 = {{bitcast_ln29_2_fu_2425_p1[62:52]}};
assign tmp_83_fu_2446_p4 = {{bitcast_ln29_3_fu_2443_p1[62:52]}};
assign tmp_85_fu_1335_p4 = {{add_ln27_1_fu_1330_p2[9:4]}};
assign tmp_86_fu_2519_p4 = {{bitcast_ln29_4_fu_2515_p1[62:52]}};
assign tmp_87_fu_2536_p4 = {{bitcast_ln29_5_fu_2533_p1[62:52]}};
assign tmp_89_fu_1119_p3 = {{empty_9}, {lshr_ln8_s_fu_1109_p4}};
assign tmp_90_fu_2609_p4 = {{bitcast_ln29_6_fu_2605_p1[62:52]}};
assign tmp_91_fu_2626_p4 = {{bitcast_ln29_7_fu_2623_p1[62:52]}};
assign tmp_93_fu_1138_p3 = {{empty_9}, {add_ln8_fu_1132_p2}};
assign tmp_94_fu_1649_p4 = {{add_ln27_3_fu_1644_p2[9:4]}};
assign tmp_95_fu_2699_p4 = {{bitcast_ln29_8_fu_2695_p1[62:52]}};
assign tmp_96_fu_2716_p4 = {{bitcast_ln29_9_fu_2713_p1[62:52]}};
assign tmp_98_fu_1167_p3 = {{empty_9}, {lshr_ln8_1_fu_1157_p4}};
assign tmp_99_fu_2789_p4 = {{bitcast_ln29_10_fu_2785_p1[62:52]}};
assign tmp_s_fu_1032_p3 = {{empty_9}, {lshr_ln7_1_fu_1022_p4}};
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
assign trunc_ln27_fu_2235_p1 = add_ln25_9_reg_3986[5:0];
assign trunc_ln29_10_fu_2799_p1 = bitcast_ln29_10_fu_2785_p1[51:0];
assign trunc_ln29_11_fu_2816_p1 = bitcast_ln29_11_fu_2803_p1[51:0];
assign trunc_ln29_12_fu_2889_p1 = bitcast_ln29_12_fu_2875_p1[51:0];
assign trunc_ln29_13_fu_2906_p1 = bitcast_ln29_13_fu_2893_p1[51:0];
assign trunc_ln29_14_fu_2989_p1 = bitcast_ln29_14_fu_2975_p1[51:0];
assign trunc_ln29_15_fu_3006_p1 = bitcast_ln29_15_fu_2993_p1[51:0];
assign trunc_ln29_16_fu_3079_p1 = bitcast_ln29_16_fu_3065_p1[51:0];
assign trunc_ln29_17_fu_3096_p1 = bitcast_ln29_17_fu_3083_p1[51:0];
assign trunc_ln29_18_fu_3169_p1 = bitcast_ln29_18_fu_3155_p1[51:0];
assign trunc_ln29_19_fu_3186_p1 = bitcast_ln29_19_fu_3173_p1[51:0];
assign trunc_ln29_1_fu_2366_p1 = bitcast_ln29_1_fu_2353_p1[51:0];
assign trunc_ln29_20_fu_3259_p1 = bitcast_ln29_20_fu_3245_p1[51:0];
assign trunc_ln29_21_fu_3276_p1 = bitcast_ln29_21_fu_3263_p1[51:0];
assign trunc_ln29_22_fu_3349_p1 = bitcast_ln29_22_fu_3335_p1[51:0];
assign trunc_ln29_23_fu_3366_p1 = bitcast_ln29_23_fu_3353_p1[51:0];
assign trunc_ln29_24_fu_3439_p1 = bitcast_ln29_24_fu_3425_p1[51:0];
assign trunc_ln29_25_fu_3456_p1 = bitcast_ln29_25_fu_3443_p1[51:0];
assign trunc_ln29_26_fu_3529_p1 = bitcast_ln29_26_fu_3515_p1[51:0];
assign trunc_ln29_27_fu_3546_p1 = bitcast_ln29_27_fu_3533_p1[51:0];
assign trunc_ln29_28_fu_3619_p1 = bitcast_ln29_28_fu_3605_p1[51:0];
assign trunc_ln29_29_fu_3636_p1 = bitcast_ln29_29_fu_3623_p1[51:0];
assign trunc_ln29_2_fu_2439_p1 = bitcast_ln29_2_fu_2425_p1[51:0];
assign trunc_ln29_30_fu_3709_p1 = bitcast_ln29_30_fu_3696_p1[51:0];
assign trunc_ln29_31_fu_3726_p1 = bitcast_ln29_31_fu_3713_p1[51:0];
assign trunc_ln29_3_fu_2456_p1 = bitcast_ln29_3_fu_2443_p1[51:0];
assign trunc_ln29_4_fu_2529_p1 = bitcast_ln29_4_fu_2515_p1[51:0];
assign trunc_ln29_5_fu_2546_p1 = bitcast_ln29_5_fu_2533_p1[51:0];
assign trunc_ln29_6_fu_2619_p1 = bitcast_ln29_6_fu_2605_p1[51:0];
assign trunc_ln29_7_fu_2636_p1 = bitcast_ln29_7_fu_2623_p1[51:0];
assign trunc_ln29_8_fu_2709_p1 = bitcast_ln29_8_fu_2695_p1[51:0];
assign trunc_ln29_9_fu_2726_p1 = bitcast_ln29_9_fu_2713_p1[51:0];
assign trunc_ln29_fu_2349_p1 = bitcast_ln29_fu_2335_p1[51:0];
assign zext_ln16_fu_1018_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_10_fu_1484_p1 = tmp_127_fu_1477_p3;
assign zext_ln26_11_fu_1511_p1 = tmp_132_fu_1504_p3;
assign zext_ln26_12_fu_1538_p1 = tmp_136_fu_1531_p3;
assign zext_ln26_13_fu_1552_p1 = lshr_ln8_9_fu_1543_p4;
assign zext_ln26_14_fu_1561_p1 = add_ln26_fu_1556_p2;
assign zext_ln26_1_fu_1127_p1 = tmp_89_fu_1119_p3;
assign zext_ln26_2_fu_1146_p1 = tmp_93_fu_1138_p3;
assign zext_ln26_3_fu_1175_p1 = tmp_98_fu_1167_p3;
assign zext_ln26_4_fu_1204_p1 = tmp_102_fu_1196_p3;
assign zext_ln26_5_fu_1233_p1 = tmp_106_fu_1225_p3;
assign zext_ln26_6_fu_1386_p1 = tmp_110_fu_1379_p3;
assign zext_ln26_7_fu_1413_p1 = tmp_115_fu_1406_p3;
assign zext_ln26_8_fu_1440_p1 = tmp_119_fu_1433_p3;
assign zext_ln26_9_fu_1467_p1 = tmp_123_fu_1460_p3;
assign zext_ln26_fu_1040_p1 = tmp_s_fu_1032_p3;
assign zext_ln27_10_fu_2015_p1 = add_ln27_12_fu_2009_p3;
assign zext_ln27_11_fu_2029_p1 = add_ln27_13_fu_2023_p3;
assign zext_ln27_12_fu_2121_p1 = add_ln27_15_fu_2115_p3;
assign zext_ln27_13_fu_2135_p1 = add_ln27_16_fu_2129_p3;
assign zext_ln27_14_fu_2227_p1 = add_ln27_17_fu_2221_p3;
assign zext_ln27_15_fu_2245_p1 = add_ln27_18_fu_2238_p3;
assign zext_ln27_1_fu_1095_p1 = add_ln27_2_fu_1087_p3;
assign zext_ln27_2_fu_1352_p1 = add_ln27_4_fu_1345_p3;
assign zext_ln27_3_fu_1366_p1 = add_ln27_5_fu_1360_p3;
assign zext_ln27_4_fu_1666_p1 = add_ln27_7_fu_1659_p3;
assign zext_ln27_5_fu_1680_p1 = add_ln27_8_fu_1674_p3;
assign zext_ln27_6_fu_1772_p1 = add_ln27_9_fu_1766_p3;
assign zext_ln27_7_fu_1786_p1 = add_ln27_s_fu_1780_p3;
assign zext_ln27_8_fu_1894_p1 = add_ln27_10_fu_1887_p3;
assign zext_ln27_9_fu_1908_p1 = add_ln27_11_fu_1902_p3;
assign zext_ln27_fu_1063_p1 = add_ln_fu_1055_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_3893[3:0] <= 4'b0000;
end
endmodule 