module stencil3d_stencil3d_Pipeline_loop_height_loop_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_7_address1,sol_7_ce1,sol_7_we1,sol_7_d1,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_6_address1,sol_6_ce1,sol_6_we1,sol_6_d1,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_2_address1,sol_2_ce1,sol_2_we1,sol_2_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [10:0] sol_7_address1;
output   sol_7_ce1;
output   sol_7_we1;
output  [31:0] sol_7_d1;
output  [10:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [10:0] sol_6_address1;
output   sol_6_ce1;
output   sol_6_we1;
output  [31:0] sol_6_d1;
output  [10:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [10:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_2_address1;
output   sol_2_ce1;
output   sol_2_we1;
output  [31:0] sol_2_d1;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [10:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [10:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [10:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [10:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [10:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [10:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [10:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [10:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [10:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln36_fu_2419_p2;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_1444;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg  signed [31:0] reg_1448;
wire    ap_block_pp0_stage7_11001;
reg  signed [31:0] reg_1453;
reg  signed [31:0] reg_1458;
reg   [31:0] reg_1463;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_1467;
reg   [31:0] reg_1472;
reg   [31:0] reg_1476;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] reg_1481;
reg   [31:0] reg_1486;
wire   [31:0] grp_fu_1440_p2;
reg   [31:0] reg_1490;
reg   [31:0] reg_1494;
wire   [31:0] grp_fu_1416_p2;
reg   [31:0] reg_1499;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_1503;
reg   [31:0] reg_1508;
reg   [31:0] reg_1512;
reg   [31:0] reg_1517;
reg   [31:0] reg_1521;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_1526;
reg   [31:0] reg_1530;
reg   [31:0] reg_1535;
reg   [31:0] reg_1539;
reg   [31:0] reg_1543;
reg   [31:0] reg_1547;
reg   [31:0] reg_1552;
reg   [31:0] reg_1557;
reg   [31:0] reg_1563;
reg   [31:0] reg_1567;
wire   [31:0] grp_fu_1420_p2;
reg   [31:0] reg_1571;
reg   [31:0] reg_1575;
wire   [31:0] grp_fu_1424_p2;
reg   [31:0] reg_1579;
reg   [31:0] reg_1583;
wire   [31:0] grp_fu_1428_p2;
reg   [31:0] reg_1587;
reg   [31:0] reg_1591;
wire   [31:0] grp_fu_1432_p2;
reg   [31:0] reg_1596;
wire   [31:0] grp_fu_1436_p2;
reg   [31:0] reg_1600;
reg   [31:0] reg_1604;
reg   [31:0] reg_1609;
reg   [31:0] reg_1613;
reg   [31:0] reg_1617;
reg   [31:0] reg_1621;
reg   [31:0] reg_1625;
reg   [31:0] reg_1629;
reg   [31:0] reg_1633;
reg   [31:0] reg_1637;
reg   [31:0] reg_1641;
wire   [4:0] select_ln11_fu_1674_p3;
reg   [4:0] select_ln11_reg_2998;
wire   [4:0] i_fu_1682_p3;
reg   [4:0] i_reg_3009;
wire   [63:0] p_cast117_fu_1700_p1;
reg   [63:0] p_cast117_reg_3018;
reg   [63:0] p_cast117_reg_3018_pp0_iter1_reg;
wire   [63:0] zext_ln44_fu_1722_p1;
reg   [63:0] zext_ln44_reg_3069;
reg   [63:0] zext_ln44_reg_3069_pp0_iter1_reg;
wire   [4:0] empty_7_fu_1749_p2;
reg   [4:0] empty_7_reg_3116;
wire   [63:0] zext_ln39_fu_1763_p1;
reg   [63:0] zext_ln39_reg_3124;
reg   [63:0] zext_ln39_reg_3124_pp0_iter1_reg;
reg  signed [31:0] sum0_reg_3137;
reg  signed [31:0] sum0_1_reg_3149;
reg  signed [31:0] sum0_5_reg_3197;
reg  signed [31:0] sum0_6_reg_3215;
reg  signed [31:0] sum0_7_reg_3233;
wire   [63:0] zext_ln42_fu_1807_p1;
reg   [63:0] zext_ln42_reg_3241;
reg   [63:0] zext_ln42_reg_3241_pp0_iter1_reg;
reg   [63:0] zext_ln42_reg_3241_pp0_iter2_reg;
wire   [63:0] zext_ln43_1_fu_1822_p1;
reg   [63:0] zext_ln43_1_reg_3263;
reg   [63:0] zext_ln43_1_reg_3263_pp0_iter1_reg;
reg  signed [31:0] sum0_8_reg_3278;
reg  signed [31:0] sum0_9_reg_3291;
reg  signed [31:0] sum0_10_reg_3299;
reg  signed [31:0] sum0_10_reg_3299_pp0_iter1_reg;
reg  signed [31:0] sum0_11_reg_3307;
reg  signed [31:0] sum0_11_reg_3307_pp0_iter1_reg;
reg  signed [31:0] sum0_12_reg_3315;
reg  signed [31:0] sum0_12_reg_3315_pp0_iter1_reg;
reg  signed [31:0] sum0_13_reg_3323;
reg  signed [31:0] sum0_13_reg_3323_pp0_iter1_reg;
wire   [9:0] tmp_fu_1827_p3;
reg   [9:0] tmp_reg_3330;
wire   [4:0] tmp_3_fu_1846_p4;
reg   [4:0] tmp_3_reg_3335;
wire   [4:0] tmp_4_fu_1856_p4;
reg   [4:0] tmp_4_reg_3341;
reg  signed [31:0] sum0_15_reg_3348;
reg  signed [31:0] sum0_15_reg_3348_pp0_iter1_reg;
reg  signed [31:0] sum0_16_reg_3356;
reg  signed [31:0] sum0_17_reg_3364;
reg   [31:0] orig_4_load_3_reg_3372;
reg  signed [31:0] sum0_18_reg_3377;
reg   [31:0] orig_5_load_3_reg_3385;
reg  signed [31:0] sum0_19_reg_3390;
reg  signed [31:0] sum0_20_reg_3398;
reg  signed [31:0] sum0_21_reg_3406;
reg  signed [31:0] sum0_22_reg_3414;
wire   [63:0] zext_ln40_2_fu_1875_p1;
reg   [63:0] zext_ln40_2_reg_3452;
wire   [63:0] zext_ln41_2_fu_1889_p1;
reg   [63:0] zext_ln41_2_reg_3462;
wire   [63:0] zext_ln40_3_fu_1903_p1;
reg   [63:0] zext_ln40_3_reg_3482;
wire   [31:0] add_ln48_3_fu_1916_p2;
reg   [31:0] add_ln48_3_reg_3497;
reg   [31:0] mul_ln48_reg_3502;
reg   [31:0] mul_ln48_2_reg_3507;
reg   [31:0] mul_ln48_4_reg_3512;
reg   [31:0] mul_ln48_6_reg_3517;
reg   [31:0] mul_ln48_8_reg_3522;
reg   [31:0] mul_ln48_10_reg_3527;
reg  signed [31:0] sum0_23_reg_3532;
reg  signed [31:0] sum0_23_reg_3532_pp0_iter1_reg;
reg  signed [31:0] sum0_24_reg_3540;
reg  signed [31:0] sum0_24_reg_3540_pp0_iter1_reg;
reg  signed [31:0] sum0_25_reg_3548;
reg  signed [31:0] sum0_25_reg_3548_pp0_iter1_reg;
reg  signed [31:0] sum0_26_reg_3556;
reg  signed [31:0] sum0_26_reg_3556_pp0_iter1_reg;
reg  signed [31:0] sum0_27_reg_3564;
reg  signed [31:0] sum0_27_reg_3564_pp0_iter1_reg;
wire   [63:0] zext_ln42_1_fu_1949_p1;
reg   [63:0] zext_ln42_1_reg_3571;
reg   [31:0] orig_7_load_6_reg_3635;
wire   [63:0] zext_ln41_3_fu_1963_p1;
reg   [63:0] zext_ln41_3_reg_3645;
reg   [63:0] zext_ln41_3_reg_3645_pp0_iter1_reg;
wire   [63:0] zext_ln42_2_fu_1976_p1;
reg   [63:0] zext_ln42_2_reg_3660;
wire   [0:0] icmp_ln37_fu_1981_p2;
reg   [0:0] icmp_ln37_reg_3680;
wire   [63:0] zext_ln40_fu_2000_p1;
reg   [63:0] zext_ln40_reg_3685;
wire   [63:0] zext_ln41_fu_2013_p1;
reg   [63:0] zext_ln41_reg_3695;
wire   [63:0] zext_ln40_1_fu_2026_p1;
reg   [63:0] zext_ln40_1_reg_3715;
wire   [63:0] zext_ln41_1_fu_2039_p1;
reg   [63:0] zext_ln41_1_reg_3730;
reg   [31:0] mul_ln48_16_reg_3745;
reg   [31:0] mul_ln48_16_reg_3745_pp0_iter1_reg;
reg   [31:0] mul_ln48_18_reg_3750;
reg   [31:0] mul_ln48_18_reg_3750_pp0_iter1_reg;
reg   [31:0] mul_ln48_20_reg_3755;
reg   [31:0] mul_ln48_20_reg_3755_pp0_iter1_reg;
reg   [31:0] mul_ln48_22_reg_3760;
reg   [31:0] mul_ln48_22_reg_3760_pp0_iter1_reg;
reg   [31:0] mul_ln48_24_reg_3765;
reg   [31:0] mul_ln48_24_reg_3765_pp0_iter1_reg;
reg   [31:0] mul_ln48_26_reg_3770;
reg   [31:0] mul_ln48_26_reg_3770_pp0_iter1_reg;
reg   [31:0] orig_1_load_11_reg_3775;
reg   [31:0] orig_0_load_9_reg_3805;
wire   [31:0] add_ln48_39_fu_2049_p2;
reg   [31:0] add_ln48_39_reg_3855;
wire   [31:0] add_ln48_45_fu_2059_p2;
reg   [31:0] add_ln48_45_reg_3860;
reg   [31:0] mul_ln48_30_reg_3865;
wire   [31:0] add_ln48_123_fu_2069_p2;
reg   [31:0] add_ln48_123_reg_3870;
wire   [31:0] add_ln48_129_fu_2080_p2;
reg   [31:0] add_ln48_129_reg_3875;
reg   [31:0] mul_ln48_42_reg_3880;
reg   [31:0] orig_2_load_12_reg_3885;
reg   [31:0] orig_3_load_12_reg_3900;
reg   [31:0] orig_4_load_12_reg_3915;
reg   [31:0] orig_5_load_12_reg_3930;
wire   [31:0] add_ln48_33_fu_2091_p2;
reg   [31:0] add_ln48_33_reg_4000;
wire  signed [31:0] add_ln48_40_fu_2107_p2;
reg  signed [31:0] add_ln48_40_reg_4005;
wire  signed [31:0] add_ln48_46_fu_2123_p2;
reg  signed [31:0] add_ln48_46_reg_4010;
wire   [31:0] add_ln48_93_fu_2134_p2;
reg   [31:0] add_ln48_93_reg_4025;
wire   [31:0] add_ln48_99_fu_2146_p2;
reg   [31:0] add_ln48_99_reg_4030;
wire   [31:0] add_ln48_105_fu_2158_p2;
reg   [31:0] add_ln48_105_reg_4035;
wire   [31:0] add_ln48_111_fu_2170_p2;
reg   [31:0] add_ln48_111_reg_4040;
wire   [31:0] add_ln48_117_fu_2182_p2;
reg   [31:0] add_ln48_117_reg_4045;
wire  signed [31:0] add_ln48_124_fu_2197_p2;
reg  signed [31:0] add_ln48_124_reg_4050;
wire  signed [31:0] add_ln48_130_fu_2211_p2;
reg  signed [31:0] add_ln48_130_reg_4055;
wire   [31:0] add_ln48_135_fu_2222_p2;
reg   [31:0] add_ln48_135_reg_4060;
reg   [31:0] mul_ln48_44_reg_4065;
reg   [31:0] mul_ln48_46_reg_4070;
reg   [31:0] mul_ln48_46_reg_4070_pp0_iter1_reg;
reg   [31:0] mul_ln48_48_reg_4075;
reg   [31:0] mul_ln48_48_reg_4075_pp0_iter1_reg;
reg   [31:0] mul_ln48_50_reg_4080;
reg   [31:0] mul_ln48_50_reg_4080_pp0_iter1_reg;
reg   [31:0] mul_ln48_52_reg_4085;
reg   [31:0] mul_ln48_52_reg_4085_pp0_iter1_reg;
reg   [31:0] orig_6_load_14_reg_4090;
reg   [31:0] mul_ln48_54_reg_4095;
reg   [31:0] mul_ln48_54_reg_4095_pp0_iter1_reg;
wire   [31:0] add_ln48_fu_2231_p2;
reg   [31:0] add_ln48_reg_4100;
wire   [31:0] add_ln48_9_fu_2243_p2;
reg   [31:0] add_ln48_9_reg_4105;
wire   [31:0] add_ln48_15_fu_2254_p2;
reg   [31:0] add_ln48_15_reg_4110;
wire   [31:0] add_ln48_18_fu_2259_p2;
reg   [31:0] add_ln48_18_reg_4115;
wire   [31:0] add_ln48_21_fu_2270_p2;
reg   [31:0] add_ln48_21_reg_4120;
wire   [31:0] add_ln48_24_fu_2275_p2;
reg   [31:0] add_ln48_24_reg_4125;
wire   [31:0] add_ln48_27_fu_2285_p2;
reg   [31:0] add_ln48_27_reg_4130;
wire   [31:0] add_ln48_30_fu_2290_p2;
reg   [31:0] add_ln48_30_reg_4135;
wire  signed [31:0] add_ln48_100_fu_2306_p2;
reg  signed [31:0] add_ln48_100_reg_4195;
wire  signed [31:0] add_ln48_106_fu_2321_p2;
reg  signed [31:0] add_ln48_106_reg_4200;
wire  signed [31:0] add_ln48_112_fu_2336_p2;
reg  signed [31:0] add_ln48_112_reg_4205;
wire  signed [31:0] add_ln48_118_fu_2350_p2;
reg  signed [31:0] add_ln48_118_reg_4210;
wire  signed [31:0] add_ln48_136_fu_2364_p2;
reg  signed [31:0] add_ln48_136_reg_4215;
wire   [31:0] add_ln48_141_fu_2375_p2;
reg   [31:0] add_ln48_141_reg_4220;
wire   [31:0] add_ln48_147_fu_2386_p2;
reg   [31:0] add_ln48_147_reg_4225;
wire   [31:0] add_ln48_153_fu_2397_p2;
reg   [31:0] add_ln48_153_reg_4230;
wire   [31:0] add_ln48_159_fu_2408_p2;
reg   [31:0] add_ln48_159_reg_4235;
reg   [0:0] icmp_ln36_reg_4245;
reg   [0:0] icmp_ln36_reg_4245_pp0_iter1_reg;
wire  signed [31:0] add_ln48_4_fu_2435_p2;
reg  signed [31:0] add_ln48_4_reg_4249;
wire  signed [31:0] add_ln48_10_fu_2451_p2;
reg  signed [31:0] add_ln48_10_reg_4254;
wire  signed [31:0] add_ln48_16_fu_2467_p2;
reg  signed [31:0] add_ln48_16_reg_4259;
wire  signed [31:0] add_ln48_22_fu_2477_p2;
reg  signed [31:0] add_ln48_22_reg_4264;
wire  signed [31:0] add_ln48_28_fu_2487_p2;
reg  signed [31:0] add_ln48_28_reg_4269;
wire  signed [31:0] add_ln48_34_fu_2497_p2;
reg  signed [31:0] add_ln48_34_reg_4274;
wire   [31:0] add_ln48_48_fu_2502_p2;
reg   [31:0] add_ln48_48_reg_4279;
wire   [31:0] add_ln48_51_fu_2512_p2;
reg   [31:0] add_ln48_51_reg_4284;
wire   [31:0] add_ln48_54_fu_2517_p2;
reg   [31:0] add_ln48_54_reg_4289;
wire   [31:0] add_ln48_60_fu_2522_p2;
reg   [31:0] add_ln48_60_reg_4294;
wire   [31:0] add_ln48_84_fu_2527_p2;
reg   [31:0] add_ln48_84_reg_4304;
wire  signed [31:0] add_ln48_94_fu_2542_p2;
reg  signed [31:0] add_ln48_94_reg_4309;
wire  signed [31:0] add_ln48_142_fu_2556_p2;
reg  signed [31:0] add_ln48_142_reg_4314;
wire  signed [31:0] add_ln48_52_fu_2580_p2;
reg  signed [31:0] add_ln48_52_reg_4319;
wire   [31:0] add_ln48_57_fu_2679_p2;
reg   [31:0] add_ln48_57_reg_4364;
wire   [31:0] add_ln48_63_fu_2689_p2;
reg   [31:0] add_ln48_63_reg_4369;
wire   [31:0] add_ln48_66_fu_2694_p2;
reg   [31:0] add_ln48_66_reg_4374;
wire   [31:0] add_ln48_69_fu_2704_p2;
reg   [31:0] add_ln48_69_reg_4379;
wire   [31:0] add_ln48_72_fu_2709_p2;
reg   [31:0] add_ln48_72_reg_4384;
wire   [31:0] add_ln48_75_fu_2719_p2;
reg   [31:0] add_ln48_75_reg_4389;
wire   [31:0] add_ln48_78_fu_2724_p2;
reg   [31:0] add_ln48_78_reg_4394;
wire   [31:0] add_ln48_81_fu_2735_p2;
reg   [31:0] add_ln48_81_reg_4399;
wire   [31:0] add_ln48_87_fu_2745_p2;
reg   [31:0] add_ln48_87_reg_4404;
wire  signed [31:0] add_ln48_148_fu_2760_p2;
reg  signed [31:0] add_ln48_148_reg_4409;
wire  signed [31:0] add_ln48_154_fu_2774_p2;
reg  signed [31:0] add_ln48_154_reg_4414;
wire  signed [31:0] add_ln48_160_fu_2788_p2;
reg  signed [31:0] add_ln48_160_reg_4419;
reg   [31:0] orig_7_load_8_reg_4429;
wire   [31:0] add_ln48_162_fu_2793_p2;
reg   [31:0] add_ln48_162_reg_4434;
wire  signed [31:0] add_ln48_58_fu_2803_p2;
reg  signed [31:0] add_ln48_58_reg_4439;
wire  signed [31:0] add_ln48_64_fu_2813_p2;
reg  signed [31:0] add_ln48_64_reg_4444;
wire  signed [31:0] add_ln48_70_fu_2823_p2;
reg  signed [31:0] add_ln48_70_reg_4449;
wire  signed [31:0] add_ln48_76_fu_2833_p2;
reg  signed [31:0] add_ln48_76_reg_4454;
wire  signed [31:0] add_ln48_82_fu_2843_p2;
reg  signed [31:0] add_ln48_82_reg_4459;
wire  signed [31:0] add_ln48_88_fu_2852_p2;
reg  signed [31:0] add_ln48_88_reg_4464;
wire   [31:0] add_ln48_165_fu_2861_p2;
reg   [31:0] add_ln48_165_reg_4469;
reg   [31:0] mul_ln48_19_reg_4474;
wire  signed [31:0] add_ln48_166_fu_2877_p2;
reg  signed [31:0] add_ln48_166_reg_4479;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] ap_phi_mux_icmp_ln376_phi_fu_1409_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln43_fu_1787_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
reg   [8:0] indvar_flatten2_fu_98;
wire   [8:0] add_ln36_fu_2413_p2;
reg   [4:0] i3_fu_102;
reg   [4:0] ap_sig_allocacmp_i3_load;
reg   [4:0] j4_fu_106;
wire   [4:0] j_fu_1928_p1;
reg   [4:0] ap_sig_allocacmp_j4_load;
reg   [4:0] indvars_iv_next4765_fu_110;
wire   [4:0] indvars_iv_next476_fu_1733_p2;
reg   [4:0] ap_sig_allocacmp_indvars_iv_next4765_load;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [10:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [10:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [10:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [10:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [10:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [10:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [10:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [10:0] orig_7_address0_local;
reg    sol_7_we1_local;
wire   [31:0] add_ln48_41_fu_2561_p2;
reg    sol_7_ce1_local;
reg    sol_7_we0_local;
wire   [31:0] add_ln48_125_fu_2585_p2;
reg    sol_7_ce0_local;
reg    sol_0_we1_local;
wire   [31:0] add_ln48_47_fu_2568_p2;
reg    sol_0_ce1_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_131_fu_2592_p2;
reg    sol_0_ce0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
wire   [31:0] add_ln48_101_fu_2598_p2;
reg    sol_3_ce0_local;
reg   [10:0] sol_3_address0_local;
wire   [31:0] add_ln48_17_fu_2644_p2;
wire   [31:0] add_ln48_65_fu_2887_p2;
wire   [31:0] add_ln48_149_fu_2924_p2;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
wire   [31:0] add_ln48_107_fu_2605_p2;
reg    sol_4_ce0_local;
reg   [10:0] sol_4_address0_local;
wire   [31:0] add_ln48_23_fu_2650_p2;
wire   [31:0] add_ln48_71_fu_2893_p2;
wire   [31:0] add_ln48_155_fu_2930_p2;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
wire   [31:0] add_ln48_113_fu_2612_p2;
reg    sol_5_ce0_local;
reg   [10:0] sol_5_address0_local;
wire   [31:0] add_ln48_29_fu_2656_p2;
wire   [31:0] add_ln48_77_fu_2899_p2;
wire   [31:0] add_ln48_161_fu_2936_p2;
reg    sol_6_we1_local;
reg   [31:0] sol_6_d1_local;
wire   [31:0] add_ln48_119_fu_2619_p2;
reg    sol_6_ce1_local;
reg   [10:0] sol_6_address1_local;
wire   [31:0] add_ln48_35_fu_2662_p2;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
wire   [31:0] add_ln48_83_fu_2905_p2;
reg    sol_6_ce0_local;
reg   [10:0] sol_6_address0_local;
wire   [31:0] add_ln48_167_fu_2942_p2;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_137_fu_2626_p2;
reg    sol_1_ce0_local;
reg   [10:0] sol_1_address0_local;
wire   [31:0] add_ln48_5_fu_2632_p2;
wire   [31:0] add_ln48_53_fu_2867_p2;
wire   [31:0] add_ln48_89_fu_2911_p2;
reg    sol_2_we1_local;
reg   [31:0] sol_2_d1_local;
wire   [31:0] add_ln48_11_fu_2638_p2;
reg    sol_2_ce1_local;
reg   [10:0] sol_2_address1_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
wire   [31:0] add_ln48_95_fu_2668_p2;
reg    sol_2_ce0_local;
reg   [10:0] sol_2_address0_local;
wire   [31:0] add_ln48_59_fu_2882_p2;
wire   [31:0] add_ln48_143_fu_2918_p2;
reg  signed [31:0] grp_fu_1416_p0;
reg  signed [31:0] grp_fu_1416_p1;
reg  signed [31:0] grp_fu_1420_p0;
reg  signed [31:0] grp_fu_1420_p1;
reg  signed [31:0] grp_fu_1424_p0;
reg  signed [31:0] grp_fu_1424_p1;
reg  signed [31:0] grp_fu_1428_p0;
reg  signed [31:0] grp_fu_1428_p1;
reg  signed [31:0] grp_fu_1432_p0;
reg  signed [31:0] grp_fu_1432_p1;
reg  signed [31:0] grp_fu_1436_p0;
reg  signed [31:0] grp_fu_1436_p1;
reg  signed [31:0] grp_fu_1440_p0;
reg  signed [31:0] grp_fu_1440_p1;
wire   [10:0] tmp_1_fu_1690_p4;
wire   [10:0] or_ln_fu_1712_p4;
wire   [10:0] tmp_2_fu_1754_p4;
wire   [4:0] add_ln43_fu_1773_p2;
wire   [10:0] shl_ln2_fu_1778_p4;
wire   [10:0] or_ln3_fu_1798_p4;
wire   [10:0] or_ln4_fu_1813_p4;
wire   [9:0] empty_fu_1834_p2;
wire   [9:0] empty_6_fu_1840_p2;
wire   [10:0] shl_ln40_1_fu_1866_p4;
wire   [10:0] shl_ln41_1_fu_1880_p4;
wire   [10:0] or_ln40_1_fu_1894_p4;
wire   [31:0] add_ln48_2_fu_1911_p2;
wire   [5:0] zext_ln37_fu_1908_p1;
wire   [5:0] indvars_iv_next_fu_1922_p2;
wire   [9:0] zext_ln12_fu_1932_p1;
wire   [9:0] add_ln42_fu_1936_p2;
wire   [10:0] shl_ln3_fu_1941_p3;
wire   [10:0] or_ln41_1_fu_1955_p4;
wire   [10:0] or_ln42_1_fu_1968_p3;
wire   [10:0] shl_ln_fu_1992_p4;
wire   [10:0] shl_ln1_fu_2005_p4;
wire   [10:0] or_ln1_fu_2018_p4;
wire   [10:0] or_ln2_fu_2031_p4;
wire   [31:0] add_ln48_38_fu_2044_p2;
wire   [31:0] add_ln48_44_fu_2054_p2;
wire   [31:0] add_ln48_122_fu_2064_p2;
wire   [31:0] add_ln48_128_fu_2075_p2;
wire   [31:0] add_ln48_32_fu_2086_p2;
wire   [31:0] add_ln48_36_fu_2096_p2;
wire   [31:0] add_ln48_37_fu_2101_p2;
wire   [31:0] add_ln48_42_fu_2112_p2;
wire   [31:0] add_ln48_43_fu_2117_p2;
wire   [31:0] add_ln48_92_fu_2128_p2;
wire   [31:0] add_ln48_98_fu_2140_p2;
wire   [31:0] add_ln48_104_fu_2152_p2;
wire   [31:0] add_ln48_110_fu_2164_p2;
wire   [31:0] add_ln48_116_fu_2176_p2;
wire   [31:0] add_ln48_120_fu_2188_p2;
wire   [31:0] add_ln48_121_fu_2192_p2;
wire   [31:0] add_ln48_126_fu_2202_p2;
wire   [31:0] add_ln48_127_fu_2206_p2;
wire   [31:0] add_ln48_134_fu_2216_p2;
wire  signed [31:0] add_ln48_fu_2231_p1;
wire   [31:0] add_ln48_8_fu_2237_p2;
wire   [31:0] add_ln48_14_fu_2248_p2;
wire   [31:0] add_ln48_20_fu_2265_p2;
wire   [31:0] add_ln48_26_fu_2281_p2;
wire   [31:0] add_ln48_96_fu_2296_p2;
wire   [31:0] add_ln48_97_fu_2300_p2;
wire   [31:0] add_ln48_102_fu_2311_p2;
wire   [31:0] add_ln48_103_fu_2315_p2;
wire   [31:0] add_ln48_108_fu_2326_p2;
wire   [31:0] add_ln48_109_fu_2330_p2;
wire   [31:0] add_ln48_114_fu_2341_p2;
wire   [31:0] add_ln48_115_fu_2345_p2;
wire   [31:0] add_ln48_132_fu_2355_p2;
wire   [31:0] add_ln48_133_fu_2359_p2;
wire   [31:0] add_ln48_140_fu_2369_p2;
wire   [31:0] add_ln48_146_fu_2380_p2;
wire   [31:0] add_ln48_152_fu_2391_p2;
wire   [31:0] add_ln48_158_fu_2402_p2;
wire   [31:0] add_ln48_1_fu_2430_p2;
wire   [31:0] add_ln48_6_fu_2440_p2;
wire   [31:0] add_ln48_7_fu_2445_p2;
wire   [31:0] add_ln48_12_fu_2456_p2;
wire   [31:0] add_ln48_13_fu_2461_p1;
wire   [31:0] add_ln48_13_fu_2461_p2;
wire   [31:0] add_ln48_19_fu_2472_p1;
wire   [31:0] add_ln48_19_fu_2472_p2;
wire   [31:0] add_ln48_25_fu_2482_p1;
wire   [31:0] add_ln48_25_fu_2482_p2;
wire   [31:0] add_ln48_31_fu_2492_p2;
wire   [31:0] add_ln48_50_fu_2507_p2;
wire  signed [31:0] add_ln48_90_fu_2532_p0;
wire   [31:0] add_ln48_90_fu_2532_p2;
wire   [31:0] add_ln48_91_fu_2537_p2;
wire   [31:0] add_ln48_138_fu_2547_p2;
wire   [31:0] add_ln48_139_fu_2551_p2;
wire   [31:0] add_ln48_49_fu_2575_p2;
wire   [31:0] add_ln48_56_fu_2674_p2;
wire   [31:0] add_ln48_62_fu_2684_p2;
wire   [31:0] add_ln48_68_fu_2699_p2;
wire   [31:0] add_ln48_74_fu_2714_p2;
wire   [31:0] add_ln48_80_fu_2729_p2;
wire   [31:0] add_ln48_86_fu_2740_p2;
wire   [31:0] add_ln48_144_fu_2751_p2;
wire   [31:0] add_ln48_145_fu_2755_p2;
wire   [31:0] add_ln48_150_fu_2765_p2;
wire   [31:0] add_ln48_151_fu_2769_p2;
wire   [31:0] add_ln48_156_fu_2779_p2;
wire   [31:0] add_ln48_157_fu_2783_p2;
wire   [31:0] add_ln48_55_fu_2798_p2;
wire   [31:0] add_ln48_61_fu_2808_p2;
wire   [31:0] add_ln48_67_fu_2818_p2;
wire   [31:0] add_ln48_73_fu_2828_p2;
wire   [31:0] add_ln48_79_fu_2838_p2;
wire   [31:0] add_ln48_85_fu_2848_p2;
wire   [31:0] add_ln48_164_fu_2857_p2;
wire   [31:0] add_ln48_163_fu_2873_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_2099;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_98 = 9'd0;
#0 i3_fu_102 = 5'd0;
#0 j4_fu_106 = 5'd0;
#0 indvars_iv_next4765_fu_110 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1416_p0),.din1(grp_fu_1416_p1),.ce(1'b1),.dout(grp_fu_1416_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1420_p0),.din1(grp_fu_1420_p1),.ce(1'b1),.dout(grp_fu_1420_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1424_p0),.din1(grp_fu_1424_p1),.ce(1'b1),.dout(grp_fu_1424_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1428_p0),.din1(grp_fu_1428_p1),.ce(1'b1),.dout(grp_fu_1428_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1432_p0),.din1(grp_fu_1432_p1),.ce(1'b1),.dout(grp_fu_1432_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1436_p0),.din1(grp_fu_1436_p1),.ce(1'b1),.dout(grp_fu_1436_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1440_p0),.din1(grp_fu_1440_p1),.ce(1'b1),.dout(grp_fu_1440_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            i3_fu_102 <= i_fu_1682_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i3_fu_102 <= 5'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_98 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        indvar_flatten2_fu_98 <= add_ln36_fu_2413_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvars_iv_next4765_fu_110 <= indvars_iv_next476_fu_1733_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next4765_fu_110 <= 5'd2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j4_fu_106 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        j4_fu_106 <= j_fu_1928_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1467 <= orig_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1467 <= orig_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1476 <= orig_6_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1476 <= orig_6_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1481 <= orig_7_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1481 <= orig_7_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1494 <= orig_7_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1494 <= orig_7_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1503 <= orig_2_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1503 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_1512 <= orig_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1512 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1521 <= orig_4_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1521 <= orig_4_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1530 <= orig_5_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1530 <= orig_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1547 <= orig_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1547 <= orig_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_1552 <= orig_0_q0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1552 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1557 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1557 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1591 <= orig_6_q0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1591 <= orig_6_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1604 <= orig_1_q0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1604 <= orig_1_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln48_100_reg_4195 <= add_ln48_100_fu_2306_p2;
        add_ln48_106_reg_4200 <= add_ln48_106_fu_2321_p2;
        add_ln48_112_reg_4205 <= add_ln48_112_fu_2336_p2;
        add_ln48_118_reg_4210 <= add_ln48_118_fu_2350_p2;
        add_ln48_136_reg_4215 <= add_ln48_136_fu_2364_p2;
        add_ln48_141_reg_4220 <= add_ln48_141_fu_2375_p2;
        add_ln48_147_reg_4225 <= add_ln48_147_fu_2386_p2;
        add_ln48_153_reg_4230 <= add_ln48_153_fu_2397_p2;
        add_ln48_159_reg_4235 <= add_ln48_159_fu_2408_p2;
        add_ln48_15_reg_4110 <= add_ln48_15_fu_2254_p2;
        add_ln48_166_reg_4479 <= add_ln48_166_fu_2877_p2;
        add_ln48_18_reg_4115 <= add_ln48_18_fu_2259_p2;
        add_ln48_21_reg_4120 <= add_ln48_21_fu_2270_p2;
        add_ln48_24_reg_4125 <= add_ln48_24_fu_2275_p2;
        add_ln48_27_reg_4130 <= add_ln48_27_fu_2285_p2;
        add_ln48_30_reg_4135 <= add_ln48_30_fu_2290_p2;
        add_ln48_9_reg_4105 <= add_ln48_9_fu_2243_p2;
        add_ln48_reg_4100 <= add_ln48_fu_2231_p2;
        icmp_ln36_reg_4245 <= icmp_ln36_fu_2419_p2;
        icmp_ln36_reg_4245_pp0_iter1_reg <= icmp_ln36_reg_4245;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln48_105_reg_4035 <= add_ln48_105_fu_2158_p2;
        add_ln48_111_reg_4040 <= add_ln48_111_fu_2170_p2;
        add_ln48_117_reg_4045 <= add_ln48_117_fu_2182_p2;
        add_ln48_124_reg_4050 <= add_ln48_124_fu_2197_p2;
        add_ln48_130_reg_4055 <= add_ln48_130_fu_2211_p2;
        add_ln48_135_reg_4060 <= add_ln48_135_fu_2222_p2;
        add_ln48_165_reg_4469 <= add_ln48_165_fu_2861_p2;
        add_ln48_33_reg_4000 <= add_ln48_33_fu_2091_p2;
        add_ln48_40_reg_4005 <= add_ln48_40_fu_2107_p2;
        add_ln48_46_reg_4010 <= add_ln48_46_fu_2123_p2;
        add_ln48_93_reg_4025 <= add_ln48_93_fu_2134_p2;
        add_ln48_99_reg_4030 <= add_ln48_99_fu_2146_p2;
        mul_ln48_46_reg_4070_pp0_iter1_reg <= mul_ln48_46_reg_4070;
        mul_ln48_48_reg_4075_pp0_iter1_reg <= mul_ln48_48_reg_4075;
        mul_ln48_50_reg_4080_pp0_iter1_reg <= mul_ln48_50_reg_4080;
        mul_ln48_52_reg_4085_pp0_iter1_reg <= mul_ln48_52_reg_4085;
        mul_ln48_54_reg_4095_pp0_iter1_reg <= mul_ln48_54_reg_4095;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_10_reg_4254 <= add_ln48_10_fu_2451_p2;
        add_ln48_142_reg_4314 <= add_ln48_142_fu_2556_p2;
        add_ln48_16_reg_4259 <= add_ln48_16_fu_2467_p2;
        add_ln48_22_reg_4264 <= add_ln48_22_fu_2477_p2;
        add_ln48_28_reg_4269 <= add_ln48_28_fu_2487_p2;
        add_ln48_34_reg_4274 <= add_ln48_34_fu_2497_p2;
        add_ln48_48_reg_4279 <= add_ln48_48_fu_2502_p2;
        add_ln48_4_reg_4249 <= add_ln48_4_fu_2435_p2;
        add_ln48_51_reg_4284 <= add_ln48_51_fu_2512_p2;
        add_ln48_54_reg_4289 <= add_ln48_54_fu_2517_p2;
        add_ln48_60_reg_4294 <= add_ln48_60_fu_2522_p2;
        add_ln48_84_reg_4304 <= add_ln48_84_fu_2527_p2;
        add_ln48_94_reg_4309 <= add_ln48_94_fu_2542_p2;
        i_reg_3009 <= i_fu_1682_p3;
        p_cast117_reg_3018[10 : 1] <= p_cast117_fu_1700_p1[10 : 1];
        p_cast117_reg_3018_pp0_iter1_reg[10 : 1] <= p_cast117_reg_3018[10 : 1];
        select_ln11_reg_2998 <= select_ln11_fu_1674_p3;
        zext_ln44_reg_3069[10 : 1] <= zext_ln44_fu_1722_p1[10 : 1];
        zext_ln44_reg_3069_pp0_iter1_reg[10 : 1] <= zext_ln44_reg_3069[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln48_123_reg_3870 <= add_ln48_123_fu_2069_p2;
        add_ln48_129_reg_3875 <= add_ln48_129_fu_2080_p2;
        add_ln48_39_reg_3855 <= add_ln48_39_fu_2049_p2;
        add_ln48_45_reg_3860 <= add_ln48_45_fu_2059_p2;
        add_ln48_58_reg_4439 <= add_ln48_58_fu_2803_p2;
        add_ln48_64_reg_4444 <= add_ln48_64_fu_2813_p2;
        add_ln48_70_reg_4449 <= add_ln48_70_fu_2823_p2;
        add_ln48_76_reg_4454 <= add_ln48_76_fu_2833_p2;
        add_ln48_82_reg_4459 <= add_ln48_82_fu_2843_p2;
        add_ln48_88_reg_4464 <= add_ln48_88_fu_2852_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_148_reg_4409 <= add_ln48_148_fu_2760_p2;
        add_ln48_154_reg_4414 <= add_ln48_154_fu_2774_p2;
        add_ln48_160_reg_4419 <= add_ln48_160_fu_2788_p2;
        add_ln48_162_reg_4434 <= add_ln48_162_fu_2793_p2;
        add_ln48_57_reg_4364 <= add_ln48_57_fu_2679_p2;
        add_ln48_63_reg_4369 <= add_ln48_63_fu_2689_p2;
        add_ln48_66_reg_4374 <= add_ln48_66_fu_2694_p2;
        add_ln48_69_reg_4379 <= add_ln48_69_fu_2704_p2;
        add_ln48_72_reg_4384 <= add_ln48_72_fu_2709_p2;
        add_ln48_75_reg_4389 <= add_ln48_75_fu_2719_p2;
        add_ln48_78_reg_4394 <= add_ln48_78_fu_2724_p2;
        add_ln48_81_reg_4399 <= add_ln48_81_fu_2735_p2;
        add_ln48_87_reg_4404 <= add_ln48_87_fu_2745_p2;
        mul_ln48_16_reg_3745_pp0_iter1_reg <= mul_ln48_16_reg_3745;
        mul_ln48_18_reg_3750_pp0_iter1_reg <= mul_ln48_18_reg_3750;
        mul_ln48_20_reg_3755_pp0_iter1_reg <= mul_ln48_20_reg_3755;
        mul_ln48_22_reg_3760_pp0_iter1_reg <= mul_ln48_22_reg_3760;
        mul_ln48_24_reg_3765_pp0_iter1_reg <= mul_ln48_24_reg_3765;
        mul_ln48_26_reg_3770_pp0_iter1_reg <= mul_ln48_26_reg_3770;
        zext_ln40_1_reg_3715[10 : 1] <= zext_ln40_1_fu_2026_p1[10 : 1];
        zext_ln40_reg_3685[10 : 1] <= zext_ln40_fu_2000_p1[10 : 1];
        zext_ln41_1_reg_3730[10 : 1] <= zext_ln41_1_fu_2039_p1[10 : 1];
        zext_ln41_reg_3695[10 : 1] <= zext_ln41_fu_2013_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_3_reg_3497 <= add_ln48_3_fu_1916_p2;
        sum0_23_reg_3532_pp0_iter1_reg <= sum0_23_reg_3532;
        sum0_24_reg_3540_pp0_iter1_reg <= sum0_24_reg_3540;
        sum0_25_reg_3548_pp0_iter1_reg <= sum0_25_reg_3548;
        sum0_26_reg_3556_pp0_iter1_reg <= sum0_26_reg_3556;
        sum0_27_reg_3564_pp0_iter1_reg <= sum0_27_reg_3564;
        zext_ln41_3_reg_3645[10 : 1] <= zext_ln41_3_fu_1963_p1[10 : 1];
        zext_ln41_3_reg_3645_pp0_iter1_reg[10 : 1] <= zext_ln41_3_reg_3645[10 : 1];
        zext_ln42_1_reg_3571[10 : 1] <= zext_ln42_1_fu_1949_p1[10 : 1];
        zext_ln42_2_reg_3660[10 : 1] <= zext_ln42_2_fu_1976_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_52_reg_4319 <= add_ln48_52_fu_2580_p2;
        empty_7_reg_3116 <= empty_7_fu_1749_p2;
        sum0_10_reg_3299_pp0_iter1_reg <= sum0_10_reg_3299;
        sum0_11_reg_3307_pp0_iter1_reg <= sum0_11_reg_3307;
        sum0_12_reg_3315_pp0_iter1_reg <= sum0_12_reg_3315;
        sum0_13_reg_3323_pp0_iter1_reg <= sum0_13_reg_3323;
        zext_ln39_reg_3124[10 : 1] <= zext_ln39_fu_1763_p1[10 : 1];
        zext_ln39_reg_3124_pp0_iter1_reg[10 : 1] <= zext_ln39_reg_3124[10 : 1];
        zext_ln42_reg_3241[10 : 1] <= zext_ln42_fu_1807_p1[10 : 1];
        zext_ln42_reg_3241_pp0_iter1_reg[10 : 1] <= zext_ln42_reg_3241[10 : 1];
        zext_ln42_reg_3241_pp0_iter2_reg[10 : 1] <= zext_ln42_reg_3241_pp0_iter1_reg[10 : 1];
        zext_ln43_1_reg_3263[10 : 1] <= zext_ln43_1_fu_1822_p1[10 : 1];
        zext_ln43_1_reg_3263_pp0_iter1_reg[10 : 1] <= zext_ln43_1_reg_3263[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln37_reg_3680 <= icmp_ln37_fu_1981_p2;
        mul_ln48_10_reg_3527 <= grp_fu_1436_p2;
        mul_ln48_2_reg_3507 <= grp_fu_1420_p2;
        mul_ln48_4_reg_3512 <= grp_fu_1424_p2;
        mul_ln48_6_reg_3517 <= grp_fu_1428_p2;
        mul_ln48_8_reg_3522 <= grp_fu_1432_p2;
        mul_ln48_reg_3502 <= grp_fu_1416_p2;
        orig_7_load_6_reg_3635 <= orig_7_q0;
        sum0_23_reg_3532 <= orig_2_q1;
        sum0_24_reg_3540 <= orig_3_q1;
        sum0_25_reg_3548 <= orig_4_q1;
        sum0_26_reg_3556 <= orig_5_q1;
        sum0_27_reg_3564 <= orig_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_16_reg_3745 <= grp_fu_1420_p2;
        mul_ln48_18_reg_3750 <= grp_fu_1424_p2;
        mul_ln48_20_reg_3755 <= grp_fu_1428_p2;
        mul_ln48_22_reg_3760 <= grp_fu_1432_p2;
        mul_ln48_24_reg_3765 <= grp_fu_1436_p2;
        mul_ln48_26_reg_3770 <= grp_fu_1440_p2;
        orig_0_load_9_reg_3805 <= orig_0_q0;
        orig_1_load_11_reg_3775 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln48_19_reg_4474 <= grp_fu_1416_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln48_30_reg_3865 <= grp_fu_1416_p2;
        mul_ln48_42_reg_3880 <= grp_fu_1440_p2;
        orig_2_load_12_reg_3885 <= orig_2_q0;
        orig_3_load_12_reg_3900 <= orig_3_q0;
        orig_4_load_12_reg_3915 <= orig_4_q0;
        orig_5_load_12_reg_3930 <= orig_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln48_44_reg_4065 <= grp_fu_1416_p2;
        mul_ln48_46_reg_4070 <= grp_fu_1420_p2;
        mul_ln48_48_reg_4075 <= grp_fu_1424_p2;
        mul_ln48_50_reg_4080 <= grp_fu_1428_p2;
        mul_ln48_52_reg_4085 <= grp_fu_1432_p2;
        mul_ln48_54_reg_4095 <= grp_fu_1436_p2;
        orig_6_load_14_reg_4090 <= orig_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_load_3_reg_3372 <= orig_4_q0;
        orig_5_load_3_reg_3385 <= orig_5_q0;
        sum0_15_reg_3348 <= orig_2_q1;
        sum0_16_reg_3356 <= orig_3_q1;
        sum0_17_reg_3364 <= orig_4_q1;
        sum0_18_reg_3377 <= orig_5_q1;
        sum0_19_reg_3390 <= orig_6_q1;
        sum0_20_reg_3398 <= orig_7_q1;
        sum0_21_reg_3406 <= orig_0_q1;
        sum0_22_reg_3414 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_7_load_8_reg_4429 <= orig_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1444 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1448 <= orig_3_q1;
        reg_1453 <= orig_4_q1;
        reg_1458 <= orig_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1463 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1472 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1486 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1490 <= grp_fu_1440_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1499 <= grp_fu_1416_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1508 <= orig_2_q0;
        reg_1517 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1526 <= orig_4_q0;
        reg_1535 <= orig_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1539 <= orig_6_q1;
        reg_1543 <= orig_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1563 <= orig_2_q1;
        reg_1567 <= orig_3_q1;
        reg_1575 <= orig_4_q1;
        reg_1583 <= orig_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1571 <= grp_fu_1420_p2;
        reg_1579 <= grp_fu_1424_p2;
        reg_1587 <= grp_fu_1428_p2;
        reg_1596 <= grp_fu_1432_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1600 <= grp_fu_1436_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1609 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1613 <= grp_fu_1416_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1617 <= grp_fu_1420_p2;
        reg_1621 <= grp_fu_1424_p2;
        reg_1625 <= grp_fu_1428_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1629 <= grp_fu_1432_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1633 <= orig_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1637 <= grp_fu_1440_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1641 <= grp_fu_1436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_10_reg_3299 <= orig_3_q0;
        sum0_11_reg_3307 <= orig_4_q0;
        sum0_12_reg_3315 <= orig_5_q0;
        sum0_13_reg_3323 <= orig_6_q0;
        sum0_1_reg_3149 <= orig_2_q1;
        sum0_5_reg_3197 <= orig_6_q1;
        sum0_6_reg_3215 <= orig_7_q1;
        sum0_7_reg_3233 <= orig_0_q0;
        sum0_8_reg_3278 <= orig_1_q0;
        sum0_9_reg_3291 <= orig_2_q0;
        sum0_reg_3137 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum0_15_reg_3348_pp0_iter1_reg <= sum0_15_reg_3348;
        tmp_3_reg_3335 <= {{empty_fu_1834_p2[9:5]}};
        tmp_4_reg_3341 <= {{empty_6_fu_1840_p2[9:5]}};
        tmp_reg_3330[9 : 5] <= tmp_fu_1827_p3[9 : 5];
        zext_ln40_2_reg_3452[10 : 1] <= zext_ln40_2_fu_1875_p1[10 : 1];
        zext_ln40_3_reg_3482[10 : 1] <= zext_ln40_3_fu_1903_p1[10 : 1];
        zext_ln41_2_reg_3462[10 : 1] <= zext_ln41_2_fu_1889_p1[10 : 1];
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_2419_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_4245_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_2099)) begin
            ap_phi_mux_icmp_ln376_phi_fu_1409_p4 = icmp_ln37_reg_3680;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln376_phi_fu_1409_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln376_phi_fu_1409_p4 = icmp_ln37_reg_3680;
        end
    end else begin
        ap_phi_mux_icmp_ln376_phi_fu_1409_p4 = icmp_ln37_reg_3680;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i3_load = 5'd1;
    end else begin
        ap_sig_allocacmp_i3_load = i3_fu_102;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvars_iv_next4765_load = 5'd2;
    end else begin
        ap_sig_allocacmp_indvars_iv_next4765_load = indvars_iv_next4765_fu_110;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j4_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j4_load = j4_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1416_p0 = reg_1557;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1416_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1416_p0 = sum0_22_reg_3414;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1416_p0 = sum0_15_reg_3348;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1416_p0 = sum0_7_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1416_p0 = sum0_reg_3137;
    end else begin
        grp_fu_1416_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1416_p1 = add_ln48_58_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1416_p1 = add_ln48_4_reg_4249;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1416_p1 = add_ln48_40_reg_4005;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1416_p1 = C_load;
    end else begin
        grp_fu_1416_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1420_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1420_p0 = sum0_23_reg_3532;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1420_p0 = sum0_16_reg_3356;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1420_p0 = sum0_8_reg_3278;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1420_p0 = sum0_1_reg_3149;
    end else begin
        grp_fu_1420_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1420_p1 = add_ln48_64_reg_4444;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1420_p1 = add_ln48_10_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1420_p1 = add_ln48_100_reg_4195;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1420_p1 = add_ln48_46_reg_4010;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1420_p1 = C_load;
    end else begin
        grp_fu_1420_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1424_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1424_p0 = sum0_24_reg_3540;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1424_p0 = sum0_17_reg_3364;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1424_p0 = sum0_9_reg_3291;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1424_p0 = reg_1448;
    end else begin
        grp_fu_1424_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1424_p1 = add_ln48_70_reg_4449;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1424_p1 = add_ln48_16_reg_4259;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1424_p1 = add_ln48_106_reg_4200;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1424_p1 = add_ln48_124_reg_4050;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1424_p1 = C_load;
    end else begin
        grp_fu_1424_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1428_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1428_p0 = sum0_25_reg_3548;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1428_p0 = sum0_18_reg_3377;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1428_p0 = sum0_10_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1428_p0 = reg_1453;
    end else begin
        grp_fu_1428_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1428_p1 = add_ln48_76_reg_4454;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1428_p1 = add_ln48_22_reg_4264;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1428_p1 = add_ln48_112_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1428_p1 = add_ln48_130_reg_4055;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1428_p1 = C_load;
    end else begin
        grp_fu_1428_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1432_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1432_p0 = sum0_26_reg_3556;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1432_p0 = sum0_19_reg_3390;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1432_p0 = sum0_11_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1432_p0 = reg_1458;
    end else begin
        grp_fu_1432_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1432_p1 = add_ln48_148_reg_4409;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1432_p1 = add_ln48_82_reg_4459;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1432_p1 = add_ln48_28_reg_4269;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1432_p1 = add_ln48_118_reg_4210;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1432_p1 = C_load;
    end else begin
        grp_fu_1432_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1436_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1436_p0 = sum0_27_reg_3564;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1436_p0 = sum0_20_reg_3398;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1436_p0 = sum0_12_reg_3315;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1436_p0 = sum0_5_reg_3197;
    end else begin
        grp_fu_1436_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1436_p1 = add_ln48_154_reg_4414;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1436_p1 = add_ln48_88_reg_4464;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1436_p1 = add_ln48_34_reg_4274;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1436_p1 = add_ln48_136_reg_4215;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1436_p1 = C_load;
    end else begin
        grp_fu_1436_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1440_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1440_p0 = sum0_21_reg_3406;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1440_p0 = sum0_13_reg_3323;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1440_p0 = sum0_6_reg_3215;
    end else begin
        grp_fu_1440_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1440_p1 = add_ln48_166_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1440_p1 = add_ln48_160_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1440_p1 = add_ln48_142_reg_4314;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1440_p1 = add_ln48_52_reg_4319;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1440_p1 = add_ln48_94_reg_4309;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1440_p1 = C_load;
    end else begin
        grp_fu_1440_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln39_reg_3124_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_0_address0_local = zext_ln41_1_fu_2039_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_0_address0_local = zext_ln42_2_fu_1976_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln43_1_fu_1822_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln44_fu_1722_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln40_1_fu_2026_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln41_3_fu_1963_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln40_3_fu_1903_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln42_fu_1807_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln41_2_reg_3462;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_1_address0_local = zext_ln40_2_reg_3452;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_1_address0_local = zext_ln40_1_reg_3715;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_1_address0_local = zext_ln41_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_1_address0_local = zext_ln42_2_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_1_address0_local = zext_ln40_3_reg_3482;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln42_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln44_fu_1722_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_1_address1_local = zext_ln41_1_reg_3730;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address1_local = zext_ln39_reg_3124;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address1_local = zext_ln40_reg_3685;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln41_3_reg_3645;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln42_1_fu_1949_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln43_1_reg_3263;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln43_fu_1787_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln43_1_reg_3263_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_2_address0_local = zext_ln41_1_reg_3730;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_2_address0_local = zext_ln41_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_2_address0_local = zext_ln42_2_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_2_address0_local = zext_ln40_3_reg_3482;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_2_address0_local = zext_ln41_2_reg_3462;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln43_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln44_fu_1722_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_2_address1_local = zext_ln40_1_reg_3715;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_2_address1_local = zext_ln40_reg_3685;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_2_address1_local = zext_ln41_3_reg_3645;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address1_local = zext_ln42_1_reg_3571;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address1_local = zext_ln40_2_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = zext_ln42_reg_3241;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln39_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln43_1_reg_3263_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_3_address0_local = zext_ln41_1_reg_3730;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_3_address0_local = zext_ln41_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_3_address0_local = zext_ln42_2_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_3_address0_local = zext_ln40_3_reg_3482;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_3_address0_local = zext_ln41_2_reg_3462;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln43_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln44_fu_1722_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_3_address1_local = zext_ln40_1_reg_3715;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_3_address1_local = zext_ln40_reg_3685;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_3_address1_local = zext_ln41_3_reg_3645;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address1_local = zext_ln42_1_reg_3571;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address1_local = zext_ln40_2_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = zext_ln42_reg_3241;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln39_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln43_1_reg_3263_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_4_address0_local = zext_ln41_1_reg_3730;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_4_address0_local = zext_ln41_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_4_address0_local = zext_ln42_2_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_4_address0_local = zext_ln40_3_reg_3482;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_4_address0_local = zext_ln41_2_reg_3462;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln43_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln44_fu_1722_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_4_address1_local = zext_ln40_1_reg_3715;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_4_address1_local = zext_ln40_reg_3685;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_4_address1_local = zext_ln41_3_reg_3645;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_4_address1_local = zext_ln42_1_reg_3571;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_4_address1_local = zext_ln40_2_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address1_local = zext_ln42_reg_3241;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address1_local = zext_ln39_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_4_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln43_1_reg_3263_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_5_address0_local = zext_ln41_1_reg_3730;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_5_address0_local = zext_ln41_reg_3695;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_5_address0_local = zext_ln42_2_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_5_address0_local = zext_ln40_3_reg_3482;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_5_address0_local = zext_ln41_2_reg_3462;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln43_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln44_fu_1722_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_5_address1_local = zext_ln40_1_reg_3715;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_5_address1_local = zext_ln40_reg_3685;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_5_address1_local = zext_ln41_3_reg_3645;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_5_address1_local = zext_ln42_1_reg_3571;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_5_address1_local = zext_ln40_2_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_5_address1_local = zext_ln42_reg_3241;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_5_address1_local = zext_ln39_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_5_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_6_address0_local = zext_ln41_3_reg_3645_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln43_1_reg_3263_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_6_address0_local = zext_ln40_3_reg_3482;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_6_address0_local = zext_ln40_1_reg_3715;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_6_address0_local = zext_ln42_2_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_6_address0_local = zext_ln41_2_reg_3462;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln43_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln44_fu_1722_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_6_address1_local = zext_ln41_1_reg_3730;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_6_address1_local = zext_ln41_reg_3695;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_6_address1_local = zext_ln40_reg_3685;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_6_address1_local = zext_ln42_1_reg_3571;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_6_address1_local = zext_ln40_2_reg_3452;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_6_address1_local = zext_ln42_reg_3241;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_6_address1_local = zext_ln39_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_6_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_7_address0_local = zext_ln42_reg_3241_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln44_reg_3069;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_7_address0_local = zext_ln41_fu_2013_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln41_2_fu_1889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln43_fu_1787_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_7_address1_local = zext_ln40_fu_2000_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_7_address1_local = zext_ln42_1_fu_1949_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_7_address1_local = zext_ln40_2_fu_1875_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_7_address1_local = zext_ln39_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_7_address1_local = p_cast117_fu_1700_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_ce1_local = 1'b1;
    end else begin
        sol_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_we1_local = 1'b1;
    end else begin
        sol_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_address0_local = zext_ln39_reg_3124_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        sol_1_address0_local = zext_ln44_reg_3069_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_address0_local = p_cast117_reg_3018_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_address0_local = zext_ln42_reg_3241_pp0_iter1_reg;
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_d0_local = add_ln48_89_fu_2911_p2;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        sol_1_d0_local = add_ln48_53_fu_2867_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_d0_local = add_ln48_5_fu_2632_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_d0_local = add_ln48_137_fu_2626_p2;
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_address0_local = zext_ln42_reg_3241_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_address0_local = zext_ln39_reg_3124_pp0_iter1_reg;
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_address1_local = zext_ln44_reg_3069_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_address1_local = p_cast117_reg_3018_pp0_iter1_reg;
    end else begin
        sol_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_ce1_local = 1'b1;
    end else begin
        sol_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_d0_local = add_ln48_143_fu_2918_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_d0_local = add_ln48_95_fu_2668_p2;
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_d1_local = add_ln48_59_fu_2882_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_d1_local = add_ln48_11_fu_2638_p2;
    end else begin
        sol_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_we1_local = 1'b1;
    end else begin
        sol_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_3_address0_local = zext_ln42_reg_3241_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_address0_local = zext_ln44_reg_3069_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_address0_local = p_cast117_reg_3018_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_address0_local = zext_ln39_reg_3124_pp0_iter1_reg;
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_3_d0_local = add_ln48_149_fu_2924_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_d0_local = add_ln48_65_fu_2887_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_d0_local = add_ln48_17_fu_2644_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_d0_local = add_ln48_101_fu_2598_p2;
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_address0_local = zext_ln42_reg_3241_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_address0_local = zext_ln44_reg_3069_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_4_address0_local = p_cast117_reg_3018_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_address0_local = zext_ln39_reg_3124_pp0_iter1_reg;
    end else begin
        sol_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_d0_local = add_ln48_155_fu_2930_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_d0_local = add_ln48_71_fu_2893_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_4_d0_local = add_ln48_23_fu_2650_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_d0_local = add_ln48_107_fu_2605_p2;
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_5_address0_local = zext_ln42_reg_3241_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_address0_local = zext_ln44_reg_3069_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_5_address0_local = p_cast117_reg_3018_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_address0_local = zext_ln39_reg_3124_pp0_iter1_reg;
    end else begin
        sol_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_5_d0_local = add_ln48_161_fu_2936_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_d0_local = add_ln48_77_fu_2899_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_5_d0_local = add_ln48_29_fu_2656_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_d0_local = add_ln48_113_fu_2612_p2;
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_6_address0_local = zext_ln42_reg_3241_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_6_address0_local = zext_ln44_reg_3069_pp0_iter1_reg;
        end else begin
            sol_6_address0_local = 'bx;
        end
    end else begin
        sol_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_6_address1_local = p_cast117_reg_3018_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_6_address1_local = zext_ln39_reg_3124_pp0_iter1_reg;
        end else begin
            sol_6_address1_local = 'bx;
        end
    end else begin
        sol_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_6_ce1_local = 1'b1;
    end else begin
        sol_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_6_d0_local = add_ln48_167_fu_2942_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_6_d0_local = add_ln48_83_fu_2905_p2;
        end else begin
            sol_6_d0_local = 'bx;
        end
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_6_d1_local = add_ln48_35_fu_2662_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_6_d1_local = add_ln48_119_fu_2619_p2;
        end else begin
            sol_6_d1_local = 'bx;
        end
    end else begin
        sol_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_6_we1_local = 1'b1;
    end else begin
        sol_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_ce1_local = 1'b1;
    end else begin
        sol_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_we1_local = 1'b1;
    end else begin
        sol_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln36_fu_2413_p2 = (indvar_flatten2_fu_98 + 9'd1);
assign add_ln42_fu_1936_p2 = (zext_ln12_fu_1932_p1 + tmp_reg_3330);
assign add_ln43_fu_1773_p2 = ($signed(select_ln11_reg_2998) + $signed(5'd31));
assign add_ln48_100_fu_2306_p2 = (add_ln48_99_reg_4030 + add_ln48_97_fu_2300_p2);
assign add_ln48_101_fu_2598_p2 = (reg_1617 + reg_1571);
assign add_ln48_102_fu_2311_p2 = ($signed(sum0_16_reg_3356) + $signed(sum0_18_reg_3377));
assign add_ln48_103_fu_2315_p2 = ($signed(add_ln48_102_fu_2311_p2) + $signed(reg_1453));
assign add_ln48_104_fu_2152_p2 = (reg_1526 + reg_1575);
assign add_ln48_105_fu_2158_p2 = (add_ln48_104_fu_2152_p2 + reg_1521);
assign add_ln48_106_fu_2321_p2 = (add_ln48_105_reg_4035 + add_ln48_103_fu_2315_p2);
assign add_ln48_107_fu_2605_p2 = (reg_1621 + reg_1579);
assign add_ln48_108_fu_2326_p2 = ($signed(sum0_17_reg_3364) + $signed(sum0_19_reg_3390));
assign add_ln48_109_fu_2330_p2 = ($signed(add_ln48_108_fu_2326_p2) + $signed(reg_1458));
assign add_ln48_10_fu_2451_p2 = (add_ln48_9_reg_4105 + add_ln48_7_fu_2445_p2);
assign add_ln48_110_fu_2164_p2 = (reg_1535 + reg_1583);
assign add_ln48_111_fu_2170_p2 = (add_ln48_110_fu_2164_p2 + reg_1530);
assign add_ln48_112_fu_2336_p2 = (add_ln48_111_reg_4040 + add_ln48_109_fu_2330_p2);
assign add_ln48_113_fu_2612_p2 = (reg_1625 + reg_1587);
assign add_ln48_114_fu_2341_p2 = ($signed(sum0_18_reg_3377) + $signed(sum0_20_reg_3398));
assign add_ln48_115_fu_2345_p2 = ($signed(add_ln48_114_fu_2341_p2) + $signed(sum0_5_reg_3197));
assign add_ln48_116_fu_2176_p2 = (reg_1543 + reg_1591);
assign add_ln48_117_fu_2182_p2 = (add_ln48_116_fu_2176_p2 + reg_1539);
assign add_ln48_118_fu_2350_p2 = (add_ln48_117_reg_4045 + add_ln48_115_fu_2345_p2);
assign add_ln48_119_fu_2619_p2 = (reg_1629 + reg_1596);
assign add_ln48_11_fu_2638_p2 = (reg_1571 + mul_ln48_2_reg_3507);
assign add_ln48_120_fu_2188_p2 = ($signed(sum0_19_reg_3390) + $signed(sum0_21_reg_3406));
assign add_ln48_121_fu_2192_p2 = ($signed(add_ln48_120_fu_2188_p2) + $signed(sum0_6_reg_3215));
assign add_ln48_122_fu_2064_p2 = (orig_7_load_6_reg_3635 + reg_1547);
assign add_ln48_123_fu_2069_p2 = (add_ln48_122_fu_2064_p2 + reg_1494);
assign add_ln48_124_fu_2197_p2 = (add_ln48_123_reg_3870 + add_ln48_121_fu_2192_p2);
assign add_ln48_125_fu_2585_p2 = (reg_1621 + reg_1600);
assign add_ln48_126_fu_2202_p2 = ($signed(sum0_20_reg_3398) + $signed(sum0_22_reg_3414));
assign add_ln48_127_fu_2206_p2 = ($signed(add_ln48_126_fu_2202_p2) + $signed(sum0_7_reg_3233));
assign add_ln48_128_fu_2075_p2 = (reg_1552 + orig_0_load_9_reg_3805);
assign add_ln48_129_fu_2080_p2 = (add_ln48_128_fu_2075_p2 + reg_1444);
assign add_ln48_12_fu_2456_p2 = ($signed(sum0_1_reg_3149) + $signed(reg_1472));
assign add_ln48_130_fu_2211_p2 = (add_ln48_129_reg_3875 + add_ln48_127_fu_2206_p2);
assign add_ln48_131_fu_2592_p2 = (reg_1625 + mul_ln48_42_reg_3880);
assign add_ln48_132_fu_2355_p2 = ($signed(sum0_21_reg_3406) + $signed(sum0_23_reg_3532));
assign add_ln48_133_fu_2359_p2 = ($signed(add_ln48_132_fu_2355_p2) + $signed(sum0_8_reg_3278));
assign add_ln48_134_fu_2216_p2 = (reg_1604 + reg_1609);
assign add_ln48_135_fu_2222_p2 = (add_ln48_134_fu_2216_p2 + reg_1557);
assign add_ln48_136_fu_2364_p2 = (add_ln48_135_reg_4060 + add_ln48_133_fu_2359_p2);
assign add_ln48_137_fu_2626_p2 = (reg_1600 + mul_ln48_44_reg_4065);
assign add_ln48_138_fu_2547_p2 = ($signed(sum0_22_reg_3414) + $signed(sum0_24_reg_3540));
assign add_ln48_139_fu_2551_p2 = ($signed(add_ln48_138_fu_2547_p2) + $signed(sum0_9_reg_3291));
assign add_ln48_13_fu_2461_p1 = reg_1448;
assign add_ln48_13_fu_2461_p2 = (add_ln48_12_fu_2456_p2 + add_ln48_13_fu_2461_p1);
assign add_ln48_140_fu_2369_p2 = (reg_1503 + reg_1508);
assign add_ln48_141_fu_2375_p2 = (add_ln48_140_fu_2369_p2 + orig_2_load_12_reg_3885);
assign add_ln48_142_fu_2556_p2 = (add_ln48_141_reg_4220 + add_ln48_139_fu_2551_p2);
assign add_ln48_143_fu_2918_p2 = (reg_1637 + mul_ln48_46_reg_4070_pp0_iter1_reg);
assign add_ln48_144_fu_2751_p2 = ($signed(sum0_23_reg_3532_pp0_iter1_reg) + $signed(sum0_25_reg_3548_pp0_iter1_reg));
assign add_ln48_145_fu_2755_p2 = ($signed(add_ln48_144_fu_2751_p2) + $signed(sum0_10_reg_3299_pp0_iter1_reg));
assign add_ln48_146_fu_2380_p2 = (reg_1512 + reg_1517);
assign add_ln48_147_fu_2386_p2 = (add_ln48_146_fu_2380_p2 + orig_3_load_12_reg_3900);
assign add_ln48_148_fu_2760_p2 = (add_ln48_147_reg_4225 + add_ln48_145_fu_2755_p2);
assign add_ln48_149_fu_2924_p2 = (reg_1629 + mul_ln48_48_reg_4075_pp0_iter1_reg);
assign add_ln48_14_fu_2248_p2 = ($signed(reg_1472) + $signed(reg_1453));
assign add_ln48_150_fu_2765_p2 = ($signed(sum0_24_reg_3540_pp0_iter1_reg) + $signed(sum0_26_reg_3556_pp0_iter1_reg));
assign add_ln48_151_fu_2769_p2 = ($signed(add_ln48_150_fu_2765_p2) + $signed(sum0_11_reg_3307_pp0_iter1_reg));
assign add_ln48_152_fu_2391_p2 = (reg_1521 + reg_1526);
assign add_ln48_153_fu_2397_p2 = (add_ln48_152_fu_2391_p2 + orig_4_load_12_reg_3915);
assign add_ln48_154_fu_2774_p2 = (add_ln48_153_reg_4230 + add_ln48_151_fu_2769_p2);
assign add_ln48_155_fu_2930_p2 = (reg_1641 + mul_ln48_50_reg_4080_pp0_iter1_reg);
assign add_ln48_156_fu_2779_p2 = ($signed(sum0_25_reg_3548_pp0_iter1_reg) + $signed(sum0_27_reg_3564_pp0_iter1_reg));
assign add_ln48_157_fu_2783_p2 = ($signed(add_ln48_156_fu_2779_p2) + $signed(sum0_12_reg_3315_pp0_iter1_reg));
assign add_ln48_158_fu_2402_p2 = (reg_1530 + reg_1535);
assign add_ln48_159_fu_2408_p2 = (add_ln48_158_fu_2402_p2 + orig_5_load_12_reg_3930);
assign add_ln48_15_fu_2254_p2 = ($signed(add_ln48_14_fu_2248_p2) + $signed(sum0_16_reg_3356));
assign add_ln48_160_fu_2788_p2 = (add_ln48_159_reg_4235 + add_ln48_157_fu_2783_p2);
assign add_ln48_161_fu_2936_p2 = (reg_1637 + mul_ln48_52_reg_4085_pp0_iter1_reg);
assign add_ln48_162_fu_2793_p2 = ($signed(sum0_26_reg_3556_pp0_iter1_reg) + $signed(reg_1543));
assign add_ln48_163_fu_2873_p2 = ($signed(add_ln48_162_reg_4434) + $signed(sum0_13_reg_3323_pp0_iter1_reg));
assign add_ln48_164_fu_2857_p2 = (orig_6_load_14_reg_4090 + orig_7_load_8_reg_4429);
assign add_ln48_165_fu_2861_p2 = (add_ln48_164_fu_2857_p2 + reg_1633);
assign add_ln48_166_fu_2877_p2 = (add_ln48_165_reg_4469 + add_ln48_163_fu_2873_p2);
assign add_ln48_167_fu_2942_p2 = (reg_1490 + mul_ln48_54_reg_4095_pp0_iter1_reg);
assign add_ln48_16_fu_2467_p2 = (add_ln48_15_reg_4110 + add_ln48_13_fu_2461_p2);
assign add_ln48_17_fu_2644_p2 = (reg_1579 + mul_ln48_4_reg_3512);
assign add_ln48_18_fu_2259_p2 = ($signed(reg_1448) + $signed(orig_4_q0));
assign add_ln48_19_fu_2472_p1 = reg_1453;
assign add_ln48_19_fu_2472_p2 = (add_ln48_18_reg_4115 + add_ln48_19_fu_2472_p1);
assign add_ln48_1_fu_2430_p2 = (add_ln48_reg_4100 + reg_1604);
assign add_ln48_20_fu_2265_p2 = ($signed(orig_4_load_3_reg_3372) + $signed(reg_1458));
assign add_ln48_21_fu_2270_p2 = ($signed(add_ln48_20_fu_2265_p2) + $signed(sum0_17_reg_3364));
assign add_ln48_22_fu_2477_p2 = (add_ln48_21_reg_4120 + add_ln48_19_fu_2472_p2);
assign add_ln48_23_fu_2650_p2 = (reg_1587 + mul_ln48_6_reg_3517);
assign add_ln48_24_fu_2275_p2 = ($signed(reg_1453) + $signed(orig_5_q0));
assign add_ln48_25_fu_2482_p1 = reg_1458;
assign add_ln48_25_fu_2482_p2 = (add_ln48_24_reg_4125 + add_ln48_25_fu_2482_p1);
assign add_ln48_26_fu_2281_p2 = ($signed(orig_5_load_3_reg_3385) + $signed(sum0_5_reg_3197));
assign add_ln48_27_fu_2285_p2 = ($signed(add_ln48_26_fu_2281_p2) + $signed(sum0_18_reg_3377));
assign add_ln48_28_fu_2487_p2 = (add_ln48_27_reg_4130 + add_ln48_25_fu_2482_p2);
assign add_ln48_29_fu_2656_p2 = (reg_1596 + mul_ln48_8_reg_3522);
assign add_ln48_2_fu_1911_p2 = ($signed(sum0_1_reg_3149) + $signed(reg_1444));
assign add_ln48_30_fu_2290_p2 = ($signed(reg_1458) + $signed(orig_6_q1));
assign add_ln48_31_fu_2492_p2 = (add_ln48_30_reg_4135 + reg_1476);
assign add_ln48_32_fu_2086_p2 = ($signed(reg_1476) + $signed(sum0_6_reg_3215));
assign add_ln48_33_fu_2091_p2 = ($signed(add_ln48_32_fu_2086_p2) + $signed(sum0_19_reg_3390));
assign add_ln48_34_fu_2497_p2 = (add_ln48_33_reg_4000 + add_ln48_31_fu_2492_p2);
assign add_ln48_35_fu_2662_p2 = (reg_1600 + mul_ln48_10_reg_3527);
assign add_ln48_36_fu_2096_p2 = ($signed(sum0_5_reg_3197) + $signed(reg_1494));
assign add_ln48_37_fu_2101_p2 = (add_ln48_36_fu_2096_p2 + reg_1481);
assign add_ln48_38_fu_2044_p2 = ($signed(reg_1481) + $signed(sum0_7_reg_3233));
assign add_ln48_39_fu_2049_p2 = ($signed(add_ln48_38_fu_2044_p2) + $signed(sum0_20_reg_3398));
assign add_ln48_3_fu_1916_p2 = (add_ln48_2_fu_1911_p2 + reg_1463);
assign add_ln48_40_fu_2107_p2 = (add_ln48_39_reg_3855 + add_ln48_37_fu_2101_p2);
assign add_ln48_41_fu_2561_p2 = (reg_1613 + reg_1490);
assign add_ln48_42_fu_2112_p2 = ($signed(sum0_6_reg_3215) + $signed(reg_1486));
assign add_ln48_43_fu_2117_p2 = (add_ln48_42_fu_2112_p2 + reg_1444);
assign add_ln48_44_fu_2054_p2 = ($signed(reg_1486) + $signed(sum0_8_reg_3278));
assign add_ln48_45_fu_2059_p2 = ($signed(add_ln48_44_fu_2054_p2) + $signed(sum0_21_reg_3406));
assign add_ln48_46_fu_2123_p2 = (add_ln48_45_reg_3860 + add_ln48_43_fu_2117_p2);
assign add_ln48_47_fu_2568_p2 = (reg_1617 + reg_1499);
assign add_ln48_48_fu_2502_p2 = ($signed(sum0_7_reg_3233) + $signed(orig_1_q1));
assign add_ln48_49_fu_2575_p2 = (add_ln48_48_reg_4279 + reg_1609);
assign add_ln48_4_fu_2435_p2 = (add_ln48_3_reg_3497 + add_ln48_1_fu_2430_p2);
assign add_ln48_50_fu_2507_p2 = ($signed(reg_1463) + $signed(sum0_9_reg_3291));
assign add_ln48_51_fu_2512_p2 = ($signed(add_ln48_50_fu_2507_p2) + $signed(sum0_22_reg_3414));
assign add_ln48_52_fu_2580_p2 = (add_ln48_51_reg_4284 + add_ln48_49_fu_2575_p2);
assign add_ln48_53_fu_2867_p2 = (reg_1637 + mul_ln48_16_reg_3745_pp0_iter1_reg);
assign add_ln48_54_fu_2517_p2 = ($signed(sum0_8_reg_3278) + $signed(orig_2_q0));
assign add_ln48_55_fu_2798_p2 = (add_ln48_54_reg_4289 + reg_1563);
assign add_ln48_56_fu_2674_p2 = ($signed(reg_1503) + $signed(sum0_10_reg_3299_pp0_iter1_reg));
assign add_ln48_57_fu_2679_p2 = ($signed(add_ln48_56_fu_2674_p2) + $signed(sum0_23_reg_3532_pp0_iter1_reg));
assign add_ln48_58_fu_2803_p2 = (add_ln48_57_reg_4364 + add_ln48_55_fu_2798_p2);
assign add_ln48_59_fu_2882_p2 = (mul_ln48_19_reg_4474 + mul_ln48_18_reg_3750_pp0_iter1_reg);
assign add_ln48_5_fu_2632_p2 = (reg_1499 + mul_ln48_reg_3502);
assign add_ln48_60_fu_2522_p2 = ($signed(sum0_9_reg_3291) + $signed(orig_3_q0));
assign add_ln48_61_fu_2808_p2 = (add_ln48_60_reg_4294 + reg_1567);
assign add_ln48_62_fu_2684_p2 = ($signed(reg_1512) + $signed(sum0_11_reg_3307_pp0_iter1_reg));
assign add_ln48_63_fu_2689_p2 = ($signed(add_ln48_62_fu_2684_p2) + $signed(sum0_24_reg_3540_pp0_iter1_reg));
assign add_ln48_64_fu_2813_p2 = (add_ln48_63_reg_4369 + add_ln48_61_fu_2808_p2);
assign add_ln48_65_fu_2887_p2 = (reg_1617 + mul_ln48_20_reg_3755_pp0_iter1_reg);
assign add_ln48_66_fu_2694_p2 = ($signed(sum0_10_reg_3299_pp0_iter1_reg) + $signed(reg_1521));
assign add_ln48_67_fu_2818_p2 = (add_ln48_66_reg_4374 + reg_1575);
assign add_ln48_68_fu_2699_p2 = ($signed(reg_1526) + $signed(sum0_12_reg_3315_pp0_iter1_reg));
assign add_ln48_69_fu_2704_p2 = ($signed(add_ln48_68_fu_2699_p2) + $signed(sum0_25_reg_3548_pp0_iter1_reg));
assign add_ln48_6_fu_2440_p2 = ($signed(sum0_reg_3137) + $signed(reg_1503));
assign add_ln48_70_fu_2823_p2 = (add_ln48_69_reg_4379 + add_ln48_67_fu_2818_p2);
assign add_ln48_71_fu_2893_p2 = (reg_1621 + mul_ln48_22_reg_3760_pp0_iter1_reg);
assign add_ln48_72_fu_2709_p2 = ($signed(sum0_11_reg_3307_pp0_iter1_reg) + $signed(reg_1530));
assign add_ln48_73_fu_2828_p2 = (add_ln48_72_reg_4384 + reg_1583);
assign add_ln48_74_fu_2714_p2 = ($signed(reg_1535) + $signed(sum0_13_reg_3323_pp0_iter1_reg));
assign add_ln48_75_fu_2719_p2 = ($signed(add_ln48_74_fu_2714_p2) + $signed(sum0_26_reg_3556_pp0_iter1_reg));
assign add_ln48_76_fu_2833_p2 = (add_ln48_75_reg_4389 + add_ln48_73_fu_2828_p2);
assign add_ln48_77_fu_2899_p2 = (reg_1625 + mul_ln48_24_reg_3765_pp0_iter1_reg);
assign add_ln48_78_fu_2724_p2 = ($signed(sum0_12_reg_3315_pp0_iter1_reg) + $signed(reg_1539));
assign add_ln48_79_fu_2838_p2 = (add_ln48_78_reg_4394 + reg_1591);
assign add_ln48_7_fu_2445_p2 = (add_ln48_6_fu_2440_p2 + reg_1467);
assign add_ln48_80_fu_2729_p2 = (reg_1633 + reg_1547);
assign add_ln48_81_fu_2735_p2 = ($signed(add_ln48_80_fu_2729_p2) + $signed(sum0_27_reg_3564_pp0_iter1_reg));
assign add_ln48_82_fu_2843_p2 = (add_ln48_81_reg_4399 + add_ln48_79_fu_2838_p2);
assign add_ln48_83_fu_2905_p2 = (reg_1629 + mul_ln48_26_reg_3770_pp0_iter1_reg);
assign add_ln48_84_fu_2527_p2 = ($signed(sum0_reg_3137) + $signed(orig_1_q0));
assign add_ln48_85_fu_2848_p2 = ($signed(add_ln48_84_reg_4304) + $signed(sum0_15_reg_3348_pp0_iter1_reg));
assign add_ln48_86_fu_2740_p2 = (orig_1_load_11_reg_3775 + reg_1552);
assign add_ln48_87_fu_2745_p2 = (add_ln48_86_fu_2740_p2 + reg_1557);
assign add_ln48_88_fu_2852_p2 = (add_ln48_87_reg_4404 + add_ln48_85_fu_2848_p2);
assign add_ln48_89_fu_2911_p2 = (reg_1641 + reg_1613);
assign add_ln48_8_fu_2237_p2 = ($signed(reg_1467) + $signed(reg_1448));
assign add_ln48_90_fu_2532_p0 = reg_1557;
assign add_ln48_90_fu_2532_p2 = ($signed(add_ln48_90_fu_2532_p0) + $signed(sum0_16_reg_3356));
assign add_ln48_91_fu_2537_p2 = ($signed(add_ln48_90_fu_2532_p2) + $signed(sum0_1_reg_3149));
assign add_ln48_92_fu_2128_p2 = (reg_1508 + reg_1563);
assign add_ln48_93_fu_2134_p2 = (add_ln48_92_fu_2128_p2 + reg_1503);
assign add_ln48_94_fu_2542_p2 = (add_ln48_93_reg_4025 + add_ln48_91_fu_2537_p2);
assign add_ln48_95_fu_2668_p2 = (reg_1490 + mul_ln48_30_reg_3865);
assign add_ln48_96_fu_2296_p2 = ($signed(sum0_15_reg_3348) + $signed(sum0_17_reg_3364));
assign add_ln48_97_fu_2300_p2 = ($signed(add_ln48_96_fu_2296_p2) + $signed(reg_1448));
assign add_ln48_98_fu_2140_p2 = (reg_1517 + reg_1567);
assign add_ln48_99_fu_2146_p2 = (add_ln48_98_fu_2140_p2 + reg_1512);
assign add_ln48_9_fu_2243_p2 = ($signed(add_ln48_8_fu_2237_p2) + $signed(sum0_15_reg_3348));
assign add_ln48_fu_2231_p1 = orig_1_q1;
assign add_ln48_fu_2231_p2 = ($signed(reg_1557) + $signed(add_ln48_fu_2231_p1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2099 = ((icmp_ln36_reg_4245 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign empty_6_fu_1840_p2 = ($signed(tmp_fu_1827_p3) + $signed(10'd992));
assign empty_7_fu_1749_p2 = (select_ln11_reg_2998 + 5'd1);
assign empty_fu_1834_p2 = (tmp_fu_1827_p3 + 10'd32);
assign i_fu_1682_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_1409_p4[0:0] == 1'b1) ? ap_sig_allocacmp_indvars_iv_next4765_load : ap_sig_allocacmp_i3_load);
assign icmp_ln36_fu_2419_p2 = ((indvar_flatten2_fu_98 == 9'd449) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1981_p2 = ((j_fu_1928_p1 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next476_fu_1733_p2 = (i_fu_1682_p3 + 5'd1);
assign indvars_iv_next_fu_1922_p2 = (zext_ln37_fu_1908_p1 + 6'd2);
assign j_fu_1928_p1 = indvars_iv_next_fu_1922_p2[4:0];
assign or_ln1_fu_2018_p4 = {{{tmp_3_reg_3335}, {select_ln11_reg_2998}}, {1'd1}};
assign or_ln2_fu_2031_p4 = {{{tmp_4_reg_3341}, {select_ln11_reg_2998}}, {1'd1}};
assign or_ln3_fu_1798_p4 = {{{i_reg_3009}, {empty_7_fu_1749_p2}}, {1'd1}};
assign or_ln40_1_fu_1894_p4 = {{{tmp_3_fu_1846_p4}, {empty_7_reg_3116}}, {1'd1}};
assign or_ln41_1_fu_1955_p4 = {{{tmp_4_reg_3341}, {empty_7_reg_3116}}, {1'd1}};
assign or_ln42_1_fu_1968_p3 = {{add_ln42_fu_1936_p2}, {1'd1}};
assign or_ln4_fu_1813_p4 = {{{i_reg_3009}, {add_ln43_fu_1773_p2}}, {1'd1}};
assign or_ln_fu_1712_p4 = {{{i_fu_1682_p3}, {select_ln11_fu_1674_p3}}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign p_cast117_fu_1700_p1 = tmp_1_fu_1690_p4;
assign select_ln11_fu_1674_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_1409_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j4_load);
assign shl_ln1_fu_2005_p4 = {{{tmp_4_reg_3341}, {select_ln11_reg_2998}}, {1'd0}};
assign shl_ln2_fu_1778_p4 = {{{i_reg_3009}, {add_ln43_fu_1773_p2}}, {1'd0}};
assign shl_ln3_fu_1941_p3 = {{add_ln42_fu_1936_p2}, {1'd0}};
assign shl_ln40_1_fu_1866_p4 = {{{tmp_3_fu_1846_p4}, {empty_7_reg_3116}}, {1'd0}};
assign shl_ln41_1_fu_1880_p4 = {{{tmp_4_fu_1856_p4}, {empty_7_reg_3116}}, {1'd0}};
assign shl_ln_fu_1992_p4 = {{{tmp_3_reg_3335}, {select_ln11_reg_2998}}, {1'd0}};
assign sol_0_address0 = zext_ln42_reg_3241;
assign sol_0_address1 = zext_ln44_reg_3069_pp0_iter1_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_ce1 = sol_0_ce1_local;
assign sol_0_d0 = add_ln48_131_fu_2592_p2;
assign sol_0_d1 = add_ln48_47_fu_2568_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_0_we1 = sol_0_we1_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_address1 = sol_2_address1_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_ce1 = sol_2_ce1_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_d1 = sol_2_d1_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_2_we1 = sol_2_we1_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = sol_4_address0_local;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = sol_4_d0_local;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = sol_5_address0_local;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = sol_5_d0_local;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = sol_6_address0_local;
assign sol_6_address1 = sol_6_address1_local;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_ce1 = sol_6_ce1_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_d1 = sol_6_d1_local;
assign sol_6_we0 = sol_6_we0_local;
assign sol_6_we1 = sol_6_we1_local;
assign sol_7_address0 = zext_ln39_reg_3124;
assign sol_7_address1 = p_cast117_reg_3018_pp0_iter1_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_ce1 = sol_7_ce1_local;
assign sol_7_d0 = add_ln48_125_fu_2585_p2;
assign sol_7_d1 = add_ln48_41_fu_2561_p2;
assign sol_7_we0 = sol_7_we0_local;
assign sol_7_we1 = sol_7_we1_local;
assign tmp_1_fu_1690_p4 = {{{i_fu_1682_p3}, {select_ln11_fu_1674_p3}}, {1'd0}};
assign tmp_2_fu_1754_p4 = {{{i_reg_3009}, {empty_7_fu_1749_p2}}, {1'd0}};
assign tmp_3_fu_1846_p4 = {{empty_fu_1834_p2[9:5]}};
assign tmp_4_fu_1856_p4 = {{empty_6_fu_1840_p2[9:5]}};
assign tmp_fu_1827_p3 = {{i_reg_3009}, {5'd0}};
assign zext_ln12_fu_1932_p1 = indvars_iv_next_fu_1922_p2;
assign zext_ln37_fu_1908_p1 = select_ln11_reg_2998;
assign zext_ln39_fu_1763_p1 = tmp_2_fu_1754_p4;
assign zext_ln40_1_fu_2026_p1 = or_ln1_fu_2018_p4;
assign zext_ln40_2_fu_1875_p1 = shl_ln40_1_fu_1866_p4;
assign zext_ln40_3_fu_1903_p1 = or_ln40_1_fu_1894_p4;
assign zext_ln40_fu_2000_p1 = shl_ln_fu_1992_p4;
assign zext_ln41_1_fu_2039_p1 = or_ln2_fu_2031_p4;
assign zext_ln41_2_fu_1889_p1 = shl_ln41_1_fu_1880_p4;
assign zext_ln41_3_fu_1963_p1 = or_ln41_1_fu_1955_p4;
assign zext_ln41_fu_2013_p1 = shl_ln1_fu_2005_p4;
assign zext_ln42_1_fu_1949_p1 = shl_ln3_fu_1941_p3;
assign zext_ln42_2_fu_1976_p1 = or_ln42_1_fu_1968_p3;
assign zext_ln42_fu_1807_p1 = or_ln3_fu_1798_p4;
assign zext_ln43_1_fu_1822_p1 = or_ln4_fu_1813_p4;
assign zext_ln43_fu_1787_p1 = shl_ln2_fu_1778_p4;
assign zext_ln44_fu_1722_p1 = or_ln_fu_1712_p4;
always @ (posedge ap_clk) begin
    p_cast117_reg_3018[0] <= 1'b0;
    p_cast117_reg_3018[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    p_cast117_reg_3018_pp0_iter1_reg[0] <= 1'b0;
    p_cast117_reg_3018_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_3069[0] <= 1'b1;
    zext_ln44_reg_3069[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_3069_pp0_iter1_reg[0] <= 1'b1;
    zext_ln44_reg_3069_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_3124[0] <= 1'b0;
    zext_ln39_reg_3124[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_3124_pp0_iter1_reg[0] <= 1'b0;
    zext_ln39_reg_3124_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_3241[0] <= 1'b1;
    zext_ln42_reg_3241[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_3241_pp0_iter1_reg[0] <= 1'b1;
    zext_ln42_reg_3241_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_3241_pp0_iter2_reg[0] <= 1'b1;
    zext_ln42_reg_3241_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln43_1_reg_3263[0] <= 1'b1;
    zext_ln43_1_reg_3263[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln43_1_reg_3263_pp0_iter1_reg[0] <= 1'b1;
    zext_ln43_1_reg_3263_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    tmp_reg_3330[4:0] <= 5'b00000;
    zext_ln40_2_reg_3452[0] <= 1'b0;
    zext_ln40_2_reg_3452[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln41_2_reg_3462[0] <= 1'b0;
    zext_ln41_2_reg_3462[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln40_3_reg_3482[0] <= 1'b1;
    zext_ln40_3_reg_3482[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_1_reg_3571[0] <= 1'b0;
    zext_ln42_1_reg_3571[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln41_3_reg_3645[0] <= 1'b1;
    zext_ln41_3_reg_3645[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln41_3_reg_3645_pp0_iter1_reg[0] <= 1'b1;
    zext_ln41_3_reg_3645_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_2_reg_3660[0] <= 1'b1;
    zext_ln42_2_reg_3660[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln40_reg_3685[0] <= 1'b0;
    zext_ln40_reg_3685[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln41_reg_3695[0] <= 1'b0;
    zext_ln41_reg_3695[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln40_1_reg_3715[0] <= 1'b1;
    zext_ln40_1_reg_3715[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln41_1_reg_3730[0] <= 1'b1;
    zext_ln41_1_reg_3730[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 