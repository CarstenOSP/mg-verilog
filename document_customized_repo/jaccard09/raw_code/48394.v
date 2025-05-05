module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_10,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,conv3_udiv_cast,conv3_udiv,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_678_p_din0,grp_fu_678_p_din1,grp_fu_678_p_opcode,grp_fu_678_p_dout0,grp_fu_678_p_ce); 
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
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] empty_10;
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
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
input  [6:0] conv3_udiv_cast;
input  [6:0] conv3_udiv;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_678_p_din0;
output  [63:0] grp_fu_678_p_din1;
output  [1:0] grp_fu_678_p_opcode;
input  [63:0] grp_fu_678_p_dout0;
output   grp_fu_678_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_129_reg_3180;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1343;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_1329_p3;
reg   [63:0] reg_1347;
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
reg   [63:0] reg_1351;
wire   [63:0] grp_fu_1336_p3;
reg   [63:0] reg_1355;
reg   [63:0] reg_1359;
reg   [63:0] reg_1364;
reg   [63:0] reg_1369;
reg   [63:0] reg_1374;
reg   [63:0] reg_1379;
reg   [63:0] reg_1384;
reg   [63:0] reg_1389;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1394;
wire   [10:0] conv3_udiv_cast_cast_fu_1399_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_3132;
wire   [7:0] p_cast_fu_1403_p1;
reg   [7:0] p_cast_reg_3159;
reg   [6:0] s_1_reg_3166;
wire   [4:0] lshr_ln9_fu_1423_p4;
reg   [4:0] lshr_ln9_reg_3184;
wire   [2:0] tmp_fu_1439_p4;
reg   [2:0] tmp_reg_3194;
wire   [3:0] tmp_2_fu_1483_p4;
reg   [3:0] tmp_2_reg_3233;
wire   [0:0] tmp_130_fu_1543_p3;
reg   [0:0] tmp_130_reg_3271;
reg   [0:0] tmp_130_reg_3271_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_fu_1578_p1;
wire   [63:0] bitcast_ln14_1_fu_1583_p1;
wire   [63:0] bitcast_ln14_2_fu_1588_p1;
wire   [63:0] bitcast_ln14_3_fu_1593_p1;
wire   [1:0] tmp_48_fu_1633_p4;
reg   [1:0] tmp_48_reg_3346;
wire   [1:0] tmp_60_fu_1642_p4;
reg   [1:0] tmp_60_reg_3368;
reg   [1:0] tmp_60_reg_3368_pp0_iter1_reg;
wire   [0:0] tmp_131_fu_1667_p3;
reg   [0:0] tmp_131_reg_3387;
reg   [0:0] tmp_131_reg_3387_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_4_fu_1692_p1;
wire   [63:0] bitcast_ln14_5_fu_1697_p1;
wire   [63:0] bitcast_ln14_6_fu_1702_p1;
wire   [63:0] bitcast_ln14_7_fu_1707_p1;
wire   [63:0] bitcast_ln14_8_fu_1775_p1;
wire   [63:0] bitcast_ln14_9_fu_1780_p1;
wire   [63:0] bitcast_ln14_10_fu_1785_p1;
wire   [63:0] bitcast_ln14_11_fu_1790_p1;
reg   [63:0] init_0_load_7_reg_3510;
reg   [63:0] init_1_load_7_reg_3515;
wire   [0:0] tmp_132_fu_1830_p3;
reg   [0:0] tmp_132_reg_3520;
reg   [0:0] tmp_132_reg_3520_pp0_iter1_reg;
wire   [2:0] tmp_s_fu_1837_p4;
reg   [2:0] tmp_s_reg_3562;
wire   [1:0] tmp_134_fu_1862_p4;
reg   [1:0] tmp_134_reg_3578;
wire   [63:0] bitcast_ln14_12_fu_1889_p1;
wire   [63:0] bitcast_ln14_13_fu_1894_p1;
wire   [63:0] bitcast_ln14_14_fu_1899_p1;
wire   [63:0] bitcast_ln14_15_fu_1904_p1;
wire   [0:0] tmp_133_fu_1951_p3;
reg   [0:0] tmp_133_reg_3636;
reg   [63:0] init_0_load_9_reg_3649;
reg   [63:0] init_1_load_9_reg_3654;
wire   [63:0] bitcast_ln14_16_fu_1993_p1;
wire   [63:0] bitcast_ln14_17_fu_1998_p1;
wire   [63:0] bitcast_ln14_18_fu_2003_p1;
wire   [63:0] bitcast_ln14_19_fu_2008_p1;
reg   [63:0] init_0_load_11_reg_3719;
reg   [63:0] init_1_load_11_reg_3724;
wire   [63:0] bitcast_ln14_20_fu_2078_p1;
wire   [63:0] bitcast_ln14_21_fu_2083_p1;
wire   [63:0] bitcast_ln14_22_fu_2088_p1;
wire   [63:0] bitcast_ln14_23_fu_2093_p1;
reg   [63:0] init_0_load_13_reg_3789;
reg   [63:0] init_1_load_13_reg_3794;
wire   [63:0] bitcast_ln14_24_fu_2161_p1;
wire   [63:0] bitcast_ln14_25_fu_2166_p1;
wire   [63:0] bitcast_ln14_26_fu_2171_p1;
wire   [63:0] bitcast_ln14_27_fu_2176_p1;
reg   [63:0] init_0_load_15_reg_3859;
reg   [63:0] init_1_load_15_reg_3864;
wire   [63:0] bitcast_ln14_28_fu_2217_p1;
wire   [63:0] bitcast_ln14_29_fu_2221_p1;
wire   [63:0] bitcast_ln14_30_fu_2226_p1;
wire   [63:0] bitcast_ln14_31_fu_2230_p1;
wire   [63:0] bitcast_ln14_32_fu_2293_p1;
wire   [63:0] bitcast_ln14_33_fu_2298_p1;
wire   [63:0] bitcast_ln14_34_fu_2303_p1;
wire   [63:0] bitcast_ln14_35_fu_2308_p1;
wire   [63:0] bitcast_ln14_36_fu_2378_p1;
wire   [63:0] bitcast_ln14_37_fu_2382_p1;
wire   [63:0] bitcast_ln14_38_fu_2387_p1;
wire   [63:0] bitcast_ln14_39_fu_2391_p1;
wire   [63:0] bitcast_ln14_40_fu_2465_p1;
wire   [63:0] bitcast_ln14_41_fu_2470_p1;
wire   [63:0] bitcast_ln14_42_fu_2475_p1;
wire   [63:0] bitcast_ln14_43_fu_2480_p1;
wire   [63:0] bitcast_ln14_44_fu_2544_p1;
wire   [63:0] bitcast_ln14_45_fu_2548_p1;
wire   [63:0] bitcast_ln14_46_fu_2553_p1;
wire   [63:0] bitcast_ln14_47_fu_2557_p1;
wire   [63:0] bitcast_ln14_48_fu_2631_p1;
wire   [63:0] bitcast_ln14_49_fu_2636_p1;
wire   [63:0] bitcast_ln14_50_fu_2641_p1;
wire   [63:0] bitcast_ln14_51_fu_2646_p1;
wire   [63:0] bitcast_ln14_52_fu_2716_p1;
wire   [63:0] bitcast_ln14_53_fu_2720_p1;
wire   [63:0] bitcast_ln14_54_fu_2725_p1;
wire   [63:0] bitcast_ln14_55_fu_2729_p1;
wire   [63:0] bitcast_ln14_56_fu_2807_p1;
wire   [63:0] bitcast_ln14_57_fu_2812_p1;
wire   [63:0] bitcast_ln14_58_fu_2817_p1;
wire   [63:0] bitcast_ln14_59_fu_2822_p1;
wire   [63:0] select_ln14_30_fu_2827_p3;
reg   [63:0] select_ln14_30_reg_4169;
wire   [63:0] select_ln14_31_fu_2834_p3;
reg   [63:0] select_ln14_31_reg_4174;
wire   [63:0] bitcast_ln14_60_fu_2865_p1;
wire   [63:0] bitcast_ln14_61_fu_2869_p1;
wire   [63:0] bitcast_ln14_62_fu_2873_p1;
wire   [63:0] bitcast_ln14_63_fu_2877_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_1433_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1457_p1;
wire   [63:0] zext_ln14_1_fu_1477_p1;
wire   [63:0] zext_ln14_34_fu_1501_p1;
wire   [63:0] zext_ln14_2_fu_1519_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1537_p1;
wire   [63:0] zext_ln14_37_fu_1559_p1;
wire   [63:0] zext_ln14_40_fu_1572_p1;
wire   [63:0] zext_ln14_4_fu_1606_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1627_p1;
wire   [63:0] zext_ln14_43_fu_1661_p1;
wire   [63:0] zext_ln14_46_fu_1686_p1;
wire   [63:0] zext_ln14_6_fu_1724_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1742_p1;
wire   [63:0] zext_ln14_49_fu_1756_p1;
wire   [63:0] zext_ln14_52_fu_1769_p1;
wire   [63:0] zext_ln14_8_fu_1803_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1824_p1;
wire   [63:0] zext_ln14_55_fu_1856_p1;
wire   [63:0] zext_ln14_58_fu_1883_p1;
wire   [63:0] zext_ln14_10_fu_1924_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1945_p1;
wire   [63:0] zext_ln14_61_fu_1970_p1;
wire   [63:0] zext_ln14_64_fu_1987_p1;
wire   [63:0] zext_ln14_12_fu_2021_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2042_p1;
wire   [63:0] zext_ln14_67_fu_2056_p1;
wire   [63:0] zext_ln14_70_fu_2072_p1;
wire   [63:0] zext_ln14_14_fu_2110_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2128_p1;
wire   [63:0] zext_ln14_73_fu_2142_p1;
wire   [63:0] zext_ln14_76_fu_2155_p1;
wire   [63:0] zext_ln14_16_fu_2190_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_17_fu_2211_p1;
wire   [63:0] zext_ln14_18_fu_2250_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_19_fu_2271_p1;
wire   [63:0] zext_ln13_fu_2277_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_32_fu_2288_p1;
wire   [63:0] zext_ln14_20_fu_2324_p1;
wire   [63:0] zext_ln14_21_fu_2348_p1;
wire   [63:0] zext_ln14_33_fu_2361_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_35_fu_2373_p1;
wire   [63:0] zext_ln14_22_fu_2411_p1;
wire   [63:0] zext_ln14_23_fu_2432_p1;
wire   [63:0] zext_ln14_36_fu_2445_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_38_fu_2460_p1;
wire   [63:0] zext_ln14_24_fu_2493_p1;
wire   [63:0] zext_ln14_25_fu_2514_p1;
wire   [63:0] zext_ln14_39_fu_2527_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_41_fu_2539_p1;
wire   [63:0] zext_ln14_26_fu_2577_p1;
wire   [63:0] zext_ln14_27_fu_2598_p1;
wire   [63:0] zext_ln14_42_fu_2611_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_44_fu_2626_p1;
wire   [63:0] zext_ln14_28_fu_2659_p1;
wire   [63:0] zext_ln14_29_fu_2680_p1;
wire   [63:0] zext_ln14_45_fu_2696_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_47_fu_2711_p1;
wire   [63:0] zext_ln14_30_fu_2746_p1;
wire   [63:0] zext_ln14_31_fu_2764_p1;
wire   [63:0] zext_ln14_48_fu_2787_p1;
wire   [63:0] zext_ln14_50_fu_2802_p1;
wire   [63:0] zext_ln14_51_fu_2848_p1;
wire   [63:0] zext_ln14_53_fu_2860_p1;
wire   [63:0] zext_ln14_54_fu_2888_p1;
wire   [63:0] zext_ln14_56_fu_2903_p1;
wire   [63:0] zext_ln14_57_fu_2918_p1;
wire   [63:0] zext_ln14_59_fu_2933_p1;
wire   [63:0] zext_ln14_60_fu_2948_p1;
wire   [63:0] zext_ln14_62_fu_2966_p1;
wire   [63:0] zext_ln14_63_fu_2981_p1;
wire   [63:0] zext_ln14_65_fu_2996_p1;
wire   [63:0] zext_ln14_66_fu_3008_p1;
wire   [63:0] zext_ln14_68_fu_3023_p1;
wire   [63:0] zext_ln14_69_fu_3038_p1;
wire   [63:0] zext_ln14_71_fu_3053_p1;
wire   [63:0] zext_ln14_72_fu_3065_p1;
wire   [63:0] zext_ln14_74_fu_3080_p1;
wire   [63:0] zext_ln14_75_fu_3092_p1;
wire   [63:0] zext_ln14_77_fu_3104_p1;
reg   [6:0] s_fu_224;
wire   [6:0] add_ln13_fu_2770_p2;
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
reg    llike_we1_local;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg   [63:0] grp_fu_1321_p0;
reg   [63:0] grp_fu_1321_p1;
reg   [63:0] grp_fu_1325_p0;
reg   [63:0] grp_fu_1325_p1;
wire   [10:0] or_ln_fu_1449_p3;
wire   [10:0] shl_ln_fu_1463_p3;
wire   [10:0] add_ln14_fu_1471_p2;
wire   [4:0] or_ln14_1_fu_1493_p3;
wire   [10:0] shl_ln14_1_fu_1507_p3;
wire   [10:0] add_ln14_1_fu_1514_p2;
wire   [10:0] shl_ln14_2_fu_1525_p3;
wire   [10:0] add_ln14_2_fu_1532_p2;
wire   [4:0] or_ln14_2_fu_1550_p4;
wire   [4:0] or_ln14_4_fu_1565_p3;
wire   [10:0] or_ln14_3_fu_1598_p4;
wire   [10:0] shl_ln14_3_fu_1612_p5;
wire   [10:0] add_ln14_3_fu_1622_p2;
wire   [4:0] or_ln14_5_fu_1651_p4;
wire   [4:0] or_ln14_7_fu_1674_p5;
wire   [10:0] shl_ln14_4_fu_1712_p3;
wire   [10:0] add_ln14_4_fu_1719_p2;
wire   [10:0] shl_ln14_5_fu_1730_p3;
wire   [10:0] add_ln14_5_fu_1737_p2;
wire   [4:0] or_ln14_8_fu_1748_p4;
wire   [4:0] or_ln14_10_fu_1762_p3;
wire   [10:0] or_ln14_6_fu_1795_p4;
wire   [10:0] shl_ln14_6_fu_1809_p5;
wire   [10:0] add_ln14_6_fu_1819_p2;
wire   [4:0] or_ln14_11_fu_1846_p4;
wire   [4:0] or_ln14_13_fu_1871_p5;
wire   [10:0] shl_ln14_7_fu_1909_p5;
wire   [10:0] add_ln14_7_fu_1919_p2;
wire   [10:0] shl_ln14_8_fu_1930_p5;
wire   [10:0] add_ln14_8_fu_1940_p2;
wire   [4:0] or_ln14_14_fu_1958_p6;
wire   [4:0] or_ln14_16_fu_1976_p5;
wire   [10:0] or_ln14_9_fu_2013_p4;
wire   [10:0] shl_ln14_9_fu_2027_p5;
wire   [10:0] add_ln14_9_fu_2037_p2;
wire   [4:0] or_ln14_17_fu_2048_p4;
wire   [4:0] or_ln14_19_fu_2062_p5;
wire   [10:0] shl_ln14_s_fu_2098_p3;
wire   [10:0] add_ln14_10_fu_2105_p2;
wire   [10:0] shl_ln14_10_fu_2116_p3;
wire   [10:0] add_ln14_11_fu_2123_p2;
wire   [4:0] or_ln14_20_fu_2134_p4;
wire   [4:0] or_ln14_21_fu_2148_p3;
wire   [10:0] or_ln14_s_fu_2181_p5;
wire   [10:0] shl_ln14_11_fu_2196_p5;
wire   [10:0] add_ln14_12_fu_2206_p2;
wire   [10:0] shl_ln14_12_fu_2235_p5;
wire   [10:0] add_ln14_13_fu_2245_p2;
wire   [10:0] shl_ln14_13_fu_2256_p5;
wire   [10:0] add_ln14_14_fu_2266_p2;
wire   [5:0] or_ln1_fu_2281_p3;
wire   [10:0] or_ln14_12_fu_2313_p6;
wire   [10:0] shl_ln14_14_fu_2330_p7;
wire   [10:0] add_ln14_15_fu_2343_p2;
wire   [5:0] or_ln13_1_fu_2354_p3;
wire   [5:0] or_ln13_2_fu_2366_p3;
wire   [10:0] shl_ln14_15_fu_2396_p5;
wire   [10:0] add_ln14_16_fu_2406_p2;
wire   [10:0] shl_ln14_16_fu_2417_p5;
wire   [10:0] add_ln14_17_fu_2427_p2;
wire   [5:0] or_ln13_3_fu_2438_p3;
wire   [5:0] or_ln13_4_fu_2450_p5;
wire   [10:0] or_ln14_15_fu_2485_p4;
wire   [10:0] shl_ln14_17_fu_2499_p5;
wire   [10:0] add_ln14_18_fu_2509_p2;
wire   [5:0] or_ln13_5_fu_2520_p3;
wire   [5:0] or_ln13_6_fu_2532_p3;
wire   [10:0] shl_ln14_18_fu_2562_p5;
wire   [10:0] add_ln14_19_fu_2572_p2;
wire   [10:0] shl_ln14_19_fu_2583_p5;
wire   [10:0] add_ln14_20_fu_2593_p2;
wire   [5:0] or_ln13_7_fu_2604_p3;
wire   [5:0] or_ln13_8_fu_2616_p5;
wire   [10:0] or_ln14_18_fu_2651_p4;
wire   [10:0] shl_ln14_20_fu_2665_p5;
wire   [10:0] add_ln14_21_fu_2675_p2;
wire   [5:0] or_ln13_9_fu_2686_p5;
wire   [5:0] or_ln13_s_fu_2701_p5;
wire   [10:0] shl_ln14_21_fu_2734_p3;
wire   [10:0] add_ln14_22_fu_2741_p2;
wire   [10:0] shl_ln14_22_fu_2752_p3;
wire   [10:0] add_ln14_23_fu_2759_p2;
wire   [5:0] or_ln13_10_fu_2780_p3;
wire   [5:0] or_ln13_11_fu_2792_p5;
wire   [5:0] or_ln13_12_fu_2841_p3;
wire   [5:0] or_ln13_13_fu_2853_p3;
wire   [5:0] or_ln13_14_fu_2881_p3;
wire   [5:0] or_ln13_15_fu_2893_p5;
wire   [5:0] or_ln13_16_fu_2908_p5;
wire   [5:0] or_ln13_17_fu_2923_p5;
wire   [5:0] or_ln13_18_fu_2938_p5;
wire   [5:0] or_ln13_19_fu_2953_p7;
wire   [5:0] or_ln13_20_fu_2971_p5;
wire   [5:0] or_ln13_21_fu_2986_p5;
wire   [5:0] or_ln13_22_fu_3001_p3;
wire   [5:0] or_ln13_23_fu_3013_p5;
wire   [5:0] or_ln13_24_fu_3028_p5;
wire   [5:0] or_ln13_25_fu_3043_p5;
wire   [5:0] or_ln13_26_fu_3058_p3;
wire   [5:0] or_ln13_27_fu_3070_p5;
wire   [5:0] or_ln13_28_fu_3085_p3;
wire   [5:0] or_ln13_29_fu_3097_p3;
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
#0 s_fu_224 = 7'd0;
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
        reg_1359 <= init_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1359 <= init_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1364 <= init_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1364 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1369 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1369 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1374 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1374 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1379 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1379 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1384 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1384 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_224 <= 7'd0;
    end else if (((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_224 <= add_ln13_fu_2770_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_3132[6 : 0] <= conv3_udiv_cast_cast_fu_1399_p1[6 : 0];
        lshr_ln9_reg_3184 <= {{ap_sig_allocacmp_s_1[5:1]}};
        p_cast_reg_3159[6 : 0] <= p_cast_fu_1403_p1[6 : 0];
        s_1_reg_3166 <= ap_sig_allocacmp_s_1;
        select_ln14_30_reg_4169 <= select_ln14_30_fu_2827_p3;
        select_ln14_31_reg_4174 <= select_ln14_31_fu_2834_p3;
        tmp_129_reg_3180 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_2_reg_3233 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_3194 <= {{ap_sig_allocacmp_s_1[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        init_0_load_11_reg_3719 <= init_0_q0;
        init_1_load_11_reg_3724 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        init_0_load_13_reg_3789 <= init_0_q0;
        init_1_load_13_reg_3794 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        init_0_load_15_reg_3859 <= init_0_q0;
        init_1_load_15_reg_3864 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_3510 <= init_0_q0;
        init_1_load_7_reg_3515 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        init_0_load_9_reg_3649 <= init_0_q0;
        init_1_load_9_reg_3654 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1343 <= init_0_q1;
        reg_1351 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1347 <= grp_fu_1329_p3;
        reg_1355 <= grp_fu_1336_p3;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1389 <= grp_fu_300_p_dout0;
        reg_1394 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_130_reg_3271 <= s_1_reg_3166[32'd1];
        tmp_130_reg_3271_pp0_iter1_reg <= tmp_130_reg_3271;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_131_reg_3387 <= s_1_reg_3166[32'd2];
        tmp_131_reg_3387_pp0_iter1_reg <= tmp_131_reg_3387;
        tmp_48_reg_3346 <= {{s_1_reg_3166[5:4]}};
        tmp_60_reg_3368 <= {{s_1_reg_3166[2:1]}};
        tmp_60_reg_3368_pp0_iter1_reg <= tmp_60_reg_3368;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_132_reg_3520 <= s_1_reg_3166[32'd5];
        tmp_132_reg_3520_pp0_iter1_reg <= tmp_132_reg_3520;
        tmp_134_reg_3578 <= {{s_1_reg_3166[3:2]}};
        tmp_s_reg_3562 <= {{s_1_reg_3166[3:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_133_reg_3636 <= s_1_reg_3166[32'd3];
    end
end
always @ (*) begin
    if (((tmp_129_reg_3180 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_224;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_0_address0_local = zext_ln14_31_fu_2764_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address0_local = zext_ln14_29_fu_2680_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address0_local = zext_ln14_27_fu_2598_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address0_local = zext_ln14_25_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address0_local = zext_ln14_23_fu_2432_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address0_local = zext_ln14_21_fu_2348_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address0_local = zext_ln14_19_fu_2271_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address0_local = zext_ln14_17_fu_2211_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2128_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2042_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1945_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1824_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1742_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1477_p1;
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
            emission_0_address1_local = zext_ln14_30_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address1_local = zext_ln14_28_fu_2659_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address1_local = zext_ln14_26_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address1_local = zext_ln14_24_fu_2493_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address1_local = zext_ln14_22_fu_2411_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address1_local = zext_ln14_20_fu_2324_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address1_local = zext_ln14_18_fu_2250_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address1_local = zext_ln14_16_fu_2190_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2110_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_2021_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1924_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1803_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1724_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1606_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1519_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1457_p1;
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
            emission_1_address0_local = zext_ln14_31_fu_2764_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address0_local = zext_ln14_29_fu_2680_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address0_local = zext_ln14_27_fu_2598_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address0_local = zext_ln14_25_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address0_local = zext_ln14_23_fu_2432_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address0_local = zext_ln14_21_fu_2348_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address0_local = zext_ln14_19_fu_2271_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address0_local = zext_ln14_17_fu_2211_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2128_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2042_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1945_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1824_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1742_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1477_p1;
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
            emission_1_address1_local = zext_ln14_30_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address1_local = zext_ln14_28_fu_2659_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address1_local = zext_ln14_26_fu_2577_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address1_local = zext_ln14_24_fu_2493_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address1_local = zext_ln14_22_fu_2411_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address1_local = zext_ln14_20_fu_2324_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address1_local = zext_ln14_18_fu_2250_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address1_local = zext_ln14_16_fu_2190_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2110_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_2021_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1924_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1803_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1724_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1606_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1519_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1457_p1;
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
        grp_fu_1321_p0 = bitcast_ln14_60_fu_2865_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1321_p0 = bitcast_ln14_56_fu_2807_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1321_p0 = bitcast_ln14_52_fu_2716_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1321_p0 = bitcast_ln14_48_fu_2631_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1321_p0 = bitcast_ln14_44_fu_2544_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1321_p0 = bitcast_ln14_40_fu_2465_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1321_p0 = bitcast_ln14_36_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1321_p0 = bitcast_ln14_32_fu_2293_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1321_p0 = bitcast_ln14_28_fu_2217_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1321_p0 = bitcast_ln14_24_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1321_p0 = bitcast_ln14_20_fu_2078_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1321_p0 = bitcast_ln14_16_fu_1993_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1321_p0 = bitcast_ln14_12_fu_1889_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1321_p0 = bitcast_ln14_8_fu_1775_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1321_p0 = bitcast_ln14_4_fu_1692_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1321_p0 = bitcast_ln14_fu_1578_p1;
    end else begin
        grp_fu_1321_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1321_p1 = bitcast_ln14_61_fu_2869_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1321_p1 = bitcast_ln14_57_fu_2812_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1321_p1 = bitcast_ln14_53_fu_2720_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1321_p1 = bitcast_ln14_49_fu_2636_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1321_p1 = bitcast_ln14_45_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1321_p1 = bitcast_ln14_41_fu_2470_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1321_p1 = bitcast_ln14_37_fu_2382_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1321_p1 = bitcast_ln14_33_fu_2298_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1321_p1 = bitcast_ln14_29_fu_2221_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1321_p1 = bitcast_ln14_25_fu_2166_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1321_p1 = bitcast_ln14_21_fu_2083_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1321_p1 = bitcast_ln14_17_fu_1998_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1321_p1 = bitcast_ln14_13_fu_1894_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1321_p1 = bitcast_ln14_9_fu_1780_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1321_p1 = bitcast_ln14_5_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1321_p1 = bitcast_ln14_1_fu_1583_p1;
    end else begin
        grp_fu_1321_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1325_p0 = bitcast_ln14_62_fu_2873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1325_p0 = bitcast_ln14_58_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1325_p0 = bitcast_ln14_54_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1325_p0 = bitcast_ln14_50_fu_2641_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1325_p0 = bitcast_ln14_46_fu_2553_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1325_p0 = bitcast_ln14_42_fu_2475_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1325_p0 = bitcast_ln14_38_fu_2387_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1325_p0 = bitcast_ln14_34_fu_2303_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1325_p0 = bitcast_ln14_30_fu_2226_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1325_p0 = bitcast_ln14_26_fu_2171_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1325_p0 = bitcast_ln14_22_fu_2088_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1325_p0 = bitcast_ln14_18_fu_2003_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1325_p0 = bitcast_ln14_14_fu_1899_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1325_p0 = bitcast_ln14_10_fu_1785_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1325_p0 = bitcast_ln14_6_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1325_p0 = bitcast_ln14_2_fu_1588_p1;
    end else begin
        grp_fu_1325_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1325_p1 = bitcast_ln14_63_fu_2877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1325_p1 = bitcast_ln14_59_fu_2822_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1325_p1 = bitcast_ln14_55_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1325_p1 = bitcast_ln14_51_fu_2646_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1325_p1 = bitcast_ln14_47_fu_2557_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1325_p1 = bitcast_ln14_43_fu_2480_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1325_p1 = bitcast_ln14_39_fu_2391_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1325_p1 = bitcast_ln14_35_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1325_p1 = bitcast_ln14_31_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1325_p1 = bitcast_ln14_27_fu_2176_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1325_p1 = bitcast_ln14_23_fu_2093_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1325_p1 = bitcast_ln14_19_fu_2008_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1325_p1 = bitcast_ln14_15_fu_1904_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1325_p1 = bitcast_ln14_11_fu_1790_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1325_p1 = bitcast_ln14_7_fu_1707_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1325_p1 = bitcast_ln14_3_fu_1593_p1;
    end else begin
        grp_fu_1325_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_0_address0_local = zext_ln14_76_fu_2155_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address0_local = zext_ln14_70_fu_2072_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address0_local = zext_ln14_64_fu_1987_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address0_local = zext_ln14_58_fu_1883_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_52_fu_1769_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_46_fu_1686_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_40_fu_1572_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_34_fu_1501_p1;
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
            init_0_address1_local = zext_ln14_73_fu_2142_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address1_local = zext_ln14_67_fu_2056_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address1_local = zext_ln14_61_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address1_local = zext_ln14_55_fu_1856_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address1_local = zext_ln14_49_fu_1756_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_43_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_37_fu_1559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1433_p1;
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
            init_1_address0_local = zext_ln14_76_fu_2155_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address0_local = zext_ln14_70_fu_2072_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address0_local = zext_ln14_64_fu_1987_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address0_local = zext_ln14_58_fu_1883_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address0_local = zext_ln14_52_fu_1769_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_46_fu_1686_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_40_fu_1572_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_34_fu_1501_p1;
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
            init_1_address1_local = zext_ln14_73_fu_2142_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address1_local = zext_ln14_67_fu_2056_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address1_local = zext_ln14_61_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address1_local = zext_ln14_55_fu_1856_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address1_local = zext_ln14_49_fu_1756_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_43_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_37_fu_1559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1433_p1;
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
        llike_address0_local = zext_ln14_77_fu_3104_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_address0_local = zext_ln14_74_fu_3080_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_71_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_68_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_65_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_62_fu_2966_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_59_fu_2933_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_56_fu_2903_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_53_fu_2860_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_50_fu_2802_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_address0_local = zext_ln14_47_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address0_local = zext_ln14_44_fu_2626_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_address0_local = zext_ln14_41_fu_2539_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_address0_local = zext_ln14_38_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_address0_local = zext_ln14_35_fu_2373_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address0_local = zext_ln14_32_fu_2288_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_address1_local = zext_ln14_75_fu_3092_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_address1_local = zext_ln14_72_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address1_local = zext_ln14_69_fu_3038_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address1_local = zext_ln14_66_fu_3008_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address1_local = zext_ln14_63_fu_2981_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address1_local = zext_ln14_60_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address1_local = zext_ln14_57_fu_2918_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address1_local = zext_ln14_54_fu_2888_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address1_local = zext_ln14_51_fu_2848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address1_local = zext_ln14_48_fu_2787_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_address1_local = zext_ln14_45_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address1_local = zext_ln14_42_fu_2611_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_address1_local = zext_ln14_39_fu_2527_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_address1_local = zext_ln14_36_fu_2445_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_address1_local = zext_ln14_33_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address1_local = zext_ln13_fu_2277_p1;
    end else begin
        llike_address1_local = 'bx;
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
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_129_reg_3180 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln13_fu_2770_p2 = (s_1_reg_3166 + 7'd32);
assign add_ln14_10_fu_2105_p2 = (shl_ln14_s_fu_2098_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_11_fu_2123_p2 = (shl_ln14_10_fu_2116_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_12_fu_2206_p2 = (shl_ln14_11_fu_2196_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_13_fu_2245_p2 = (shl_ln14_12_fu_2235_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_14_fu_2266_p2 = (shl_ln14_13_fu_2256_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_15_fu_2343_p2 = (shl_ln14_14_fu_2330_p7 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_16_fu_2406_p2 = (shl_ln14_15_fu_2396_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_17_fu_2427_p2 = (shl_ln14_16_fu_2417_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_18_fu_2509_p2 = (shl_ln14_17_fu_2499_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_19_fu_2572_p2 = (shl_ln14_18_fu_2562_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_1_fu_1514_p2 = (shl_ln14_1_fu_1507_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_20_fu_2593_p2 = (shl_ln14_19_fu_2583_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_21_fu_2675_p2 = (shl_ln14_20_fu_2665_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_22_fu_2741_p2 = (shl_ln14_21_fu_2734_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_23_fu_2759_p2 = (shl_ln14_22_fu_2752_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_2_fu_1532_p2 = (shl_ln14_2_fu_1525_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_3_fu_1622_p2 = (shl_ln14_3_fu_1612_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_4_fu_1719_p2 = (shl_ln14_4_fu_1712_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_5_fu_1737_p2 = (shl_ln14_5_fu_1730_p3 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_6_fu_1819_p2 = (shl_ln14_6_fu_1809_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_7_fu_1919_p2 = (shl_ln14_7_fu_1909_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_8_fu_1940_p2 = (shl_ln14_8_fu_1930_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_9_fu_2037_p2 = (shl_ln14_9_fu_2027_p5 + conv3_udiv_cast_cast_reg_3132);
assign add_ln14_fu_1471_p2 = (shl_ln_fu_1463_p3 + conv3_udiv_cast_cast_fu_1399_p1);
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
assign bitcast_ln14_10_fu_1785_p1 = reg_1351;
assign bitcast_ln14_11_fu_1790_p1 = reg_1355;
assign bitcast_ln14_12_fu_1889_p1 = reg_1369;
assign bitcast_ln14_13_fu_1894_p1 = reg_1347;
assign bitcast_ln14_14_fu_1899_p1 = reg_1374;
assign bitcast_ln14_15_fu_1904_p1 = reg_1355;
assign bitcast_ln14_16_fu_1993_p1 = reg_1359;
assign bitcast_ln14_17_fu_1998_p1 = reg_1347;
assign bitcast_ln14_18_fu_2003_p1 = reg_1364;
assign bitcast_ln14_19_fu_2008_p1 = reg_1355;
assign bitcast_ln14_1_fu_1583_p1 = reg_1347;
assign bitcast_ln14_20_fu_2078_p1 = reg_1379;
assign bitcast_ln14_21_fu_2083_p1 = reg_1347;
assign bitcast_ln14_22_fu_2088_p1 = reg_1384;
assign bitcast_ln14_23_fu_2093_p1 = reg_1355;
assign bitcast_ln14_24_fu_2161_p1 = reg_1343;
assign bitcast_ln14_25_fu_2166_p1 = reg_1347;
assign bitcast_ln14_26_fu_2171_p1 = reg_1351;
assign bitcast_ln14_27_fu_2176_p1 = reg_1355;
assign bitcast_ln14_28_fu_2217_p1 = init_0_load_7_reg_3510;
assign bitcast_ln14_29_fu_2221_p1 = reg_1347;
assign bitcast_ln14_2_fu_1588_p1 = reg_1351;
assign bitcast_ln14_30_fu_2226_p1 = init_1_load_7_reg_3515;
assign bitcast_ln14_31_fu_2230_p1 = reg_1355;
assign bitcast_ln14_32_fu_2293_p1 = reg_1369;
assign bitcast_ln14_33_fu_2298_p1 = reg_1347;
assign bitcast_ln14_34_fu_2303_p1 = reg_1374;
assign bitcast_ln14_35_fu_2308_p1 = reg_1355;
assign bitcast_ln14_36_fu_2378_p1 = init_0_load_9_reg_3649;
assign bitcast_ln14_37_fu_2382_p1 = reg_1347;
assign bitcast_ln14_38_fu_2387_p1 = init_1_load_9_reg_3654;
assign bitcast_ln14_39_fu_2391_p1 = reg_1355;
assign bitcast_ln14_3_fu_1593_p1 = reg_1355;
assign bitcast_ln14_40_fu_2465_p1 = reg_1359;
assign bitcast_ln14_41_fu_2470_p1 = reg_1347;
assign bitcast_ln14_42_fu_2475_p1 = reg_1364;
assign bitcast_ln14_43_fu_2480_p1 = reg_1355;
assign bitcast_ln14_44_fu_2544_p1 = init_0_load_11_reg_3719;
assign bitcast_ln14_45_fu_2548_p1 = reg_1347;
assign bitcast_ln14_46_fu_2553_p1 = init_1_load_11_reg_3724;
assign bitcast_ln14_47_fu_2557_p1 = reg_1355;
assign bitcast_ln14_48_fu_2631_p1 = reg_1379;
assign bitcast_ln14_49_fu_2636_p1 = reg_1347;
assign bitcast_ln14_4_fu_1692_p1 = reg_1359;
assign bitcast_ln14_50_fu_2641_p1 = reg_1384;
assign bitcast_ln14_51_fu_2646_p1 = reg_1355;
assign bitcast_ln14_52_fu_2716_p1 = init_0_load_13_reg_3789;
assign bitcast_ln14_53_fu_2720_p1 = reg_1347;
assign bitcast_ln14_54_fu_2725_p1 = init_1_load_13_reg_3794;
assign bitcast_ln14_55_fu_2729_p1 = reg_1355;
assign bitcast_ln14_56_fu_2807_p1 = reg_1343;
assign bitcast_ln14_57_fu_2812_p1 = reg_1347;
assign bitcast_ln14_58_fu_2817_p1 = reg_1351;
assign bitcast_ln14_59_fu_2822_p1 = reg_1355;
assign bitcast_ln14_5_fu_1697_p1 = reg_1347;
assign bitcast_ln14_60_fu_2865_p1 = init_0_load_15_reg_3859;
assign bitcast_ln14_61_fu_2869_p1 = select_ln14_30_reg_4169;
assign bitcast_ln14_62_fu_2873_p1 = init_1_load_15_reg_3864;
assign bitcast_ln14_63_fu_2877_p1 = select_ln14_31_reg_4174;
assign bitcast_ln14_6_fu_1702_p1 = reg_1364;
assign bitcast_ln14_7_fu_1707_p1 = reg_1355;
assign bitcast_ln14_8_fu_1775_p1 = reg_1343;
assign bitcast_ln14_9_fu_1780_p1 = reg_1347;
assign bitcast_ln14_fu_1578_p1 = reg_1343;
assign conv3_udiv_cast_cast_fu_1399_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1329_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_1336_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_1321_p0;
assign grp_fu_300_p_din1 = grp_fu_1321_p1;
assign grp_fu_300_p_opcode = 2'd0;
assign grp_fu_678_p_ce = 1'b1;
assign grp_fu_678_p_din0 = grp_fu_1325_p0;
assign grp_fu_678_p_din1 = grp_fu_1325_p1;
assign grp_fu_678_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = reg_1394;
assign llike_d1 = reg_1389;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign lshr_ln9_fu_1423_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln13_10_fu_2780_p3 = {{tmp_48_reg_3346}, {4'd12}};
assign or_ln13_11_fu_2792_p5 = {{{{tmp_48_reg_3346}, {2'd3}}, {tmp_130_reg_3271}}, {1'd1}};
assign or_ln13_12_fu_2841_p3 = {{tmp_48_reg_3346}, {4'd14}};
assign or_ln13_13_fu_2853_p3 = {{tmp_48_reg_3346}, {4'd15}};
assign or_ln13_14_fu_2881_p3 = {{tmp_132_reg_3520}, {5'd16}};
assign or_ln13_15_fu_2893_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_s_reg_3562}}, {1'd1}};
assign or_ln13_16_fu_2908_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_134_reg_3578}}, {2'd2}};
assign or_ln13_17_fu_2923_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_134_reg_3578}}, {2'd3}};
assign or_ln13_18_fu_2938_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_reg_3636}}, {3'd4}};
assign or_ln13_19_fu_2953_p7 = {{{{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_reg_3636}}, {1'd1}}, {tmp_130_reg_3271_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_1_fu_2354_p3 = {{tmp_2_reg_3233}, {2'd2}};
assign or_ln13_20_fu_2971_p5 = {{{{tmp_132_reg_3520_pp0_iter1_reg}, {1'd1}}, {tmp_133_reg_3636}}, {3'd6}};
assign or_ln13_21_fu_2986_p5 = {{{{tmp_132_reg_3520_pp0_iter1_reg}, {1'd1}}, {tmp_133_reg_3636}}, {3'd7}};
assign or_ln13_22_fu_3001_p3 = {{tmp_132_reg_3520_pp0_iter1_reg}, {5'd24}};
assign or_ln13_23_fu_3013_p5 = {{{{tmp_132_reg_3520_pp0_iter1_reg}, {2'd3}}, {tmp_60_reg_3368_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_24_fu_3028_p5 = {{{{tmp_132_reg_3520_pp0_iter1_reg}, {2'd3}}, {tmp_131_reg_3387_pp0_iter1_reg}}, {2'd2}};
assign or_ln13_25_fu_3043_p5 = {{{{tmp_132_reg_3520_pp0_iter1_reg}, {2'd3}}, {tmp_131_reg_3387_pp0_iter1_reg}}, {2'd3}};
assign or_ln13_26_fu_3058_p3 = {{tmp_132_reg_3520_pp0_iter1_reg}, {5'd28}};
assign or_ln13_27_fu_3070_p5 = {{{{tmp_132_reg_3520_pp0_iter1_reg}, {3'd7}}, {tmp_130_reg_3271_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_28_fu_3085_p3 = {{tmp_132_reg_3520_pp0_iter1_reg}, {5'd30}};
assign or_ln13_29_fu_3097_p3 = {{tmp_132_reg_3520_pp0_iter1_reg}, {5'd31}};
assign or_ln13_2_fu_2366_p3 = {{tmp_2_reg_3233}, {2'd3}};
assign or_ln13_3_fu_2438_p3 = {{tmp_reg_3194}, {3'd4}};
assign or_ln13_4_fu_2450_p5 = {{{{tmp_reg_3194}, {1'd1}}, {tmp_130_reg_3271}}, {1'd1}};
assign or_ln13_5_fu_2520_p3 = {{tmp_reg_3194}, {3'd6}};
assign or_ln13_6_fu_2532_p3 = {{tmp_reg_3194}, {3'd7}};
assign or_ln13_7_fu_2604_p3 = {{tmp_48_reg_3346}, {4'd8}};
assign or_ln13_8_fu_2616_p5 = {{{{tmp_48_reg_3346}, {1'd1}}, {tmp_60_reg_3368}}, {1'd1}};
assign or_ln13_9_fu_2686_p5 = {{{{tmp_48_reg_3346}, {1'd1}}, {tmp_131_reg_3387}}, {2'd2}};
assign or_ln13_s_fu_2701_p5 = {{{{tmp_48_reg_3346}, {1'd1}}, {tmp_131_reg_3387}}, {2'd3}};
assign or_ln14_10_fu_1762_p3 = {{tmp_48_reg_3346}, {3'd7}};
assign or_ln14_11_fu_1846_p4 = {{{tmp_132_fu_1830_p3}, {1'd1}}, {tmp_s_fu_1837_p4}};
assign or_ln14_12_fu_2313_p6 = {{{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_reg_3636}}, {1'd1}}, {conv3_udiv}};
assign or_ln14_13_fu_1871_p5 = {{{{tmp_132_fu_1830_p3}, {1'd1}}, {tmp_134_fu_1862_p4}}, {1'd1}};
assign or_ln14_14_fu_1958_p6 = {{{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_fu_1951_p3}}, {1'd1}}, {tmp_130_reg_3271}};
assign or_ln14_15_fu_2485_p4 = {{{tmp_132_reg_3520}, {2'd3}}, {p_cast_reg_3159}};
assign or_ln14_16_fu_1976_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_fu_1951_p3}}, {2'd3}};
assign or_ln14_17_fu_2048_p4 = {{{tmp_132_reg_3520}, {2'd3}}, {tmp_60_reg_3368}};
assign or_ln14_18_fu_2651_p4 = {{{tmp_132_reg_3520}, {3'd7}}, {conv3_udiv}};
assign or_ln14_19_fu_2062_p5 = {{{{tmp_132_reg_3520}, {2'd3}}, {tmp_131_reg_3387}}, {1'd1}};
assign or_ln14_1_fu_1493_p3 = {{tmp_2_fu_1483_p4}, {1'd1}};
assign or_ln14_20_fu_2134_p4 = {{{tmp_132_reg_3520}, {3'd7}}, {tmp_130_reg_3271}};
assign or_ln14_21_fu_2148_p3 = {{tmp_132_reg_3520}, {4'd15}};
assign or_ln14_2_fu_1550_p4 = {{{tmp_reg_3194}, {1'd1}}, {tmp_130_fu_1543_p3}};
assign or_ln14_3_fu_1598_p4 = {{{tmp_reg_3194}, {1'd1}}, {conv3_udiv}};
assign or_ln14_4_fu_1565_p3 = {{tmp_reg_3194}, {2'd3}};
assign or_ln14_5_fu_1651_p4 = {{{tmp_48_fu_1633_p4}, {1'd1}}, {tmp_60_fu_1642_p4}};
assign or_ln14_6_fu_1795_p4 = {{{tmp_48_reg_3346}, {1'd1}}, {p_cast_reg_3159}};
assign or_ln14_7_fu_1674_p5 = {{{{tmp_48_fu_1633_p4}, {1'd1}}, {tmp_131_fu_1667_p3}}, {1'd1}};
assign or_ln14_8_fu_1748_p4 = {{{tmp_48_reg_3346}, {2'd3}}, {tmp_130_reg_3271}};
assign or_ln14_9_fu_2013_p4 = {{{tmp_48_reg_3346}, {2'd3}}, {conv3_udiv}};
assign or_ln14_s_fu_2181_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_reg_3636}}, {p_cast_reg_3159}};
assign or_ln1_fu_2281_p3 = {{lshr_ln9_reg_3184}, {1'd1}};
assign or_ln_fu_1449_p3 = {{tmp_fu_1439_p4}, {p_cast_fu_1403_p1}};
assign p_cast_fu_1403_p1 = empty_10;
assign select_ln14_30_fu_2827_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_31_fu_2834_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign shl_ln14_10_fu_2116_p3 = {{tmp_48_reg_3346}, {9'd480}};
assign shl_ln14_11_fu_2196_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_s_reg_3562}}, {6'd32}};
assign shl_ln14_12_fu_2235_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_134_reg_3578}}, {7'd64}};
assign shl_ln14_13_fu_2256_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_134_reg_3578}}, {7'd96}};
assign shl_ln14_14_fu_2330_p7 = {{{{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_reg_3636}}, {1'd1}}, {tmp_130_reg_3271}}, {6'd32}};
assign shl_ln14_15_fu_2396_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_reg_3636}}, {8'd192}};
assign shl_ln14_16_fu_2417_p5 = {{{{tmp_132_reg_3520}, {1'd1}}, {tmp_133_reg_3636}}, {8'd224}};
assign shl_ln14_17_fu_2499_p5 = {{{{tmp_132_reg_3520}, {2'd3}}, {tmp_60_reg_3368}}, {6'd32}};
assign shl_ln14_18_fu_2562_p5 = {{{{tmp_132_reg_3520}, {2'd3}}, {tmp_131_reg_3387}}, {7'd64}};
assign shl_ln14_19_fu_2583_p5 = {{{{tmp_132_reg_3520}, {2'd3}}, {tmp_131_reg_3387}}, {7'd96}};
assign shl_ln14_1_fu_1507_p3 = {{tmp_2_reg_3233}, {7'd64}};
assign shl_ln14_20_fu_2665_p5 = {{{{tmp_132_reg_3520}, {3'd7}}, {tmp_130_reg_3271}}, {6'd32}};
assign shl_ln14_21_fu_2734_p3 = {{tmp_132_reg_3520}, {10'd960}};
assign shl_ln14_22_fu_2752_p3 = {{tmp_132_reg_3520}, {10'd992}};
assign shl_ln14_2_fu_1525_p3 = {{tmp_2_reg_3233}, {7'd96}};
assign shl_ln14_3_fu_1612_p5 = {{{{tmp_reg_3194}, {1'd1}}, {tmp_130_reg_3271}}, {6'd32}};
assign shl_ln14_4_fu_1712_p3 = {{tmp_reg_3194}, {8'd192}};
assign shl_ln14_5_fu_1730_p3 = {{tmp_reg_3194}, {8'd224}};
assign shl_ln14_6_fu_1809_p5 = {{{{tmp_48_reg_3346}, {1'd1}}, {tmp_60_reg_3368}}, {6'd32}};
assign shl_ln14_7_fu_1909_p5 = {{{{tmp_48_reg_3346}, {1'd1}}, {tmp_131_reg_3387}}, {7'd64}};
assign shl_ln14_8_fu_1930_p5 = {{{{tmp_48_reg_3346}, {1'd1}}, {tmp_131_reg_3387}}, {7'd96}};
assign shl_ln14_9_fu_2027_p5 = {{{{tmp_48_reg_3346}, {2'd3}}, {tmp_130_reg_3271}}, {6'd32}};
assign shl_ln14_s_fu_2098_p3 = {{tmp_48_reg_3346}, {9'd448}};
assign shl_ln_fu_1463_p3 = {{lshr_ln9_fu_1423_p4}, {6'd32}};
assign tmp_130_fu_1543_p3 = s_1_reg_3166[32'd1];
assign tmp_131_fu_1667_p3 = s_1_reg_3166[32'd2];
assign tmp_132_fu_1830_p3 = s_1_reg_3166[32'd5];
assign tmp_133_fu_1951_p3 = s_1_reg_3166[32'd3];
assign tmp_134_fu_1862_p4 = {{s_1_reg_3166[3:2]}};
assign tmp_2_fu_1483_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_48_fu_1633_p4 = {{s_1_reg_3166[5:4]}};
assign tmp_60_fu_1642_p4 = {{s_1_reg_3166[2:1]}};
assign tmp_fu_1439_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_s_fu_1837_p4 = {{s_1_reg_3166[3:1]}};
assign zext_ln13_fu_2277_p1 = s_1_reg_3166;
assign zext_ln14_10_fu_1924_p1 = add_ln14_7_fu_1919_p2;
assign zext_ln14_11_fu_1945_p1 = add_ln14_8_fu_1940_p2;
assign zext_ln14_12_fu_2021_p1 = or_ln14_9_fu_2013_p4;
assign zext_ln14_13_fu_2042_p1 = add_ln14_9_fu_2037_p2;
assign zext_ln14_14_fu_2110_p1 = add_ln14_10_fu_2105_p2;
assign zext_ln14_15_fu_2128_p1 = add_ln14_11_fu_2123_p2;
assign zext_ln14_16_fu_2190_p1 = or_ln14_s_fu_2181_p5;
assign zext_ln14_17_fu_2211_p1 = add_ln14_12_fu_2206_p2;
assign zext_ln14_18_fu_2250_p1 = add_ln14_13_fu_2245_p2;
assign zext_ln14_19_fu_2271_p1 = add_ln14_14_fu_2266_p2;
assign zext_ln14_1_fu_1477_p1 = add_ln14_fu_1471_p2;
assign zext_ln14_20_fu_2324_p1 = or_ln14_12_fu_2313_p6;
assign zext_ln14_21_fu_2348_p1 = add_ln14_15_fu_2343_p2;
assign zext_ln14_22_fu_2411_p1 = add_ln14_16_fu_2406_p2;
assign zext_ln14_23_fu_2432_p1 = add_ln14_17_fu_2427_p2;
assign zext_ln14_24_fu_2493_p1 = or_ln14_15_fu_2485_p4;
assign zext_ln14_25_fu_2514_p1 = add_ln14_18_fu_2509_p2;
assign zext_ln14_26_fu_2577_p1 = add_ln14_19_fu_2572_p2;
assign zext_ln14_27_fu_2598_p1 = add_ln14_20_fu_2593_p2;
assign zext_ln14_28_fu_2659_p1 = or_ln14_18_fu_2651_p4;
assign zext_ln14_29_fu_2680_p1 = add_ln14_21_fu_2675_p2;
assign zext_ln14_2_fu_1519_p1 = add_ln14_1_fu_1514_p2;
assign zext_ln14_30_fu_2746_p1 = add_ln14_22_fu_2741_p2;
assign zext_ln14_31_fu_2764_p1 = add_ln14_23_fu_2759_p2;
assign zext_ln14_32_fu_2288_p1 = or_ln1_fu_2281_p3;
assign zext_ln14_33_fu_2361_p1 = or_ln13_1_fu_2354_p3;
assign zext_ln14_34_fu_1501_p1 = or_ln14_1_fu_1493_p3;
assign zext_ln14_35_fu_2373_p1 = or_ln13_2_fu_2366_p3;
assign zext_ln14_36_fu_2445_p1 = or_ln13_3_fu_2438_p3;
assign zext_ln14_37_fu_1559_p1 = or_ln14_2_fu_1550_p4;
assign zext_ln14_38_fu_2460_p1 = or_ln13_4_fu_2450_p5;
assign zext_ln14_39_fu_2527_p1 = or_ln13_5_fu_2520_p3;
assign zext_ln14_3_fu_1537_p1 = add_ln14_2_fu_1532_p2;
assign zext_ln14_40_fu_1572_p1 = or_ln14_4_fu_1565_p3;
assign zext_ln14_41_fu_2539_p1 = or_ln13_6_fu_2532_p3;
assign zext_ln14_42_fu_2611_p1 = or_ln13_7_fu_2604_p3;
assign zext_ln14_43_fu_1661_p1 = or_ln14_5_fu_1651_p4;
assign zext_ln14_44_fu_2626_p1 = or_ln13_8_fu_2616_p5;
assign zext_ln14_45_fu_2696_p1 = or_ln13_9_fu_2686_p5;
assign zext_ln14_46_fu_1686_p1 = or_ln14_7_fu_1674_p5;
assign zext_ln14_47_fu_2711_p1 = or_ln13_s_fu_2701_p5;
assign zext_ln14_48_fu_2787_p1 = or_ln13_10_fu_2780_p3;
assign zext_ln14_49_fu_1756_p1 = or_ln14_8_fu_1748_p4;
assign zext_ln14_4_fu_1606_p1 = or_ln14_3_fu_1598_p4;
assign zext_ln14_50_fu_2802_p1 = or_ln13_11_fu_2792_p5;
assign zext_ln14_51_fu_2848_p1 = or_ln13_12_fu_2841_p3;
assign zext_ln14_52_fu_1769_p1 = or_ln14_10_fu_1762_p3;
assign zext_ln14_53_fu_2860_p1 = or_ln13_13_fu_2853_p3;
assign zext_ln14_54_fu_2888_p1 = or_ln13_14_fu_2881_p3;
assign zext_ln14_55_fu_1856_p1 = or_ln14_11_fu_1846_p4;
assign zext_ln14_56_fu_2903_p1 = or_ln13_15_fu_2893_p5;
assign zext_ln14_57_fu_2918_p1 = or_ln13_16_fu_2908_p5;
assign zext_ln14_58_fu_1883_p1 = or_ln14_13_fu_1871_p5;
assign zext_ln14_59_fu_2933_p1 = or_ln13_17_fu_2923_p5;
assign zext_ln14_5_fu_1627_p1 = add_ln14_3_fu_1622_p2;
assign zext_ln14_60_fu_2948_p1 = or_ln13_18_fu_2938_p5;
assign zext_ln14_61_fu_1970_p1 = or_ln14_14_fu_1958_p6;
assign zext_ln14_62_fu_2966_p1 = or_ln13_19_fu_2953_p7;
assign zext_ln14_63_fu_2981_p1 = or_ln13_20_fu_2971_p5;
assign zext_ln14_64_fu_1987_p1 = or_ln14_16_fu_1976_p5;
assign zext_ln14_65_fu_2996_p1 = or_ln13_21_fu_2986_p5;
assign zext_ln14_66_fu_3008_p1 = or_ln13_22_fu_3001_p3;
assign zext_ln14_67_fu_2056_p1 = or_ln14_17_fu_2048_p4;
assign zext_ln14_68_fu_3023_p1 = or_ln13_23_fu_3013_p5;
assign zext_ln14_69_fu_3038_p1 = or_ln13_24_fu_3028_p5;
assign zext_ln14_6_fu_1724_p1 = add_ln14_4_fu_1719_p2;
assign zext_ln14_70_fu_2072_p1 = or_ln14_19_fu_2062_p5;
assign zext_ln14_71_fu_3053_p1 = or_ln13_25_fu_3043_p5;
assign zext_ln14_72_fu_3065_p1 = or_ln13_26_fu_3058_p3;
assign zext_ln14_73_fu_2142_p1 = or_ln14_20_fu_2134_p4;
assign zext_ln14_74_fu_3080_p1 = or_ln13_27_fu_3070_p5;
assign zext_ln14_75_fu_3092_p1 = or_ln13_28_fu_3085_p3;
assign zext_ln14_76_fu_2155_p1 = or_ln14_21_fu_2148_p3;
assign zext_ln14_77_fu_3104_p1 = or_ln13_29_fu_3097_p3;
assign zext_ln14_7_fu_1742_p1 = add_ln14_5_fu_1737_p2;
assign zext_ln14_8_fu_1803_p1 = or_ln14_6_fu_1795_p4;
assign zext_ln14_9_fu_1824_p1 = add_ln14_6_fu_1819_p2;
assign zext_ln14_fu_1457_p1 = or_ln_fu_1449_p3;
assign zext_ln9_fu_1433_p1 = lshr_ln9_fu_1423_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_3132[10:7] <= 4'b0000;
    p_cast_reg_3159[7] <= 1'b0;
end
endmodule 