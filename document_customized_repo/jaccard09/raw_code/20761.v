module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_11,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,grp_fu_400_p_din0,grp_fu_400_p_din1,grp_fu_400_p_opcode,grp_fu_400_p_dout0,grp_fu_400_p_ce,grp_fu_971_p_din0,grp_fu_971_p_din1,grp_fu_971_p_opcode,grp_fu_971_p_dout0,grp_fu_971_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] empty_11;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
input  [0:0] empty;
input  [6:0] conv3_udiv_cast;
input  [6:0] conv3_udiv;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [63:0] grp_fu_400_p_din0;
output  [63:0] grp_fu_400_p_din1;
output  [1:0] grp_fu_400_p_opcode;
input  [63:0] grp_fu_400_p_dout0;
output   grp_fu_400_p_ce;
output  [63:0] grp_fu_971_p_din0;
output  [63:0] grp_fu_971_p_din1;
output  [1:0] grp_fu_971_p_opcode;
input  [63:0] grp_fu_971_p_dout0;
output   grp_fu_971_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_158_reg_2701;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1292;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_1278_p3;
reg   [63:0] reg_1296;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
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
wire    ap_block_pp0_stage15_11001;
wire   [63:0] grp_fu_1285_p3;
reg   [63:0] reg_1300;
reg   [63:0] reg_1304;
reg   [63:0] reg_1308;
reg   [63:0] reg_1313;
reg   [63:0] reg_1318;
reg   [63:0] reg_1323;
reg   [63:0] reg_1328;
reg   [63:0] reg_1333;
reg   [63:0] reg_1338;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1343;
wire   [10:0] conv3_udiv_cast_cast_fu_1348_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_2654;
wire   [7:0] p_cast_fu_1352_p1;
reg   [7:0] p_cast_reg_2681;
reg   [6:0] s_1_reg_2688;
wire   [63:0] zext_ln9_fu_1382_p1;
reg   [63:0] zext_ln9_reg_2705;
wire   [2:0] tmp_1_fu_1388_p4;
reg   [2:0] tmp_1_reg_2716;
wire   [3:0] tmp_14_fu_1432_p4;
reg   [3:0] tmp_14_reg_2746;
wire   [63:0] zext_ln14_32_fu_1450_p1;
reg   [63:0] zext_ln14_32_reg_2752;
wire   [0:0] tmp_160_fu_1492_p3;
reg   [0:0] tmp_160_reg_2793;
wire   [63:0] zext_ln14_33_fu_1508_p1;
reg   [63:0] zext_ln14_33_reg_2804;
wire   [63:0] zext_ln14_34_fu_1521_p1;
reg   [63:0] zext_ln14_34_reg_2810;
wire   [63:0] bitcast_ln14_fu_1527_p1;
wire   [63:0] bitcast_ln14_1_fu_1532_p1;
wire   [63:0] bitcast_ln14_2_fu_1537_p1;
wire   [1:0] tmp_70_fu_1577_p4;
reg   [1:0] tmp_70_reg_2871;
wire   [1:0] tmp_74_fu_1586_p4;
reg   [1:0] tmp_74_reg_2885;
wire   [63:0] zext_ln14_35_fu_1605_p1;
reg   [63:0] zext_ln14_35_reg_2892;
wire   [0:0] tmp_161_fu_1611_p3;
reg   [0:0] tmp_161_reg_2898;
wire   [63:0] zext_ln14_36_fu_1630_p1;
reg   [63:0] zext_ln14_36_reg_2907;
wire   [63:0] bitcast_ln14_32_fu_1636_p1;
wire   [63:0] bitcast_ln14_3_fu_1641_p1;
wire   [63:0] bitcast_ln14_4_fu_1646_p1;
wire   [63:0] zext_ln14_37_fu_1695_p1;
reg   [63:0] zext_ln14_37_reg_2968;
wire   [63:0] zext_ln14_38_fu_1708_p1;
reg   [63:0] zext_ln14_38_reg_2974;
wire   [63:0] bitcast_ln14_33_fu_1714_p1;
wire   [63:0] bitcast_ln14_34_fu_1719_p1;
wire   [63:0] bitcast_ln14_5_fu_1724_p1;
wire   [63:0] bitcast_ln14_6_fu_1729_p1;
wire   [0:0] tmp_162_fu_1769_p3;
reg   [0:0] tmp_162_reg_3040;
wire   [2:0] tmp_s_fu_1776_p4;
reg   [2:0] tmp_s_reg_3066;
wire   [63:0] zext_ln14_39_fu_1795_p1;
reg   [63:0] zext_ln14_39_reg_3071;
wire   [1:0] tmp_156_fu_1801_p4;
reg   [1:0] tmp_156_reg_3077;
wire   [63:0] zext_ln14_40_fu_1822_p1;
reg   [63:0] zext_ln14_40_reg_3083;
wire   [63:0] bitcast_ln14_35_fu_1828_p1;
wire   [63:0] bitcast_ln14_36_fu_1833_p1;
reg   [63:0] init_0_load_7_reg_3099;
reg   [63:0] init_1_load_7_reg_3104;
wire   [63:0] bitcast_ln14_7_fu_1838_p1;
wire   [63:0] bitcast_ln14_8_fu_1843_p1;
wire   [0:0] tmp_163_fu_1890_p3;
reg   [0:0] tmp_163_reg_3159;
wire   [63:0] zext_ln14_41_fu_1909_p1;
reg   [63:0] zext_ln14_41_reg_3168;
wire   [63:0] zext_ln14_42_fu_1926_p1;
reg   [63:0] zext_ln14_42_reg_3174;
wire   [63:0] bitcast_ln14_37_fu_1932_p1;
wire   [63:0] bitcast_ln14_38_fu_1937_p1;
reg   [63:0] init_0_load_9_reg_3190;
reg   [63:0] init_1_load_9_reg_3195;
wire   [63:0] bitcast_ln14_9_fu_1942_p1;
wire   [63:0] bitcast_ln14_10_fu_1947_p1;
wire   [63:0] zext_ln14_43_fu_1995_p1;
reg   [63:0] zext_ln14_43_reg_3250;
wire   [63:0] zext_ln14_44_fu_2011_p1;
reg   [63:0] zext_ln14_44_reg_3256;
reg   [63:0] zext_ln14_44_reg_3256_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_39_fu_2017_p1;
wire   [63:0] bitcast_ln14_40_fu_2022_p1;
reg   [63:0] init_0_load_11_reg_3272;
reg   [63:0] init_1_load_11_reg_3277;
wire   [63:0] bitcast_ln14_11_fu_2027_p1;
wire   [63:0] bitcast_ln14_12_fu_2032_p1;
wire   [63:0] zext_ln14_45_fu_2081_p1;
reg   [63:0] zext_ln14_45_reg_3332;
reg   [63:0] zext_ln14_45_reg_3332_pp0_iter1_reg;
wire   [63:0] zext_ln14_46_fu_2094_p1;
reg   [63:0] zext_ln14_46_reg_3338;
reg   [63:0] zext_ln14_46_reg_3338_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_41_fu_2100_p1;
wire   [63:0] bitcast_ln14_42_fu_2105_p1;
reg   [63:0] init_0_load_13_reg_3354;
reg   [63:0] init_1_load_13_reg_3359;
wire   [63:0] bitcast_ln14_13_fu_2110_p1;
wire   [63:0] bitcast_ln14_14_fu_2115_p1;
wire   [63:0] bitcast_ln14_43_fu_2156_p1;
wire   [63:0] bitcast_ln14_44_fu_2161_p1;
reg   [63:0] init_0_load_15_reg_3424;
reg   [63:0] init_1_load_15_reg_3429;
wire   [63:0] bitcast_ln14_15_fu_2166_p1;
wire   [63:0] bitcast_ln14_16_fu_2171_p1;
wire   [63:0] bitcast_ln14_45_fu_2218_p1;
wire   [63:0] bitcast_ln14_46_fu_2222_p1;
wire   [63:0] bitcast_ln14_17_fu_2226_p1;
wire   [63:0] bitcast_ln14_18_fu_2231_p1;
wire   [63:0] bitcast_ln14_47_fu_2277_p1;
wire   [63:0] bitcast_ln14_48_fu_2282_p1;
wire   [63:0] bitcast_ln14_19_fu_2287_p1;
wire   [63:0] bitcast_ln14_20_fu_2292_p1;
wire   [63:0] bitcast_ln14_49_fu_2339_p1;
wire   [63:0] bitcast_ln14_50_fu_2343_p1;
wire   [63:0] bitcast_ln14_21_fu_2347_p1;
wire   [63:0] bitcast_ln14_22_fu_2352_p1;
wire   [63:0] bitcast_ln14_51_fu_2392_p1;
wire   [63:0] bitcast_ln14_52_fu_2397_p1;
wire   [63:0] bitcast_ln14_23_fu_2402_p1;
wire   [63:0] bitcast_ln14_24_fu_2407_p1;
wire   [63:0] bitcast_ln14_53_fu_2454_p1;
wire   [63:0] bitcast_ln14_54_fu_2458_p1;
wire   [63:0] bitcast_ln14_25_fu_2462_p1;
wire   [63:0] bitcast_ln14_26_fu_2467_p1;
wire   [63:0] bitcast_ln14_55_fu_2507_p1;
wire   [63:0] bitcast_ln14_56_fu_2512_p1;
wire   [63:0] bitcast_ln14_27_fu_2517_p1;
wire   [63:0] bitcast_ln14_28_fu_2522_p1;
wire   [63:0] bitcast_ln14_57_fu_2545_p1;
wire   [63:0] bitcast_ln14_58_fu_2549_p1;
wire   [63:0] bitcast_ln14_29_fu_2581_p1;
wire   [63:0] bitcast_ln14_30_fu_2586_p1;
wire   [63:0] select_ln14_30_fu_2591_p3;
reg   [63:0] select_ln14_30_reg_3724;
wire   [63:0] bitcast_ln14_59_fu_2598_p1;
wire   [63:0] bitcast_ln14_60_fu_2603_p1;
wire   [63:0] select_ln14_31_fu_2608_p3;
reg   [63:0] select_ln14_31_reg_3739;
wire   [63:0] bitcast_ln14_31_fu_2615_p1;
wire   [63:0] bitcast_ln14_61_fu_2619_p1;
wire   [63:0] bitcast_ln14_62_fu_2623_p1;
wire   [63:0] bitcast_ln14_63_fu_2627_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1406_p1;
wire   [63:0] zext_ln14_1_fu_1426_p1;
wire   [63:0] zext_ln14_2_fu_1468_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1486_p1;
wire   [63:0] zext_ln14_4_fu_1550_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1571_p1;
wire   [63:0] zext_ln14_6_fu_1663_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1681_p1;
wire   [63:0] zext_ln14_8_fu_1742_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1763_p1;
wire   [63:0] zext_ln14_10_fu_1863_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1884_p1;
wire   [63:0] zext_ln14_12_fu_1960_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_1981_p1;
wire   [63:0] zext_ln14_14_fu_2049_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2067_p1;
wire   [63:0] zext_ln14_16_fu_2129_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_17_fu_2150_p1;
wire   [63:0] zext_ln14_18_fu_2191_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_19_fu_2212_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_20_fu_2247_p1;
wire   [63:0] zext_ln14_21_fu_2271_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_22_fu_2312_p1;
wire   [63:0] zext_ln14_23_fu_2333_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_24_fu_2365_p1;
wire   [63:0] zext_ln14_25_fu_2386_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_26_fu_2427_p1;
wire   [63:0] zext_ln14_27_fu_2448_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_28_fu_2480_p1;
wire   [63:0] zext_ln14_29_fu_2501_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_30_fu_2539_p1;
wire   [63:0] zext_ln14_31_fu_2565_p1;
reg   [6:0] s_fu_172;
wire   [6:0] add_ln13_fu_2571_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg   [4:0] init_0_address1_local;
reg    init_0_ce0_local;
reg   [4:0] init_0_address0_local;
reg    emission_0_ce1_local;
reg   [10:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [10:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [10:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [10:0] emission_1_address0_local;
reg    init_1_ce1_local;
reg   [4:0] init_1_address1_local;
reg    init_1_ce0_local;
reg   [4:0] init_1_address0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg   [63:0] grp_fu_1270_p0;
reg   [63:0] grp_fu_1270_p1;
reg   [63:0] grp_fu_1274_p0;
reg   [63:0] grp_fu_1274_p1;
wire   [4:0] lshr_ln9_fu_1372_p4;
wire   [10:0] or_ln_fu_1398_p3;
wire   [10:0] or_ln1_fu_1412_p3;
wire   [10:0] add_ln14_fu_1420_p2;
wire   [4:0] or_ln14_1_fu_1442_p3;
wire   [10:0] or_ln14_2_fu_1456_p3;
wire   [10:0] add_ln14_1_fu_1463_p2;
wire   [10:0] or_ln14_3_fu_1474_p3;
wire   [10:0] add_ln14_2_fu_1481_p2;
wire   [4:0] or_ln14_4_fu_1499_p4;
wire   [4:0] or_ln14_7_fu_1514_p3;
wire   [10:0] or_ln14_5_fu_1542_p4;
wire   [10:0] or_ln14_6_fu_1556_p5;
wire   [10:0] add_ln14_3_fu_1566_p2;
wire   [4:0] or_ln14_s_fu_1595_p4;
wire   [4:0] or_ln14_12_fu_1618_p5;
wire   [10:0] or_ln14_8_fu_1651_p3;
wire   [10:0] add_ln14_4_fu_1658_p2;
wire   [10:0] or_ln14_9_fu_1669_p3;
wire   [10:0] add_ln14_5_fu_1676_p2;
wire   [4:0] or_ln14_15_fu_1687_p4;
wire   [4:0] or_ln14_18_fu_1701_p3;
wire   [10:0] or_ln14_10_fu_1734_p4;
wire   [10:0] or_ln14_11_fu_1748_p5;
wire   [10:0] add_ln14_6_fu_1758_p2;
wire   [4:0] or_ln14_21_fu_1785_p4;
wire   [4:0] or_ln14_24_fu_1810_p5;
wire   [10:0] or_ln14_13_fu_1848_p5;
wire   [10:0] add_ln14_7_fu_1858_p2;
wire   [10:0] or_ln14_14_fu_1869_p5;
wire   [10:0] add_ln14_8_fu_1879_p2;
wire   [4:0] or_ln14_27_fu_1897_p6;
wire   [4:0] or_ln14_30_fu_1915_p5;
wire   [10:0] or_ln14_16_fu_1952_p4;
wire   [10:0] or_ln14_17_fu_1966_p5;
wire   [10:0] add_ln14_9_fu_1976_p2;
wire   [4:0] or_ln14_33_fu_1987_p4;
wire   [4:0] or_ln14_36_fu_2001_p5;
wire   [10:0] or_ln14_19_fu_2037_p3;
wire   [10:0] add_ln14_10_fu_2044_p2;
wire   [10:0] or_ln14_20_fu_2055_p3;
wire   [10:0] add_ln14_11_fu_2062_p2;
wire   [4:0] or_ln14_39_fu_2073_p4;
wire   [4:0] or_ln14_42_fu_2087_p3;
wire   [10:0] or_ln14_22_fu_2120_p5;
wire   [10:0] or_ln14_23_fu_2135_p5;
wire   [10:0] add_ln14_12_fu_2145_p2;
wire   [10:0] or_ln14_25_fu_2176_p5;
wire   [10:0] add_ln14_13_fu_2186_p2;
wire   [10:0] or_ln14_26_fu_2197_p5;
wire   [10:0] add_ln14_14_fu_2207_p2;
wire   [10:0] or_ln14_28_fu_2236_p6;
wire   [10:0] or_ln14_29_fu_2253_p7;
wire   [10:0] add_ln14_15_fu_2266_p2;
wire   [10:0] or_ln14_31_fu_2297_p5;
wire   [10:0] add_ln14_16_fu_2307_p2;
wire   [10:0] or_ln14_32_fu_2318_p5;
wire   [10:0] add_ln14_17_fu_2328_p2;
wire   [10:0] or_ln14_34_fu_2357_p4;
wire   [10:0] or_ln14_35_fu_2371_p5;
wire   [10:0] add_ln14_18_fu_2381_p2;
wire   [10:0] or_ln14_37_fu_2412_p5;
wire   [10:0] add_ln14_19_fu_2422_p2;
wire   [10:0] or_ln14_38_fu_2433_p5;
wire   [10:0] add_ln14_20_fu_2443_p2;
wire   [10:0] or_ln14_40_fu_2472_p4;
wire   [10:0] or_ln14_41_fu_2486_p5;
wire   [10:0] add_ln14_21_fu_2496_p2;
wire   [10:0] or_ln14_43_fu_2527_p3;
wire   [10:0] add_ln14_22_fu_2534_p2;
wire   [10:0] or_ln14_44_fu_2553_p3;
wire   [10:0] add_ln14_23_fu_2560_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_172 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1308 <= init_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1308 <= init_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1313 <= init_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1313 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1318 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1318 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1323 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1323 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1328 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1328 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1333 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1333 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_172 <= 7'd0;
    end else if (((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_172 <= add_ln13_fu_2571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_2654[6 : 0] <= conv3_udiv_cast_cast_fu_1348_p1[6 : 0];
        p_cast_reg_2681[6 : 0] <= p_cast_fu_1352_p1[6 : 0];
        s_1_reg_2688 <= ap_sig_allocacmp_s_1;
        select_ln14_30_reg_3724 <= select_ln14_30_fu_2591_p3;
        select_ln14_31_reg_3739 <= select_ln14_31_fu_2608_p3;
        tmp_14_reg_2746 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_158_reg_2701 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_1_reg_2716 <= {{ap_sig_allocacmp_s_1[5:3]}};
        zext_ln14_32_reg_2752[4 : 1] <= zext_ln14_32_fu_1450_p1[4 : 1];
        zext_ln9_reg_2705[4 : 0] <= zext_ln9_fu_1382_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        init_0_load_11_reg_3272 <= init_0_q0;
        init_1_load_11_reg_3277 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        init_0_load_13_reg_3354 <= init_0_q0;
        init_1_load_13_reg_3359 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        init_0_load_15_reg_3424 <= init_0_q0;
        init_1_load_15_reg_3429 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_3099 <= init_0_q0;
        init_1_load_7_reg_3104 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        init_0_load_9_reg_3190 <= init_0_q0;
        init_1_load_9_reg_3195 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1292 <= init_0_q1;
        reg_1304 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1296 <= grp_fu_1278_p3;
        reg_1300 <= grp_fu_1285_p3;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1338 <= grp_fu_400_p_dout0;
        reg_1343 <= grp_fu_971_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_156_reg_3077 <= {{s_1_reg_2688[3:2]}};
        tmp_162_reg_3040 <= s_1_reg_2688[32'd5];
        tmp_s_reg_3066 <= {{s_1_reg_2688[3:1]}};
        zext_ln14_39_reg_3071[2 : 0] <= zext_ln14_39_fu_1795_p1[2 : 0];
zext_ln14_39_reg_3071[4] <= zext_ln14_39_fu_1795_p1[4];
        zext_ln14_40_reg_3083[2 : 1] <= zext_ln14_40_fu_1822_p1[2 : 1];
zext_ln14_40_reg_3083[4] <= zext_ln14_40_fu_1822_p1[4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_160_reg_2793 <= s_1_reg_2688[32'd1];
        zext_ln14_33_reg_2804[0] <= zext_ln14_33_fu_1508_p1[0];
zext_ln14_33_reg_2804[4 : 2] <= zext_ln14_33_fu_1508_p1[4 : 2];
        zext_ln14_34_reg_2810[4 : 2] <= zext_ln14_34_fu_1521_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_161_reg_2898 <= s_1_reg_2688[32'd2];
        tmp_70_reg_2871 <= {{s_1_reg_2688[5:4]}};
        tmp_74_reg_2885 <= {{s_1_reg_2688[2:1]}};
        zext_ln14_35_reg_2892[1 : 0] <= zext_ln14_35_fu_1605_p1[1 : 0];
zext_ln14_35_reg_2892[4 : 3] <= zext_ln14_35_fu_1605_p1[4 : 3];
        zext_ln14_36_reg_2907[1] <= zext_ln14_36_fu_1630_p1[1];
zext_ln14_36_reg_2907[4 : 3] <= zext_ln14_36_fu_1630_p1[4 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_163_reg_3159 <= s_1_reg_2688[32'd3];
        zext_ln14_41_reg_3168[0] <= zext_ln14_41_fu_1909_p1[0];
zext_ln14_41_reg_3168[2] <= zext_ln14_41_fu_1909_p1[2];
zext_ln14_41_reg_3168[4] <= zext_ln14_41_fu_1909_p1[4];
        zext_ln14_42_reg_3174[2] <= zext_ln14_42_fu_1926_p1[2];
zext_ln14_42_reg_3174[4] <= zext_ln14_42_fu_1926_p1[4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln14_37_reg_2968[0] <= zext_ln14_37_fu_1695_p1[0];
zext_ln14_37_reg_2968[4 : 3] <= zext_ln14_37_fu_1695_p1[4 : 3];
        zext_ln14_38_reg_2974[4 : 3] <= zext_ln14_38_fu_1708_p1[4 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln14_43_reg_3250[1 : 0] <= zext_ln14_43_fu_1995_p1[1 : 0];
zext_ln14_43_reg_3250[4] <= zext_ln14_43_fu_1995_p1[4];
        zext_ln14_44_reg_3256[1] <= zext_ln14_44_fu_2011_p1[1];
zext_ln14_44_reg_3256[4] <= zext_ln14_44_fu_2011_p1[4];
        zext_ln14_44_reg_3256_pp0_iter1_reg[1] <= zext_ln14_44_reg_3256[1];
zext_ln14_44_reg_3256_pp0_iter1_reg[4] <= zext_ln14_44_reg_3256[4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln14_45_reg_3332[0] <= zext_ln14_45_fu_2081_p1[0];
zext_ln14_45_reg_3332[4] <= zext_ln14_45_fu_2081_p1[4];
        zext_ln14_45_reg_3332_pp0_iter1_reg[0] <= zext_ln14_45_reg_3332[0];
zext_ln14_45_reg_3332_pp0_iter1_reg[4] <= zext_ln14_45_reg_3332[4];
        zext_ln14_46_reg_3338[4] <= zext_ln14_46_fu_2094_p1[4];
        zext_ln14_46_reg_3338_pp0_iter1_reg[4] <= zext_ln14_46_reg_3338[4];
    end
end
always @ (*) begin
    if (((tmp_158_reg_2701 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_172;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_0_address0_local = zext_ln14_31_fu_2565_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address0_local = zext_ln14_29_fu_2501_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address0_local = zext_ln14_27_fu_2448_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address0_local = zext_ln14_25_fu_2386_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address0_local = zext_ln14_23_fu_2333_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address0_local = zext_ln14_21_fu_2271_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address0_local = zext_ln14_19_fu_2212_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address0_local = zext_ln14_17_fu_2150_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2067_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_1981_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1884_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1681_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1571_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1426_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_0_address1_local = zext_ln14_30_fu_2539_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address1_local = zext_ln14_28_fu_2480_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address1_local = zext_ln14_26_fu_2427_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address1_local = zext_ln14_24_fu_2365_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address1_local = zext_ln14_22_fu_2312_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address1_local = zext_ln14_20_fu_2247_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address1_local = zext_ln14_18_fu_2191_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address1_local = zext_ln14_16_fu_2129_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2049_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1960_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1863_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1742_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1663_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1550_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1406_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_1_address0_local = zext_ln14_31_fu_2565_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address0_local = zext_ln14_29_fu_2501_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address0_local = zext_ln14_27_fu_2448_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address0_local = zext_ln14_25_fu_2386_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address0_local = zext_ln14_23_fu_2333_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address0_local = zext_ln14_21_fu_2271_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address0_local = zext_ln14_19_fu_2212_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address0_local = zext_ln14_17_fu_2150_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2067_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_1981_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1884_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1763_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1681_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1571_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1426_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_1_address1_local = zext_ln14_30_fu_2539_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address1_local = zext_ln14_28_fu_2480_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address1_local = zext_ln14_26_fu_2427_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address1_local = zext_ln14_24_fu_2365_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address1_local = zext_ln14_22_fu_2312_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address1_local = zext_ln14_20_fu_2247_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address1_local = zext_ln14_18_fu_2191_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address1_local = zext_ln14_16_fu_2129_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2049_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1960_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1863_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1742_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1663_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1550_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1406_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1270_p0 = bitcast_ln14_61_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1270_p0 = bitcast_ln14_59_fu_2598_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1270_p0 = bitcast_ln14_57_fu_2545_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1270_p0 = bitcast_ln14_55_fu_2507_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1270_p0 = bitcast_ln14_53_fu_2454_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1270_p0 = bitcast_ln14_51_fu_2392_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1270_p0 = bitcast_ln14_49_fu_2339_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1270_p0 = bitcast_ln14_47_fu_2277_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1270_p0 = bitcast_ln14_45_fu_2218_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1270_p0 = bitcast_ln14_43_fu_2156_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1270_p0 = bitcast_ln14_41_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1270_p0 = bitcast_ln14_39_fu_2017_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1270_p0 = bitcast_ln14_37_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1270_p0 = bitcast_ln14_35_fu_1828_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1270_p0 = bitcast_ln14_33_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1270_p0 = bitcast_ln14_fu_1527_p1;
    end else begin
        grp_fu_1270_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1270_p1 = bitcast_ln14_31_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1270_p1 = bitcast_ln14_29_fu_2581_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1270_p1 = bitcast_ln14_27_fu_2517_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1270_p1 = bitcast_ln14_25_fu_2462_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1270_p1 = bitcast_ln14_23_fu_2402_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1270_p1 = bitcast_ln14_21_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1270_p1 = bitcast_ln14_19_fu_2287_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1270_p1 = bitcast_ln14_17_fu_2226_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1270_p1 = bitcast_ln14_15_fu_2166_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1270_p1 = bitcast_ln14_13_fu_2110_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1270_p1 = bitcast_ln14_11_fu_2027_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1270_p1 = bitcast_ln14_9_fu_1942_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1270_p1 = bitcast_ln14_7_fu_1838_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1270_p1 = bitcast_ln14_5_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1270_p1 = bitcast_ln14_3_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1270_p1 = bitcast_ln14_1_fu_1532_p1;
    end else begin
        grp_fu_1270_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1274_p0 = bitcast_ln14_62_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1274_p0 = bitcast_ln14_60_fu_2603_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1274_p0 = bitcast_ln14_58_fu_2549_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1274_p0 = bitcast_ln14_56_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1274_p0 = bitcast_ln14_54_fu_2458_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1274_p0 = bitcast_ln14_52_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1274_p0 = bitcast_ln14_50_fu_2343_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1274_p0 = bitcast_ln14_48_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1274_p0 = bitcast_ln14_46_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1274_p0 = bitcast_ln14_44_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1274_p0 = bitcast_ln14_42_fu_2105_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1274_p0 = bitcast_ln14_40_fu_2022_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1274_p0 = bitcast_ln14_38_fu_1937_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1274_p0 = bitcast_ln14_36_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1274_p0 = bitcast_ln14_34_fu_1719_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1274_p0 = bitcast_ln14_32_fu_1636_p1;
    end else begin
        grp_fu_1274_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1274_p1 = bitcast_ln14_63_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1274_p1 = bitcast_ln14_30_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1274_p1 = bitcast_ln14_28_fu_2522_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1274_p1 = bitcast_ln14_26_fu_2467_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1274_p1 = bitcast_ln14_24_fu_2407_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1274_p1 = bitcast_ln14_22_fu_2352_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1274_p1 = bitcast_ln14_20_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1274_p1 = bitcast_ln14_18_fu_2231_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1274_p1 = bitcast_ln14_16_fu_2171_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1274_p1 = bitcast_ln14_14_fu_2115_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1274_p1 = bitcast_ln14_12_fu_2032_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1274_p1 = bitcast_ln14_10_fu_1947_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1274_p1 = bitcast_ln14_8_fu_1843_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1274_p1 = bitcast_ln14_6_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1274_p1 = bitcast_ln14_4_fu_1646_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1274_p1 = bitcast_ln14_2_fu_1537_p1;
    end else begin
        grp_fu_1274_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_0_address0_local = zext_ln14_46_fu_2094_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address0_local = zext_ln14_44_fu_2011_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address0_local = zext_ln14_42_fu_1926_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address0_local = zext_ln14_40_fu_1822_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_38_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_36_fu_1630_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_34_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_32_fu_1450_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_0_address1_local = zext_ln14_45_fu_2081_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address1_local = zext_ln14_43_fu_1995_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address1_local = zext_ln14_41_fu_1909_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address1_local = zext_ln14_39_fu_1795_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address1_local = zext_ln14_37_fu_1695_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_35_fu_1605_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_33_fu_1508_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1382_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_1_address0_local = zext_ln14_46_fu_2094_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address0_local = zext_ln14_44_fu_2011_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address0_local = zext_ln14_42_fu_1926_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address0_local = zext_ln14_40_fu_1822_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address0_local = zext_ln14_38_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_36_fu_1630_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_34_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_32_fu_1450_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_1_address1_local = zext_ln14_45_fu_2081_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address1_local = zext_ln14_43_fu_1995_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address1_local = zext_ln14_41_fu_1909_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address1_local = zext_ln14_39_fu_1795_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address1_local = zext_ln14_37_fu_1695_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_35_fu_1605_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_33_fu_1508_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1382_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_1_address0_local = zext_ln14_46_reg_3338_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_1_address0_local = zext_ln14_45_reg_3332_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_1_address0_local = zext_ln14_44_reg_3256_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_43_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_1_address0_local = zext_ln14_42_reg_3174;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_41_reg_3168;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_address0_local = zext_ln14_40_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln14_39_reg_3071;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_address0_local = zext_ln14_38_reg_2974;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_37_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_1_address0_local = zext_ln14_36_reg_2907;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_1_address0_local = zext_ln14_35_reg_2892;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_1_address0_local = zext_ln14_34_reg_2810;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_1_address0_local = zext_ln14_33_reg_2804;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_1_address0_local = zext_ln14_32_reg_2752;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_1_address0_local = zext_ln9_reg_2705;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_address0_local = zext_ln14_46_reg_3338_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_address0_local = zext_ln14_45_reg_3332_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_44_reg_3256_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_43_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_42_reg_3174;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_41_reg_3168;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_40_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_39_reg_3071;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_38_reg_2974;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_37_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_address0_local = zext_ln14_36_reg_2907;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address0_local = zext_ln14_35_reg_2892;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_address0_local = zext_ln14_34_reg_2810;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_address0_local = zext_ln14_33_reg_2804;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_address0_local = zext_ln14_32_reg_2752;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address0_local = zext_ln9_reg_2705;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_158_reg_2701 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_2571_p2 = (s_1_reg_2688 + 7'd32);
assign add_ln14_10_fu_2044_p2 = (or_ln14_19_fu_2037_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_11_fu_2062_p2 = (or_ln14_20_fu_2055_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_12_fu_2145_p2 = (or_ln14_23_fu_2135_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_13_fu_2186_p2 = (or_ln14_25_fu_2176_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_14_fu_2207_p2 = (or_ln14_26_fu_2197_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_15_fu_2266_p2 = (or_ln14_29_fu_2253_p7 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_16_fu_2307_p2 = (or_ln14_31_fu_2297_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_17_fu_2328_p2 = (or_ln14_32_fu_2318_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_18_fu_2381_p2 = (or_ln14_35_fu_2371_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_19_fu_2422_p2 = (or_ln14_37_fu_2412_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_1_fu_1463_p2 = (or_ln14_2_fu_1456_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_20_fu_2443_p2 = (or_ln14_38_fu_2433_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_21_fu_2496_p2 = (or_ln14_41_fu_2486_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_22_fu_2534_p2 = (or_ln14_43_fu_2527_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_23_fu_2560_p2 = (or_ln14_44_fu_2553_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_2_fu_1481_p2 = (or_ln14_3_fu_1474_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_3_fu_1566_p2 = (or_ln14_6_fu_1556_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_4_fu_1658_p2 = (or_ln14_8_fu_1651_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_5_fu_1676_p2 = (or_ln14_9_fu_1669_p3 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_6_fu_1758_p2 = (or_ln14_11_fu_1748_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_7_fu_1858_p2 = (or_ln14_13_fu_1848_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_8_fu_1879_p2 = (or_ln14_14_fu_1869_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_9_fu_1976_p2 = (or_ln14_17_fu_1966_p5 + conv3_udiv_cast_cast_reg_2654);
assign add_ln14_fu_1420_p2 = (or_ln1_fu_1412_p3 + conv3_udiv_cast_cast_fu_1348_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_1947_p1 = reg_1300;
assign bitcast_ln14_11_fu_2027_p1 = reg_1296;
assign bitcast_ln14_12_fu_2032_p1 = reg_1300;
assign bitcast_ln14_13_fu_2110_p1 = reg_1296;
assign bitcast_ln14_14_fu_2115_p1 = reg_1300;
assign bitcast_ln14_15_fu_2166_p1 = reg_1296;
assign bitcast_ln14_16_fu_2171_p1 = reg_1300;
assign bitcast_ln14_17_fu_2226_p1 = reg_1296;
assign bitcast_ln14_18_fu_2231_p1 = reg_1300;
assign bitcast_ln14_19_fu_2287_p1 = reg_1296;
assign bitcast_ln14_1_fu_1532_p1 = reg_1296;
assign bitcast_ln14_20_fu_2292_p1 = reg_1300;
assign bitcast_ln14_21_fu_2347_p1 = reg_1296;
assign bitcast_ln14_22_fu_2352_p1 = reg_1300;
assign bitcast_ln14_23_fu_2402_p1 = reg_1296;
assign bitcast_ln14_24_fu_2407_p1 = reg_1300;
assign bitcast_ln14_25_fu_2462_p1 = reg_1296;
assign bitcast_ln14_26_fu_2467_p1 = reg_1300;
assign bitcast_ln14_27_fu_2517_p1 = reg_1296;
assign bitcast_ln14_28_fu_2522_p1 = reg_1300;
assign bitcast_ln14_29_fu_2581_p1 = reg_1296;
assign bitcast_ln14_2_fu_1537_p1 = reg_1300;
assign bitcast_ln14_30_fu_2586_p1 = reg_1300;
assign bitcast_ln14_31_fu_2615_p1 = select_ln14_30_reg_3724;
assign bitcast_ln14_32_fu_1636_p1 = reg_1304;
assign bitcast_ln14_33_fu_1714_p1 = reg_1308;
assign bitcast_ln14_34_fu_1719_p1 = reg_1313;
assign bitcast_ln14_35_fu_1828_p1 = reg_1292;
assign bitcast_ln14_36_fu_1833_p1 = reg_1304;
assign bitcast_ln14_37_fu_1932_p1 = reg_1318;
assign bitcast_ln14_38_fu_1937_p1 = reg_1323;
assign bitcast_ln14_39_fu_2017_p1 = reg_1308;
assign bitcast_ln14_3_fu_1641_p1 = reg_1296;
assign bitcast_ln14_40_fu_2022_p1 = reg_1313;
assign bitcast_ln14_41_fu_2100_p1 = reg_1328;
assign bitcast_ln14_42_fu_2105_p1 = reg_1333;
assign bitcast_ln14_43_fu_2156_p1 = reg_1292;
assign bitcast_ln14_44_fu_2161_p1 = reg_1304;
assign bitcast_ln14_45_fu_2218_p1 = init_0_load_7_reg_3099;
assign bitcast_ln14_46_fu_2222_p1 = init_1_load_7_reg_3104;
assign bitcast_ln14_47_fu_2277_p1 = reg_1318;
assign bitcast_ln14_48_fu_2282_p1 = reg_1323;
assign bitcast_ln14_49_fu_2339_p1 = init_0_load_9_reg_3190;
assign bitcast_ln14_4_fu_1646_p1 = reg_1300;
assign bitcast_ln14_50_fu_2343_p1 = init_1_load_9_reg_3195;
assign bitcast_ln14_51_fu_2392_p1 = reg_1308;
assign bitcast_ln14_52_fu_2397_p1 = reg_1313;
assign bitcast_ln14_53_fu_2454_p1 = init_0_load_11_reg_3272;
assign bitcast_ln14_54_fu_2458_p1 = init_1_load_11_reg_3277;
assign bitcast_ln14_55_fu_2507_p1 = reg_1328;
assign bitcast_ln14_56_fu_2512_p1 = reg_1333;
assign bitcast_ln14_57_fu_2545_p1 = init_0_load_13_reg_3354;
assign bitcast_ln14_58_fu_2549_p1 = init_1_load_13_reg_3359;
assign bitcast_ln14_59_fu_2598_p1 = reg_1292;
assign bitcast_ln14_5_fu_1724_p1 = reg_1296;
assign bitcast_ln14_60_fu_2603_p1 = reg_1304;
assign bitcast_ln14_61_fu_2619_p1 = init_0_load_15_reg_3424;
assign bitcast_ln14_62_fu_2623_p1 = init_1_load_15_reg_3429;
assign bitcast_ln14_63_fu_2627_p1 = select_ln14_31_reg_3739;
assign bitcast_ln14_6_fu_1729_p1 = reg_1300;
assign bitcast_ln14_7_fu_1838_p1 = reg_1296;
assign bitcast_ln14_8_fu_1843_p1 = reg_1300;
assign bitcast_ln14_9_fu_1942_p1 = reg_1296;
assign bitcast_ln14_fu_1527_p1 = reg_1292;
assign conv3_udiv_cast_cast_fu_1348_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1278_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_1285_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_400_p_ce = 1'b1;
assign grp_fu_400_p_din0 = grp_fu_1270_p0;
assign grp_fu_400_p_din1 = grp_fu_1270_p1;
assign grp_fu_400_p_opcode = 2'd0;
assign grp_fu_971_p_ce = 1'b1;
assign grp_fu_971_p_din0 = grp_fu_1274_p0;
assign grp_fu_971_p_din1 = grp_fu_1274_p1;
assign grp_fu_971_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1343;
assign llike_1_we0 = llike_1_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1338;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1372_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_10_fu_1734_p4 = {{{tmp_70_reg_2871}, {1'd1}}, {p_cast_reg_2681}};
assign or_ln14_11_fu_1748_p5 = {{{{tmp_70_reg_2871}, {1'd1}}, {tmp_74_reg_2885}}, {6'd32}};
assign or_ln14_12_fu_1618_p5 = {{{{tmp_70_fu_1577_p4}, {1'd1}}, {tmp_161_fu_1611_p3}}, {1'd1}};
assign or_ln14_13_fu_1848_p5 = {{{{tmp_70_reg_2871}, {1'd1}}, {tmp_161_reg_2898}}, {7'd64}};
assign or_ln14_14_fu_1869_p5 = {{{{tmp_70_reg_2871}, {1'd1}}, {tmp_161_reg_2898}}, {7'd96}};
assign or_ln14_15_fu_1687_p4 = {{{tmp_70_reg_2871}, {2'd3}}, {tmp_160_reg_2793}};
assign or_ln14_16_fu_1952_p4 = {{{tmp_70_reg_2871}, {2'd3}}, {conv3_udiv}};
assign or_ln14_17_fu_1966_p5 = {{{{tmp_70_reg_2871}, {2'd3}}, {tmp_160_reg_2793}}, {6'd32}};
assign or_ln14_18_fu_1701_p3 = {{tmp_70_reg_2871}, {3'd7}};
assign or_ln14_19_fu_2037_p3 = {{tmp_70_reg_2871}, {9'd448}};
assign or_ln14_1_fu_1442_p3 = {{tmp_14_fu_1432_p4}, {1'd1}};
assign or_ln14_20_fu_2055_p3 = {{tmp_70_reg_2871}, {9'd480}};
assign or_ln14_21_fu_1785_p4 = {{{tmp_162_fu_1769_p3}, {1'd1}}, {tmp_s_fu_1776_p4}};
assign or_ln14_22_fu_2120_p5 = {{{{tmp_162_reg_3040}, {1'd1}}, {tmp_163_reg_3159}}, {p_cast_reg_2681}};
assign or_ln14_23_fu_2135_p5 = {{{{tmp_162_reg_3040}, {1'd1}}, {tmp_s_reg_3066}}, {6'd32}};
assign or_ln14_24_fu_1810_p5 = {{{{tmp_162_fu_1769_p3}, {1'd1}}, {tmp_156_fu_1801_p4}}, {1'd1}};
assign or_ln14_25_fu_2176_p5 = {{{{tmp_162_reg_3040}, {1'd1}}, {tmp_156_reg_3077}}, {7'd64}};
assign or_ln14_26_fu_2197_p5 = {{{{tmp_162_reg_3040}, {1'd1}}, {tmp_156_reg_3077}}, {7'd96}};
assign or_ln14_27_fu_1897_p6 = {{{{{tmp_162_reg_3040}, {1'd1}}, {tmp_163_fu_1890_p3}}, {1'd1}}, {tmp_160_reg_2793}};
assign or_ln14_28_fu_2236_p6 = {{{{{tmp_162_reg_3040}, {1'd1}}, {tmp_163_reg_3159}}, {1'd1}}, {conv3_udiv}};
assign or_ln14_29_fu_2253_p7 = {{{{{{tmp_162_reg_3040}, {1'd1}}, {tmp_163_reg_3159}}, {1'd1}}, {tmp_160_reg_2793}}, {6'd32}};
assign or_ln14_2_fu_1456_p3 = {{tmp_14_reg_2746}, {7'd64}};
assign or_ln14_30_fu_1915_p5 = {{{{tmp_162_reg_3040}, {1'd1}}, {tmp_163_fu_1890_p3}}, {2'd3}};
assign or_ln14_31_fu_2297_p5 = {{{{tmp_162_reg_3040}, {1'd1}}, {tmp_163_reg_3159}}, {8'd192}};
assign or_ln14_32_fu_2318_p5 = {{{{tmp_162_reg_3040}, {1'd1}}, {tmp_163_reg_3159}}, {8'd224}};
assign or_ln14_33_fu_1987_p4 = {{{tmp_162_reg_3040}, {2'd3}}, {tmp_74_reg_2885}};
assign or_ln14_34_fu_2357_p4 = {{{tmp_162_reg_3040}, {2'd3}}, {p_cast_reg_2681}};
assign or_ln14_35_fu_2371_p5 = {{{{tmp_162_reg_3040}, {2'd3}}, {tmp_74_reg_2885}}, {6'd32}};
assign or_ln14_36_fu_2001_p5 = {{{{tmp_162_reg_3040}, {2'd3}}, {tmp_161_reg_2898}}, {1'd1}};
assign or_ln14_37_fu_2412_p5 = {{{{tmp_162_reg_3040}, {2'd3}}, {tmp_161_reg_2898}}, {7'd64}};
assign or_ln14_38_fu_2433_p5 = {{{{tmp_162_reg_3040}, {2'd3}}, {tmp_161_reg_2898}}, {7'd96}};
assign or_ln14_39_fu_2073_p4 = {{{tmp_162_reg_3040}, {3'd7}}, {tmp_160_reg_2793}};
assign or_ln14_3_fu_1474_p3 = {{tmp_14_reg_2746}, {7'd96}};
assign or_ln14_40_fu_2472_p4 = {{{tmp_162_reg_3040}, {3'd7}}, {conv3_udiv}};
assign or_ln14_41_fu_2486_p5 = {{{{tmp_162_reg_3040}, {3'd7}}, {tmp_160_reg_2793}}, {6'd32}};
assign or_ln14_42_fu_2087_p3 = {{tmp_162_reg_3040}, {4'd15}};
assign or_ln14_43_fu_2527_p3 = {{tmp_162_reg_3040}, {10'd960}};
assign or_ln14_44_fu_2553_p3 = {{tmp_162_reg_3040}, {10'd992}};
assign or_ln14_4_fu_1499_p4 = {{{tmp_1_reg_2716}, {1'd1}}, {tmp_160_fu_1492_p3}};
assign or_ln14_5_fu_1542_p4 = {{{tmp_1_reg_2716}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_1556_p5 = {{{{tmp_1_reg_2716}, {1'd1}}, {tmp_160_reg_2793}}, {6'd32}};
assign or_ln14_7_fu_1514_p3 = {{tmp_1_reg_2716}, {2'd3}};
assign or_ln14_8_fu_1651_p3 = {{tmp_1_reg_2716}, {8'd192}};
assign or_ln14_9_fu_1669_p3 = {{tmp_1_reg_2716}, {8'd224}};
assign or_ln14_s_fu_1595_p4 = {{{tmp_70_fu_1577_p4}, {1'd1}}, {tmp_74_fu_1586_p4}};
assign or_ln1_fu_1412_p3 = {{lshr_ln9_fu_1372_p4}, {6'd32}};
assign or_ln_fu_1398_p3 = {{tmp_1_fu_1388_p4}, {p_cast_fu_1352_p1}};
assign p_cast_fu_1352_p1 = empty_11;
assign select_ln14_30_fu_2591_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_31_fu_2608_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign tmp_14_fu_1432_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_156_fu_1801_p4 = {{s_1_reg_2688[3:2]}};
assign tmp_160_fu_1492_p3 = s_1_reg_2688[32'd1];
assign tmp_161_fu_1611_p3 = s_1_reg_2688[32'd2];
assign tmp_162_fu_1769_p3 = s_1_reg_2688[32'd5];
assign tmp_163_fu_1890_p3 = s_1_reg_2688[32'd3];
assign tmp_1_fu_1388_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_70_fu_1577_p4 = {{s_1_reg_2688[5:4]}};
assign tmp_74_fu_1586_p4 = {{s_1_reg_2688[2:1]}};
assign tmp_s_fu_1776_p4 = {{s_1_reg_2688[3:1]}};
assign zext_ln14_10_fu_1863_p1 = add_ln14_7_fu_1858_p2;
assign zext_ln14_11_fu_1884_p1 = add_ln14_8_fu_1879_p2;
assign zext_ln14_12_fu_1960_p1 = or_ln14_16_fu_1952_p4;
assign zext_ln14_13_fu_1981_p1 = add_ln14_9_fu_1976_p2;
assign zext_ln14_14_fu_2049_p1 = add_ln14_10_fu_2044_p2;
assign zext_ln14_15_fu_2067_p1 = add_ln14_11_fu_2062_p2;
assign zext_ln14_16_fu_2129_p1 = or_ln14_22_fu_2120_p5;
assign zext_ln14_17_fu_2150_p1 = add_ln14_12_fu_2145_p2;
assign zext_ln14_18_fu_2191_p1 = add_ln14_13_fu_2186_p2;
assign zext_ln14_19_fu_2212_p1 = add_ln14_14_fu_2207_p2;
assign zext_ln14_1_fu_1426_p1 = add_ln14_fu_1420_p2;
assign zext_ln14_20_fu_2247_p1 = or_ln14_28_fu_2236_p6;
assign zext_ln14_21_fu_2271_p1 = add_ln14_15_fu_2266_p2;
assign zext_ln14_22_fu_2312_p1 = add_ln14_16_fu_2307_p2;
assign zext_ln14_23_fu_2333_p1 = add_ln14_17_fu_2328_p2;
assign zext_ln14_24_fu_2365_p1 = or_ln14_34_fu_2357_p4;
assign zext_ln14_25_fu_2386_p1 = add_ln14_18_fu_2381_p2;
assign zext_ln14_26_fu_2427_p1 = add_ln14_19_fu_2422_p2;
assign zext_ln14_27_fu_2448_p1 = add_ln14_20_fu_2443_p2;
assign zext_ln14_28_fu_2480_p1 = or_ln14_40_fu_2472_p4;
assign zext_ln14_29_fu_2501_p1 = add_ln14_21_fu_2496_p2;
assign zext_ln14_2_fu_1468_p1 = add_ln14_1_fu_1463_p2;
assign zext_ln14_30_fu_2539_p1 = add_ln14_22_fu_2534_p2;
assign zext_ln14_31_fu_2565_p1 = add_ln14_23_fu_2560_p2;
assign zext_ln14_32_fu_1450_p1 = or_ln14_1_fu_1442_p3;
assign zext_ln14_33_fu_1508_p1 = or_ln14_4_fu_1499_p4;
assign zext_ln14_34_fu_1521_p1 = or_ln14_7_fu_1514_p3;
assign zext_ln14_35_fu_1605_p1 = or_ln14_s_fu_1595_p4;
assign zext_ln14_36_fu_1630_p1 = or_ln14_12_fu_1618_p5;
assign zext_ln14_37_fu_1695_p1 = or_ln14_15_fu_1687_p4;
assign zext_ln14_38_fu_1708_p1 = or_ln14_18_fu_1701_p3;
assign zext_ln14_39_fu_1795_p1 = or_ln14_21_fu_1785_p4;
assign zext_ln14_3_fu_1486_p1 = add_ln14_2_fu_1481_p2;
assign zext_ln14_40_fu_1822_p1 = or_ln14_24_fu_1810_p5;
assign zext_ln14_41_fu_1909_p1 = or_ln14_27_fu_1897_p6;
assign zext_ln14_42_fu_1926_p1 = or_ln14_30_fu_1915_p5;
assign zext_ln14_43_fu_1995_p1 = or_ln14_33_fu_1987_p4;
assign zext_ln14_44_fu_2011_p1 = or_ln14_36_fu_2001_p5;
assign zext_ln14_45_fu_2081_p1 = or_ln14_39_fu_2073_p4;
assign zext_ln14_46_fu_2094_p1 = or_ln14_42_fu_2087_p3;
assign zext_ln14_4_fu_1550_p1 = or_ln14_5_fu_1542_p4;
assign zext_ln14_5_fu_1571_p1 = add_ln14_3_fu_1566_p2;
assign zext_ln14_6_fu_1663_p1 = add_ln14_4_fu_1658_p2;
assign zext_ln14_7_fu_1681_p1 = add_ln14_5_fu_1676_p2;
assign zext_ln14_8_fu_1742_p1 = or_ln14_10_fu_1734_p4;
assign zext_ln14_9_fu_1763_p1 = add_ln14_6_fu_1758_p2;
assign zext_ln14_fu_1406_p1 = or_ln_fu_1398_p3;
assign zext_ln9_fu_1382_p1 = lshr_ln9_fu_1372_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2654[10:7] <= 4'b0000;
    p_cast_reg_2681[7] <= 1'b0;
    zext_ln9_reg_2705[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_32_reg_2752[0] <= 1'b1;
    zext_ln14_32_reg_2752[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_33_reg_2804[1] <= 1'b1;
    zext_ln14_33_reg_2804[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_34_reg_2810[1:0] <= 2'b11;
    zext_ln14_34_reg_2810[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_35_reg_2892[2] <= 1'b1;
    zext_ln14_35_reg_2892[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_36_reg_2907[0] <= 1'b1;
    zext_ln14_36_reg_2907[2:2] <= 1'b1;
    zext_ln14_36_reg_2907[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_37_reg_2968[2:1] <= 2'b11;
    zext_ln14_37_reg_2968[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_38_reg_2974[2:0] <= 3'b111;
    zext_ln14_38_reg_2974[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_39_reg_3071[3] <= 1'b1;
    zext_ln14_39_reg_3071[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_40_reg_3083[0] <= 1'b1;
    zext_ln14_40_reg_3083[3:3] <= 1'b1;
    zext_ln14_40_reg_3083[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_41_reg_3168[1] <= 1'b1;
    zext_ln14_41_reg_3168[3:3] <= 1'b1;
    zext_ln14_41_reg_3168[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_42_reg_3174[1:0] <= 2'b11;
    zext_ln14_42_reg_3174[3:3] <= 1'b1;
    zext_ln14_42_reg_3174[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_43_reg_3250[3:2] <= 2'b11;
    zext_ln14_43_reg_3250[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_44_reg_3256[0] <= 1'b1;
    zext_ln14_44_reg_3256[3:2] <= 2'b11;
    zext_ln14_44_reg_3256[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_44_reg_3256_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_44_reg_3256_pp0_iter1_reg[3:2] <= 2'b11;
    zext_ln14_44_reg_3256_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_45_reg_3332[3:1] <= 3'b111;
    zext_ln14_45_reg_3332[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_45_reg_3332_pp0_iter1_reg[3:1] <= 3'b111;
    zext_ln14_45_reg_3332_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_46_reg_3338[3:0] <= 4'b1111;
    zext_ln14_46_reg_3338[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_46_reg_3338_pp0_iter1_reg[3:0] <= 4'b1111;
    zext_ln14_46_reg_3338_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 