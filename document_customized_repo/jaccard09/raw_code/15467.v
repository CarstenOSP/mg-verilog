module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_274_p_din0,grp_fu_274_p_din1,grp_fu_274_p_opcode,grp_fu_274_p_dout0,grp_fu_274_p_ce,grp_fu_668_p_din0,grp_fu_668_p_din1,grp_fu_668_p_opcode,grp_fu_668_p_dout0,grp_fu_668_p_ce); 
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
output  [13:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [13:0] llike_address1;
output   llike_ce1;
output   llike_we1;
output  [63:0] llike_d1;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_274_p_din0;
output  [63:0] grp_fu_274_p_din1;
output  [1:0] grp_fu_274_p_opcode;
input  [63:0] grp_fu_274_p_dout0;
output   grp_fu_274_p_ce;
output  [63:0] grp_fu_668_p_din0;
output  [63:0] grp_fu_668_p_din1;
output  [1:0] grp_fu_668_p_opcode;
input  [63:0] grp_fu_668_p_dout0;
output   grp_fu_668_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_reg_2548;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_999;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
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
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1003;
reg   [63:0] reg_1007;
reg   [63:0] reg_1011;
reg   [63:0] reg_1015;
reg   [63:0] reg_1020;
wire   [11:0] zext_ln13_cast_fu_1025_p1;
reg   [11:0] zext_ln13_cast_reg_2507;
reg   [6:0] s_1_reg_2534;
wire   [63:0] zext_ln13_1_fu_1045_p1;
reg   [63:0] zext_ln13_1_reg_2552;
wire   [3:0] tmp_cast_fu_1050_p4;
reg   [3:0] tmp_cast_reg_2562;
wire   [63:0] zext_ln14_1_fu_1091_p1;
reg   [63:0] zext_ln14_1_reg_2575;
wire   [63:0] zext_ln14_3_fu_1122_p1;
reg   [63:0] zext_ln14_3_reg_2590;
wire   [63:0] zext_ln14_5_fu_1151_p1;
reg   [63:0] zext_ln14_5_reg_2605;
wire   [63:0] bitcast_ln14_fu_1173_p1;
wire   [63:0] bitcast_ln14_1_fu_1178_p1;
wire   [63:0] bitcast_ln14_2_fu_1183_p1;
wire   [63:0] bitcast_ln14_3_fu_1188_p1;
wire   [2:0] tmp_112_fu_1193_p4;
reg   [2:0] tmp_112_reg_2640;
wire   [63:0] zext_ln14_8_fu_1210_p1;
reg   [63:0] zext_ln14_8_reg_2648;
wire   [0:0] tmp_4_fu_1229_p3;
reg   [0:0] tmp_4_reg_2663;
wire   [63:0] zext_ln14_10_fu_1248_p1;
reg   [63:0] zext_ln14_10_reg_2673;
wire   [63:0] bitcast_ln14_4_fu_1275_p1;
wire   [63:0] bitcast_ln14_5_fu_1280_p1;
wire   [63:0] bitcast_ln14_6_fu_1285_p1;
wire   [63:0] bitcast_ln14_7_fu_1290_p1;
wire   [63:0] zext_ln14_12_fu_1302_p1;
reg   [63:0] zext_ln14_12_reg_2708;
wire   [63:0] zext_ln14_15_fu_1331_p1;
reg   [63:0] zext_ln14_15_reg_2723;
wire   [63:0] bitcast_ln14_8_fu_1353_p1;
wire   [63:0] bitcast_ln14_9_fu_1358_p1;
wire   [63:0] bitcast_ln14_10_fu_1363_p1;
wire   [63:0] bitcast_ln14_11_fu_1368_p1;
wire   [1:0] tmp_119_fu_1373_p4;
reg   [1:0] tmp_119_reg_2758;
wire   [63:0] zext_ln14_17_fu_1390_p1;
reg   [63:0] zext_ln14_17_reg_2774;
wire   [0:0] tmp_5_fu_1395_p3;
reg   [0:0] tmp_5_reg_2784;
wire   [1:0] tmp_123_fu_1418_p4;
reg   [1:0] tmp_123_reg_2802;
wire   [63:0] zext_ln14_19_fu_1439_p1;
reg   [63:0] zext_ln14_19_reg_2808;
wire   [63:0] bitcast_ln14_12_fu_1466_p1;
wire   [63:0] bitcast_ln14_13_fu_1471_p1;
wire   [63:0] bitcast_ln14_14_fu_1476_p1;
wire   [63:0] bitcast_ln14_15_fu_1481_p1;
wire   [63:0] zext_ln14_22_fu_1496_p1;
reg   [63:0] zext_ln14_22_reg_2843;
wire   [63:0] zext_ln14_24_fu_1531_p1;
reg   [63:0] zext_ln14_24_reg_2858;
wire   [63:0] bitcast_ln14_16_fu_1556_p1;
wire   [63:0] bitcast_ln14_17_fu_1561_p1;
wire   [63:0] bitcast_ln14_18_fu_1566_p1;
wire   [63:0] bitcast_ln14_19_fu_1571_p1;
wire   [63:0] zext_ln14_26_fu_1583_p1;
reg   [63:0] zext_ln14_26_reg_2893;
wire   [63:0] zext_ln14_29_fu_1611_p1;
reg   [63:0] zext_ln14_29_reg_2908;
wire   [63:0] bitcast_ln14_20_fu_1636_p1;
wire   [63:0] bitcast_ln14_21_fu_1641_p1;
wire   [63:0] bitcast_ln14_22_fu_1646_p1;
wire   [63:0] bitcast_ln14_23_fu_1651_p1;
wire   [63:0] zext_ln14_31_fu_1663_p1;
reg   [63:0] zext_ln14_31_reg_2943;
wire   [63:0] zext_ln14_33_fu_1692_p1;
reg   [63:0] zext_ln14_33_reg_2958;
wire   [63:0] bitcast_ln14_24_fu_1714_p1;
wire   [63:0] bitcast_ln14_25_fu_1719_p1;
wire   [63:0] bitcast_ln14_26_fu_1724_p1;
wire   [63:0] bitcast_ln14_27_fu_1729_p1;
wire   [0:0] tmp_6_fu_1734_p3;
reg   [0:0] tmp_6_reg_2993;
wire   [63:0] zext_ln14_36_fu_1749_p1;
reg   [63:0] zext_ln14_36_reg_3025;
wire   [1:0] tmp_s_fu_1754_p4;
reg   [1:0] tmp_s_reg_3035;
wire   [63:0] zext_ln14_38_fu_1800_p1;
reg   [63:0] zext_ln14_38_reg_3048;
wire   [63:0] bitcast_ln14_28_fu_1827_p1;
wire   [63:0] bitcast_ln14_29_fu_1832_p1;
wire   [63:0] bitcast_ln14_30_fu_1837_p1;
wire   [63:0] bitcast_ln14_31_fu_1842_p1;
wire   [63:0] zext_ln14_40_fu_1857_p1;
reg   [63:0] zext_ln14_40_reg_3083;
wire   [63:0] zext_ln14_43_fu_1892_p1;
reg   [63:0] zext_ln14_43_reg_3098;
wire   [63:0] bitcast_ln14_32_fu_1917_p1;
wire   [63:0] bitcast_ln14_33_fu_1922_p1;
wire   [63:0] bitcast_ln14_34_fu_1927_p1;
wire   [63:0] bitcast_ln14_35_fu_1932_p1;
wire   [0:0] tmp_7_fu_1937_p3;
reg   [0:0] tmp_7_reg_3133;
wire   [63:0] zext_ln14_45_fu_1955_p1;
reg   [63:0] zext_ln14_45_reg_3141;
wire   [63:0] zext_ln14_47_fu_1991_p1;
reg   [63:0] zext_ln14_47_reg_3156;
wire   [63:0] bitcast_ln14_36_fu_2020_p1;
wire   [63:0] bitcast_ln14_37_fu_2025_p1;
wire   [63:0] bitcast_ln14_38_fu_2030_p1;
wire   [63:0] bitcast_ln14_39_fu_2035_p1;
wire   [63:0] zext_ln14_50_fu_2050_p1;
reg   [63:0] zext_ln14_50_reg_3191;
wire   [63:0] zext_ln14_52_fu_2085_p1;
reg   [63:0] zext_ln14_52_reg_3206;
wire   [63:0] bitcast_ln14_40_fu_2110_p1;
wire   [63:0] bitcast_ln14_41_fu_2115_p1;
wire   [63:0] bitcast_ln14_42_fu_2120_p1;
wire   [63:0] bitcast_ln14_43_fu_2125_p1;
wire   [63:0] zext_ln14_54_fu_2137_p1;
reg   [63:0] zext_ln14_54_reg_3241;
wire   [63:0] zext_ln14_56_fu_2166_p1;
reg   [63:0] zext_ln14_56_reg_3256;
wire   [63:0] bitcast_ln14_44_fu_2191_p1;
wire   [63:0] bitcast_ln14_45_fu_2196_p1;
wire   [63:0] bitcast_ln14_46_fu_2201_p1;
wire   [63:0] bitcast_ln14_47_fu_2206_p1;
wire   [63:0] zext_ln14_57_fu_2221_p1;
reg   [63:0] zext_ln14_57_reg_3291;
wire   [63:0] zext_ln14_58_fu_2256_p1;
reg   [63:0] zext_ln14_58_reg_3306;
wire   [63:0] bitcast_ln14_48_fu_2281_p1;
wire   [63:0] bitcast_ln14_49_fu_2286_p1;
wire   [63:0] bitcast_ln14_50_fu_2291_p1;
wire   [63:0] bitcast_ln14_51_fu_2296_p1;
wire   [63:0] zext_ln14_59_fu_2308_p1;
reg   [63:0] zext_ln14_59_reg_3341;
wire   [63:0] zext_ln14_60_fu_2336_p1;
reg   [63:0] zext_ln14_60_reg_3356;
wire   [63:0] bitcast_ln14_52_fu_2361_p1;
wire   [63:0] bitcast_ln14_53_fu_2366_p1;
wire   [63:0] bitcast_ln14_54_fu_2371_p1;
wire   [63:0] bitcast_ln14_55_fu_2376_p1;
wire   [63:0] zext_ln14_61_fu_2388_p1;
reg   [63:0] zext_ln14_61_reg_3391;
wire   [63:0] zext_ln14_62_fu_2417_p1;
reg   [63:0] zext_ln14_62_reg_3406;
wire   [63:0] bitcast_ln14_56_fu_2449_p1;
wire   [63:0] bitcast_ln14_57_fu_2454_p1;
wire   [63:0] bitcast_ln14_58_fu_2459_p1;
wire   [63:0] bitcast_ln14_59_fu_2464_p1;
wire   [63:0] bitcast_ln14_60_fu_2469_p1;
wire   [63:0] bitcast_ln14_61_fu_2474_p1;
wire   [63:0] bitcast_ln14_62_fu_2479_p1;
wire   [63:0] bitcast_ln14_63_fu_2484_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1068_p1;
wire   [63:0] zext_ln14_2_fu_1110_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_1139_p1;
wire   [63:0] zext_ln14_6_fu_1168_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_1224_p1;
wire   [63:0] zext_ln14_9_fu_1270_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1319_p1;
wire   [63:0] zext_ln14_13_fu_1348_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1413_p1;
wire   [63:0] zext_ln14_16_fu_1461_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1516_p1;
wire   [63:0] zext_ln14_20_fu_1551_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1596_p1;
wire   [63:0] zext_ln14_23_fu_1631_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1680_p1;
wire   [63:0] zext_ln14_27_fu_1709_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_28_fu_1774_p1;
wire   [63:0] zext_ln14_30_fu_1822_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_32_fu_1877_p1;
wire   [63:0] zext_ln14_34_fu_1912_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_35_fu_1972_p1;
wire   [63:0] zext_ln14_37_fu_2015_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_39_fu_2070_p1;
wire   [63:0] zext_ln14_41_fu_2105_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_42_fu_2151_p1;
wire   [63:0] zext_ln14_44_fu_2186_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_46_fu_2241_p1;
wire   [63:0] zext_ln14_48_fu_2276_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_49_fu_2321_p1;
wire   [63:0] zext_ln14_51_fu_2356_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_53_fu_2405_p1;
wire   [63:0] zext_ln14_55_fu_2434_p1;
reg   [6:0] s_fu_180;
wire   [6:0] add_ln13_fu_2439_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg    llike_we1_local;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg   [63:0] grp_fu_991_p0;
reg   [63:0] grp_fu_991_p1;
reg   [63:0] grp_fu_995_p0;
reg   [63:0] grp_fu_995_p1;
wire   [11:0] or_ln_fu_1060_p3;
wire   [4:0] tmp_108_fu_1073_p4;
wire   [5:0] or_ln1_fu_1083_p3;
wire   [11:0] shl_ln_fu_1096_p3;
wire   [11:0] add_ln14_fu_1104_p2;
wire   [5:0] or_ln13_1_fu_1115_p3;
wire   [11:0] shl_ln14_1_fu_1127_p3;
wire   [11:0] add_ln14_1_fu_1134_p2;
wire   [5:0] or_ln13_2_fu_1144_p3;
wire   [11:0] shl_ln14_2_fu_1156_p3;
wire   [11:0] add_ln14_2_fu_1163_p2;
wire   [5:0] or_ln13_3_fu_1202_p3;
wire   [11:0] or_ln14_1_fu_1215_p4;
wire   [5:0] or_ln13_4_fu_1236_p5;
wire   [11:0] shl_ln14_3_fu_1253_p5;
wire   [11:0] add_ln14_3_fu_1265_p2;
wire   [5:0] or_ln13_5_fu_1295_p3;
wire   [11:0] shl_ln14_4_fu_1307_p3;
wire   [11:0] add_ln14_4_fu_1314_p2;
wire   [5:0] or_ln13_6_fu_1324_p3;
wire   [11:0] shl_ln14_5_fu_1336_p3;
wire   [11:0] add_ln14_5_fu_1343_p2;
wire   [5:0] or_ln13_7_fu_1382_p3;
wire   [11:0] or_ln14_2_fu_1402_p5;
wire   [5:0] or_ln13_8_fu_1427_p5;
wire   [11:0] shl_ln14_6_fu_1444_p5;
wire   [11:0] add_ln14_6_fu_1456_p2;
wire   [5:0] or_ln13_9_fu_1486_p5;
wire   [11:0] shl_ln14_7_fu_1501_p5;
wire   [11:0] add_ln14_7_fu_1511_p2;
wire   [5:0] or_ln13_s_fu_1521_p5;
wire   [11:0] shl_ln14_8_fu_1536_p5;
wire   [11:0] add_ln14_8_fu_1546_p2;
wire   [5:0] or_ln13_10_fu_1576_p3;
wire   [11:0] or_ln14_3_fu_1588_p4;
wire   [5:0] or_ln13_11_fu_1601_p5;
wire   [11:0] shl_ln14_9_fu_1616_p5;
wire   [11:0] add_ln14_9_fu_1626_p2;
wire   [5:0] or_ln13_12_fu_1656_p3;
wire   [11:0] shl_ln14_s_fu_1668_p3;
wire   [11:0] add_ln14_10_fu_1675_p2;
wire   [5:0] or_ln13_13_fu_1685_p3;
wire   [11:0] shl_ln14_10_fu_1697_p3;
wire   [11:0] add_ln14_11_fu_1704_p2;
wire   [5:0] or_ln13_14_fu_1741_p3;
wire   [11:0] or_ln14_4_fu_1763_p5;
wire   [2:0] tmp_132_fu_1779_p4;
wire   [5:0] or_ln13_15_fu_1788_p5;
wire   [11:0] shl_ln14_11_fu_1805_p5;
wire   [11:0] add_ln14_12_fu_1817_p2;
wire   [5:0] or_ln13_16_fu_1847_p5;
wire   [11:0] shl_ln14_12_fu_1862_p5;
wire   [11:0] add_ln14_13_fu_1872_p2;
wire   [5:0] or_ln13_17_fu_1882_p5;
wire   [11:0] shl_ln14_13_fu_1897_p5;
wire   [11:0] add_ln14_14_fu_1907_p2;
wire   [5:0] or_ln13_18_fu_1944_p5;
wire   [11:0] or_ln14_5_fu_1960_p6;
wire   [5:0] or_ln13_19_fu_1977_p7;
wire   [11:0] shl_ln14_14_fu_1996_p7;
wire   [11:0] add_ln14_15_fu_2010_p2;
wire   [5:0] or_ln13_20_fu_2040_p5;
wire   [11:0] shl_ln14_15_fu_2055_p5;
wire   [11:0] add_ln14_16_fu_2065_p2;
wire   [5:0] or_ln13_21_fu_2075_p5;
wire   [11:0] shl_ln14_16_fu_2090_p5;
wire   [11:0] add_ln14_17_fu_2100_p2;
wire   [5:0] or_ln13_22_fu_2130_p3;
wire   [11:0] or_ln14_6_fu_2142_p5;
wire   [5:0] or_ln13_23_fu_2156_p5;
wire   [11:0] shl_ln14_17_fu_2171_p5;
wire   [11:0] add_ln14_18_fu_2181_p2;
wire   [5:0] or_ln13_24_fu_2211_p5;
wire   [11:0] shl_ln14_18_fu_2226_p5;
wire   [11:0] add_ln14_19_fu_2236_p2;
wire   [5:0] or_ln13_25_fu_2246_p5;
wire   [11:0] shl_ln14_19_fu_2261_p5;
wire   [11:0] add_ln14_20_fu_2271_p2;
wire   [5:0] or_ln13_26_fu_2301_p3;
wire   [11:0] or_ln14_7_fu_2313_p4;
wire   [5:0] or_ln13_27_fu_2326_p5;
wire   [11:0] shl_ln14_20_fu_2341_p5;
wire   [11:0] add_ln14_21_fu_2351_p2;
wire   [5:0] or_ln13_28_fu_2381_p3;
wire   [11:0] shl_ln14_21_fu_2393_p3;
wire   [11:0] add_ln14_22_fu_2400_p2;
wire   [5:0] or_ln13_29_fu_2410_p3;
wire   [11:0] shl_ln14_22_fu_2422_p3;
wire   [11:0] add_ln14_23_fu_2429_p2;
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
#0 s_fu_180 = 7'd0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_180 <= 7'd0;
    end else if (((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_180 <= add_ln13_fu_2439_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1003 <= emission_q1;
        reg_1007 <= init_q0;
        reg_1011 <= emission_q0;
        reg_999 <= init_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1015 <= grp_fu_274_p_dout0;
        reg_1020 <= grp_fu_668_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_1_reg_2534 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_2562 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_2548 <= ap_sig_allocacmp_s_1[32'd6];
        zext_ln13_1_reg_2552[6 : 0] <= zext_ln13_1_fu_1045_p1[6 : 0];
        zext_ln13_cast_reg_2507[7 : 0] <= zext_ln13_cast_fu_1025_p1[7 : 0];
        zext_ln14_1_reg_2575[5 : 1] <= zext_ln14_1_fu_1091_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_112_reg_2640 <= {{s_1_reg_2534[5:3]}};
        tmp_4_reg_2663 <= s_1_reg_2534[32'd1];
        zext_ln14_10_reg_2673[1] <= zext_ln14_10_fu_1248_p1[1];
zext_ln14_10_reg_2673[5 : 3] <= zext_ln14_10_fu_1248_p1[5 : 3];
        zext_ln14_8_reg_2648[5 : 3] <= zext_ln14_8_fu_1210_p1[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_119_reg_2758 <= {{s_1_reg_2534[5:4]}};
        tmp_123_reg_2802 <= {{s_1_reg_2534[2:1]}};
        tmp_5_reg_2784 <= s_1_reg_2534[32'd2];
        zext_ln14_17_reg_2774[5 : 4] <= zext_ln14_17_fu_1390_p1[5 : 4];
        zext_ln14_19_reg_2808[2 : 1] <= zext_ln14_19_fu_1439_p1[2 : 1];
zext_ln14_19_reg_2808[5 : 4] <= zext_ln14_19_fu_1439_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_6_reg_2993 <= s_1_reg_2534[32'd5];
        tmp_s_reg_3035 <= {{s_1_reg_2534[3:2]}};
        zext_ln14_36_reg_3025[5] <= zext_ln14_36_fu_1749_p1[5];
        zext_ln14_38_reg_3048[3 : 1] <= zext_ln14_38_fu_1800_p1[3 : 1];
zext_ln14_38_reg_3048[5] <= zext_ln14_38_fu_1800_p1[5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_7_reg_3133 <= s_1_reg_2534[32'd3];
        zext_ln14_45_reg_3141[3] <= zext_ln14_45_fu_1955_p1[3];
zext_ln14_45_reg_3141[5] <= zext_ln14_45_fu_1955_p1[5];
        zext_ln14_47_reg_3156[1] <= zext_ln14_47_fu_1991_p1[1];
zext_ln14_47_reg_3156[3] <= zext_ln14_47_fu_1991_p1[3];
zext_ln14_47_reg_3156[5] <= zext_ln14_47_fu_1991_p1[5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln14_12_reg_2708[5 : 3] <= zext_ln14_12_fu_1302_p1[5 : 3];
        zext_ln14_15_reg_2723[5 : 3] <= zext_ln14_15_fu_1331_p1[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln14_22_reg_2843[2] <= zext_ln14_22_fu_1496_p1[2];
zext_ln14_22_reg_2843[5 : 4] <= zext_ln14_22_fu_1496_p1[5 : 4];
        zext_ln14_24_reg_2858[2] <= zext_ln14_24_fu_1531_p1[2];
zext_ln14_24_reg_2858[5 : 4] <= zext_ln14_24_fu_1531_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln14_26_reg_2893[5 : 4] <= zext_ln14_26_fu_1583_p1[5 : 4];
        zext_ln14_29_reg_2908[1] <= zext_ln14_29_fu_1611_p1[1];
zext_ln14_29_reg_2908[5 : 4] <= zext_ln14_29_fu_1611_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln14_31_reg_2943[5 : 4] <= zext_ln14_31_fu_1663_p1[5 : 4];
        zext_ln14_33_reg_2958[5 : 4] <= zext_ln14_33_fu_1692_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        zext_ln14_3_reg_2590[5 : 2] <= zext_ln14_3_fu_1122_p1[5 : 2];
        zext_ln14_5_reg_2605[5 : 2] <= zext_ln14_5_fu_1151_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        zext_ln14_40_reg_3083[3 : 2] <= zext_ln14_40_fu_1857_p1[3 : 2];
zext_ln14_40_reg_3083[5] <= zext_ln14_40_fu_1857_p1[5];
        zext_ln14_43_reg_3098[3 : 2] <= zext_ln14_43_fu_1892_p1[3 : 2];
zext_ln14_43_reg_3098[5] <= zext_ln14_43_fu_1892_p1[5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        zext_ln14_50_reg_3191[3] <= zext_ln14_50_fu_2050_p1[3];
zext_ln14_50_reg_3191[5] <= zext_ln14_50_fu_2050_p1[5];
        zext_ln14_52_reg_3206[3] <= zext_ln14_52_fu_2085_p1[3];
zext_ln14_52_reg_3206[5] <= zext_ln14_52_fu_2085_p1[5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        zext_ln14_54_reg_3241[5] <= zext_ln14_54_fu_2137_p1[5];
        zext_ln14_56_reg_3256[2 : 1] <= zext_ln14_56_fu_2166_p1[2 : 1];
zext_ln14_56_reg_3256[5] <= zext_ln14_56_fu_2166_p1[5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        zext_ln14_57_reg_3291[2] <= zext_ln14_57_fu_2221_p1[2];
zext_ln14_57_reg_3291[5] <= zext_ln14_57_fu_2221_p1[5];
        zext_ln14_58_reg_3306[2] <= zext_ln14_58_fu_2256_p1[2];
zext_ln14_58_reg_3306[5] <= zext_ln14_58_fu_2256_p1[5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        zext_ln14_59_reg_3341[5] <= zext_ln14_59_fu_2308_p1[5];
        zext_ln14_60_reg_3356[1] <= zext_ln14_60_fu_2336_p1[1];
zext_ln14_60_reg_3356[5] <= zext_ln14_60_fu_2336_p1[5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        zext_ln14_61_reg_3391[5] <= zext_ln14_61_fu_2388_p1[5];
        zext_ln14_62_reg_3406[5] <= zext_ln14_62_fu_2417_p1[5];
    end
end
always @ (*) begin
    if (((tmp_reg_2548 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_180;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address0_local = zext_ln14_55_fu_2434_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address0_local = zext_ln14_51_fu_2356_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address0_local = zext_ln14_48_fu_2276_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address0_local = zext_ln14_44_fu_2186_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address0_local = zext_ln14_41_fu_2105_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address0_local = zext_ln14_37_fu_2015_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address0_local = zext_ln14_34_fu_1912_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address0_local = zext_ln14_30_fu_1822_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1709_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1551_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1348_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_1168_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_1110_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address1_local = zext_ln14_53_fu_2405_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address1_local = zext_ln14_49_fu_2321_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address1_local = zext_ln14_46_fu_2241_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address1_local = zext_ln14_42_fu_2151_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address1_local = zext_ln14_39_fu_2070_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address1_local = zext_ln14_35_fu_1972_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address1_local = zext_ln14_32_fu_1877_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address1_local = zext_ln14_28_fu_1774_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1596_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1413_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1319_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_1224_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_1068_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_991_p0 = bitcast_ln14_60_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_991_p0 = bitcast_ln14_56_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_991_p0 = bitcast_ln14_52_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_991_p0 = bitcast_ln14_48_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_991_p0 = bitcast_ln14_44_fu_2191_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_991_p0 = bitcast_ln14_40_fu_2110_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_991_p0 = bitcast_ln14_36_fu_2020_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_991_p0 = bitcast_ln14_32_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_991_p0 = bitcast_ln14_28_fu_1827_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_991_p0 = bitcast_ln14_24_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_991_p0 = bitcast_ln14_20_fu_1636_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_991_p0 = bitcast_ln14_16_fu_1556_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_991_p0 = bitcast_ln14_12_fu_1466_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_991_p0 = bitcast_ln14_8_fu_1353_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_991_p0 = bitcast_ln14_4_fu_1275_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_991_p0 = bitcast_ln14_fu_1173_p1;
    end else begin
        grp_fu_991_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_991_p1 = bitcast_ln14_61_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_991_p1 = bitcast_ln14_57_fu_2454_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_991_p1 = bitcast_ln14_53_fu_2366_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_991_p1 = bitcast_ln14_49_fu_2286_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_991_p1 = bitcast_ln14_45_fu_2196_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_991_p1 = bitcast_ln14_41_fu_2115_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_991_p1 = bitcast_ln14_37_fu_2025_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_991_p1 = bitcast_ln14_33_fu_1922_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_991_p1 = bitcast_ln14_29_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_991_p1 = bitcast_ln14_25_fu_1719_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_991_p1 = bitcast_ln14_21_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_991_p1 = bitcast_ln14_17_fu_1561_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_991_p1 = bitcast_ln14_13_fu_1471_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_991_p1 = bitcast_ln14_9_fu_1358_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_991_p1 = bitcast_ln14_5_fu_1280_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_991_p1 = bitcast_ln14_1_fu_1178_p1;
    end else begin
        grp_fu_991_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_995_p0 = bitcast_ln14_62_fu_2479_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_995_p0 = bitcast_ln14_58_fu_2459_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_995_p0 = bitcast_ln14_54_fu_2371_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_995_p0 = bitcast_ln14_50_fu_2291_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_995_p0 = bitcast_ln14_46_fu_2201_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_995_p0 = bitcast_ln14_42_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_995_p0 = bitcast_ln14_38_fu_2030_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_995_p0 = bitcast_ln14_34_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_995_p0 = bitcast_ln14_30_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_995_p0 = bitcast_ln14_26_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_995_p0 = bitcast_ln14_22_fu_1646_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_995_p0 = bitcast_ln14_18_fu_1566_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_995_p0 = bitcast_ln14_14_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_995_p0 = bitcast_ln14_10_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_995_p0 = bitcast_ln14_6_fu_1285_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_995_p0 = bitcast_ln14_2_fu_1183_p1;
    end else begin
        grp_fu_995_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_995_p1 = bitcast_ln14_63_fu_2484_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_995_p1 = bitcast_ln14_59_fu_2464_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_995_p1 = bitcast_ln14_55_fu_2376_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_995_p1 = bitcast_ln14_51_fu_2296_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_995_p1 = bitcast_ln14_47_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_995_p1 = bitcast_ln14_43_fu_2125_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_995_p1 = bitcast_ln14_39_fu_2035_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_995_p1 = bitcast_ln14_35_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_995_p1 = bitcast_ln14_31_fu_1842_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_995_p1 = bitcast_ln14_27_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_995_p1 = bitcast_ln14_23_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_995_p1 = bitcast_ln14_19_fu_1571_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_995_p1 = bitcast_ln14_15_fu_1481_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_995_p1 = bitcast_ln14_11_fu_1368_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_995_p1 = bitcast_ln14_7_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_995_p1 = bitcast_ln14_3_fu_1188_p1;
    end else begin
        grp_fu_995_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address0_local = zext_ln14_62_fu_2417_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address0_local = zext_ln14_60_fu_2336_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address0_local = zext_ln14_58_fu_2256_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address0_local = zext_ln14_56_fu_2166_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address0_local = zext_ln14_52_fu_2085_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address0_local = zext_ln14_47_fu_1991_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address0_local = zext_ln14_43_fu_1892_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address0_local = zext_ln14_38_fu_1800_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_33_fu_1692_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_29_fu_1611_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_24_fu_1531_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_19_fu_1439_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_1331_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_1248_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_1151_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_1091_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address1_local = zext_ln14_61_fu_2388_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address1_local = zext_ln14_59_fu_2308_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address1_local = zext_ln14_57_fu_2221_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address1_local = zext_ln14_54_fu_2137_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address1_local = zext_ln14_50_fu_2050_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address1_local = zext_ln14_45_fu_1955_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address1_local = zext_ln14_40_fu_1857_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address1_local = zext_ln14_36_fu_1749_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_31_fu_1663_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_26_fu_1583_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_22_fu_1496_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_17_fu_1390_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_1210_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_1122_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_1045_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_address0_local = zext_ln14_62_reg_3406;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_address0_local = zext_ln14_60_reg_3356;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_58_reg_3306;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_56_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_52_reg_3206;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_47_reg_3156;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_43_reg_3098;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_38_reg_3048;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_33_reg_2958;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_29_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_address0_local = zext_ln14_24_reg_2858;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address0_local = zext_ln14_19_reg_2808;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_address0_local = zext_ln14_15_reg_2723;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_address0_local = zext_ln14_10_reg_2673;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_address0_local = zext_ln14_5_reg_2605;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address0_local = zext_ln14_1_reg_2575;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_address1_local = zext_ln14_61_reg_3391;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_address1_local = zext_ln14_59_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address1_local = zext_ln14_57_reg_3291;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address1_local = zext_ln14_54_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address1_local = zext_ln14_50_reg_3191;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address1_local = zext_ln14_45_reg_3141;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address1_local = zext_ln14_40_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address1_local = zext_ln14_36_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address1_local = zext_ln14_31_reg_2943;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address1_local = zext_ln14_26_reg_2893;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_address1_local = zext_ln14_22_reg_2843;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address1_local = zext_ln14_17_reg_2774;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_address1_local = zext_ln14_12_reg_2708;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_address1_local = zext_ln14_8_reg_2648;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_address1_local = zext_ln14_3_reg_2590;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address1_local = zext_ln13_1_reg_2552;
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2548 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we1_local = 1'b1;
    end else begin
        llike_we1_local = 1'b0;
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
assign add_ln13_fu_2439_p2 = (s_1_reg_2534 + 7'd32);
assign add_ln14_10_fu_1675_p2 = (shl_ln14_s_fu_1668_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_11_fu_1704_p2 = (shl_ln14_10_fu_1697_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_12_fu_1817_p2 = (shl_ln14_11_fu_1805_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_13_fu_1872_p2 = (shl_ln14_12_fu_1862_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_14_fu_1907_p2 = (shl_ln14_13_fu_1897_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_15_fu_2010_p2 = (shl_ln14_14_fu_1996_p7 + zext_ln13_cast_reg_2507);
assign add_ln14_16_fu_2065_p2 = (shl_ln14_15_fu_2055_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_17_fu_2100_p2 = (shl_ln14_16_fu_2090_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_18_fu_2181_p2 = (shl_ln14_17_fu_2171_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_19_fu_2236_p2 = (shl_ln14_18_fu_2226_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_1_fu_1134_p2 = (shl_ln14_1_fu_1127_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_20_fu_2271_p2 = (shl_ln14_19_fu_2261_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_21_fu_2351_p2 = (shl_ln14_20_fu_2341_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_22_fu_2400_p2 = (shl_ln14_21_fu_2393_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_23_fu_2429_p2 = (shl_ln14_22_fu_2422_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_2_fu_1163_p2 = (shl_ln14_2_fu_1156_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_3_fu_1265_p2 = (shl_ln14_3_fu_1253_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_4_fu_1314_p2 = (shl_ln14_4_fu_1307_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_5_fu_1343_p2 = (shl_ln14_5_fu_1336_p3 + zext_ln13_cast_reg_2507);
assign add_ln14_6_fu_1456_p2 = (shl_ln14_6_fu_1444_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_7_fu_1511_p2 = (shl_ln14_7_fu_1501_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_8_fu_1546_p2 = (shl_ln14_8_fu_1536_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_9_fu_1626_p2 = (shl_ln14_9_fu_1616_p5 + zext_ln13_cast_reg_2507);
assign add_ln14_fu_1104_p2 = (shl_ln_fu_1096_p3 + zext_ln13_cast_fu_1025_p1);
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
assign bitcast_ln14_10_fu_1363_p1 = reg_1007;
assign bitcast_ln14_11_fu_1368_p1 = reg_1011;
assign bitcast_ln14_12_fu_1466_p1 = reg_999;
assign bitcast_ln14_13_fu_1471_p1 = reg_1003;
assign bitcast_ln14_14_fu_1476_p1 = reg_1007;
assign bitcast_ln14_15_fu_1481_p1 = reg_1011;
assign bitcast_ln14_16_fu_1556_p1 = reg_999;
assign bitcast_ln14_17_fu_1561_p1 = reg_1003;
assign bitcast_ln14_18_fu_1566_p1 = reg_1007;
assign bitcast_ln14_19_fu_1571_p1 = reg_1011;
assign bitcast_ln14_1_fu_1178_p1 = reg_1003;
assign bitcast_ln14_20_fu_1636_p1 = reg_999;
assign bitcast_ln14_21_fu_1641_p1 = reg_1003;
assign bitcast_ln14_22_fu_1646_p1 = reg_1007;
assign bitcast_ln14_23_fu_1651_p1 = reg_1011;
assign bitcast_ln14_24_fu_1714_p1 = reg_999;
assign bitcast_ln14_25_fu_1719_p1 = reg_1003;
assign bitcast_ln14_26_fu_1724_p1 = reg_1007;
assign bitcast_ln14_27_fu_1729_p1 = reg_1011;
assign bitcast_ln14_28_fu_1827_p1 = reg_999;
assign bitcast_ln14_29_fu_1832_p1 = reg_1003;
assign bitcast_ln14_2_fu_1183_p1 = reg_1007;
assign bitcast_ln14_30_fu_1837_p1 = reg_1007;
assign bitcast_ln14_31_fu_1842_p1 = reg_1011;
assign bitcast_ln14_32_fu_1917_p1 = reg_999;
assign bitcast_ln14_33_fu_1922_p1 = reg_1003;
assign bitcast_ln14_34_fu_1927_p1 = reg_1007;
assign bitcast_ln14_35_fu_1932_p1 = reg_1011;
assign bitcast_ln14_36_fu_2020_p1 = reg_999;
assign bitcast_ln14_37_fu_2025_p1 = reg_1003;
assign bitcast_ln14_38_fu_2030_p1 = reg_1007;
assign bitcast_ln14_39_fu_2035_p1 = reg_1011;
assign bitcast_ln14_3_fu_1188_p1 = reg_1011;
assign bitcast_ln14_40_fu_2110_p1 = reg_999;
assign bitcast_ln14_41_fu_2115_p1 = reg_1003;
assign bitcast_ln14_42_fu_2120_p1 = reg_1007;
assign bitcast_ln14_43_fu_2125_p1 = reg_1011;
assign bitcast_ln14_44_fu_2191_p1 = reg_999;
assign bitcast_ln14_45_fu_2196_p1 = reg_1003;
assign bitcast_ln14_46_fu_2201_p1 = reg_1007;
assign bitcast_ln14_47_fu_2206_p1 = reg_1011;
assign bitcast_ln14_48_fu_2281_p1 = reg_999;
assign bitcast_ln14_49_fu_2286_p1 = reg_1003;
assign bitcast_ln14_4_fu_1275_p1 = reg_999;
assign bitcast_ln14_50_fu_2291_p1 = reg_1007;
assign bitcast_ln14_51_fu_2296_p1 = reg_1011;
assign bitcast_ln14_52_fu_2361_p1 = reg_999;
assign bitcast_ln14_53_fu_2366_p1 = reg_1003;
assign bitcast_ln14_54_fu_2371_p1 = reg_1007;
assign bitcast_ln14_55_fu_2376_p1 = reg_1011;
assign bitcast_ln14_56_fu_2449_p1 = reg_999;
assign bitcast_ln14_57_fu_2454_p1 = reg_1003;
assign bitcast_ln14_58_fu_2459_p1 = reg_1007;
assign bitcast_ln14_59_fu_2464_p1 = reg_1011;
assign bitcast_ln14_5_fu_1280_p1 = reg_1003;
assign bitcast_ln14_60_fu_2469_p1 = reg_999;
assign bitcast_ln14_61_fu_2474_p1 = reg_1003;
assign bitcast_ln14_62_fu_2479_p1 = reg_1007;
assign bitcast_ln14_63_fu_2484_p1 = reg_1011;
assign bitcast_ln14_6_fu_1285_p1 = reg_1007;
assign bitcast_ln14_7_fu_1290_p1 = reg_1011;
assign bitcast_ln14_8_fu_1353_p1 = reg_999;
assign bitcast_ln14_9_fu_1358_p1 = reg_1003;
assign bitcast_ln14_fu_1173_p1 = reg_999;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_274_p_ce = 1'b1;
assign grp_fu_274_p_din0 = grp_fu_991_p0;
assign grp_fu_274_p_din1 = grp_fu_991_p1;
assign grp_fu_274_p_opcode = 2'd0;
assign grp_fu_668_p_ce = 1'b1;
assign grp_fu_668_p_din0 = grp_fu_995_p0;
assign grp_fu_668_p_din1 = grp_fu_995_p1;
assign grp_fu_668_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = reg_1020;
assign llike_d1 = reg_1015;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign or_ln13_10_fu_1576_p3 = {{tmp_119_reg_2758}, {4'd12}};
assign or_ln13_11_fu_1601_p5 = {{{{tmp_119_reg_2758}, {2'd3}}, {tmp_4_reg_2663}}, {1'd1}};
assign or_ln13_12_fu_1656_p3 = {{tmp_119_reg_2758}, {4'd14}};
assign or_ln13_13_fu_1685_p3 = {{tmp_119_reg_2758}, {4'd15}};
assign or_ln13_14_fu_1741_p3 = {{tmp_6_fu_1734_p3}, {5'd16}};
assign or_ln13_15_fu_1788_p5 = {{{{tmp_6_fu_1734_p3}, {1'd1}}, {tmp_132_fu_1779_p4}}, {1'd1}};
assign or_ln13_16_fu_1847_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_s_reg_3035}}, {2'd2}};
assign or_ln13_17_fu_1882_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_s_reg_3035}}, {2'd3}};
assign or_ln13_18_fu_1944_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_fu_1937_p3}}, {3'd4}};
assign or_ln13_19_fu_1977_p7 = {{{{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_fu_1937_p3}}, {1'd1}}, {tmp_4_reg_2663}}, {1'd1}};
assign or_ln13_1_fu_1115_p3 = {{tmp_cast_reg_2562}, {2'd2}};
assign or_ln13_20_fu_2040_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_reg_3133}}, {3'd6}};
assign or_ln13_21_fu_2075_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_reg_3133}}, {3'd7}};
assign or_ln13_22_fu_2130_p3 = {{tmp_6_reg_2993}, {5'd24}};
assign or_ln13_23_fu_2156_p5 = {{{{tmp_6_reg_2993}, {2'd3}}, {tmp_123_reg_2802}}, {1'd1}};
assign or_ln13_24_fu_2211_p5 = {{{{tmp_6_reg_2993}, {2'd3}}, {tmp_5_reg_2784}}, {2'd2}};
assign or_ln13_25_fu_2246_p5 = {{{{tmp_6_reg_2993}, {2'd3}}, {tmp_5_reg_2784}}, {2'd3}};
assign or_ln13_26_fu_2301_p3 = {{tmp_6_reg_2993}, {5'd28}};
assign or_ln13_27_fu_2326_p5 = {{{{tmp_6_reg_2993}, {3'd7}}, {tmp_4_reg_2663}}, {1'd1}};
assign or_ln13_28_fu_2381_p3 = {{tmp_6_reg_2993}, {5'd30}};
assign or_ln13_29_fu_2410_p3 = {{tmp_6_reg_2993}, {5'd31}};
assign or_ln13_2_fu_1144_p3 = {{tmp_cast_reg_2562}, {2'd3}};
assign or_ln13_3_fu_1202_p3 = {{tmp_112_fu_1193_p4}, {3'd4}};
assign or_ln13_4_fu_1236_p5 = {{{{tmp_112_fu_1193_p4}, {1'd1}}, {tmp_4_fu_1229_p3}}, {1'd1}};
assign or_ln13_5_fu_1295_p3 = {{tmp_112_reg_2640}, {3'd6}};
assign or_ln13_6_fu_1324_p3 = {{tmp_112_reg_2640}, {3'd7}};
assign or_ln13_7_fu_1382_p3 = {{tmp_119_fu_1373_p4}, {4'd8}};
assign or_ln13_8_fu_1427_p5 = {{{{tmp_119_fu_1373_p4}, {1'd1}}, {tmp_123_fu_1418_p4}}, {1'd1}};
assign or_ln13_9_fu_1486_p5 = {{{{tmp_119_reg_2758}, {1'd1}}, {tmp_5_reg_2784}}, {2'd2}};
assign or_ln13_s_fu_1521_p5 = {{{{tmp_119_reg_2758}, {1'd1}}, {tmp_5_reg_2784}}, {2'd3}};
assign or_ln14_1_fu_1215_p4 = {{{tmp_112_fu_1193_p4}, {1'd1}}, {obs_load}};
assign or_ln14_2_fu_1402_p5 = {{{{tmp_119_fu_1373_p4}, {1'd1}}, {tmp_5_fu_1395_p3}}, {obs_load}};
assign or_ln14_3_fu_1588_p4 = {{{tmp_119_reg_2758}, {2'd3}}, {obs_load}};
assign or_ln14_4_fu_1763_p5 = {{{{tmp_6_fu_1734_p3}, {1'd1}}, {tmp_s_fu_1754_p4}}, {obs_load}};
assign or_ln14_5_fu_1960_p6 = {{{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_fu_1937_p3}}, {1'd1}}, {obs_load}};
assign or_ln14_6_fu_2142_p5 = {{{{tmp_6_reg_2993}, {2'd3}}, {tmp_5_reg_2784}}, {obs_load}};
assign or_ln14_7_fu_2313_p4 = {{{tmp_6_reg_2993}, {3'd7}}, {obs_load}};
assign or_ln1_fu_1083_p3 = {{tmp_108_fu_1073_p4}, {1'd1}};
assign or_ln_fu_1060_p3 = {{tmp_cast_fu_1050_p4}, {obs_load}};
assign shl_ln14_10_fu_1697_p3 = {{tmp_119_reg_2758}, {10'd960}};
assign shl_ln14_11_fu_1805_p5 = {{{{tmp_6_fu_1734_p3}, {1'd1}}, {tmp_132_fu_1779_p4}}, {7'd64}};
assign shl_ln14_12_fu_1862_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_s_reg_3035}}, {8'd128}};
assign shl_ln14_13_fu_1897_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_s_reg_3035}}, {8'd192}};
assign shl_ln14_14_fu_1996_p7 = {{{{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_fu_1937_p3}}, {1'd1}}, {tmp_4_reg_2663}}, {7'd64}};
assign shl_ln14_15_fu_2055_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_reg_3133}}, {9'd384}};
assign shl_ln14_16_fu_2090_p5 = {{{{tmp_6_reg_2993}, {1'd1}}, {tmp_7_reg_3133}}, {9'd448}};
assign shl_ln14_17_fu_2171_p5 = {{{{tmp_6_reg_2993}, {2'd3}}, {tmp_123_reg_2802}}, {7'd64}};
assign shl_ln14_18_fu_2226_p5 = {{{{tmp_6_reg_2993}, {2'd3}}, {tmp_5_reg_2784}}, {8'd128}};
assign shl_ln14_19_fu_2261_p5 = {{{{tmp_6_reg_2993}, {2'd3}}, {tmp_5_reg_2784}}, {8'd192}};
assign shl_ln14_1_fu_1127_p3 = {{tmp_cast_reg_2562}, {8'd128}};
assign shl_ln14_20_fu_2341_p5 = {{{{tmp_6_reg_2993}, {3'd7}}, {tmp_4_reg_2663}}, {7'd64}};
assign shl_ln14_21_fu_2393_p3 = {{tmp_6_reg_2993}, {11'd1920}};
assign shl_ln14_22_fu_2422_p3 = {{tmp_6_reg_2993}, {11'd1984}};
assign shl_ln14_2_fu_1156_p3 = {{tmp_cast_reg_2562}, {8'd192}};
assign shl_ln14_3_fu_1253_p5 = {{{{tmp_112_fu_1193_p4}, {1'd1}}, {tmp_4_fu_1229_p3}}, {7'd64}};
assign shl_ln14_4_fu_1307_p3 = {{tmp_112_reg_2640}, {9'd384}};
assign shl_ln14_5_fu_1336_p3 = {{tmp_112_reg_2640}, {9'd448}};
assign shl_ln14_6_fu_1444_p5 = {{{{tmp_119_fu_1373_p4}, {1'd1}}, {tmp_123_fu_1418_p4}}, {7'd64}};
assign shl_ln14_7_fu_1501_p5 = {{{{tmp_119_reg_2758}, {1'd1}}, {tmp_5_reg_2784}}, {8'd128}};
assign shl_ln14_8_fu_1536_p5 = {{{{tmp_119_reg_2758}, {1'd1}}, {tmp_5_reg_2784}}, {8'd192}};
assign shl_ln14_9_fu_1616_p5 = {{{{tmp_119_reg_2758}, {2'd3}}, {tmp_4_reg_2663}}, {7'd64}};
assign shl_ln14_s_fu_1668_p3 = {{tmp_119_reg_2758}, {10'd896}};
assign shl_ln_fu_1096_p3 = {{tmp_108_fu_1073_p4}, {7'd64}};
assign tmp_108_fu_1073_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_112_fu_1193_p4 = {{s_1_reg_2534[5:3]}};
assign tmp_119_fu_1373_p4 = {{s_1_reg_2534[5:4]}};
assign tmp_123_fu_1418_p4 = {{s_1_reg_2534[2:1]}};
assign tmp_132_fu_1779_p4 = {{s_1_reg_2534[3:1]}};
assign tmp_4_fu_1229_p3 = s_1_reg_2534[32'd1];
assign tmp_5_fu_1395_p3 = s_1_reg_2534[32'd2];
assign tmp_6_fu_1734_p3 = s_1_reg_2534[32'd5];
assign tmp_7_fu_1937_p3 = s_1_reg_2534[32'd3];
assign tmp_cast_fu_1050_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_1754_p4 = {{s_1_reg_2534[3:2]}};
assign zext_ln13_1_fu_1045_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_1025_p1 = zext_ln13;
assign zext_ln14_10_fu_1248_p1 = or_ln13_4_fu_1236_p5;
assign zext_ln14_11_fu_1319_p1 = add_ln14_4_fu_1314_p2;
assign zext_ln14_12_fu_1302_p1 = or_ln13_5_fu_1295_p3;
assign zext_ln14_13_fu_1348_p1 = add_ln14_5_fu_1343_p2;
assign zext_ln14_14_fu_1413_p1 = or_ln14_2_fu_1402_p5;
assign zext_ln14_15_fu_1331_p1 = or_ln13_6_fu_1324_p3;
assign zext_ln14_16_fu_1461_p1 = add_ln14_6_fu_1456_p2;
assign zext_ln14_17_fu_1390_p1 = or_ln13_7_fu_1382_p3;
assign zext_ln14_18_fu_1516_p1 = add_ln14_7_fu_1511_p2;
assign zext_ln14_19_fu_1439_p1 = or_ln13_8_fu_1427_p5;
assign zext_ln14_1_fu_1091_p1 = or_ln1_fu_1083_p3;
assign zext_ln14_20_fu_1551_p1 = add_ln14_8_fu_1546_p2;
assign zext_ln14_21_fu_1596_p1 = or_ln14_3_fu_1588_p4;
assign zext_ln14_22_fu_1496_p1 = or_ln13_9_fu_1486_p5;
assign zext_ln14_23_fu_1631_p1 = add_ln14_9_fu_1626_p2;
assign zext_ln14_24_fu_1531_p1 = or_ln13_s_fu_1521_p5;
assign zext_ln14_25_fu_1680_p1 = add_ln14_10_fu_1675_p2;
assign zext_ln14_26_fu_1583_p1 = or_ln13_10_fu_1576_p3;
assign zext_ln14_27_fu_1709_p1 = add_ln14_11_fu_1704_p2;
assign zext_ln14_28_fu_1774_p1 = or_ln14_4_fu_1763_p5;
assign zext_ln14_29_fu_1611_p1 = or_ln13_11_fu_1601_p5;
assign zext_ln14_2_fu_1110_p1 = add_ln14_fu_1104_p2;
assign zext_ln14_30_fu_1822_p1 = add_ln14_12_fu_1817_p2;
assign zext_ln14_31_fu_1663_p1 = or_ln13_12_fu_1656_p3;
assign zext_ln14_32_fu_1877_p1 = add_ln14_13_fu_1872_p2;
assign zext_ln14_33_fu_1692_p1 = or_ln13_13_fu_1685_p3;
assign zext_ln14_34_fu_1912_p1 = add_ln14_14_fu_1907_p2;
assign zext_ln14_35_fu_1972_p1 = or_ln14_5_fu_1960_p6;
assign zext_ln14_36_fu_1749_p1 = or_ln13_14_fu_1741_p3;
assign zext_ln14_37_fu_2015_p1 = add_ln14_15_fu_2010_p2;
assign zext_ln14_38_fu_1800_p1 = or_ln13_15_fu_1788_p5;
assign zext_ln14_39_fu_2070_p1 = add_ln14_16_fu_2065_p2;
assign zext_ln14_3_fu_1122_p1 = or_ln13_1_fu_1115_p3;
assign zext_ln14_40_fu_1857_p1 = or_ln13_16_fu_1847_p5;
assign zext_ln14_41_fu_2105_p1 = add_ln14_17_fu_2100_p2;
assign zext_ln14_42_fu_2151_p1 = or_ln14_6_fu_2142_p5;
assign zext_ln14_43_fu_1892_p1 = or_ln13_17_fu_1882_p5;
assign zext_ln14_44_fu_2186_p1 = add_ln14_18_fu_2181_p2;
assign zext_ln14_45_fu_1955_p1 = or_ln13_18_fu_1944_p5;
assign zext_ln14_46_fu_2241_p1 = add_ln14_19_fu_2236_p2;
assign zext_ln14_47_fu_1991_p1 = or_ln13_19_fu_1977_p7;
assign zext_ln14_48_fu_2276_p1 = add_ln14_20_fu_2271_p2;
assign zext_ln14_49_fu_2321_p1 = or_ln14_7_fu_2313_p4;
assign zext_ln14_4_fu_1139_p1 = add_ln14_1_fu_1134_p2;
assign zext_ln14_50_fu_2050_p1 = or_ln13_20_fu_2040_p5;
assign zext_ln14_51_fu_2356_p1 = add_ln14_21_fu_2351_p2;
assign zext_ln14_52_fu_2085_p1 = or_ln13_21_fu_2075_p5;
assign zext_ln14_53_fu_2405_p1 = add_ln14_22_fu_2400_p2;
assign zext_ln14_54_fu_2137_p1 = or_ln13_22_fu_2130_p3;
assign zext_ln14_55_fu_2434_p1 = add_ln14_23_fu_2429_p2;
assign zext_ln14_56_fu_2166_p1 = or_ln13_23_fu_2156_p5;
assign zext_ln14_57_fu_2221_p1 = or_ln13_24_fu_2211_p5;
assign zext_ln14_58_fu_2256_p1 = or_ln13_25_fu_2246_p5;
assign zext_ln14_59_fu_2308_p1 = or_ln13_26_fu_2301_p3;
assign zext_ln14_5_fu_1151_p1 = or_ln13_2_fu_1144_p3;
assign zext_ln14_60_fu_2336_p1 = or_ln13_27_fu_2326_p5;
assign zext_ln14_61_fu_2388_p1 = or_ln13_28_fu_2381_p3;
assign zext_ln14_62_fu_2417_p1 = or_ln13_29_fu_2410_p3;
assign zext_ln14_6_fu_1168_p1 = add_ln14_2_fu_1163_p2;
assign zext_ln14_7_fu_1224_p1 = or_ln14_1_fu_1215_p4;
assign zext_ln14_8_fu_1210_p1 = or_ln13_3_fu_1202_p3;
assign zext_ln14_9_fu_1270_p1 = add_ln14_3_fu_1265_p2;
assign zext_ln14_fu_1068_p1 = or_ln_fu_1060_p3;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_2507[11:8] <= 4'b0000;
    zext_ln13_1_reg_2552[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_2575[0] <= 1'b1;
    zext_ln14_1_reg_2575[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_2590[1:0] <= 2'b10;
    zext_ln14_3_reg_2590[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_2605[1:0] <= 2'b11;
    zext_ln14_5_reg_2605[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_8_reg_2648[2:0] <= 3'b100;
    zext_ln14_8_reg_2648[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_10_reg_2673[0] <= 1'b1;
    zext_ln14_10_reg_2673[2:2] <= 1'b1;
    zext_ln14_10_reg_2673[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_12_reg_2708[2:0] <= 3'b110;
    zext_ln14_12_reg_2708[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_15_reg_2723[2:0] <= 3'b111;
    zext_ln14_15_reg_2723[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_2774[3:0] <= 4'b1000;
    zext_ln14_17_reg_2774[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_2808[0] <= 1'b1;
    zext_ln14_19_reg_2808[3:3] <= 1'b1;
    zext_ln14_19_reg_2808[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_22_reg_2843[1:0] <= 2'b10;
    zext_ln14_22_reg_2843[3:3] <= 1'b1;
    zext_ln14_22_reg_2843[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_24_reg_2858[1:0] <= 2'b11;
    zext_ln14_24_reg_2858[3:3] <= 1'b1;
    zext_ln14_24_reg_2858[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_26_reg_2893[3:0] <= 4'b1100;
    zext_ln14_26_reg_2893[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_29_reg_2908[0] <= 1'b1;
    zext_ln14_29_reg_2908[3:2] <= 2'b11;
    zext_ln14_29_reg_2908[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_31_reg_2943[3:0] <= 4'b1110;
    zext_ln14_31_reg_2943[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_33_reg_2958[3:0] <= 4'b1111;
    zext_ln14_33_reg_2958[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_36_reg_3025[4:0] <= 5'b10000;
    zext_ln14_36_reg_3025[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_38_reg_3048[0] <= 1'b1;
    zext_ln14_38_reg_3048[4:4] <= 1'b1;
    zext_ln14_38_reg_3048[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_40_reg_3083[1:0] <= 2'b10;
    zext_ln14_40_reg_3083[4:4] <= 1'b1;
    zext_ln14_40_reg_3083[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_43_reg_3098[1:0] <= 2'b11;
    zext_ln14_43_reg_3098[4:4] <= 1'b1;
    zext_ln14_43_reg_3098[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_45_reg_3141[2:0] <= 3'b100;
    zext_ln14_45_reg_3141[4:4] <= 1'b1;
    zext_ln14_45_reg_3141[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_47_reg_3156[0] <= 1'b1;
    zext_ln14_47_reg_3156[2:2] <= 1'b1;
    zext_ln14_47_reg_3156[4:4] <= 1'b1;
    zext_ln14_47_reg_3156[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_50_reg_3191[2:0] <= 3'b110;
    zext_ln14_50_reg_3191[4:4] <= 1'b1;
    zext_ln14_50_reg_3191[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_52_reg_3206[2:0] <= 3'b111;
    zext_ln14_52_reg_3206[4:4] <= 1'b1;
    zext_ln14_52_reg_3206[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_54_reg_3241[4:0] <= 5'b11000;
    zext_ln14_54_reg_3241[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_56_reg_3256[0] <= 1'b1;
    zext_ln14_56_reg_3256[4:3] <= 2'b11;
    zext_ln14_56_reg_3256[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_57_reg_3291[1:0] <= 2'b10;
    zext_ln14_57_reg_3291[4:3] <= 2'b11;
    zext_ln14_57_reg_3291[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_58_reg_3306[1:0] <= 2'b11;
    zext_ln14_58_reg_3306[4:3] <= 2'b11;
    zext_ln14_58_reg_3306[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_59_reg_3341[4:0] <= 5'b11100;
    zext_ln14_59_reg_3341[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_60_reg_3356[0] <= 1'b1;
    zext_ln14_60_reg_3356[4:2] <= 3'b111;
    zext_ln14_60_reg_3356[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_61_reg_3391[4:0] <= 5'b11110;
    zext_ln14_61_reg_3391[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_62_reg_3406[4:0] <= 5'b11111;
    zext_ln14_62_reg_3406[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 