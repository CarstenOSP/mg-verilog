
module stencil3d_stencil3d_Pipeline_loop_height_loop_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
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
output  [10:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
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
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
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
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire   [0:0] icmp_ln36_fu_1555_p2;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_950;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage0_11001;
reg  signed [31:0] reg_955;
reg   [31:0] reg_960;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg  signed [31:0] reg_964;
reg  signed [31:0] reg_969;
reg  signed [31:0] reg_974;
reg  signed [31:0] reg_979;
reg   [31:0] reg_984;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_988;
reg   [31:0] reg_992;
reg   [31:0] reg_996;
reg   [31:0] reg_1000;
reg   [31:0] reg_1004;
reg   [31:0] reg_1008;
reg   [31:0] reg_1012;
reg   [31:0] reg_1016;
reg   [31:0] reg_1020;
reg   [31:0] reg_1024;
reg   [31:0] reg_1028;
wire   [31:0] grp_fu_926_p2;
reg   [31:0] reg_1033;
wire   [31:0] grp_fu_930_p2;
reg   [31:0] reg_1037;
wire   [31:0] grp_fu_934_p2;
reg   [31:0] reg_1041;
wire   [31:0] grp_fu_938_p2;
reg   [31:0] reg_1045;
wire   [31:0] grp_fu_942_p2;
reg   [31:0] reg_1049;
wire   [31:0] grp_fu_946_p2;
reg   [31:0] reg_1053;
wire   [4:0] select_ln11_fu_1086_p3;
reg   [4:0] select_ln11_reg_1859;
wire   [4:0] i_fu_1094_p3;
reg   [4:0] i_reg_1866;
wire   [63:0] p_cast60_fu_1112_p1;
reg   [63:0] p_cast60_reg_1875;
reg   [63:0] p_cast60_reg_1875_pp0_iter1_reg;
wire   [63:0] zext_ln44_fu_1134_p1;
reg   [63:0] zext_ln44_reg_1926;
reg   [63:0] zext_ln44_reg_1926_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_1926_pp0_iter2_reg;
wire   [4:0] j_fu_1161_p2;
reg   [4:0] j_reg_1973;
wire   [63:0] zext_ln42_fu_1175_p1;
reg   [63:0] zext_ln42_reg_1978;
reg  signed [31:0] sum0_6_reg_2038;
reg  signed [31:0] sum0_7_reg_2055;
wire   [63:0] zext_ln42_1_fu_1219_p1;
reg   [63:0] zext_ln42_1_reg_2062;
wire   [63:0] zext_ln43_1_fu_1234_p1;
reg   [63:0] zext_ln43_1_reg_2076;
reg  signed [31:0] sum0_8_reg_2091;
reg  signed [31:0] sum0_9_reg_2103;
reg  signed [31:0] sum0_10_reg_2110;
reg  signed [31:0] sum0_11_reg_2117;
reg  signed [31:0] sum0_12_reg_2124;
reg  signed [31:0] sum0_13_reg_2131;
wire   [63:0] zext_ln40_1_fu_1276_p1;
reg   [63:0] zext_ln40_1_reg_2137;
wire   [63:0] zext_ln41_fu_1300_p1;
reg   [63:0] zext_ln41_reg_2151;
reg   [31:0] orig_7_load_3_reg_2171;
wire   [63:0] zext_ln40_2_fu_1313_p1;
reg   [63:0] zext_ln40_2_reg_2176;
wire   [63:0] zext_ln41_1_fu_1326_p1;
reg   [63:0] zext_ln41_1_reg_2191;
reg   [31:0] orig_0_load_4_reg_2206;
reg   [31:0] orig_0_load_5_reg_2211;
reg   [31:0] orig_1_load_7_reg_2216;
wire   [31:0] add_ln48_3_fu_1337_p2;
reg   [31:0] add_ln48_3_reg_2286;
reg   [31:0] mul_ln48_reg_2291;
wire   [31:0] add_ln48_9_fu_1349_p2;
reg   [31:0] add_ln48_9_reg_2306;
reg   [31:0] mul_ln48_2_reg_2311;
wire   [31:0] add_ln48_15_fu_1361_p2;
reg   [31:0] add_ln48_15_reg_2326;
reg   [31:0] mul_ln48_4_reg_2331;
wire   [31:0] add_ln48_21_fu_1373_p2;
reg   [31:0] add_ln48_21_reg_2346;
reg   [31:0] mul_ln48_6_reg_2351;
wire   [31:0] add_ln48_27_fu_1385_p2;
reg   [31:0] add_ln48_27_reg_2366;
reg   [31:0] mul_ln48_8_reg_2371;
wire   [31:0] add_ln48_33_fu_1396_p2;
reg   [31:0] add_ln48_33_reg_2386;
reg   [31:0] mul_ln48_10_reg_2391;
wire   [31:0] add_ln48_36_fu_1402_p2;
reg   [31:0] add_ln48_36_reg_2396;
wire   [31:0] add_ln48_39_fu_1412_p2;
reg   [31:0] add_ln48_39_reg_2401;
wire   [31:0] add_ln48_42_fu_1418_p2;
reg   [31:0] add_ln48_42_reg_2406;
wire   [31:0] add_ln48_45_fu_1427_p2;
reg   [31:0] add_ln48_45_reg_2411;
reg   [31:0] orig_1_load_8_reg_2416;
wire   [31:0] add_ln48_fu_1435_p2;
reg   [31:0] add_ln48_reg_2421;
wire   [31:0] add_ln48_6_fu_1441_p2;
reg   [31:0] add_ln48_6_reg_2426;
wire   [31:0] add_ln48_12_fu_1447_p2;
reg   [31:0] add_ln48_12_reg_2431;
wire   [31:0] add_ln48_18_fu_1453_p2;
reg   [31:0] add_ln48_18_reg_2436;
wire   [31:0] add_ln48_24_fu_1459_p2;
reg   [31:0] add_ln48_24_reg_2441;
wire   [31:0] add_ln48_30_fu_1465_p2;
reg   [31:0] add_ln48_30_reg_2446;
wire  signed [31:0] add_ln48_40_fu_1476_p2;
reg  signed [31:0] add_ln48_40_reg_2451;
wire  signed [31:0] add_ln48_46_fu_1486_p2;
reg  signed [31:0] add_ln48_46_reg_2456;
wire   [31:0] add_ln48_51_fu_1495_p2;
reg   [31:0] add_ln48_51_reg_2471;
reg   [31:0] mul_ln48_16_reg_2476;
reg   [31:0] mul_ln48_16_reg_2476_pp0_iter1_reg;
wire   [31:0] add_ln48_57_fu_1505_p2;
reg   [31:0] add_ln48_57_reg_2491;
reg   [31:0] mul_ln48_18_reg_2496;
reg   [31:0] mul_ln48_18_reg_2496_pp0_iter1_reg;
wire   [31:0] add_ln48_63_fu_1516_p2;
reg   [31:0] add_ln48_63_reg_2511;
reg   [31:0] mul_ln48_20_reg_2516;
reg   [31:0] mul_ln48_20_reg_2516_pp0_iter1_reg;
wire   [31:0] add_ln48_69_fu_1527_p2;
reg   [31:0] add_ln48_69_reg_2531;
reg   [31:0] mul_ln48_22_reg_2536;
reg   [31:0] mul_ln48_22_reg_2536_pp0_iter1_reg;
wire   [31:0] add_ln48_75_fu_1538_p2;
reg   [31:0] add_ln48_75_reg_2551;
wire   [0:0] icmp_ln37_fu_1550_p2;
reg   [0:0] icmp_ln37_reg_2566;
reg   [0:0] icmp_ln36_reg_2571;
reg   [0:0] icmp_ln36_reg_2571_pp0_iter1_reg;
wire  signed [31:0] add_ln48_4_fu_1571_p2;
reg  signed [31:0] add_ln48_4_reg_2575;
wire  signed [31:0] add_ln48_10_fu_1581_p2;
reg  signed [31:0] add_ln48_10_reg_2580;
wire  signed [31:0] add_ln48_16_fu_1591_p2;
reg  signed [31:0] add_ln48_16_reg_2585;
wire  signed [31:0] add_ln48_22_fu_1601_p2;
reg  signed [31:0] add_ln48_22_reg_2590;
wire  signed [31:0] add_ln48_28_fu_1611_p2;
reg  signed [31:0] add_ln48_28_reg_2595;
wire  signed [31:0] add_ln48_34_fu_1621_p2;
reg  signed [31:0] add_ln48_34_reg_2600;
wire   [31:0] add_ln48_48_fu_1626_p2;
reg   [31:0] add_ln48_48_reg_2605;
wire   [31:0] add_ln48_54_fu_1631_p2;
reg   [31:0] add_ln48_54_reg_2610;
wire   [31:0] add_ln48_60_fu_1636_p2;
reg   [31:0] add_ln48_60_reg_2615;
wire   [31:0] add_ln48_66_fu_1641_p2;
reg   [31:0] add_ln48_66_reg_2620;
wire   [31:0] add_ln48_72_fu_1646_p2;
reg   [31:0] add_ln48_72_reg_2625;
reg   [31:0] mul_ln48_24_reg_2630;
reg   [31:0] mul_ln48_24_reg_2630_pp0_iter2_reg;
reg   [31:0] orig_6_load_5_reg_2635;
wire   [31:0] add_ln48_78_fu_1651_p2;
reg   [31:0] add_ln48_78_reg_2645;
reg   [31:0] mul_ln48_26_reg_2650;
reg   [31:0] mul_ln48_26_reg_2650_pp0_iter2_reg;
reg   [31:0] mul_ln48_13_reg_2655;
reg   [31:0] mul_ln48_15_reg_2660;
wire  signed [31:0] add_ln48_52_fu_1661_p2;
reg  signed [31:0] add_ln48_52_reg_2665;
wire  signed [31:0] add_ln48_58_fu_1671_p2;
reg  signed [31:0] add_ln48_58_reg_2670;
wire  signed [31:0] add_ln48_64_fu_1681_p2;
reg  signed [31:0] add_ln48_64_reg_2675;
wire  signed [31:0] add_ln48_70_fu_1691_p2;
reg  signed [31:0] add_ln48_70_reg_2680;
wire  signed [31:0] add_ln48_76_fu_1701_p2;
reg  signed [31:0] add_ln48_76_reg_2685;
wire   [31:0] add_ln48_81_fu_1724_p2;
reg   [31:0] add_ln48_81_reg_2690;
wire  signed [31:0] add_ln48_82_fu_1770_p2;
reg  signed [31:0] add_ln48_82_reg_2695;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] ap_phi_mux_icmp_ln376_phi_fu_919_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln43_fu_1199_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [9:0] indvar_flatten2_fu_88;
wire   [9:0] add_ln36_fu_1544_p2;
reg   [4:0] i3_fu_92;
reg   [4:0] ap_sig_allocacmp_i3_load;
reg   [4:0] j4_fu_96;
reg   [4:0] ap_sig_allocacmp_j4_load;
reg   [4:0] indvars_iv_next3885_fu_100;
wire   [4:0] indvars_iv_next388_fu_1145_p2;
reg   [4:0] ap_sig_allocacmp_indvars_iv_next3885_load;
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
reg    sol_7_we0_local;
wire   [31:0] add_ln48_41_fu_1706_p2;
reg    sol_7_ce0_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_47_fu_1712_p2;
reg    sol_0_ce0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_5_fu_1730_p2;
reg    sol_1_ce0_local;
reg   [10:0] sol_1_address0_local;
wire   [31:0] add_ln48_53_fu_1775_p2;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
wire   [31:0] add_ln48_11_fu_1736_p2;
reg    sol_2_ce0_local;
reg   [10:0] sol_2_address0_local;
wire   [31:0] add_ln48_59_fu_1781_p2;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
wire   [31:0] add_ln48_17_fu_1742_p2;
reg    sol_3_ce0_local;
reg   [10:0] sol_3_address0_local;
wire   [31:0] add_ln48_65_fu_1787_p2;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
wire   [31:0] add_ln48_23_fu_1748_p2;
reg    sol_4_ce0_local;
reg   [10:0] sol_4_address0_local;
wire   [31:0] add_ln48_71_fu_1793_p2;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
wire   [31:0] add_ln48_29_fu_1754_p2;
reg    sol_5_ce0_local;
reg   [10:0] sol_5_address0_local;
wire   [31:0] add_ln48_77_fu_1799_p2;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
wire   [31:0] add_ln48_35_fu_1760_p2;
reg    sol_6_ce0_local;
reg   [10:0] sol_6_address0_local;
wire   [31:0] add_ln48_83_fu_1805_p2;
reg  signed [31:0] grp_fu_926_p0;
reg  signed [31:0] grp_fu_926_p1;
reg  signed [31:0] grp_fu_930_p0;
reg  signed [31:0] grp_fu_930_p1;
reg  signed [31:0] grp_fu_934_p0;
reg  signed [31:0] grp_fu_934_p1;
reg  signed [31:0] grp_fu_938_p0;
reg  signed [31:0] grp_fu_938_p1;
reg  signed [31:0] grp_fu_942_p0;
reg  signed [31:0] grp_fu_942_p1;
reg  signed [31:0] grp_fu_946_p0;
reg  signed [31:0] grp_fu_946_p1;
wire   [10:0] tmp_1_fu_1102_p4;
wire   [10:0] or_ln_fu_1124_p4;
wire   [10:0] shl_ln2_fu_1166_p4;
wire   [4:0] add_ln43_fu_1185_p2;
wire   [10:0] shl_ln3_fu_1190_p4;
wire   [10:0] or_ln3_fu_1210_p4;
wire   [10:0] or_ln4_fu_1225_p4;
wire  signed [5:0] zext_ln40_cast_fu_1251_p3;
wire   [9:0] zext_ln40_fu_1258_p1;
wire   [9:0] tmp_fu_1244_p3;
wire   [9:0] add_ln40_fu_1262_p2;
wire   [10:0] shl_ln_fu_1268_p3;
wire  signed [9:0] sext_ln41_fu_1282_p1;
wire   [9:0] add_ln41_fu_1286_p2;
wire   [10:0] shl_ln1_fu_1292_p3;
wire   [10:0] or_ln1_fu_1305_p3;
wire   [10:0] or_ln2_fu_1318_p3;
wire   [31:0] add_ln48_2_fu_1331_p2;
wire   [31:0] add_ln48_8_fu_1343_p2;
wire   [31:0] add_ln48_14_fu_1355_p2;
wire   [31:0] add_ln48_20_fu_1367_p2;
wire   [31:0] add_ln48_26_fu_1379_p2;
wire   [31:0] add_ln48_32_fu_1391_p2;
wire   [31:0] add_ln48_38_fu_1408_p2;
wire   [31:0] add_ln48_44_fu_1423_p2;
wire   [31:0] add_ln48_37_fu_1471_p2;
wire   [31:0] add_ln48_43_fu_1481_p2;
wire   [31:0] add_ln48_50_fu_1491_p2;
wire   [31:0] add_ln48_56_fu_1500_p2;
wire   [31:0] add_ln48_62_fu_1511_p2;
wire   [31:0] add_ln48_68_fu_1522_p2;
wire   [31:0] add_ln48_74_fu_1533_p2;
wire   [31:0] add_ln48_1_fu_1566_p1;
wire   [31:0] add_ln48_1_fu_1566_p2;
wire   [31:0] add_ln48_7_fu_1576_p1;
wire   [31:0] add_ln48_7_fu_1576_p2;
wire   [31:0] add_ln48_13_fu_1586_p1;
wire   [31:0] add_ln48_13_fu_1586_p2;
wire   [31:0] add_ln48_19_fu_1596_p1;
wire   [31:0] add_ln48_19_fu_1596_p2;
wire   [31:0] add_ln48_25_fu_1606_p1;
wire   [31:0] add_ln48_25_fu_1606_p2;
wire   [31:0] add_ln48_31_fu_1616_p1;
wire   [31:0] add_ln48_31_fu_1616_p2;
wire   [31:0] add_ln48_49_fu_1656_p1;
wire   [31:0] add_ln48_49_fu_1656_p2;
wire   [31:0] add_ln48_55_fu_1666_p1;
wire   [31:0] add_ln48_55_fu_1666_p2;
wire   [31:0] add_ln48_61_fu_1676_p1;
wire   [31:0] add_ln48_61_fu_1676_p2;
wire   [31:0] add_ln48_67_fu_1686_p1;
wire   [31:0] add_ln48_67_fu_1686_p2;
wire   [31:0] add_ln48_73_fu_1696_p1;
wire   [31:0] add_ln48_73_fu_1696_p2;
wire   [31:0] add_ln48_80_fu_1718_p2;
wire   [31:0] add_ln48_79_fu_1766_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1285;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_88 = 10'd0;
#0 i3_fu_92 = 5'd0;
#0 j4_fu_96 = 5'd0;
#0 indvars_iv_next3885_fu_100 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_926_p0),.din1(grp_fu_926_p1),.ce(1'b1),.dout(grp_fu_926_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_930_p0),.din1(grp_fu_930_p1),.ce(1'b1),.dout(grp_fu_930_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_934_p0),.din1(grp_fu_934_p1),.ce(1'b1),.dout(grp_fu_934_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_938_p0),.din1(grp_fu_938_p1),.ce(1'b1),.dout(grp_fu_938_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_942_p0),.din1(grp_fu_942_p1),.ce(1'b1),.dout(grp_fu_942_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_946_p0),.din1(grp_fu_946_p1),.ce(1'b1),.dout(grp_fu_946_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage2) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter2_stage2) & (ap_idle_pp0_0to1 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            i3_fu_92 <= i_fu_1094_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i3_fu_92 <= 5'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_88 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        indvar_flatten2_fu_88 <= add_ln36_fu_1544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvars_iv_next3885_fu_100 <= indvars_iv_next388_fu_1145_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next3885_fu_100 <= 5'd2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j4_fu_96 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j4_fu_96 <= j_fu_1161_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1028 <= orig_7_q0;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1028 <= orig_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_10_reg_2580 <= add_ln48_10_fu_1581_p2;
        add_ln48_16_reg_2585 <= add_ln48_16_fu_1591_p2;
        add_ln48_22_reg_2590 <= add_ln48_22_fu_1601_p2;
        add_ln48_28_reg_2595 <= add_ln48_28_fu_1611_p2;
        add_ln48_34_reg_2600 <= add_ln48_34_fu_1621_p2;
        add_ln48_48_reg_2605 <= add_ln48_48_fu_1626_p2;
        add_ln48_4_reg_2575 <= add_ln48_4_fu_1571_p2;
        add_ln48_54_reg_2610 <= add_ln48_54_fu_1631_p2;
        add_ln48_60_reg_2615 <= add_ln48_60_fu_1636_p2;
        add_ln48_66_reg_2620 <= add_ln48_66_fu_1641_p2;
        add_ln48_72_reg_2625 <= add_ln48_72_fu_1646_p2;
        add_ln48_78_reg_2645 <= add_ln48_78_fu_1651_p2;
        i_reg_1866 <= i_fu_1094_p3;
        mul_ln48_24_reg_2630_pp0_iter2_reg <= mul_ln48_24_reg_2630;
        mul_ln48_26_reg_2650_pp0_iter2_reg <= mul_ln48_26_reg_2650;
        p_cast60_reg_1875[10 : 1] <= p_cast60_fu_1112_p1[10 : 1];
        p_cast60_reg_1875_pp0_iter1_reg[10 : 1] <= p_cast60_reg_1875[10 : 1];
        select_ln11_reg_1859 <= select_ln11_fu_1086_p3;
        zext_ln44_reg_1926[10 : 1] <= zext_ln44_fu_1134_p1[10 : 1];
        zext_ln44_reg_1926_pp0_iter1_reg[10 : 1] <= zext_ln44_reg_1926[10 : 1];
        zext_ln44_reg_1926_pp0_iter2_reg[10 : 1] <= zext_ln44_reg_1926_pp0_iter1_reg[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_12_reg_2431 <= add_ln48_12_fu_1447_p2;
        add_ln48_18_reg_2436 <= add_ln48_18_fu_1453_p2;
        add_ln48_24_reg_2441 <= add_ln48_24_fu_1459_p2;
        add_ln48_30_reg_2446 <= add_ln48_30_fu_1465_p2;
        add_ln48_40_reg_2451 <= add_ln48_40_fu_1476_p2;
        add_ln48_46_reg_2456 <= add_ln48_46_fu_1486_p2;
        add_ln48_51_reg_2471 <= add_ln48_51_fu_1495_p2;
        add_ln48_57_reg_2491 <= add_ln48_57_fu_1505_p2;
        add_ln48_63_reg_2511 <= add_ln48_63_fu_1516_p2;
        add_ln48_69_reg_2531 <= add_ln48_69_fu_1527_p2;
        add_ln48_6_reg_2426 <= add_ln48_6_fu_1441_p2;
        add_ln48_75_reg_2551 <= add_ln48_75_fu_1538_p2;
        add_ln48_reg_2421 <= add_ln48_fu_1435_p2;
        icmp_ln36_reg_2571 <= icmp_ln36_fu_1555_p2;
        icmp_ln36_reg_2571_pp0_iter1_reg <= icmp_ln36_reg_2571;
        mul_ln48_16_reg_2476_pp0_iter1_reg <= mul_ln48_16_reg_2476;
        mul_ln48_18_reg_2496_pp0_iter1_reg <= mul_ln48_18_reg_2496;
        mul_ln48_20_reg_2516_pp0_iter1_reg <= mul_ln48_20_reg_2516;
        mul_ln48_22_reg_2536_pp0_iter1_reg <= mul_ln48_22_reg_2536;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_15_reg_2326 <= add_ln48_15_fu_1361_p2;
        add_ln48_21_reg_2346 <= add_ln48_21_fu_1373_p2;
        add_ln48_27_reg_2366 <= add_ln48_27_fu_1385_p2;
        add_ln48_33_reg_2386 <= add_ln48_33_fu_1396_p2;
        add_ln48_36_reg_2396 <= add_ln48_36_fu_1402_p2;
        add_ln48_39_reg_2401 <= add_ln48_39_fu_1412_p2;
        add_ln48_3_reg_2286 <= add_ln48_3_fu_1337_p2;
        add_ln48_42_reg_2406 <= add_ln48_42_fu_1418_p2;
        add_ln48_45_reg_2411 <= add_ln48_45_fu_1427_p2;
        add_ln48_82_reg_2695 <= add_ln48_82_fu_1770_p2;
        add_ln48_9_reg_2306 <= add_ln48_9_fu_1349_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_52_reg_2665 <= add_ln48_52_fu_1661_p2;
        add_ln48_58_reg_2670 <= add_ln48_58_fu_1671_p2;
        add_ln48_64_reg_2675 <= add_ln48_64_fu_1681_p2;
        add_ln48_70_reg_2680 <= add_ln48_70_fu_1691_p2;
        add_ln48_76_reg_2685 <= add_ln48_76_fu_1701_p2;
        j_reg_1973 <= j_fu_1161_p2;
        zext_ln42_1_reg_2062[10 : 1] <= zext_ln42_1_fu_1219_p1[10 : 1];
        zext_ln42_reg_1978[10 : 1] <= zext_ln42_fu_1175_p1[10 : 1];
        zext_ln43_1_reg_2076[10 : 1] <= zext_ln43_1_fu_1234_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_81_reg_2690 <= add_ln48_81_fu_1724_p2;
        zext_ln40_1_reg_2137[10 : 1] <= zext_ln40_1_fu_1276_p1[10 : 1];
        zext_ln40_2_reg_2176[10 : 1] <= zext_ln40_2_fu_1313_p1[10 : 1];
        zext_ln41_1_reg_2191[10 : 1] <= zext_ln41_1_fu_1326_p1[10 : 1];
        zext_ln41_reg_2151[10 : 1] <= zext_ln41_fu_1300_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln37_reg_2566 <= icmp_ln37_fu_1550_p2;
        mul_ln48_16_reg_2476 <= grp_fu_934_p2;
        mul_ln48_18_reg_2496 <= grp_fu_938_p2;
        mul_ln48_20_reg_2516 <= grp_fu_942_p2;
        mul_ln48_22_reg_2536 <= grp_fu_946_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_10_reg_2391 <= grp_fu_946_p2;
        mul_ln48_2_reg_2311 <= grp_fu_930_p2;
        mul_ln48_4_reg_2331 <= grp_fu_934_p2;
        mul_ln48_6_reg_2351 <= grp_fu_938_p2;
        mul_ln48_8_reg_2371 <= grp_fu_942_p2;
        mul_ln48_reg_2291 <= grp_fu_926_p2;
        orig_1_load_8_reg_2416 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_13_reg_2655 <= grp_fu_926_p2;
        mul_ln48_15_reg_2660 <= grp_fu_930_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_24_reg_2630 <= grp_fu_926_p2;
        mul_ln48_26_reg_2650 <= grp_fu_930_p2;
        orig_6_load_5_reg_2635 <= orig_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_4_reg_2206 <= orig_0_q1;
        orig_0_load_5_reg_2211 <= orig_0_q0;
        orig_1_load_7_reg_2216 <= orig_1_q0;
        orig_7_load_3_reg_2171 <= orig_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1000 <= orig_3_q0;
        reg_1004 <= orig_4_q1;
        reg_1008 <= orig_4_q0;
        reg_1012 <= orig_5_q1;
        reg_1016 <= orig_5_q0;
        reg_1020 <= orig_6_q1;
        reg_1024 <= orig_6_q0;
        reg_984 <= orig_1_q1;
        reg_988 <= orig_2_q1;
        reg_992 <= orig_2_q0;
        reg_996 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1033 <= grp_fu_926_p2;
        reg_1037 <= grp_fu_930_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1041 <= grp_fu_934_p2;
        reg_1045 <= grp_fu_938_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1049 <= grp_fu_942_p2;
        reg_1053 <= grp_fu_946_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_950 <= orig_1_q1;
        reg_955 <= orig_2_q1;
        reg_964 <= orig_3_q1;
        reg_969 <= orig_4_q1;
        reg_974 <= orig_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_960 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_979 <= orig_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_10_reg_2110 <= orig_3_q0;
        sum0_11_reg_2117 <= orig_4_q0;
        sum0_12_reg_2124 <= orig_5_q0;
        sum0_13_reg_2131 <= orig_6_q0;
        sum0_6_reg_2038 <= orig_7_q1;
        sum0_7_reg_2055 <= orig_0_q0;
        sum0_8_reg_2091 <= orig_1_q0;
        sum0_9_reg_2103 <= orig_2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_1555_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_2571_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_1285)) begin
            ap_phi_mux_icmp_ln376_phi_fu_919_p4 = icmp_ln37_reg_2566;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln376_phi_fu_919_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln376_phi_fu_919_p4 = icmp_ln37_reg_2566;
        end
    end else begin
        ap_phi_mux_icmp_ln376_phi_fu_919_p4 = icmp_ln37_reg_2566;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i3_load = 5'd1;
    end else begin
        ap_sig_allocacmp_i3_load = i3_fu_92;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvars_iv_next3885_load = 5'd2;
    end else begin
        ap_sig_allocacmp_indvars_iv_next3885_load = indvars_iv_next3885_fu_100;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j4_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j4_load = j4_fu_96;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_926_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_926_p0 = sum0_12_reg_2124;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_926_p0 = sum0_6_reg_2038;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_926_p0 = reg_950;
    end else begin
        grp_fu_926_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_926_p1 = add_ln48_4_reg_2575;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_926_p1 = add_ln48_40_reg_2451;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_926_p1 = C_load;
    end else begin
        grp_fu_926_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_930_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_930_p0 = sum0_13_reg_2131;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_930_p0 = sum0_7_reg_2055;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_930_p0 = reg_955;
    end else begin
        grp_fu_930_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_930_p1 = add_ln48_10_reg_2580;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_930_p1 = add_ln48_46_reg_2456;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_930_p1 = C_load;
    end else begin
        grp_fu_930_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_934_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_934_p0 = sum0_8_reg_2091;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_934_p0 = reg_964;
    end else begin
        grp_fu_934_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_934_p1 = add_ln48_76_reg_2685;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_934_p1 = add_ln48_52_reg_2665;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_934_p1 = add_ln48_16_reg_2585;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_934_p1 = C_load;
    end else begin
        grp_fu_934_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_938_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_938_p0 = sum0_9_reg_2103;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_938_p0 = reg_969;
    end else begin
        grp_fu_938_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_938_p1 = add_ln48_82_reg_2695;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_938_p1 = add_ln48_58_reg_2670;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_938_p1 = add_ln48_22_reg_2590;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_938_p1 = C_load;
    end else begin
        grp_fu_938_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_942_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_942_p0 = sum0_10_reg_2110;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_942_p0 = reg_974;
    end else begin
        grp_fu_942_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_942_p1 = add_ln48_64_reg_2675;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_942_p1 = add_ln48_28_reg_2595;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_942_p1 = C_load;
    end else begin
        grp_fu_942_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_946_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_946_p0 = sum0_11_reg_2117;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_946_p0 = reg_979;
    end else begin
        grp_fu_946_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_946_p1 = add_ln48_70_reg_2680;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_946_p1 = add_ln48_34_reg_2600;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_946_p1 = C_load;
    end else begin
        grp_fu_946_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln41_1_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln43_1_fu_1234_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln44_fu_1134_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln40_2_fu_1313_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln42_1_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address0_local = zext_ln41_1_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address0_local = zext_ln42_reg_1978;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln43_1_reg_2076;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln42_1_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln44_fu_1134_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln40_2_reg_2176;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln41_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln40_1_fu_1276_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln43_fu_1199_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address0_local = zext_ln41_1_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address0_local = zext_ln41_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln43_1_reg_2076;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln43_fu_1199_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln44_fu_1134_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address1_local = zext_ln40_2_reg_2176;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address1_local = zext_ln40_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = zext_ln42_1_reg_2062;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln42_fu_1175_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address0_local = zext_ln41_1_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address0_local = zext_ln41_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address0_local = zext_ln43_1_reg_2076;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln43_fu_1199_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address0_local = zext_ln44_fu_1134_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address1_local = zext_ln40_2_reg_2176;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address1_local = zext_ln40_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = zext_ln42_1_reg_2062;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln42_fu_1175_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_4_address0_local = zext_ln41_1_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_4_address0_local = zext_ln41_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address0_local = zext_ln43_1_reg_2076;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address0_local = zext_ln43_fu_1199_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_4_address0_local = zext_ln44_fu_1134_p1;
        end else begin
            orig_4_address0_local = 'bx;
        end
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_4_address1_local = zext_ln40_2_reg_2176;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_4_address1_local = zext_ln40_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address1_local = zext_ln42_1_reg_2062;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address1_local = zext_ln42_fu_1175_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_4_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_5_address0_local = zext_ln41_1_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_5_address0_local = zext_ln41_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_5_address0_local = zext_ln43_1_reg_2076;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_5_address0_local = zext_ln43_fu_1199_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_5_address0_local = zext_ln44_fu_1134_p1;
        end else begin
            orig_5_address0_local = 'bx;
        end
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_5_address1_local = zext_ln40_2_reg_2176;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_5_address1_local = zext_ln40_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_5_address1_local = zext_ln42_1_reg_2062;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_5_address1_local = zext_ln42_fu_1175_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_5_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_6_address0_local = zext_ln41_1_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_6_address0_local = zext_ln41_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_6_address0_local = zext_ln43_1_reg_2076;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_6_address0_local = zext_ln43_fu_1199_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_6_address0_local = zext_ln44_fu_1134_p1;
        end else begin
            orig_6_address0_local = 'bx;
        end
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_6_address1_local = zext_ln40_2_reg_2176;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_6_address1_local = zext_ln40_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_6_address1_local = zext_ln42_1_reg_2062;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_6_address1_local = zext_ln42_fu_1175_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_6_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln44_reg_1926;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln41_fu_1300_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln43_fu_1199_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_7_address1_local = zext_ln40_1_fu_1276_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_7_address1_local = zext_ln42_fu_1175_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_7_address1_local = p_cast60_fu_1112_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_1_address0_local = zext_ln44_reg_1926_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_address0_local = p_cast60_reg_1875_pp0_iter1_reg;
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_1_d0_local = add_ln48_53_fu_1775_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_d0_local = add_ln48_5_fu_1730_p2;
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_address0_local = zext_ln44_reg_1926_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_address0_local = p_cast60_reg_1875_pp0_iter1_reg;
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_d0_local = add_ln48_59_fu_1781_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_d0_local = add_ln48_11_fu_1736_p2;
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_3_address0_local = zext_ln44_reg_1926_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_address0_local = p_cast60_reg_1875_pp0_iter1_reg;
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_3_d0_local = add_ln48_65_fu_1787_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_d0_local = add_ln48_17_fu_1742_p2;
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_address0_local = zext_ln44_reg_1926_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_4_address0_local = p_cast60_reg_1875_pp0_iter1_reg;
    end else begin
        sol_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_d0_local = add_ln48_71_fu_1793_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_4_d0_local = add_ln48_23_fu_1748_p2;
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_address0_local = zext_ln44_reg_1926_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_5_address0_local = p_cast60_reg_1875_pp0_iter1_reg;
    end else begin
        sol_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_d0_local = add_ln48_77_fu_1799_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_5_d0_local = add_ln48_29_fu_1754_p2;
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_6_address0_local = zext_ln44_reg_1926_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_6_address0_local = p_cast60_reg_1875_pp0_iter1_reg;
    end else begin
        sol_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_6_d0_local = add_ln48_83_fu_1805_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_6_d0_local = add_ln48_35_fu_1760_p2;
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage2) & (ap_idle_pp0_0to1 == 1'b1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln36_fu_1544_p2 = (indvar_flatten2_fu_88 + 10'd1);
assign add_ln40_fu_1262_p2 = (zext_ln40_fu_1258_p1 + tmp_fu_1244_p3);
assign add_ln41_fu_1286_p2 = ($signed(sext_ln41_fu_1282_p1) + $signed(tmp_fu_1244_p3));
assign add_ln43_fu_1185_p2 = ($signed(select_ln11_reg_1859) + $signed(5'd31));
assign add_ln48_10_fu_1581_p2 = (add_ln48_9_reg_2306 + add_ln48_7_fu_1576_p2);
assign add_ln48_11_fu_1736_p2 = (reg_1037 + mul_ln48_2_reg_2311);
assign add_ln48_12_fu_1447_p2 = ($signed(reg_955) + $signed(orig_3_q0));
assign add_ln48_13_fu_1586_p1 = reg_964;
assign add_ln48_13_fu_1586_p2 = (add_ln48_12_reg_2431 + add_ln48_13_fu_1586_p1);
assign add_ln48_14_fu_1355_p2 = ($signed(reg_1000) + $signed(reg_969));
assign add_ln48_15_fu_1361_p2 = (add_ln48_14_fu_1355_p2 + reg_996);
assign add_ln48_16_fu_1591_p2 = (add_ln48_15_reg_2326 + add_ln48_13_fu_1586_p2);
assign add_ln48_17_fu_1742_p2 = (reg_1041 + mul_ln48_4_reg_2331);
assign add_ln48_18_fu_1453_p2 = ($signed(reg_964) + $signed(orig_4_q0));
assign add_ln48_19_fu_1596_p1 = reg_969;
assign add_ln48_19_fu_1596_p2 = (add_ln48_18_reg_2436 + add_ln48_19_fu_1596_p1);
assign add_ln48_1_fu_1566_p1 = reg_950;
assign add_ln48_1_fu_1566_p2 = (add_ln48_reg_2421 + add_ln48_1_fu_1566_p1);
assign add_ln48_20_fu_1367_p2 = ($signed(reg_1008) + $signed(reg_974));
assign add_ln48_21_fu_1373_p2 = (add_ln48_20_fu_1367_p2 + reg_1004);
assign add_ln48_22_fu_1601_p2 = (add_ln48_21_reg_2346 + add_ln48_19_fu_1596_p2);
assign add_ln48_23_fu_1748_p2 = (reg_1045 + mul_ln48_6_reg_2351);
assign add_ln48_24_fu_1459_p2 = ($signed(reg_969) + $signed(orig_5_q0));
assign add_ln48_25_fu_1606_p1 = reg_974;
assign add_ln48_25_fu_1606_p2 = (add_ln48_24_reg_2441 + add_ln48_25_fu_1606_p1);
assign add_ln48_26_fu_1379_p2 = ($signed(reg_1016) + $signed(reg_979));
assign add_ln48_27_fu_1385_p2 = (add_ln48_26_fu_1379_p2 + reg_1012);
assign add_ln48_28_fu_1611_p2 = (add_ln48_27_reg_2366 + add_ln48_25_fu_1606_p2);
assign add_ln48_29_fu_1754_p2 = (reg_1049 + mul_ln48_8_reg_2371);
assign add_ln48_2_fu_1331_p2 = ($signed(reg_955) + $signed(reg_960));
assign add_ln48_30_fu_1465_p2 = ($signed(reg_974) + $signed(orig_6_q0));
assign add_ln48_31_fu_1616_p1 = reg_979;
assign add_ln48_31_fu_1616_p2 = (add_ln48_30_reg_2446 + add_ln48_31_fu_1616_p1);
assign add_ln48_32_fu_1391_p2 = ($signed(reg_1024) + $signed(sum0_6_reg_2038));
assign add_ln48_33_fu_1396_p2 = (add_ln48_32_fu_1391_p2 + reg_1020);
assign add_ln48_34_fu_1621_p2 = (add_ln48_33_reg_2386 + add_ln48_31_fu_1616_p2);
assign add_ln48_35_fu_1760_p2 = (reg_1053 + mul_ln48_10_reg_2391);
assign add_ln48_36_fu_1402_p2 = ($signed(reg_979) + $signed(orig_7_q0));
assign add_ln48_37_fu_1471_p2 = (add_ln48_36_reg_2396 + reg_1028);
assign add_ln48_38_fu_1408_p2 = ($signed(orig_7_load_3_reg_2171) + $signed(sum0_7_reg_2055));
assign add_ln48_39_fu_1412_p2 = (add_ln48_38_fu_1408_p2 + reg_1028);
assign add_ln48_3_fu_1337_p2 = (add_ln48_2_fu_1331_p2 + reg_984);
assign add_ln48_40_fu_1476_p2 = (add_ln48_39_reg_2401 + add_ln48_37_fu_1471_p2);
assign add_ln48_41_fu_1706_p2 = (mul_ln48_13_reg_2655 + reg_1033);
assign add_ln48_42_fu_1418_p2 = ($signed(sum0_6_reg_2038) + $signed(orig_0_q0));
assign add_ln48_43_fu_1481_p2 = (add_ln48_42_reg_2406 + reg_960);
assign add_ln48_44_fu_1423_p2 = ($signed(orig_0_load_5_reg_2211) + $signed(sum0_8_reg_2091));
assign add_ln48_45_fu_1427_p2 = (add_ln48_44_fu_1423_p2 + orig_0_load_4_reg_2206);
assign add_ln48_46_fu_1486_p2 = (add_ln48_45_reg_2411 + add_ln48_43_fu_1481_p2);
assign add_ln48_47_fu_1712_p2 = (mul_ln48_15_reg_2660 + reg_1037);
assign add_ln48_48_fu_1626_p2 = ($signed(sum0_7_reg_2055) + $signed(orig_1_q0));
assign add_ln48_49_fu_1656_p1 = reg_950;
assign add_ln48_49_fu_1656_p2 = (add_ln48_48_reg_2605 + add_ln48_49_fu_1656_p1);
assign add_ln48_4_fu_1571_p2 = (add_ln48_3_reg_2286 + add_ln48_1_fu_1566_p2);
assign add_ln48_50_fu_1491_p2 = ($signed(orig_1_load_8_reg_2416) + $signed(sum0_9_reg_2103));
assign add_ln48_51_fu_1495_p2 = (add_ln48_50_fu_1491_p2 + orig_1_load_7_reg_2216);
assign add_ln48_52_fu_1661_p2 = (add_ln48_51_reg_2471 + add_ln48_49_fu_1656_p2);
assign add_ln48_53_fu_1775_p2 = (reg_1041 + mul_ln48_16_reg_2476_pp0_iter1_reg);
assign add_ln48_54_fu_1631_p2 = ($signed(sum0_8_reg_2091) + $signed(orig_2_q0));
assign add_ln48_55_fu_1666_p1 = reg_955;
assign add_ln48_55_fu_1666_p2 = (add_ln48_54_reg_2610 + add_ln48_55_fu_1666_p1);
assign add_ln48_56_fu_1500_p2 = ($signed(reg_992) + $signed(sum0_10_reg_2110));
assign add_ln48_57_fu_1505_p2 = (add_ln48_56_fu_1500_p2 + reg_988);
assign add_ln48_58_fu_1671_p2 = (add_ln48_57_reg_2491 + add_ln48_55_fu_1666_p2);
assign add_ln48_59_fu_1781_p2 = (reg_1045 + mul_ln48_18_reg_2496_pp0_iter1_reg);
assign add_ln48_5_fu_1730_p2 = (reg_1033 + mul_ln48_reg_2291);
assign add_ln48_60_fu_1636_p2 = ($signed(sum0_9_reg_2103) + $signed(orig_3_q0));
assign add_ln48_61_fu_1676_p1 = reg_964;
assign add_ln48_61_fu_1676_p2 = (add_ln48_60_reg_2615 + add_ln48_61_fu_1676_p1);
assign add_ln48_62_fu_1511_p2 = ($signed(reg_1000) + $signed(sum0_11_reg_2117));
assign add_ln48_63_fu_1516_p2 = (add_ln48_62_fu_1511_p2 + reg_996);
assign add_ln48_64_fu_1681_p2 = (add_ln48_63_reg_2511 + add_ln48_61_fu_1676_p2);
assign add_ln48_65_fu_1787_p2 = (reg_1049 + mul_ln48_20_reg_2516_pp0_iter1_reg);
assign add_ln48_66_fu_1641_p2 = ($signed(sum0_10_reg_2110) + $signed(orig_4_q0));
assign add_ln48_67_fu_1686_p1 = reg_969;
assign add_ln48_67_fu_1686_p2 = (add_ln48_66_reg_2620 + add_ln48_67_fu_1686_p1);
assign add_ln48_68_fu_1522_p2 = ($signed(reg_1008) + $signed(sum0_12_reg_2124));
assign add_ln48_69_fu_1527_p2 = (add_ln48_68_fu_1522_p2 + reg_1004);
assign add_ln48_6_fu_1441_p2 = ($signed(reg_950) + $signed(orig_2_q0));
assign add_ln48_70_fu_1691_p2 = (add_ln48_69_reg_2531 + add_ln48_67_fu_1686_p2);
assign add_ln48_71_fu_1793_p2 = (reg_1053 + mul_ln48_22_reg_2536_pp0_iter1_reg);
assign add_ln48_72_fu_1646_p2 = ($signed(sum0_11_reg_2117) + $signed(orig_5_q0));
assign add_ln48_73_fu_1696_p1 = reg_974;
assign add_ln48_73_fu_1696_p2 = (add_ln48_72_reg_2625 + add_ln48_73_fu_1696_p1);
assign add_ln48_74_fu_1533_p2 = ($signed(reg_1016) + $signed(sum0_13_reg_2131));
assign add_ln48_75_fu_1538_p2 = (add_ln48_74_fu_1533_p2 + reg_1012);
assign add_ln48_76_fu_1701_p2 = (add_ln48_75_reg_2551 + add_ln48_73_fu_1696_p2);
assign add_ln48_77_fu_1799_p2 = (reg_1041 + mul_ln48_24_reg_2630_pp0_iter2_reg);
assign add_ln48_78_fu_1651_p2 = ($signed(sum0_12_reg_2124) + $signed(orig_6_q0));
assign add_ln48_79_fu_1766_p2 = (add_ln48_78_reg_2645 + orig_6_load_5_reg_2635);
assign add_ln48_7_fu_1576_p1 = reg_955;
assign add_ln48_7_fu_1576_p2 = (add_ln48_6_reg_2426 + add_ln48_7_fu_1576_p1);
assign add_ln48_80_fu_1718_p2 = (reg_1024 + reg_1028);
assign add_ln48_81_fu_1724_p2 = (add_ln48_80_fu_1718_p2 + reg_1020);
assign add_ln48_82_fu_1770_p2 = (add_ln48_81_reg_2690 + add_ln48_79_fu_1766_p2);
assign add_ln48_83_fu_1805_p2 = (reg_1045 + mul_ln48_26_reg_2650_pp0_iter2_reg);
assign add_ln48_8_fu_1343_p2 = ($signed(reg_992) + $signed(reg_964));
assign add_ln48_9_fu_1349_p2 = (add_ln48_8_fu_1343_p2 + reg_988);
assign add_ln48_fu_1435_p2 = (reg_984 + orig_1_q0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
always @ (*) begin
    ap_condition_1285 = ((icmp_ln36_reg_2571 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign i_fu_1094_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_919_p4[0:0] == 1'b1) ? ap_sig_allocacmp_indvars_iv_next3885_load : ap_sig_allocacmp_i3_load);
assign icmp_ln36_fu_1555_p2 = ((indvar_flatten2_fu_88 == 10'd899) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1550_p2 = ((j_reg_1973 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next388_fu_1145_p2 = (i_fu_1094_p3 + 5'd1);
assign j_fu_1161_p2 = (select_ln11_reg_1859 + 5'd1);
assign or_ln1_fu_1305_p3 = {{add_ln40_fu_1262_p2}, {1'd1}};
assign or_ln2_fu_1318_p3 = {{add_ln41_fu_1286_p2}, {1'd1}};
assign or_ln3_fu_1210_p4 = {{{i_reg_1866}, {j_fu_1161_p2}}, {1'd1}};
assign or_ln4_fu_1225_p4 = {{{i_reg_1866}, {add_ln43_fu_1185_p2}}, {1'd1}};
assign or_ln_fu_1124_p4 = {{{i_fu_1094_p3}, {select_ln11_fu_1086_p3}}, {1'd1}};
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
assign p_cast60_fu_1112_p1 = tmp_1_fu_1102_p4;
assign select_ln11_fu_1086_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_919_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j4_load);
assign sext_ln41_fu_1282_p1 = zext_ln40_cast_fu_1251_p3;
assign shl_ln1_fu_1292_p3 = {{add_ln41_fu_1286_p2}, {1'd0}};
assign shl_ln2_fu_1166_p4 = {{{i_reg_1866}, {j_fu_1161_p2}}, {1'd0}};
assign shl_ln3_fu_1190_p4 = {{{i_reg_1866}, {add_ln43_fu_1185_p2}}, {1'd0}};
assign shl_ln_fu_1268_p3 = {{add_ln40_fu_1262_p2}, {1'd0}};
assign sol_0_address0 = zext_ln44_reg_1926_pp0_iter1_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_47_fu_1712_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
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
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = p_cast60_reg_1875_pp0_iter1_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = add_ln48_41_fu_1706_p2;
assign sol_7_we0 = sol_7_we0_local;
assign tmp_1_fu_1102_p4 = {{{i_fu_1094_p3}, {select_ln11_fu_1086_p3}}, {1'd0}};
assign tmp_fu_1244_p3 = {{i_reg_1866}, {5'd0}};
assign zext_ln40_1_fu_1276_p1 = shl_ln_fu_1268_p3;
assign zext_ln40_2_fu_1313_p1 = or_ln1_fu_1305_p3;
assign zext_ln40_cast_fu_1251_p3 = {{1'd1}, {select_ln11_reg_1859}};
assign zext_ln40_fu_1258_p1 = $unsigned(zext_ln40_cast_fu_1251_p3);
assign zext_ln41_1_fu_1326_p1 = or_ln2_fu_1318_p3;
assign zext_ln41_fu_1300_p1 = shl_ln1_fu_1292_p3;
assign zext_ln42_1_fu_1219_p1 = or_ln3_fu_1210_p4;
assign zext_ln42_fu_1175_p1 = shl_ln2_fu_1166_p4;
assign zext_ln43_1_fu_1234_p1 = or_ln4_fu_1225_p4;
assign zext_ln43_fu_1199_p1 = shl_ln3_fu_1190_p4;
assign zext_ln44_fu_1134_p1 = or_ln_fu_1124_p4;
always @ (posedge ap_clk) begin
    p_cast60_reg_1875[0] <= 1'b0;
    p_cast60_reg_1875[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    p_cast60_reg_1875_pp0_iter1_reg[0] <= 1'b0;
    p_cast60_reg_1875_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1926[0] <= 1'b1;
    zext_ln44_reg_1926[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1926_pp0_iter1_reg[0] <= 1'b1;
    zext_ln44_reg_1926_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1926_pp0_iter2_reg[0] <= 1'b1;
    zext_ln44_reg_1926_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_1978[0] <= 1'b0;
    zext_ln42_reg_1978[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_1_reg_2062[0] <= 1'b1;
    zext_ln42_1_reg_2062[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln43_1_reg_2076[0] <= 1'b1;
    zext_ln43_1_reg_2076[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln40_1_reg_2137[0] <= 1'b0;
    zext_ln40_1_reg_2137[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln41_reg_2151[0] <= 1'b0;
    zext_ln41_reg_2151[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln40_2_reg_2176[0] <= 1'b1;
    zext_ln40_2_reg_2176[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln41_1_reg_2191[0] <= 1'b1;
    zext_ln41_1_reg_2191[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 
