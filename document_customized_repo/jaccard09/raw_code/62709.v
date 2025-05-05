module stencil3d_stencil3d_Pipeline_loop_height_loop_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1); 
parameter    ap_ST_fsm_pp0_stage0 = 18'd1;
parameter    ap_ST_fsm_pp0_stage1 = 18'd2;
parameter    ap_ST_fsm_pp0_stage2 = 18'd4;
parameter    ap_ST_fsm_pp0_stage3 = 18'd8;
parameter    ap_ST_fsm_pp0_stage4 = 18'd16;
parameter    ap_ST_fsm_pp0_stage5 = 18'd32;
parameter    ap_ST_fsm_pp0_stage6 = 18'd64;
parameter    ap_ST_fsm_pp0_stage7 = 18'd128;
parameter    ap_ST_fsm_pp0_stage8 = 18'd256;
parameter    ap_ST_fsm_pp0_stage9 = 18'd512;
parameter    ap_ST_fsm_pp0_stage10 = 18'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 18'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 18'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 18'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 18'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 18'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 18'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [12:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [12:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [12:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [12:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [12:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_subdone;
wire   [0:0] icmp_ln36_fu_1875_p2;
reg    ap_condition_exit_pp0_iter0_stage17;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_842;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage17_11001;
reg   [31:0] reg_847;
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
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg  signed [31:0] reg_852;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_834_p2;
reg   [31:0] reg_857;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_838_p2;
reg   [31:0] reg_861;
reg   [31:0] reg_865;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_870;
reg   [31:0] reg_875;
reg   [31:0] reg_880;
reg   [31:0] reg_884;
wire   [4:0] select_ln11_fu_917_p3;
reg   [4:0] select_ln11_reg_2046;
wire   [4:0] i_fu_925_p3;
reg   [4:0] i_reg_2058;
wire   [63:0] p_cast60_fu_943_p1;
reg   [63:0] p_cast60_reg_2084;
wire   [63:0] zext_ln44_fu_958_p1;
reg   [63:0] zext_ln44_reg_2090;
wire   [63:0] zext_ln44_1_fu_974_p1;
reg   [63:0] zext_ln44_1_reg_2111;
reg  signed [31:0] sum0_4_reg_2128;
wire   [63:0] zext_ln44_2_fu_1003_p1;
reg   [63:0] zext_ln44_2_reg_2135;
wire   [63:0] zext_ln44_3_fu_1017_p1;
reg   [63:0] zext_ln44_3_reg_2151;
reg   [63:0] zext_ln44_3_reg_2151_pp0_iter1_reg;
reg  signed [31:0] sum0_3_reg_2163;
reg  signed [31:0] sum0_5_reg_2170;
reg  signed [31:0] sum0_6_reg_2177;
reg  signed [31:0] sum0_8_reg_2189;
wire   [63:0] zext_ln44_4_fu_1030_p1;
reg   [63:0] zext_ln44_4_reg_2196;
reg   [63:0] zext_ln44_4_reg_2196_pp0_iter1_reg;
wire   [63:0] zext_ln44_5_fu_1044_p1;
reg   [63:0] zext_ln44_5_reg_2212;
reg   [63:0] zext_ln44_5_reg_2212_pp0_iter1_reg;
wire   [4:0] add_ln43_fu_1049_p2;
reg   [4:0] add_ln43_reg_2224;
reg  signed [31:0] sum0_7_reg_2240;
reg  signed [31:0] sum0_9_reg_2247;
reg  signed [31:0] sum0_10_reg_2254;
reg  signed [31:0] sum0_12_reg_2266;
wire   [63:0] zext_ln44_6_fu_1076_p1;
reg   [63:0] zext_ln44_6_reg_2273;
reg   [63:0] zext_ln44_6_reg_2273_pp0_iter1_reg;
wire   [4:0] j_fu_1081_p2;
reg   [4:0] j_reg_2284;
reg   [31:0] mul_ln48_6_reg_2316;
reg   [31:0] mul_ln48_8_reg_2321;
reg  signed [31:0] sum0_11_reg_2326;
reg  signed [31:0] sum0_13_reg_2333;
wire   [31:0] add_ln48_3_fu_1126_p2;
reg   [31:0] add_ln48_3_reg_2339;
reg   [31:0] mul_ln48_10_reg_2364;
reg   [31:0] mul_ln48_12_reg_2369;
wire   [31:0] add_ln48_9_fu_1166_p2;
reg   [31:0] add_ln48_9_reg_2374;
wire   [31:0] add_ln48_15_fu_1177_p2;
reg   [31:0] add_ln48_15_reg_2379;
reg   [31:0] mul_ln48_14_reg_2404;
reg   [31:0] mul_ln48_16_reg_2409;
wire   [31:0] add_ln48_21_fu_1216_p2;
reg   [31:0] add_ln48_21_reg_2414;
wire   [31:0] add_ln48_27_fu_1227_p2;
reg   [31:0] add_ln48_27_reg_2419;
reg   [31:0] mul_ln48_18_reg_2444;
reg   [31:0] mul_ln48_20_reg_2449;
wire   [31:0] add_ln48_33_fu_1266_p2;
reg   [31:0] add_ln48_33_reg_2454;
wire   [31:0] add_ln48_39_fu_1277_p2;
reg   [31:0] add_ln48_39_reg_2459;
reg   [31:0] mul_ln48_22_reg_2484;
reg   [31:0] mul_ln48_24_reg_2489;
reg   [31:0] mul_ln48_24_reg_2489_pp0_iter1_reg;
wire   [31:0] add_ln48_45_fu_1316_p2;
reg   [31:0] add_ln48_45_reg_2494;
wire   [31:0] add_ln48_51_fu_1327_p2;
reg   [31:0] add_ln48_51_reg_2499;
reg   [31:0] mul_ln48_26_reg_2524;
reg   [31:0] mul_ln48_26_reg_2524_pp0_iter1_reg;
wire   [9:0] add_ln40_fu_1379_p2;
reg   [9:0] add_ln40_reg_2534;
wire   [9:0] add_ln41_fu_1402_p2;
reg   [9:0] add_ln41_reg_2550;
wire   [31:0] add_ln48_57_fu_1413_p2;
reg   [31:0] add_ln48_57_reg_2562;
wire   [31:0] add_ln48_63_fu_1424_p2;
reg   [31:0] add_ln48_63_reg_2567;
wire   [63:0] zext_ln40_2_fu_1488_p1;
reg   [63:0] zext_ln40_2_reg_2592;
wire   [63:0] zext_ln41_1_fu_1500_p1;
reg   [63:0] zext_ln41_1_reg_2602;
wire   [31:0] add_ln48_69_fu_1510_p2;
reg   [31:0] add_ln48_69_reg_2612;
wire   [31:0] add_ln48_75_fu_1521_p2;
reg   [31:0] add_ln48_75_reg_2617;
reg   [31:0] orig_0_load_34_reg_2622;
wire   [31:0] add_ln48_fu_1527_p2;
reg   [31:0] add_ln48_reg_2627;
wire   [31:0] add_ln48_6_fu_1533_p2;
reg   [31:0] add_ln48_6_reg_2632;
wire   [63:0] zext_ln40_3_fu_1546_p1;
reg   [63:0] zext_ln40_3_reg_2647;
wire   [63:0] zext_ln41_2_fu_1558_p1;
reg   [63:0] zext_ln41_2_reg_2657;
wire  signed [31:0] add_ln48_4_fu_1568_p2;
reg  signed [31:0] add_ln48_4_reg_2667;
wire  signed [31:0] add_ln48_10_fu_1578_p2;
reg  signed [31:0] add_ln48_10_reg_2672;
wire   [31:0] add_ln48_12_fu_1583_p2;
reg   [31:0] add_ln48_12_reg_2677;
wire   [31:0] add_ln48_18_fu_1589_p2;
reg   [31:0] add_ln48_18_reg_2682;
wire   [63:0] zext_ln40_4_fu_1602_p1;
reg   [63:0] zext_ln40_4_reg_2697;
wire   [63:0] zext_ln41_3_fu_1614_p1;
reg   [63:0] zext_ln41_3_reg_2707;
wire  signed [31:0] add_ln48_16_fu_1624_p2;
reg  signed [31:0] add_ln48_16_reg_2717;
wire  signed [31:0] add_ln48_22_fu_1634_p2;
reg  signed [31:0] add_ln48_22_reg_2722;
wire   [31:0] add_ln48_24_fu_1639_p2;
reg   [31:0] add_ln48_24_reg_2727;
wire   [31:0] add_ln48_30_fu_1644_p2;
reg   [31:0] add_ln48_30_reg_2732;
wire   [63:0] zext_ln40_5_fu_1656_p1;
reg   [63:0] zext_ln40_5_reg_2747;
wire   [63:0] zext_ln41_4_fu_1668_p1;
reg   [63:0] zext_ln41_4_reg_2757;
reg   [31:0] mul_ln48_1_reg_2767;
wire  signed [31:0] add_ln48_28_fu_1678_p2;
reg  signed [31:0] add_ln48_28_reg_2772;
wire  signed [31:0] add_ln48_34_fu_1688_p2;
reg  signed [31:0] add_ln48_34_reg_2777;
wire   [31:0] add_ln48_36_fu_1693_p2;
reg   [31:0] add_ln48_36_reg_2782;
wire   [31:0] add_ln48_42_fu_1698_p2;
reg   [31:0] add_ln48_42_reg_2787;
wire   [63:0] zext_ln40_6_fu_1710_p1;
reg   [63:0] zext_ln40_6_reg_2802;
wire   [63:0] zext_ln41_5_fu_1722_p1;
reg   [63:0] zext_ln41_5_reg_2812;
wire  signed [31:0] add_ln48_40_fu_1745_p2;
reg  signed [31:0] add_ln48_40_reg_2822;
wire  signed [31:0] add_ln48_46_fu_1755_p2;
reg  signed [31:0] add_ln48_46_reg_2827;
wire   [31:0] add_ln48_48_fu_1760_p2;
reg   [31:0] add_ln48_48_reg_2832;
wire   [31:0] add_ln48_54_fu_1765_p2;
reg   [31:0] add_ln48_54_reg_2837;
wire   [63:0] zext_ln40_7_fu_1777_p1;
reg   [63:0] zext_ln40_7_reg_2852;
wire   [63:0] zext_ln41_6_fu_1789_p1;
reg   [63:0] zext_ln41_6_reg_2862;
wire  signed [31:0] add_ln48_52_fu_1815_p2;
reg  signed [31:0] add_ln48_52_reg_2872;
wire  signed [31:0] add_ln48_58_fu_1825_p2;
reg  signed [31:0] add_ln48_58_reg_2877;
wire   [31:0] add_ln48_60_fu_1830_p2;
reg   [31:0] add_ln48_60_reg_2882;
wire   [31:0] add_ln48_66_fu_1835_p2;
reg   [31:0] add_ln48_66_reg_2887;
wire   [0:0] icmp_ln37_fu_1870_p2;
reg   [0:0] icmp_ln37_reg_2912;
reg   [0:0] icmp_ln36_reg_2917;
wire  signed [31:0] add_ln48_64_fu_1903_p2;
reg  signed [31:0] add_ln48_64_reg_2921;
wire  signed [31:0] add_ln48_70_fu_1913_p2;
reg  signed [31:0] add_ln48_70_reg_2926;
wire   [31:0] add_ln48_72_fu_1918_p2;
reg   [31:0] add_ln48_72_reg_2931;
reg   [31:0] orig_0_load_31_reg_2936;
wire   [31:0] add_ln48_78_fu_1923_p2;
reg   [31:0] add_ln48_78_reg_2941;
wire  signed [31:0] add_ln48_76_fu_1945_p2;
reg  signed [31:0] add_ln48_76_reg_2946;
wire   [31:0] add_ln48_81_fu_1979_p2;
reg   [31:0] add_ln48_81_reg_2956;
wire  signed [31:0] add_ln48_82_fu_1989_p2;
reg  signed [31:0] add_ln48_82_reg_2961;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] ap_phi_mux_icmp_ln376_phi_fu_827_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln43_fu_1063_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln42_1_fu_1095_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln43_1_fu_1109_p1;
wire   [63:0] zext_ln42_2_fu_1140_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln43_2_fu_1154_p1;
wire   [63:0] zext_ln42_3_fu_1191_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln43_3_fu_1205_p1;
wire   [63:0] zext_ln42_4_fu_1241_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln43_4_fu_1255_p1;
wire   [63:0] zext_ln42_5_fu_1291_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln43_5_fu_1305_p1;
wire   [63:0] zext_ln42_6_fu_1341_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln43_6_fu_1355_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln40_1_fu_1393_p1;
wire   [63:0] zext_ln42_7_fu_1438_p1;
wire   [63:0] zext_ln43_7_fu_1451_p1;
wire   [63:0] zext_ln41_fu_1463_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln42_fu_1476_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln40_8_fu_1847_p1;
wire   [63:0] zext_ln41_7_fu_1859_p1;
reg   [9:0] indvar_flatten2_fu_80;
wire   [9:0] add_ln36_fu_1864_p2;
reg   [4:0] i3_fu_84;
reg   [4:0] ap_sig_allocacmp_i3_load;
reg   [4:0] j4_fu_88;
reg   [4:0] ap_sig_allocacmp_j4_load;
reg   [4:0] indvars_iv_next3885_fu_92;
wire   [4:0] indvars_iv_next388_fu_979_p2;
reg   [4:0] ap_sig_allocacmp_indvars_iv_next3885_load;
reg    orig_0_ce1_local;
reg   [12:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [12:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [12:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [12:0] orig_1_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_5_fu_1727_p2;
reg    sol_1_ce0_local;
reg   [12:0] sol_1_address0_local;
wire   [31:0] add_ln48_17_fu_1797_p2;
wire   [31:0] add_ln48_29_fu_1886_p2;
wire   [31:0] add_ln48_41_fu_1928_p2;
wire   [31:0] add_ln48_53_fu_1950_p2;
wire   [31:0] add_ln48_65_fu_1962_p2;
wire   [31:0] add_ln48_77_fu_1994_p2;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
wire   [31:0] add_ln48_11_fu_1733_p2;
reg    sol_0_ce0_local;
reg   [12:0] sol_0_address0_local;
wire   [31:0] add_ln48_23_fu_1804_p2;
wire   [31:0] add_ln48_35_fu_1892_p2;
wire   [31:0] add_ln48_47_fu_1934_p2;
wire   [31:0] add_ln48_59_fu_1956_p2;
wire   [31:0] add_ln48_71_fu_1968_p2;
wire   [31:0] add_ln48_83_fu_2000_p2;
reg  signed [31:0] grp_fu_834_p0;
reg  signed [31:0] grp_fu_834_p1;
reg  signed [31:0] grp_fu_838_p0;
reg  signed [31:0] grp_fu_838_p1;
wire   [12:0] tmp_1_fu_933_p4;
wire   [12:0] or_ln_fu_948_p4;
wire   [12:0] or_ln44_1_fu_964_p4;
wire   [12:0] or_ln44_2_fu_995_p4;
wire   [12:0] or_ln44_3_fu_1009_p4;
wire   [12:0] or_ln44_4_fu_1022_p4;
wire   [12:0] or_ln44_5_fu_1036_p4;
wire   [12:0] shl_ln3_fu_1054_p4;
wire   [12:0] or_ln44_6_fu_1068_p4;
wire   [12:0] or_ln3_fu_1086_p4;
wire   [12:0] or_ln4_fu_1101_p4;
wire   [31:0] add_ln48_2_fu_1120_p2;
wire   [12:0] or_ln42_1_fu_1132_p4;
wire   [12:0] or_ln43_1_fu_1146_p4;
wire   [31:0] add_ln48_8_fu_1160_p2;
wire   [31:0] add_ln48_14_fu_1172_p2;
wire   [12:0] or_ln42_2_fu_1183_p4;
wire   [12:0] or_ln43_2_fu_1197_p4;
wire   [31:0] add_ln48_20_fu_1211_p2;
wire   [31:0] add_ln48_26_fu_1222_p2;
wire   [12:0] or_ln42_3_fu_1233_p4;
wire   [12:0] or_ln43_3_fu_1247_p4;
wire   [31:0] add_ln48_32_fu_1261_p2;
wire   [31:0] add_ln48_38_fu_1272_p2;
wire   [12:0] or_ln42_4_fu_1283_p4;
wire   [12:0] or_ln43_4_fu_1297_p4;
wire   [31:0] add_ln48_44_fu_1311_p2;
wire   [31:0] add_ln48_50_fu_1322_p2;
wire   [12:0] or_ln42_5_fu_1333_p4;
wire   [12:0] or_ln43_5_fu_1347_p4;
wire  signed [5:0] zext_ln40_cast_fu_1368_p3;
wire   [9:0] zext_ln40_fu_1375_p1;
wire   [9:0] tmp_fu_1361_p3;
wire   [12:0] shl_ln_fu_1385_p3;
wire  signed [9:0] sext_ln41_fu_1398_p1;
wire   [31:0] add_ln48_56_fu_1408_p2;
wire   [31:0] add_ln48_62_fu_1419_p2;
wire   [12:0] or_ln42_6_fu_1430_p4;
wire   [12:0] or_ln43_6_fu_1443_p4;
wire   [12:0] shl_ln1_fu_1456_p3;
wire   [12:0] shl_ln2_fu_1468_p4;
wire   [12:0] or_ln1_fu_1481_p3;
wire   [12:0] or_ln2_fu_1493_p3;
wire   [31:0] add_ln48_68_fu_1505_p2;
wire   [31:0] add_ln48_74_fu_1516_p2;
wire  signed [31:0] add_ln48_6_fu_1533_p0;
wire   [12:0] or_ln40_1_fu_1539_p3;
wire   [12:0] or_ln41_1_fu_1551_p3;
wire   [31:0] add_ln48_1_fu_1563_p2;
wire   [31:0] add_ln48_7_fu_1573_p2;
wire   [12:0] or_ln40_2_fu_1595_p3;
wire   [12:0] or_ln41_2_fu_1607_p3;
wire   [31:0] add_ln48_13_fu_1619_p1;
wire   [31:0] add_ln48_13_fu_1619_p2;
wire   [31:0] add_ln48_19_fu_1629_p1;
wire   [31:0] add_ln48_19_fu_1629_p2;
wire   [12:0] or_ln40_3_fu_1649_p3;
wire   [12:0] or_ln41_3_fu_1661_p3;
wire   [31:0] add_ln48_25_fu_1673_p1;
wire   [31:0] add_ln48_25_fu_1673_p2;
wire   [31:0] add_ln48_31_fu_1683_p1;
wire   [31:0] add_ln48_31_fu_1683_p2;
wire   [12:0] or_ln40_4_fu_1703_p3;
wire   [12:0] or_ln41_4_fu_1715_p3;
wire   [31:0] add_ln48_37_fu_1740_p1;
wire   [31:0] add_ln48_37_fu_1740_p2;
wire   [31:0] add_ln48_43_fu_1750_p1;
wire   [31:0] add_ln48_43_fu_1750_p2;
wire   [12:0] or_ln40_5_fu_1770_p3;
wire   [12:0] or_ln41_5_fu_1782_p3;
wire   [31:0] add_ln48_49_fu_1810_p1;
wire   [31:0] add_ln48_49_fu_1810_p2;
wire   [31:0] add_ln48_55_fu_1820_p1;
wire   [31:0] add_ln48_55_fu_1820_p2;
wire   [12:0] or_ln40_6_fu_1840_p3;
wire   [12:0] or_ln41_6_fu_1852_p3;
wire   [31:0] add_ln48_61_fu_1898_p1;
wire   [31:0] add_ln48_61_fu_1898_p2;
wire   [31:0] add_ln48_67_fu_1908_p1;
wire   [31:0] add_ln48_67_fu_1908_p2;
wire   [31:0] add_ln48_73_fu_1940_p1;
wire   [31:0] add_ln48_73_fu_1940_p2;
wire   [31:0] add_ln48_80_fu_1974_p2;
wire   [31:0] add_ln48_79_fu_1985_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage11;
reg    ap_idle_pp0_0to0;
reg   [17:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1719;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_80 = 10'd0;
#0 i3_fu_84 = 5'd0;
#0 j4_fu_88 = 5'd0;
#0 indvars_iv_next3885_fu_92 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_834_p0),.din1(grp_fu_834_p1),.ce(1'b1),.dout(grp_fu_834_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_838_p0),.din1(grp_fu_838_p1),.ce(1'b1),.dout(grp_fu_838_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage17),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage11) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            i3_fu_84 <= i_fu_925_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i3_fu_84 <= 5'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_80 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        indvar_flatten2_fu_80 <= add_ln36_fu_1864_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvars_iv_next3885_fu_92 <= indvars_iv_next388_fu_979_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next3885_fu_92 <= 5'd2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j4_fu_88 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        j4_fu_88 <= j_fu_1081_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_847 <= orig_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_847 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        reg_870 <= orig_0_q1;
    end else if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_870 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        reg_875 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_875 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln40_reg_2534 <= add_ln40_fu_1379_p2;
        add_ln41_reg_2550 <= add_ln41_fu_1402_p2;
        add_ln48_57_reg_2562 <= add_ln48_57_fu_1413_p2;
        add_ln48_63_reg_2567 <= add_ln48_63_fu_1424_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln43_reg_2224 <= add_ln43_fu_1049_p2;
        zext_ln44_6_reg_2273[12 : 3] <= zext_ln44_6_fu_1076_p1[12 : 3];
        zext_ln44_6_reg_2273_pp0_iter1_reg[12 : 3] <= zext_ln44_6_reg_2273[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln48_10_reg_2672 <= add_ln48_10_fu_1578_p2;
        add_ln48_12_reg_2677 <= add_ln48_12_fu_1583_p2;
        add_ln48_18_reg_2682 <= add_ln48_18_fu_1589_p2;
        add_ln48_4_reg_2667 <= add_ln48_4_fu_1568_p2;
        zext_ln40_4_reg_2697[12 : 3] <= zext_ln40_4_fu_1602_p1[12 : 3];
        zext_ln41_3_reg_2707[12 : 3] <= zext_ln41_3_fu_1614_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln48_15_reg_2379 <= add_ln48_15_fu_1177_p2;
        add_ln48_82_reg_2961 <= add_ln48_82_fu_1989_p2;
        add_ln48_9_reg_2374 <= add_ln48_9_fu_1166_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln48_16_reg_2717 <= add_ln48_16_fu_1624_p2;
        add_ln48_22_reg_2722 <= add_ln48_22_fu_1634_p2;
        add_ln48_24_reg_2727 <= add_ln48_24_fu_1639_p2;
        add_ln48_30_reg_2732 <= add_ln48_30_fu_1644_p2;
        zext_ln40_5_reg_2747[12 : 3] <= zext_ln40_5_fu_1656_p1[12 : 3];
        zext_ln41_4_reg_2757[12 : 3] <= zext_ln41_4_fu_1668_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln48_21_reg_2414 <= add_ln48_21_fu_1216_p2;
        add_ln48_27_reg_2419 <= add_ln48_27_fu_1227_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add_ln48_28_reg_2772 <= add_ln48_28_fu_1678_p2;
        add_ln48_34_reg_2777 <= add_ln48_34_fu_1688_p2;
        add_ln48_36_reg_2782 <= add_ln48_36_fu_1693_p2;
        add_ln48_42_reg_2787 <= add_ln48_42_fu_1698_p2;
        zext_ln40_6_reg_2802[12 : 3] <= zext_ln40_6_fu_1710_p1[12 : 3];
        zext_ln41_5_reg_2812[12 : 3] <= zext_ln41_5_fu_1722_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln48_33_reg_2454 <= add_ln48_33_fu_1266_p2;
        add_ln48_39_reg_2459 <= add_ln48_39_fu_1277_p2;
        mul_ln48_24_reg_2489_pp0_iter1_reg <= mul_ln48_24_reg_2489;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln48_3_reg_2339 <= add_ln48_3_fu_1126_p2;
        add_ln48_81_reg_2956 <= add_ln48_81_fu_1979_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln48_40_reg_2822 <= add_ln48_40_fu_1745_p2;
        add_ln48_46_reg_2827 <= add_ln48_46_fu_1755_p2;
        add_ln48_48_reg_2832 <= add_ln48_48_fu_1760_p2;
        add_ln48_54_reg_2837 <= add_ln48_54_fu_1765_p2;
        zext_ln40_7_reg_2852[12 : 3] <= zext_ln40_7_fu_1777_p1[12 : 3];
        zext_ln41_6_reg_2862[12 : 3] <= zext_ln41_6_fu_1789_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln48_45_reg_2494 <= add_ln48_45_fu_1316_p2;
        add_ln48_51_reg_2499 <= add_ln48_51_fu_1327_p2;
        mul_ln48_26_reg_2524_pp0_iter1_reg <= mul_ln48_26_reg_2524;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        add_ln48_52_reg_2872 <= add_ln48_52_fu_1815_p2;
        add_ln48_58_reg_2877 <= add_ln48_58_fu_1825_p2;
        add_ln48_60_reg_2882 <= add_ln48_60_fu_1830_p2;
        add_ln48_66_reg_2887 <= add_ln48_66_fu_1835_p2;
        icmp_ln36_reg_2917 <= icmp_ln36_fu_1875_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_64_reg_2921 <= add_ln48_64_fu_1903_p2;
        add_ln48_70_reg_2926 <= add_ln48_70_fu_1913_p2;
        add_ln48_72_reg_2931 <= add_ln48_72_fu_1918_p2;
        add_ln48_78_reg_2941 <= add_ln48_78_fu_1923_p2;
        i_reg_2058 <= i_fu_925_p3;
        p_cast60_reg_2084[12 : 3] <= p_cast60_fu_943_p1[12 : 3];
        select_ln11_reg_2046 <= select_ln11_fu_917_p3;
        zext_ln44_1_reg_2111[12 : 3] <= zext_ln44_1_fu_974_p1[12 : 3];
        zext_ln44_reg_2090[12 : 3] <= zext_ln44_fu_958_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln48_69_reg_2612 <= add_ln48_69_fu_1510_p2;
        add_ln48_75_reg_2617 <= add_ln48_75_fu_1521_p2;
        zext_ln40_2_reg_2592[12 : 3] <= zext_ln40_2_fu_1488_p1[12 : 3];
        zext_ln41_1_reg_2602[12 : 3] <= zext_ln41_1_fu_1500_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln48_6_reg_2632 <= add_ln48_6_fu_1533_p2;
        add_ln48_reg_2627 <= add_ln48_fu_1527_p2;
        zext_ln40_3_reg_2647[12 : 3] <= zext_ln40_3_fu_1546_p1[12 : 3];
        zext_ln41_2_reg_2657[12 : 3] <= zext_ln41_2_fu_1558_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_76_reg_2946 <= add_ln48_76_fu_1945_p2;
        zext_ln44_2_reg_2135[12 : 3] <= zext_ln44_2_fu_1003_p1[12 : 3];
        zext_ln44_3_reg_2151[12 : 3] <= zext_ln44_3_fu_1017_p1[12 : 3];
        zext_ln44_3_reg_2151_pp0_iter1_reg[12 : 3] <= zext_ln44_3_reg_2151[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        icmp_ln37_reg_2912 <= icmp_ln37_fu_1870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        j_reg_2284 <= j_fu_1081_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln48_10_reg_2364 <= grp_fu_834_p2;
        mul_ln48_12_reg_2369 <= grp_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln48_14_reg_2404 <= grp_fu_834_p2;
        mul_ln48_16_reg_2409 <= grp_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln48_18_reg_2444 <= grp_fu_834_p2;
        mul_ln48_20_reg_2449 <= grp_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul_ln48_1_reg_2767 <= grp_fu_834_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln48_22_reg_2484 <= grp_fu_834_p2;
        mul_ln48_24_reg_2489 <= grp_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_ln48_26_reg_2524 <= grp_fu_834_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_6_reg_2316 <= grp_fu_834_p2;
        mul_ln48_8_reg_2321 <= grp_fu_838_p2;
        sum0_11_reg_2326 <= orig_0_q1;
        sum0_13_reg_2333 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_load_31_reg_2936 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        orig_0_load_34_reg_2622 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_842 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_852 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_857 <= grp_fu_834_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_861 <= grp_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_865 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_880 <= grp_fu_834_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_884 <= grp_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum0_10_reg_2254 <= orig_1_q1;
        sum0_12_reg_2266 <= orig_1_q0;
        sum0_7_reg_2240 <= orig_0_q1;
        sum0_9_reg_2247 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum0_3_reg_2163 <= orig_0_q1;
        sum0_5_reg_2170 <= orig_0_q0;
        sum0_6_reg_2177 <= orig_1_q1;
        sum0_8_reg_2189 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_4_reg_2128 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        zext_ln44_4_reg_2196[12 : 3] <= zext_ln44_4_fu_1030_p1[12 : 3];
        zext_ln44_4_reg_2196_pp0_iter1_reg[12 : 3] <= zext_ln44_4_reg_2196[12 : 3];
        zext_ln44_5_reg_2212[12 : 3] <= zext_ln44_5_fu_1044_p1[12 : 3];
        zext_ln44_5_reg_2212_pp0_iter1_reg[12 : 3] <= zext_ln44_5_reg_2212[12 : 3];
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_1875_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_2917 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter1_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1719)) begin
            ap_phi_mux_icmp_ln376_phi_fu_827_p4 = icmp_ln37_reg_2912;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln376_phi_fu_827_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln376_phi_fu_827_p4 = icmp_ln37_reg_2912;
        end
    end else begin
        ap_phi_mux_icmp_ln376_phi_fu_827_p4 = icmp_ln37_reg_2912;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i3_load = 5'd1;
    end else begin
        ap_sig_allocacmp_i3_load = i3_fu_84;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvars_iv_next3885_load = 5'd2;
    end else begin
        ap_sig_allocacmp_indvars_iv_next3885_load = indvars_iv_next3885_fu_92;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j4_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j4_load = j4_fu_88;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_834_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_834_p0 = reg_865;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_834_p0 = sum0_13_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_834_p0 = sum0_11_reg_2326;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_834_p0 = sum0_9_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_834_p0 = sum0_7_reg_2240;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_834_p0 = sum0_5_reg_2170;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_834_p0 = sum0_3_reg_2163;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_834_p0 = reg_842;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_834_p1 = add_ln48_82_reg_2961;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_834_p1 = add_ln48_64_reg_2921;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p1 = add_ln48_52_reg_2872;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_834_p1 = add_ln48_40_reg_2822;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_834_p1 = add_ln48_28_reg_2772;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_834_p1 = add_ln48_16_reg_2717;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_834_p1 = add_ln48_4_reg_2667;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_834_p1 = C_load;
    end else begin
        grp_fu_834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_838_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_838_p0 = sum0_12_reg_2266;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_838_p0 = sum0_10_reg_2254;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_838_p0 = sum0_8_reg_2189;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_838_p0 = sum0_6_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_838_p0 = sum0_4_reg_2128;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_838_p0 = reg_852;
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_838_p1 = add_ln48_76_reg_2946;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_838_p1 = add_ln48_70_reg_2926;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_838_p1 = add_ln48_58_reg_2877;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_838_p1 = add_ln48_46_reg_2827;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_838_p1 = add_ln48_34_reg_2777;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_838_p1 = add_ln48_22_reg_2722;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_838_p1 = add_ln48_10_reg_2672;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_838_p1 = C_load;
    end else begin
        grp_fu_838_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            orig_0_address0_local = zext_ln41_7_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            orig_0_address0_local = zext_ln41_6_fu_1789_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            orig_0_address0_local = zext_ln41_5_fu_1722_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            orig_0_address0_local = zext_ln41_4_fu_1668_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            orig_0_address0_local = zext_ln41_3_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            orig_0_address0_local = zext_ln41_2_fu_1558_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            orig_0_address0_local = zext_ln41_1_fu_1500_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_0_address0_local = zext_ln43_7_fu_1451_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_0_address0_local = zext_ln43_6_fu_1355_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_0_address0_local = zext_ln43_5_fu_1305_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_0_address0_local = zext_ln43_4_fu_1255_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address0_local = zext_ln43_3_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address0_local = zext_ln43_2_fu_1154_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln43_1_fu_1109_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln44_6_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln44_4_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln44_2_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = p_cast60_fu_943_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            orig_0_address1_local = zext_ln40_8_fu_1847_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            orig_0_address1_local = zext_ln40_7_fu_1777_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            orig_0_address1_local = zext_ln40_6_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            orig_0_address1_local = zext_ln40_5_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            orig_0_address1_local = zext_ln40_4_fu_1602_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            orig_0_address1_local = zext_ln40_3_fu_1546_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            orig_0_address1_local = zext_ln40_2_fu_1488_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_0_address1_local = zext_ln42_7_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_0_address1_local = zext_ln42_6_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_0_address1_local = zext_ln42_5_fu_1291_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_0_address1_local = zext_ln42_4_fu_1241_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address1_local = zext_ln42_3_fu_1191_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address1_local = zext_ln42_2_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln42_1_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln44_5_reg_2212;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln44_3_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln44_1_reg_2111;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln44_fu_958_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_1_address0_local = zext_ln44_6_reg_2273;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        orig_1_address0_local = zext_ln41_6_reg_2862;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        orig_1_address0_local = zext_ln41_5_reg_2812;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        orig_1_address0_local = zext_ln41_4_reg_2757;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        orig_1_address0_local = zext_ln41_3_reg_2707;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        orig_1_address0_local = zext_ln41_2_reg_2657;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        orig_1_address0_local = zext_ln41_1_reg_2602;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        orig_1_address0_local = zext_ln42_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        orig_1_address0_local = zext_ln40_1_fu_1393_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        orig_1_address0_local = zext_ln43_6_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        orig_1_address0_local = zext_ln43_5_fu_1305_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_1_address0_local = zext_ln43_4_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_1_address0_local = zext_ln43_3_fu_1205_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_1_address0_local = zext_ln43_2_fu_1154_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_1_address0_local = zext_ln43_1_fu_1109_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln44_5_fu_1044_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln44_3_fu_1017_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln44_1_fu_974_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            orig_1_address1_local = zext_ln40_7_reg_2852;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            orig_1_address1_local = zext_ln40_6_reg_2802;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            orig_1_address1_local = zext_ln40_5_reg_2747;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            orig_1_address1_local = zext_ln40_4_reg_2697;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            orig_1_address1_local = zext_ln40_3_reg_2647;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            orig_1_address1_local = zext_ln40_2_reg_2592;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            orig_1_address1_local = zext_ln41_fu_1463_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_1_address1_local = p_cast60_reg_2084;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_1_address1_local = zext_ln42_6_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_1_address1_local = zext_ln42_5_fu_1291_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_1_address1_local = zext_ln42_4_fu_1241_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address1_local = zext_ln42_3_fu_1191_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address1_local = zext_ln42_2_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln42_1_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln43_fu_1063_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln44_4_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln44_2_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln44_fu_958_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        sol_0_address0_local = zext_ln44_6_reg_2273_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_0_address0_local = zext_ln44_5_reg_2212_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_address0_local = zext_ln44_4_reg_2196;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_address0_local = zext_ln44_3_reg_2151;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_address0_local = zext_ln44_2_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sol_0_address0_local = zext_ln44_1_reg_2111;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        sol_0_address0_local = zext_ln44_reg_2090;
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        sol_0_d0_local = add_ln48_83_fu_2000_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_0_d0_local = add_ln48_71_fu_1968_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_d0_local = add_ln48_59_fu_1956_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_d0_local = add_ln48_47_fu_1934_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_d0_local = add_ln48_35_fu_1892_p2;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sol_0_d0_local = add_ln48_23_fu_1804_p2;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        sol_0_d0_local = add_ln48_11_fu_1733_p2;
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        sol_1_address0_local = zext_ln44_5_reg_2212_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_address0_local = zext_ln44_4_reg_2196_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_address0_local = zext_ln44_3_reg_2151_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_1_address0_local = zext_ln44_2_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_address0_local = zext_ln44_1_reg_2111;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sol_1_address0_local = zext_ln44_reg_2090;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        sol_1_address0_local = p_cast60_reg_2084;
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        sol_1_d0_local = add_ln48_77_fu_1994_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_d0_local = add_ln48_65_fu_1962_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_d0_local = add_ln48_53_fu_1950_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_1_d0_local = add_ln48_41_fu_1928_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_d0_local = add_ln48_29_fu_1886_p2;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sol_1_d0_local = add_ln48_17_fu_1797_p2;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        sol_1_d0_local = add_ln48_5_fu_1727_p2;
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage11) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln36_fu_1864_p2 = (indvar_flatten2_fu_80 + 10'd1);
assign add_ln40_fu_1379_p2 = (zext_ln40_fu_1375_p1 + tmp_fu_1361_p3);
assign add_ln41_fu_1402_p2 = ($signed(sext_ln41_fu_1398_p1) + $signed(tmp_fu_1361_p3));
assign add_ln43_fu_1049_p2 = ($signed(select_ln11_reg_2046) + $signed(5'd31));
assign add_ln48_10_fu_1578_p2 = (add_ln48_9_reg_2374 + add_ln48_7_fu_1573_p2);
assign add_ln48_11_fu_1733_p2 = (reg_884 + reg_857);
assign add_ln48_12_fu_1583_p2 = ($signed(reg_842) + $signed(orig_1_q0));
assign add_ln48_13_fu_1619_p1 = reg_852;
assign add_ln48_13_fu_1619_p2 = (add_ln48_12_reg_2677 + add_ln48_13_fu_1619_p1);
assign add_ln48_14_fu_1172_p2 = ($signed(reg_875) + $signed(sum0_3_reg_2163));
assign add_ln48_15_fu_1177_p2 = (add_ln48_14_fu_1172_p2 + reg_865);
assign add_ln48_16_fu_1624_p2 = (add_ln48_15_reg_2379 + add_ln48_13_fu_1619_p2);
assign add_ln48_17_fu_1797_p2 = (reg_857 + reg_861);
assign add_ln48_18_fu_1589_p2 = ($signed(reg_852) + $signed(orig_0_q0));
assign add_ln48_19_fu_1629_p1 = reg_842;
assign add_ln48_19_fu_1629_p2 = (add_ln48_18_reg_2682 + add_ln48_19_fu_1629_p1);
assign add_ln48_1_fu_1563_p2 = (add_ln48_reg_2627 + reg_875);
assign add_ln48_20_fu_1211_p2 = ($signed(reg_870) + $signed(sum0_4_reg_2128));
assign add_ln48_21_fu_1216_p2 = (add_ln48_20_fu_1211_p2 + reg_847);
assign add_ln48_22_fu_1634_p2 = (add_ln48_21_reg_2414 + add_ln48_19_fu_1629_p2);
assign add_ln48_23_fu_1804_p2 = (reg_884 + mul_ln48_6_reg_2316);
assign add_ln48_24_fu_1639_p2 = ($signed(sum0_3_reg_2163) + $signed(orig_1_q0));
assign add_ln48_25_fu_1673_p1 = reg_852;
assign add_ln48_25_fu_1673_p2 = (add_ln48_24_reg_2727 + add_ln48_25_fu_1673_p1);
assign add_ln48_26_fu_1222_p2 = ($signed(reg_875) + $signed(sum0_5_reg_2170));
assign add_ln48_27_fu_1227_p2 = (add_ln48_26_fu_1222_p2 + reg_865);
assign add_ln48_28_fu_1678_p2 = (add_ln48_27_reg_2419 + add_ln48_25_fu_1673_p2);
assign add_ln48_29_fu_1886_p2 = (reg_857 + mul_ln48_8_reg_2321);
assign add_ln48_2_fu_1120_p2 = ($signed(reg_842) + $signed(reg_847));
assign add_ln48_30_fu_1644_p2 = ($signed(sum0_4_reg_2128) + $signed(orig_0_q0));
assign add_ln48_31_fu_1683_p1 = reg_842;
assign add_ln48_31_fu_1683_p2 = (add_ln48_30_reg_2732 + add_ln48_31_fu_1683_p1);
assign add_ln48_32_fu_1261_p2 = ($signed(reg_870) + $signed(sum0_6_reg_2177));
assign add_ln48_33_fu_1266_p2 = (add_ln48_32_fu_1261_p2 + reg_847);
assign add_ln48_34_fu_1688_p2 = (add_ln48_33_reg_2454 + add_ln48_31_fu_1683_p2);
assign add_ln48_35_fu_1892_p2 = (reg_861 + mul_ln48_10_reg_2364);
assign add_ln48_36_fu_1693_p2 = ($signed(sum0_5_reg_2170) + $signed(orig_1_q0));
assign add_ln48_37_fu_1740_p1 = reg_852;
assign add_ln48_37_fu_1740_p2 = (add_ln48_36_reg_2782 + add_ln48_37_fu_1740_p1);
assign add_ln48_38_fu_1272_p2 = ($signed(reg_875) + $signed(sum0_7_reg_2240));
assign add_ln48_39_fu_1277_p2 = (add_ln48_38_fu_1272_p2 + reg_865);
assign add_ln48_3_fu_1126_p2 = (add_ln48_2_fu_1120_p2 + reg_865);
assign add_ln48_40_fu_1745_p2 = (add_ln48_39_reg_2459 + add_ln48_37_fu_1740_p2);
assign add_ln48_41_fu_1928_p2 = (reg_857 + mul_ln48_12_reg_2369);
assign add_ln48_42_fu_1698_p2 = ($signed(sum0_6_reg_2177) + $signed(orig_0_q0));
assign add_ln48_43_fu_1750_p1 = reg_842;
assign add_ln48_43_fu_1750_p2 = (add_ln48_42_reg_2787 + add_ln48_43_fu_1750_p1);
assign add_ln48_44_fu_1311_p2 = ($signed(reg_870) + $signed(sum0_8_reg_2189));
assign add_ln48_45_fu_1316_p2 = (add_ln48_44_fu_1311_p2 + reg_847);
assign add_ln48_46_fu_1755_p2 = (add_ln48_45_reg_2494 + add_ln48_43_fu_1750_p2);
assign add_ln48_47_fu_1934_p2 = (reg_861 + mul_ln48_14_reg_2404);
assign add_ln48_48_fu_1760_p2 = ($signed(sum0_7_reg_2240) + $signed(orig_1_q0));
assign add_ln48_49_fu_1810_p1 = reg_852;
assign add_ln48_49_fu_1810_p2 = (add_ln48_48_reg_2832 + add_ln48_49_fu_1810_p1);
assign add_ln48_4_fu_1568_p2 = (add_ln48_3_reg_2339 + add_ln48_1_fu_1563_p2);
assign add_ln48_50_fu_1322_p2 = ($signed(reg_875) + $signed(sum0_9_reg_2247));
assign add_ln48_51_fu_1327_p2 = (add_ln48_50_fu_1322_p2 + reg_865);
assign add_ln48_52_fu_1815_p2 = (add_ln48_51_reg_2499 + add_ln48_49_fu_1810_p2);
assign add_ln48_53_fu_1950_p2 = (reg_857 + mul_ln48_16_reg_2409);
assign add_ln48_54_fu_1765_p2 = ($signed(sum0_8_reg_2189) + $signed(orig_0_q0));
assign add_ln48_55_fu_1820_p1 = reg_842;
assign add_ln48_55_fu_1820_p2 = (add_ln48_54_reg_2837 + add_ln48_55_fu_1820_p1);
assign add_ln48_56_fu_1408_p2 = ($signed(reg_870) + $signed(sum0_10_reg_2254));
assign add_ln48_57_fu_1413_p2 = (add_ln48_56_fu_1408_p2 + reg_847);
assign add_ln48_58_fu_1825_p2 = (add_ln48_57_reg_2562 + add_ln48_55_fu_1820_p2);
assign add_ln48_59_fu_1956_p2 = (reg_861 + mul_ln48_18_reg_2444);
assign add_ln48_5_fu_1727_p2 = (mul_ln48_1_reg_2767 + reg_880);
assign add_ln48_60_fu_1830_p2 = ($signed(sum0_9_reg_2247) + $signed(orig_1_q0));
assign add_ln48_61_fu_1898_p1 = reg_852;
assign add_ln48_61_fu_1898_p2 = (add_ln48_60_reg_2882 + add_ln48_61_fu_1898_p1);
assign add_ln48_62_fu_1419_p2 = ($signed(reg_875) + $signed(sum0_11_reg_2326));
assign add_ln48_63_fu_1424_p2 = (add_ln48_62_fu_1419_p2 + reg_865);
assign add_ln48_64_fu_1903_p2 = (add_ln48_63_reg_2567 + add_ln48_61_fu_1898_p2);
assign add_ln48_65_fu_1962_p2 = (reg_857 + mul_ln48_20_reg_2449);
assign add_ln48_66_fu_1835_p2 = ($signed(sum0_10_reg_2254) + $signed(orig_0_q0));
assign add_ln48_67_fu_1908_p1 = reg_842;
assign add_ln48_67_fu_1908_p2 = (add_ln48_66_reg_2887 + add_ln48_67_fu_1908_p1);
assign add_ln48_68_fu_1505_p2 = ($signed(reg_870) + $signed(sum0_12_reg_2266));
assign add_ln48_69_fu_1510_p2 = (add_ln48_68_fu_1505_p2 + reg_847);
assign add_ln48_6_fu_1533_p0 = reg_865;
assign add_ln48_6_fu_1533_p2 = ($signed(add_ln48_6_fu_1533_p0) + $signed(orig_0_q0));
assign add_ln48_70_fu_1913_p2 = (add_ln48_69_reg_2612 + add_ln48_67_fu_1908_p2);
assign add_ln48_71_fu_1968_p2 = (reg_861 + mul_ln48_22_reg_2484);
assign add_ln48_72_fu_1918_p2 = ($signed(sum0_11_reg_2326) + $signed(orig_1_q0));
assign add_ln48_73_fu_1940_p1 = reg_852;
assign add_ln48_73_fu_1940_p2 = (add_ln48_72_reg_2931 + add_ln48_73_fu_1940_p1);
assign add_ln48_74_fu_1516_p2 = ($signed(reg_875) + $signed(sum0_13_reg_2333));
assign add_ln48_75_fu_1521_p2 = (add_ln48_74_fu_1516_p2 + reg_865);
assign add_ln48_76_fu_1945_p2 = (add_ln48_75_reg_2617 + add_ln48_73_fu_1940_p2);
assign add_ln48_77_fu_1994_p2 = (reg_884 + mul_ln48_24_reg_2489_pp0_iter1_reg);
assign add_ln48_78_fu_1923_p2 = ($signed(sum0_12_reg_2266) + $signed(orig_0_q0));
assign add_ln48_79_fu_1985_p2 = (add_ln48_78_reg_2941 + orig_0_load_31_reg_2936);
assign add_ln48_7_fu_1573_p2 = (add_ln48_6_reg_2632 + reg_847);
assign add_ln48_80_fu_1974_p2 = (orig_0_load_34_reg_2622 + reg_875);
assign add_ln48_81_fu_1979_p2 = (add_ln48_80_fu_1974_p2 + reg_870);
assign add_ln48_82_fu_1989_p2 = (add_ln48_81_reg_2956 + add_ln48_79_fu_1985_p2);
assign add_ln48_83_fu_2000_p2 = (reg_880 + mul_ln48_26_reg_2524_pp0_iter1_reg);
assign add_ln48_8_fu_1160_p2 = ($signed(reg_870) + $signed(reg_852));
assign add_ln48_9_fu_1166_p2 = (add_ln48_8_fu_1160_p2 + reg_847);
assign add_ln48_fu_1527_p2 = (reg_875 + orig_1_q0);
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
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1719 = ((icmp_ln36_reg_2917 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage17;
assign ap_ready = ap_ready_sig;
assign i_fu_925_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_827_p4[0:0] == 1'b1) ? ap_sig_allocacmp_indvars_iv_next3885_load : ap_sig_allocacmp_i3_load);
assign icmp_ln36_fu_1875_p2 = ((indvar_flatten2_fu_80 == 10'd899) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1870_p2 = ((j_reg_2284 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next388_fu_979_p2 = (i_fu_925_p3 + 5'd1);
assign j_fu_1081_p2 = (select_ln11_reg_2046 + 5'd1);
assign or_ln1_fu_1481_p3 = {{add_ln40_reg_2534}, {3'd1}};
assign or_ln2_fu_1493_p3 = {{add_ln41_reg_2550}, {3'd1}};
assign or_ln3_fu_1086_p4 = {{{i_reg_2058}, {j_fu_1081_p2}}, {3'd1}};
assign or_ln40_1_fu_1539_p3 = {{add_ln40_reg_2534}, {3'd2}};
assign or_ln40_2_fu_1595_p3 = {{add_ln40_reg_2534}, {3'd3}};
assign or_ln40_3_fu_1649_p3 = {{add_ln40_reg_2534}, {3'd4}};
assign or_ln40_4_fu_1703_p3 = {{add_ln40_reg_2534}, {3'd5}};
assign or_ln40_5_fu_1770_p3 = {{add_ln40_reg_2534}, {3'd6}};
assign or_ln40_6_fu_1840_p3 = {{add_ln40_reg_2534}, {3'd7}};
assign or_ln41_1_fu_1551_p3 = {{add_ln41_reg_2550}, {3'd2}};
assign or_ln41_2_fu_1607_p3 = {{add_ln41_reg_2550}, {3'd3}};
assign or_ln41_3_fu_1661_p3 = {{add_ln41_reg_2550}, {3'd4}};
assign or_ln41_4_fu_1715_p3 = {{add_ln41_reg_2550}, {3'd5}};
assign or_ln41_5_fu_1782_p3 = {{add_ln41_reg_2550}, {3'd6}};
assign or_ln41_6_fu_1852_p3 = {{add_ln41_reg_2550}, {3'd7}};
assign or_ln42_1_fu_1132_p4 = {{{i_reg_2058}, {j_reg_2284}}, {3'd2}};
assign or_ln42_2_fu_1183_p4 = {{{i_reg_2058}, {j_reg_2284}}, {3'd3}};
assign or_ln42_3_fu_1233_p4 = {{{i_reg_2058}, {j_reg_2284}}, {3'd4}};
assign or_ln42_4_fu_1283_p4 = {{{i_reg_2058}, {j_reg_2284}}, {3'd5}};
assign or_ln42_5_fu_1333_p4 = {{{i_reg_2058}, {j_reg_2284}}, {3'd6}};
assign or_ln42_6_fu_1430_p4 = {{{i_reg_2058}, {j_reg_2284}}, {3'd7}};
assign or_ln43_1_fu_1146_p4 = {{{i_reg_2058}, {add_ln43_reg_2224}}, {3'd2}};
assign or_ln43_2_fu_1197_p4 = {{{i_reg_2058}, {add_ln43_reg_2224}}, {3'd3}};
assign or_ln43_3_fu_1247_p4 = {{{i_reg_2058}, {add_ln43_reg_2224}}, {3'd4}};
assign or_ln43_4_fu_1297_p4 = {{{i_reg_2058}, {add_ln43_reg_2224}}, {3'd5}};
assign or_ln43_5_fu_1347_p4 = {{{i_reg_2058}, {add_ln43_reg_2224}}, {3'd6}};
assign or_ln43_6_fu_1443_p4 = {{{i_reg_2058}, {add_ln43_reg_2224}}, {3'd7}};
assign or_ln44_1_fu_964_p4 = {{{i_fu_925_p3}, {select_ln11_fu_917_p3}}, {3'd2}};
assign or_ln44_2_fu_995_p4 = {{{i_reg_2058}, {select_ln11_reg_2046}}, {3'd3}};
assign or_ln44_3_fu_1009_p4 = {{{i_reg_2058}, {select_ln11_reg_2046}}, {3'd4}};
assign or_ln44_4_fu_1022_p4 = {{{i_reg_2058}, {select_ln11_reg_2046}}, {3'd5}};
assign or_ln44_5_fu_1036_p4 = {{{i_reg_2058}, {select_ln11_reg_2046}}, {3'd6}};
assign or_ln44_6_fu_1068_p4 = {{{i_reg_2058}, {select_ln11_reg_2046}}, {3'd7}};
assign or_ln4_fu_1101_p4 = {{{i_reg_2058}, {add_ln43_reg_2224}}, {3'd1}};
assign or_ln_fu_948_p4 = {{{i_fu_925_p3}, {select_ln11_fu_917_p3}}, {3'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign p_cast60_fu_943_p1 = tmp_1_fu_933_p4;
assign select_ln11_fu_917_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_827_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j4_load);
assign sext_ln41_fu_1398_p1 = zext_ln40_cast_fu_1368_p3;
assign shl_ln1_fu_1456_p3 = {{add_ln41_reg_2550}, {3'd0}};
assign shl_ln2_fu_1468_p4 = {{{i_reg_2058}, {j_reg_2284}}, {3'd0}};
assign shl_ln3_fu_1054_p4 = {{{i_reg_2058}, {add_ln43_fu_1049_p2}}, {3'd0}};
assign shl_ln_fu_1385_p3 = {{add_ln40_fu_1379_p2}, {3'd0}};
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign tmp_1_fu_933_p4 = {{{i_fu_925_p3}, {select_ln11_fu_917_p3}}, {3'd0}};
assign tmp_fu_1361_p3 = {{i_reg_2058}, {5'd0}};
assign zext_ln40_1_fu_1393_p1 = shl_ln_fu_1385_p3;
assign zext_ln40_2_fu_1488_p1 = or_ln1_fu_1481_p3;
assign zext_ln40_3_fu_1546_p1 = or_ln40_1_fu_1539_p3;
assign zext_ln40_4_fu_1602_p1 = or_ln40_2_fu_1595_p3;
assign zext_ln40_5_fu_1656_p1 = or_ln40_3_fu_1649_p3;
assign zext_ln40_6_fu_1710_p1 = or_ln40_4_fu_1703_p3;
assign zext_ln40_7_fu_1777_p1 = or_ln40_5_fu_1770_p3;
assign zext_ln40_8_fu_1847_p1 = or_ln40_6_fu_1840_p3;
assign zext_ln40_cast_fu_1368_p3 = {{1'd1}, {select_ln11_reg_2046}};
assign zext_ln40_fu_1375_p1 = $unsigned(zext_ln40_cast_fu_1368_p3);
assign zext_ln41_1_fu_1500_p1 = or_ln2_fu_1493_p3;
assign zext_ln41_2_fu_1558_p1 = or_ln41_1_fu_1551_p3;
assign zext_ln41_3_fu_1614_p1 = or_ln41_2_fu_1607_p3;
assign zext_ln41_4_fu_1668_p1 = or_ln41_3_fu_1661_p3;
assign zext_ln41_5_fu_1722_p1 = or_ln41_4_fu_1715_p3;
assign zext_ln41_6_fu_1789_p1 = or_ln41_5_fu_1782_p3;
assign zext_ln41_7_fu_1859_p1 = or_ln41_6_fu_1852_p3;
assign zext_ln41_fu_1463_p1 = shl_ln1_fu_1456_p3;
assign zext_ln42_1_fu_1095_p1 = or_ln3_fu_1086_p4;
assign zext_ln42_2_fu_1140_p1 = or_ln42_1_fu_1132_p4;
assign zext_ln42_3_fu_1191_p1 = or_ln42_2_fu_1183_p4;
assign zext_ln42_4_fu_1241_p1 = or_ln42_3_fu_1233_p4;
assign zext_ln42_5_fu_1291_p1 = or_ln42_4_fu_1283_p4;
assign zext_ln42_6_fu_1341_p1 = or_ln42_5_fu_1333_p4;
assign zext_ln42_7_fu_1438_p1 = or_ln42_6_fu_1430_p4;
assign zext_ln42_fu_1476_p1 = shl_ln2_fu_1468_p4;
assign zext_ln43_1_fu_1109_p1 = or_ln4_fu_1101_p4;
assign zext_ln43_2_fu_1154_p1 = or_ln43_1_fu_1146_p4;
assign zext_ln43_3_fu_1205_p1 = or_ln43_2_fu_1197_p4;
assign zext_ln43_4_fu_1255_p1 = or_ln43_3_fu_1247_p4;
assign zext_ln43_5_fu_1305_p1 = or_ln43_4_fu_1297_p4;
assign zext_ln43_6_fu_1355_p1 = or_ln43_5_fu_1347_p4;
assign zext_ln43_7_fu_1451_p1 = or_ln43_6_fu_1443_p4;
assign zext_ln43_fu_1063_p1 = shl_ln3_fu_1054_p4;
assign zext_ln44_1_fu_974_p1 = or_ln44_1_fu_964_p4;
assign zext_ln44_2_fu_1003_p1 = or_ln44_2_fu_995_p4;
assign zext_ln44_3_fu_1017_p1 = or_ln44_3_fu_1009_p4;
assign zext_ln44_4_fu_1030_p1 = or_ln44_4_fu_1022_p4;
assign zext_ln44_5_fu_1044_p1 = or_ln44_5_fu_1036_p4;
assign zext_ln44_6_fu_1076_p1 = or_ln44_6_fu_1068_p4;
assign zext_ln44_fu_958_p1 = or_ln_fu_948_p4;
always @ (posedge ap_clk) begin
    p_cast60_reg_2084[2:0] <= 3'b000;
    p_cast60_reg_2084[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2090[2:0] <= 3'b001;
    zext_ln44_reg_2090[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_2111[2:0] <= 3'b010;
    zext_ln44_1_reg_2111[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_2135[2:0] <= 3'b011;
    zext_ln44_2_reg_2135[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_3_reg_2151[2:0] <= 3'b100;
    zext_ln44_3_reg_2151[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_3_reg_2151_pp0_iter1_reg[2:0] <= 3'b100;
    zext_ln44_3_reg_2151_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_4_reg_2196[2:0] <= 3'b101;
    zext_ln44_4_reg_2196[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_4_reg_2196_pp0_iter1_reg[2:0] <= 3'b101;
    zext_ln44_4_reg_2196_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_5_reg_2212[2:0] <= 3'b110;
    zext_ln44_5_reg_2212[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_5_reg_2212_pp0_iter1_reg[2:0] <= 3'b110;
    zext_ln44_5_reg_2212_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_6_reg_2273[2:0] <= 3'b111;
    zext_ln44_6_reg_2273[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_6_reg_2273_pp0_iter1_reg[2:0] <= 3'b111;
    zext_ln44_6_reg_2273_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln40_2_reg_2592[2:0] <= 3'b001;
    zext_ln40_2_reg_2592[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln41_1_reg_2602[2:0] <= 3'b001;
    zext_ln41_1_reg_2602[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln40_3_reg_2647[2:0] <= 3'b010;
    zext_ln40_3_reg_2647[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln41_2_reg_2657[2:0] <= 3'b010;
    zext_ln41_2_reg_2657[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln40_4_reg_2697[2:0] <= 3'b011;
    zext_ln40_4_reg_2697[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln41_3_reg_2707[2:0] <= 3'b011;
    zext_ln41_3_reg_2707[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln40_5_reg_2747[2:0] <= 3'b100;
    zext_ln40_5_reg_2747[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln41_4_reg_2757[2:0] <= 3'b100;
    zext_ln41_4_reg_2757[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln40_6_reg_2802[2:0] <= 3'b101;
    zext_ln40_6_reg_2802[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln41_5_reg_2812[2:0] <= 3'b101;
    zext_ln41_5_reg_2812[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln40_7_reg_2852[2:0] <= 3'b110;
    zext_ln40_7_reg_2852[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln41_6_reg_2862[2:0] <= 3'b110;
    zext_ln41_6_reg_2862[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 