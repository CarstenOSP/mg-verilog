
module backprop_matrix_vector_product_with_bias_input_layer_41_42_1_Pipeline_mvp_product_input_l (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_we1,activations_1_d1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_we1,activations_0_d1,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,tmp,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_s,tmp_10,tmp_11,grp_fu_939_p_din0,grp_fu_939_p_din1,grp_fu_939_p_opcode,grp_fu_939_p_dout0,grp_fu_939_p_ce,grp_fu_943_p_din0,grp_fu_943_p_din1,grp_fu_943_p_opcode,grp_fu_943_p_dout0,grp_fu_943_p_ce,grp_fu_947_p_din0,grp_fu_947_p_din1,grp_fu_947_p_opcode,grp_fu_947_p_dout0,grp_fu_947_p_ce,grp_fu_951_p_din0,grp_fu_951_p_din1,grp_fu_951_p_opcode,grp_fu_951_p_dout0,grp_fu_951_p_ce,grp_fu_955_p_din0,grp_fu_955_p_din1,grp_fu_955_p_dout0,grp_fu_955_p_ce,grp_fu_959_p_din0,grp_fu_959_p_din1,grp_fu_959_p_dout0,grp_fu_959_p_ce,grp_fu_963_p_din0,grp_fu_963_p_din1,grp_fu_963_p_dout0,grp_fu_963_p_ce,grp_fu_967_p_din0,grp_fu_967_p_din1,grp_fu_967_p_dout0,grp_fu_967_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 26'd1;
parameter    ap_ST_fsm_pp0_stage1 = 26'd2;
parameter    ap_ST_fsm_pp0_stage2 = 26'd4;
parameter    ap_ST_fsm_pp0_stage3 = 26'd8;
parameter    ap_ST_fsm_pp0_stage4 = 26'd16;
parameter    ap_ST_fsm_pp0_stage5 = 26'd32;
parameter    ap_ST_fsm_pp0_stage6 = 26'd64;
parameter    ap_ST_fsm_pp0_stage7 = 26'd128;
parameter    ap_ST_fsm_pp0_stage8 = 26'd256;
parameter    ap_ST_fsm_pp0_stage9 = 26'd512;
parameter    ap_ST_fsm_pp0_stage10 = 26'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 26'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 26'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 26'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 26'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 26'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 26'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 26'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 26'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 26'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 26'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 26'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 26'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 26'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 26'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 26'd33554432;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [4:0] activations_1_address1;
output   activations_1_ce1;
output   activations_1_we1;
output  [63:0] activations_1_d1;
output  [4:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [4:0] activations_0_address1;
output   activations_0_ce1;
output   activations_0_we1;
output  [63:0] activations_0_d1;
output  [8:0] weights1_0_address0;
output   weights1_0_ce0;
input  [63:0] weights1_0_q0;
output  [8:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
input  [63:0] tmp;
output  [8:0] weights1_1_address0;
output   weights1_1_ce0;
input  [63:0] weights1_1_q0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
input  [63:0] tmp_1;
input  [63:0] tmp_2;
input  [63:0] tmp_3;
input  [63:0] tmp_4;
input  [63:0] tmp_5;
input  [63:0] tmp_6;
input  [63:0] tmp_7;
input  [63:0] tmp_8;
input  [63:0] tmp_9;
input  [63:0] tmp_s;
input  [63:0] tmp_10;
input  [63:0] tmp_11;
output  [63:0] grp_fu_939_p_din0;
output  [63:0] grp_fu_939_p_din1;
output  [0:0] grp_fu_939_p_opcode;
input  [63:0] grp_fu_939_p_dout0;
output   grp_fu_939_p_ce;
output  [63:0] grp_fu_943_p_din0;
output  [63:0] grp_fu_943_p_din1;
output  [0:0] grp_fu_943_p_opcode;
input  [63:0] grp_fu_943_p_dout0;
output   grp_fu_943_p_ce;
output  [63:0] grp_fu_947_p_din0;
output  [63:0] grp_fu_947_p_din1;
output  [0:0] grp_fu_947_p_opcode;
input  [63:0] grp_fu_947_p_dout0;
output   grp_fu_947_p_ce;
output  [63:0] grp_fu_951_p_din0;
output  [63:0] grp_fu_951_p_din1;
output  [0:0] grp_fu_951_p_opcode;
input  [63:0] grp_fu_951_p_dout0;
output   grp_fu_951_p_ce;
output  [63:0] grp_fu_955_p_din0;
output  [63:0] grp_fu_955_p_din1;
input  [63:0] grp_fu_955_p_dout0;
output   grp_fu_955_p_ce;
output  [63:0] grp_fu_959_p_din0;
output  [63:0] grp_fu_959_p_din1;
input  [63:0] grp_fu_959_p_dout0;
output   grp_fu_959_p_ce;
output  [63:0] grp_fu_963_p_din0;
output  [63:0] grp_fu_963_p_din1;
input  [63:0] grp_fu_963_p_dout0;
output   grp_fu_963_p_ce;
output  [63:0] grp_fu_967_p_din0;
output  [63:0] grp_fu_967_p_din1;
input  [63:0] grp_fu_967_p_dout0;
output   grp_fu_967_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_subdone;
reg   [0:0] tmp_65_reg_3328;
reg    ap_condition_exit_pp0_iter0_stage25;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1270;
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
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage25_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1274;
reg   [63:0] reg_1278;
reg   [63:0] reg_1282;
reg   [63:0] reg_1286;
reg   [63:0] reg_1291;
reg   [63:0] reg_1296;
reg   [63:0] reg_1301;
reg   [63:0] reg_1306;
reg   [63:0] reg_1311;
reg   [63:0] reg_1316;
reg   [63:0] reg_1321;
reg   [63:0] reg_1327;
reg   [63:0] reg_1332;
reg   [63:0] reg_1337;
reg   [63:0] reg_1342;
reg   [63:0] reg_1347;
reg   [63:0] reg_1352;
reg   [63:0] reg_1357;
reg   [63:0] reg_1362;
reg   [63:0] reg_1367;
reg   [63:0] reg_1372;
reg   [63:0] reg_1377;
reg   [63:0] reg_1382;
reg   [63:0] reg_1387;
reg   [63:0] reg_1392;
reg   [63:0] reg_1397;
reg   [63:0] reg_1402;
reg   [63:0] reg_1407;
reg   [63:0] reg_1414;
reg   [63:0] reg_1421;
reg   [63:0] reg_1428;
reg   [63:0] reg_1433;
reg   [63:0] reg_1438;
reg   [63:0] reg_1445;
reg   [63:0] reg_1450;
reg   [6:0] j_1_reg_3320;
reg   [6:0] j_1_reg_3320_pp0_iter1_reg;
reg   [6:0] j_1_reg_3320_pp0_iter2_reg;
reg   [6:0] j_1_reg_3320_pp0_iter3_reg;
reg   [6:0] j_1_reg_3320_pp0_iter4_reg;
reg   [0:0] tmp_65_reg_3328_pp0_iter1_reg;
reg   [0:0] tmp_65_reg_3328_pp0_iter2_reg;
reg   [0:0] tmp_65_reg_3328_pp0_iter3_reg;
wire   [4:0] lshr_ln8_fu_1472_p4;
reg   [4:0] lshr_ln8_reg_3332;
reg   [4:0] lshr_ln8_reg_3332_pp0_iter1_reg;
reg   [4:0] lshr_ln8_reg_3332_pp0_iter2_reg;
reg   [4:0] lshr_ln8_reg_3332_pp0_iter3_reg;
reg   [4:0] lshr_ln8_reg_3332_pp0_iter4_reg;
wire   [8:0] mul_ln36_fu_1486_p2;
reg   [8:0] mul_ln36_reg_3338;
reg   [7:0] tmp_60_reg_3367;
reg   [6:0] tmp_61_reg_3372;
wire   [0:0] trunc_ln36_fu_1512_p1;
reg   [0:0] trunc_ln36_reg_3378;
wire   [9:0] empty_fu_1532_p2;
reg   [9:0] empty_reg_3393;
wire   [8:0] lshr_ln9_fu_1538_p4;
reg   [8:0] lshr_ln9_reg_3424;
wire   [63:0] zext_ln36_20_fu_1558_p1;
reg   [63:0] zext_ln36_20_reg_3439;
wire   [8:0] lshr_ln36_7_fu_1568_p4;
reg   [8:0] lshr_ln36_7_reg_3449;
wire   [63:0] zext_ln36_40_fu_1588_p1;
reg   [63:0] zext_ln36_40_reg_3464;
wire   [8:0] lshr_ln36_13_fu_1598_p4;
reg   [8:0] lshr_ln36_13_reg_3474;
wire   [63:0] zext_ln36_60_fu_1618_p1;
reg   [63:0] zext_ln36_60_reg_3489;
wire   [63:0] bitcast_ln36_fu_1623_p1;
wire   [63:0] bitcast_ln36_1_fu_1628_p1;
wire   [63:0] bitcast_ln36_13_fu_1633_p1;
wire   [63:0] bitcast_ln36_26_fu_1658_p1;
wire   [8:0] lshr_ln36_20_fu_1688_p4;
reg   [8:0] lshr_ln36_20_reg_3534;
wire   [63:0] bitcast_ln36_39_fu_1703_p1;
wire   [63:0] bitcast_ln36_52_fu_1708_p1;
wire   [63:0] bitcast_ln36_65_fu_1713_p1;
wire   [63:0] bitcast_ln36_78_fu_1738_p1;
wire   [63:0] zext_ln36_1_fu_1770_p1;
reg   [63:0] zext_ln36_1_reg_3589;
wire   [63:0] bitcast_ln36_14_fu_1775_p1;
wire   [63:0] bitcast_ln36_27_fu_1790_p1;
wire   [63:0] zext_ln36_21_fu_1800_p1;
reg   [63:0] zext_ln36_21_reg_3614;
wire   [63:0] bitcast_ln36_40_fu_1805_p1;
wire   [63:0] bitcast_ln36_91_fu_1820_p1;
wire   [63:0] bitcast_ln36_53_fu_1825_p1;
wire   [63:0] zext_ln36_41_fu_1835_p1;
reg   [63:0] zext_ln36_41_reg_3644;
wire   [63:0] bitcast_ln36_66_fu_1840_p1;
wire   [63:0] bitcast_ln36_79_fu_1855_p1;
wire   [63:0] zext_ln36_61_fu_1865_p1;
reg   [63:0] zext_ln36_61_reg_3669;
wire   [63:0] bitcast_ln36_92_fu_1870_p1;
wire   [63:0] bitcast_ln36_2_fu_1885_p1;
wire   [63:0] bitcast_ln36_15_fu_1890_p1;
wire   [63:0] bitcast_ln36_28_fu_1915_p1;
wire   [63:0] bitcast_ln36_41_fu_1920_p1;
wire   [63:0] bitcast_ln36_54_fu_1945_p1;
wire   [63:0] bitcast_ln36_67_fu_1950_p1;
wire   [63:0] bitcast_ln36_80_fu_1975_p1;
wire   [63:0] bitcast_ln36_93_fu_1980_p1;
reg   [63:0] mul8_reg_3769;
reg   [63:0] mul8_s_reg_3774;
wire   [63:0] bitcast_ln36_3_fu_2005_p1;
wire   [63:0] zext_ln36_2_fu_2018_p1;
reg   [63:0] zext_ln36_2_reg_3784;
reg   [63:0] mul8_1_reg_3794;
wire   [63:0] bitcast_ln36_16_fu_2023_p1;
reg   [63:0] mul8_2_reg_3809;
wire   [63:0] bitcast_ln36_29_fu_2038_p1;
wire   [63:0] zext_ln36_22_fu_2048_p1;
reg   [63:0] zext_ln36_22_reg_3819;
wire   [63:0] bitcast_ln36_42_fu_2053_p1;
reg   [63:0] mul8_3_reg_3839;
reg   [63:0] mul8_4_reg_3844;
wire   [63:0] bitcast_ln36_55_fu_2068_p1;
wire   [63:0] zext_ln36_42_fu_2078_p1;
reg   [63:0] zext_ln36_42_reg_3854;
reg   [63:0] mul8_5_reg_3864;
wire   [63:0] bitcast_ln36_68_fu_2083_p1;
reg   [63:0] mul8_6_reg_3879;
wire   [63:0] bitcast_ln36_81_fu_2098_p1;
wire   [63:0] zext_ln36_62_fu_2108_p1;
reg   [63:0] zext_ln36_62_reg_3889;
wire   [63:0] bitcast_ln36_94_fu_2113_p1;
wire   [63:0] bitcast_ln36_4_fu_2128_p1;
reg   [63:0] mul8_1_1_reg_3919;
wire   [63:0] bitcast_ln36_17_fu_2133_p1;
reg   [63:0] mul8_2_1_reg_3934;
wire   [63:0] bitcast_ln36_30_fu_2158_p1;
reg   [63:0] mul8_3_1_reg_3949;
wire   [63:0] bitcast_ln36_43_fu_2163_p1;
reg   [63:0] mul8_7_reg_3964;
reg   [63:0] mul8_4_1_reg_3969;
wire   [63:0] bitcast_ln36_56_fu_2188_p1;
reg   [63:0] mul8_5_1_reg_3984;
wire   [63:0] bitcast_ln36_69_fu_2193_p1;
reg   [63:0] mul8_6_1_reg_3999;
wire   [63:0] bitcast_ln36_82_fu_2218_p1;
reg   [63:0] mul8_7_1_reg_4014;
wire   [63:0] bitcast_ln36_95_fu_2223_p1;
reg   [63:0] mul8_13_reg_4029;
wire   [63:0] bitcast_ln36_5_fu_2248_p1;
wire   [63:0] zext_ln36_3_fu_2260_p1;
reg   [63:0] zext_ln36_3_reg_4039;
reg   [63:0] mul8_1_2_reg_4049;
wire   [63:0] bitcast_ln36_18_fu_2265_p1;
reg   [63:0] mul8_2_2_reg_4064;
wire   [63:0] bitcast_ln36_31_fu_2280_p1;
wire   [63:0] zext_ln36_23_fu_2290_p1;
reg   [63:0] zext_ln36_23_reg_4074;
reg   [63:0] mul8_3_2_reg_4084;
wire   [63:0] bitcast_ln36_44_fu_2295_p1;
reg   [63:0] mul8_4_2_reg_4099;
wire   [63:0] bitcast_ln36_57_fu_2310_p1;
wire   [63:0] zext_ln36_43_fu_2320_p1;
reg   [63:0] zext_ln36_43_reg_4109;
reg   [63:0] mul8_5_2_reg_4119;
wire   [63:0] bitcast_ln36_70_fu_2325_p1;
reg   [63:0] mul8_6_2_reg_4134;
wire   [63:0] bitcast_ln36_83_fu_2340_p1;
wire   [63:0] zext_ln36_63_fu_2350_p1;
reg   [63:0] zext_ln36_63_reg_4144;
reg   [63:0] mul8_7_2_reg_4154;
wire   [63:0] bitcast_ln36_96_fu_2355_p1;
reg   [63:0] mul8_14_reg_4169;
wire   [63:0] bitcast_ln36_6_fu_2370_p1;
reg   [63:0] mul8_1_3_reg_4184;
wire   [63:0] bitcast_ln36_19_fu_2375_p1;
reg   [63:0] mul8_2_3_reg_4199;
wire   [63:0] bitcast_ln36_32_fu_2400_p1;
reg   [63:0] mul8_3_3_reg_4214;
wire   [63:0] bitcast_ln36_45_fu_2405_p1;
reg   [63:0] mul8_4_3_reg_4229;
wire   [63:0] bitcast_ln36_58_fu_2430_p1;
reg   [63:0] mul8_5_3_reg_4244;
wire   [63:0] bitcast_ln36_71_fu_2435_p1;
reg   [63:0] mul8_6_3_reg_4259;
wire   [63:0] bitcast_ln36_84_fu_2460_p1;
reg   [63:0] mul8_7_3_reg_4274;
wire   [63:0] bitcast_ln36_97_fu_2465_p1;
reg   [63:0] mul8_15_reg_4289;
wire   [63:0] bitcast_ln36_7_fu_2490_p1;
wire   [63:0] zext_ln36_4_fu_2500_p1;
reg   [63:0] zext_ln36_4_reg_4299;
reg   [63:0] mul8_1_4_reg_4309;
wire   [63:0] bitcast_ln36_20_fu_2505_p1;
reg   [63:0] mul8_2_4_reg_4324;
wire   [63:0] bitcast_ln36_33_fu_2520_p1;
wire   [63:0] zext_ln36_24_fu_2530_p1;
reg   [63:0] zext_ln36_24_reg_4334;
reg   [63:0] mul8_3_4_reg_4344;
wire   [63:0] bitcast_ln36_46_fu_2535_p1;
reg   [63:0] mul8_4_4_reg_4359;
wire   [63:0] bitcast_ln36_59_fu_2550_p1;
wire   [63:0] zext_ln36_44_fu_2560_p1;
reg   [63:0] zext_ln36_44_reg_4369;
reg   [63:0] mul8_5_4_reg_4379;
wire   [63:0] bitcast_ln36_72_fu_2565_p1;
reg   [63:0] mul8_6_4_reg_4394;
wire   [63:0] bitcast_ln36_85_fu_2580_p1;
wire   [63:0] zext_ln36_64_fu_2590_p1;
reg   [63:0] zext_ln36_64_reg_4404;
reg   [63:0] mul8_7_4_reg_4414;
wire   [63:0] bitcast_ln36_98_fu_2595_p1;
reg   [63:0] mul8_16_reg_4429;
reg   [63:0] mul8_16_reg_4429_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_8_fu_2610_p1;
reg   [63:0] mul8_1_5_reg_4444;
reg   [63:0] mul8_1_5_reg_4444_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_21_fu_2615_p1;
reg   [63:0] mul8_2_5_reg_4459;
reg   [63:0] mul8_2_5_reg_4459_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_34_fu_2640_p1;
reg   [63:0] mul8_3_5_reg_4474;
reg   [63:0] mul8_3_5_reg_4474_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_47_fu_2645_p1;
reg   [63:0] mul8_4_5_reg_4489;
reg   [63:0] mul8_4_5_reg_4489_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_60_fu_2670_p1;
reg   [63:0] mul8_5_5_reg_4504;
reg   [63:0] mul8_5_5_reg_4504_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_73_fu_2675_p1;
reg   [63:0] mul8_6_5_reg_4519;
reg   [63:0] mul8_6_5_reg_4519_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_86_fu_2700_p1;
reg   [63:0] mul8_7_5_reg_4534;
reg   [63:0] mul8_7_5_reg_4534_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_99_fu_2705_p1;
reg   [63:0] mul8_17_reg_4549;
reg   [63:0] mul8_17_reg_4549_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_9_fu_2730_p1;
wire   [63:0] zext_ln36_5_fu_2740_p1;
reg   [63:0] zext_ln36_5_reg_4559;
reg   [63:0] mul8_1_6_reg_4569;
reg   [63:0] mul8_1_6_reg_4569_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_22_fu_2745_p1;
reg   [63:0] mul8_2_6_reg_4584;
reg   [63:0] mul8_2_6_reg_4584_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_35_fu_2760_p1;
wire   [63:0] zext_ln36_25_fu_2770_p1;
reg   [63:0] zext_ln36_25_reg_4594;
reg   [63:0] mul8_3_6_reg_4604;
reg   [63:0] mul8_3_6_reg_4604_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_48_fu_2775_p1;
reg   [63:0] mul8_4_6_reg_4619;
reg   [63:0] mul8_4_6_reg_4619_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_61_fu_2790_p1;
wire   [63:0] zext_ln36_45_fu_2800_p1;
reg   [63:0] zext_ln36_45_reg_4629;
reg   [63:0] mul8_5_6_reg_4639;
reg   [63:0] mul8_5_6_reg_4639_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_74_fu_2805_p1;
reg   [63:0] mul8_6_6_reg_4654;
reg   [63:0] mul8_6_6_reg_4654_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_87_fu_2820_p1;
wire   [63:0] zext_ln36_65_fu_2830_p1;
reg   [63:0] zext_ln36_65_reg_4664;
reg   [63:0] mul8_7_6_reg_4674;
reg   [63:0] mul8_7_6_reg_4674_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_100_fu_2835_p1;
reg   [63:0] mul8_18_reg_4689;
reg   [63:0] mul8_18_reg_4689_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_10_fu_2850_p1;
reg   [63:0] mul8_1_7_reg_4704;
reg   [63:0] mul8_1_7_reg_4704_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_23_fu_2855_p1;
reg   [63:0] mul8_2_7_reg_4719;
reg   [63:0] mul8_2_7_reg_4719_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_36_fu_2880_p1;
reg   [63:0] mul8_3_7_reg_4734;
reg   [63:0] mul8_3_7_reg_4734_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_49_fu_2885_p1;
reg   [63:0] mul8_4_7_reg_4749;
reg   [63:0] mul8_4_7_reg_4749_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_62_fu_2910_p1;
reg   [63:0] mul8_5_7_reg_4764;
reg   [63:0] mul8_5_7_reg_4764_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_75_fu_2915_p1;
reg   [63:0] mul8_6_7_reg_4779;
reg   [63:0] mul8_6_7_reg_4779_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_88_fu_2940_p1;
reg   [63:0] mul8_7_7_reg_4794;
reg   [63:0] mul8_7_7_reg_4794_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_101_fu_2945_p1;
reg   [63:0] mul8_8_reg_4809;
reg   [63:0] mul8_8_reg_4809_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_11_fu_2970_p1;
reg   [63:0] mul8_1_8_reg_4824;
reg   [63:0] mul8_1_8_reg_4824_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_24_fu_2985_p1;
reg   [63:0] mul8_2_8_reg_4839;
reg   [63:0] mul8_2_8_reg_4839_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_37_fu_3000_p1;
reg   [63:0] mul8_3_8_reg_4854;
reg   [63:0] mul8_3_8_reg_4854_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_50_fu_3015_p1;
reg   [63:0] mul8_4_8_reg_4869;
reg   [63:0] mul8_4_8_reg_4869_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_63_fu_3040_p1;
reg   [63:0] mul8_5_8_reg_4884;
reg   [63:0] mul8_5_8_reg_4884_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_76_fu_3055_p1;
reg   [63:0] mul8_6_8_reg_4899;
reg   [63:0] mul8_6_8_reg_4899_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_89_fu_3070_p1;
reg   [63:0] mul8_7_8_reg_4914;
reg   [63:0] mul8_7_8_reg_4914_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_102_fu_3085_p1;
reg   [63:0] mul8_9_reg_4929;
reg   [63:0] mul8_9_reg_4929_pp0_iter2_reg;
reg   [63:0] mul8_9_reg_4929_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_12_fu_3100_p1;
reg   [63:0] mul8_1_9_reg_4939;
reg   [63:0] mul8_1_9_reg_4939_pp0_iter2_reg;
reg   [63:0] mul8_1_9_reg_4939_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_25_fu_3105_p1;
reg   [63:0] mul8_2_9_reg_4949;
reg   [63:0] mul8_2_9_reg_4949_pp0_iter2_reg;
reg   [63:0] mul8_2_9_reg_4949_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_38_fu_3110_p1;
reg   [63:0] mul8_3_9_reg_4959;
reg   [63:0] mul8_3_9_reg_4959_pp0_iter2_reg;
reg   [63:0] mul8_3_9_reg_4959_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_51_fu_3115_p1;
reg   [63:0] mul8_4_9_reg_4969;
reg   [63:0] mul8_4_9_reg_4969_pp0_iter2_reg;
reg   [63:0] mul8_4_9_reg_4969_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_64_fu_3120_p1;
reg   [63:0] mul8_5_9_reg_4979;
reg   [63:0] mul8_5_9_reg_4979_pp0_iter2_reg;
reg   [63:0] mul8_5_9_reg_4979_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_77_fu_3125_p1;
reg   [63:0] mul8_6_9_reg_4989;
reg   [63:0] mul8_6_9_reg_4989_pp0_iter2_reg;
reg   [63:0] mul8_6_9_reg_4989_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_90_fu_3130_p1;
reg   [63:0] mul8_7_9_reg_4999;
reg   [63:0] mul8_7_9_reg_4999_pp0_iter2_reg;
reg   [63:0] mul8_7_9_reg_4999_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_103_fu_3135_p1;
reg   [63:0] mul8_10_reg_5009;
reg   [63:0] mul8_10_reg_5009_pp0_iter2_reg;
reg   [63:0] mul8_10_reg_5009_pp0_iter3_reg;
reg   [63:0] mul8_1_s_reg_5014;
reg   [63:0] mul8_1_s_reg_5014_pp0_iter2_reg;
reg   [63:0] mul8_1_s_reg_5014_pp0_iter3_reg;
reg   [63:0] mul8_2_s_reg_5019;
reg   [63:0] mul8_2_s_reg_5019_pp0_iter2_reg;
reg   [63:0] mul8_2_s_reg_5019_pp0_iter3_reg;
reg   [63:0] mul8_3_s_reg_5024;
reg   [63:0] mul8_3_s_reg_5024_pp0_iter2_reg;
reg   [63:0] mul8_3_s_reg_5024_pp0_iter3_reg;
reg   [63:0] mul8_4_s_reg_5029;
reg   [63:0] mul8_4_s_reg_5029_pp0_iter2_reg;
reg   [63:0] mul8_4_s_reg_5029_pp0_iter3_reg;
reg   [63:0] mul8_5_s_reg_5034;
reg   [63:0] mul8_5_s_reg_5034_pp0_iter2_reg;
reg   [63:0] mul8_5_s_reg_5034_pp0_iter3_reg;
reg   [63:0] mul8_6_s_reg_5039;
reg   [63:0] mul8_6_s_reg_5039_pp0_iter2_reg;
reg   [63:0] mul8_6_s_reg_5039_pp0_iter3_reg;
reg   [63:0] mul8_7_s_reg_5044;
reg   [63:0] mul8_7_s_reg_5044_pp0_iter2_reg;
reg   [63:0] mul8_7_s_reg_5044_pp0_iter3_reg;
reg   [63:0] mul8_11_reg_5049;
reg   [63:0] mul8_11_reg_5049_pp0_iter2_reg;
reg   [63:0] mul8_11_reg_5049_pp0_iter3_reg;
reg   [63:0] mul8_1_10_reg_5054;
reg   [63:0] mul8_1_10_reg_5054_pp0_iter2_reg;
reg   [63:0] mul8_1_10_reg_5054_pp0_iter3_reg;
reg   [63:0] mul8_2_10_reg_5059;
reg   [63:0] mul8_2_10_reg_5059_pp0_iter2_reg;
reg   [63:0] mul8_2_10_reg_5059_pp0_iter3_reg;
reg   [63:0] mul8_3_10_reg_5064;
reg   [63:0] mul8_3_10_reg_5064_pp0_iter2_reg;
reg   [63:0] mul8_3_10_reg_5064_pp0_iter3_reg;
reg   [63:0] mul8_4_10_reg_5069;
reg   [63:0] mul8_4_10_reg_5069_pp0_iter2_reg;
reg   [63:0] mul8_4_10_reg_5069_pp0_iter3_reg;
reg   [63:0] mul8_5_10_reg_5074;
reg   [63:0] mul8_5_10_reg_5074_pp0_iter2_reg;
reg   [63:0] mul8_5_10_reg_5074_pp0_iter3_reg;
reg   [63:0] mul8_6_10_reg_5079;
reg   [63:0] mul8_6_10_reg_5079_pp0_iter2_reg;
reg   [63:0] mul8_6_10_reg_5079_pp0_iter3_reg;
reg   [63:0] mul8_7_10_reg_5084;
reg   [63:0] mul8_7_10_reg_5084_pp0_iter2_reg;
reg   [63:0] mul8_7_10_reg_5084_pp0_iter3_reg;
reg   [63:0] mul8_12_reg_5089;
reg   [63:0] mul8_12_reg_5089_pp0_iter2_reg;
reg   [63:0] mul8_12_reg_5089_pp0_iter3_reg;
reg   [63:0] mul8_1_11_reg_5094;
reg   [63:0] mul8_1_11_reg_5094_pp0_iter2_reg;
reg   [63:0] mul8_1_11_reg_5094_pp0_iter3_reg;
reg   [63:0] mul8_2_11_reg_5099;
reg   [63:0] mul8_2_11_reg_5099_pp0_iter2_reg;
reg   [63:0] mul8_2_11_reg_5099_pp0_iter3_reg;
reg   [63:0] mul8_3_11_reg_5104;
reg   [63:0] mul8_3_11_reg_5104_pp0_iter2_reg;
reg   [63:0] mul8_3_11_reg_5104_pp0_iter3_reg;
reg   [63:0] mul8_4_11_reg_5109;
reg   [63:0] mul8_4_11_reg_5109_pp0_iter2_reg;
reg   [63:0] mul8_4_11_reg_5109_pp0_iter3_reg;
reg   [63:0] mul8_5_11_reg_5114;
reg   [63:0] mul8_5_11_reg_5114_pp0_iter2_reg;
reg   [63:0] mul8_5_11_reg_5114_pp0_iter3_reg;
reg   [63:0] mul8_6_11_reg_5119;
reg   [63:0] mul8_6_11_reg_5119_pp0_iter2_reg;
reg   [63:0] mul8_6_11_reg_5119_pp0_iter3_reg;
reg   [63:0] mul8_7_11_reg_5124;
reg   [63:0] mul8_7_11_reg_5124_pp0_iter2_reg;
reg   [63:0] mul8_7_11_reg_5124_pp0_iter3_reg;
reg   [63:0] add11_3_9_reg_5129;
wire   [63:0] zext_ln34_1_fu_3162_p1;
reg   [63:0] zext_ln34_1_reg_5134;
reg   [2:0] tmp_63_reg_5139;
reg   [0:0] tmp_66_reg_5145;
wire   [63:0] zext_ln34_3_fu_3204_p1;
reg   [63:0] zext_ln34_3_reg_5150;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage12_subdone;
wire   [63:0] zext_ln36_fu_1516_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_7_fu_1548_p1;
wire   [63:0] zext_ln36_27_fu_1578_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_47_fu_1608_p1;
wire   [63:0] zext_ln36_8_fu_1653_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_28_fu_1678_p1;
wire   [63:0] zext_ln36_67_fu_1698_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln36_48_fu_1733_p1;
wire   [63:0] zext_ln36_68_fu_1758_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln36_9_fu_1785_p1;
wire   [63:0] zext_ln36_29_fu_1815_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln36_49_fu_1850_p1;
wire   [63:0] zext_ln36_69_fu_1880_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln36_10_fu_1910_p1;
wire   [63:0] zext_ln36_30_fu_1940_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln36_50_fu_1970_p1;
wire   [63:0] zext_ln36_70_fu_2000_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln36_11_fu_2033_p1;
wire   [63:0] zext_ln36_31_fu_2063_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln36_51_fu_2093_p1;
wire   [63:0] zext_ln36_71_fu_2123_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln36_12_fu_2153_p1;
wire   [63:0] zext_ln36_32_fu_2183_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln36_52_fu_2213_p1;
wire   [63:0] zext_ln36_72_fu_2243_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln36_13_fu_2275_p1;
wire   [63:0] zext_ln36_33_fu_2305_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln36_53_fu_2335_p1;
wire   [63:0] zext_ln36_73_fu_2365_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln36_14_fu_2395_p1;
wire   [63:0] zext_ln36_34_fu_2425_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln36_54_fu_2455_p1;
wire   [63:0] zext_ln36_74_fu_2485_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln36_15_fu_2515_p1;
wire   [63:0] zext_ln36_35_fu_2545_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln36_55_fu_2575_p1;
wire   [63:0] zext_ln36_75_fu_2605_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln36_16_fu_2635_p1;
wire   [63:0] zext_ln36_36_fu_2665_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln36_56_fu_2695_p1;
wire   [63:0] zext_ln36_76_fu_2725_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln36_17_fu_2755_p1;
wire   [63:0] zext_ln36_37_fu_2785_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln36_57_fu_2815_p1;
wire   [63:0] zext_ln36_77_fu_2845_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln36_18_fu_2875_p1;
wire   [63:0] zext_ln36_38_fu_2905_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] zext_ln36_58_fu_2935_p1;
wire   [63:0] zext_ln36_78_fu_2965_p1;
wire   [63:0] zext_ln36_6_fu_2980_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] zext_ln36_19_fu_2995_p1;
wire   [63:0] zext_ln36_26_fu_3010_p1;
wire   [63:0] zext_ln36_39_fu_3025_p1;
wire   [63:0] zext_ln36_46_fu_3050_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln36_59_fu_3065_p1;
wire   [63:0] zext_ln36_66_fu_3080_p1;
wire   [63:0] zext_ln36_79_fu_3095_p1;
wire   [63:0] zext_ln32_fu_3140_p1;
wire   [63:0] zext_ln34_2_fu_3191_p1;
reg   [6:0] j_fu_220;
wire   [6:0] add_ln33_fu_3030_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    weights1_0_ce1_local;
reg   [8:0] weights1_0_address1_local;
reg    weights1_0_ce0_local;
reg   [8:0] weights1_0_address0_local;
reg    weights1_1_ce1_local;
reg   [8:0] weights1_1_address1_local;
reg    weights1_1_ce0_local;
reg   [8:0] weights1_1_address0_local;
reg    activations_0_we1_local;
reg    activations_0_ce1_local;
reg   [4:0] activations_0_address1_local;
reg    activations_0_we0_local;
reg   [63:0] activations_0_d0_local;
reg    activations_0_ce0_local;
reg   [4:0] activations_0_address0_local;
reg    activations_1_we0_local;
reg    activations_1_ce0_local;
reg   [4:0] activations_1_address0_local;
reg    activations_1_we1_local;
reg   [63:0] activations_1_d1_local;
reg    activations_1_ce1_local;
reg   [4:0] activations_1_address1_local;
reg   [63:0] grp_fu_1234_p0;
reg   [63:0] grp_fu_1234_p1;
reg   [63:0] grp_fu_1239_p0;
reg   [63:0] grp_fu_1239_p1;
reg   [63:0] grp_fu_1244_p0;
reg   [63:0] grp_fu_1244_p1;
reg   [63:0] grp_fu_1249_p0;
reg   [63:0] grp_fu_1249_p1;
reg   [63:0] grp_fu_1254_p0;
reg   [63:0] grp_fu_1254_p1;
reg   [63:0] grp_fu_1258_p0;
reg   [63:0] grp_fu_1258_p1;
reg   [63:0] grp_fu_1262_p0;
reg   [63:0] grp_fu_1262_p1;
reg   [63:0] grp_fu_1266_p0;
reg   [63:0] grp_fu_1266_p1;
wire   [4:0] mul_ln36_fu_1486_p0;
wire   [4:0] mul_ln36_fu_1486_p1;
wire   [5:0] or_ln7_fu_1521_p3;
wire   [5:0] empty_fu_1532_p0;
wire   [4:0] empty_fu_1532_p1;
wire   [8:0] add_ln36_15_fu_1553_p2;
wire   [9:0] empty_67_fu_1563_p2;
wire   [8:0] add_ln36_34_fu_1583_p2;
wire   [9:0] empty_68_fu_1593_p2;
wire   [8:0] add_ln36_53_fu_1613_p2;
wire   [9:0] add_ln36_3_fu_1638_p2;
wire   [8:0] lshr_ln36_1_fu_1643_p4;
wire   [9:0] add_ln36_22_fu_1663_p2;
wire   [8:0] lshr_ln36_8_fu_1668_p4;
wire   [9:0] empty_69_fu_1683_p2;
wire   [9:0] add_ln36_41_fu_1718_p2;
wire   [8:0] lshr_ln36_14_fu_1723_p4;
wire   [9:0] add_ln36_60_fu_1743_p2;
wire   [8:0] lshr_ln36_21_fu_1748_p4;
wire   [8:0] or_ln_fu_1763_p3;
wire   [8:0] add_ln36_4_fu_1780_p2;
wire   [8:0] add_ln36_16_fu_1795_p2;
wire   [8:0] add_ln36_23_fu_1810_p2;
wire   [8:0] add_ln36_35_fu_1830_p2;
wire   [8:0] add_ln36_42_fu_1845_p2;
wire   [8:0] add_ln36_54_fu_1860_p2;
wire   [8:0] add_ln36_61_fu_1875_p2;
wire   [9:0] add_ln36_5_fu_1895_p2;
wire   [8:0] lshr_ln36_2_fu_1900_p4;
wire   [9:0] add_ln36_24_fu_1925_p2;
wire   [8:0] lshr_ln36_9_fu_1930_p4;
wire   [9:0] add_ln36_43_fu_1955_p2;
wire   [8:0] lshr_ln36_15_fu_1960_p4;
wire   [9:0] add_ln36_62_fu_1985_p2;
wire   [8:0] lshr_ln36_22_fu_1990_p4;
wire   [8:0] or_ln36_1_fu_2010_p4;
wire   [8:0] add_ln36_6_fu_2028_p2;
wire   [8:0] add_ln36_17_fu_2043_p2;
wire   [8:0] add_ln36_25_fu_2058_p2;
wire   [8:0] add_ln36_36_fu_2073_p2;
wire   [8:0] add_ln36_44_fu_2088_p2;
wire   [8:0] add_ln36_55_fu_2103_p2;
wire   [8:0] add_ln36_63_fu_2118_p2;
wire   [9:0] add_ln36_7_fu_2138_p2;
wire   [8:0] lshr_ln36_3_fu_2143_p4;
wire   [9:0] add_ln36_26_fu_2168_p2;
wire   [8:0] lshr_ln36_s_fu_2173_p4;
wire   [9:0] add_ln36_45_fu_2198_p2;
wire   [8:0] lshr_ln36_16_fu_2203_p4;
wire   [9:0] add_ln36_64_fu_2228_p2;
wire   [8:0] lshr_ln36_23_fu_2233_p4;
wire   [8:0] or_ln36_2_fu_2253_p3;
wire   [8:0] add_ln36_8_fu_2270_p2;
wire   [8:0] add_ln36_18_fu_2285_p2;
wire   [8:0] add_ln36_27_fu_2300_p2;
wire   [8:0] add_ln36_37_fu_2315_p2;
wire   [8:0] add_ln36_46_fu_2330_p2;
wire   [8:0] add_ln36_56_fu_2345_p2;
wire   [8:0] add_ln36_65_fu_2360_p2;
wire   [9:0] add_ln36_9_fu_2380_p2;
wire   [8:0] lshr_ln36_4_fu_2385_p4;
wire   [9:0] add_ln36_28_fu_2410_p2;
wire   [8:0] lshr_ln36_10_fu_2415_p4;
wire   [9:0] add_ln36_47_fu_2440_p2;
wire   [8:0] lshr_ln36_17_fu_2445_p4;
wire   [9:0] add_ln36_66_fu_2470_p2;
wire   [8:0] lshr_ln36_24_fu_2475_p4;
wire   [8:0] add_ln36_fu_2495_p2;
wire   [8:0] add_ln36_10_fu_2510_p2;
wire   [8:0] add_ln36_19_fu_2525_p2;
wire   [8:0] add_ln36_29_fu_2540_p2;
wire   [8:0] add_ln36_38_fu_2555_p2;
wire   [8:0] add_ln36_48_fu_2570_p2;
wire   [8:0] add_ln36_57_fu_2585_p2;
wire   [8:0] add_ln36_67_fu_2600_p2;
wire   [9:0] add_ln36_11_fu_2620_p2;
wire   [8:0] lshr_ln36_5_fu_2625_p4;
wire   [9:0] add_ln36_30_fu_2650_p2;
wire   [8:0] lshr_ln36_11_fu_2655_p4;
wire   [9:0] add_ln36_49_fu_2680_p2;
wire   [8:0] lshr_ln36_18_fu_2685_p4;
wire   [9:0] add_ln36_68_fu_2710_p2;
wire   [8:0] lshr_ln36_25_fu_2715_p4;
wire   [8:0] add_ln36_1_fu_2735_p2;
wire   [8:0] add_ln36_12_fu_2750_p2;
wire   [8:0] add_ln36_20_fu_2765_p2;
wire   [8:0] add_ln36_31_fu_2780_p2;
wire   [8:0] add_ln36_39_fu_2795_p2;
wire   [8:0] add_ln36_50_fu_2810_p2;
wire   [8:0] add_ln36_58_fu_2825_p2;
wire   [8:0] add_ln36_69_fu_2840_p2;
wire   [9:0] add_ln36_13_fu_2860_p2;
wire   [8:0] lshr_ln36_6_fu_2865_p4;
wire   [9:0] add_ln36_32_fu_2890_p2;
wire   [8:0] lshr_ln36_12_fu_2895_p4;
wire   [9:0] add_ln36_51_fu_2920_p2;
wire   [8:0] lshr_ln36_19_fu_2925_p4;
wire   [9:0] add_ln36_70_fu_2950_p2;
wire   [8:0] lshr_ln36_26_fu_2955_p4;
wire   [8:0] add_ln36_2_fu_2975_p2;
wire   [8:0] add_ln36_14_fu_2990_p2;
wire   [8:0] add_ln36_21_fu_3005_p2;
wire   [8:0] add_ln36_33_fu_3020_p2;
wire   [8:0] add_ln36_40_fu_3045_p2;
wire   [8:0] add_ln36_52_fu_3060_p2;
wire   [8:0] add_ln36_59_fu_3075_p2;
wire   [8:0] add_ln36_71_fu_3090_p2;
wire   [3:0] tmp_62_fu_3145_p4;
wire   [4:0] or_ln8_fu_3154_p3;
wire   [4:0] or_ln34_1_fu_3183_p4;
wire   [4:0] or_ln34_2_fu_3197_p3;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage12;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [25:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] empty_fu_1532_p00;
wire   [8:0] mul_ln36_fu_1486_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_220 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_5ns_5ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 5 ),.dout_WIDTH( 9 ))
mul_5ns_5ns_9_1_1_U9(.din0(mul_ln36_fu_1486_p0),.din1(mul_ln36_fu_1486_p1),.dout(mul_ln36_fu_1486_p2));
backprop_mul_6ns_5ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 10 ))
mul_6ns_5ns_10_1_1_U10(.din0(empty_fu_1532_p0),.din1(empty_fu_1532_p1),.dout(empty_fu_1532_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage25),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage25)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage12))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage12))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage12))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_220 <= 7'd0;
    end else if (((tmp_65_reg_3328 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        j_fu_220 <= add_ln33_fu_3030_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add11_3_9_reg_5129 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_3393 <= empty_fu_1532_p2;
        lshr_ln9_reg_3424 <= {{empty_fu_1532_p2[9:1]}};
        mul8_1_9_reg_4939_pp0_iter2_reg <= mul8_1_9_reg_4939;
        mul8_1_9_reg_4939_pp0_iter3_reg <= mul8_1_9_reg_4939_pp0_iter2_reg;
        mul8_2_9_reg_4949_pp0_iter2_reg <= mul8_2_9_reg_4949;
        mul8_2_9_reg_4949_pp0_iter3_reg <= mul8_2_9_reg_4949_pp0_iter2_reg;
        mul8_3_9_reg_4959_pp0_iter2_reg <= mul8_3_9_reg_4959;
        mul8_3_9_reg_4959_pp0_iter3_reg <= mul8_3_9_reg_4959_pp0_iter2_reg;
        mul8_9_reg_4929_pp0_iter2_reg <= mul8_9_reg_4929;
        mul8_9_reg_4929_pp0_iter3_reg <= mul8_9_reg_4929_pp0_iter2_reg;
        zext_ln36_20_reg_3439[8 : 0] <= zext_ln36_20_fu_1558_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_3320 <= ap_sig_allocacmp_j_1;
        j_1_reg_3320_pp0_iter1_reg <= j_1_reg_3320;
        j_1_reg_3320_pp0_iter2_reg <= j_1_reg_3320_pp0_iter1_reg;
        j_1_reg_3320_pp0_iter3_reg <= j_1_reg_3320_pp0_iter2_reg;
        j_1_reg_3320_pp0_iter4_reg <= j_1_reg_3320_pp0_iter3_reg;
        lshr_ln8_reg_3332 <= {{ap_sig_allocacmp_j_1[5:1]}};
        lshr_ln8_reg_3332_pp0_iter1_reg <= lshr_ln8_reg_3332;
        lshr_ln8_reg_3332_pp0_iter2_reg <= lshr_ln8_reg_3332_pp0_iter1_reg;
        lshr_ln8_reg_3332_pp0_iter3_reg <= lshr_ln8_reg_3332_pp0_iter2_reg;
        lshr_ln8_reg_3332_pp0_iter4_reg <= lshr_ln8_reg_3332_pp0_iter3_reg;
        mul8_4_8_reg_4869_pp0_iter2_reg <= mul8_4_8_reg_4869;
        mul8_5_8_reg_4884_pp0_iter2_reg <= mul8_5_8_reg_4884;
        mul8_6_8_reg_4899_pp0_iter2_reg <= mul8_6_8_reg_4899;
        mul8_7_8_reg_4914_pp0_iter2_reg <= mul8_7_8_reg_4914;
        mul_ln36_reg_3338 <= mul_ln36_fu_1486_p2;
        tmp_60_reg_3367 <= {{mul_ln36_fu_1486_p2[8:1]}};
        tmp_61_reg_3372 <= {{mul_ln36_fu_1486_p2[8:2]}};
        tmp_65_reg_3328 <= ap_sig_allocacmp_j_1[32'd6];
        tmp_65_reg_3328_pp0_iter1_reg <= tmp_65_reg_3328;
        tmp_65_reg_3328_pp0_iter2_reg <= tmp_65_reg_3328_pp0_iter1_reg;
        tmp_65_reg_3328_pp0_iter3_reg <= tmp_65_reg_3328_pp0_iter2_reg;
        trunc_ln36_reg_3378 <= trunc_ln36_fu_1512_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln36_13_reg_3474 <= {{empty_68_fu_1593_p2[9:1]}};
        lshr_ln36_7_reg_3449 <= {{empty_67_fu_1563_p2[9:1]}};
        mul8_4_9_reg_4969_pp0_iter2_reg <= mul8_4_9_reg_4969;
        mul8_4_9_reg_4969_pp0_iter3_reg <= mul8_4_9_reg_4969_pp0_iter2_reg;
        mul8_5_9_reg_4979_pp0_iter2_reg <= mul8_5_9_reg_4979;
        mul8_5_9_reg_4979_pp0_iter3_reg <= mul8_5_9_reg_4979_pp0_iter2_reg;
        mul8_6_9_reg_4989_pp0_iter2_reg <= mul8_6_9_reg_4989;
        mul8_6_9_reg_4989_pp0_iter3_reg <= mul8_6_9_reg_4989_pp0_iter2_reg;
        mul8_7_9_reg_4999_pp0_iter2_reg <= mul8_7_9_reg_4999;
        mul8_7_9_reg_4999_pp0_iter3_reg <= mul8_7_9_reg_4999_pp0_iter2_reg;
        zext_ln36_40_reg_3464[8 : 0] <= zext_ln36_40_fu_1588_p1[8 : 0];
        zext_ln36_60_reg_3489[8 : 0] <= zext_ln36_60_fu_1618_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln36_20_reg_3534 <= {{empty_69_fu_1683_p2[9:1]}};
        mul8_10_reg_5009_pp0_iter2_reg <= mul8_10_reg_5009;
        mul8_10_reg_5009_pp0_iter3_reg <= mul8_10_reg_5009_pp0_iter2_reg;
        mul8_1_s_reg_5014_pp0_iter2_reg <= mul8_1_s_reg_5014;
        mul8_1_s_reg_5014_pp0_iter3_reg <= mul8_1_s_reg_5014_pp0_iter2_reg;
        mul8_2_s_reg_5019_pp0_iter2_reg <= mul8_2_s_reg_5019;
        mul8_2_s_reg_5019_pp0_iter3_reg <= mul8_2_s_reg_5019_pp0_iter2_reg;
        mul8_3_s_reg_5024_pp0_iter2_reg <= mul8_3_s_reg_5024;
        mul8_3_s_reg_5024_pp0_iter3_reg <= mul8_3_s_reg_5024_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_10_reg_5009 <= grp_fu_955_p_dout0;
        mul8_1_s_reg_5014 <= grp_fu_959_p_dout0;
        mul8_2_s_reg_5019 <= grp_fu_963_p_dout0;
        mul8_3_s_reg_5024 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_11_reg_5049 <= grp_fu_955_p_dout0;
        mul8_1_10_reg_5054 <= grp_fu_959_p_dout0;
        mul8_2_10_reg_5059 <= grp_fu_963_p_dout0;
        mul8_3_10_reg_5064 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_11_reg_5049_pp0_iter2_reg <= mul8_11_reg_5049;
        mul8_11_reg_5049_pp0_iter3_reg <= mul8_11_reg_5049_pp0_iter2_reg;
        mul8_1_10_reg_5054_pp0_iter2_reg <= mul8_1_10_reg_5054;
        mul8_1_10_reg_5054_pp0_iter3_reg <= mul8_1_10_reg_5054_pp0_iter2_reg;
        mul8_2_10_reg_5059_pp0_iter2_reg <= mul8_2_10_reg_5059;
        mul8_2_10_reg_5059_pp0_iter3_reg <= mul8_2_10_reg_5059_pp0_iter2_reg;
        mul8_3_10_reg_5064_pp0_iter2_reg <= mul8_3_10_reg_5064;
        mul8_3_10_reg_5064_pp0_iter3_reg <= mul8_3_10_reg_5064_pp0_iter2_reg;
        zext_ln36_1_reg_3589[8 : 1] <= zext_ln36_1_fu_1770_p1[8 : 1];
        zext_ln36_21_reg_3614[8 : 0] <= zext_ln36_21_fu_1800_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_12_reg_5089 <= grp_fu_955_p_dout0;
        mul8_1_11_reg_5094 <= grp_fu_959_p_dout0;
        mul8_2_11_reg_5099 <= grp_fu_963_p_dout0;
        mul8_3_11_reg_5104 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_12_reg_5089_pp0_iter2_reg <= mul8_12_reg_5089;
        mul8_12_reg_5089_pp0_iter3_reg <= mul8_12_reg_5089_pp0_iter2_reg;
        mul8_1_11_reg_5094_pp0_iter2_reg <= mul8_1_11_reg_5094;
        mul8_1_11_reg_5094_pp0_iter3_reg <= mul8_1_11_reg_5094_pp0_iter2_reg;
        mul8_2_11_reg_5099_pp0_iter2_reg <= mul8_2_11_reg_5099;
        mul8_2_11_reg_5099_pp0_iter3_reg <= mul8_2_11_reg_5099_pp0_iter2_reg;
        mul8_3_11_reg_5104_pp0_iter2_reg <= mul8_3_11_reg_5104;
        mul8_3_11_reg_5104_pp0_iter3_reg <= mul8_3_11_reg_5104_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul8_13_reg_4029 <= grp_fu_955_p_dout0;
        mul8_1_2_reg_4049 <= grp_fu_959_p_dout0;
        mul8_2_2_reg_4064 <= grp_fu_963_p_dout0;
        mul8_3_2_reg_4084 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul8_14_reg_4169 <= grp_fu_955_p_dout0;
        mul8_1_3_reg_4184 <= grp_fu_959_p_dout0;
        mul8_2_3_reg_4199 <= grp_fu_963_p_dout0;
        mul8_3_3_reg_4214 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        mul8_15_reg_4289 <= grp_fu_955_p_dout0;
        mul8_1_4_reg_4309 <= grp_fu_959_p_dout0;
        mul8_2_4_reg_4324 <= grp_fu_963_p_dout0;
        mul8_3_4_reg_4344 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        mul8_16_reg_4429 <= grp_fu_955_p_dout0;
        mul8_1_5_reg_4444 <= grp_fu_959_p_dout0;
        mul8_2_5_reg_4459 <= grp_fu_963_p_dout0;
        mul8_3_5_reg_4474 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        mul8_16_reg_4429_pp0_iter1_reg <= mul8_16_reg_4429;
        mul8_1_5_reg_4444_pp0_iter1_reg <= mul8_1_5_reg_4444;
        mul8_2_5_reg_4459_pp0_iter1_reg <= mul8_2_5_reg_4459;
        mul8_3_5_reg_4474_pp0_iter1_reg <= mul8_3_5_reg_4474;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        mul8_17_reg_4549 <= grp_fu_955_p_dout0;
        mul8_1_6_reg_4569 <= grp_fu_959_p_dout0;
        mul8_2_6_reg_4584 <= grp_fu_963_p_dout0;
        mul8_3_6_reg_4604 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        mul8_17_reg_4549_pp0_iter1_reg <= mul8_17_reg_4549;
        mul8_1_6_reg_4569_pp0_iter1_reg <= mul8_1_6_reg_4569;
        mul8_2_6_reg_4584_pp0_iter1_reg <= mul8_2_6_reg_4584;
        mul8_3_6_reg_4604_pp0_iter1_reg <= mul8_3_6_reg_4604;
        zext_ln36_25_reg_4594[8 : 0] <= zext_ln36_25_fu_2770_p1[8 : 0];
        zext_ln36_5_reg_4559[8 : 0] <= zext_ln36_5_fu_2740_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul8_18_reg_4689 <= grp_fu_955_p_dout0;
        mul8_1_7_reg_4704 <= grp_fu_959_p_dout0;
        mul8_2_7_reg_4719 <= grp_fu_963_p_dout0;
        mul8_3_7_reg_4734 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul8_18_reg_4689_pp0_iter1_reg <= mul8_18_reg_4689;
        mul8_1_7_reg_4704_pp0_iter1_reg <= mul8_1_7_reg_4704;
        mul8_2_7_reg_4719_pp0_iter1_reg <= mul8_2_7_reg_4719;
        mul8_3_7_reg_4734_pp0_iter1_reg <= mul8_3_7_reg_4734;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_1_1_reg_3919 <= grp_fu_955_p_dout0;
        mul8_2_1_reg_3934 <= grp_fu_959_p_dout0;
        mul8_3_1_reg_3949 <= grp_fu_963_p_dout0;
        mul8_7_reg_3964 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul8_1_8_reg_4824 <= grp_fu_959_p_dout0;
        mul8_2_8_reg_4839 <= grp_fu_963_p_dout0;
        mul8_3_8_reg_4854 <= grp_fu_967_p_dout0;
        mul8_8_reg_4809 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul8_1_8_reg_4824_pp0_iter1_reg <= mul8_1_8_reg_4824;
        mul8_2_8_reg_4839_pp0_iter1_reg <= mul8_2_8_reg_4839;
        mul8_3_8_reg_4854_pp0_iter1_reg <= mul8_3_8_reg_4854;
        mul8_8_reg_4809_pp0_iter1_reg <= mul8_8_reg_4809;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_9_reg_4939 <= grp_fu_959_p_dout0;
        mul8_2_9_reg_4949 <= grp_fu_963_p_dout0;
        mul8_3_9_reg_4959 <= grp_fu_967_p_dout0;
        mul8_9_reg_4929 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_reg_3794 <= grp_fu_963_p_dout0;
        mul8_2_reg_3809 <= grp_fu_967_p_dout0;
        mul8_reg_3769 <= grp_fu_955_p_dout0;
        mul8_s_reg_3774 <= grp_fu_959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_3_reg_3839 <= grp_fu_955_p_dout0;
        mul8_4_reg_3844 <= grp_fu_959_p_dout0;
        mul8_5_reg_3864 <= grp_fu_963_p_dout0;
        mul8_6_reg_3879 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_4_10_reg_5069 <= grp_fu_955_p_dout0;
        mul8_5_10_reg_5074 <= grp_fu_959_p_dout0;
        mul8_6_10_reg_5079 <= grp_fu_963_p_dout0;
        mul8_7_10_reg_5084 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_4_10_reg_5069_pp0_iter2_reg <= mul8_4_10_reg_5069;
        mul8_4_10_reg_5069_pp0_iter3_reg <= mul8_4_10_reg_5069_pp0_iter2_reg;
        mul8_5_10_reg_5074_pp0_iter2_reg <= mul8_5_10_reg_5074;
        mul8_5_10_reg_5074_pp0_iter3_reg <= mul8_5_10_reg_5074_pp0_iter2_reg;
        mul8_6_10_reg_5079_pp0_iter2_reg <= mul8_6_10_reg_5079;
        mul8_6_10_reg_5079_pp0_iter3_reg <= mul8_6_10_reg_5079_pp0_iter2_reg;
        mul8_7_10_reg_5084_pp0_iter2_reg <= mul8_7_10_reg_5084;
        mul8_7_10_reg_5084_pp0_iter3_reg <= mul8_7_10_reg_5084_pp0_iter2_reg;
        zext_ln36_41_reg_3644[8 : 0] <= zext_ln36_41_fu_1835_p1[8 : 0];
        zext_ln36_61_reg_3669[8 : 0] <= zext_ln36_61_fu_1865_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_4_11_reg_5109 <= grp_fu_955_p_dout0;
        mul8_5_11_reg_5114 <= grp_fu_959_p_dout0;
        mul8_6_11_reg_5119 <= grp_fu_963_p_dout0;
        mul8_7_11_reg_5124 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_4_11_reg_5109_pp0_iter2_reg <= mul8_4_11_reg_5109;
        mul8_4_11_reg_5109_pp0_iter3_reg <= mul8_4_11_reg_5109_pp0_iter2_reg;
        mul8_5_11_reg_5114_pp0_iter2_reg <= mul8_5_11_reg_5114;
        mul8_5_11_reg_5114_pp0_iter3_reg <= mul8_5_11_reg_5114_pp0_iter2_reg;
        mul8_6_11_reg_5119_pp0_iter2_reg <= mul8_6_11_reg_5119;
        mul8_6_11_reg_5119_pp0_iter3_reg <= mul8_6_11_reg_5119_pp0_iter2_reg;
        mul8_7_11_reg_5124_pp0_iter2_reg <= mul8_7_11_reg_5124;
        mul8_7_11_reg_5124_pp0_iter3_reg <= mul8_7_11_reg_5124_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_4_1_reg_3969 <= grp_fu_955_p_dout0;
        mul8_5_1_reg_3984 <= grp_fu_959_p_dout0;
        mul8_6_1_reg_3999 <= grp_fu_963_p_dout0;
        mul8_7_1_reg_4014 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul8_4_2_reg_4099 <= grp_fu_955_p_dout0;
        mul8_5_2_reg_4119 <= grp_fu_959_p_dout0;
        mul8_6_2_reg_4134 <= grp_fu_963_p_dout0;
        mul8_7_2_reg_4154 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        mul8_4_3_reg_4229 <= grp_fu_955_p_dout0;
        mul8_5_3_reg_4244 <= grp_fu_959_p_dout0;
        mul8_6_3_reg_4259 <= grp_fu_963_p_dout0;
        mul8_7_3_reg_4274 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        mul8_4_4_reg_4359 <= grp_fu_955_p_dout0;
        mul8_5_4_reg_4379 <= grp_fu_959_p_dout0;
        mul8_6_4_reg_4394 <= grp_fu_963_p_dout0;
        mul8_7_4_reg_4414 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        mul8_4_5_reg_4489 <= grp_fu_955_p_dout0;
        mul8_5_5_reg_4504 <= grp_fu_959_p_dout0;
        mul8_6_5_reg_4519 <= grp_fu_963_p_dout0;
        mul8_7_5_reg_4534 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        mul8_4_5_reg_4489_pp0_iter1_reg <= mul8_4_5_reg_4489;
        mul8_5_5_reg_4504_pp0_iter1_reg <= mul8_5_5_reg_4504;
        mul8_6_5_reg_4519_pp0_iter1_reg <= mul8_6_5_reg_4519;
        mul8_7_5_reg_4534_pp0_iter1_reg <= mul8_7_5_reg_4534;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul8_4_6_reg_4619 <= grp_fu_955_p_dout0;
        mul8_5_6_reg_4639 <= grp_fu_959_p_dout0;
        mul8_6_6_reg_4654 <= grp_fu_963_p_dout0;
        mul8_7_6_reg_4674 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul8_4_6_reg_4619_pp0_iter1_reg <= mul8_4_6_reg_4619;
        mul8_5_6_reg_4639_pp0_iter1_reg <= mul8_5_6_reg_4639;
        mul8_6_6_reg_4654_pp0_iter1_reg <= mul8_6_6_reg_4654;
        mul8_7_6_reg_4674_pp0_iter1_reg <= mul8_7_6_reg_4674;
        zext_ln36_45_reg_4629[8 : 0] <= zext_ln36_45_fu_2800_p1[8 : 0];
        zext_ln36_65_reg_4664[8 : 0] <= zext_ln36_65_fu_2830_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul8_4_7_reg_4749 <= grp_fu_955_p_dout0;
        mul8_5_7_reg_4764 <= grp_fu_959_p_dout0;
        mul8_6_7_reg_4779 <= grp_fu_963_p_dout0;
        mul8_7_7_reg_4794 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul8_4_7_reg_4749_pp0_iter1_reg <= mul8_4_7_reg_4749;
        mul8_5_7_reg_4764_pp0_iter1_reg <= mul8_5_7_reg_4764;
        mul8_6_7_reg_4779_pp0_iter1_reg <= mul8_6_7_reg_4779;
        mul8_7_7_reg_4794_pp0_iter1_reg <= mul8_7_7_reg_4794;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_4_8_reg_4869 <= grp_fu_955_p_dout0;
        mul8_5_8_reg_4884 <= grp_fu_959_p_dout0;
        mul8_6_8_reg_4899 <= grp_fu_963_p_dout0;
        mul8_7_8_reg_4914 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_4_9_reg_4969 <= grp_fu_955_p_dout0;
        mul8_5_9_reg_4979 <= grp_fu_959_p_dout0;
        mul8_6_9_reg_4989 <= grp_fu_963_p_dout0;
        mul8_7_9_reg_4999 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_4_s_reg_5029 <= grp_fu_955_p_dout0;
        mul8_5_s_reg_5034 <= grp_fu_959_p_dout0;
        mul8_6_s_reg_5039 <= grp_fu_963_p_dout0;
        mul8_7_s_reg_5044 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_4_s_reg_5029_pp0_iter2_reg <= mul8_4_s_reg_5029;
        mul8_4_s_reg_5029_pp0_iter3_reg <= mul8_4_s_reg_5029_pp0_iter2_reg;
        mul8_5_s_reg_5034_pp0_iter2_reg <= mul8_5_s_reg_5034;
        mul8_5_s_reg_5034_pp0_iter3_reg <= mul8_5_s_reg_5034_pp0_iter2_reg;
        mul8_6_s_reg_5039_pp0_iter2_reg <= mul8_6_s_reg_5039;
        mul8_6_s_reg_5039_pp0_iter3_reg <= mul8_6_s_reg_5039_pp0_iter2_reg;
        mul8_7_s_reg_5044_pp0_iter2_reg <= mul8_7_s_reg_5044;
        mul8_7_s_reg_5044_pp0_iter3_reg <= mul8_7_s_reg_5044_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1270 <= weights1_0_q1;
        reg_1274 <= weights1_1_q1;
        reg_1278 <= weights1_1_q0;
        reg_1282 <= weights1_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1286 <= grp_fu_939_p_dout0;
        reg_1291 <= grp_fu_943_p_dout0;
        reg_1296 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1301 <= grp_fu_939_p_dout0;
        reg_1306 <= grp_fu_943_p_dout0;
        reg_1311 <= grp_fu_947_p_dout0;
        reg_1316 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1321 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1327 <= grp_fu_939_p_dout0;
        reg_1332 <= grp_fu_943_p_dout0;
        reg_1337 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1342 <= grp_fu_939_p_dout0;
        reg_1347 <= grp_fu_943_p_dout0;
        reg_1352 <= grp_fu_947_p_dout0;
        reg_1357 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1362 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1367 <= grp_fu_939_p_dout0;
        reg_1372 <= grp_fu_943_p_dout0;
        reg_1377 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1382 <= grp_fu_939_p_dout0;
        reg_1387 <= grp_fu_943_p_dout0;
        reg_1392 <= grp_fu_947_p_dout0;
        reg_1397 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1402 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1407 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1414 <= grp_fu_943_p_dout0;
        reg_1421 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1428 <= grp_fu_943_p_dout0;
        reg_1433 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1438 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1445 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1450 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_63_reg_5139 <= {{j_1_reg_3320_pp0_iter4_reg[5:3]}};
        tmp_66_reg_5145 <= j_1_reg_3320_pp0_iter4_reg[32'd1];
        zext_ln34_1_reg_5134[4 : 1] <= zext_ln34_1_fu_3162_p1[4 : 1];
        zext_ln36_42_reg_3854[8 : 0] <= zext_ln36_42_fu_2078_p1[8 : 0];
        zext_ln36_62_reg_3889[8 : 0] <= zext_ln36_62_fu_2108_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        zext_ln34_3_reg_5150[4 : 2] <= zext_ln34_3_fu_3204_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        zext_ln36_22_reg_3819[8 : 0] <= zext_ln36_22_fu_2048_p1[8 : 0];
        zext_ln36_2_reg_3784[0] <= zext_ln36_2_fu_2018_p1[0];
zext_ln36_2_reg_3784[8 : 2] <= zext_ln36_2_fu_2018_p1[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        zext_ln36_23_reg_4074[8 : 0] <= zext_ln36_23_fu_2290_p1[8 : 0];
        zext_ln36_3_reg_4039[8 : 2] <= zext_ln36_3_fu_2260_p1[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        zext_ln36_24_reg_4334[8 : 0] <= zext_ln36_24_fu_2530_p1[8 : 0];
        zext_ln36_4_reg_4299[8 : 0] <= zext_ln36_4_fu_2500_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        zext_ln36_43_reg_4109[8 : 0] <= zext_ln36_43_fu_2320_p1[8 : 0];
        zext_ln36_63_reg_4144[8 : 0] <= zext_ln36_63_fu_2350_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        zext_ln36_44_reg_4369[8 : 0] <= zext_ln36_44_fu_2560_p1[8 : 0];
        zext_ln36_64_reg_4404[8 : 0] <= zext_ln36_64_fu_2590_p1[8 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_0_address0_local = zext_ln34_3_fu_3204_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_0_address0_local = zext_ln34_1_fu_3162_p1;
        end else begin
            activations_0_address0_local = 'bx;
        end
    end else begin
        activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_0_address1_local = zext_ln34_2_fu_3191_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_0_address1_local = zext_ln32_fu_3140_p1;
        end else begin
            activations_0_address1_local = 'bx;
        end
    end else begin
        activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_0_ce1_local = 1'b1;
    end else begin
        activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_0_d0_local = reg_1438;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_0_d0_local = reg_1450;
        end else begin
            activations_0_d0_local = 'bx;
        end
    end else begin
        activations_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_0_we1_local = 1'b1;
    end else begin
        activations_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_1_address0_local = zext_ln34_2_fu_3191_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_1_address0_local = zext_ln32_fu_3140_p1;
        end else begin
            activations_1_address0_local = 'bx;
        end
    end else begin
        activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            activations_1_address1_local = zext_ln34_3_reg_5150;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_1_address1_local = zext_ln34_1_reg_5134;
        end else begin
            activations_1_address1_local = 'bx;
        end
    end else begin
        activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        activations_1_ce1_local = 1'b1;
    end else begin
        activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            activations_1_d1_local = reg_1438;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_1_d1_local = reg_1407;
        end else begin
            activations_1_d1_local = 'bx;
        end
    end else begin
        activations_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        activations_1_we1_local = 1'b1;
    end else begin
        activations_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_65_reg_3328 == 1'd1) & (1'b0 == ap_block_pp0_stage25_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_condition_exit_pp0_iter0_stage25 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage25 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (tmp_65_reg_3328_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter3_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage25_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_220;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1234_p0 = reg_1407;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1234_p0 = add11_3_9_reg_5129;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1234_p0 = reg_1382;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1234_p0 = reg_1367;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1234_p0 = reg_1342;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_1234_p0 = reg_1327;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1234_p0 = reg_1321;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1234_p0 = reg_1301;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1234_p0 = reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1234_p0 = mul8_7_reg_3964;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1234_p0 = mul8_3_reg_3839;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1234_p0 = mul8_reg_3769;
    end else begin
        grp_fu_1234_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1234_p1 = mul8_3_11_reg_5104_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1234_p1 = mul8_3_10_reg_5064_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1234_p1 = mul8_3_s_reg_5024_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1234_p1 = mul8_3_9_reg_4959_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1234_p1 = mul8_9_reg_4929_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1234_p1 = mul8_3_8_reg_4854_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1234_p1 = mul8_8_reg_4809_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1234_p1 = mul8_3_7_reg_4734_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1234_p1 = mul8_18_reg_4689_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1234_p1 = mul8_3_6_reg_4604_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1234_p1 = mul8_17_reg_4549_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1234_p1 = mul8_3_5_reg_4474_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1234_p1 = mul8_16_reg_4429_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1234_p1 = mul8_3_4_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1234_p1 = mul8_15_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1234_p1 = mul8_3_3_reg_4214;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1234_p1 = mul8_14_reg_4169;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1234_p1 = mul8_7_2_reg_4154;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1234_p1 = mul8_3_2_reg_4084;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1234_p1 = mul8_13_reg_4029;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1234_p1 = mul8_7_1_reg_4014;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1234_p1 = mul8_3_1_reg_3949;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1234_p1 = mul8_s_reg_3774;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1234_p1 = 64'd0;
    end else begin
        grp_fu_1234_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1239_p0 = reg_1414;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1239_p0 = reg_1428;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1239_p0 = reg_1407;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1239_p0 = reg_1387;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1239_p0 = reg_1372;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1239_p0 = reg_1347;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_1239_p0 = reg_1332;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1239_p0 = reg_1306;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1239_p0 = reg_1291;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1239_p0 = mul8_4_reg_3844;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1239_p0 = mul8_1_reg_3794;
    end else begin
        grp_fu_1239_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1239_p1 = mul8_4_11_reg_5109_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1239_p1 = mul8_12_reg_5089_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1239_p1 = mul8_4_10_reg_5069_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1239_p1 = mul8_11_reg_5049_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1239_p1 = mul8_4_s_reg_5029_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1239_p1 = mul8_10_reg_5009_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1239_p1 = mul8_4_9_reg_4969_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1239_p1 = mul8_1_9_reg_4939_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1239_p1 = mul8_4_8_reg_4869_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1239_p1 = mul8_1_8_reg_4824_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1239_p1 = mul8_4_7_reg_4749_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1239_p1 = mul8_1_7_reg_4704_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1239_p1 = mul8_4_6_reg_4619_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1239_p1 = mul8_1_6_reg_4569_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1239_p1 = mul8_4_5_reg_4489_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1239_p1 = mul8_1_5_reg_4444_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1239_p1 = mul8_4_4_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1239_p1 = mul8_1_4_reg_4309;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1239_p1 = mul8_4_3_reg_4229;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1239_p1 = mul8_1_3_reg_4184;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1239_p1 = mul8_4_2_reg_4099;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1239_p1 = mul8_1_2_reg_4049;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1239_p1 = mul8_4_1_reg_3969;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1239_p1 = mul8_1_1_reg_3919;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1239_p1 = 64'd0;
    end else begin
        grp_fu_1239_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1244_p0 = reg_1421;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1244_p0 = reg_1433;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1244_p0 = reg_1414;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1244_p0 = reg_1392;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1244_p0 = reg_1377;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1244_p0 = reg_1352;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_1244_p0 = reg_1337;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1244_p0 = reg_1311;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1244_p0 = reg_1296;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1244_p0 = mul8_5_reg_3864;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1244_p0 = mul8_2_reg_3809;
    end else begin
        grp_fu_1244_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1244_p1 = mul8_5_11_reg_5114_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1244_p1 = mul8_1_11_reg_5094_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1244_p1 = mul8_5_10_reg_5074_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1244_p1 = mul8_1_10_reg_5054_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1244_p1 = mul8_5_s_reg_5034_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1244_p1 = mul8_1_s_reg_5014_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1244_p1 = mul8_5_9_reg_4979_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1244_p1 = mul8_2_9_reg_4949_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1244_p1 = mul8_5_8_reg_4884_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1244_p1 = mul8_2_8_reg_4839_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1244_p1 = mul8_5_7_reg_4764_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1244_p1 = mul8_2_7_reg_4719_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1244_p1 = mul8_5_6_reg_4639_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1244_p1 = mul8_2_6_reg_4584_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1244_p1 = mul8_5_5_reg_4504_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1244_p1 = mul8_2_5_reg_4459_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1244_p1 = mul8_5_4_reg_4379;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1244_p1 = mul8_2_4_reg_4324;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1244_p1 = mul8_5_3_reg_4244;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1244_p1 = mul8_2_3_reg_4199;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1244_p1 = mul8_5_2_reg_4119;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1244_p1 = mul8_2_2_reg_4064;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1244_p1 = mul8_5_1_reg_3984;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1244_p1 = mul8_2_1_reg_3934;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1244_p1 = 64'd0;
    end else begin
        grp_fu_1244_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1249_p0 = reg_1450;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1249_p0 = reg_1445;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1249_p0 = reg_1438;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1249_p0 = reg_1421;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_1249_p0 = reg_1402;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1249_p0 = reg_1397;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1249_p0 = reg_1362;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1249_p0 = reg_1357;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1249_p0 = reg_1321;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1249_p0 = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1249_p0 = mul8_6_reg_3879;
    end else begin
        grp_fu_1249_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1249_p1 = mul8_7_11_reg_5124_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1249_p1 = mul8_6_11_reg_5119_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1249_p1 = mul8_2_11_reg_5099_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1249_p1 = mul8_7_10_reg_5084_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1249_p1 = mul8_6_10_reg_5079_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1249_p1 = mul8_2_10_reg_5059_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1249_p1 = mul8_7_s_reg_5044_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1249_p1 = mul8_6_s_reg_5039_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1249_p1 = mul8_2_s_reg_5019_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1249_p1 = mul8_7_9_reg_4999_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1249_p1 = mul8_6_9_reg_4989_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1249_p1 = mul8_7_8_reg_4914_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1249_p1 = mul8_6_8_reg_4899_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1249_p1 = mul8_7_7_reg_4794_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1249_p1 = mul8_6_7_reg_4779_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1249_p1 = mul8_7_6_reg_4674_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1249_p1 = mul8_6_6_reg_4654_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1249_p1 = mul8_7_5_reg_4534_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1249_p1 = mul8_6_5_reg_4519_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1249_p1 = mul8_7_4_reg_4414;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1249_p1 = mul8_6_4_reg_4394;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1249_p1 = mul8_7_3_reg_4274;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1249_p1 = mul8_6_3_reg_4259;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1249_p1 = mul8_6_2_reg_4134;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1249_p1 = mul8_6_1_reg_3999;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1249_p1 = 64'd0;
    end else begin
        grp_fu_1249_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1254_p0 = bitcast_ln36_64_fu_3120_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1254_p0 = bitcast_ln36_12_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1254_p0 = bitcast_ln36_63_fu_3040_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1254_p0 = bitcast_ln36_11_fu_2970_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1254_p0 = bitcast_ln36_62_fu_2910_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1254_p0 = bitcast_ln36_10_fu_2850_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1254_p0 = bitcast_ln36_61_fu_2790_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1254_p0 = bitcast_ln36_9_fu_2730_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1254_p0 = bitcast_ln36_60_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1254_p0 = bitcast_ln36_8_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1254_p0 = bitcast_ln36_59_fu_2550_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1254_p0 = bitcast_ln36_7_fu_2490_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1254_p0 = bitcast_ln36_58_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1254_p0 = bitcast_ln36_6_fu_2370_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1254_p0 = bitcast_ln36_57_fu_2310_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1254_p0 = bitcast_ln36_5_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1254_p0 = bitcast_ln36_56_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1254_p0 = bitcast_ln36_4_fu_2128_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1254_p0 = bitcast_ln36_55_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1254_p0 = bitcast_ln36_3_fu_2005_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1254_p0 = bitcast_ln36_54_fu_1945_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1254_p0 = bitcast_ln36_2_fu_1885_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1254_p0 = bitcast_ln36_53_fu_1825_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1254_p0 = bitcast_ln36_14_fu_1775_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1254_p0 = bitcast_ln36_39_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1254_p0 = bitcast_ln36_fu_1623_p1;
    end else begin
        grp_fu_1254_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1254_p1 = tmp_11;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_1254_p1 = tmp_10;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_1254_p1 = tmp_s;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_1254_p1 = tmp_9;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1254_p1 = tmp_8;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_1254_p1 = tmp_7;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_1254_p1 = tmp_6;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_1254_p1 = tmp_5;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_1254_p1 = tmp_4;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1254_p1 = tmp_3;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1254_p1 = tmp_2;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1254_p1 = tmp_1;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1254_p1 = tmp;
    end else begin
        grp_fu_1254_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1258_p0 = bitcast_ln36_77_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1258_p0 = bitcast_ln36_25_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1258_p0 = bitcast_ln36_76_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1258_p0 = bitcast_ln36_24_fu_2985_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1258_p0 = bitcast_ln36_75_fu_2915_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1258_p0 = bitcast_ln36_23_fu_2855_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1258_p0 = bitcast_ln36_74_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1258_p0 = bitcast_ln36_22_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1258_p0 = bitcast_ln36_73_fu_2675_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1258_p0 = bitcast_ln36_21_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1258_p0 = bitcast_ln36_72_fu_2565_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1258_p0 = bitcast_ln36_20_fu_2505_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1258_p0 = bitcast_ln36_71_fu_2435_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1258_p0 = bitcast_ln36_19_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1258_p0 = bitcast_ln36_70_fu_2325_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1258_p0 = bitcast_ln36_18_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1258_p0 = bitcast_ln36_69_fu_2193_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1258_p0 = bitcast_ln36_17_fu_2133_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1258_p0 = bitcast_ln36_68_fu_2083_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1258_p0 = bitcast_ln36_16_fu_2023_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1258_p0 = bitcast_ln36_67_fu_1950_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1258_p0 = bitcast_ln36_15_fu_1890_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1258_p0 = bitcast_ln36_66_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1258_p0 = bitcast_ln36_27_fu_1790_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1258_p0 = bitcast_ln36_52_fu_1708_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1258_p0 = bitcast_ln36_1_fu_1628_p1;
    end else begin
        grp_fu_1258_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1258_p1 = tmp_11;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_1258_p1 = tmp_10;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_1258_p1 = tmp_s;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_1258_p1 = tmp_9;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1258_p1 = tmp_8;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_1258_p1 = tmp_7;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_1258_p1 = tmp_6;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_1258_p1 = tmp_5;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_1258_p1 = tmp_4;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1258_p1 = tmp_3;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1258_p1 = tmp_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1258_p1 = tmp;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1258_p1 = tmp_1;
    end else begin
        grp_fu_1258_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1262_p0 = bitcast_ln36_90_fu_3130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1262_p0 = bitcast_ln36_38_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1262_p0 = bitcast_ln36_89_fu_3070_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1262_p0 = bitcast_ln36_37_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1262_p0 = bitcast_ln36_88_fu_2940_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1262_p0 = bitcast_ln36_36_fu_2880_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1262_p0 = bitcast_ln36_87_fu_2820_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1262_p0 = bitcast_ln36_35_fu_2760_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1262_p0 = bitcast_ln36_86_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1262_p0 = bitcast_ln36_34_fu_2640_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1262_p0 = bitcast_ln36_85_fu_2580_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1262_p0 = bitcast_ln36_33_fu_2520_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1262_p0 = bitcast_ln36_84_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1262_p0 = bitcast_ln36_32_fu_2400_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1262_p0 = bitcast_ln36_83_fu_2340_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1262_p0 = bitcast_ln36_31_fu_2280_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1262_p0 = bitcast_ln36_82_fu_2218_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1262_p0 = bitcast_ln36_30_fu_2158_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1262_p0 = bitcast_ln36_81_fu_2098_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1262_p0 = bitcast_ln36_29_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1262_p0 = bitcast_ln36_80_fu_1975_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1262_p0 = bitcast_ln36_28_fu_1915_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1262_p0 = bitcast_ln36_79_fu_1855_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1262_p0 = bitcast_ln36_40_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1262_p0 = bitcast_ln36_65_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1262_p0 = bitcast_ln36_13_fu_1633_p1;
    end else begin
        grp_fu_1262_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1262_p1 = tmp_11;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_1262_p1 = tmp_10;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_1262_p1 = tmp_s;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_1262_p1 = tmp_9;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1262_p1 = tmp_8;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_1262_p1 = tmp_7;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_1262_p1 = tmp_6;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_1262_p1 = tmp_5;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_1262_p1 = tmp_4;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1262_p1 = tmp_3;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1262_p1 = tmp_2;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1262_p1 = tmp_1;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1262_p1 = tmp;
    end else begin
        grp_fu_1262_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1266_p0 = bitcast_ln36_103_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1266_p0 = bitcast_ln36_51_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1266_p0 = bitcast_ln36_102_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1266_p0 = bitcast_ln36_50_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1266_p0 = bitcast_ln36_101_fu_2945_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1266_p0 = bitcast_ln36_49_fu_2885_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1266_p0 = bitcast_ln36_100_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1266_p0 = bitcast_ln36_48_fu_2775_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1266_p0 = bitcast_ln36_99_fu_2705_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1266_p0 = bitcast_ln36_47_fu_2645_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1266_p0 = bitcast_ln36_98_fu_2595_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1266_p0 = bitcast_ln36_46_fu_2535_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1266_p0 = bitcast_ln36_97_fu_2465_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1266_p0 = bitcast_ln36_45_fu_2405_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1266_p0 = bitcast_ln36_96_fu_2355_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1266_p0 = bitcast_ln36_44_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1266_p0 = bitcast_ln36_95_fu_2223_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1266_p0 = bitcast_ln36_43_fu_2163_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1266_p0 = bitcast_ln36_94_fu_2113_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1266_p0 = bitcast_ln36_42_fu_2053_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1266_p0 = bitcast_ln36_93_fu_1980_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1266_p0 = bitcast_ln36_41_fu_1920_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1266_p0 = bitcast_ln36_92_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1266_p0 = bitcast_ln36_91_fu_1820_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1266_p0 = bitcast_ln36_78_fu_1738_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1266_p0 = bitcast_ln36_26_fu_1658_p1;
    end else begin
        grp_fu_1266_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1266_p1 = tmp_11;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_1266_p1 = tmp_10;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_1266_p1 = tmp_s;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_1266_p1 = tmp_9;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1266_p1 = tmp_8;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_1266_p1 = tmp_7;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_1266_p1 = tmp_6;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_1266_p1 = tmp_5;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_1266_p1 = tmp_4;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1266_p1 = tmp_3;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1266_p1 = tmp_2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1266_p1 = tmp_1;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1266_p1 = tmp;
    end else begin
        grp_fu_1266_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln36_66_fu_3080_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_0_address0_local = zext_ln36_26_fu_3010_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_0_address0_local = zext_ln36_78_fu_2965_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_0_address0_local = zext_ln36_38_fu_2905_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_0_address0_local = zext_ln36_65_fu_2830_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_0_address0_local = zext_ln36_25_fu_2770_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_0_address0_local = zext_ln36_76_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_0_address0_local = zext_ln36_36_fu_2665_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_0_address0_local = zext_ln36_64_fu_2590_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_0_address0_local = zext_ln36_24_fu_2530_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_0_address0_local = zext_ln36_74_fu_2485_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_0_address0_local = zext_ln36_34_fu_2425_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_0_address0_local = zext_ln36_63_fu_2350_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_0_address0_local = zext_ln36_23_fu_2290_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_0_address0_local = zext_ln36_72_fu_2243_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_0_address0_local = zext_ln36_32_fu_2183_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_0_address0_local = zext_ln36_62_fu_2108_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_0_address0_local = zext_ln36_22_fu_2048_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_address0_local = zext_ln36_70_fu_2000_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_address0_local = zext_ln36_30_fu_1940_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address0_local = zext_ln36_61_fu_1865_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address0_local = zext_ln36_21_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address0_local = zext_ln36_68_fu_1758_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln36_28_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address0_local = zext_ln36_60_fu_1618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln36_20_fu_1558_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address1_local = zext_ln36_46_fu_3050_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_0_address1_local = zext_ln36_6_fu_2980_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_0_address1_local = zext_ln36_58_fu_2935_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_0_address1_local = zext_ln36_18_fu_2875_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_0_address1_local = zext_ln36_45_fu_2800_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_0_address1_local = zext_ln36_5_fu_2740_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_0_address1_local = zext_ln36_56_fu_2695_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_0_address1_local = zext_ln36_16_fu_2635_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_0_address1_local = zext_ln36_44_fu_2560_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_0_address1_local = zext_ln36_4_fu_2500_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_0_address1_local = zext_ln36_54_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_0_address1_local = zext_ln36_14_fu_2395_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_0_address1_local = zext_ln36_43_fu_2320_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_0_address1_local = zext_ln36_3_fu_2260_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_0_address1_local = zext_ln36_52_fu_2213_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_0_address1_local = zext_ln36_12_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_0_address1_local = zext_ln36_42_fu_2078_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_0_address1_local = zext_ln36_2_fu_2018_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_address1_local = zext_ln36_50_fu_1970_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_address1_local = zext_ln36_10_fu_1910_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address1_local = zext_ln36_41_fu_1835_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address1_local = zext_ln36_1_fu_1770_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address1_local = zext_ln36_48_fu_1733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address1_local = zext_ln36_8_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address1_local = zext_ln36_40_fu_1588_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address1_local = zext_ln36_fu_1516_p1;
    end else begin
        weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln36_79_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_1_address0_local = zext_ln36_39_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_1_address0_local = zext_ln36_65_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_1_address0_local = zext_ln36_25_reg_4594;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_1_address0_local = zext_ln36_77_fu_2845_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_1_address0_local = zext_ln36_37_fu_2785_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_1_address0_local = zext_ln36_64_reg_4404;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_1_address0_local = zext_ln36_24_reg_4334;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_1_address0_local = zext_ln36_75_fu_2605_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_1_address0_local = zext_ln36_35_fu_2545_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_1_address0_local = zext_ln36_63_reg_4144;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_1_address0_local = zext_ln36_23_reg_4074;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_1_address0_local = zext_ln36_73_fu_2365_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_1_address0_local = zext_ln36_33_fu_2305_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_1_address0_local = zext_ln36_62_reg_3889;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_1_address0_local = zext_ln36_22_reg_3819;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_1_address0_local = zext_ln36_71_fu_2123_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_1_address0_local = zext_ln36_31_fu_2063_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_1_address0_local = zext_ln36_61_reg_3669;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_1_address0_local = zext_ln36_21_reg_3614;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address0_local = zext_ln36_69_fu_1880_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address0_local = zext_ln36_29_fu_1815_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address0_local = zext_ln36_60_reg_3489;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln36_67_fu_1698_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address0_local = zext_ln36_47_fu_1608_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln36_7_fu_1548_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address1_local = zext_ln36_59_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_1_address1_local = zext_ln36_19_fu_2995_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_1_address1_local = zext_ln36_45_reg_4629;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_1_address1_local = zext_ln36_5_reg_4559;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_1_address1_local = zext_ln36_57_fu_2815_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_1_address1_local = zext_ln36_17_fu_2755_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_1_address1_local = zext_ln36_44_reg_4369;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_1_address1_local = zext_ln36_4_reg_4299;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_1_address1_local = zext_ln36_55_fu_2575_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_1_address1_local = zext_ln36_15_fu_2515_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_1_address1_local = zext_ln36_43_reg_4109;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_1_address1_local = zext_ln36_3_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_1_address1_local = zext_ln36_53_fu_2335_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_1_address1_local = zext_ln36_13_fu_2275_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_1_address1_local = zext_ln36_42_reg_3854;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_1_address1_local = zext_ln36_2_reg_3784;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_1_address1_local = zext_ln36_51_fu_2093_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_1_address1_local = zext_ln36_11_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_1_address1_local = zext_ln36_41_reg_3644;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_1_address1_local = zext_ln36_1_reg_3589;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address1_local = zext_ln36_49_fu_1850_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address1_local = zext_ln36_9_fu_1785_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address1_local = zext_ln36_40_reg_3464;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address1_local = zext_ln36_20_reg_3439;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address1_local = zext_ln36_27_fu_1578_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address1_local = zext_ln36_fu_1516_p1;
    end else begin
        weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage12))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address0 = activations_0_address0_local;
assign activations_0_address1 = activations_0_address1_local;
assign activations_0_ce0 = activations_0_ce0_local;
assign activations_0_ce1 = activations_0_ce1_local;
assign activations_0_d0 = activations_0_d0_local;
assign activations_0_d1 = reg_1414;
assign activations_0_we0 = activations_0_we0_local;
assign activations_0_we1 = activations_0_we1_local;
assign activations_1_address0 = activations_1_address0_local;
assign activations_1_address1 = activations_1_address1_local;
assign activations_1_ce0 = activations_1_ce0_local;
assign activations_1_ce1 = activations_1_ce1_local;
assign activations_1_d0 = reg_1421;
assign activations_1_d1 = activations_1_d1_local;
assign activations_1_we0 = activations_1_we0_local;
assign activations_1_we1 = activations_1_we1_local;
assign add_ln33_fu_3030_p2 = (j_1_reg_3320 + 7'd8);
assign add_ln36_10_fu_2510_p2 = (lshr_ln9_reg_3424 + 9'd4);
assign add_ln36_11_fu_2620_p2 = (empty_reg_3393 + 10'd9);
assign add_ln36_12_fu_2750_p2 = (lshr_ln9_reg_3424 + 9'd5);
assign add_ln36_13_fu_2860_p2 = (empty_reg_3393 + 10'd11);
assign add_ln36_14_fu_2990_p2 = (lshr_ln9_reg_3424 + 9'd6);
assign add_ln36_15_fu_1553_p2 = (mul_ln36_reg_3338 + 9'd13);
assign add_ln36_16_fu_1795_p2 = (mul_ln36_reg_3338 + 9'd14);
assign add_ln36_17_fu_2043_p2 = (mul_ln36_reg_3338 + 9'd15);
assign add_ln36_18_fu_2285_p2 = (mul_ln36_reg_3338 + 9'd16);
assign add_ln36_19_fu_2525_p2 = (mul_ln36_reg_3338 + 9'd17);
assign add_ln36_1_fu_2735_p2 = (mul_ln36_reg_3338 + 9'd5);
assign add_ln36_20_fu_2765_p2 = (mul_ln36_reg_3338 + 9'd18);
assign add_ln36_21_fu_3005_p2 = (mul_ln36_reg_3338 + 9'd19);
assign add_ln36_22_fu_1663_p2 = (empty_reg_3393 + 10'd27);
assign add_ln36_23_fu_1810_p2 = (lshr_ln36_7_reg_3449 + 9'd1);
assign add_ln36_24_fu_1925_p2 = (empty_reg_3393 + 10'd29);
assign add_ln36_25_fu_2058_p2 = (lshr_ln36_7_reg_3449 + 9'd2);
assign add_ln36_26_fu_2168_p2 = (empty_reg_3393 + 10'd31);
assign add_ln36_27_fu_2300_p2 = (lshr_ln36_7_reg_3449 + 9'd3);
assign add_ln36_28_fu_2410_p2 = (empty_reg_3393 + 10'd33);
assign add_ln36_29_fu_2540_p2 = (lshr_ln36_7_reg_3449 + 9'd4);
assign add_ln36_2_fu_2975_p2 = (mul_ln36_reg_3338 + 9'd6);
assign add_ln36_30_fu_2650_p2 = (empty_reg_3393 + 10'd35);
assign add_ln36_31_fu_2780_p2 = (lshr_ln36_7_reg_3449 + 9'd5);
assign add_ln36_32_fu_2890_p2 = (empty_reg_3393 + 10'd37);
assign add_ln36_33_fu_3020_p2 = (lshr_ln36_7_reg_3449 + 9'd6);
assign add_ln36_34_fu_1583_p2 = (mul_ln36_reg_3338 + 9'd26);
assign add_ln36_35_fu_1830_p2 = (mul_ln36_reg_3338 + 9'd27);
assign add_ln36_36_fu_2073_p2 = (mul_ln36_reg_3338 + 9'd28);
assign add_ln36_37_fu_2315_p2 = (mul_ln36_reg_3338 + 9'd29);
assign add_ln36_38_fu_2555_p2 = (mul_ln36_reg_3338 + 9'd30);
assign add_ln36_39_fu_2795_p2 = (mul_ln36_reg_3338 + 9'd31);
assign add_ln36_3_fu_1638_p2 = (empty_reg_3393 + 10'd1);
assign add_ln36_40_fu_3045_p2 = (mul_ln36_reg_3338 + 9'd32);
assign add_ln36_41_fu_1718_p2 = (empty_reg_3393 + 10'd53);
assign add_ln36_42_fu_1845_p2 = (lshr_ln36_13_reg_3474 + 9'd1);
assign add_ln36_43_fu_1955_p2 = (empty_reg_3393 + 10'd55);
assign add_ln36_44_fu_2088_p2 = (lshr_ln36_13_reg_3474 + 9'd2);
assign add_ln36_45_fu_2198_p2 = (empty_reg_3393 + 10'd57);
assign add_ln36_46_fu_2330_p2 = (lshr_ln36_13_reg_3474 + 9'd3);
assign add_ln36_47_fu_2440_p2 = (empty_reg_3393 + 10'd59);
assign add_ln36_48_fu_2570_p2 = (lshr_ln36_13_reg_3474 + 9'd4);
assign add_ln36_49_fu_2680_p2 = (empty_reg_3393 + 10'd61);
assign add_ln36_4_fu_1780_p2 = (lshr_ln9_reg_3424 + 9'd1);
assign add_ln36_50_fu_2810_p2 = (lshr_ln36_13_reg_3474 + 9'd5);
assign add_ln36_51_fu_2920_p2 = (empty_reg_3393 + 10'd63);
assign add_ln36_52_fu_3060_p2 = (lshr_ln36_13_reg_3474 + 9'd6);
assign add_ln36_53_fu_1613_p2 = (mul_ln36_reg_3338 + 9'd39);
assign add_ln36_54_fu_1860_p2 = (mul_ln36_reg_3338 + 9'd40);
assign add_ln36_55_fu_2103_p2 = (mul_ln36_reg_3338 + 9'd41);
assign add_ln36_56_fu_2345_p2 = (mul_ln36_reg_3338 + 9'd42);
assign add_ln36_57_fu_2585_p2 = (mul_ln36_reg_3338 + 9'd43);
assign add_ln36_58_fu_2825_p2 = (mul_ln36_reg_3338 + 9'd44);
assign add_ln36_59_fu_3075_p2 = (mul_ln36_reg_3338 + 9'd45);
assign add_ln36_5_fu_1895_p2 = (empty_reg_3393 + 10'd3);
assign add_ln36_60_fu_1743_p2 = (empty_reg_3393 + 10'd79);
assign add_ln36_61_fu_1875_p2 = (lshr_ln36_20_reg_3534 + 9'd1);
assign add_ln36_62_fu_1985_p2 = (empty_reg_3393 + 10'd81);
assign add_ln36_63_fu_2118_p2 = (lshr_ln36_20_reg_3534 + 9'd2);
assign add_ln36_64_fu_2228_p2 = (empty_reg_3393 + 10'd83);
assign add_ln36_65_fu_2360_p2 = (lshr_ln36_20_reg_3534 + 9'd3);
assign add_ln36_66_fu_2470_p2 = (empty_reg_3393 + 10'd85);
assign add_ln36_67_fu_2600_p2 = (lshr_ln36_20_reg_3534 + 9'd4);
assign add_ln36_68_fu_2710_p2 = (empty_reg_3393 + 10'd87);
assign add_ln36_69_fu_2840_p2 = (lshr_ln36_20_reg_3534 + 9'd5);
assign add_ln36_6_fu_2028_p2 = (lshr_ln9_reg_3424 + 9'd2);
assign add_ln36_70_fu_2950_p2 = (empty_reg_3393 + 10'd89);
assign add_ln36_71_fu_3090_p2 = (lshr_ln36_20_reg_3534 + 9'd6);
assign add_ln36_7_fu_2138_p2 = (empty_reg_3393 + 10'd5);
assign add_ln36_8_fu_2270_p2 = (lshr_ln9_reg_3424 + 9'd3);
assign add_ln36_9_fu_2380_p2 = (empty_reg_3393 + 10'd7);
assign add_ln36_fu_2495_p2 = (mul_ln36_reg_3338 + 9'd4);
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
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage19_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage25;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_100_fu_2835_p1 = reg_1282;
assign bitcast_ln36_101_fu_2945_p1 = reg_1278;
assign bitcast_ln36_102_fu_3085_p1 = reg_1282;
assign bitcast_ln36_103_fu_3135_p1 = reg_1278;
assign bitcast_ln36_10_fu_2850_p1 = reg_1270;
assign bitcast_ln36_11_fu_2970_p1 = reg_1274;
assign bitcast_ln36_12_fu_3100_p1 = reg_1270;
assign bitcast_ln36_13_fu_1633_p1 = reg_1278;
assign bitcast_ln36_14_fu_1775_p1 = reg_1270;
assign bitcast_ln36_15_fu_1890_p1 = reg_1274;
assign bitcast_ln36_16_fu_2023_p1 = reg_1270;
assign bitcast_ln36_17_fu_2133_p1 = reg_1274;
assign bitcast_ln36_18_fu_2265_p1 = reg_1270;
assign bitcast_ln36_19_fu_2375_p1 = reg_1274;
assign bitcast_ln36_1_fu_1628_p1 = reg_1274;
assign bitcast_ln36_20_fu_2505_p1 = reg_1270;
assign bitcast_ln36_21_fu_2615_p1 = reg_1274;
assign bitcast_ln36_22_fu_2745_p1 = reg_1270;
assign bitcast_ln36_23_fu_2855_p1 = reg_1274;
assign bitcast_ln36_24_fu_2985_p1 = reg_1270;
assign bitcast_ln36_25_fu_3105_p1 = reg_1274;
assign bitcast_ln36_26_fu_1658_p1 = reg_1282;
assign bitcast_ln36_27_fu_1790_p1 = reg_1274;
assign bitcast_ln36_28_fu_1915_p1 = reg_1282;
assign bitcast_ln36_29_fu_2038_p1 = reg_1278;
assign bitcast_ln36_2_fu_1885_p1 = reg_1270;
assign bitcast_ln36_30_fu_2158_p1 = reg_1282;
assign bitcast_ln36_31_fu_2280_p1 = reg_1278;
assign bitcast_ln36_32_fu_2400_p1 = reg_1282;
assign bitcast_ln36_33_fu_2520_p1 = reg_1278;
assign bitcast_ln36_34_fu_2640_p1 = reg_1282;
assign bitcast_ln36_35_fu_2760_p1 = reg_1278;
assign bitcast_ln36_36_fu_2880_p1 = reg_1282;
assign bitcast_ln36_37_fu_3000_p1 = reg_1278;
assign bitcast_ln36_38_fu_3110_p1 = reg_1282;
assign bitcast_ln36_39_fu_1703_p1 = reg_1274;
assign bitcast_ln36_3_fu_2005_p1 = reg_1274;
assign bitcast_ln36_40_fu_1805_p1 = reg_1282;
assign bitcast_ln36_41_fu_1920_p1 = reg_1278;
assign bitcast_ln36_42_fu_2053_p1 = reg_1282;
assign bitcast_ln36_43_fu_2163_p1 = reg_1278;
assign bitcast_ln36_44_fu_2295_p1 = reg_1282;
assign bitcast_ln36_45_fu_2405_p1 = reg_1278;
assign bitcast_ln36_46_fu_2535_p1 = reg_1282;
assign bitcast_ln36_47_fu_2645_p1 = reg_1278;
assign bitcast_ln36_48_fu_2775_p1 = reg_1282;
assign bitcast_ln36_49_fu_2885_p1 = reg_1278;
assign bitcast_ln36_4_fu_2128_p1 = reg_1270;
assign bitcast_ln36_50_fu_3015_p1 = reg_1282;
assign bitcast_ln36_51_fu_3115_p1 = reg_1278;
assign bitcast_ln36_52_fu_1708_p1 = reg_1270;
assign bitcast_ln36_53_fu_1825_p1 = reg_1274;
assign bitcast_ln36_54_fu_1945_p1 = reg_1270;
assign bitcast_ln36_55_fu_2068_p1 = reg_1274;
assign bitcast_ln36_56_fu_2188_p1 = reg_1270;
assign bitcast_ln36_57_fu_2310_p1 = reg_1274;
assign bitcast_ln36_58_fu_2430_p1 = reg_1270;
assign bitcast_ln36_59_fu_2550_p1 = reg_1274;
assign bitcast_ln36_5_fu_2248_p1 = reg_1274;
assign bitcast_ln36_60_fu_2670_p1 = reg_1270;
assign bitcast_ln36_61_fu_2790_p1 = reg_1274;
assign bitcast_ln36_62_fu_2910_p1 = reg_1270;
assign bitcast_ln36_63_fu_3040_p1 = reg_1274;
assign bitcast_ln36_64_fu_3120_p1 = reg_1270;
assign bitcast_ln36_65_fu_1713_p1 = reg_1278;
assign bitcast_ln36_66_fu_1840_p1 = reg_1270;
assign bitcast_ln36_67_fu_1950_p1 = reg_1274;
assign bitcast_ln36_68_fu_2083_p1 = reg_1270;
assign bitcast_ln36_69_fu_2193_p1 = reg_1274;
assign bitcast_ln36_6_fu_2370_p1 = reg_1270;
assign bitcast_ln36_70_fu_2325_p1 = reg_1270;
assign bitcast_ln36_71_fu_2435_p1 = reg_1274;
assign bitcast_ln36_72_fu_2565_p1 = reg_1270;
assign bitcast_ln36_73_fu_2675_p1 = reg_1274;
assign bitcast_ln36_74_fu_2805_p1 = reg_1270;
assign bitcast_ln36_75_fu_2915_p1 = reg_1274;
assign bitcast_ln36_76_fu_3055_p1 = reg_1270;
assign bitcast_ln36_77_fu_3125_p1 = reg_1274;
assign bitcast_ln36_78_fu_1738_p1 = reg_1282;
assign bitcast_ln36_79_fu_1855_p1 = reg_1278;
assign bitcast_ln36_7_fu_2490_p1 = reg_1274;
assign bitcast_ln36_80_fu_1975_p1 = reg_1282;
assign bitcast_ln36_81_fu_2098_p1 = reg_1278;
assign bitcast_ln36_82_fu_2218_p1 = reg_1282;
assign bitcast_ln36_83_fu_2340_p1 = reg_1278;
assign bitcast_ln36_84_fu_2460_p1 = reg_1282;
assign bitcast_ln36_85_fu_2580_p1 = reg_1278;
assign bitcast_ln36_86_fu_2700_p1 = reg_1282;
assign bitcast_ln36_87_fu_2820_p1 = reg_1278;
assign bitcast_ln36_88_fu_2940_p1 = reg_1282;
assign bitcast_ln36_89_fu_3070_p1 = reg_1278;
assign bitcast_ln36_8_fu_2610_p1 = reg_1270;
assign bitcast_ln36_90_fu_3130_p1 = reg_1282;
assign bitcast_ln36_91_fu_1820_p1 = reg_1278;
assign bitcast_ln36_92_fu_1870_p1 = reg_1282;
assign bitcast_ln36_93_fu_1980_p1 = reg_1278;
assign bitcast_ln36_94_fu_2113_p1 = reg_1282;
assign bitcast_ln36_95_fu_2223_p1 = reg_1278;
assign bitcast_ln36_96_fu_2355_p1 = reg_1282;
assign bitcast_ln36_97_fu_2465_p1 = reg_1278;
assign bitcast_ln36_98_fu_2595_p1 = reg_1282;
assign bitcast_ln36_99_fu_2705_p1 = reg_1278;
assign bitcast_ln36_9_fu_2730_p1 = reg_1274;
assign bitcast_ln36_fu_1623_p1 = reg_1270;
assign empty_67_fu_1563_p2 = (empty_reg_3393 + 10'd26);
assign empty_68_fu_1593_p2 = (empty_reg_3393 + 10'd52);
assign empty_69_fu_1683_p2 = (empty_reg_3393 + 10'd78);
assign empty_fu_1532_p0 = empty_fu_1532_p00;
assign empty_fu_1532_p00 = or_ln7_fu_1521_p3;
assign empty_fu_1532_p1 = 10'd13;
assign grp_fu_939_p_ce = 1'b1;
assign grp_fu_939_p_din0 = grp_fu_1234_p0;
assign grp_fu_939_p_din1 = grp_fu_1234_p1;
assign grp_fu_939_p_opcode = 2'd0;
assign grp_fu_943_p_ce = 1'b1;
assign grp_fu_943_p_din0 = grp_fu_1239_p0;
assign grp_fu_943_p_din1 = grp_fu_1239_p1;
assign grp_fu_943_p_opcode = 2'd0;
assign grp_fu_947_p_ce = 1'b1;
assign grp_fu_947_p_din0 = grp_fu_1244_p0;
assign grp_fu_947_p_din1 = grp_fu_1244_p1;
assign grp_fu_947_p_opcode = 2'd0;
assign grp_fu_951_p_ce = 1'b1;
assign grp_fu_951_p_din0 = grp_fu_1249_p0;
assign grp_fu_951_p_din1 = grp_fu_1249_p1;
assign grp_fu_951_p_opcode = 2'd0;
assign grp_fu_955_p_ce = 1'b1;
assign grp_fu_955_p_din0 = grp_fu_1254_p0;
assign grp_fu_955_p_din1 = grp_fu_1254_p1;
assign grp_fu_959_p_ce = 1'b1;
assign grp_fu_959_p_din0 = grp_fu_1258_p0;
assign grp_fu_959_p_din1 = grp_fu_1258_p1;
assign grp_fu_963_p_ce = 1'b1;
assign grp_fu_963_p_din0 = grp_fu_1262_p0;
assign grp_fu_963_p_din1 = grp_fu_1262_p1;
assign grp_fu_967_p_ce = 1'b1;
assign grp_fu_967_p_din0 = grp_fu_1266_p0;
assign grp_fu_967_p_din1 = grp_fu_1266_p1;
assign lshr_ln36_10_fu_2415_p4 = {{add_ln36_28_fu_2410_p2[9:1]}};
assign lshr_ln36_11_fu_2655_p4 = {{add_ln36_30_fu_2650_p2[9:1]}};
assign lshr_ln36_12_fu_2895_p4 = {{add_ln36_32_fu_2890_p2[9:1]}};
assign lshr_ln36_13_fu_1598_p4 = {{empty_68_fu_1593_p2[9:1]}};
assign lshr_ln36_14_fu_1723_p4 = {{add_ln36_41_fu_1718_p2[9:1]}};
assign lshr_ln36_15_fu_1960_p4 = {{add_ln36_43_fu_1955_p2[9:1]}};
assign lshr_ln36_16_fu_2203_p4 = {{add_ln36_45_fu_2198_p2[9:1]}};
assign lshr_ln36_17_fu_2445_p4 = {{add_ln36_47_fu_2440_p2[9:1]}};
assign lshr_ln36_18_fu_2685_p4 = {{add_ln36_49_fu_2680_p2[9:1]}};
assign lshr_ln36_19_fu_2925_p4 = {{add_ln36_51_fu_2920_p2[9:1]}};
assign lshr_ln36_1_fu_1643_p4 = {{add_ln36_3_fu_1638_p2[9:1]}};
assign lshr_ln36_20_fu_1688_p4 = {{empty_69_fu_1683_p2[9:1]}};
assign lshr_ln36_21_fu_1748_p4 = {{add_ln36_60_fu_1743_p2[9:1]}};
assign lshr_ln36_22_fu_1990_p4 = {{add_ln36_62_fu_1985_p2[9:1]}};
assign lshr_ln36_23_fu_2233_p4 = {{add_ln36_64_fu_2228_p2[9:1]}};
assign lshr_ln36_24_fu_2475_p4 = {{add_ln36_66_fu_2470_p2[9:1]}};
assign lshr_ln36_25_fu_2715_p4 = {{add_ln36_68_fu_2710_p2[9:1]}};
assign lshr_ln36_26_fu_2955_p4 = {{add_ln36_70_fu_2950_p2[9:1]}};
assign lshr_ln36_2_fu_1900_p4 = {{add_ln36_5_fu_1895_p2[9:1]}};
assign lshr_ln36_3_fu_2143_p4 = {{add_ln36_7_fu_2138_p2[9:1]}};
assign lshr_ln36_4_fu_2385_p4 = {{add_ln36_9_fu_2380_p2[9:1]}};
assign lshr_ln36_5_fu_2625_p4 = {{add_ln36_11_fu_2620_p2[9:1]}};
assign lshr_ln36_6_fu_2865_p4 = {{add_ln36_13_fu_2860_p2[9:1]}};
assign lshr_ln36_7_fu_1568_p4 = {{empty_67_fu_1563_p2[9:1]}};
assign lshr_ln36_8_fu_1668_p4 = {{add_ln36_22_fu_1663_p2[9:1]}};
assign lshr_ln36_9_fu_1930_p4 = {{add_ln36_24_fu_1925_p2[9:1]}};
assign lshr_ln36_s_fu_2173_p4 = {{add_ln36_26_fu_2168_p2[9:1]}};
assign lshr_ln8_fu_1472_p4 = {{ap_sig_allocacmp_j_1[5:1]}};
assign lshr_ln9_fu_1538_p4 = {{empty_fu_1532_p2[9:1]}};
assign mul_ln36_fu_1486_p0 = mul_ln36_fu_1486_p00;
assign mul_ln36_fu_1486_p00 = lshr_ln8_fu_1472_p4;
assign mul_ln36_fu_1486_p1 = 9'd13;
assign or_ln34_1_fu_3183_p4 = {{{tmp_63_reg_5139}, {1'd1}}, {tmp_66_reg_5145}};
assign or_ln34_2_fu_3197_p3 = {{tmp_63_reg_5139}, {2'd3}};
assign or_ln36_1_fu_2010_p4 = {{{tmp_61_reg_3372}, {1'd1}}, {trunc_ln36_reg_3378}};
assign or_ln36_2_fu_2253_p3 = {{tmp_61_reg_3372}, {2'd3}};
assign or_ln7_fu_1521_p3 = {{lshr_ln8_reg_3332}, {1'd1}};
assign or_ln8_fu_3154_p3 = {{tmp_62_fu_3145_p4}, {1'd1}};
assign or_ln_fu_1763_p3 = {{tmp_60_reg_3367}, {1'd1}};
assign tmp_62_fu_3145_p4 = {{j_1_reg_3320_pp0_iter4_reg[5:2]}};
assign trunc_ln36_fu_1512_p1 = mul_ln36_fu_1486_p2[0:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_address1 = weights1_0_address1_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_address1 = weights1_1_address1_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign zext_ln32_fu_3140_p1 = lshr_ln8_reg_3332_pp0_iter4_reg;
assign zext_ln34_1_fu_3162_p1 = or_ln8_fu_3154_p3;
assign zext_ln34_2_fu_3191_p1 = or_ln34_1_fu_3183_p4;
assign zext_ln34_3_fu_3204_p1 = or_ln34_2_fu_3197_p3;
assign zext_ln36_10_fu_1910_p1 = lshr_ln36_2_fu_1900_p4;
assign zext_ln36_11_fu_2033_p1 = add_ln36_6_fu_2028_p2;
assign zext_ln36_12_fu_2153_p1 = lshr_ln36_3_fu_2143_p4;
assign zext_ln36_13_fu_2275_p1 = add_ln36_8_fu_2270_p2;
assign zext_ln36_14_fu_2395_p1 = lshr_ln36_4_fu_2385_p4;
assign zext_ln36_15_fu_2515_p1 = add_ln36_10_fu_2510_p2;
assign zext_ln36_16_fu_2635_p1 = lshr_ln36_5_fu_2625_p4;
assign zext_ln36_17_fu_2755_p1 = add_ln36_12_fu_2750_p2;
assign zext_ln36_18_fu_2875_p1 = lshr_ln36_6_fu_2865_p4;
assign zext_ln36_19_fu_2995_p1 = add_ln36_14_fu_2990_p2;
assign zext_ln36_1_fu_1770_p1 = or_ln_fu_1763_p3;
assign zext_ln36_20_fu_1558_p1 = add_ln36_15_fu_1553_p2;
assign zext_ln36_21_fu_1800_p1 = add_ln36_16_fu_1795_p2;
assign zext_ln36_22_fu_2048_p1 = add_ln36_17_fu_2043_p2;
assign zext_ln36_23_fu_2290_p1 = add_ln36_18_fu_2285_p2;
assign zext_ln36_24_fu_2530_p1 = add_ln36_19_fu_2525_p2;
assign zext_ln36_25_fu_2770_p1 = add_ln36_20_fu_2765_p2;
assign zext_ln36_26_fu_3010_p1 = add_ln36_21_fu_3005_p2;
assign zext_ln36_27_fu_1578_p1 = lshr_ln36_7_fu_1568_p4;
assign zext_ln36_28_fu_1678_p1 = lshr_ln36_8_fu_1668_p4;
assign zext_ln36_29_fu_1815_p1 = add_ln36_23_fu_1810_p2;
assign zext_ln36_2_fu_2018_p1 = or_ln36_1_fu_2010_p4;
assign zext_ln36_30_fu_1940_p1 = lshr_ln36_9_fu_1930_p4;
assign zext_ln36_31_fu_2063_p1 = add_ln36_25_fu_2058_p2;
assign zext_ln36_32_fu_2183_p1 = lshr_ln36_s_fu_2173_p4;
assign zext_ln36_33_fu_2305_p1 = add_ln36_27_fu_2300_p2;
assign zext_ln36_34_fu_2425_p1 = lshr_ln36_10_fu_2415_p4;
assign zext_ln36_35_fu_2545_p1 = add_ln36_29_fu_2540_p2;
assign zext_ln36_36_fu_2665_p1 = lshr_ln36_11_fu_2655_p4;
assign zext_ln36_37_fu_2785_p1 = add_ln36_31_fu_2780_p2;
assign zext_ln36_38_fu_2905_p1 = lshr_ln36_12_fu_2895_p4;
assign zext_ln36_39_fu_3025_p1 = add_ln36_33_fu_3020_p2;
assign zext_ln36_3_fu_2260_p1 = or_ln36_2_fu_2253_p3;
assign zext_ln36_40_fu_1588_p1 = add_ln36_34_fu_1583_p2;
assign zext_ln36_41_fu_1835_p1 = add_ln36_35_fu_1830_p2;
assign zext_ln36_42_fu_2078_p1 = add_ln36_36_fu_2073_p2;
assign zext_ln36_43_fu_2320_p1 = add_ln36_37_fu_2315_p2;
assign zext_ln36_44_fu_2560_p1 = add_ln36_38_fu_2555_p2;
assign zext_ln36_45_fu_2800_p1 = add_ln36_39_fu_2795_p2;
assign zext_ln36_46_fu_3050_p1 = add_ln36_40_fu_3045_p2;
assign zext_ln36_47_fu_1608_p1 = lshr_ln36_13_fu_1598_p4;
assign zext_ln36_48_fu_1733_p1 = lshr_ln36_14_fu_1723_p4;
assign zext_ln36_49_fu_1850_p1 = add_ln36_42_fu_1845_p2;
assign zext_ln36_4_fu_2500_p1 = add_ln36_fu_2495_p2;
assign zext_ln36_50_fu_1970_p1 = lshr_ln36_15_fu_1960_p4;
assign zext_ln36_51_fu_2093_p1 = add_ln36_44_fu_2088_p2;
assign zext_ln36_52_fu_2213_p1 = lshr_ln36_16_fu_2203_p4;
assign zext_ln36_53_fu_2335_p1 = add_ln36_46_fu_2330_p2;
assign zext_ln36_54_fu_2455_p1 = lshr_ln36_17_fu_2445_p4;
assign zext_ln36_55_fu_2575_p1 = add_ln36_48_fu_2570_p2;
assign zext_ln36_56_fu_2695_p1 = lshr_ln36_18_fu_2685_p4;
assign zext_ln36_57_fu_2815_p1 = add_ln36_50_fu_2810_p2;
assign zext_ln36_58_fu_2935_p1 = lshr_ln36_19_fu_2925_p4;
assign zext_ln36_59_fu_3065_p1 = add_ln36_52_fu_3060_p2;
assign zext_ln36_5_fu_2740_p1 = add_ln36_1_fu_2735_p2;
assign zext_ln36_60_fu_1618_p1 = add_ln36_53_fu_1613_p2;
assign zext_ln36_61_fu_1865_p1 = add_ln36_54_fu_1860_p2;
assign zext_ln36_62_fu_2108_p1 = add_ln36_55_fu_2103_p2;
assign zext_ln36_63_fu_2350_p1 = add_ln36_56_fu_2345_p2;
assign zext_ln36_64_fu_2590_p1 = add_ln36_57_fu_2585_p2;
assign zext_ln36_65_fu_2830_p1 = add_ln36_58_fu_2825_p2;
assign zext_ln36_66_fu_3080_p1 = add_ln36_59_fu_3075_p2;
assign zext_ln36_67_fu_1698_p1 = lshr_ln36_20_fu_1688_p4;
assign zext_ln36_68_fu_1758_p1 = lshr_ln36_21_fu_1748_p4;
assign zext_ln36_69_fu_1880_p1 = add_ln36_61_fu_1875_p2;
assign zext_ln36_6_fu_2980_p1 = add_ln36_2_fu_2975_p2;
assign zext_ln36_70_fu_2000_p1 = lshr_ln36_22_fu_1990_p4;
assign zext_ln36_71_fu_2123_p1 = add_ln36_63_fu_2118_p2;
assign zext_ln36_72_fu_2243_p1 = lshr_ln36_23_fu_2233_p4;
assign zext_ln36_73_fu_2365_p1 = add_ln36_65_fu_2360_p2;
assign zext_ln36_74_fu_2485_p1 = lshr_ln36_24_fu_2475_p4;
assign zext_ln36_75_fu_2605_p1 = add_ln36_67_fu_2600_p2;
assign zext_ln36_76_fu_2725_p1 = lshr_ln36_25_fu_2715_p4;
assign zext_ln36_77_fu_2845_p1 = add_ln36_69_fu_2840_p2;
assign zext_ln36_78_fu_2965_p1 = lshr_ln36_26_fu_2955_p4;
assign zext_ln36_79_fu_3095_p1 = add_ln36_71_fu_3090_p2;
assign zext_ln36_7_fu_1548_p1 = lshr_ln9_fu_1538_p4;
assign zext_ln36_8_fu_1653_p1 = lshr_ln36_1_fu_1643_p4;
assign zext_ln36_9_fu_1785_p1 = add_ln36_4_fu_1780_p2;
assign zext_ln36_fu_1516_p1 = mul_ln36_reg_3338;
always @ (posedge ap_clk) begin
    zext_ln36_20_reg_3439[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_40_reg_3464[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_60_reg_3489[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_1_reg_3589[0] <= 1'b1;
    zext_ln36_1_reg_3589[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_21_reg_3614[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_41_reg_3644[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_61_reg_3669[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_2_reg_3784[1] <= 1'b1;
    zext_ln36_2_reg_3784[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_22_reg_3819[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_42_reg_3854[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_62_reg_3889[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_3_reg_4039[1:0] <= 2'b11;
    zext_ln36_3_reg_4039[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_23_reg_4074[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_43_reg_4109[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_63_reg_4144[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_4_reg_4299[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_24_reg_4334[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_44_reg_4369[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_64_reg_4404[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_5_reg_4559[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_25_reg_4594[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_45_reg_4629[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_65_reg_4664[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln34_1_reg_5134[0] <= 1'b1;
    zext_ln34_1_reg_5134[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln34_3_reg_5150[1:0] <= 2'b11;
    zext_ln34_3_reg_5150[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
