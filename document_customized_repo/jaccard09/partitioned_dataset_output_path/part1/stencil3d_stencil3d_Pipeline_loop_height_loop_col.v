
module stencil3d_stencil3d_Pipeline_loop_height_loop_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_0_address0,orig_0_ce0,orig_0_q0,C_load,C_load_1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [9:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [9:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [9:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [9:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [9:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [9:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [9:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [9:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [9:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [9:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [9:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [9:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [9:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [9:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [9:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [9:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [9:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [9:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [9:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [9:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [9:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln36_reg_1843;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_1070;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_1075;
reg   [31:0] reg_1080;
reg   [31:0] reg_1085;
reg   [31:0] reg_1090;
reg   [31:0] reg_1095;
reg   [31:0] reg_1100;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_1105;
reg   [31:0] reg_1110;
reg   [31:0] reg_1115;
reg   [31:0] reg_1120;
reg   [31:0] reg_1125;
reg   [31:0] reg_1130;
reg   [31:0] reg_1135;
wire   [31:0] grp_fu_1046_p2;
reg   [31:0] reg_1140;
wire   [31:0] grp_fu_1050_p2;
reg   [31:0] reg_1144;
wire   [31:0] grp_fu_1054_p2;
reg   [31:0] reg_1148;
wire   [31:0] grp_fu_1058_p2;
reg   [31:0] reg_1152;
wire   [0:0] icmp_ln36_fu_1174_p2;
reg   [0:0] icmp_ln36_reg_1843_pp0_iter1_reg;
reg   [0:0] icmp_ln36_reg_1843_pp0_iter2_reg;
wire   [0:0] icmp_ln37_fu_1189_p2;
reg   [0:0] icmp_ln37_reg_1847;
wire   [4:0] select_ln11_fu_1195_p3;
reg   [4:0] select_ln11_reg_1852;
wire   [4:0] select_ln36_fu_1217_p3;
reg   [4:0] select_ln36_reg_1860;
wire   [63:0] p_cast87_fu_1231_p1;
reg   [63:0] p_cast87_reg_1866;
reg   [63:0] p_cast87_reg_1866_pp0_iter1_reg;
reg   [63:0] p_cast87_reg_1866_pp0_iter2_reg;
wire   [63:0] p_cast91_fu_1263_p1;
reg   [63:0] p_cast91_reg_1885;
wire   [63:0] p_cast88_fu_1302_p1;
reg   [63:0] p_cast88_reg_2002;
wire   [63:0] p_cast89_fu_1322_p1;
reg   [63:0] p_cast89_reg_2014;
wire   [4:0] indvars_iv_next131_fu_1332_p2;
reg   [4:0] indvars_iv_next131_reg_2026;
reg   [31:0] orig_0_load_reg_2091;
reg  signed [31:0] sum0_reg_2096;
reg  signed [31:0] sum0_1_reg_2102;
reg  signed [31:0] sum0_2_reg_2109;
reg  signed [31:0] sum0_3_reg_2116;
reg  signed [31:0] sum0_4_reg_2123;
reg  signed [31:0] sum0_5_reg_2130;
reg  signed [31:0] sum0_5_reg_2130_pp0_iter1_reg;
reg  signed [31:0] sum0_6_reg_2137;
reg  signed [31:0] sum0_6_reg_2137_pp0_iter1_reg;
reg  signed [31:0] sum0_7_reg_2144;
reg  signed [31:0] sum0_7_reg_2144_pp0_iter1_reg;
reg  signed [31:0] sum0_8_reg_2151;
reg  signed [31:0] sum0_8_reg_2151_pp0_iter1_reg;
reg  signed [31:0] sum0_9_reg_2158;
reg  signed [31:0] sum0_9_reg_2158_pp0_iter1_reg;
reg  signed [31:0] sum0_10_reg_2165;
reg  signed [31:0] sum0_10_reg_2165_pp0_iter1_reg;
reg  signed [31:0] sum0_11_reg_2172;
reg  signed [31:0] sum0_11_reg_2172_pp0_iter1_reg;
reg  signed [31:0] sum0_12_reg_2179;
reg  signed [31:0] sum0_12_reg_2179_pp0_iter1_reg;
reg  signed [31:0] sum0_13_reg_2186;
reg  signed [31:0] sum0_13_reg_2186_pp0_iter1_reg;
reg   [31:0] orig_1_load_1_reg_2192;
reg   [31:0] orig_2_load_1_reg_2197;
reg   [31:0] orig_3_load_1_reg_2202;
reg   [31:0] orig_4_load_1_reg_2207;
reg   [31:0] orig_5_load_1_reg_2212;
reg   [31:0] orig_6_load_1_reg_2217;
wire   [31:0] add_ln48_3_fu_1370_p2;
reg   [31:0] add_ln48_3_reg_2292;
wire   [31:0] add_ln48_9_fu_1380_p2;
reg   [31:0] add_ln48_9_reg_2297;
wire   [31:0] add_ln48_15_fu_1390_p2;
reg   [31:0] add_ln48_15_reg_2302;
wire   [31:0] add_ln48_21_fu_1400_p2;
reg   [31:0] add_ln48_21_reg_2307;
wire   [31:0] add_ln48_27_fu_1410_p2;
reg   [31:0] add_ln48_27_reg_2312;
wire   [31:0] add_ln48_33_fu_1420_p2;
reg   [31:0] add_ln48_33_reg_2317;
wire   [31:0] add_ln48_fu_1426_p2;
reg   [31:0] add_ln48_reg_2367;
wire   [31:0] grp_fu_1030_p2;
reg   [31:0] mul_ln48_reg_2372;
reg   [31:0] mul_ln48_reg_2372_pp0_iter2_reg;
wire   [31:0] add_ln48_6_fu_1432_p2;
reg   [31:0] add_ln48_6_reg_2377;
wire   [31:0] grp_fu_1034_p2;
reg   [31:0] mul_ln48_2_reg_2382;
reg   [31:0] mul_ln48_2_reg_2382_pp0_iter2_reg;
wire   [31:0] add_ln48_12_fu_1438_p2;
reg   [31:0] add_ln48_12_reg_2387;
wire   [31:0] grp_fu_1038_p2;
reg   [31:0] mul_ln48_4_reg_2392;
reg   [31:0] mul_ln48_4_reg_2392_pp0_iter2_reg;
wire   [31:0] add_ln48_18_fu_1444_p2;
reg   [31:0] add_ln48_18_reg_2397;
wire   [31:0] grp_fu_1042_p2;
reg   [31:0] mul_ln48_6_reg_2402;
reg   [31:0] mul_ln48_6_reg_2402_pp0_iter2_reg;
wire   [31:0] add_ln48_24_fu_1450_p2;
reg   [31:0] add_ln48_24_reg_2407;
reg   [31:0] mul_ln48_8_reg_2412;
reg   [31:0] mul_ln48_8_reg_2412_pp0_iter2_reg;
wire   [31:0] add_ln48_30_fu_1456_p2;
reg   [31:0] add_ln48_30_reg_2417;
reg   [31:0] mul_ln48_10_reg_2422;
reg   [31:0] mul_ln48_10_reg_2422_pp0_iter2_reg;
reg   [31:0] mul_ln48_12_reg_2427;
reg   [31:0] mul_ln48_12_reg_2427_pp0_iter2_reg;
reg   [31:0] mul_ln48_14_reg_2432;
reg   [31:0] mul_ln48_14_reg_2432_pp0_iter2_reg;
wire   [31:0] grp_fu_1062_p2;
reg   [31:0] mul_ln48_16_reg_2437;
reg   [31:0] mul_ln48_16_reg_2437_pp0_iter2_reg;
wire   [31:0] grp_fu_1066_p2;
reg   [31:0] mul_ln48_18_reg_2442;
reg   [31:0] mul_ln48_18_reg_2442_pp0_iter2_reg;
reg   [31:0] orig_7_load_3_reg_2527;
reg   [31:0] orig_8_load_3_reg_2532;
reg   [31:0] orig_9_load_3_reg_2537;
reg   [31:0] orig_10_load_3_reg_2542;
reg   [31:0] orig_11_load_3_reg_2547;
reg   [31:0] orig_12_load_3_reg_2552;
reg   [31:0] orig_13_load_3_reg_2557;
reg   [31:0] orig_14_load_3_reg_2562;
reg   [31:0] orig_15_load_reg_2567;
wire  signed [31:0] add_ln48_4_fu_1466_p2;
reg  signed [31:0] add_ln48_4_reg_2572;
wire  signed [31:0] add_ln48_10_fu_1475_p2;
reg  signed [31:0] add_ln48_10_reg_2577;
wire  signed [31:0] add_ln48_16_fu_1484_p2;
reg  signed [31:0] add_ln48_16_reg_2582;
wire  signed [31:0] add_ln48_22_fu_1493_p2;
reg  signed [31:0] add_ln48_22_reg_2587;
wire  signed [31:0] add_ln48_28_fu_1502_p2;
reg  signed [31:0] add_ln48_28_reg_2592;
wire  signed [31:0] add_ln48_34_fu_1511_p2;
reg  signed [31:0] add_ln48_34_reg_2597;
reg   [31:0] mul_ln48_20_reg_2602;
reg   [31:0] mul_ln48_20_reg_2602_pp0_iter2_reg;
reg   [31:0] mul_ln48_22_reg_2607;
reg   [31:0] mul_ln48_22_reg_2607_pp0_iter2_reg;
reg   [31:0] mul_ln48_24_reg_2612;
reg   [31:0] mul_ln48_24_reg_2612_pp0_iter2_reg;
reg   [31:0] mul_ln48_26_reg_2617;
reg   [31:0] mul_ln48_26_reg_2617_pp0_iter2_reg;
wire   [31:0] add_ln48_36_fu_1516_p2;
reg   [31:0] add_ln48_36_reg_2622;
wire   [31:0] add_ln48_39_fu_1526_p2;
reg   [31:0] add_ln48_39_reg_2627;
wire   [31:0] add_ln48_42_fu_1531_p2;
reg   [31:0] add_ln48_42_reg_2632;
wire   [31:0] add_ln48_45_fu_1541_p2;
reg   [31:0] add_ln48_45_reg_2637;
wire   [31:0] add_ln48_48_fu_1546_p2;
reg   [31:0] add_ln48_48_reg_2642;
wire   [31:0] add_ln48_51_fu_1556_p2;
reg   [31:0] add_ln48_51_reg_2647;
wire   [31:0] add_ln48_54_fu_1561_p2;
reg   [31:0] add_ln48_54_reg_2652;
wire   [31:0] add_ln48_57_fu_1571_p2;
reg   [31:0] add_ln48_57_reg_2657;
wire   [31:0] add_ln48_60_fu_1576_p2;
reg   [31:0] add_ln48_60_reg_2662;
wire   [31:0] add_ln48_63_fu_1586_p2;
reg   [31:0] add_ln48_63_reg_2667;
wire   [31:0] add_ln48_66_fu_1591_p2;
reg   [31:0] add_ln48_66_reg_2672;
wire   [31:0] add_ln48_69_fu_1601_p2;
reg   [31:0] add_ln48_69_reg_2677;
wire   [31:0] add_ln48_72_fu_1606_p2;
reg   [31:0] add_ln48_72_reg_2682;
wire   [31:0] add_ln48_75_fu_1616_p2;
reg   [31:0] add_ln48_75_reg_2687;
wire   [31:0] add_ln48_78_fu_1621_p2;
reg   [31:0] add_ln48_78_reg_2692;
wire   [31:0] add_ln48_81_fu_1631_p2;
reg   [31:0] add_ln48_81_reg_2697;
wire  signed [31:0] add_ln48_40_fu_1641_p2;
reg  signed [31:0] add_ln48_40_reg_2702;
wire  signed [31:0] add_ln48_46_fu_1651_p2;
reg  signed [31:0] add_ln48_46_reg_2707;
wire  signed [31:0] add_ln48_52_fu_1661_p2;
reg  signed [31:0] add_ln48_52_reg_2712;
wire  signed [31:0] add_ln48_58_fu_1671_p2;
reg  signed [31:0] add_ln48_58_reg_2717;
wire  signed [31:0] add_ln48_64_fu_1681_p2;
reg  signed [31:0] add_ln48_64_reg_2722;
wire  signed [31:0] add_ln48_70_fu_1691_p2;
reg  signed [31:0] add_ln48_70_reg_2727;
wire  signed [31:0] add_ln48_76_fu_1701_p2;
reg  signed [31:0] add_ln48_76_reg_2732;
wire  signed [31:0] add_ln48_82_fu_1711_p2;
reg  signed [31:0] add_ln48_82_reg_2737;
reg   [31:0] mul_ln48_9_reg_2742;
reg   [31:0] mul_ln48_11_reg_2747;
reg   [31:0] mul_ln48_13_reg_2752;
reg   [31:0] mul_ln48_15_reg_2757;
reg   [31:0] mul_ln48_17_reg_2762;
reg   [31:0] mul_ln48_19_reg_2767;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast90_fu_1348_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] j_fu_112;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [4:0] i_fu_116;
reg   [9:0] indvar_flatten_fu_120;
wire   [9:0] add_ln36_fu_1180_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [9:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [9:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_0_ce0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    orig_8_ce1_local;
reg   [9:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [9:0] orig_8_address0_local;
reg    orig_9_ce1_local;
reg   [9:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [9:0] orig_9_address0_local;
reg    orig_10_ce1_local;
reg   [9:0] orig_10_address1_local;
reg    orig_10_ce0_local;
reg   [9:0] orig_10_address0_local;
reg    orig_11_ce1_local;
reg   [9:0] orig_11_address1_local;
reg    orig_11_ce0_local;
reg   [9:0] orig_11_address0_local;
reg    orig_12_ce1_local;
reg   [9:0] orig_12_address1_local;
reg    orig_12_ce0_local;
reg   [9:0] orig_12_address0_local;
reg    orig_13_ce1_local;
reg   [9:0] orig_13_address1_local;
reg    orig_13_ce0_local;
reg   [9:0] orig_13_address0_local;
reg    orig_14_ce1_local;
reg   [9:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [9:0] orig_14_address0_local;
reg    orig_15_ce0_local;
reg    sol_1_we0_local;
wire   [31:0] add_ln48_5_fu_1716_p2;
reg    sol_1_ce0_local;
reg    sol_2_we0_local;
wire   [31:0] add_ln48_11_fu_1722_p2;
reg    sol_2_ce0_local;
reg    sol_3_we0_local;
wire   [31:0] add_ln48_17_fu_1728_p2;
reg    sol_3_ce0_local;
reg    sol_4_we0_local;
wire   [31:0] add_ln48_23_fu_1734_p2;
reg    sol_4_ce0_local;
reg    sol_5_we0_local;
wire   [31:0] add_ln48_29_fu_1740_p2;
reg    sol_5_ce0_local;
reg    sol_6_we0_local;
wire   [31:0] add_ln48_35_fu_1745_p2;
reg    sol_6_ce0_local;
reg    sol_7_we0_local;
wire   [31:0] add_ln48_41_fu_1750_p2;
reg    sol_7_ce0_local;
reg    sol_8_we0_local;
wire   [31:0] add_ln48_47_fu_1755_p2;
reg    sol_8_ce0_local;
reg    sol_9_we0_local;
wire   [31:0] add_ln48_53_fu_1760_p2;
reg    sol_9_ce0_local;
reg    sol_10_we0_local;
wire   [31:0] add_ln48_59_fu_1765_p2;
reg    sol_10_ce0_local;
reg    sol_11_we0_local;
wire   [31:0] add_ln48_65_fu_1770_p2;
reg    sol_11_ce0_local;
reg    sol_12_we0_local;
wire   [31:0] add_ln48_71_fu_1776_p2;
reg    sol_12_ce0_local;
reg    sol_13_we0_local;
wire   [31:0] add_ln48_77_fu_1782_p2;
reg    sol_13_ce0_local;
reg    sol_14_we0_local;
wire   [31:0] add_ln48_83_fu_1788_p2;
reg    sol_14_ce0_local;
reg  signed [31:0] grp_fu_1030_p0;
reg  signed [31:0] grp_fu_1030_p1;
reg  signed [31:0] grp_fu_1034_p0;
reg  signed [31:0] grp_fu_1034_p1;
reg  signed [31:0] grp_fu_1038_p0;
reg  signed [31:0] grp_fu_1038_p1;
reg  signed [31:0] grp_fu_1042_p0;
reg  signed [31:0] grp_fu_1042_p1;
reg  signed [31:0] grp_fu_1046_p0;
reg  signed [31:0] grp_fu_1046_p1;
reg  signed [31:0] grp_fu_1050_p0;
reg  signed [31:0] grp_fu_1050_p1;
reg  signed [31:0] grp_fu_1054_p0;
reg  signed [31:0] grp_fu_1054_p1;
reg  signed [31:0] grp_fu_1058_p0;
reg  signed [31:0] grp_fu_1058_p1;
reg  signed [31:0] grp_fu_1062_p0;
reg  signed [31:0] grp_fu_1062_p1;
reg  signed [31:0] grp_fu_1066_p0;
reg  signed [31:0] grp_fu_1066_p1;
wire   [4:0] indvars_iv_next1452_fu_1211_p2;
wire   [9:0] tmp_fu_1224_p3;
wire   [4:0] tmp2_fu_1250_p2;
wire   [9:0] tmp_2_fu_1255_p3;
wire  signed [5:0] tmp_cast_cast_fu_1285_p3;
wire   [9:0] tmp_cast_cast_cast_fu_1292_p1;
wire   [9:0] tmp_s_fu_1278_p3;
wire   [9:0] empty_fu_1296_p2;
wire  signed [9:0] tmp1_cast_fu_1312_p1;
wire   [9:0] empty_10_fu_1316_p2;
wire   [9:0] tmp_1_fu_1342_p3;
wire   [31:0] add_ln48_2_fu_1366_p2;
wire   [31:0] add_ln48_8_fu_1376_p2;
wire   [31:0] add_ln48_14_fu_1386_p2;
wire   [31:0] add_ln48_20_fu_1396_p2;
wire   [31:0] add_ln48_26_fu_1406_p2;
wire   [31:0] add_ln48_32_fu_1416_p2;
wire   [31:0] add_ln48_1_fu_1462_p2;
wire   [31:0] add_ln48_7_fu_1471_p2;
wire   [31:0] add_ln48_13_fu_1480_p2;
wire   [31:0] add_ln48_19_fu_1489_p2;
wire   [31:0] add_ln48_25_fu_1498_p2;
wire   [31:0] add_ln48_31_fu_1507_p2;
wire   [31:0] add_ln48_38_fu_1522_p2;
wire   [31:0] add_ln48_44_fu_1537_p2;
wire   [31:0] add_ln48_50_fu_1552_p2;
wire   [31:0] add_ln48_56_fu_1567_p2;
wire   [31:0] add_ln48_62_fu_1582_p2;
wire   [31:0] add_ln48_68_fu_1597_p2;
wire   [31:0] add_ln48_74_fu_1612_p2;
wire   [31:0] add_ln48_80_fu_1627_p2;
wire   [31:0] add_ln48_37_fu_1636_p2;
wire   [31:0] add_ln48_43_fu_1646_p2;
wire   [31:0] add_ln48_49_fu_1656_p2;
wire   [31:0] add_ln48_55_fu_1666_p2;
wire   [31:0] add_ln48_61_fu_1676_p2;
wire   [31:0] add_ln48_67_fu_1686_p2;
wire   [31:0] add_ln48_73_fu_1696_p2;
wire   [31:0] add_ln48_79_fu_1706_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_112 = 5'd0;
#0 i_fu_116 = 5'd0;
#0 indvar_flatten_fu_120 = 10'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1030_p0),.din1(grp_fu_1030_p1),.ce(1'b1),.dout(grp_fu_1030_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1034_p0),.din1(grp_fu_1034_p1),.ce(1'b1),.dout(grp_fu_1034_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1038_p0),.din1(grp_fu_1038_p1),.ce(1'b1),.dout(grp_fu_1038_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1042_p0),.din1(grp_fu_1042_p1),.ce(1'b1),.dout(grp_fu_1042_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U73(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1046_p0),.din1(grp_fu_1046_p1),.ce(1'b1),.dout(grp_fu_1046_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1050_p0),.din1(grp_fu_1050_p1),.ce(1'b1),.dout(grp_fu_1050_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1054_p0),.din1(grp_fu_1054_p1),.ce(1'b1),.dout(grp_fu_1054_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1058_p0),.din1(grp_fu_1058_p1),.ce(1'b1),.dout(grp_fu_1058_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1062_p0),.din1(grp_fu_1062_p1),.ce(1'b1),.dout(grp_fu_1062_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1066_p0),.din1(grp_fu_1066_p1),.ce(1'b1),.dout(grp_fu_1066_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_116 <= 5'd1;
    end else if (((icmp_ln36_reg_1843 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_116 <= select_ln36_fu_1217_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln36_fu_1174_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_120 <= add_ln36_fu_1180_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_120 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_112 <= 5'd1;
    end else if (((icmp_ln36_reg_1843 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_112 <= indvars_iv_next131_fu_1332_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1070 <= orig_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1070 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1075 <= orig_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1075 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1080 <= orig_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1080 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1085 <= orig_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1085 <= orig_4_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1090 <= orig_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1090 <= orig_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1095 <= orig_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1095 <= orig_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1100 <= orig_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1100 <= orig_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1105 <= orig_8_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1105 <= orig_8_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1110 <= orig_9_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1110 <= orig_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1115 <= orig_10_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1115 <= orig_10_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1120 <= orig_11_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1120 <= orig_11_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1125 <= orig_12_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1125 <= orig_12_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1130 <= orig_13_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1130 <= orig_13_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_1135 <= orig_14_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1135 <= orig_14_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_2577 <= add_ln48_10_fu_1475_p2;
        add_ln48_16_reg_2582 <= add_ln48_16_fu_1484_p2;
        add_ln48_22_reg_2587 <= add_ln48_22_fu_1493_p2;
        add_ln48_28_reg_2592 <= add_ln48_28_fu_1502_p2;
        add_ln48_34_reg_2597 <= add_ln48_34_fu_1511_p2;
        add_ln48_4_reg_2572 <= add_ln48_4_fu_1466_p2;
        indvars_iv_next131_reg_2026 <= indvars_iv_next131_fu_1332_p2;
        mul_ln48_20_reg_2602_pp0_iter2_reg <= mul_ln48_20_reg_2602;
        mul_ln48_22_reg_2607_pp0_iter2_reg <= mul_ln48_22_reg_2607;
        mul_ln48_24_reg_2612_pp0_iter2_reg <= mul_ln48_24_reg_2612;
        mul_ln48_26_reg_2617_pp0_iter2_reg <= mul_ln48_26_reg_2617;
        orig_0_load_reg_2091 <= orig_0_q0;
        orig_15_load_reg_2567 <= orig_15_q0;
        p_cast88_reg_2002[9 : 0] <= p_cast88_fu_1302_p1[9 : 0];
        p_cast89_reg_2014[9 : 0] <= p_cast89_fu_1322_p1[9 : 0];
        sum0_10_reg_2165_pp0_iter1_reg <= sum0_10_reg_2165;
        sum0_11_reg_2172_pp0_iter1_reg <= sum0_11_reg_2172;
        sum0_12_reg_2179_pp0_iter1_reg <= sum0_12_reg_2179;
        sum0_13_reg_2186_pp0_iter1_reg <= sum0_13_reg_2186;
        sum0_5_reg_2130_pp0_iter1_reg <= sum0_5_reg_2130;
        sum0_6_reg_2137_pp0_iter1_reg <= sum0_6_reg_2137;
        sum0_7_reg_2144_pp0_iter1_reg <= sum0_7_reg_2144;
        sum0_8_reg_2151_pp0_iter1_reg <= sum0_8_reg_2151;
        sum0_9_reg_2158_pp0_iter1_reg <= sum0_9_reg_2158;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_12_reg_2387 <= add_ln48_12_fu_1438_p2;
        add_ln48_18_reg_2397 <= add_ln48_18_fu_1444_p2;
        add_ln48_24_reg_2407 <= add_ln48_24_fu_1450_p2;
        add_ln48_30_reg_2417 <= add_ln48_30_fu_1456_p2;
        add_ln48_40_reg_2702 <= add_ln48_40_fu_1641_p2;
        add_ln48_46_reg_2707 <= add_ln48_46_fu_1651_p2;
        add_ln48_52_reg_2712 <= add_ln48_52_fu_1661_p2;
        add_ln48_58_reg_2717 <= add_ln48_58_fu_1671_p2;
        add_ln48_64_reg_2722 <= add_ln48_64_fu_1681_p2;
        add_ln48_6_reg_2377 <= add_ln48_6_fu_1432_p2;
        add_ln48_70_reg_2727 <= add_ln48_70_fu_1691_p2;
        add_ln48_76_reg_2732 <= add_ln48_76_fu_1701_p2;
        add_ln48_82_reg_2737 <= add_ln48_82_fu_1711_p2;
        add_ln48_reg_2367 <= add_ln48_fu_1426_p2;
        mul_ln48_10_reg_2422_pp0_iter2_reg <= mul_ln48_10_reg_2422;
        mul_ln48_12_reg_2427_pp0_iter2_reg <= mul_ln48_12_reg_2427;
        mul_ln48_14_reg_2432_pp0_iter2_reg <= mul_ln48_14_reg_2432;
        mul_ln48_16_reg_2437_pp0_iter2_reg <= mul_ln48_16_reg_2437;
        mul_ln48_18_reg_2442_pp0_iter2_reg <= mul_ln48_18_reg_2442;
        mul_ln48_2_reg_2382_pp0_iter2_reg <= mul_ln48_2_reg_2382;
        mul_ln48_4_reg_2392_pp0_iter2_reg <= mul_ln48_4_reg_2392;
        mul_ln48_6_reg_2402_pp0_iter2_reg <= mul_ln48_6_reg_2402;
        mul_ln48_8_reg_2412_pp0_iter2_reg <= mul_ln48_8_reg_2412;
        mul_ln48_reg_2372_pp0_iter2_reg <= mul_ln48_reg_2372;
        p_cast87_reg_1866[9 : 0] <= p_cast87_fu_1231_p1[9 : 0];
        p_cast87_reg_1866_pp0_iter1_reg[9 : 0] <= p_cast87_reg_1866[9 : 0];
        p_cast87_reg_1866_pp0_iter2_reg[9 : 0] <= p_cast87_reg_1866_pp0_iter1_reg[9 : 0];
        p_cast91_reg_1885[9 : 0] <= p_cast91_fu_1263_p1[9 : 0];
        select_ln36_reg_1860 <= select_ln36_fu_1217_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_15_reg_2302 <= add_ln48_15_fu_1390_p2;
        add_ln48_21_reg_2307 <= add_ln48_21_fu_1400_p2;
        add_ln48_27_reg_2312 <= add_ln48_27_fu_1410_p2;
        add_ln48_33_reg_2317 <= add_ln48_33_fu_1420_p2;
        add_ln48_36_reg_2622 <= add_ln48_36_fu_1516_p2;
        add_ln48_39_reg_2627 <= add_ln48_39_fu_1526_p2;
        add_ln48_3_reg_2292 <= add_ln48_3_fu_1370_p2;
        add_ln48_42_reg_2632 <= add_ln48_42_fu_1531_p2;
        add_ln48_45_reg_2637 <= add_ln48_45_fu_1541_p2;
        add_ln48_48_reg_2642 <= add_ln48_48_fu_1546_p2;
        add_ln48_51_reg_2647 <= add_ln48_51_fu_1556_p2;
        add_ln48_54_reg_2652 <= add_ln48_54_fu_1561_p2;
        add_ln48_57_reg_2657 <= add_ln48_57_fu_1571_p2;
        add_ln48_60_reg_2662 <= add_ln48_60_fu_1576_p2;
        add_ln48_63_reg_2667 <= add_ln48_63_fu_1586_p2;
        add_ln48_66_reg_2672 <= add_ln48_66_fu_1591_p2;
        add_ln48_69_reg_2677 <= add_ln48_69_fu_1601_p2;
        add_ln48_72_reg_2682 <= add_ln48_72_fu_1606_p2;
        add_ln48_75_reg_2687 <= add_ln48_75_fu_1616_p2;
        add_ln48_78_reg_2692 <= add_ln48_78_fu_1621_p2;
        add_ln48_81_reg_2697 <= add_ln48_81_fu_1631_p2;
        add_ln48_9_reg_2297 <= add_ln48_9_fu_1380_p2;
        icmp_ln36_reg_1843 <= icmp_ln36_fu_1174_p2;
        icmp_ln36_reg_1843_pp0_iter1_reg <= icmp_ln36_reg_1843;
        icmp_ln36_reg_1843_pp0_iter2_reg <= icmp_ln36_reg_1843_pp0_iter1_reg;
        icmp_ln37_reg_1847 <= icmp_ln37_fu_1189_p2;
        select_ln11_reg_1852 <= select_ln11_fu_1195_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_10_reg_2422 <= grp_fu_1050_p2;
        mul_ln48_12_reg_2427 <= grp_fu_1054_p2;
        mul_ln48_14_reg_2432 <= grp_fu_1058_p2;
        mul_ln48_16_reg_2437 <= grp_fu_1062_p2;
        mul_ln48_18_reg_2442 <= grp_fu_1066_p2;
        mul_ln48_2_reg_2382 <= grp_fu_1034_p2;
        mul_ln48_4_reg_2392 <= grp_fu_1038_p2;
        mul_ln48_6_reg_2402 <= grp_fu_1042_p2;
        mul_ln48_8_reg_2412 <= grp_fu_1046_p2;
        mul_ln48_reg_2372 <= grp_fu_1030_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_11_reg_2747 <= grp_fu_1066_p2;
        mul_ln48_9_reg_2742 <= grp_fu_1062_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_13_reg_2752 <= grp_fu_1030_p2;
        mul_ln48_15_reg_2757 <= grp_fu_1034_p2;
        mul_ln48_17_reg_2762 <= grp_fu_1038_p2;
        mul_ln48_19_reg_2767 <= grp_fu_1042_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_20_reg_2602 <= grp_fu_1030_p2;
        mul_ln48_22_reg_2607 <= grp_fu_1034_p2;
        mul_ln48_24_reg_2612 <= grp_fu_1038_p2;
        mul_ln48_26_reg_2617 <= grp_fu_1042_p2;
        orig_10_load_3_reg_2542 <= orig_10_q0;
        orig_11_load_3_reg_2547 <= orig_11_q0;
        orig_12_load_3_reg_2552 <= orig_12_q0;
        orig_13_load_3_reg_2557 <= orig_13_q0;
        orig_14_load_3_reg_2562 <= orig_14_q0;
        orig_7_load_3_reg_2527 <= orig_7_q0;
        orig_8_load_3_reg_2532 <= orig_8_q0;
        orig_9_load_3_reg_2537 <= orig_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_load_1_reg_2192 <= orig_1_q1;
        orig_2_load_1_reg_2197 <= orig_2_q1;
        orig_3_load_1_reg_2202 <= orig_3_q1;
        orig_4_load_1_reg_2207 <= orig_4_q1;
        orig_5_load_1_reg_2212 <= orig_5_q1;
        orig_6_load_1_reg_2217 <= orig_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1140 <= grp_fu_1046_p2;
        reg_1144 <= grp_fu_1050_p2;
        reg_1148 <= grp_fu_1054_p2;
        reg_1152 <= grp_fu_1058_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum0_10_reg_2165 <= orig_11_q1;
        sum0_11_reg_2172 <= orig_12_q1;
        sum0_12_reg_2179 <= orig_13_q1;
        sum0_13_reg_2186 <= orig_14_q1;
        sum0_1_reg_2102 <= orig_2_q0;
        sum0_2_reg_2109 <= orig_3_q0;
        sum0_3_reg_2116 <= orig_4_q0;
        sum0_4_reg_2123 <= orig_5_q0;
        sum0_5_reg_2130 <= orig_6_q0;
        sum0_6_reg_2137 <= orig_7_q1;
        sum0_7_reg_2144 <= orig_8_q1;
        sum0_8_reg_2151 <= orig_9_q1;
        sum0_9_reg_2158 <= orig_10_q1;
        sum0_reg_2096 <= orig_1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_1843 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (icmp_ln36_reg_1843_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_120;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1030_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1030_p0 = sum0_10_reg_2165;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1030_p0 = sum0_reg_2096;
    end else begin
        grp_fu_1030_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1030_p1 = add_ln48_40_reg_2702;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1030_p1 = C_load;
    end else begin
        grp_fu_1030_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1034_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1034_p0 = sum0_11_reg_2172;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1034_p0 = sum0_1_reg_2102;
    end else begin
        grp_fu_1034_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1034_p1 = add_ln48_46_reg_2707;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1034_p1 = C_load;
    end else begin
        grp_fu_1034_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1038_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1038_p0 = sum0_12_reg_2179;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1038_p0 = sum0_2_reg_2109;
    end else begin
        grp_fu_1038_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1038_p1 = add_ln48_52_reg_2712;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1038_p1 = C_load;
    end else begin
        grp_fu_1038_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1042_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1042_p0 = sum0_13_reg_2186;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1042_p0 = sum0_3_reg_2116;
    end else begin
        grp_fu_1042_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1042_p1 = add_ln48_58_reg_2717;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1042_p1 = C_load;
    end else begin
        grp_fu_1042_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1046_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1046_p0 = sum0_4_reg_2123;
    end else begin
        grp_fu_1046_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1046_p1 = add_ln48_64_reg_2722;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1046_p1 = add_ln48_4_reg_2572;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1046_p1 = C_load;
    end else begin
        grp_fu_1046_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1050_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1050_p0 = sum0_5_reg_2130;
    end else begin
        grp_fu_1050_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1050_p1 = add_ln48_70_reg_2727;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1050_p1 = add_ln48_10_reg_2577;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1050_p1 = C_load;
    end else begin
        grp_fu_1050_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1054_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1054_p0 = sum0_6_reg_2137;
    end else begin
        grp_fu_1054_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1054_p1 = add_ln48_76_reg_2732;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1054_p1 = add_ln48_16_reg_2582;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1054_p1 = C_load;
    end else begin
        grp_fu_1054_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1058_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1058_p0 = sum0_7_reg_2144;
    end else begin
        grp_fu_1058_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1058_p1 = add_ln48_82_reg_2737;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1058_p1 = add_ln48_22_reg_2587;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1058_p1 = C_load;
    end else begin
        grp_fu_1058_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1062_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1062_p0 = sum0_8_reg_2151;
    end else begin
        grp_fu_1062_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1062_p1 = add_ln48_28_reg_2592;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1062_p1 = C_load;
    end else begin
        grp_fu_1062_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1066_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1066_p0 = sum0_9_reg_2158;
    end else begin
        grp_fu_1066_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1066_p1 = add_ln48_34_reg_2597;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1066_p1 = C_load;
    end else begin
        grp_fu_1066_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_10_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_10_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_10_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_10_address0_local = 'bx;
        end
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_11_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_11_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_11_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_11_address0_local = 'bx;
        end
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_12_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_12_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_12_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_12_address0_local = 'bx;
        end
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_13_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_13_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_13_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_13_address0_local = 'bx;
        end
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_14_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_14_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_14_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_14_address0_local = 'bx;
        end
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = p_cast90_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = p_cast88_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = p_cast87_fu_1231_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = p_cast89_fu_1322_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = p_cast91_fu_1263_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = p_cast90_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = p_cast88_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = p_cast87_fu_1231_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = p_cast89_fu_1322_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = p_cast91_fu_1263_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = p_cast90_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = p_cast88_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = p_cast87_fu_1231_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = p_cast89_fu_1322_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = p_cast91_fu_1263_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = p_cast90_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = p_cast88_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = p_cast87_fu_1231_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address1_local = p_cast89_fu_1322_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address1_local = p_cast91_fu_1263_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = p_cast90_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = p_cast88_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = p_cast87_fu_1231_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_5_address1_local = p_cast89_fu_1322_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_5_address1_local = p_cast91_fu_1263_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = p_cast90_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = p_cast88_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = p_cast87_fu_1231_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_6_address1_local = p_cast89_fu_1322_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_6_address1_local = p_cast91_fu_1263_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_7_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_7_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_7_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_7_address0_local = 'bx;
        end
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_8_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_8_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_8_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_8_address0_local = 'bx;
        end
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_9_address0_local = p_cast88_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_9_address0_local = p_cast91_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_9_address0_local = p_cast90_fu_1348_p1;
        end else begin
            orig_9_address0_local = 'bx;
        end
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address1_local = p_cast89_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address1_local = p_cast87_fu_1231_p1;
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_11_ce0_local = 1'b1;
    end else begin
        sol_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_13_ce0_local = 1'b1;
    end else begin
        sol_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_9_ce0_local = 1'b1;
    end else begin
        sol_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln36_fu_1180_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln48_10_fu_1475_p2 = (add_ln48_9_reg_2297 + add_ln48_7_fu_1471_p2);
assign add_ln48_11_fu_1722_p2 = (reg_1144 + mul_ln48_2_reg_2382_pp0_iter2_reg);
assign add_ln48_12_fu_1438_p2 = (reg_1080 + orig_3_q0);
assign add_ln48_13_fu_1480_p2 = (add_ln48_12_reg_2387 + orig_3_load_1_reg_2202);
assign add_ln48_14_fu_1386_p2 = ($signed(sum0_1_reg_2102) + $signed(sum0_3_reg_2116));
assign add_ln48_15_fu_1390_p2 = (add_ln48_14_fu_1386_p2 + reg_1080);
assign add_ln48_16_fu_1484_p2 = (add_ln48_15_reg_2302 + add_ln48_13_fu_1480_p2);
assign add_ln48_17_fu_1728_p2 = (reg_1148 + mul_ln48_4_reg_2392_pp0_iter2_reg);
assign add_ln48_18_fu_1444_p2 = (reg_1085 + orig_4_q0);
assign add_ln48_19_fu_1489_p2 = (add_ln48_18_reg_2397 + orig_4_load_1_reg_2207);
assign add_ln48_1_fu_1462_p2 = (add_ln48_reg_2367 + orig_1_load_1_reg_2192);
assign add_ln48_20_fu_1396_p2 = ($signed(sum0_2_reg_2109) + $signed(sum0_4_reg_2123));
assign add_ln48_21_fu_1400_p2 = (add_ln48_20_fu_1396_p2 + reg_1085);
assign add_ln48_22_fu_1493_p2 = (add_ln48_21_reg_2307 + add_ln48_19_fu_1489_p2);
assign add_ln48_23_fu_1734_p2 = (reg_1152 + mul_ln48_6_reg_2402_pp0_iter2_reg);
assign add_ln48_24_fu_1450_p2 = (reg_1090 + orig_5_q0);
assign add_ln48_25_fu_1498_p2 = (add_ln48_24_reg_2407 + orig_5_load_1_reg_2212);
assign add_ln48_26_fu_1406_p2 = ($signed(sum0_3_reg_2116) + $signed(sum0_5_reg_2130));
assign add_ln48_27_fu_1410_p2 = (add_ln48_26_fu_1406_p2 + reg_1090);
assign add_ln48_28_fu_1502_p2 = (add_ln48_27_reg_2312 + add_ln48_25_fu_1498_p2);
assign add_ln48_29_fu_1740_p2 = (mul_ln48_9_reg_2742 + mul_ln48_8_reg_2412_pp0_iter2_reg);
assign add_ln48_2_fu_1366_p2 = ($signed(orig_0_load_reg_2091) + $signed(sum0_1_reg_2102));
assign add_ln48_30_fu_1456_p2 = (reg_1095 + orig_6_q0);
assign add_ln48_31_fu_1507_p2 = (add_ln48_30_reg_2417 + orig_6_load_1_reg_2217);
assign add_ln48_32_fu_1416_p2 = ($signed(sum0_4_reg_2123) + $signed(sum0_6_reg_2137));
assign add_ln48_33_fu_1420_p2 = (add_ln48_32_fu_1416_p2 + reg_1095);
assign add_ln48_34_fu_1511_p2 = (add_ln48_33_reg_2317 + add_ln48_31_fu_1507_p2);
assign add_ln48_35_fu_1745_p2 = (mul_ln48_11_reg_2747 + mul_ln48_10_reg_2422_pp0_iter2_reg);
assign add_ln48_36_fu_1516_p2 = (orig_7_q0 + reg_1100);
assign add_ln48_37_fu_1636_p2 = (add_ln48_36_reg_2622 + reg_1100);
assign add_ln48_38_fu_1522_p2 = ($signed(sum0_5_reg_2130_pp0_iter1_reg) + $signed(sum0_7_reg_2144_pp0_iter1_reg));
assign add_ln48_39_fu_1526_p2 = (add_ln48_38_fu_1522_p2 + orig_7_load_3_reg_2527);
assign add_ln48_3_fu_1370_p2 = (add_ln48_2_fu_1366_p2 + reg_1070);
assign add_ln48_40_fu_1641_p2 = (add_ln48_39_reg_2627 + add_ln48_37_fu_1636_p2);
assign add_ln48_41_fu_1750_p2 = (mul_ln48_13_reg_2752 + mul_ln48_12_reg_2427_pp0_iter2_reg);
assign add_ln48_42_fu_1531_p2 = (orig_8_q0 + reg_1105);
assign add_ln48_43_fu_1646_p2 = (add_ln48_42_reg_2632 + reg_1105);
assign add_ln48_44_fu_1537_p2 = ($signed(sum0_6_reg_2137_pp0_iter1_reg) + $signed(sum0_8_reg_2151_pp0_iter1_reg));
assign add_ln48_45_fu_1541_p2 = (add_ln48_44_fu_1537_p2 + orig_8_load_3_reg_2532);
assign add_ln48_46_fu_1651_p2 = (add_ln48_45_reg_2637 + add_ln48_43_fu_1646_p2);
assign add_ln48_47_fu_1755_p2 = (mul_ln48_15_reg_2757 + mul_ln48_14_reg_2432_pp0_iter2_reg);
assign add_ln48_48_fu_1546_p2 = (orig_9_q0 + reg_1110);
assign add_ln48_49_fu_1656_p2 = (add_ln48_48_reg_2642 + reg_1110);
assign add_ln48_4_fu_1466_p2 = (add_ln48_3_reg_2292 + add_ln48_1_fu_1462_p2);
assign add_ln48_50_fu_1552_p2 = ($signed(sum0_7_reg_2144_pp0_iter1_reg) + $signed(sum0_9_reg_2158_pp0_iter1_reg));
assign add_ln48_51_fu_1556_p2 = (add_ln48_50_fu_1552_p2 + orig_9_load_3_reg_2537);
assign add_ln48_52_fu_1661_p2 = (add_ln48_51_reg_2647 + add_ln48_49_fu_1656_p2);
assign add_ln48_53_fu_1760_p2 = (mul_ln48_17_reg_2762 + mul_ln48_16_reg_2437_pp0_iter2_reg);
assign add_ln48_54_fu_1561_p2 = (orig_10_q0 + reg_1115);
assign add_ln48_55_fu_1666_p2 = (add_ln48_54_reg_2652 + reg_1115);
assign add_ln48_56_fu_1567_p2 = ($signed(sum0_8_reg_2151_pp0_iter1_reg) + $signed(sum0_10_reg_2165_pp0_iter1_reg));
assign add_ln48_57_fu_1571_p2 = (add_ln48_56_fu_1567_p2 + orig_10_load_3_reg_2542);
assign add_ln48_58_fu_1671_p2 = (add_ln48_57_reg_2657 + add_ln48_55_fu_1666_p2);
assign add_ln48_59_fu_1765_p2 = (mul_ln48_19_reg_2767 + mul_ln48_18_reg_2442_pp0_iter2_reg);
assign add_ln48_5_fu_1716_p2 = (reg_1140 + mul_ln48_reg_2372_pp0_iter2_reg);
assign add_ln48_60_fu_1576_p2 = (orig_11_q0 + reg_1120);
assign add_ln48_61_fu_1676_p2 = (add_ln48_60_reg_2662 + reg_1120);
assign add_ln48_62_fu_1582_p2 = ($signed(sum0_9_reg_2158_pp0_iter1_reg) + $signed(sum0_11_reg_2172_pp0_iter1_reg));
assign add_ln48_63_fu_1586_p2 = (add_ln48_62_fu_1582_p2 + orig_11_load_3_reg_2547);
assign add_ln48_64_fu_1681_p2 = (add_ln48_63_reg_2667 + add_ln48_61_fu_1676_p2);
assign add_ln48_65_fu_1770_p2 = (reg_1140 + mul_ln48_20_reg_2602_pp0_iter2_reg);
assign add_ln48_66_fu_1591_p2 = (orig_12_q0 + reg_1125);
assign add_ln48_67_fu_1686_p2 = (add_ln48_66_reg_2672 + reg_1125);
assign add_ln48_68_fu_1597_p2 = ($signed(sum0_10_reg_2165_pp0_iter1_reg) + $signed(sum0_12_reg_2179_pp0_iter1_reg));
assign add_ln48_69_fu_1601_p2 = (add_ln48_68_fu_1597_p2 + orig_12_load_3_reg_2552);
assign add_ln48_6_fu_1432_p2 = (reg_1075 + orig_2_q0);
assign add_ln48_70_fu_1691_p2 = (add_ln48_69_reg_2677 + add_ln48_67_fu_1686_p2);
assign add_ln48_71_fu_1776_p2 = (reg_1144 + mul_ln48_22_reg_2607_pp0_iter2_reg);
assign add_ln48_72_fu_1606_p2 = (orig_13_q0 + reg_1130);
assign add_ln48_73_fu_1696_p2 = (add_ln48_72_reg_2682 + reg_1130);
assign add_ln48_74_fu_1612_p2 = ($signed(sum0_11_reg_2172_pp0_iter1_reg) + $signed(sum0_13_reg_2186_pp0_iter1_reg));
assign add_ln48_75_fu_1616_p2 = (add_ln48_74_fu_1612_p2 + orig_13_load_3_reg_2557);
assign add_ln48_76_fu_1701_p2 = (add_ln48_75_reg_2687 + add_ln48_73_fu_1696_p2);
assign add_ln48_77_fu_1782_p2 = (reg_1148 + mul_ln48_24_reg_2612_pp0_iter2_reg);
assign add_ln48_78_fu_1621_p2 = (orig_14_q0 + reg_1135);
assign add_ln48_79_fu_1706_p2 = (add_ln48_78_reg_2692 + reg_1135);
assign add_ln48_7_fu_1471_p2 = (add_ln48_6_reg_2377 + orig_2_load_1_reg_2197);
assign add_ln48_80_fu_1627_p2 = ($signed(orig_15_load_reg_2567) + $signed(sum0_12_reg_2179_pp0_iter1_reg));
assign add_ln48_81_fu_1631_p2 = (add_ln48_80_fu_1627_p2 + orig_14_load_3_reg_2562);
assign add_ln48_82_fu_1711_p2 = (add_ln48_81_reg_2697 + add_ln48_79_fu_1706_p2);
assign add_ln48_83_fu_1788_p2 = (mul_ln48_26_reg_2617_pp0_iter2_reg + reg_1152);
assign add_ln48_8_fu_1376_p2 = ($signed(sum0_reg_2096) + $signed(sum0_2_reg_2109));
assign add_ln48_9_fu_1380_p2 = (add_ln48_8_fu_1376_p2 + reg_1075);
assign add_ln48_fu_1426_p2 = (reg_1070 + orig_1_q0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_10_fu_1316_p2 = ($signed(tmp1_cast_fu_1312_p1) + $signed(tmp_s_fu_1278_p3));
assign empty_fu_1296_p2 = (tmp_cast_cast_cast_fu_1292_p1 + tmp_s_fu_1278_p3);
assign icmp_ln36_fu_1174_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd900) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1189_p2 = ((ap_sig_allocacmp_j_load == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next131_fu_1332_p2 = (select_ln11_reg_1852 + 5'd1);
assign indvars_iv_next1452_fu_1211_p2 = (i_fu_116 + 5'd1);
assign orig_0_address0 = p_cast87_fu_1231_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_10_address0 = orig_10_address0_local;
assign orig_10_address1 = orig_10_address1_local;
assign orig_10_ce0 = orig_10_ce0_local;
assign orig_10_ce1 = orig_10_ce1_local;
assign orig_11_address0 = orig_11_address0_local;
assign orig_11_address1 = orig_11_address1_local;
assign orig_11_ce0 = orig_11_ce0_local;
assign orig_11_ce1 = orig_11_ce1_local;
assign orig_12_address0 = orig_12_address0_local;
assign orig_12_address1 = orig_12_address1_local;
assign orig_12_ce0 = orig_12_ce0_local;
assign orig_12_ce1 = orig_12_ce1_local;
assign orig_13_address0 = orig_13_address0_local;
assign orig_13_address1 = orig_13_address1_local;
assign orig_13_ce0 = orig_13_ce0_local;
assign orig_13_ce1 = orig_13_ce1_local;
assign orig_14_address0 = orig_14_address0_local;
assign orig_14_address1 = orig_14_address1_local;
assign orig_14_ce0 = orig_14_ce0_local;
assign orig_14_ce1 = orig_14_ce1_local;
assign orig_15_address0 = p_cast87_reg_1866;
assign orig_15_ce0 = orig_15_ce0_local;
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
assign orig_8_address0 = orig_8_address0_local;
assign orig_8_address1 = orig_8_address1_local;
assign orig_8_ce0 = orig_8_ce0_local;
assign orig_8_ce1 = orig_8_ce1_local;
assign orig_9_address0 = orig_9_address0_local;
assign orig_9_address1 = orig_9_address1_local;
assign orig_9_ce0 = orig_9_ce0_local;
assign orig_9_ce1 = orig_9_ce1_local;
assign p_cast87_fu_1231_p1 = tmp_fu_1224_p3;
assign p_cast88_fu_1302_p1 = empty_fu_1296_p2;
assign p_cast89_fu_1322_p1 = empty_10_fu_1316_p2;
assign p_cast90_fu_1348_p1 = tmp_1_fu_1342_p3;
assign p_cast91_fu_1263_p1 = tmp_2_fu_1255_p3;
assign select_ln11_fu_1195_p3 = ((icmp_ln37_fu_1189_p2[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j_load);
assign select_ln36_fu_1217_p3 = ((icmp_ln37_reg_1847[0:0] == 1'b1) ? indvars_iv_next1452_fu_1211_p2 : i_fu_116);
assign sol_10_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_d0 = add_ln48_59_fu_1765_p2;
assign sol_10_we0 = sol_10_we0_local;
assign sol_11_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_d0 = add_ln48_65_fu_1770_p2;
assign sol_11_we0 = sol_11_we0_local;
assign sol_12_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_d0 = add_ln48_71_fu_1776_p2;
assign sol_12_we0 = sol_12_we0_local;
assign sol_13_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_d0 = add_ln48_77_fu_1782_p2;
assign sol_13_we0 = sol_13_we0_local;
assign sol_14_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_d0 = add_ln48_83_fu_1788_p2;
assign sol_14_we0 = sol_14_we0_local;
assign sol_1_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_1716_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = add_ln48_11_fu_1722_p2;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = add_ln48_17_fu_1728_p2;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = add_ln48_23_fu_1734_p2;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = add_ln48_29_fu_1740_p2;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = add_ln48_35_fu_1745_p2;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = add_ln48_41_fu_1750_p2;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_d0 = add_ln48_47_fu_1755_p2;
assign sol_8_we0 = sol_8_we0_local;
assign sol_9_address0 = p_cast87_reg_1866_pp0_iter2_reg;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_d0 = add_ln48_53_fu_1760_p2;
assign sol_9_we0 = sol_9_we0_local;
assign tmp1_cast_fu_1312_p1 = tmp_cast_cast_fu_1285_p3;
assign tmp2_fu_1250_p2 = ($signed(select_ln11_reg_1852) + $signed(5'd31));
assign tmp_1_fu_1342_p3 = {{select_ln36_reg_1860}, {indvars_iv_next131_reg_2026}};
assign tmp_2_fu_1255_p3 = {{select_ln36_fu_1217_p3}, {tmp2_fu_1250_p2}};
assign tmp_cast_cast_cast_fu_1292_p1 = $unsigned(tmp_cast_cast_fu_1285_p3);
assign tmp_cast_cast_fu_1285_p3 = {{1'd1}, {select_ln11_reg_1852}};
assign tmp_fu_1224_p3 = {{select_ln36_fu_1217_p3}, {select_ln11_reg_1852}};
assign tmp_s_fu_1278_p3 = {{select_ln36_reg_1860}, {5'd0}};
always @ (posedge ap_clk) begin
    p_cast87_reg_1866[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast87_reg_1866_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast87_reg_1866_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast91_reg_1885[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast88_reg_2002[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast89_reg_2014[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
