module stencil3d_stencil3d_Pipeline_loop_height_loop_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [11:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [11:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [11:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [11:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [11:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
wire   [0:0] icmp_ln36_fu_1659_p2;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_874;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] reg_879;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg  signed [31:0] reg_883;
reg  signed [31:0] reg_888;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_893;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_898;
reg   [31:0] reg_902;
wire   [31:0] grp_fu_862_p2;
reg   [31:0] reg_906;
reg   [31:0] reg_910;
reg   [31:0] reg_915;
wire   [31:0] grp_fu_866_p2;
reg   [31:0] reg_919;
reg   [31:0] reg_923;
wire   [31:0] grp_fu_870_p2;
reg   [31:0] reg_927;
reg   [31:0] reg_931;
reg   [31:0] reg_936;
reg   [31:0] reg_940;
wire   [4:0] select_ln11_fu_973_p3;
reg   [4:0] select_ln11_reg_1859;
wire   [4:0] i_fu_981_p3;
reg   [4:0] i_reg_1867;
wire   [63:0] p_cast60_fu_999_p1;
reg   [63:0] p_cast60_reg_1881;
reg   [63:0] p_cast60_reg_1881_pp0_iter1_reg;
wire   [63:0] zext_ln44_fu_1016_p1;
reg   [63:0] zext_ln44_reg_1904;
reg   [63:0] zext_ln44_reg_1904_pp0_iter1_reg;
wire   [63:0] zext_ln44_1_fu_1034_p1;
reg   [63:0] zext_ln44_1_reg_1932;
reg   [63:0] zext_ln44_1_reg_1932_pp0_iter1_reg;
wire   [4:0] add_ln43_fu_1055_p2;
reg   [4:0] add_ln43_reg_1948;
wire   [63:0] zext_ln43_fu_1069_p1;
reg   [63:0] zext_ln43_reg_1955;
reg  signed [31:0] sum0_3_reg_1966;
reg  signed [31:0] sum0_5_reg_1973;
reg  signed [31:0] sum0_6_reg_1980;
reg  signed [31:0] sum0_8_reg_1992;
wire   [63:0] zext_ln44_2_fu_1082_p1;
reg   [63:0] zext_ln44_2_reg_2009;
reg   [63:0] zext_ln44_2_reg_2009_pp0_iter1_reg;
wire   [4:0] j_fu_1089_p2;
reg   [4:0] j_reg_2032;
wire   [63:0] zext_ln42_fu_1103_p1;
reg   [63:0] zext_ln42_reg_2039;
wire   [63:0] zext_ln42_1_fu_1118_p1;
reg   [63:0] zext_ln42_1_reg_2064;
wire   [63:0] zext_ln43_1_fu_1132_p1;
reg   [63:0] zext_ln43_1_reg_2075;
reg  signed [31:0] sum0_7_reg_2096;
reg  signed [31:0] sum0_9_reg_2103;
reg  signed [31:0] sum0_10_reg_2110;
reg  signed [31:0] sum0_11_reg_2117;
reg  signed [31:0] sum0_12_reg_2124;
reg  signed [31:0] sum0_13_reg_2131;
wire   [31:0] add_ln48_3_fu_1149_p2;
reg   [31:0] add_ln48_3_reg_2137;
wire   [63:0] zext_ln42_2_fu_1163_p1;
reg   [63:0] zext_ln42_2_reg_2162;
wire   [63:0] zext_ln43_2_fu_1177_p1;
reg   [63:0] zext_ln43_2_reg_2173;
wire   [31:0] add_ln48_9_fu_1189_p2;
reg   [31:0] add_ln48_9_reg_2194;
wire   [31:0] add_ln48_15_fu_1200_p2;
reg   [31:0] add_ln48_15_reg_2199;
wire   [31:0] add_ln48_21_fu_1212_p2;
reg   [31:0] add_ln48_21_reg_2204;
wire   [31:0] add_ln48_27_fu_1223_p2;
reg   [31:0] add_ln48_27_reg_2209;
reg   [31:0] mul_ln48_8_reg_2214;
reg   [31:0] mul_ln48_10_reg_2219;
reg   [31:0] mul_ln48_12_reg_2224;
wire   [63:0] zext_ln42_3_fu_1237_p1;
reg   [63:0] zext_ln42_3_reg_2249;
wire   [63:0] zext_ln43_3_fu_1251_p1;
reg   [63:0] zext_ln43_3_reg_2259;
wire   [9:0] add_ln40_fu_1275_p2;
reg   [9:0] add_ln40_reg_2284;
wire   [63:0] zext_ln40_1_fu_1289_p1;
reg   [63:0] zext_ln40_1_reg_2290;
wire   [9:0] add_ln41_fu_1299_p2;
reg   [9:0] add_ln41_reg_2300;
wire   [63:0] zext_ln41_fu_1313_p1;
reg   [63:0] zext_ln41_reg_2306;
wire   [63:0] zext_ln40_2_fu_1326_p1;
reg   [63:0] zext_ln40_2_reg_2322;
wire   [63:0] zext_ln41_1_fu_1339_p1;
reg   [63:0] zext_ln41_1_reg_2334;
wire   [31:0] add_ln48_33_fu_1349_p2;
reg   [31:0] add_ln48_33_reg_2346;
wire   [31:0] add_ln48_39_fu_1360_p2;
reg   [31:0] add_ln48_39_reg_2351;
wire   [31:0] add_ln48_45_fu_1371_p2;
reg   [31:0] add_ln48_45_reg_2356;
reg   [31:0] mul_ln48_14_reg_2361;
wire   [31:0] add_ln48_51_fu_1382_p2;
reg   [31:0] add_ln48_51_reg_2366;
reg   [31:0] mul_ln48_16_reg_2371;
reg   [31:0] mul_ln48_18_reg_2376;
wire   [31:0] add_ln48_12_fu_1388_p2;
reg   [31:0] add_ln48_12_reg_2411;
wire   [31:0] add_ln48_18_fu_1394_p2;
reg   [31:0] add_ln48_18_reg_2416;
wire   [63:0] zext_ln40_3_fu_1407_p1;
reg   [63:0] zext_ln40_3_reg_2431;
wire   [63:0] zext_ln41_2_fu_1419_p1;
reg   [63:0] zext_ln41_2_reg_2443;
wire   [31:0] add_ln48_57_fu_1429_p2;
reg   [31:0] add_ln48_57_reg_2455;
wire   [31:0] add_ln48_63_fu_1440_p2;
reg   [31:0] add_ln48_63_reg_2460;
reg   [31:0] mul_ln48_20_reg_2465;
wire   [31:0] add_ln48_69_fu_1451_p2;
reg   [31:0] add_ln48_69_reg_2470;
reg   [31:0] mul_ln48_22_reg_2475;
reg   [31:0] mul_ln48_22_reg_2475_pp0_iter1_reg;
wire   [31:0] add_ln48_75_fu_1462_p2;
reg   [31:0] add_ln48_75_reg_2480;
reg   [31:0] mul_ln48_24_reg_2485;
reg   [31:0] mul_ln48_24_reg_2485_pp0_iter1_reg;
wire   [31:0] add_ln48_fu_1468_p2;
reg   [31:0] add_ln48_reg_2490;
wire   [31:0] add_ln48_6_fu_1474_p2;
reg   [31:0] add_ln48_6_reg_2495;
wire  signed [31:0] add_ln48_16_fu_1485_p2;
reg  signed [31:0] add_ln48_16_reg_2500;
wire  signed [31:0] add_ln48_22_fu_1495_p2;
reg  signed [31:0] add_ln48_22_reg_2505;
wire   [31:0] add_ln48_36_fu_1500_p2;
reg   [31:0] add_ln48_36_reg_2530;
wire   [31:0] add_ln48_42_fu_1505_p2;
reg   [31:0] add_ln48_42_reg_2535;
wire   [63:0] zext_ln40_4_fu_1517_p1;
reg   [63:0] zext_ln40_4_reg_2550;
wire   [63:0] zext_ln41_3_fu_1529_p1;
reg   [63:0] zext_ln41_3_reg_2561;
reg   [31:0] mul_ln48_26_reg_2572;
reg   [31:0] mul_ln48_26_reg_2572_pp0_iter1_reg;
wire  signed [31:0] add_ln48_4_fu_1539_p2;
reg  signed [31:0] add_ln48_4_reg_2577;
reg   [31:0] mul_ln48_reg_2582;
wire  signed [31:0] add_ln48_10_fu_1549_p2;
reg  signed [31:0] add_ln48_10_reg_2587;
wire   [31:0] add_ln48_24_fu_1554_p2;
reg   [31:0] add_ln48_24_reg_2592;
wire   [31:0] add_ln48_30_fu_1559_p2;
reg   [31:0] add_ln48_30_reg_2597;
wire  signed [31:0] add_ln48_40_fu_1570_p2;
reg  signed [31:0] add_ln48_40_reg_2602;
wire  signed [31:0] add_ln48_46_fu_1580_p2;
reg  signed [31:0] add_ln48_46_reg_2607;
wire   [31:0] add_ln48_60_fu_1585_p2;
reg   [31:0] add_ln48_60_reg_2632;
wire   [31:0] add_ln48_66_fu_1590_p2;
reg   [31:0] add_ln48_66_reg_2637;
wire  signed [31:0] add_ln48_28_fu_1603_p2;
reg  signed [31:0] add_ln48_28_reg_2642;
wire  signed [31:0] add_ln48_34_fu_1613_p2;
reg  signed [31:0] add_ln48_34_reg_2647;
wire   [31:0] add_ln48_48_fu_1618_p2;
reg   [31:0] add_ln48_48_reg_2652;
wire   [31:0] add_ln48_54_fu_1623_p2;
reg   [31:0] add_ln48_54_reg_2657;
wire  signed [31:0] add_ln48_64_fu_1633_p2;
reg  signed [31:0] add_ln48_64_reg_2662;
wire  signed [31:0] add_ln48_70_fu_1643_p2;
reg  signed [31:0] add_ln48_70_reg_2667;
wire   [0:0] icmp_ln37_fu_1654_p2;
reg   [0:0] icmp_ln37_reg_2692;
reg   [0:0] icmp_ln36_reg_2697;
wire  signed [31:0] add_ln48_52_fu_1689_p2;
reg  signed [31:0] add_ln48_52_reg_2701;
wire  signed [31:0] add_ln48_58_fu_1699_p2;
reg  signed [31:0] add_ln48_58_reg_2706;
wire   [31:0] add_ln48_72_fu_1704_p2;
reg   [31:0] add_ln48_72_reg_2711;
reg   [31:0] orig_2_load_15_reg_2716;
wire   [31:0] add_ln48_78_fu_1709_p2;
reg   [31:0] add_ln48_78_reg_2721;
wire  signed [31:0] add_ln48_76_fu_1738_p2;
reg  signed [31:0] add_ln48_76_reg_2726;
wire   [31:0] add_ln48_81_fu_1785_p2;
reg   [31:0] add_ln48_81_reg_2736;
wire  signed [31:0] add_ln48_82_fu_1795_p2;
reg  signed [31:0] add_ln48_82_reg_2741;
reg   [31:0] mul_ln48_25_reg_2746;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln376_phi_fu_855_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [9:0] indvar_flatten2_fu_80;
wire   [9:0] add_ln36_fu_1648_p2;
reg   [4:0] i3_fu_84;
reg   [4:0] ap_sig_allocacmp_i3_load;
reg   [4:0] j4_fu_88;
reg   [4:0] ap_sig_allocacmp_j4_load;
reg   [4:0] indvars_iv_next3885_fu_92;
wire   [4:0] indvars_iv_next388_fu_1039_p2;
reg   [4:0] ap_sig_allocacmp_indvars_iv_next3885_load;
reg    orig_2_ce1_local;
reg   [11:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [11:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_3_ce1_local;
reg   [11:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [11:0] orig_3_address0_local;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
wire   [31:0] add_ln48_17_fu_1670_p2;
reg    sol_3_ce0_local;
reg   [11:0] sol_3_address0_local;
wire   [31:0] add_ln48_41_fu_1727_p2;
wire   [31:0] add_ln48_65_fu_1773_p2;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
wire   [31:0] add_ln48_23_fu_1677_p2;
reg    sol_0_ce0_local;
reg   [11:0] sol_0_address0_local;
wire   [31:0] add_ln48_47_fu_1755_p2;
wire   [31:0] add_ln48_71_fu_1800_p2;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_5_fu_1714_p2;
reg    sol_1_ce0_local;
reg   [11:0] sol_1_address0_local;
wire   [31:0] add_ln48_29_fu_1743_p2;
wire   [31:0] add_ln48_53_fu_1761_p2;
wire   [31:0] add_ln48_77_fu_1806_p2;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
wire   [31:0] add_ln48_11_fu_1720_p2;
reg    sol_2_ce0_local;
reg   [11:0] sol_2_address0_local;
wire   [31:0] add_ln48_35_fu_1749_p2;
wire   [31:0] add_ln48_59_fu_1767_p2;
wire   [31:0] add_ln48_83_fu_1811_p2;
reg  signed [31:0] grp_fu_862_p0;
reg  signed [31:0] grp_fu_862_p1;
reg  signed [31:0] grp_fu_866_p0;
reg  signed [31:0] grp_fu_866_p1;
reg  signed [31:0] grp_fu_870_p0;
reg  signed [31:0] grp_fu_870_p1;
wire   [11:0] tmp_1_fu_989_p4;
wire   [11:0] or_ln_fu_1006_p4;
wire   [11:0] or_ln44_1_fu_1024_p4;
wire   [11:0] shl_ln3_fu_1060_p4;
wire   [11:0] or_ln44_2_fu_1074_p4;
wire   [11:0] shl_ln2_fu_1094_p4;
wire   [11:0] or_ln3_fu_1109_p4;
wire   [11:0] or_ln4_fu_1124_p4;
wire   [31:0] add_ln48_2_fu_1143_p2;
wire   [11:0] or_ln42_1_fu_1155_p4;
wire   [11:0] or_ln43_1_fu_1169_p4;
wire   [31:0] add_ln48_8_fu_1183_p2;
wire   [31:0] add_ln48_14_fu_1195_p2;
wire   [31:0] add_ln48_20_fu_1206_p2;
wire   [31:0] add_ln48_26_fu_1218_p2;
wire   [11:0] or_ln42_2_fu_1229_p4;
wire   [11:0] or_ln43_2_fu_1243_p4;
wire  signed [5:0] zext_ln40_cast_fu_1264_p3;
wire   [9:0] zext_ln40_fu_1271_p1;
wire   [9:0] tmp_fu_1257_p3;
wire   [11:0] shl_ln_fu_1281_p3;
wire  signed [9:0] sext_ln41_fu_1295_p1;
wire   [11:0] shl_ln1_fu_1305_p3;
wire   [11:0] or_ln1_fu_1318_p3;
wire   [11:0] or_ln2_fu_1331_p3;
wire   [31:0] add_ln48_32_fu_1344_p2;
wire   [31:0] add_ln48_38_fu_1355_p2;
wire   [31:0] add_ln48_44_fu_1366_p2;
wire   [31:0] add_ln48_50_fu_1377_p2;
wire   [11:0] or_ln40_1_fu_1400_p3;
wire   [11:0] or_ln41_1_fu_1412_p3;
wire   [31:0] add_ln48_56_fu_1424_p2;
wire   [31:0] add_ln48_62_fu_1435_p2;
wire   [31:0] add_ln48_68_fu_1446_p2;
wire   [31:0] add_ln48_74_fu_1457_p2;
wire  signed [31:0] add_ln48_6_fu_1474_p0;
wire   [31:0] add_ln48_13_fu_1480_p1;
wire   [31:0] add_ln48_13_fu_1480_p2;
wire   [31:0] add_ln48_19_fu_1490_p2;
wire   [11:0] or_ln40_2_fu_1510_p3;
wire   [11:0] or_ln41_2_fu_1522_p3;
wire   [31:0] add_ln48_1_fu_1534_p2;
wire   [31:0] add_ln48_7_fu_1544_p1;
wire   [31:0] add_ln48_7_fu_1544_p2;
wire   [31:0] add_ln48_37_fu_1565_p1;
wire   [31:0] add_ln48_37_fu_1565_p2;
wire   [31:0] add_ln48_43_fu_1575_p2;
wire   [31:0] add_ln48_25_fu_1598_p1;
wire   [31:0] add_ln48_25_fu_1598_p2;
wire   [31:0] add_ln48_31_fu_1608_p1;
wire   [31:0] add_ln48_31_fu_1608_p2;
wire   [31:0] add_ln48_61_fu_1628_p1;
wire   [31:0] add_ln48_61_fu_1628_p2;
wire   [31:0] add_ln48_67_fu_1638_p2;
wire   [31:0] add_ln48_49_fu_1684_p1;
wire   [31:0] add_ln48_49_fu_1684_p2;
wire   [31:0] add_ln48_55_fu_1694_p1;
wire   [31:0] add_ln48_55_fu_1694_p2;
wire   [31:0] add_ln48_73_fu_1733_p1;
wire   [31:0] add_ln48_73_fu_1733_p2;
wire   [31:0] add_ln48_80_fu_1779_p2;
wire   [31:0] add_ln48_79_fu_1791_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [9:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1390;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_80 = 10'd0;
#0 i3_fu_84 = 5'd0;
#0 j4_fu_88 = 5'd0;
#0 indvars_iv_next3885_fu_92 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_862_p0),.din1(grp_fu_862_p1),.ce(1'b1),.dout(grp_fu_862_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_866_p0),.din1(grp_fu_866_p1),.ce(1'b1),.dout(grp_fu_866_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_870_p0),.din1(grp_fu_870_p1),.ce(1'b1),.dout(grp_fu_870_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage9)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage9_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            i3_fu_84 <= i_fu_981_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i3_fu_84 <= 5'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_80 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        indvar_flatten2_fu_80 <= add_ln36_fu_1648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvars_iv_next3885_fu_92 <= indvars_iv_next388_fu_1039_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next3885_fu_92 <= 5'd2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j4_fu_88 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j4_fu_88 <= j_fu_1089_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_910 <= orig_3_q0;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_910 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        reg_931 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_931 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln40_reg_2284 <= add_ln40_fu_1275_p2;
        add_ln41_reg_2300 <= add_ln41_fu_1299_p2;
        add_ln48_33_reg_2346 <= add_ln48_33_fu_1349_p2;
        add_ln48_39_reg_2351 <= add_ln48_39_fu_1360_p2;
        add_ln48_45_reg_2356 <= add_ln48_45_fu_1371_p2;
        add_ln48_51_reg_2366 <= add_ln48_51_fu_1382_p2;
        zext_ln40_1_reg_2290[11 : 2] <= zext_ln40_1_fu_1289_p1[11 : 2];
        zext_ln40_2_reg_2322[11 : 2] <= zext_ln40_2_fu_1326_p1[11 : 2];
        zext_ln41_1_reg_2334[11 : 2] <= zext_ln41_1_fu_1339_p1[11 : 2];
        zext_ln41_reg_2306[11 : 2] <= zext_ln41_fu_1313_p1[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln43_reg_1948 <= add_ln43_fu_1055_p2;
        add_ln48_76_reg_2726 <= add_ln48_76_fu_1738_p2;
        zext_ln43_reg_1955[11 : 2] <= zext_ln43_fu_1069_p1[11 : 2];
        zext_ln44_2_reg_2009[11 : 2] <= zext_ln44_2_fu_1082_p1[11 : 2];
        zext_ln44_2_reg_2009_pp0_iter1_reg[11 : 2] <= zext_ln44_2_reg_2009[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln48_10_reg_2587 <= add_ln48_10_fu_1549_p2;
        add_ln48_24_reg_2592 <= add_ln48_24_fu_1554_p2;
        add_ln48_30_reg_2597 <= add_ln48_30_fu_1559_p2;
        add_ln48_40_reg_2602 <= add_ln48_40_fu_1570_p2;
        add_ln48_46_reg_2607 <= add_ln48_46_fu_1580_p2;
        add_ln48_4_reg_2577 <= add_ln48_4_fu_1539_p2;
        add_ln48_60_reg_2632 <= add_ln48_60_fu_1585_p2;
        add_ln48_66_reg_2637 <= add_ln48_66_fu_1590_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln48_12_reg_2411 <= add_ln48_12_fu_1388_p2;
        add_ln48_18_reg_2416 <= add_ln48_18_fu_1394_p2;
        add_ln48_57_reg_2455 <= add_ln48_57_fu_1429_p2;
        add_ln48_63_reg_2460 <= add_ln48_63_fu_1440_p2;
        add_ln48_69_reg_2470 <= add_ln48_69_fu_1451_p2;
        add_ln48_75_reg_2480 <= add_ln48_75_fu_1462_p2;
        mul_ln48_22_reg_2475_pp0_iter1_reg <= mul_ln48_22_reg_2475;
        mul_ln48_24_reg_2485_pp0_iter1_reg <= mul_ln48_24_reg_2485;
        zext_ln40_3_reg_2431[11 : 2] <= zext_ln40_3_fu_1407_p1[11 : 2];
        zext_ln41_2_reg_2443[11 : 2] <= zext_ln41_2_fu_1419_p1[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_15_reg_2199 <= add_ln48_15_fu_1200_p2;
        add_ln48_21_reg_2204 <= add_ln48_21_fu_1212_p2;
        add_ln48_27_reg_2209 <= add_ln48_27_fu_1223_p2;
        add_ln48_82_reg_2741 <= add_ln48_82_fu_1795_p2;
        add_ln48_9_reg_2194 <= add_ln48_9_fu_1189_p2;
        zext_ln42_3_reg_2249[11 : 2] <= zext_ln42_3_fu_1237_p1[11 : 2];
        zext_ln43_3_reg_2259[11 : 2] <= zext_ln43_3_fu_1251_p1[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln48_16_reg_2500 <= add_ln48_16_fu_1485_p2;
        add_ln48_22_reg_2505 <= add_ln48_22_fu_1495_p2;
        add_ln48_36_reg_2530 <= add_ln48_36_fu_1500_p2;
        add_ln48_42_reg_2535 <= add_ln48_42_fu_1505_p2;
        add_ln48_6_reg_2495 <= add_ln48_6_fu_1474_p2;
        add_ln48_reg_2490 <= add_ln48_fu_1468_p2;
        mul_ln48_26_reg_2572_pp0_iter1_reg <= mul_ln48_26_reg_2572;
        zext_ln40_4_reg_2550[11 : 2] <= zext_ln40_4_fu_1517_p1[11 : 2];
        zext_ln41_3_reg_2561[11 : 2] <= zext_ln41_3_fu_1529_p1[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln48_28_reg_2642 <= add_ln48_28_fu_1603_p2;
        add_ln48_34_reg_2647 <= add_ln48_34_fu_1613_p2;
        add_ln48_48_reg_2652 <= add_ln48_48_fu_1618_p2;
        add_ln48_54_reg_2657 <= add_ln48_54_fu_1623_p2;
        add_ln48_64_reg_2662 <= add_ln48_64_fu_1633_p2;
        add_ln48_70_reg_2667 <= add_ln48_70_fu_1643_p2;
        icmp_ln36_reg_2697 <= icmp_ln36_fu_1659_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_3_reg_2137 <= add_ln48_3_fu_1149_p2;
        add_ln48_81_reg_2736 <= add_ln48_81_fu_1785_p2;
        zext_ln42_2_reg_2162[11 : 2] <= zext_ln42_2_fu_1163_p1[11 : 2];
        zext_ln43_2_reg_2173[11 : 2] <= zext_ln43_2_fu_1177_p1[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_52_reg_2701 <= add_ln48_52_fu_1689_p2;
        add_ln48_58_reg_2706 <= add_ln48_58_fu_1699_p2;
        add_ln48_72_reg_2711 <= add_ln48_72_fu_1704_p2;
        add_ln48_78_reg_2721 <= add_ln48_78_fu_1709_p2;
        i_reg_1867 <= i_fu_981_p3;
        p_cast60_reg_1881[11 : 2] <= p_cast60_fu_999_p1[11 : 2];
        p_cast60_reg_1881_pp0_iter1_reg[11 : 2] <= p_cast60_reg_1881[11 : 2];
        select_ln11_reg_1859 <= select_ln11_fu_973_p3;
        zext_ln44_1_reg_1932[11 : 2] <= zext_ln44_1_fu_1034_p1[11 : 2];
        zext_ln44_1_reg_1932_pp0_iter1_reg[11 : 2] <= zext_ln44_1_reg_1932[11 : 2];
        zext_ln44_reg_1904[11 : 2] <= zext_ln44_fu_1016_p1[11 : 2];
        zext_ln44_reg_1904_pp0_iter1_reg[11 : 2] <= zext_ln44_reg_1904[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        icmp_ln37_reg_2692 <= icmp_ln37_fu_1654_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_reg_2032 <= j_fu_1089_p2;
        zext_ln42_1_reg_2064[11 : 2] <= zext_ln42_1_fu_1118_p1[11 : 2];
        zext_ln42_reg_2039[11 : 2] <= zext_ln42_fu_1103_p1[11 : 2];
        zext_ln43_1_reg_2075[11 : 2] <= zext_ln43_1_fu_1132_p1[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_10_reg_2219 <= grp_fu_866_p2;
        mul_ln48_12_reg_2224 <= grp_fu_870_p2;
        mul_ln48_8_reg_2214 <= grp_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln48_14_reg_2361 <= grp_fu_862_p2;
        mul_ln48_16_reg_2371 <= grp_fu_866_p2;
        mul_ln48_18_reg_2376 <= grp_fu_870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln48_20_reg_2465 <= grp_fu_862_p2;
        mul_ln48_22_reg_2475 <= grp_fu_866_p2;
        mul_ln48_24_reg_2485 <= grp_fu_870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln48_25_reg_2746 <= grp_fu_870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln48_26_reg_2572 <= grp_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln48_reg_2582 <= grp_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_load_15_reg_2716 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_874 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_879 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_883 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_888 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_893 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_898 <= orig_2_q1;
        reg_902 <= orig_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_906 <= grp_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_915 <= orig_3_q0;
        reg_923 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_919 <= grp_fu_866_p2;
        reg_927 <= grp_fu_870_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_936 <= grp_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_940 <= grp_fu_866_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum0_10_reg_2110 <= orig_3_q1;
        sum0_11_reg_2117 <= orig_0_q0;
        sum0_12_reg_2124 <= orig_1_q0;
        sum0_13_reg_2131 <= orig_2_q0;
        sum0_7_reg_2096 <= orig_0_q1;
        sum0_9_reg_2103 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_3_reg_1966 <= orig_0_q0;
        sum0_5_reg_1973 <= orig_2_q0;
        sum0_6_reg_1980 <= orig_3_q0;
        sum0_8_reg_1992 <= orig_1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_1659_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1390)) begin
            ap_phi_mux_icmp_ln376_phi_fu_855_p4 = icmp_ln37_reg_2692;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln376_phi_fu_855_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln376_phi_fu_855_p4 = icmp_ln37_reg_2692;
        end
    end else begin
        ap_phi_mux_icmp_ln376_phi_fu_855_p4 = icmp_ln37_reg_2692;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_862_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_862_p0 = reg_893;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_862_p0 = sum0_13_reg_2131;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_862_p0 = sum0_10_reg_2110;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_862_p0 = sum0_7_reg_2096;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_862_p0 = reg_888;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_862_p0 = reg_874;
    end else begin
        grp_fu_862_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_862_p1 = add_ln48_52_reg_2701;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_862_p1 = add_ln48_28_reg_2642;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_862_p1 = add_ln48_4_reg_2577;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_862_p1 = add_ln48_16_reg_2500;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_862_p1 = C_load;
    end else begin
        grp_fu_862_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_866_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_866_p0 = sum0_11_reg_2117;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_866_p0 = sum0_8_reg_1992;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_866_p0 = sum0_5_reg_1973;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_866_p0 = reg_883;
    end else begin
        grp_fu_866_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_866_p1 = add_ln48_82_reg_2741;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_866_p1 = add_ln48_70_reg_2667;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_866_p1 = add_ln48_58_reg_2706;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_866_p1 = add_ln48_34_reg_2647;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_866_p1 = add_ln48_10_reg_2587;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_866_p1 = add_ln48_22_reg_2505;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_866_p1 = C_load;
    end else begin
        grp_fu_866_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_870_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_870_p0 = sum0_12_reg_2124;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_870_p0 = sum0_9_reg_2103;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_p0 = sum0_6_reg_1980;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_870_p0 = sum0_3_reg_1966;
    end else begin
        grp_fu_870_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_870_p1 = add_ln48_76_reg_2726;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_870_p1 = add_ln48_64_reg_2662;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_870_p1 = add_ln48_46_reg_2607;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_870_p1 = add_ln48_40_reg_2602;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_870_p1 = C_load;
    end else begin
        grp_fu_870_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_0_address0_local = zext_ln41_3_fu_1529_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address0_local = zext_ln41_2_fu_1419_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address0_local = zext_ln41_1_fu_1339_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln43_3_fu_1251_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln43_2_fu_1177_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln43_1_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln44_2_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln44_fu_1016_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_0_address1_local = zext_ln40_4_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address1_local = zext_ln40_3_fu_1407_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address1_local = zext_ln40_2_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln42_3_fu_1237_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln42_2_fu_1163_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln42_1_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln44_1_reg_1932;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = p_cast60_fu_999_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_1_address0_local = zext_ln41_3_reg_2561;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_1_address0_local = zext_ln41_2_reg_2443;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_1_address0_local = zext_ln41_1_reg_2334;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address0_local = zext_ln42_reg_2039;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address0_local = zext_ln40_1_fu_1289_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address0_local = zext_ln43_3_fu_1251_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address0_local = zext_ln43_2_fu_1177_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln43_1_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln44_2_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln44_1_fu_1034_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_1_address1_local = zext_ln40_4_reg_2550;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_1_address1_local = zext_ln40_3_reg_2431;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_1_address1_local = zext_ln40_2_reg_2322;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address1_local = zext_ln41_reg_2306;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address1_local = p_cast60_reg_1881;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln42_3_fu_1237_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln42_2_fu_1163_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln42_1_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln43_fu_1069_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln44_fu_1016_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_2_address0_local = zext_ln41_3_reg_2561;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_2_address0_local = zext_ln41_2_reg_2443;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_2_address0_local = zext_ln41_1_reg_2334;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_2_address0_local = zext_ln41_reg_2306;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_2_address0_local = zext_ln43_3_reg_2259;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address0_local = zext_ln43_2_reg_2173;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address0_local = zext_ln43_1_reg_2075;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln43_reg_1955;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln44_2_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln44_fu_1016_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_2_address1_local = zext_ln40_4_reg_2550;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_2_address1_local = zext_ln40_3_reg_2431;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_2_address1_local = zext_ln40_2_reg_2322;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_2_address1_local = zext_ln40_1_reg_2290;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_2_address1_local = zext_ln42_3_reg_2249;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address1_local = zext_ln42_2_reg_2162;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address1_local = zext_ln42_1_reg_2064;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = zext_ln42_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln44_1_reg_1932;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = p_cast60_fu_999_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln44_2_reg_2009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_3_address0_local = zext_ln41_2_reg_2443;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        orig_3_address0_local = zext_ln41_1_reg_2334;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_3_address0_local = zext_ln41_fu_1313_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_3_address0_local = zext_ln43_2_reg_2173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_3_address0_local = zext_ln43_1_reg_2075;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln43_reg_1955;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln44_fu_1016_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_3_address1_local = zext_ln40_3_reg_2431;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_3_address1_local = zext_ln40_2_reg_2322;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_3_address1_local = zext_ln40_1_fu_1289_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address1_local = zext_ln42_2_reg_2162;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address1_local = zext_ln42_1_reg_2064;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = zext_ln42_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln44_1_reg_1932;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = p_cast60_fu_999_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            sol_0_address0_local = zext_ln44_2_reg_2009_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_0_address0_local = zext_ln44_1_reg_1932_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_0_address0_local = zext_ln44_reg_1904;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            sol_0_d0_local = add_ln48_71_fu_1800_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_0_d0_local = add_ln48_47_fu_1755_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_0_d0_local = add_ln48_23_fu_1677_p2;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            sol_1_address0_local = zext_ln44_2_reg_2009_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_1_address0_local = zext_ln44_1_reg_1932_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_1_address0_local = zext_ln44_reg_1904_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_1_address0_local = p_cast60_reg_1881_pp0_iter1_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            sol_1_d0_local = add_ln48_77_fu_1806_p2;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_1_d0_local = add_ln48_53_fu_1761_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_1_d0_local = add_ln48_29_fu_1743_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_1_d0_local = add_ln48_5_fu_1714_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            sol_2_address0_local = zext_ln44_2_reg_2009_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_2_address0_local = zext_ln44_1_reg_1932_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_2_address0_local = zext_ln44_reg_1904_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_2_address0_local = p_cast60_reg_1881_pp0_iter1_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            sol_2_d0_local = add_ln48_83_fu_1811_p2;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_2_d0_local = add_ln48_59_fu_1767_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_2_d0_local = add_ln48_35_fu_1749_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_2_d0_local = add_ln48_11_fu_1720_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_3_address0_local = zext_ln44_1_reg_1932_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_3_address0_local = zext_ln44_reg_1904_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_3_address0_local = p_cast60_reg_1881;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_3_d0_local = add_ln48_65_fu_1773_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_3_d0_local = add_ln48_41_fu_1727_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sol_3_d0_local = add_ln48_17_fu_1670_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln36_fu_1648_p2 = (indvar_flatten2_fu_80 + 10'd1);
assign add_ln40_fu_1275_p2 = (zext_ln40_fu_1271_p1 + tmp_fu_1257_p3);
assign add_ln41_fu_1299_p2 = ($signed(sext_ln41_fu_1295_p1) + $signed(tmp_fu_1257_p3));
assign add_ln43_fu_1055_p2 = ($signed(select_ln11_reg_1859) + $signed(5'd31));
assign add_ln48_10_fu_1549_p2 = (add_ln48_9_reg_2194 + add_ln48_7_fu_1544_p2);
assign add_ln48_11_fu_1720_p2 = (reg_919 + reg_906);
assign add_ln48_12_fu_1388_p2 = ($signed(reg_874) + $signed(orig_3_q0));
assign add_ln48_13_fu_1480_p1 = reg_883;
assign add_ln48_13_fu_1480_p2 = (add_ln48_12_reg_2411 + add_ln48_13_fu_1480_p1);
assign add_ln48_14_fu_1195_p2 = ($signed(reg_915) + $signed(sum0_3_reg_1966));
assign add_ln48_15_fu_1200_p2 = (add_ln48_14_fu_1195_p2 + reg_910);
assign add_ln48_16_fu_1485_p2 = (add_ln48_15_reg_2199 + add_ln48_13_fu_1480_p2);
assign add_ln48_17_fu_1670_p2 = (reg_936 + reg_919);
assign add_ln48_18_fu_1394_p2 = ($signed(reg_883) + $signed(orig_0_q0));
assign add_ln48_19_fu_1490_p2 = (add_ln48_18_reg_2416 + reg_879);
assign add_ln48_1_fu_1534_p2 = (add_ln48_reg_2490 + reg_931);
assign add_ln48_20_fu_1206_p2 = ($signed(reg_923) + $signed(reg_888));
assign add_ln48_21_fu_1212_p2 = (add_ln48_20_fu_1206_p2 + reg_879);
assign add_ln48_22_fu_1495_p2 = (add_ln48_21_reg_2204 + add_ln48_19_fu_1490_p2);
assign add_ln48_23_fu_1677_p2 = (reg_940 + reg_927);
assign add_ln48_24_fu_1554_p2 = ($signed(sum0_3_reg_1966) + $signed(orig_1_q0));
assign add_ln48_25_fu_1598_p1 = reg_888;
assign add_ln48_25_fu_1598_p2 = (add_ln48_24_reg_2592 + add_ln48_25_fu_1598_p1);
assign add_ln48_26_fu_1218_p2 = ($signed(reg_931) + $signed(sum0_5_reg_1973));
assign add_ln48_27_fu_1223_p2 = (add_ln48_26_fu_1218_p2 + reg_893);
assign add_ln48_28_fu_1603_p2 = (add_ln48_27_reg_2209 + add_ln48_25_fu_1598_p2);
assign add_ln48_29_fu_1743_p2 = (reg_906 + mul_ln48_8_reg_2214);
assign add_ln48_2_fu_1143_p2 = ($signed(reg_874) + $signed(reg_879));
assign add_ln48_30_fu_1559_p2 = ($signed(reg_888) + $signed(orig_2_q0));
assign add_ln48_31_fu_1608_p1 = reg_874;
assign add_ln48_31_fu_1608_p2 = (add_ln48_30_reg_2597 + add_ln48_31_fu_1608_p1);
assign add_ln48_32_fu_1344_p2 = ($signed(reg_902) + $signed(sum0_6_reg_1980));
assign add_ln48_33_fu_1349_p2 = (add_ln48_32_fu_1344_p2 + reg_898);
assign add_ln48_34_fu_1613_p2 = (add_ln48_33_reg_2346 + add_ln48_31_fu_1608_p2);
assign add_ln48_35_fu_1749_p2 = (reg_919 + mul_ln48_10_reg_2219);
assign add_ln48_36_fu_1500_p2 = ($signed(sum0_5_reg_1973) + $signed(orig_3_q0));
assign add_ln48_37_fu_1565_p1 = reg_883;
assign add_ln48_37_fu_1565_p2 = (add_ln48_36_reg_2530 + add_ln48_37_fu_1565_p1);
assign add_ln48_38_fu_1355_p2 = ($signed(reg_915) + $signed(sum0_7_reg_2096));
assign add_ln48_39_fu_1360_p2 = (add_ln48_38_fu_1355_p2 + reg_910);
assign add_ln48_3_fu_1149_p2 = (add_ln48_2_fu_1143_p2 + reg_893);
assign add_ln48_40_fu_1570_p2 = (add_ln48_39_reg_2351 + add_ln48_37_fu_1565_p2);
assign add_ln48_41_fu_1727_p2 = (reg_927 + mul_ln48_12_reg_2224);
assign add_ln48_42_fu_1505_p2 = ($signed(sum0_6_reg_1980) + $signed(orig_0_q0));
assign add_ln48_43_fu_1575_p2 = (add_ln48_42_reg_2535 + reg_879);
assign add_ln48_44_fu_1366_p2 = ($signed(reg_923) + $signed(sum0_8_reg_1992));
assign add_ln48_45_fu_1371_p2 = (add_ln48_44_fu_1366_p2 + reg_879);
assign add_ln48_46_fu_1580_p2 = (add_ln48_45_reg_2356 + add_ln48_43_fu_1575_p2);
assign add_ln48_47_fu_1755_p2 = (reg_927 + mul_ln48_14_reg_2361);
assign add_ln48_48_fu_1618_p2 = ($signed(sum0_7_reg_2096) + $signed(orig_1_q0));
assign add_ln48_49_fu_1684_p1 = reg_888;
assign add_ln48_49_fu_1684_p2 = (add_ln48_48_reg_2652 + add_ln48_49_fu_1684_p1);
assign add_ln48_4_fu_1539_p2 = (add_ln48_3_reg_2137 + add_ln48_1_fu_1534_p2);
assign add_ln48_50_fu_1377_p2 = ($signed(reg_931) + $signed(sum0_9_reg_2103));
assign add_ln48_51_fu_1382_p2 = (add_ln48_50_fu_1377_p2 + reg_893);
assign add_ln48_52_fu_1689_p2 = (add_ln48_51_reg_2366 + add_ln48_49_fu_1684_p2);
assign add_ln48_53_fu_1761_p2 = (reg_906 + mul_ln48_16_reg_2371);
assign add_ln48_54_fu_1623_p2 = ($signed(sum0_8_reg_1992) + $signed(orig_2_q0));
assign add_ln48_55_fu_1694_p1 = reg_874;
assign add_ln48_55_fu_1694_p2 = (add_ln48_54_reg_2657 + add_ln48_55_fu_1694_p1);
assign add_ln48_56_fu_1424_p2 = ($signed(reg_902) + $signed(sum0_10_reg_2110));
assign add_ln48_57_fu_1429_p2 = (add_ln48_56_fu_1424_p2 + reg_898);
assign add_ln48_58_fu_1699_p2 = (add_ln48_57_reg_2455 + add_ln48_55_fu_1694_p2);
assign add_ln48_59_fu_1767_p2 = (reg_919 + mul_ln48_18_reg_2376);
assign add_ln48_5_fu_1714_p2 = (reg_936 + mul_ln48_reg_2582);
assign add_ln48_60_fu_1585_p2 = ($signed(sum0_9_reg_2103) + $signed(orig_3_q0));
assign add_ln48_61_fu_1628_p1 = reg_883;
assign add_ln48_61_fu_1628_p2 = (add_ln48_60_reg_2632 + add_ln48_61_fu_1628_p1);
assign add_ln48_62_fu_1435_p2 = ($signed(reg_915) + $signed(sum0_11_reg_2117));
assign add_ln48_63_fu_1440_p2 = (add_ln48_62_fu_1435_p2 + reg_910);
assign add_ln48_64_fu_1633_p2 = (add_ln48_63_reg_2460 + add_ln48_61_fu_1628_p2);
assign add_ln48_65_fu_1773_p2 = (reg_927 + mul_ln48_20_reg_2465);
assign add_ln48_66_fu_1590_p2 = ($signed(sum0_10_reg_2110) + $signed(orig_0_q0));
assign add_ln48_67_fu_1638_p2 = (add_ln48_66_reg_2637 + reg_879);
assign add_ln48_68_fu_1446_p2 = ($signed(reg_923) + $signed(sum0_12_reg_2124));
assign add_ln48_69_fu_1451_p2 = (add_ln48_68_fu_1446_p2 + reg_879);
assign add_ln48_6_fu_1474_p0 = reg_893;
assign add_ln48_6_fu_1474_p2 = ($signed(add_ln48_6_fu_1474_p0) + $signed(orig_2_q0));
assign add_ln48_70_fu_1643_p2 = (add_ln48_69_reg_2470 + add_ln48_67_fu_1638_p2);
assign add_ln48_71_fu_1800_p2 = (reg_940 + mul_ln48_22_reg_2475_pp0_iter1_reg);
assign add_ln48_72_fu_1704_p2 = ($signed(sum0_11_reg_2117) + $signed(orig_1_q0));
assign add_ln48_73_fu_1733_p1 = reg_888;
assign add_ln48_73_fu_1733_p2 = (add_ln48_72_reg_2711 + add_ln48_73_fu_1733_p1);
assign add_ln48_74_fu_1457_p2 = ($signed(reg_931) + $signed(sum0_13_reg_2131));
assign add_ln48_75_fu_1462_p2 = (add_ln48_74_fu_1457_p2 + reg_893);
assign add_ln48_76_fu_1738_p2 = (add_ln48_75_reg_2480 + add_ln48_73_fu_1733_p2);
assign add_ln48_77_fu_1806_p2 = (mul_ln48_25_reg_2746 + mul_ln48_24_reg_2485_pp0_iter1_reg);
assign add_ln48_78_fu_1709_p2 = ($signed(sum0_12_reg_2124) + $signed(orig_2_q0));
assign add_ln48_79_fu_1791_p2 = (add_ln48_78_reg_2721 + orig_2_load_15_reg_2716);
assign add_ln48_7_fu_1544_p1 = reg_874;
assign add_ln48_7_fu_1544_p2 = (add_ln48_6_reg_2495 + add_ln48_7_fu_1544_p1);
assign add_ln48_80_fu_1779_p2 = (reg_902 + reg_910);
assign add_ln48_81_fu_1785_p2 = (add_ln48_80_fu_1779_p2 + reg_898);
assign add_ln48_82_fu_1795_p2 = (add_ln48_81_reg_2736 + add_ln48_79_fu_1791_p2);
assign add_ln48_83_fu_1811_p2 = (reg_940 + mul_ln48_26_reg_2572_pp0_iter1_reg);
assign add_ln48_8_fu_1183_p2 = ($signed(reg_902) + $signed(reg_883));
assign add_ln48_9_fu_1189_p2 = (add_ln48_8_fu_1183_p2 + reg_898);
assign add_ln48_fu_1468_p2 = (reg_931 + orig_1_q0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
    ap_condition_1390 = ((icmp_ln36_reg_2697 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign i_fu_981_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_855_p4[0:0] == 1'b1) ? ap_sig_allocacmp_indvars_iv_next3885_load : ap_sig_allocacmp_i3_load);
assign icmp_ln36_fu_1659_p2 = ((indvar_flatten2_fu_80 == 10'd899) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1654_p2 = ((j_reg_2032 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next388_fu_1039_p2 = (i_fu_981_p3 + 5'd1);
assign j_fu_1089_p2 = (select_ln11_reg_1859 + 5'd1);
assign or_ln1_fu_1318_p3 = {{add_ln40_fu_1275_p2}, {2'd1}};
assign or_ln2_fu_1331_p3 = {{add_ln41_fu_1299_p2}, {2'd1}};
assign or_ln3_fu_1109_p4 = {{{i_reg_1867}, {j_fu_1089_p2}}, {2'd1}};
assign or_ln40_1_fu_1400_p3 = {{add_ln40_reg_2284}, {2'd2}};
assign or_ln40_2_fu_1510_p3 = {{add_ln40_reg_2284}, {2'd3}};
assign or_ln41_1_fu_1412_p3 = {{add_ln41_reg_2300}, {2'd2}};
assign or_ln41_2_fu_1522_p3 = {{add_ln41_reg_2300}, {2'd3}};
assign or_ln42_1_fu_1155_p4 = {{{i_reg_1867}, {j_reg_2032}}, {2'd2}};
assign or_ln42_2_fu_1229_p4 = {{{i_reg_1867}, {j_reg_2032}}, {2'd3}};
assign or_ln43_1_fu_1169_p4 = {{{i_reg_1867}, {add_ln43_reg_1948}}, {2'd2}};
assign or_ln43_2_fu_1243_p4 = {{{i_reg_1867}, {add_ln43_reg_1948}}, {2'd3}};
assign or_ln44_1_fu_1024_p4 = {{{i_fu_981_p3}, {select_ln11_fu_973_p3}}, {2'd2}};
assign or_ln44_2_fu_1074_p4 = {{{i_reg_1867}, {select_ln11_reg_1859}}, {2'd3}};
assign or_ln4_fu_1124_p4 = {{{i_reg_1867}, {add_ln43_reg_1948}}, {2'd1}};
assign or_ln_fu_1006_p4 = {{{i_fu_981_p3}, {select_ln11_fu_973_p3}}, {2'd1}};
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
assign p_cast60_fu_999_p1 = tmp_1_fu_989_p4;
assign select_ln11_fu_973_p3 = ((ap_phi_mux_icmp_ln376_phi_fu_855_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j4_load);
assign sext_ln41_fu_1295_p1 = zext_ln40_cast_fu_1264_p3;
assign shl_ln1_fu_1305_p3 = {{add_ln41_fu_1299_p2}, {2'd0}};
assign shl_ln2_fu_1094_p4 = {{{i_reg_1867}, {j_fu_1089_p2}}, {2'd0}};
assign shl_ln3_fu_1060_p4 = {{{i_reg_1867}, {add_ln43_fu_1055_p2}}, {2'd0}};
assign shl_ln_fu_1281_p3 = {{add_ln40_fu_1275_p2}, {2'd0}};
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
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
assign tmp_1_fu_989_p4 = {{{i_fu_981_p3}, {select_ln11_fu_973_p3}}, {2'd0}};
assign tmp_fu_1257_p3 = {{i_reg_1867}, {5'd0}};
assign zext_ln40_1_fu_1289_p1 = shl_ln_fu_1281_p3;
assign zext_ln40_2_fu_1326_p1 = or_ln1_fu_1318_p3;
assign zext_ln40_3_fu_1407_p1 = or_ln40_1_fu_1400_p3;
assign zext_ln40_4_fu_1517_p1 = or_ln40_2_fu_1510_p3;
assign zext_ln40_cast_fu_1264_p3 = {{1'd1}, {select_ln11_reg_1859}};
assign zext_ln40_fu_1271_p1 = $unsigned(zext_ln40_cast_fu_1264_p3);
assign zext_ln41_1_fu_1339_p1 = or_ln2_fu_1331_p3;
assign zext_ln41_2_fu_1419_p1 = or_ln41_1_fu_1412_p3;
assign zext_ln41_3_fu_1529_p1 = or_ln41_2_fu_1522_p3;
assign zext_ln41_fu_1313_p1 = shl_ln1_fu_1305_p3;
assign zext_ln42_1_fu_1118_p1 = or_ln3_fu_1109_p4;
assign zext_ln42_2_fu_1163_p1 = or_ln42_1_fu_1155_p4;
assign zext_ln42_3_fu_1237_p1 = or_ln42_2_fu_1229_p4;
assign zext_ln42_fu_1103_p1 = shl_ln2_fu_1094_p4;
assign zext_ln43_1_fu_1132_p1 = or_ln4_fu_1124_p4;
assign zext_ln43_2_fu_1177_p1 = or_ln43_1_fu_1169_p4;
assign zext_ln43_3_fu_1251_p1 = or_ln43_2_fu_1243_p4;
assign zext_ln43_fu_1069_p1 = shl_ln3_fu_1060_p4;
assign zext_ln44_1_fu_1034_p1 = or_ln44_1_fu_1024_p4;
assign zext_ln44_2_fu_1082_p1 = or_ln44_2_fu_1074_p4;
assign zext_ln44_fu_1016_p1 = or_ln_fu_1006_p4;
always @ (posedge ap_clk) begin
    p_cast60_reg_1881[1:0] <= 2'b00;
    p_cast60_reg_1881[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    p_cast60_reg_1881_pp0_iter1_reg[1:0] <= 2'b00;
    p_cast60_reg_1881_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1904[1:0] <= 2'b01;
    zext_ln44_reg_1904[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1904_pp0_iter1_reg[1:0] <= 2'b01;
    zext_ln44_reg_1904_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_1932[1:0] <= 2'b10;
    zext_ln44_1_reg_1932[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_1932_pp0_iter1_reg[1:0] <= 2'b10;
    zext_ln44_1_reg_1932_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln43_reg_1955[1:0] <= 2'b00;
    zext_ln43_reg_1955[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_2009[1:0] <= 2'b11;
    zext_ln44_2_reg_2009[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_2009_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln44_2_reg_2009_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_2039[1:0] <= 2'b00;
    zext_ln42_reg_2039[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln42_1_reg_2064[1:0] <= 2'b01;
    zext_ln42_1_reg_2064[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln43_1_reg_2075[1:0] <= 2'b01;
    zext_ln43_1_reg_2075[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln42_2_reg_2162[1:0] <= 2'b10;
    zext_ln42_2_reg_2162[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln43_2_reg_2173[1:0] <= 2'b10;
    zext_ln43_2_reg_2173[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln42_3_reg_2249[1:0] <= 2'b11;
    zext_ln42_3_reg_2249[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln43_3_reg_2259[1:0] <= 2'b11;
    zext_ln43_3_reg_2259[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln40_1_reg_2290[1:0] <= 2'b00;
    zext_ln40_1_reg_2290[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln41_reg_2306[1:0] <= 2'b00;
    zext_ln41_reg_2306[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln40_2_reg_2322[1:0] <= 2'b01;
    zext_ln40_2_reg_2322[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln41_1_reg_2334[1:0] <= 2'b01;
    zext_ln41_1_reg_2334[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln40_3_reg_2431[1:0] <= 2'b10;
    zext_ln40_3_reg_2431[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln41_2_reg_2443[1:0] <= 2'b10;
    zext_ln41_2_reg_2443[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln40_4_reg_2550[1:0] <= 2'b11;
    zext_ln40_4_reg_2550[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln41_3_reg_2561[1:0] <= 2'b11;
    zext_ln41_3_reg_2561[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 