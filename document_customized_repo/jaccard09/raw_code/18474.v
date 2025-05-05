module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_11,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,grp_fu_453_p_din0,grp_fu_453_p_din1,grp_fu_453_p_opcode,grp_fu_453_p_dout0,grp_fu_453_p_ce,grp_fu_1050_p_din0,grp_fu_1050_p_din1,grp_fu_1050_p_opcode,grp_fu_1050_p_dout0,grp_fu_1050_p_ce); 
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
output  [11:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
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
output  [63:0] grp_fu_453_p_din0;
output  [63:0] grp_fu_453_p_din1;
output  [1:0] grp_fu_453_p_opcode;
input  [63:0] grp_fu_453_p_dout0;
output   grp_fu_453_p_ce;
output  [63:0] grp_fu_1050_p_din0;
output  [63:0] grp_fu_1050_p_din1;
output  [1:0] grp_fu_1050_p_opcode;
input  [63:0] grp_fu_1050_p_dout0;
output   grp_fu_1050_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_189_reg_2833;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1320;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_1306_p3;
reg   [63:0] reg_1324;
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
wire   [63:0] grp_fu_1313_p3;
reg   [63:0] reg_1328;
reg   [63:0] reg_1332;
reg   [63:0] reg_1336;
reg   [63:0] reg_1341;
reg   [63:0] reg_1346;
reg   [63:0] reg_1351;
reg   [63:0] reg_1356;
reg   [63:0] reg_1361;
reg   [63:0] reg_1366;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1372;
wire   [10:0] conv3_udiv_cast_cast_fu_1378_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_2786;
wire   [7:0] p_cast_fu_1382_p1;
reg   [7:0] p_cast_reg_2813;
reg   [6:0] s_1_reg_2820;
wire   [3:0] lshr_ln9_1_fu_1418_p4;
reg   [3:0] lshr_ln9_1_reg_2837;
wire   [2:0] tmp_1_fu_1428_p4;
reg   [2:0] tmp_1_reg_2849;
wire   [0:0] tmp_190_fu_1522_p3;
reg   [0:0] tmp_190_reg_2915;
wire   [63:0] bitcast_ln14_fu_1557_p1;
wire   [63:0] bitcast_ln14_1_fu_1562_p1;
wire   [63:0] bitcast_ln14_2_fu_1567_p1;
wire   [1:0] tmp_110_fu_1607_p4;
reg   [1:0] tmp_110_reg_2981;
wire   [1:0] tmp_114_fu_1616_p4;
reg   [1:0] tmp_114_reg_2997;
wire   [0:0] tmp_191_fu_1641_p3;
reg   [0:0] tmp_191_reg_3004;
reg   [0:0] tmp_191_reg_3004_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_32_fu_1666_p1;
wire   [63:0] bitcast_ln14_3_fu_1671_p1;
wire   [63:0] bitcast_ln14_4_fu_1676_p1;
wire   [63:0] bitcast_ln14_33_fu_1744_p1;
wire   [63:0] bitcast_ln14_34_fu_1749_p1;
wire   [63:0] bitcast_ln14_5_fu_1754_p1;
wire   [63:0] bitcast_ln14_6_fu_1759_p1;
wire   [0:0] tmp_192_fu_1799_p3;
reg   [0:0] tmp_192_reg_3130;
reg   [0:0] tmp_192_reg_3130_pp0_iter1_reg;
wire   [2:0] tmp_s_fu_1806_p4;
reg   [2:0] tmp_s_reg_3160;
wire   [1:0] tmp_187_fu_1831_p4;
reg   [1:0] tmp_187_reg_3165;
wire   [63:0] bitcast_ln14_35_fu_1858_p1;
wire   [63:0] bitcast_ln14_36_fu_1863_p1;
reg   [63:0] init_0_load_7_reg_3182;
reg   [63:0] init_1_load_7_reg_3187;
wire   [63:0] bitcast_ln14_7_fu_1868_p1;
wire   [63:0] bitcast_ln14_8_fu_1873_p1;
wire   [0:0] tmp_193_fu_1920_p3;
reg   [0:0] tmp_193_reg_3242;
wire   [63:0] bitcast_ln14_37_fu_1962_p1;
wire   [63:0] bitcast_ln14_38_fu_1967_p1;
reg   [63:0] init_0_load_9_reg_3262;
reg   [63:0] init_1_load_9_reg_3267;
wire   [63:0] bitcast_ln14_9_fu_1972_p1;
wire   [63:0] bitcast_ln14_10_fu_1977_p1;
wire   [63:0] bitcast_ln14_39_fu_2047_p1;
wire   [63:0] bitcast_ln14_40_fu_2052_p1;
reg   [63:0] init_0_load_11_reg_3332;
reg   [63:0] init_1_load_11_reg_3337;
wire   [63:0] bitcast_ln14_11_fu_2057_p1;
wire   [63:0] bitcast_ln14_12_fu_2062_p1;
wire   [63:0] bitcast_ln14_41_fu_2130_p1;
wire   [63:0] bitcast_ln14_42_fu_2135_p1;
reg   [63:0] init_0_load_13_reg_3402;
reg   [63:0] init_1_load_13_reg_3407;
wire   [63:0] bitcast_ln14_13_fu_2140_p1;
wire   [63:0] bitcast_ln14_14_fu_2145_p1;
wire   [63:0] bitcast_ln14_43_fu_2186_p1;
wire   [63:0] bitcast_ln14_44_fu_2191_p1;
reg   [63:0] init_0_load_15_reg_3472;
reg   [63:0] init_1_load_15_reg_3477;
wire   [63:0] bitcast_ln14_15_fu_2196_p1;
wire   [63:0] bitcast_ln14_16_fu_2201_p1;
wire   [63:0] bitcast_ln14_45_fu_2248_p1;
wire   [63:0] bitcast_ln14_46_fu_2252_p1;
wire   [63:0] zext_ln9_1_fu_2256_p1;
reg   [63:0] zext_ln9_1_reg_3522;
wire   [63:0] bitcast_ln14_17_fu_2261_p1;
wire   [63:0] bitcast_ln14_18_fu_2266_p1;
wire   [63:0] bitcast_ln14_47_fu_2312_p1;
wire   [63:0] bitcast_ln14_48_fu_2317_p1;
wire   [63:0] bitcast_ln14_19_fu_2322_p1;
wire   [63:0] bitcast_ln14_20_fu_2327_p1;
wire   [63:0] bitcast_ln14_49_fu_2374_p1;
wire   [63:0] bitcast_ln14_50_fu_2378_p1;
wire   [63:0] zext_ln14_34_fu_2389_p1;
reg   [63:0] zext_ln14_34_reg_3608;
wire   [63:0] bitcast_ln14_21_fu_2395_p1;
wire   [63:0] bitcast_ln14_22_fu_2400_p1;
wire   [63:0] bitcast_ln14_51_fu_2440_p1;
wire   [63:0] bitcast_ln14_52_fu_2445_p1;
wire   [63:0] bitcast_ln14_23_fu_2450_p1;
wire   [63:0] bitcast_ln14_24_fu_2455_p1;
wire   [63:0] bitcast_ln14_53_fu_2502_p1;
wire   [63:0] bitcast_ln14_54_fu_2506_p1;
wire   [63:0] zext_ln14_37_fu_2518_p1;
reg   [63:0] zext_ln14_37_reg_3694;
wire   [63:0] bitcast_ln14_25_fu_2524_p1;
wire   [63:0] bitcast_ln14_26_fu_2529_p1;
wire   [63:0] bitcast_ln14_55_fu_2569_p1;
wire   [63:0] bitcast_ln14_56_fu_2574_p1;
wire   [63:0] bitcast_ln14_27_fu_2579_p1;
wire   [63:0] bitcast_ln14_28_fu_2584_p1;
wire   [63:0] bitcast_ln14_57_fu_2607_p1;
wire   [63:0] bitcast_ln14_58_fu_2611_p1;
wire   [63:0] zext_ln14_40_fu_2650_p1;
reg   [63:0] zext_ln14_40_reg_3780;
wire   [63:0] bitcast_ln14_29_fu_2656_p1;
wire   [63:0] bitcast_ln14_30_fu_2661_p1;
wire   [63:0] select_ln14_30_fu_2666_p3;
reg   [63:0] select_ln14_30_reg_3796;
wire   [63:0] bitcast_ln14_59_fu_2673_p1;
wire   [63:0] bitcast_ln14_60_fu_2678_p1;
wire   [63:0] select_ln14_31_fu_2683_p3;
reg   [63:0] select_ln14_31_reg_3811;
wire   [63:0] bitcast_ln14_31_fu_2690_p1;
wire   [63:0] bitcast_ln14_61_fu_2694_p1;
wire   [63:0] bitcast_ln14_62_fu_2698_p1;
wire   [63:0] bitcast_ln14_63_fu_2702_p1;
wire   [63:0] zext_ln14_43_fu_2714_p1;
reg   [63:0] zext_ln14_43_reg_3836;
wire   [63:0] zext_ln14_46_fu_2730_p1;
reg   [63:0] zext_ln14_46_reg_3842;
wire   [63:0] zext_ln14_49_fu_2744_p1;
reg   [63:0] zext_ln14_49_reg_3848;
wire   [63:0] zext_ln14_52_fu_2757_p1;
reg   [63:0] zext_ln14_52_reg_3854;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_1412_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1446_p1;
wire   [63:0] zext_ln14_1_fu_1466_p1;
wire   [63:0] zext_ln14_32_fu_1480_p1;
wire   [63:0] zext_ln14_2_fu_1498_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1516_p1;
wire   [63:0] zext_ln14_33_fu_1538_p1;
wire   [63:0] zext_ln14_35_fu_1551_p1;
wire   [63:0] zext_ln14_4_fu_1580_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1601_p1;
wire   [63:0] zext_ln14_36_fu_1635_p1;
wire   [63:0] zext_ln14_38_fu_1660_p1;
wire   [63:0] zext_ln14_6_fu_1693_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1711_p1;
wire   [63:0] zext_ln14_39_fu_1725_p1;
wire   [63:0] zext_ln14_41_fu_1738_p1;
wire   [63:0] zext_ln14_8_fu_1772_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1793_p1;
wire   [63:0] zext_ln14_42_fu_1825_p1;
wire   [63:0] zext_ln14_44_fu_1852_p1;
wire   [63:0] zext_ln14_10_fu_1893_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1914_p1;
wire   [63:0] zext_ln14_45_fu_1939_p1;
wire   [63:0] zext_ln14_47_fu_1956_p1;
wire   [63:0] zext_ln14_12_fu_1990_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2011_p1;
wire   [63:0] zext_ln14_48_fu_2025_p1;
wire   [63:0] zext_ln14_50_fu_2041_p1;
wire   [63:0] zext_ln14_14_fu_2079_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2097_p1;
wire   [63:0] zext_ln14_51_fu_2111_p1;
wire   [63:0] zext_ln14_53_fu_2124_p1;
wire   [63:0] zext_ln14_16_fu_2159_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_17_fu_2180_p1;
wire   [63:0] zext_ln14_18_fu_2221_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_19_fu_2242_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_20_fu_2282_p1;
wire   [63:0] zext_ln14_21_fu_2306_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_22_fu_2347_p1;
wire   [63:0] zext_ln14_23_fu_2368_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_24_fu_2413_p1;
wire   [63:0] zext_ln14_25_fu_2434_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_26_fu_2475_p1;
wire   [63:0] zext_ln14_27_fu_2496_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_28_fu_2542_p1;
wire   [63:0] zext_ln14_29_fu_2563_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_30_fu_2601_p1;
wire   [63:0] zext_ln14_31_fu_2627_p1;
reg   [6:0] s_fu_190;
wire   [6:0] add_ln13_fu_2633_p2;
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
reg   [11:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg   [63:0] grp_fu_1298_p0;
reg   [63:0] grp_fu_1298_p1;
reg   [63:0] grp_fu_1302_p0;
reg   [63:0] grp_fu_1302_p1;
wire   [4:0] lshr_ln9_fu_1402_p4;
wire   [10:0] or_ln_fu_1438_p3;
wire   [10:0] or_ln1_fu_1452_p3;
wire   [10:0] add_ln14_fu_1460_p2;
wire   [4:0] or_ln14_1_fu_1472_p3;
wire   [10:0] or_ln14_2_fu_1486_p3;
wire   [10:0] add_ln14_1_fu_1493_p2;
wire   [10:0] or_ln14_3_fu_1504_p3;
wire   [10:0] add_ln14_2_fu_1511_p2;
wire   [4:0] or_ln14_4_fu_1529_p4;
wire   [4:0] or_ln14_8_fu_1544_p3;
wire   [10:0] or_ln14_6_fu_1572_p4;
wire   [10:0] or_ln14_7_fu_1586_p5;
wire   [10:0] add_ln14_3_fu_1596_p2;
wire   [4:0] or_ln14_10_fu_1625_p4;
wire   [4:0] or_ln14_14_fu_1648_p5;
wire   [10:0] or_ln14_9_fu_1681_p3;
wire   [10:0] add_ln14_4_fu_1688_p2;
wire   [10:0] or_ln14_s_fu_1699_p3;
wire   [10:0] add_ln14_5_fu_1706_p2;
wire   [4:0] or_ln14_17_fu_1717_p4;
wire   [4:0] or_ln14_21_fu_1731_p3;
wire   [10:0] or_ln14_12_fu_1764_p4;
wire   [10:0] or_ln14_13_fu_1778_p5;
wire   [10:0] add_ln14_6_fu_1788_p2;
wire   [4:0] or_ln14_24_fu_1815_p4;
wire   [4:0] or_ln14_28_fu_1840_p5;
wire   [10:0] or_ln14_15_fu_1878_p5;
wire   [10:0] add_ln14_7_fu_1888_p2;
wire   [10:0] or_ln14_16_fu_1899_p5;
wire   [10:0] add_ln14_8_fu_1909_p2;
wire   [4:0] or_ln14_31_fu_1927_p6;
wire   [4:0] or_ln14_35_fu_1945_p5;
wire   [10:0] or_ln14_19_fu_1982_p4;
wire   [10:0] or_ln14_20_fu_1996_p5;
wire   [10:0] add_ln14_9_fu_2006_p2;
wire   [4:0] or_ln14_38_fu_2017_p4;
wire   [4:0] or_ln14_42_fu_2031_p5;
wire   [10:0] or_ln14_22_fu_2067_p3;
wire   [10:0] add_ln14_10_fu_2074_p2;
wire   [10:0] or_ln14_23_fu_2085_p3;
wire   [10:0] add_ln14_11_fu_2092_p2;
wire   [4:0] or_ln14_45_fu_2103_p4;
wire   [4:0] or_ln14_49_fu_2117_p3;
wire   [10:0] or_ln14_26_fu_2150_p5;
wire   [10:0] or_ln14_27_fu_2165_p5;
wire   [10:0] add_ln14_12_fu_2175_p2;
wire   [10:0] or_ln14_29_fu_2206_p5;
wire   [10:0] add_ln14_13_fu_2216_p2;
wire   [10:0] or_ln14_30_fu_2227_p5;
wire   [10:0] add_ln14_14_fu_2237_p2;
wire   [10:0] or_ln14_33_fu_2271_p6;
wire   [10:0] or_ln14_34_fu_2288_p7;
wire   [10:0] add_ln14_15_fu_2301_p2;
wire   [10:0] or_ln14_36_fu_2332_p5;
wire   [10:0] add_ln14_16_fu_2342_p2;
wire   [10:0] or_ln14_37_fu_2353_p5;
wire   [10:0] add_ln14_17_fu_2363_p2;
wire   [3:0] or_ln14_5_fu_2382_p3;
wire   [10:0] or_ln14_40_fu_2405_p4;
wire   [10:0] or_ln14_41_fu_2419_p5;
wire   [10:0] add_ln14_18_fu_2429_p2;
wire   [10:0] or_ln14_43_fu_2460_p5;
wire   [10:0] add_ln14_19_fu_2470_p2;
wire   [10:0] or_ln14_44_fu_2481_p5;
wire   [10:0] add_ln14_20_fu_2491_p2;
wire   [3:0] or_ln14_11_fu_2510_p4;
wire   [10:0] or_ln14_47_fu_2534_p4;
wire   [10:0] or_ln14_48_fu_2548_p5;
wire   [10:0] add_ln14_21_fu_2558_p2;
wire   [10:0] or_ln14_50_fu_2589_p3;
wire   [10:0] add_ln14_22_fu_2596_p2;
wire   [10:0] or_ln14_51_fu_2615_p3;
wire   [10:0] add_ln14_23_fu_2622_p2;
wire   [3:0] or_ln14_18_fu_2643_p3;
wire   [3:0] or_ln14_25_fu_2706_p4;
wire   [3:0] or_ln14_32_fu_2720_p5;
wire   [3:0] or_ln14_39_fu_2736_p4;
wire   [3:0] or_ln14_46_fu_2750_p3;
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
#0 s_fu_190 = 7'd0;
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
        reg_1336 <= init_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1336 <= init_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1341 <= init_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1341 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1346 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1346 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1351 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1351 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1356 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1356 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1361 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1361 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_190 <= 7'd0;
    end else if (((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_190 <= add_ln13_fu_2633_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_2786[6 : 0] <= conv3_udiv_cast_cast_fu_1378_p1[6 : 0];
        lshr_ln9_1_reg_2837 <= {{ap_sig_allocacmp_s_1[5:2]}};
        p_cast_reg_2813[6 : 0] <= p_cast_fu_1382_p1[6 : 0];
        s_1_reg_2820 <= ap_sig_allocacmp_s_1;
        select_ln14_30_reg_3796 <= select_ln14_30_fu_2666_p3;
        select_ln14_31_reg_3811 <= select_ln14_31_fu_2683_p3;
        tmp_189_reg_2833 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_1_reg_2849 <= {{ap_sig_allocacmp_s_1[5:3]}};
        zext_ln14_40_reg_3780[3 : 2] <= zext_ln14_40_fu_2650_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        init_0_load_11_reg_3332 <= init_0_q0;
        init_1_load_11_reg_3337 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        init_0_load_13_reg_3402 <= init_0_q0;
        init_1_load_13_reg_3407 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        init_0_load_15_reg_3472 <= init_0_q0;
        init_1_load_15_reg_3477 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_3182 <= init_0_q0;
        init_1_load_7_reg_3187 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        init_0_load_9_reg_3262 <= init_0_q0;
        init_1_load_9_reg_3267 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1320 <= init_0_q1;
        reg_1332 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1324 <= grp_fu_1306_p3;
        reg_1328 <= grp_fu_1313_p3;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1366 <= grp_fu_453_p_dout0;
        reg_1372 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_110_reg_2981 <= {{s_1_reg_2820[5:4]}};
        tmp_114_reg_2997 <= {{s_1_reg_2820[2:1]}};
        tmp_191_reg_3004 <= s_1_reg_2820[32'd2];
        tmp_191_reg_3004_pp0_iter1_reg <= tmp_191_reg_3004;
        zext_ln14_43_reg_3836[1 : 0] <= zext_ln14_43_fu_2714_p1[1 : 0];
zext_ln14_43_reg_3836[3] <= zext_ln14_43_fu_2714_p1[3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_187_reg_3165 <= {{s_1_reg_2820[3:2]}};
        tmp_192_reg_3130 <= s_1_reg_2820[32'd5];
        tmp_192_reg_3130_pp0_iter1_reg <= tmp_192_reg_3130;
        tmp_s_reg_3160 <= {{s_1_reg_2820[3:1]}};
        zext_ln14_46_reg_3842[1] <= zext_ln14_46_fu_2730_p1[1];
zext_ln14_46_reg_3842[3] <= zext_ln14_46_fu_2730_p1[3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_190_reg_2915 <= s_1_reg_2820[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_193_reg_3242 <= s_1_reg_2820[32'd3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        zext_ln14_34_reg_3608[3 : 1] <= zext_ln14_34_fu_2389_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        zext_ln14_37_reg_3694[0] <= zext_ln14_37_fu_2518_p1[0];
zext_ln14_37_reg_3694[3 : 2] <= zext_ln14_37_fu_2518_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln14_49_reg_3848[0] <= zext_ln14_49_fu_2744_p1[0];
zext_ln14_49_reg_3848[3] <= zext_ln14_49_fu_2744_p1[3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        zext_ln14_52_reg_3854[3] <= zext_ln14_52_fu_2757_p1[3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        zext_ln9_1_reg_3522[3 : 0] <= zext_ln9_1_fu_2256_p1[3 : 0];
    end
end
always @ (*) begin
    if (((tmp_189_reg_2833 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_190;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_0_address0_local = zext_ln14_31_fu_2627_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address0_local = zext_ln14_29_fu_2563_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address0_local = zext_ln14_27_fu_2496_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address0_local = zext_ln14_25_fu_2434_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address0_local = zext_ln14_23_fu_2368_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address0_local = zext_ln14_21_fu_2306_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address0_local = zext_ln14_19_fu_2242_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address0_local = zext_ln14_17_fu_2180_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2097_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2011_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1914_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1793_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1466_p1;
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
            emission_0_address1_local = zext_ln14_30_fu_2601_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address1_local = zext_ln14_28_fu_2542_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address1_local = zext_ln14_26_fu_2475_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address1_local = zext_ln14_24_fu_2413_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address1_local = zext_ln14_22_fu_2347_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address1_local = zext_ln14_20_fu_2282_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address1_local = zext_ln14_18_fu_2221_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address1_local = zext_ln14_16_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2079_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1990_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1893_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1693_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1580_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1498_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1446_p1;
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
            emission_1_address0_local = zext_ln14_31_fu_2627_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address0_local = zext_ln14_29_fu_2563_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address0_local = zext_ln14_27_fu_2496_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address0_local = zext_ln14_25_fu_2434_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address0_local = zext_ln14_23_fu_2368_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address0_local = zext_ln14_21_fu_2306_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address0_local = zext_ln14_19_fu_2242_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address0_local = zext_ln14_17_fu_2180_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2097_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2011_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1914_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1793_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1466_p1;
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
            emission_1_address1_local = zext_ln14_30_fu_2601_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address1_local = zext_ln14_28_fu_2542_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address1_local = zext_ln14_26_fu_2475_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address1_local = zext_ln14_24_fu_2413_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address1_local = zext_ln14_22_fu_2347_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address1_local = zext_ln14_20_fu_2282_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address1_local = zext_ln14_18_fu_2221_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address1_local = zext_ln14_16_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2079_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1990_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1893_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1693_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1580_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1498_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1446_p1;
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
        grp_fu_1298_p0 = bitcast_ln14_61_fu_2694_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1298_p0 = bitcast_ln14_59_fu_2673_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1298_p0 = bitcast_ln14_57_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1298_p0 = bitcast_ln14_55_fu_2569_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1298_p0 = bitcast_ln14_53_fu_2502_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1298_p0 = bitcast_ln14_51_fu_2440_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1298_p0 = bitcast_ln14_49_fu_2374_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1298_p0 = bitcast_ln14_47_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1298_p0 = bitcast_ln14_45_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1298_p0 = bitcast_ln14_43_fu_2186_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1298_p0 = bitcast_ln14_41_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1298_p0 = bitcast_ln14_39_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1298_p0 = bitcast_ln14_37_fu_1962_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1298_p0 = bitcast_ln14_35_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1298_p0 = bitcast_ln14_33_fu_1744_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1298_p0 = bitcast_ln14_fu_1557_p1;
    end else begin
        grp_fu_1298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1298_p1 = bitcast_ln14_31_fu_2690_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1298_p1 = bitcast_ln14_29_fu_2656_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1298_p1 = bitcast_ln14_27_fu_2579_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1298_p1 = bitcast_ln14_25_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1298_p1 = bitcast_ln14_23_fu_2450_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1298_p1 = bitcast_ln14_21_fu_2395_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1298_p1 = bitcast_ln14_19_fu_2322_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1298_p1 = bitcast_ln14_17_fu_2261_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1298_p1 = bitcast_ln14_15_fu_2196_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1298_p1 = bitcast_ln14_13_fu_2140_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1298_p1 = bitcast_ln14_11_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1298_p1 = bitcast_ln14_9_fu_1972_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1298_p1 = bitcast_ln14_7_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1298_p1 = bitcast_ln14_5_fu_1754_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1298_p1 = bitcast_ln14_3_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1298_p1 = bitcast_ln14_1_fu_1562_p1;
    end else begin
        grp_fu_1298_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1302_p0 = bitcast_ln14_62_fu_2698_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1302_p0 = bitcast_ln14_60_fu_2678_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1302_p0 = bitcast_ln14_58_fu_2611_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1302_p0 = bitcast_ln14_56_fu_2574_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1302_p0 = bitcast_ln14_54_fu_2506_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1302_p0 = bitcast_ln14_52_fu_2445_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1302_p0 = bitcast_ln14_50_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1302_p0 = bitcast_ln14_48_fu_2317_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1302_p0 = bitcast_ln14_46_fu_2252_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1302_p0 = bitcast_ln14_44_fu_2191_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1302_p0 = bitcast_ln14_42_fu_2135_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1302_p0 = bitcast_ln14_40_fu_2052_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1302_p0 = bitcast_ln14_38_fu_1967_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1302_p0 = bitcast_ln14_36_fu_1863_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1302_p0 = bitcast_ln14_34_fu_1749_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1302_p0 = bitcast_ln14_32_fu_1666_p1;
    end else begin
        grp_fu_1302_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1302_p1 = bitcast_ln14_63_fu_2702_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1302_p1 = bitcast_ln14_30_fu_2661_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1302_p1 = bitcast_ln14_28_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1302_p1 = bitcast_ln14_26_fu_2529_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1302_p1 = bitcast_ln14_24_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1302_p1 = bitcast_ln14_22_fu_2400_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1302_p1 = bitcast_ln14_20_fu_2327_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1302_p1 = bitcast_ln14_18_fu_2266_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1302_p1 = bitcast_ln14_16_fu_2201_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1302_p1 = bitcast_ln14_14_fu_2145_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1302_p1 = bitcast_ln14_12_fu_2062_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1302_p1 = bitcast_ln14_10_fu_1977_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1302_p1 = bitcast_ln14_8_fu_1873_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1302_p1 = bitcast_ln14_6_fu_1759_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1302_p1 = bitcast_ln14_4_fu_1676_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1302_p1 = bitcast_ln14_2_fu_1567_p1;
    end else begin
        grp_fu_1302_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_0_address0_local = zext_ln14_53_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address0_local = zext_ln14_50_fu_2041_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address0_local = zext_ln14_47_fu_1956_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address0_local = zext_ln14_44_fu_1852_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_41_fu_1738_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_38_fu_1660_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_35_fu_1551_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_32_fu_1480_p1;
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
            init_0_address1_local = zext_ln14_51_fu_2111_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address1_local = zext_ln14_48_fu_2025_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address1_local = zext_ln14_45_fu_1939_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address1_local = zext_ln14_42_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address1_local = zext_ln14_39_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_36_fu_1635_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_33_fu_1538_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1412_p1;
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
            init_1_address0_local = zext_ln14_53_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address0_local = zext_ln14_50_fu_2041_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address0_local = zext_ln14_47_fu_1956_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address0_local = zext_ln14_44_fu_1852_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address0_local = zext_ln14_41_fu_1738_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_38_fu_1660_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_35_fu_1551_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_32_fu_1480_p1;
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
            init_1_address1_local = zext_ln14_51_fu_2111_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address1_local = zext_ln14_48_fu_2025_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address1_local = zext_ln14_45_fu_1939_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address1_local = zext_ln14_42_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address1_local = zext_ln14_39_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_36_fu_1635_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_33_fu_1538_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1412_p1;
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
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_1_address0_local = zext_ln14_52_fu_2757_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_49_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_46_fu_2730_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln14_43_fu_2714_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_40_fu_2650_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_1_address0_local = zext_ln14_37_fu_2518_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_1_address0_local = zext_ln14_34_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_1_address0_local = zext_ln9_1_fu_2256_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_2_address0_local = zext_ln14_52_reg_3854;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_2_address0_local = zext_ln14_49_reg_3848;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_2_address0_local = zext_ln14_46_reg_3842;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln14_43_reg_3836;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_address0_local = zext_ln14_40_reg_3780;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_2_address0_local = zext_ln14_37_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_2_address0_local = zext_ln14_34_reg_3608;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_2_address0_local = zext_ln9_1_reg_3522;
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_3_address0_local = zext_ln14_52_reg_3854;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_3_address0_local = zext_ln14_49_reg_3848;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_3_address0_local = zext_ln14_46_reg_3842;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln14_43_reg_3836;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_address0_local = zext_ln14_40_reg_3780;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_3_address0_local = zext_ln14_37_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_3_address0_local = zext_ln14_34_reg_3608;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_3_address0_local = zext_ln9_1_reg_3522;
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_address0_local = zext_ln14_52_fu_2757_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_49_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_46_fu_2730_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_43_fu_2714_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_40_fu_2650_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address0_local = zext_ln14_37_fu_2518_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_address0_local = zext_ln14_34_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address0_local = zext_ln9_1_fu_2256_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_189_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln13_fu_2633_p2 = (s_1_reg_2820 + 7'd32);
assign add_ln14_10_fu_2074_p2 = (or_ln14_22_fu_2067_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_11_fu_2092_p2 = (or_ln14_23_fu_2085_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_12_fu_2175_p2 = (or_ln14_27_fu_2165_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_13_fu_2216_p2 = (or_ln14_29_fu_2206_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_14_fu_2237_p2 = (or_ln14_30_fu_2227_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_15_fu_2301_p2 = (or_ln14_34_fu_2288_p7 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_16_fu_2342_p2 = (or_ln14_36_fu_2332_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_17_fu_2363_p2 = (or_ln14_37_fu_2353_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_18_fu_2429_p2 = (or_ln14_41_fu_2419_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_19_fu_2470_p2 = (or_ln14_43_fu_2460_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_1_fu_1493_p2 = (or_ln14_2_fu_1486_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_20_fu_2491_p2 = (or_ln14_44_fu_2481_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_21_fu_2558_p2 = (or_ln14_48_fu_2548_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_22_fu_2596_p2 = (or_ln14_50_fu_2589_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_23_fu_2622_p2 = (or_ln14_51_fu_2615_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_2_fu_1511_p2 = (or_ln14_3_fu_1504_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_3_fu_1596_p2 = (or_ln14_7_fu_1586_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_4_fu_1688_p2 = (or_ln14_9_fu_1681_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_5_fu_1706_p2 = (or_ln14_s_fu_1699_p3 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_6_fu_1788_p2 = (or_ln14_13_fu_1778_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_7_fu_1888_p2 = (or_ln14_15_fu_1878_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_8_fu_1909_p2 = (or_ln14_16_fu_1899_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_9_fu_2006_p2 = (or_ln14_20_fu_1996_p5 + conv3_udiv_cast_cast_reg_2786);
assign add_ln14_fu_1460_p2 = (or_ln1_fu_1452_p3 + conv3_udiv_cast_cast_fu_1378_p1);
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
assign bitcast_ln14_10_fu_1977_p1 = reg_1328;
assign bitcast_ln14_11_fu_2057_p1 = reg_1324;
assign bitcast_ln14_12_fu_2062_p1 = reg_1328;
assign bitcast_ln14_13_fu_2140_p1 = reg_1324;
assign bitcast_ln14_14_fu_2145_p1 = reg_1328;
assign bitcast_ln14_15_fu_2196_p1 = reg_1324;
assign bitcast_ln14_16_fu_2201_p1 = reg_1328;
assign bitcast_ln14_17_fu_2261_p1 = reg_1324;
assign bitcast_ln14_18_fu_2266_p1 = reg_1328;
assign bitcast_ln14_19_fu_2322_p1 = reg_1324;
assign bitcast_ln14_1_fu_1562_p1 = reg_1324;
assign bitcast_ln14_20_fu_2327_p1 = reg_1328;
assign bitcast_ln14_21_fu_2395_p1 = reg_1324;
assign bitcast_ln14_22_fu_2400_p1 = reg_1328;
assign bitcast_ln14_23_fu_2450_p1 = reg_1324;
assign bitcast_ln14_24_fu_2455_p1 = reg_1328;
assign bitcast_ln14_25_fu_2524_p1 = reg_1324;
assign bitcast_ln14_26_fu_2529_p1 = reg_1328;
assign bitcast_ln14_27_fu_2579_p1 = reg_1324;
assign bitcast_ln14_28_fu_2584_p1 = reg_1328;
assign bitcast_ln14_29_fu_2656_p1 = reg_1324;
assign bitcast_ln14_2_fu_1567_p1 = reg_1328;
assign bitcast_ln14_30_fu_2661_p1 = reg_1328;
assign bitcast_ln14_31_fu_2690_p1 = select_ln14_30_reg_3796;
assign bitcast_ln14_32_fu_1666_p1 = reg_1332;
assign bitcast_ln14_33_fu_1744_p1 = reg_1336;
assign bitcast_ln14_34_fu_1749_p1 = reg_1341;
assign bitcast_ln14_35_fu_1858_p1 = reg_1320;
assign bitcast_ln14_36_fu_1863_p1 = reg_1332;
assign bitcast_ln14_37_fu_1962_p1 = reg_1346;
assign bitcast_ln14_38_fu_1967_p1 = reg_1351;
assign bitcast_ln14_39_fu_2047_p1 = reg_1336;
assign bitcast_ln14_3_fu_1671_p1 = reg_1324;
assign bitcast_ln14_40_fu_2052_p1 = reg_1341;
assign bitcast_ln14_41_fu_2130_p1 = reg_1356;
assign bitcast_ln14_42_fu_2135_p1 = reg_1361;
assign bitcast_ln14_43_fu_2186_p1 = reg_1320;
assign bitcast_ln14_44_fu_2191_p1 = reg_1332;
assign bitcast_ln14_45_fu_2248_p1 = init_0_load_7_reg_3182;
assign bitcast_ln14_46_fu_2252_p1 = init_1_load_7_reg_3187;
assign bitcast_ln14_47_fu_2312_p1 = reg_1346;
assign bitcast_ln14_48_fu_2317_p1 = reg_1351;
assign bitcast_ln14_49_fu_2374_p1 = init_0_load_9_reg_3262;
assign bitcast_ln14_4_fu_1676_p1 = reg_1328;
assign bitcast_ln14_50_fu_2378_p1 = init_1_load_9_reg_3267;
assign bitcast_ln14_51_fu_2440_p1 = reg_1336;
assign bitcast_ln14_52_fu_2445_p1 = reg_1341;
assign bitcast_ln14_53_fu_2502_p1 = init_0_load_11_reg_3332;
assign bitcast_ln14_54_fu_2506_p1 = init_1_load_11_reg_3337;
assign bitcast_ln14_55_fu_2569_p1 = reg_1356;
assign bitcast_ln14_56_fu_2574_p1 = reg_1361;
assign bitcast_ln14_57_fu_2607_p1 = init_0_load_13_reg_3402;
assign bitcast_ln14_58_fu_2611_p1 = init_1_load_13_reg_3407;
assign bitcast_ln14_59_fu_2673_p1 = reg_1320;
assign bitcast_ln14_5_fu_1754_p1 = reg_1324;
assign bitcast_ln14_60_fu_2678_p1 = reg_1332;
assign bitcast_ln14_61_fu_2694_p1 = init_0_load_15_reg_3472;
assign bitcast_ln14_62_fu_2698_p1 = init_1_load_15_reg_3477;
assign bitcast_ln14_63_fu_2702_p1 = select_ln14_31_reg_3811;
assign bitcast_ln14_6_fu_1759_p1 = reg_1328;
assign bitcast_ln14_7_fu_1868_p1 = reg_1324;
assign bitcast_ln14_8_fu_1873_p1 = reg_1328;
assign bitcast_ln14_9_fu_1972_p1 = reg_1324;
assign bitcast_ln14_fu_1557_p1 = reg_1320;
assign conv3_udiv_cast_cast_fu_1378_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1050_p_ce = 1'b1;
assign grp_fu_1050_p_din0 = grp_fu_1302_p0;
assign grp_fu_1050_p_din1 = grp_fu_1302_p1;
assign grp_fu_1050_p_opcode = 2'd0;
assign grp_fu_1306_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_1313_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_453_p_ce = 1'b1;
assign grp_fu_453_p_din0 = grp_fu_1298_p0;
assign grp_fu_453_p_din1 = grp_fu_1298_p1;
assign grp_fu_453_p_opcode = 2'd0;
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
assign llike_1_d0 = reg_1372;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1366;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1372;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1366;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_1418_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign lshr_ln9_fu_1402_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_10_fu_1625_p4 = {{{tmp_110_fu_1607_p4}, {1'd1}}, {tmp_114_fu_1616_p4}};
assign or_ln14_11_fu_2510_p4 = {{{tmp_110_reg_2981}, {1'd1}}, {tmp_191_reg_3004}};
assign or_ln14_12_fu_1764_p4 = {{{tmp_110_reg_2981}, {1'd1}}, {p_cast_reg_2813}};
assign or_ln14_13_fu_1778_p5 = {{{{tmp_110_reg_2981}, {1'd1}}, {tmp_114_reg_2997}}, {6'd32}};
assign or_ln14_14_fu_1648_p5 = {{{{tmp_110_fu_1607_p4}, {1'd1}}, {tmp_191_fu_1641_p3}}, {1'd1}};
assign or_ln14_15_fu_1878_p5 = {{{{tmp_110_reg_2981}, {1'd1}}, {tmp_191_reg_3004}}, {7'd64}};
assign or_ln14_16_fu_1899_p5 = {{{{tmp_110_reg_2981}, {1'd1}}, {tmp_191_reg_3004}}, {7'd96}};
assign or_ln14_17_fu_1717_p4 = {{{tmp_110_reg_2981}, {2'd3}}, {tmp_190_reg_2915}};
assign or_ln14_18_fu_2643_p3 = {{tmp_110_reg_2981}, {2'd3}};
assign or_ln14_19_fu_1982_p4 = {{{tmp_110_reg_2981}, {2'd3}}, {conv3_udiv}};
assign or_ln14_1_fu_1472_p3 = {{lshr_ln9_1_fu_1418_p4}, {1'd1}};
assign or_ln14_20_fu_1996_p5 = {{{{tmp_110_reg_2981}, {2'd3}}, {tmp_190_reg_2915}}, {6'd32}};
assign or_ln14_21_fu_1731_p3 = {{tmp_110_reg_2981}, {3'd7}};
assign or_ln14_22_fu_2067_p3 = {{tmp_110_reg_2981}, {9'd448}};
assign or_ln14_23_fu_2085_p3 = {{tmp_110_reg_2981}, {9'd480}};
assign or_ln14_24_fu_1815_p4 = {{{tmp_192_fu_1799_p3}, {1'd1}}, {tmp_s_fu_1806_p4}};
assign or_ln14_25_fu_2706_p4 = {{{tmp_192_reg_3130}, {1'd1}}, {tmp_187_reg_3165}};
assign or_ln14_26_fu_2150_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_reg_3242}}, {p_cast_reg_2813}};
assign or_ln14_27_fu_2165_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_s_reg_3160}}, {6'd32}};
assign or_ln14_28_fu_1840_p5 = {{{{tmp_192_fu_1799_p3}, {1'd1}}, {tmp_187_fu_1831_p4}}, {1'd1}};
assign or_ln14_29_fu_2206_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_187_reg_3165}}, {7'd64}};
assign or_ln14_2_fu_1486_p3 = {{lshr_ln9_1_reg_2837}, {7'd64}};
assign or_ln14_30_fu_2227_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_187_reg_3165}}, {7'd96}};
assign or_ln14_31_fu_1927_p6 = {{{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_fu_1920_p3}}, {1'd1}}, {tmp_190_reg_2915}};
assign or_ln14_32_fu_2720_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_reg_3242}}, {1'd1}};
assign or_ln14_33_fu_2271_p6 = {{{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_reg_3242}}, {1'd1}}, {conv3_udiv}};
assign or_ln14_34_fu_2288_p7 = {{{{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_reg_3242}}, {1'd1}}, {tmp_190_reg_2915}}, {6'd32}};
assign or_ln14_35_fu_1945_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_fu_1920_p3}}, {2'd3}};
assign or_ln14_36_fu_2332_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_reg_3242}}, {8'd192}};
assign or_ln14_37_fu_2353_p5 = {{{{tmp_192_reg_3130}, {1'd1}}, {tmp_193_reg_3242}}, {8'd224}};
assign or_ln14_38_fu_2017_p4 = {{{tmp_192_reg_3130}, {2'd3}}, {tmp_114_reg_2997}};
assign or_ln14_39_fu_2736_p4 = {{{tmp_192_reg_3130_pp0_iter1_reg}, {2'd3}}, {tmp_191_reg_3004_pp0_iter1_reg}};
assign or_ln14_3_fu_1504_p3 = {{lshr_ln9_1_reg_2837}, {7'd96}};
assign or_ln14_40_fu_2405_p4 = {{{tmp_192_reg_3130}, {2'd3}}, {p_cast_reg_2813}};
assign or_ln14_41_fu_2419_p5 = {{{{tmp_192_reg_3130}, {2'd3}}, {tmp_114_reg_2997}}, {6'd32}};
assign or_ln14_42_fu_2031_p5 = {{{{tmp_192_reg_3130}, {2'd3}}, {tmp_191_reg_3004}}, {1'd1}};
assign or_ln14_43_fu_2460_p5 = {{{{tmp_192_reg_3130}, {2'd3}}, {tmp_191_reg_3004}}, {7'd64}};
assign or_ln14_44_fu_2481_p5 = {{{{tmp_192_reg_3130}, {2'd3}}, {tmp_191_reg_3004}}, {7'd96}};
assign or_ln14_45_fu_2103_p4 = {{{tmp_192_reg_3130}, {3'd7}}, {tmp_190_reg_2915}};
assign or_ln14_46_fu_2750_p3 = {{tmp_192_reg_3130_pp0_iter1_reg}, {3'd7}};
assign or_ln14_47_fu_2534_p4 = {{{tmp_192_reg_3130}, {3'd7}}, {conv3_udiv}};
assign or_ln14_48_fu_2548_p5 = {{{{tmp_192_reg_3130}, {3'd7}}, {tmp_190_reg_2915}}, {6'd32}};
assign or_ln14_49_fu_2117_p3 = {{tmp_192_reg_3130}, {4'd15}};
assign or_ln14_4_fu_1529_p4 = {{{tmp_1_reg_2849}, {1'd1}}, {tmp_190_fu_1522_p3}};
assign or_ln14_50_fu_2589_p3 = {{tmp_192_reg_3130}, {10'd960}};
assign or_ln14_51_fu_2615_p3 = {{tmp_192_reg_3130}, {10'd992}};
assign or_ln14_5_fu_2382_p3 = {{tmp_1_reg_2849}, {1'd1}};
assign or_ln14_6_fu_1572_p4 = {{{tmp_1_reg_2849}, {1'd1}}, {conv3_udiv}};
assign or_ln14_7_fu_1586_p5 = {{{{tmp_1_reg_2849}, {1'd1}}, {tmp_190_reg_2915}}, {6'd32}};
assign or_ln14_8_fu_1544_p3 = {{tmp_1_reg_2849}, {2'd3}};
assign or_ln14_9_fu_1681_p3 = {{tmp_1_reg_2849}, {8'd192}};
assign or_ln14_s_fu_1699_p3 = {{tmp_1_reg_2849}, {8'd224}};
assign or_ln1_fu_1452_p3 = {{lshr_ln9_fu_1402_p4}, {6'd32}};
assign or_ln_fu_1438_p3 = {{tmp_1_fu_1428_p4}, {p_cast_fu_1382_p1}};
assign p_cast_fu_1382_p1 = empty_11;
assign select_ln14_30_fu_2666_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_31_fu_2683_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign tmp_110_fu_1607_p4 = {{s_1_reg_2820[5:4]}};
assign tmp_114_fu_1616_p4 = {{s_1_reg_2820[2:1]}};
assign tmp_187_fu_1831_p4 = {{s_1_reg_2820[3:2]}};
assign tmp_190_fu_1522_p3 = s_1_reg_2820[32'd1];
assign tmp_191_fu_1641_p3 = s_1_reg_2820[32'd2];
assign tmp_192_fu_1799_p3 = s_1_reg_2820[32'd5];
assign tmp_193_fu_1920_p3 = s_1_reg_2820[32'd3];
assign tmp_1_fu_1428_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_s_fu_1806_p4 = {{s_1_reg_2820[3:1]}};
assign zext_ln14_10_fu_1893_p1 = add_ln14_7_fu_1888_p2;
assign zext_ln14_11_fu_1914_p1 = add_ln14_8_fu_1909_p2;
assign zext_ln14_12_fu_1990_p1 = or_ln14_19_fu_1982_p4;
assign zext_ln14_13_fu_2011_p1 = add_ln14_9_fu_2006_p2;
assign zext_ln14_14_fu_2079_p1 = add_ln14_10_fu_2074_p2;
assign zext_ln14_15_fu_2097_p1 = add_ln14_11_fu_2092_p2;
assign zext_ln14_16_fu_2159_p1 = or_ln14_26_fu_2150_p5;
assign zext_ln14_17_fu_2180_p1 = add_ln14_12_fu_2175_p2;
assign zext_ln14_18_fu_2221_p1 = add_ln14_13_fu_2216_p2;
assign zext_ln14_19_fu_2242_p1 = add_ln14_14_fu_2237_p2;
assign zext_ln14_1_fu_1466_p1 = add_ln14_fu_1460_p2;
assign zext_ln14_20_fu_2282_p1 = or_ln14_33_fu_2271_p6;
assign zext_ln14_21_fu_2306_p1 = add_ln14_15_fu_2301_p2;
assign zext_ln14_22_fu_2347_p1 = add_ln14_16_fu_2342_p2;
assign zext_ln14_23_fu_2368_p1 = add_ln14_17_fu_2363_p2;
assign zext_ln14_24_fu_2413_p1 = or_ln14_40_fu_2405_p4;
assign zext_ln14_25_fu_2434_p1 = add_ln14_18_fu_2429_p2;
assign zext_ln14_26_fu_2475_p1 = add_ln14_19_fu_2470_p2;
assign zext_ln14_27_fu_2496_p1 = add_ln14_20_fu_2491_p2;
assign zext_ln14_28_fu_2542_p1 = or_ln14_47_fu_2534_p4;
assign zext_ln14_29_fu_2563_p1 = add_ln14_21_fu_2558_p2;
assign zext_ln14_2_fu_1498_p1 = add_ln14_1_fu_1493_p2;
assign zext_ln14_30_fu_2601_p1 = add_ln14_22_fu_2596_p2;
assign zext_ln14_31_fu_2627_p1 = add_ln14_23_fu_2622_p2;
assign zext_ln14_32_fu_1480_p1 = or_ln14_1_fu_1472_p3;
assign zext_ln14_33_fu_1538_p1 = or_ln14_4_fu_1529_p4;
assign zext_ln14_34_fu_2389_p1 = or_ln14_5_fu_2382_p3;
assign zext_ln14_35_fu_1551_p1 = or_ln14_8_fu_1544_p3;
assign zext_ln14_36_fu_1635_p1 = or_ln14_10_fu_1625_p4;
assign zext_ln14_37_fu_2518_p1 = or_ln14_11_fu_2510_p4;
assign zext_ln14_38_fu_1660_p1 = or_ln14_14_fu_1648_p5;
assign zext_ln14_39_fu_1725_p1 = or_ln14_17_fu_1717_p4;
assign zext_ln14_3_fu_1516_p1 = add_ln14_2_fu_1511_p2;
assign zext_ln14_40_fu_2650_p1 = or_ln14_18_fu_2643_p3;
assign zext_ln14_41_fu_1738_p1 = or_ln14_21_fu_1731_p3;
assign zext_ln14_42_fu_1825_p1 = or_ln14_24_fu_1815_p4;
assign zext_ln14_43_fu_2714_p1 = or_ln14_25_fu_2706_p4;
assign zext_ln14_44_fu_1852_p1 = or_ln14_28_fu_1840_p5;
assign zext_ln14_45_fu_1939_p1 = or_ln14_31_fu_1927_p6;
assign zext_ln14_46_fu_2730_p1 = or_ln14_32_fu_2720_p5;
assign zext_ln14_47_fu_1956_p1 = or_ln14_35_fu_1945_p5;
assign zext_ln14_48_fu_2025_p1 = or_ln14_38_fu_2017_p4;
assign zext_ln14_49_fu_2744_p1 = or_ln14_39_fu_2736_p4;
assign zext_ln14_4_fu_1580_p1 = or_ln14_6_fu_1572_p4;
assign zext_ln14_50_fu_2041_p1 = or_ln14_42_fu_2031_p5;
assign zext_ln14_51_fu_2111_p1 = or_ln14_45_fu_2103_p4;
assign zext_ln14_52_fu_2757_p1 = or_ln14_46_fu_2750_p3;
assign zext_ln14_53_fu_2124_p1 = or_ln14_49_fu_2117_p3;
assign zext_ln14_5_fu_1601_p1 = add_ln14_3_fu_1596_p2;
assign zext_ln14_6_fu_1693_p1 = add_ln14_4_fu_1688_p2;
assign zext_ln14_7_fu_1711_p1 = add_ln14_5_fu_1706_p2;
assign zext_ln14_8_fu_1772_p1 = or_ln14_12_fu_1764_p4;
assign zext_ln14_9_fu_1793_p1 = add_ln14_6_fu_1788_p2;
assign zext_ln14_fu_1446_p1 = or_ln_fu_1438_p3;
assign zext_ln9_1_fu_2256_p1 = lshr_ln9_1_reg_2837;
assign zext_ln9_fu_1412_p1 = lshr_ln9_fu_1402_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2786[10:7] <= 4'b0000;
    p_cast_reg_2813[7] <= 1'b0;
    zext_ln9_1_reg_3522[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_34_reg_3608[0] <= 1'b1;
    zext_ln14_34_reg_3608[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_37_reg_3694[1] <= 1'b1;
    zext_ln14_37_reg_3694[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_40_reg_3780[1:0] <= 2'b11;
    zext_ln14_40_reg_3780[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_43_reg_3836[2] <= 1'b1;
    zext_ln14_43_reg_3836[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_46_reg_3842[0] <= 1'b1;
    zext_ln14_46_reg_3842[2:2] <= 1'b1;
    zext_ln14_46_reg_3842[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_49_reg_3848[2:1] <= 2'b11;
    zext_ln14_49_reg_3848[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_52_reg_3854[2:0] <= 3'b111;
    zext_ln14_52_reg_3854[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 