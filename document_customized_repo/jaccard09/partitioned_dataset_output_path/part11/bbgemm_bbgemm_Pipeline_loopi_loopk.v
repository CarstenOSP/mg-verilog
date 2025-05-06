
module bbgemm_bbgemm_Pipeline_loopi_loopk (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,kk,zext_ln16,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,jj,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,zext_ln15,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0,prod_address1,prod_ce1,prod_we1,prod_d1,prod_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage9 = 32'd64;
parameter    ap_ST_fsm_pp0_stage10 = 32'd128;
parameter    ap_ST_fsm_pp0_stage11 = 32'd256;
parameter    ap_ST_fsm_pp0_stage12 = 32'd512;
parameter    ap_ST_fsm_pp0_stage13 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage14 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage15 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage16 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage6 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage7 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage8 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] kk;
input  [5:0] zext_ln16;
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m1_address1;
output   m1_ce1;
input  [63:0] m1_q1;
input  [6:0] jj;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
input  [5:0] zext_ln15;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
input  [63:0] prod_q0;
output  [11:0] prod_address1;
output   prod_ce1;
output   prod_we1;
output  [63:0] prod_d1;
input  [63:0] prod_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_subdone;
reg   [0:0] icmp_ln17_reg_2126;
reg    ap_condition_exit_pp0_iter0_stage17;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_619;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_623;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_628;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_633;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] grp_fu_615_p2;
reg   [63:0] reg_638;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_643;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_648;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_653;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_658;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_663;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] reg_668;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_673;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_611_p2;
reg   [63:0] reg_678;
reg   [63:0] reg_683;
reg   [63:0] reg_688;
reg   [63:0] reg_693;
reg   [63:0] reg_698;
reg   [63:0] reg_703;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_708;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_713;
wire   [11:0] zext_ln15_cast_fu_718_p1;
reg   [11:0] zext_ln15_cast_reg_2094;
wire   [0:0] icmp_ln17_fu_740_p2;
wire   [3:0] select_ln11_fu_766_p3;
reg   [3:0] select_ln11_reg_2130;
wire   [0:0] first_iter_0_fu_788_p2;
reg   [0:0] first_iter_0_reg_2137;
wire   [5:0] empty_20_fu_794_p1;
reg   [5:0] empty_20_reg_2141;
wire   [2:0] tmp_fu_798_p4;
reg   [2:0] tmp_reg_2157;
wire   [0:0] trunc_ln20_fu_808_p1;
reg   [0:0] trunc_ln20_reg_2191;
wire   [1:0] tmp_1_fu_812_p4;
reg   [1:0] tmp_1_reg_2203;
wire   [6:0] or_ln23_fu_845_p2;
reg   [6:0] or_ln23_reg_2227;
reg   [4:0] tmp_12_reg_2237;
reg   [3:0] tmp_13_reg_2243;
reg   [0:0] tmp_14_reg_2251;
reg   [11:0] prod_addr_reg_2256;
reg   [11:0] prod_addr_reg_2256_pp0_iter1_reg;
reg   [11:0] prod_addr_1_reg_2262;
reg   [11:0] prod_addr_1_reg_2262_pp0_iter1_reg;
wire   [2:0] tmp_15_fu_992_p4;
reg   [2:0] tmp_15_reg_2283;
reg   [63:0] prod_load_reg_2294;
reg   [63:0] prod_load_1_reg_2299;
reg   [11:0] prod_addr_2_reg_2304;
reg   [11:0] prod_addr_2_reg_2304_pp0_iter1_reg;
reg   [11:0] prod_addr_3_reg_2310;
reg   [11:0] prod_addr_3_reg_2310_pp0_iter1_reg;
reg   [63:0] m1_load_reg_2316;
reg   [63:0] m1_load_1_reg_2331;
wire   [0:0] tmp_16_fu_1081_p3;
reg   [0:0] tmp_16_reg_2336;
reg   [63:0] prod_load_2_reg_2366;
reg   [63:0] prod_load_3_reg_2371;
reg   [11:0] prod_addr_4_reg_2376;
reg   [11:0] prod_addr_4_reg_2376_pp0_iter1_reg;
reg   [11:0] prod_addr_5_reg_2382;
reg   [11:0] prod_addr_5_reg_2382_pp0_iter1_reg;
wire   [63:0] temp_x_fu_1153_p1;
reg   [63:0] temp_x_reg_2388;
wire   [63:0] bitcast_ln23_fu_1157_p1;
reg   [63:0] m2_load_5_reg_2398;
wire   [63:0] temp_x_2_fu_1190_p1;
reg   [63:0] temp_x_2_reg_2413;
wire   [63:0] temp_x_3_fu_1194_p1;
reg   [63:0] temp_x_3_reg_2418;
reg   [63:0] prod_load_4_reg_2423;
reg   [63:0] prod_load_5_reg_2428;
reg   [11:0] prod_addr_6_reg_2433;
reg   [11:0] prod_addr_6_reg_2433_pp0_iter1_reg;
reg   [11:0] prod_addr_7_reg_2439;
reg   [11:0] prod_addr_7_reg_2439_pp0_iter1_reg;
wire   [63:0] bitcast_ln23_1_fu_1232_p1;
reg   [63:0] m2_load_7_reg_2450;
reg   [63:0] prod_load_6_reg_2465;
reg   [63:0] prod_load_7_reg_2470;
wire   [63:0] bitcast_ln23_2_fu_1269_p1;
reg   [63:0] m2_load_9_reg_2480;
wire   [63:0] bitcast_ln23_6_fu_1318_p1;
reg   [63:0] m2_load_16_reg_2500;
reg   [63:0] m2_load_17_reg_2505;
wire   [63:0] bitcast_ln23_7_fu_1377_p1;
reg   [63:0] m2_load_18_reg_2530;
reg   [63:0] m2_load_19_reg_2535;
wire   [63:0] temp_x_1_fu_1435_p1;
reg   [63:0] temp_x_1_reg_2555;
wire   [63:0] bitcast_ln23_8_fu_1439_p1;
reg   [63:0] m2_load_20_reg_2565;
reg   [63:0] m2_load_21_reg_2570;
wire   [63:0] bitcast_ln23_9_fu_1498_p1;
reg   [63:0] m2_load_22_reg_2595;
reg   [63:0] m2_load_23_reg_2600;
wire   [63:0] bitcast_ln23_10_fu_1546_p1;
reg   [63:0] m2_load_24_reg_2625;
reg   [63:0] m2_load_25_reg_2630;
wire   [63:0] bitcast_ln23_11_fu_1598_p1;
reg   [63:0] m2_load_27_reg_2655;
wire   [63:0] bitcast_ln23_12_fu_1650_p1;
reg   [63:0] m2_load_29_reg_2680;
wire   [63:0] bitcast_ln23_13_fu_1702_p1;
wire   [63:0] bitcast_ln23_3_fu_1706_p1;
reg   [63:0] m2_load_10_reg_2710;
reg   [63:0] m2_load_11_reg_2715;
wire   [63:0] bitcast_ln23_4_fu_1747_p1;
reg   [63:0] m2_load_12_reg_2735;
reg   [63:0] m2_load_13_reg_2740;
wire   [63:0] bitcast_ln23_5_fu_1788_p1;
reg   [63:0] m2_load_14_reg_2760;
reg   [63:0] m2_load_15_reg_2765;
wire   [63:0] bitcast_ln23_14_fu_1831_p1;
wire   [63:0] bitcast_ln23_15_fu_1835_p1;
wire   [63:0] bitcast_ln23_16_fu_1839_p1;
wire   [63:0] bitcast_ln23_17_fu_1843_p1;
wire   [63:0] bitcast_ln23_18_fu_1847_p1;
wire   [63:0] bitcast_ln23_19_fu_1851_p1;
wire   [63:0] bitcast_ln23_20_fu_1855_p1;
wire   [63:0] bitcast_ln23_21_fu_1859_p1;
wire   [63:0] bitcast_ln23_22_fu_1863_p1;
wire   [63:0] bitcast_ln23_23_fu_1867_p1;
wire   [63:0] bitcast_ln23_24_fu_1871_p1;
wire   [63:0] bitcast_ln23_25_fu_1875_p1;
wire   [63:0] bitcast_ln23_26_fu_1879_p1;
wire   [63:0] bitcast_ln23_27_fu_1884_p1;
wire   [63:0] bitcast_ln23_28_fu_1888_p1;
reg   [0:0] tmp_17_reg_2860;
wire   [63:0] bitcast_ln23_29_fu_1911_p1;
reg   [63:0] mul_24_reg_2869;
wire   [63:0] bitcast_ln23_30_fu_1915_p1;
reg   [63:0] mul_25_reg_2879;
wire   [63:0] bitcast_ln23_31_fu_1920_p1;
reg   [63:0] mul_26_reg_2889;
reg   [63:0] mul_27_reg_2894;
reg   [63:0] mul_28_reg_2899;
reg   [63:0] mul_29_reg_2904;
reg   [63:0] mul_30_reg_2909;
wire   [63:0] bitcast_ln24_15_fu_1995_p1;
reg   [63:0] bitcast_ln24_15_reg_2914;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln23_fu_832_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln23_1_fu_873_p1;
wire   [63:0] p_cast_fu_922_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast7_fu_939_p1;
wire   [63:0] zext_ln21_fu_959_p1;
wire   [63:0] zext_ln23_2_fu_973_p1;
wire   [63:0] zext_ln23_3_fu_987_p1;
wire   [63:0] zext_ln21_1_fu_1011_p1;
wire   [63:0] p_cast8_fu_1028_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast9_fu_1045_p1;
wire   [63:0] zext_ln23_4_fu_1059_p1;
wire   [63:0] zext_ln23_5_fu_1076_p1;
wire   [63:0] zext_ln21_2_fu_1099_p1;
wire   [63:0] zext_ln21_3_fu_1114_p1;
wire   [63:0] p_cast10_fu_1131_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast11_fu_1148_p1;
wire   [63:0] zext_ln23_6_fu_1171_p1;
wire   [63:0] zext_ln23_7_fu_1185_p1;
wire   [63:0] p_cast12_fu_1210_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln24_fu_1227_p1;
wire   [63:0] zext_ln23_8_fu_1246_p1;
wire   [63:0] zext_ln23_9_fu_1264_p1;
wire   [63:0] zext_ln23_10_fu_1287_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln23_11_fu_1305_p1;
wire   [63:0] zext_ln23_18_fu_1339_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln23_19_fu_1360_p1;
wire   [63:0] zext_ln23_20_fu_1397_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln23_21_fu_1418_p1;
wire   [63:0] zext_ln23_22_fu_1460_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln23_23_fu_1481_p1;
wire   [63:0] zext_ln23_24_fu_1511_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln23_25_fu_1529_p1;
wire   [63:0] zext_ln23_26_fu_1563_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln23_27_fu_1581_p1;
wire   [63:0] zext_ln23_28_fu_1615_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln23_29_fu_1633_p1;
wire   [63:0] zext_ln23_30_fu_1667_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln23_31_fu_1685_p1;
wire   [63:0] zext_ln23_12_fu_1724_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln23_13_fu_1742_p1;
wire   [63:0] zext_ln23_14_fu_1765_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln23_15_fu_1783_p1;
wire   [63:0] zext_ln23_16_fu_1801_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln23_17_fu_1822_p1;
reg   [3:0] k_fu_164;
wire   [3:0] add_ln18_fu_1893_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [6:0] i_fu_168;
wire   [6:0] select_ln17_fu_780_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [7:0] indvar_flatten_fu_172;
wire   [7:0] add_ln17_fu_746_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [63:0] empty_fu_176;
wire   [63:0] bitcast_ln24_fu_1310_p1;
reg   [63:0] empty_13_fu_180;
wire   [63:0] bitcast_ln24_1_fu_1365_p1;
reg   [63:0] empty_14_fu_184;
wire   [63:0] bitcast_ln24_2_fu_1423_p1;
reg   [63:0] empty_15_fu_188;
wire   [63:0] bitcast_ln24_3_fu_1486_p1;
reg   [63:0] empty_16_fu_192;
wire   [63:0] bitcast_ln24_4_fu_1534_p1;
reg   [63:0] empty_17_fu_196;
wire   [63:0] bitcast_ln24_5_fu_1586_p1;
reg   [63:0] empty_18_fu_200;
wire   [63:0] bitcast_ln24_6_fu_1638_p1;
wire    ap_block_pp0_stage16;
reg   [63:0] empty_19_fu_204;
wire   [63:0] bitcast_ln24_7_fu_1690_p1;
wire    ap_block_pp0_stage17;
reg    m2_ce1_local;
reg   [11:0] m2_address1_local;
reg    m2_ce0_local;
reg   [11:0] m2_address0_local;
reg    prod_ce1_local;
reg   [11:0] prod_address1_local;
reg    prod_ce0_local;
reg   [11:0] prod_address0_local;
reg    prod_we0_local;
reg   [63:0] prod_d0_local;
wire   [63:0] bitcast_ln24_8_fu_1930_p1;
reg    prod_we1_local;
reg   [63:0] prod_d1_local;
wire   [63:0] bitcast_ln24_9_fu_1940_p1;
wire   [63:0] bitcast_ln24_10_fu_1950_p1;
wire   [63:0] bitcast_ln24_11_fu_1960_p1;
wire   [63:0] bitcast_ln24_12_fu_1970_p1;
wire   [63:0] bitcast_ln24_13_fu_1980_p1;
wire   [63:0] bitcast_ln24_14_fu_1990_p1;
reg    m1_ce1_local;
reg   [11:0] m1_address1_local;
reg    m1_ce0_local;
reg   [11:0] m1_address0_local;
reg   [63:0] grp_fu_611_p0;
reg   [63:0] grp_fu_611_p1;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage27;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage29;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage31;
reg   [63:0] grp_fu_615_p0;
reg   [63:0] grp_fu_615_p1;
wire   [0:0] tmp_2_fu_758_p3;
wire   [6:0] add_ln17_1_fu_774_p2;
wire   [11:0] add_ln1_fu_822_p4;
wire   [6:0] tmp_10_fu_837_p3;
wire   [5:0] tmp_11_fu_851_p4;
wire   [11:0] or_ln23_s_fu_861_p5;
wire   [11:0] tmp_3_fu_916_p3;
wire   [11:0] tmp_5_fu_927_p3;
wire   [11:0] empty_21_fu_934_p2;
wire   [11:0] zext_ln18_fu_944_p1;
wire   [11:0] add_ln_fu_947_p3;
wire   [11:0] add_ln21_fu_953_p2;
wire   [11:0] or_ln23_1_fu_964_p5;
wire   [11:0] or_ln23_2_fu_978_p5;
wire   [11:0] add_ln21_2_fu_1001_p5;
wire   [11:0] tmp_6_fu_1016_p3;
wire   [11:0] empty_22_fu_1023_p2;
wire   [11:0] tmp_7_fu_1033_p3;
wire   [11:0] empty_23_fu_1040_p2;
wire   [11:0] or_ln23_3_fu_1050_p5;
wire   [11:0] or_ln23_4_fu_1064_p7;
wire   [11:0] add_ln21_3_fu_1088_p6;
wire   [11:0] add_ln21_4_fu_1104_p5;
wire   [11:0] tmp_8_fu_1119_p3;
wire   [11:0] empty_24_fu_1126_p2;
wire   [11:0] tmp_9_fu_1136_p3;
wire   [11:0] empty_25_fu_1143_p2;
wire   [11:0] or_ln23_5_fu_1162_p5;
wire   [11:0] or_ln23_6_fu_1176_p5;
wire   [11:0] tmp_s_fu_1198_p3;
wire   [11:0] empty_26_fu_1205_p2;
wire   [11:0] tmp_4_fu_1215_p3;
wire   [11:0] empty_27_fu_1222_p2;
wire   [11:0] add_ln2_fu_1237_p5;
wire   [11:0] or_ln23_7_fu_1251_p4;
wire   [11:0] add_ln23_fu_1259_p2;
wire   [11:0] or_ln23_8_fu_1274_p4;
wire   [11:0] add_ln23_1_fu_1282_p2;
wire   [11:0] or_ln23_9_fu_1292_p4;
wire   [11:0] add_ln23_2_fu_1300_p2;
wire   [11:0] or_ln23_15_fu_1323_p6;
wire   [11:0] add_ln23_8_fu_1334_p2;
wire   [11:0] or_ln23_16_fu_1344_p6;
wire   [11:0] add_ln23_9_fu_1355_p2;
wire   [11:0] or_ln23_17_fu_1381_p6;
wire   [11:0] add_ln23_10_fu_1392_p2;
wire   [11:0] or_ln23_18_fu_1402_p6;
wire   [11:0] add_ln23_11_fu_1413_p2;
wire   [11:0] or_ln23_19_fu_1444_p6;
wire   [11:0] add_ln23_12_fu_1455_p2;
wire   [11:0] or_ln23_20_fu_1465_p6;
wire   [11:0] add_ln23_13_fu_1476_p2;
wire   [11:0] add_ln23_s_fu_1502_p5;
wire   [11:0] or_ln23_21_fu_1516_p4;
wire   [11:0] add_ln23_14_fu_1524_p2;
wire   [11:0] or_ln23_22_fu_1550_p4;
wire   [11:0] add_ln23_15_fu_1558_p2;
wire   [11:0] or_ln23_23_fu_1568_p4;
wire   [11:0] add_ln23_16_fu_1576_p2;
wire   [11:0] or_ln23_24_fu_1602_p4;
wire   [11:0] add_ln23_17_fu_1610_p2;
wire   [11:0] or_ln23_25_fu_1620_p4;
wire   [11:0] add_ln23_18_fu_1628_p2;
wire   [11:0] or_ln23_26_fu_1654_p4;
wire   [11:0] add_ln23_19_fu_1662_p2;
wire   [11:0] or_ln23_27_fu_1672_p4;
wire   [11:0] add_ln23_20_fu_1680_p2;
wire   [11:0] or_ln23_10_fu_1711_p4;
wire   [11:0] add_ln23_3_fu_1719_p2;
wire   [11:0] or_ln23_11_fu_1729_p4;
wire   [11:0] add_ln23_4_fu_1737_p2;
wire   [11:0] or_ln23_12_fu_1752_p4;
wire   [11:0] add_ln23_5_fu_1760_p2;
wire   [11:0] or_ln23_13_fu_1770_p4;
wire   [11:0] add_ln23_6_fu_1778_p2;
wire   [11:0] or_ln23_28_fu_1792_p5;
wire   [11:0] or_ln23_14_fu_1806_p6;
wire   [11:0] add_ln23_7_fu_1817_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_2247;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_164 = 4'd0;
#0 i_fu_168 = 7'd0;
#0 indvar_flatten_fu_172 = 8'd0;
#0 empty_fu_176 = 64'd0;
#0 empty_13_fu_180 = 64'd0;
#0 empty_14_fu_184 = 64'd0;
#0 empty_15_fu_188 = 64'd0;
#0 empty_16_fu_192 = 64'd0;
#0 empty_17_fu_196 = 64'd0;
#0 empty_18_fu_200 = 64'd0;
#0 empty_19_fu_204 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_611_p0),.din1(grp_fu_611_p1),.ce(1'b1),.dout(grp_fu_611_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_615_p0),.din1(grp_fu_615_p1),.ce(1'b1),.dout(grp_fu_615_p2));
bbgemm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage17),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage17)) begin
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
        if (((1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_13_fu_180 <= bitcast_ln24_1_fu_1365_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_13_fu_180 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_14_fu_184 <= bitcast_ln24_2_fu_1423_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_14_fu_184 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_15_fu_188 <= bitcast_ln24_3_fu_1486_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_15_fu_188 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_16_fu_192 <= bitcast_ln24_4_fu_1534_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_16_fu_192 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_17_fu_196 <= bitcast_ln24_5_fu_1586_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_17_fu_196 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_18_fu_200 <= bitcast_ln24_6_fu_1638_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_18_fu_200 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_19_fu_204 <= bitcast_ln24_7_fu_1690_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_19_fu_204 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        if ((1'b1 == ap_condition_2247)) begin
            empty_fu_176 <= bitcast_ln24_fu_1310_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_176 <= grp_fu_611_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln17_fu_740_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_168 <= select_ln17_fu_780_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_168 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln17_fu_740_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_172 <= add_ln17_fu_746_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_172 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_164 <= 4'd0;
    end else if (((icmp_ln17_reg_2126 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        k_fu_164 <= add_ln18_fu_1893_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_623 <= m2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_623 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        reg_628 <= m2_q0;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_628 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            reg_633 <= m2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_633 <= m2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        bitcast_ln24_15_reg_2914 <= bitcast_ln24_15_fu_1995_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_20_reg_2141 <= empty_20_fu_794_p1;
        first_iter_0_reg_2137 <= first_iter_0_fu_788_p2;
        icmp_ln17_reg_2126 <= icmp_ln17_fu_740_p2;
        or_ln23_reg_2227 <= or_ln23_fu_845_p2;
        select_ln11_reg_2130 <= select_ln11_fu_766_p3;
        tmp_12_reg_2237 <= {{or_ln23_fu_845_p2[6:2]}};
        tmp_13_reg_2243 <= {{or_ln23_fu_845_p2[6:3]}};
        tmp_14_reg_2251 <= or_ln23_fu_845_p2[32'd1];
        tmp_1_reg_2203 <= {{select_ln11_fu_766_p3[2:1]}};
        tmp_reg_2157 <= {{kk[5:3]}};
        trunc_ln20_reg_2191 <= trunc_ln20_fu_808_p1;
        zext_ln15_cast_reg_2094[5 : 0] <= zext_ln15_cast_fu_718_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_load_1_reg_2331 <= m1_q0;
        m1_load_reg_2316 <= m1_q1;
        prod_load_1_reg_2299 <= prod_q0;
        prod_load_reg_2294 <= prod_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        m2_load_10_reg_2710 <= m2_q1;
        m2_load_11_reg_2715 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        m2_load_12_reg_2735 <= m2_q1;
        m2_load_13_reg_2740 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        m2_load_14_reg_2760 <= m2_q1;
        m2_load_15_reg_2765 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        m2_load_16_reg_2500 <= m2_q1;
        m2_load_17_reg_2505 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        m2_load_18_reg_2530 <= m2_q1;
        m2_load_19_reg_2535 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        m2_load_20_reg_2565 <= m2_q1;
        m2_load_21_reg_2570 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        m2_load_22_reg_2595 <= m2_q1;
        m2_load_23_reg_2600 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        m2_load_24_reg_2625 <= m2_q1;
        m2_load_25_reg_2630 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        m2_load_27_reg_2655 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        m2_load_29_reg_2680 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_load_5_reg_2398 <= m2_q0;
        prod_load_2_reg_2366 <= prod_q1;
        prod_load_3_reg_2371 <= prod_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        m2_load_7_reg_2450 <= m2_q0;
        prod_load_4_reg_2423 <= prod_q1;
        prod_load_5_reg_2428 <= prod_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        m2_load_9_reg_2480 <= m2_q0;
        prod_load_6_reg_2465 <= prod_q1;
        prod_load_7_reg_2470 <= prod_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_24_reg_2869 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_25_reg_2879 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_26_reg_2889 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_27_reg_2894 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_28_reg_2899 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_29_reg_2904 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_30_reg_2909 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_addr_1_reg_2262 <= p_cast7_fu_939_p1;
        prod_addr_1_reg_2262_pp0_iter1_reg <= prod_addr_1_reg_2262;
        prod_addr_reg_2256 <= p_cast_fu_922_p1;
        prod_addr_reg_2256_pp0_iter1_reg <= prod_addr_reg_2256;
        tmp_15_reg_2283 <= {{zext_ln16[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_addr_2_reg_2304 <= p_cast8_fu_1028_p1;
        prod_addr_2_reg_2304_pp0_iter1_reg <= prod_addr_2_reg_2304;
        prod_addr_3_reg_2310 <= p_cast9_fu_1045_p1;
        prod_addr_3_reg_2310_pp0_iter1_reg <= prod_addr_3_reg_2310;
        tmp_16_reg_2336 <= select_ln11_reg_2130[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_addr_4_reg_2376 <= p_cast10_fu_1131_p1;
        prod_addr_4_reg_2376_pp0_iter1_reg <= prod_addr_4_reg_2376;
        prod_addr_5_reg_2382 <= p_cast11_fu_1148_p1;
        prod_addr_5_reg_2382_pp0_iter1_reg <= prod_addr_5_reg_2382;
        temp_x_2_reg_2413 <= temp_x_2_fu_1190_p1;
        temp_x_3_reg_2418 <= temp_x_3_fu_1194_p1;
        temp_x_reg_2388 <= temp_x_fu_1153_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_addr_6_reg_2433 <= p_cast12_fu_1210_p1;
        prod_addr_6_reg_2433_pp0_iter1_reg <= prod_addr_6_reg_2433;
        prod_addr_7_reg_2439 <= zext_ln24_fu_1227_p1;
        prod_addr_7_reg_2439_pp0_iter1_reg <= prod_addr_7_reg_2439;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_619 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_638 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_643 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_648 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_653 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_658 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_663 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_668 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_673 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_678 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_683 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_688 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_693 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_698 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_703 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        reg_708 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        reg_713 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        temp_x_1_reg_2555 <= temp_x_1_fu_1435_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        tmp_17_reg_2860 <= add_ln18_fu_1893_p2[32'd3];
    end
end
always @ (*) begin
    if (((icmp_ln17_reg_2126 == 1'd1) & (1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
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
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_168;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_172;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_164;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_611_p0 = reg_713;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_611_p0 = reg_708;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_611_p0 = reg_703;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_611_p0 = reg_698;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_611_p0 = reg_693;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_611_p0 = reg_688;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_611_p0 = reg_683;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_611_p0 = reg_678;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_611_p0 = empty_19_fu_204;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_611_p0 = empty_18_fu_200;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_611_p0 = empty_17_fu_196;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_611_p0 = empty_16_fu_192;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_611_p0 = empty_15_fu_188;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_611_p0 = empty_14_fu_184;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_611_p0 = empty_13_fu_180;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_611_p0 = empty_fu_176;
    end else begin
        grp_fu_611_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_611_p1 = mul_30_reg_2909;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_611_p1 = mul_29_reg_2904;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_611_p1 = mul_28_reg_2899;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_611_p1 = mul_27_reg_2894;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_611_p1 = mul_26_reg_2889;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_611_p1 = mul_25_reg_2879;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_611_p1 = mul_24_reg_2869;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_611_p1 = reg_673;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_611_p1 = reg_668;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_611_p1 = reg_663;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_611_p1 = reg_658;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_611_p1 = reg_653;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_611_p1 = reg_648;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_611_p1 = reg_643;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_611_p1 = reg_638;
    end else begin
        grp_fu_611_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)))) begin
        grp_fu_615_p0 = temp_x_3_reg_2418;
    end else if ((((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_615_p0 = temp_x_2_reg_2413;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_615_p0 = temp_x_1_reg_2555;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_615_p0 = temp_x_1_fu_1435_p1;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_615_p0 = temp_x_reg_2388;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_615_p0 = temp_x_fu_1153_p1;
    end else begin
        grp_fu_615_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_615_p1 = bitcast_ln23_31_fu_1920_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_615_p1 = bitcast_ln23_30_fu_1915_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_615_p1 = bitcast_ln23_29_fu_1911_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_615_p1 = bitcast_ln23_28_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_615_p1 = bitcast_ln23_27_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_615_p1 = bitcast_ln23_26_fu_1879_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_615_p1 = bitcast_ln23_25_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_615_p1 = bitcast_ln23_24_fu_1871_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_615_p1 = bitcast_ln23_23_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_615_p1 = bitcast_ln23_22_fu_1863_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_615_p1 = bitcast_ln23_21_fu_1859_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_615_p1 = bitcast_ln23_20_fu_1855_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_615_p1 = bitcast_ln23_19_fu_1851_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_615_p1 = bitcast_ln23_18_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_615_p1 = bitcast_ln23_17_fu_1843_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_615_p1 = bitcast_ln23_16_fu_1839_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_615_p1 = bitcast_ln23_15_fu_1835_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_615_p1 = bitcast_ln23_14_fu_1831_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_615_p1 = bitcast_ln23_5_fu_1788_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_615_p1 = bitcast_ln23_4_fu_1747_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_615_p1 = bitcast_ln23_3_fu_1706_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_615_p1 = bitcast_ln23_13_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_615_p1 = bitcast_ln23_12_fu_1650_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_615_p1 = bitcast_ln23_11_fu_1598_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_615_p1 = bitcast_ln23_10_fu_1546_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_615_p1 = bitcast_ln23_9_fu_1498_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_615_p1 = bitcast_ln23_8_fu_1439_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_615_p1 = bitcast_ln23_7_fu_1377_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_615_p1 = bitcast_ln23_6_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_615_p1 = bitcast_ln23_2_fu_1269_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_615_p1 = bitcast_ln23_1_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_615_p1 = bitcast_ln23_fu_1157_p1;
    end else begin
        grp_fu_615_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m1_address0_local = zext_ln21_3_fu_1114_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address0_local = zext_ln21_1_fu_1011_p1;
        end else begin
            m1_address0_local = 'bx;
        end
    end else begin
        m1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m1_address1_local = zext_ln21_2_fu_1099_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address1_local = zext_ln21_fu_959_p1;
        end else begin
            m1_address1_local = 'bx;
        end
    end else begin
        m1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce1_local = 1'b1;
    end else begin
        m1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            m2_address0_local = zext_ln23_17_fu_1822_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_address0_local = zext_ln23_15_fu_1783_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_address0_local = zext_ln23_13_fu_1742_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            m2_address0_local = zext_ln23_31_fu_1685_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            m2_address0_local = zext_ln23_29_fu_1633_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            m2_address0_local = zext_ln23_27_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            m2_address0_local = zext_ln23_25_fu_1529_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            m2_address0_local = zext_ln23_23_fu_1481_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            m2_address0_local = zext_ln23_21_fu_1418_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            m2_address0_local = zext_ln23_19_fu_1360_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_address0_local = zext_ln23_11_fu_1305_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_address0_local = zext_ln23_9_fu_1264_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_address0_local = zext_ln23_7_fu_1185_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address0_local = zext_ln23_5_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address0_local = zext_ln23_3_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_address0_local = zext_ln23_1_fu_873_p1;
        end else begin
            m2_address0_local = 'bx;
        end
    end else begin
        m2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            m2_address1_local = zext_ln23_16_fu_1801_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_address1_local = zext_ln23_14_fu_1765_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_address1_local = zext_ln23_12_fu_1724_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            m2_address1_local = zext_ln23_30_fu_1667_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            m2_address1_local = zext_ln23_28_fu_1615_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            m2_address1_local = zext_ln23_26_fu_1563_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            m2_address1_local = zext_ln23_24_fu_1511_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            m2_address1_local = zext_ln23_22_fu_1460_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            m2_address1_local = zext_ln23_20_fu_1397_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            m2_address1_local = zext_ln23_18_fu_1339_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_address1_local = zext_ln23_10_fu_1287_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_address1_local = zext_ln23_8_fu_1246_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_address1_local = zext_ln23_6_fu_1171_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address1_local = zext_ln23_4_fu_1059_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address1_local = zext_ln23_2_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_address1_local = zext_ln23_fu_832_p1;
        end else begin
            m2_address1_local = 'bx;
        end
    end else begin
        m2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m2_ce1_local = 1'b1;
    end else begin
        m2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prod_address0_local = prod_addr_6_reg_2433_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_address0_local = prod_addr_4_reg_2376_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_address0_local = prod_addr_2_reg_2304_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_address0_local = prod_addr_reg_2256_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_address0_local = zext_ln24_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_address0_local = p_cast11_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_address0_local = p_cast9_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_address0_local = p_cast7_fu_939_p1;
    end else begin
        prod_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        prod_address1_local = prod_addr_7_reg_2439_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        prod_address1_local = prod_addr_5_reg_2382_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_address1_local = prod_addr_3_reg_2310_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_address1_local = prod_addr_1_reg_2262_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_address1_local = p_cast12_fu_1210_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_address1_local = p_cast10_fu_1131_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_address1_local = p_cast8_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_address1_local = p_cast_fu_922_p1;
    end else begin
        prod_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_ce1_local = 1'b1;
    end else begin
        prod_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            prod_d0_local = bitcast_ln24_14_fu_1990_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            prod_d0_local = bitcast_ln24_12_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            prod_d0_local = bitcast_ln24_10_fu_1950_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_d0_local = bitcast_ln24_8_fu_1930_p1;
        end else begin
            prod_d0_local = 'bx;
        end
    end else begin
        prod_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            prod_d1_local = bitcast_ln24_15_reg_2914;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            prod_d1_local = bitcast_ln24_13_fu_1980_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            prod_d1_local = bitcast_ln24_11_fu_1960_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_d1_local = bitcast_ln24_9_fu_1940_p1;
        end else begin
            prod_d1_local = 'bx;
        end
    end else begin
        prod_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_17_reg_2860 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        prod_we1_local = 1'b1;
    end else begin
        prod_we1_local = 1'b0;
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
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage17)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln17_1_fu_774_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln17_fu_746_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln18_fu_1893_p2 = (select_ln11_reg_2130 + 4'd4);
assign add_ln1_fu_822_p4 = {{{tmp_fu_798_p4}, {tmp_1_fu_812_p4}}, {jj}};
assign add_ln21_2_fu_1001_p5 = {{{{empty_20_reg_2141}, {tmp_15_fu_992_p4}}, {tmp_1_reg_2203}}, {1'd1}};
assign add_ln21_3_fu_1088_p6 = {{{{{empty_20_reg_2141}, {tmp_15_reg_2283}}, {tmp_16_fu_1081_p3}}, {1'd1}}, {trunc_ln20_reg_2191}};
assign add_ln21_4_fu_1104_p5 = {{{{empty_20_reg_2141}, {tmp_15_reg_2283}}, {tmp_16_fu_1081_p3}}, {2'd3}};
assign add_ln21_fu_953_p2 = (zext_ln18_fu_944_p1 + add_ln_fu_947_p3);
assign add_ln23_10_fu_1392_p2 = (or_ln23_17_fu_1381_p6 + zext_ln15_cast_reg_2094);
assign add_ln23_11_fu_1413_p2 = (or_ln23_18_fu_1402_p6 + zext_ln15_cast_reg_2094);
assign add_ln23_12_fu_1455_p2 = (or_ln23_19_fu_1444_p6 + zext_ln15_cast_reg_2094);
assign add_ln23_13_fu_1476_p2 = (or_ln23_20_fu_1465_p6 + zext_ln15_cast_reg_2094);
assign add_ln23_14_fu_1524_p2 = (or_ln23_21_fu_1516_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_15_fu_1558_p2 = (or_ln23_22_fu_1550_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_16_fu_1576_p2 = (or_ln23_23_fu_1568_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_17_fu_1610_p2 = (or_ln23_24_fu_1602_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_18_fu_1628_p2 = (or_ln23_25_fu_1620_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_19_fu_1662_p2 = (or_ln23_26_fu_1654_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_1_fu_1282_p2 = (or_ln23_8_fu_1274_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_20_fu_1680_p2 = (or_ln23_27_fu_1672_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_2_fu_1300_p2 = (or_ln23_9_fu_1292_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_3_fu_1719_p2 = (or_ln23_10_fu_1711_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_4_fu_1737_p2 = (or_ln23_11_fu_1729_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_5_fu_1760_p2 = (or_ln23_12_fu_1752_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_6_fu_1778_p2 = (or_ln23_13_fu_1770_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_7_fu_1817_p2 = (or_ln23_14_fu_1806_p6 + zext_ln15_cast_reg_2094);
assign add_ln23_8_fu_1334_p2 = (or_ln23_15_fu_1323_p6 + zext_ln15_cast_reg_2094);
assign add_ln23_9_fu_1355_p2 = (or_ln23_16_fu_1344_p6 + zext_ln15_cast_reg_2094);
assign add_ln23_fu_1259_p2 = (or_ln23_7_fu_1251_p4 + zext_ln15_cast_reg_2094);
assign add_ln23_s_fu_1502_p5 = {{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {2'd3}}, {zext_ln15}};
assign add_ln2_fu_1237_p5 = {{{{tmp_reg_2157}, {tmp_1_reg_2203}}, {1'd1}}, {zext_ln15}};
assign add_ln_fu_947_p3 = {{empty_20_reg_2141}, {zext_ln16}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd13];
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
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
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
    ap_condition_2247 = ((icmp_ln17_reg_2126 == 1'd0) & (first_iter_0_reg_2137 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage17;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_10_fu_1546_p1 = m2_load_10_reg_2710;
assign bitcast_ln23_11_fu_1598_p1 = m2_load_11_reg_2715;
assign bitcast_ln23_12_fu_1650_p1 = m2_load_12_reg_2735;
assign bitcast_ln23_13_fu_1702_p1 = m2_load_13_reg_2740;
assign bitcast_ln23_14_fu_1831_p1 = m2_load_14_reg_2760;
assign bitcast_ln23_15_fu_1835_p1 = m2_load_15_reg_2765;
assign bitcast_ln23_16_fu_1839_p1 = m2_load_16_reg_2500;
assign bitcast_ln23_17_fu_1843_p1 = m2_load_17_reg_2505;
assign bitcast_ln23_18_fu_1847_p1 = m2_load_18_reg_2530;
assign bitcast_ln23_19_fu_1851_p1 = m2_load_19_reg_2535;
assign bitcast_ln23_1_fu_1232_p1 = reg_623;
assign bitcast_ln23_20_fu_1855_p1 = m2_load_20_reg_2565;
assign bitcast_ln23_21_fu_1859_p1 = m2_load_21_reg_2570;
assign bitcast_ln23_22_fu_1863_p1 = m2_load_22_reg_2595;
assign bitcast_ln23_23_fu_1867_p1 = m2_load_23_reg_2600;
assign bitcast_ln23_24_fu_1871_p1 = m2_load_24_reg_2625;
assign bitcast_ln23_25_fu_1875_p1 = m2_load_25_reg_2630;
assign bitcast_ln23_26_fu_1879_p1 = reg_633;
assign bitcast_ln23_27_fu_1884_p1 = m2_load_27_reg_2655;
assign bitcast_ln23_28_fu_1888_p1 = reg_619;
assign bitcast_ln23_29_fu_1911_p1 = m2_load_29_reg_2680;
assign bitcast_ln23_2_fu_1269_p1 = reg_628;
assign bitcast_ln23_30_fu_1915_p1 = reg_623;
assign bitcast_ln23_31_fu_1920_p1 = reg_628;
assign bitcast_ln23_3_fu_1706_p1 = reg_633;
assign bitcast_ln23_4_fu_1747_p1 = reg_619;
assign bitcast_ln23_5_fu_1788_p1 = m2_load_5_reg_2398;
assign bitcast_ln23_6_fu_1318_p1 = reg_623;
assign bitcast_ln23_7_fu_1377_p1 = m2_load_7_reg_2450;
assign bitcast_ln23_8_fu_1439_p1 = reg_628;
assign bitcast_ln23_9_fu_1498_p1 = m2_load_9_reg_2480;
assign bitcast_ln23_fu_1157_p1 = reg_619;
assign bitcast_ln24_10_fu_1950_p1 = reg_678;
assign bitcast_ln24_11_fu_1960_p1 = reg_678;
assign bitcast_ln24_12_fu_1970_p1 = reg_678;
assign bitcast_ln24_13_fu_1980_p1 = reg_678;
assign bitcast_ln24_14_fu_1990_p1 = reg_678;
assign bitcast_ln24_15_fu_1995_p1 = grp_fu_611_p2;
assign bitcast_ln24_1_fu_1365_p1 = prod_load_1_reg_2299;
assign bitcast_ln24_2_fu_1423_p1 = prod_load_2_reg_2366;
assign bitcast_ln24_3_fu_1486_p1 = prod_load_3_reg_2371;
assign bitcast_ln24_4_fu_1534_p1 = prod_load_4_reg_2423;
assign bitcast_ln24_5_fu_1586_p1 = prod_load_5_reg_2428;
assign bitcast_ln24_6_fu_1638_p1 = prod_load_6_reg_2465;
assign bitcast_ln24_7_fu_1690_p1 = prod_load_7_reg_2470;
assign bitcast_ln24_8_fu_1930_p1 = reg_678;
assign bitcast_ln24_9_fu_1940_p1 = reg_678;
assign bitcast_ln24_fu_1310_p1 = prod_load_reg_2294;
assign empty_20_fu_794_p1 = select_ln17_fu_780_p3[5:0];
assign empty_21_fu_934_p2 = (tmp_5_fu_927_p3 + zext_ln15_cast_reg_2094);
assign empty_22_fu_1023_p2 = (tmp_6_fu_1016_p3 + zext_ln15_cast_reg_2094);
assign empty_23_fu_1040_p2 = (tmp_7_fu_1033_p3 + zext_ln15_cast_reg_2094);
assign empty_24_fu_1126_p2 = (tmp_8_fu_1119_p3 + zext_ln15_cast_reg_2094);
assign empty_25_fu_1143_p2 = (tmp_9_fu_1136_p3 + zext_ln15_cast_reg_2094);
assign empty_26_fu_1205_p2 = (tmp_s_fu_1198_p3 + zext_ln15_cast_reg_2094);
assign empty_27_fu_1222_p2 = (tmp_4_fu_1215_p3 + zext_ln15_cast_reg_2094);
assign first_iter_0_fu_788_p2 = ((select_ln11_fu_766_p3 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_740_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd128) ? 1'b1 : 1'b0);
assign m1_address0 = m1_address0_local;
assign m1_address1 = m1_address1_local;
assign m1_ce0 = m1_ce0_local;
assign m1_ce1 = m1_ce1_local;
assign m2_address0 = m2_address0_local;
assign m2_address1 = m2_address1_local;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign or_ln23_10_fu_1711_p4 = {{{tmp_reg_2157}, {tmp_1_reg_2203}}, {7'd68}};
assign or_ln23_11_fu_1729_p4 = {{{tmp_reg_2157}, {tmp_1_reg_2203}}, {7'd69}};
assign or_ln23_12_fu_1752_p4 = {{{tmp_reg_2157}, {tmp_1_reg_2203}}, {7'd70}};
assign or_ln23_13_fu_1770_p4 = {{{tmp_reg_2157}, {tmp_1_reg_2203}}, {7'd71}};
assign or_ln23_14_fu_1806_p6 = {{{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {trunc_ln20_reg_2191}}, {6'd1}};
assign or_ln23_15_fu_1323_p6 = {{{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {trunc_ln20_reg_2191}}, {6'd2}};
assign or_ln23_16_fu_1344_p6 = {{{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {trunc_ln20_reg_2191}}, {6'd3}};
assign or_ln23_17_fu_1381_p6 = {{{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {trunc_ln20_reg_2191}}, {6'd4}};
assign or_ln23_18_fu_1402_p6 = {{{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {trunc_ln20_reg_2191}}, {6'd5}};
assign or_ln23_19_fu_1444_p6 = {{{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {trunc_ln20_reg_2191}}, {6'd6}};
assign or_ln23_1_fu_964_p5 = {{{{tmp_reg_2157}, {tmp_1_reg_2203}}, {tmp_12_reg_2237}}, {2'd2}};
assign or_ln23_20_fu_1465_p6 = {{{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {trunc_ln20_reg_2191}}, {6'd7}};
assign or_ln23_21_fu_1516_p4 = {{{tmp_reg_2157}, {tmp_16_reg_2336}}, {8'd193}};
assign or_ln23_22_fu_1550_p4 = {{{tmp_reg_2157}, {tmp_16_reg_2336}}, {8'd194}};
assign or_ln23_23_fu_1568_p4 = {{{tmp_reg_2157}, {tmp_16_reg_2336}}, {8'd195}};
assign or_ln23_24_fu_1602_p4 = {{{tmp_reg_2157}, {tmp_16_reg_2336}}, {8'd196}};
assign or_ln23_25_fu_1620_p4 = {{{tmp_reg_2157}, {tmp_16_reg_2336}}, {8'd197}};
assign or_ln23_26_fu_1654_p4 = {{{tmp_reg_2157}, {tmp_16_reg_2336}}, {8'd198}};
assign or_ln23_27_fu_1672_p4 = {{{tmp_reg_2157}, {tmp_16_reg_2336}}, {8'd199}};
assign or_ln23_28_fu_1792_p5 = {{{{tmp_reg_2157}, {tmp_16_reg_2336}}, {1'd1}}, {or_ln23_reg_2227}};
assign or_ln23_2_fu_978_p5 = {{{{tmp_reg_2157}, {tmp_1_reg_2203}}, {tmp_12_reg_2237}}, {2'd3}};
assign or_ln23_3_fu_1050_p5 = {{{{tmp_reg_2157}, {tmp_1_reg_2203}}, {tmp_13_reg_2243}}, {3'd4}};
assign or_ln23_4_fu_1064_p7 = {{{{{{tmp_reg_2157}, {tmp_1_reg_2203}}, {tmp_13_reg_2243}}, {1'd1}}, {tmp_14_reg_2251}}, {1'd1}};
assign or_ln23_5_fu_1162_p5 = {{{{tmp_reg_2157}, {tmp_1_reg_2203}}, {tmp_13_reg_2243}}, {3'd6}};
assign or_ln23_6_fu_1176_p5 = {{{{tmp_reg_2157}, {tmp_1_reg_2203}}, {tmp_13_reg_2243}}, {3'd7}};
assign or_ln23_7_fu_1251_p4 = {{{tmp_reg_2157}, {tmp_1_reg_2203}}, {7'd65}};
assign or_ln23_8_fu_1274_p4 = {{{tmp_reg_2157}, {tmp_1_reg_2203}}, {7'd66}};
assign or_ln23_9_fu_1292_p4 = {{{tmp_reg_2157}, {tmp_1_reg_2203}}, {7'd67}};
assign or_ln23_fu_845_p2 = (tmp_10_fu_837_p3 | jj);
assign or_ln23_s_fu_861_p5 = {{{{tmp_fu_798_p4}, {tmp_1_fu_812_p4}}, {tmp_11_fu_851_p4}}, {1'd1}};
assign p_cast10_fu_1131_p1 = empty_24_fu_1126_p2;
assign p_cast11_fu_1148_p1 = empty_25_fu_1143_p2;
assign p_cast12_fu_1210_p1 = empty_26_fu_1205_p2;
assign p_cast7_fu_939_p1 = empty_21_fu_934_p2;
assign p_cast8_fu_1028_p1 = empty_22_fu_1023_p2;
assign p_cast9_fu_1045_p1 = empty_23_fu_1040_p2;
assign p_cast_fu_922_p1 = tmp_3_fu_916_p3;
assign prod_address0 = prod_address0_local;
assign prod_address1 = prod_address1_local;
assign prod_ce0 = prod_ce0_local;
assign prod_ce1 = prod_ce1_local;
assign prod_d0 = prod_d0_local;
assign prod_d1 = prod_d1_local;
assign prod_we0 = prod_we0_local;
assign prod_we1 = prod_we1_local;
assign select_ln11_fu_766_p3 = ((tmp_2_fu_758_p3[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k_load);
assign select_ln17_fu_780_p3 = ((tmp_2_fu_758_p3[0:0] == 1'b1) ? add_ln17_1_fu_774_p2 : ap_sig_allocacmp_i_load);
assign temp_x_1_fu_1435_p1 = m1_load_1_reg_2331;
assign temp_x_2_fu_1190_p1 = m1_q1;
assign temp_x_3_fu_1194_p1 = m1_q0;
assign temp_x_fu_1153_p1 = m1_load_reg_2316;
assign tmp_10_fu_837_p3 = {{trunc_ln20_fu_808_p1}, {6'd0}};
assign tmp_11_fu_851_p4 = {{or_ln23_fu_845_p2[6:1]}};
assign tmp_15_fu_992_p4 = {{zext_ln16[5:3]}};
assign tmp_16_fu_1081_p3 = select_ln11_reg_2130[32'd2];
assign tmp_1_fu_812_p4 = {{select_ln11_fu_766_p3[2:1]}};
assign tmp_2_fu_758_p3 = ap_sig_allocacmp_k_load[32'd3];
assign tmp_3_fu_916_p3 = {{empty_20_reg_2141}, {zext_ln15}};
assign tmp_4_fu_1215_p3 = {{empty_20_reg_2141}, {6'd7}};
assign tmp_5_fu_927_p3 = {{empty_20_reg_2141}, {6'd1}};
assign tmp_6_fu_1016_p3 = {{empty_20_reg_2141}, {6'd2}};
assign tmp_7_fu_1033_p3 = {{empty_20_reg_2141}, {6'd3}};
assign tmp_8_fu_1119_p3 = {{empty_20_reg_2141}, {6'd4}};
assign tmp_9_fu_1136_p3 = {{empty_20_reg_2141}, {6'd5}};
assign tmp_fu_798_p4 = {{kk[5:3]}};
assign tmp_s_fu_1198_p3 = {{empty_20_reg_2141}, {6'd6}};
assign trunc_ln20_fu_808_p1 = select_ln11_fu_766_p3[0:0];
assign zext_ln15_cast_fu_718_p1 = zext_ln15;
assign zext_ln18_fu_944_p1 = select_ln11_reg_2130;
assign zext_ln21_1_fu_1011_p1 = add_ln21_2_fu_1001_p5;
assign zext_ln21_2_fu_1099_p1 = add_ln21_3_fu_1088_p6;
assign zext_ln21_3_fu_1114_p1 = add_ln21_4_fu_1104_p5;
assign zext_ln21_fu_959_p1 = add_ln21_fu_953_p2;
assign zext_ln23_10_fu_1287_p1 = add_ln23_1_fu_1282_p2;
assign zext_ln23_11_fu_1305_p1 = add_ln23_2_fu_1300_p2;
assign zext_ln23_12_fu_1724_p1 = add_ln23_3_fu_1719_p2;
assign zext_ln23_13_fu_1742_p1 = add_ln23_4_fu_1737_p2;
assign zext_ln23_14_fu_1765_p1 = add_ln23_5_fu_1760_p2;
assign zext_ln23_15_fu_1783_p1 = add_ln23_6_fu_1778_p2;
assign zext_ln23_16_fu_1801_p1 = or_ln23_28_fu_1792_p5;
assign zext_ln23_17_fu_1822_p1 = add_ln23_7_fu_1817_p2;
assign zext_ln23_18_fu_1339_p1 = add_ln23_8_fu_1334_p2;
assign zext_ln23_19_fu_1360_p1 = add_ln23_9_fu_1355_p2;
assign zext_ln23_1_fu_873_p1 = or_ln23_s_fu_861_p5;
assign zext_ln23_20_fu_1397_p1 = add_ln23_10_fu_1392_p2;
assign zext_ln23_21_fu_1418_p1 = add_ln23_11_fu_1413_p2;
assign zext_ln23_22_fu_1460_p1 = add_ln23_12_fu_1455_p2;
assign zext_ln23_23_fu_1481_p1 = add_ln23_13_fu_1476_p2;
assign zext_ln23_24_fu_1511_p1 = add_ln23_s_fu_1502_p5;
assign zext_ln23_25_fu_1529_p1 = add_ln23_14_fu_1524_p2;
assign zext_ln23_26_fu_1563_p1 = add_ln23_15_fu_1558_p2;
assign zext_ln23_27_fu_1581_p1 = add_ln23_16_fu_1576_p2;
assign zext_ln23_28_fu_1615_p1 = add_ln23_17_fu_1610_p2;
assign zext_ln23_29_fu_1633_p1 = add_ln23_18_fu_1628_p2;
assign zext_ln23_2_fu_973_p1 = or_ln23_1_fu_964_p5;
assign zext_ln23_30_fu_1667_p1 = add_ln23_19_fu_1662_p2;
assign zext_ln23_31_fu_1685_p1 = add_ln23_20_fu_1680_p2;
assign zext_ln23_3_fu_987_p1 = or_ln23_2_fu_978_p5;
assign zext_ln23_4_fu_1059_p1 = or_ln23_3_fu_1050_p5;
assign zext_ln23_5_fu_1076_p1 = or_ln23_4_fu_1064_p7;
assign zext_ln23_6_fu_1171_p1 = or_ln23_5_fu_1162_p5;
assign zext_ln23_7_fu_1185_p1 = or_ln23_6_fu_1176_p5;
assign zext_ln23_8_fu_1246_p1 = add_ln2_fu_1237_p5;
assign zext_ln23_9_fu_1264_p1 = add_ln23_fu_1259_p2;
assign zext_ln23_fu_832_p1 = add_ln1_fu_822_p4;
assign zext_ln24_fu_1227_p1 = empty_27_fu_1222_p2;
always @ (posedge ap_clk) begin
    zext_ln15_cast_reg_2094[11:6] <= 6'b000000;
end
endmodule 
