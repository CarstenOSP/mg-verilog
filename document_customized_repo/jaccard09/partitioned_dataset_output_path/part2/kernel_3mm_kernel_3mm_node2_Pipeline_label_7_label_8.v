
module kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,cmp11,phi_mul,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v261_0_address0,v261_0_ce0,v261_0_we0,v261_0_d0,v261_0_q0,v261_0_address1,v261_0_ce1,v261_0_we1,v261_0_d1,v261_0_q1,v261_1_address0,v261_1_ce0,v261_1_we0,v261_1_d0,v261_1_q0,v261_1_address1,v261_1_ce1,v261_1_we1,v261_1_d1,v261_1_q1,v261_2_address0,v261_2_ce0,v261_2_we0,v261_2_d0,v261_2_q0,v261_2_address1,v261_2_ce1,v261_2_we1,v261_2_d1,v261_2_q1,v261_3_address0,v261_3_ce0,v261_3_we0,v261_3_d0,v261_3_q0,v261_3_address1,v261_3_ce1,v261_3_we1,v261_3_d1,v261_3_q1,zext_ln277,v262_address0,v262_ce0,v262_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] cmp11;
input  [15:0] phi_mul;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [13:0] v261_0_address0;
output   v261_0_ce0;
output   v261_0_we0;
output  [31:0] v261_0_d0;
input  [31:0] v261_0_q0;
output  [13:0] v261_0_address1;
output   v261_0_ce1;
output   v261_0_we1;
output  [31:0] v261_0_d1;
input  [31:0] v261_0_q1;
output  [13:0] v261_1_address0;
output   v261_1_ce0;
output   v261_1_we0;
output  [31:0] v261_1_d0;
input  [31:0] v261_1_q0;
output  [13:0] v261_1_address1;
output   v261_1_ce1;
output   v261_1_we1;
output  [31:0] v261_1_d1;
input  [31:0] v261_1_q1;
output  [13:0] v261_2_address0;
output   v261_2_ce0;
output   v261_2_we0;
output  [31:0] v261_2_d0;
input  [31:0] v261_2_q0;
output  [13:0] v261_2_address1;
output   v261_2_ce1;
output   v261_2_we1;
output  [31:0] v261_2_d1;
input  [31:0] v261_2_q1;
output  [13:0] v261_3_address0;
output   v261_3_ce0;
output   v261_3_we0;
output  [31:0] v261_3_d0;
input  [31:0] v261_3_q0;
output  [13:0] v261_3_address1;
output   v261_3_ce1;
output   v261_3_we1;
output  [31:0] v261_3_d1;
input  [31:0] v261_3_q1;
input  [7:0] zext_ln277;
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln278_reg_2012;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_650;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] grp_fu_642_p2;
reg   [31:0] reg_654;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
wire   [15:0] zext_ln277_cast_fu_658_p1;
reg   [15:0] zext_ln277_cast_reg_2002;
wire   [0:0] icmp_ln278_fu_680_p2;
reg   [0:0] icmp_ln278_reg_2012_pp0_iter1_reg;
reg   [0:0] icmp_ln278_reg_2012_pp0_iter2_reg;
reg   [0:0] icmp_ln278_reg_2012_pp0_iter3_reg;
wire   [7:0] select_ln278_fu_710_p3;
reg   [7:0] select_ln278_reg_2016;
reg   [7:0] select_ln278_reg_2016_pp0_iter1_reg;
wire   [7:0] select_ln278_1_fu_718_p3;
reg   [7:0] select_ln278_1_reg_2024;
reg   [7:0] select_ln278_1_reg_2024_pp0_iter1_reg;
reg   [6:0] tmp_reg_2039;
wire   [7:0] tmp_1_fu_755_p3;
reg   [7:0] tmp_1_reg_2044;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [7:0] tmp_1_reg_2044_pp0_iter1_reg;
wire   [7:0] or_ln_fu_788_p3;
reg   [7:0] or_ln_reg_2060;
reg   [7:0] or_ln_reg_2060_pp0_iter1_reg;
wire   [7:0] empty_17_fu_825_p2;
reg   [7:0] empty_17_reg_2070;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] empty_17_reg_2070_pp0_iter1_reg;
reg   [7:0] empty_17_reg_2070_pp0_iter2_reg;
reg   [31:0] v263_load_reg_2081;
reg   [31:0] v263_load_1_reg_2086;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] empty_21_fu_843_p2;
reg   [7:0] empty_21_reg_2096;
reg   [7:0] empty_21_reg_2096_pp0_iter1_reg;
reg   [7:0] empty_21_reg_2096_pp0_iter2_reg;
wire   [7:0] empty_25_fu_861_p2;
reg   [7:0] empty_25_reg_2112;
reg   [7:0] empty_25_reg_2112_pp0_iter1_reg;
reg   [7:0] empty_25_reg_2112_pp0_iter2_reg;
wire   [31:0] v201_fu_870_p1;
reg   [31:0] v201_reg_2123;
wire   [7:0] empty_29_fu_884_p2;
reg   [7:0] empty_29_reg_2133;
reg   [7:0] empty_29_reg_2133_pp0_iter1_reg;
reg   [7:0] empty_29_reg_2133_pp0_iter2_reg;
wire   [31:0] v202_fu_893_p1;
reg   [31:0] v202_reg_2144;
reg   [31:0] v262_load_2_reg_2149;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] v207_fu_906_p1;
reg   [31:0] v207_reg_2159;
wire   [31:0] v212_fu_910_p1;
reg   [31:0] v212_reg_2164;
wire   [31:0] v239_fu_919_p1;
reg   [31:0] v239_reg_2174;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] grp_fu_646_p2;
reg   [31:0] v203_reg_2184;
wire   [31:0] v221_fu_927_p1;
reg   [31:0] v221_reg_2189;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] v248_fu_931_p1;
reg   [31:0] v248_reg_2194;
reg   [31:0] v208_reg_2199;
reg   [31:0] v213_reg_2204;
reg   [31:0] v213_reg_2204_pp0_iter1_reg;
wire   [31:0] v230_fu_935_p1;
reg   [31:0] v230_reg_2209;
reg   [31:0] v217_reg_2214;
reg   [31:0] v217_reg_2214_pp0_iter1_reg;
wire   [7:0] grp_fu_750_p2;
reg   [7:0] urem_ln278_reg_2219;
reg   [31:0] v222_reg_2224;
reg   [31:0] v222_reg_2224_pp0_iter2_reg;
wire   [13:0] mul_ln280_fu_943_p2;
reg   [13:0] mul_ln280_reg_2229;
wire   [7:0] grp_fu_820_p2;
reg   [7:0] empty_16_reg_2235;
reg   [31:0] v226_reg_2240;
reg   [31:0] v226_reg_2240_pp0_iter2_reg;
reg   [1:0] trunc_ln_reg_2245;
wire   [7:0] grp_fu_838_p2;
reg   [7:0] empty_20_reg_2251;
reg   [7:0] empty_20_reg_2251_pp0_iter2_reg;
wire   [13:0] zext_ln283_fu_968_p1;
reg   [13:0] zext_ln283_reg_2256;
reg   [13:0] zext_ln283_reg_2256_pp0_iter2_reg;
reg   [13:0] zext_ln283_reg_2256_pp0_iter3_reg;
reg   [13:0] v261_0_addr_reg_2265;
reg   [13:0] v261_1_addr_reg_2271;
reg   [13:0] v261_2_addr_reg_2277;
reg   [13:0] v261_3_addr_reg_2283;
wire   [13:0] zext_ln289_fu_984_p1;
reg   [13:0] zext_ln289_reg_2289;
reg   [13:0] zext_ln289_reg_2289_pp0_iter2_reg;
reg   [13:0] zext_ln289_reg_2289_pp0_iter3_reg;
reg   [13:0] v261_0_addr_2_reg_2298;
reg   [13:0] v261_1_addr_2_reg_2303;
reg   [13:0] v261_2_addr_2_reg_2308;
reg   [13:0] v261_3_addr_2_reg_2313;
reg   [31:0] v231_reg_2318;
reg   [31:0] v231_reg_2318_pp0_iter2_reg;
reg   [31:0] v231_reg_2318_pp0_iter3_reg;
wire   [13:0] mul_ln293_fu_1003_p2;
reg   [13:0] mul_ln293_reg_2323;
wire   [7:0] grp_fu_856_p2;
reg   [7:0] empty_24_reg_2329;
reg   [7:0] empty_24_reg_2329_pp0_iter2_reg;
wire   [31:0] v199_fu_1025_p11;
reg   [31:0] v199_reg_2334;
wire   [31:0] v205_fu_1064_p11;
reg   [31:0] v205_reg_2339;
reg   [31:0] v235_reg_2344;
reg   [31:0] v235_reg_2344_pp0_iter2_reg;
reg   [31:0] v235_reg_2344_pp0_iter3_reg;
reg   [2:0] p_cast1_reg_2349;
reg   [2:0] p_cast1_reg_2349_pp0_iter2_reg;
reg   [1:0] p_cast_reg_2353;
wire   [7:0] grp_fu_879_p2;
reg   [7:0] empty_28_reg_2359;
reg   [7:0] empty_28_reg_2359_pp0_iter2_reg;
wire   [31:0] v200_fu_1116_p3;
reg   [31:0] v240_reg_2369;
reg   [31:0] v240_reg_2369_pp0_iter2_reg;
reg   [31:0] v240_reg_2369_pp0_iter3_reg;
wire   [7:0] grp_fu_901_p2;
reg   [7:0] empty_32_reg_2374;
reg   [7:0] empty_32_reg_2374_pp0_iter2_reg;
wire   [31:0] v206_fu_1123_p3;
reg   [31:0] v244_reg_2384;
reg   [31:0] v244_reg_2384_pp0_iter2_reg;
reg   [31:0] v244_reg_2384_pp0_iter3_reg;
reg   [31:0] v249_reg_2389;
reg   [31:0] v249_reg_2389_pp0_iter2_reg;
reg   [31:0] v249_reg_2389_pp0_iter3_reg;
reg   [31:0] v253_reg_2394;
reg   [31:0] v253_reg_2394_pp0_iter2_reg;
reg   [31:0] v253_reg_2394_pp0_iter3_reg;
reg   [13:0] v261_0_addr_1_reg_2399;
reg   [13:0] v261_1_addr_1_reg_2404;
reg   [13:0] v261_2_addr_1_reg_2409;
reg   [13:0] v261_3_addr_1_reg_2414;
reg   [13:0] v261_0_addr_4_reg_2419;
reg   [13:0] v261_1_addr_4_reg_2425;
reg   [13:0] v261_2_addr_4_reg_2431;
reg   [13:0] v261_3_addr_4_reg_2437;
wire   [31:0] v210_fu_1186_p11;
reg   [31:0] v210_reg_2443;
wire   [31:0] v211_fu_1209_p3;
wire   [31:0] v215_fu_1232_p11;
reg   [31:0] v215_reg_2453;
wire   [31:0] v216_fu_1255_p3;
wire   [13:0] mul_ln304_fu_1265_p2;
reg   [13:0] mul_ln304_reg_2463;
wire   [13:0] mul_ln315_fu_1274_p2;
reg   [13:0] mul_ln315_reg_2469;
wire   [13:0] mul_ln326_fu_1283_p2;
reg   [13:0] mul_ln326_reg_2475;
wire   [13:0] mul_ln337_fu_1292_p2;
reg   [13:0] mul_ln337_reg_2481;
wire   [31:0] bitcast_ln298_fu_1298_p1;
reg   [31:0] bitcast_ln298_reg_2487;
reg   [2:0] p_cast3_reg_2495;
reg   [1:0] p_cast2_reg_2499;
wire   [31:0] bitcast_ln303_fu_1331_p1;
reg   [31:0] bitcast_ln303_reg_2505;
reg   [2:0] p_cast5_reg_2513;
reg   [2:0] p_cast5_reg_2513_pp0_iter3_reg;
reg   [1:0] p_cast4_reg_2517;
reg   [13:0] v261_0_addr_3_reg_2523;
reg   [13:0] v261_1_addr_3_reg_2528;
reg   [13:0] v261_2_addr_3_reg_2533;
reg   [13:0] v261_3_addr_3_reg_2538;
reg   [2:0] p_cast7_reg_2543;
reg   [2:0] p_cast7_reg_2543_pp0_iter3_reg;
reg   [1:0] p_cast6_reg_2547;
reg   [13:0] v261_0_addr_6_reg_2553;
reg   [13:0] v261_1_addr_6_reg_2558;
reg   [13:0] v261_2_addr_6_reg_2563;
reg   [13:0] v261_3_addr_6_reg_2568;
wire   [31:0] v219_fu_1433_p11;
reg   [31:0] v219_reg_2573;
reg   [2:0] p_cast9_reg_2578;
reg   [2:0] p_cast9_reg_2578_pp0_iter4_reg;
reg   [1:0] p_cast8_reg_2582;
wire   [31:0] v220_fu_1485_p3;
wire   [31:0] v224_fu_1508_p11;
reg   [31:0] v224_reg_2593;
reg   [13:0] v261_0_addr_5_reg_2598;
reg   [13:0] v261_0_addr_5_reg_2598_pp0_iter4_reg;
reg   [13:0] v261_1_addr_5_reg_2603;
reg   [13:0] v261_1_addr_5_reg_2603_pp0_iter4_reg;
reg   [13:0] v261_2_addr_5_reg_2608;
reg   [13:0] v261_2_addr_5_reg_2608_pp0_iter4_reg;
reg   [13:0] v261_3_addr_5_reg_2613;
reg   [13:0] v261_3_addr_5_reg_2613_pp0_iter4_reg;
wire   [31:0] v225_fu_1543_p3;
wire   [31:0] v228_fu_1566_p11;
reg   [31:0] v228_reg_2623;
reg   [13:0] v261_0_addr_7_reg_2628;
reg   [13:0] v261_0_addr_7_reg_2628_pp0_iter4_reg;
wire   [13:0] add_ln337_fu_1601_p2;
reg   [13:0] add_ln337_reg_2633;
reg   [13:0] v261_1_addr_7_reg_2638;
reg   [13:0] v261_1_addr_7_reg_2638_pp0_iter4_reg;
reg   [13:0] v261_2_addr_7_reg_2643;
reg   [13:0] v261_2_addr_7_reg_2643_pp0_iter4_reg;
reg   [13:0] v261_3_addr_7_reg_2648;
reg   [13:0] v261_3_addr_7_reg_2648_pp0_iter4_reg;
reg   [13:0] v261_0_addr_8_reg_2653;
reg   [13:0] v261_0_addr_8_reg_2653_pp0_iter4_reg;
wire   [13:0] add_ln332_fu_1617_p2;
reg   [13:0] add_ln332_reg_2658;
wire   [13:0] add_ln343_fu_1621_p2;
reg   [13:0] add_ln343_reg_2663;
reg   [13:0] v261_1_addr_8_reg_2668;
reg   [13:0] v261_1_addr_8_reg_2668_pp0_iter4_reg;
reg   [13:0] v261_2_addr_8_reg_2673;
reg   [13:0] v261_2_addr_8_reg_2673_pp0_iter4_reg;
reg   [13:0] v261_3_addr_8_reg_2678;
reg   [13:0] v261_3_addr_8_reg_2678_pp0_iter4_reg;
reg   [13:0] v261_0_addr_9_reg_2683;
reg   [13:0] v261_0_addr_9_reg_2683_pp0_iter4_reg;
reg   [13:0] v261_1_addr_9_reg_2688;
reg   [13:0] v261_1_addr_9_reg_2688_pp0_iter4_reg;
reg   [13:0] v261_2_addr_9_reg_2693;
reg   [13:0] v261_2_addr_9_reg_2693_pp0_iter4_reg;
reg   [13:0] v261_3_addr_9_reg_2698;
reg   [13:0] v261_3_addr_9_reg_2698_pp0_iter4_reg;
reg   [13:0] v261_0_addr_10_reg_2703;
reg   [13:0] v261_0_addr_10_reg_2703_pp0_iter4_reg;
reg   [13:0] v261_1_addr_10_reg_2709;
reg   [13:0] v261_1_addr_10_reg_2709_pp0_iter4_reg;
reg   [13:0] v261_2_addr_10_reg_2715;
reg   [13:0] v261_2_addr_10_reg_2715_pp0_iter4_reg;
reg   [13:0] v261_3_addr_10_reg_2721;
reg   [13:0] v261_3_addr_10_reg_2721_pp0_iter4_reg;
wire   [31:0] v233_fu_1655_p11;
reg   [31:0] v233_reg_2727;
wire   [31:0] v237_fu_1694_p11;
reg   [31:0] v237_reg_2732;
reg   [13:0] v261_0_addr_11_reg_2737;
reg   [13:0] v261_0_addr_11_reg_2737_pp0_iter4_reg;
reg   [13:0] v261_1_addr_11_reg_2743;
reg   [13:0] v261_1_addr_11_reg_2743_pp0_iter4_reg;
reg   [13:0] v261_2_addr_11_reg_2749;
reg   [13:0] v261_2_addr_11_reg_2749_pp0_iter4_reg;
reg   [13:0] v261_3_addr_11_reg_2755;
reg   [13:0] v261_3_addr_11_reg_2755_pp0_iter4_reg;
wire   [31:0] v242_fu_1740_p11;
reg   [31:0] v242_reg_2761;
wire   [31:0] v246_fu_1779_p11;
reg   [31:0] v246_reg_2766;
wire   [31:0] bitcast_ln309_fu_1802_p1;
reg   [31:0] bitcast_ln309_reg_2771;
wire   [31:0] v229_fu_1806_p3;
wire   [31:0] v234_fu_1813_p3;
reg   [31:0] v234_reg_2784;
wire   [31:0] v238_fu_1819_p3;
reg   [31:0] v238_reg_2789;
wire   [31:0] v243_fu_1825_p3;
reg   [31:0] v243_reg_2794;
wire   [31:0] v247_fu_1831_p3;
reg   [31:0] v247_reg_2799;
wire   [31:0] v252_fu_1876_p3;
reg   [31:0] v252_reg_2804;
wire   [31:0] bitcast_ln314_fu_1883_p1;
reg   [31:0] bitcast_ln314_reg_2809;
wire   [31:0] bitcast_ln320_fu_1887_p1;
reg   [31:0] bitcast_ln320_reg_2817;
wire   [31:0] bitcast_ln347_fu_1891_p1;
reg   [31:0] bitcast_ln347_reg_2825;
wire   [31:0] bitcast_ln325_fu_1895_p1;
reg   [31:0] bitcast_ln325_reg_2833;
wire   [31:0] bitcast_ln331_fu_1899_p1;
reg   [31:0] bitcast_ln331_reg_2841;
wire   [31:0] bitcast_ln336_fu_1903_p1;
reg   [31:0] bitcast_ln336_reg_2849;
wire   [31:0] bitcast_ln342_fu_1907_p1;
reg   [31:0] bitcast_ln342_reg_2857;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln283_2_fu_774_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln289_2_fu_805_p1;
wire   [63:0] p_cast35_fu_834_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast37_fu_852_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast38_fu_875_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast39_fu_897_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] p_cast40_fu_915_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] p_cast41_fu_923_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln280_1_fu_976_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln287_fu_992_p1;
wire   [63:0] zext_ln293_1_fu_1142_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln299_fu_1162_p1;
wire   [63:0] zext_ln304_1_fu_1368_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln310_fu_1409_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln315_1_fu_1535_p1;
wire   [63:0] zext_ln326_1_fu_1593_p1;
wire   [63:0] zext_ln321_fu_1609_p1;
wire   [63:0] zext_ln337_1_fu_1625_p1;
wire   [63:0] zext_ln332_fu_1632_p1;
wire   [63:0] zext_ln343_fu_1717_p1;
reg   [7:0] v198_fu_114;
wire   [7:0] add_ln279_fu_810_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v198_load;
reg   [7:0] v197_fu_118;
reg   [7:0] ap_sig_allocacmp_v197_load;
reg   [11:0] indvar_flatten_fu_122;
wire   [11:0] add_ln278_1_fu_686_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v263_ce1_local;
reg    v263_ce0_local;
reg    v262_ce0_local;
reg   [15:0] v262_address0_local;
reg    v261_0_ce1_local;
reg   [13:0] v261_0_address1_local;
reg    v261_0_ce0_local;
reg   [13:0] v261_0_address0_local;
reg    v261_0_we0_local;
reg   [31:0] v261_0_d0_local;
wire   [31:0] bitcast_ln286_fu_1130_p1;
wire   [31:0] bitcast_ln292_fu_1150_p1;
reg    v261_0_we1_local;
reg   [31:0] v261_0_d1_local;
wire    ap_block_pp0_stage9;
reg    v261_1_ce1_local;
reg   [13:0] v261_1_address1_local;
reg    v261_1_ce0_local;
reg   [13:0] v261_1_address0_local;
reg    v261_1_we0_local;
reg   [31:0] v261_1_d0_local;
reg    v261_1_we1_local;
reg   [31:0] v261_1_d1_local;
reg    v261_2_ce1_local;
reg   [13:0] v261_2_address1_local;
reg    v261_2_ce0_local;
reg   [13:0] v261_2_address0_local;
reg    v261_2_we0_local;
reg   [31:0] v261_2_d0_local;
reg    v261_2_we1_local;
reg   [31:0] v261_2_d1_local;
reg    v261_3_ce1_local;
reg   [13:0] v261_3_address1_local;
reg    v261_3_ce0_local;
reg   [13:0] v261_3_address0_local;
reg    v261_3_we0_local;
reg   [31:0] v261_3_d0_local;
reg    v261_3_we1_local;
reg   [31:0] v261_3_d1_local;
reg   [31:0] grp_fu_642_p0;
reg   [31:0] grp_fu_642_p1;
reg   [31:0] grp_fu_646_p0;
reg   [31:0] grp_fu_646_p1;
wire   [0:0] icmp_ln279_fu_704_p2;
wire   [7:0] add_ln278_fu_698_p2;
wire   [6:0] grp_fu_750_p1;
wire   [15:0] zext_ln283_1_fu_766_p1;
wire   [15:0] add_ln283_fu_769_p2;
wire   [6:0] tmp_2_fu_779_p4;
wire   [15:0] zext_ln289_1_fu_796_p1;
wire   [15:0] add_ln289_fu_800_p2;
wire   [6:0] grp_fu_820_p1;
wire   [15:0] grp_fu_1911_p3;
wire   [6:0] grp_fu_838_p1;
wire   [15:0] grp_fu_1919_p3;
wire   [6:0] grp_fu_856_p1;
wire   [15:0] grp_fu_1927_p3;
wire   [6:0] grp_fu_879_p1;
wire   [15:0] grp_fu_1935_p3;
wire   [6:0] grp_fu_901_p1;
wire   [15:0] grp_fu_1943_p3;
wire   [15:0] grp_fu_1951_p3;
wire   [6:0] mul_ln280_fu_943_p0;
wire   [8:0] mul_ln280_fu_943_p1;
wire   [7:0] mul_ln278_fu_952_p0;
wire   [9:0] mul_ln278_fu_952_p1;
wire   [16:0] mul_ln278_fu_952_p2;
wire   [13:0] add_ln280_fu_971_p2;
wire   [13:0] add_ln287_fu_987_p2;
wire   [6:0] mul_ln293_fu_1003_p0;
wire   [8:0] mul_ln293_fu_1003_p1;
wire   [31:0] v199_fu_1025_p2;
wire   [31:0] v199_fu_1025_p4;
wire   [31:0] v199_fu_1025_p6;
wire   [31:0] v199_fu_1025_p8;
wire   [31:0] v199_fu_1025_p9;
wire   [31:0] v205_fu_1064_p2;
wire   [31:0] v205_fu_1064_p4;
wire   [31:0] v205_fu_1064_p6;
wire   [31:0] v205_fu_1064_p8;
wire   [31:0] v205_fu_1064_p9;
wire   [7:0] mul11_fu_1090_p0;
wire   [9:0] mul11_fu_1090_p1;
wire   [16:0] mul11_fu_1090_p2;
wire   [13:0] add_ln293_fu_1138_p2;
wire   [13:0] add_ln299_fu_1158_p2;
wire   [31:0] v210_fu_1186_p2;
wire   [31:0] v210_fu_1186_p4;
wire   [31:0] v210_fu_1186_p6;
wire   [31:0] v210_fu_1186_p8;
wire   [31:0] v210_fu_1186_p9;
wire   [31:0] v215_fu_1232_p2;
wire   [31:0] v215_fu_1232_p4;
wire   [31:0] v215_fu_1232_p6;
wire   [31:0] v215_fu_1232_p8;
wire   [31:0] v215_fu_1232_p9;
wire   [6:0] mul_ln304_fu_1265_p0;
wire   [8:0] mul_ln304_fu_1265_p1;
wire   [6:0] mul_ln315_fu_1274_p0;
wire   [8:0] mul_ln315_fu_1274_p1;
wire   [6:0] mul_ln326_fu_1283_p0;
wire   [8:0] mul_ln326_fu_1283_p1;
wire   [6:0] mul_ln337_fu_1292_p0;
wire   [8:0] mul_ln337_fu_1292_p1;
wire   [7:0] mul8_fu_1305_p0;
wire   [9:0] mul8_fu_1305_p1;
wire   [16:0] mul8_fu_1305_p2;
wire   [7:0] mul5_fu_1338_p0;
wire   [9:0] mul5_fu_1338_p1;
wire   [16:0] mul5_fu_1338_p2;
wire   [13:0] add_ln304_fu_1364_p2;
wire   [7:0] mul2_fu_1379_p0;
wire   [9:0] mul2_fu_1379_p1;
wire   [16:0] mul2_fu_1379_p2;
wire   [13:0] add_ln310_fu_1405_p2;
wire   [31:0] v219_fu_1433_p2;
wire   [31:0] v219_fu_1433_p4;
wire   [31:0] v219_fu_1433_p6;
wire   [31:0] v219_fu_1433_p8;
wire   [31:0] v219_fu_1433_p9;
wire   [7:0] mul_fu_1459_p0;
wire   [9:0] mul_fu_1459_p1;
wire   [16:0] mul_fu_1459_p2;
wire   [31:0] v224_fu_1508_p2;
wire   [31:0] v224_fu_1508_p4;
wire   [31:0] v224_fu_1508_p6;
wire   [31:0] v224_fu_1508_p8;
wire   [31:0] v224_fu_1508_p9;
wire   [13:0] add_ln315_fu_1531_p2;
wire   [31:0] v228_fu_1566_p2;
wire   [31:0] v228_fu_1566_p4;
wire   [31:0] v228_fu_1566_p6;
wire   [31:0] v228_fu_1566_p8;
wire   [31:0] v228_fu_1566_p9;
wire   [13:0] add_ln326_fu_1589_p2;
wire   [13:0] add_ln321_fu_1605_p2;
wire   [31:0] v233_fu_1655_p2;
wire   [31:0] v233_fu_1655_p4;
wire   [31:0] v233_fu_1655_p6;
wire   [31:0] v233_fu_1655_p8;
wire   [31:0] v233_fu_1655_p9;
wire   [31:0] v237_fu_1694_p2;
wire   [31:0] v237_fu_1694_p4;
wire   [31:0] v237_fu_1694_p6;
wire   [31:0] v237_fu_1694_p8;
wire   [31:0] v237_fu_1694_p9;
wire   [31:0] v242_fu_1740_p2;
wire   [31:0] v242_fu_1740_p4;
wire   [31:0] v242_fu_1740_p6;
wire   [31:0] v242_fu_1740_p8;
wire   [31:0] v242_fu_1740_p9;
wire   [31:0] v246_fu_1779_p2;
wire   [31:0] v246_fu_1779_p4;
wire   [31:0] v246_fu_1779_p6;
wire   [31:0] v246_fu_1779_p8;
wire   [31:0] v246_fu_1779_p9;
wire   [31:0] v251_fu_1853_p2;
wire   [31:0] v251_fu_1853_p4;
wire   [31:0] v251_fu_1853_p6;
wire   [31:0] v251_fu_1853_p8;
wire   [31:0] v251_fu_1853_p9;
wire   [31:0] v251_fu_1853_p11;
wire   [7:0] grp_fu_1911_p0;
wire   [7:0] grp_fu_1911_p1;
wire   [7:0] grp_fu_1911_p2;
wire   [7:0] grp_fu_1919_p0;
wire   [7:0] grp_fu_1919_p1;
wire   [7:0] grp_fu_1919_p2;
wire   [7:0] grp_fu_1927_p0;
wire   [7:0] grp_fu_1927_p1;
wire   [7:0] grp_fu_1927_p2;
wire   [7:0] grp_fu_1935_p0;
wire   [7:0] grp_fu_1935_p1;
wire   [7:0] grp_fu_1935_p2;
wire   [7:0] grp_fu_1943_p0;
wire   [7:0] grp_fu_1943_p1;
wire   [7:0] grp_fu_1943_p2;
wire   [7:0] grp_fu_1951_p0;
wire   [7:0] grp_fu_1951_p1;
wire   [7:0] grp_fu_1951_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage9;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [15:0] grp_fu_1911_p00;
wire   [15:0] grp_fu_1919_p00;
wire   [15:0] grp_fu_1927_p00;
wire   [15:0] grp_fu_1935_p00;
wire   [15:0] grp_fu_1943_p00;
wire   [15:0] grp_fu_1951_p00;
wire   [16:0] mul11_fu_1090_p00;
wire   [16:0] mul2_fu_1379_p00;
wire   [16:0] mul5_fu_1338_p00;
wire   [16:0] mul8_fu_1305_p00;
wire   [16:0] mul_fu_1459_p00;
wire   [16:0] mul_ln278_fu_952_p00;
wire   [13:0] mul_ln280_fu_943_p00;
wire   [13:0] mul_ln293_fu_1003_p00;
wire   [13:0] mul_ln304_fu_1265_p00;
wire   [13:0] mul_ln315_fu_1274_p00;
wire   [13:0] mul_ln326_fu_1283_p00;
wire   [13:0] mul_ln337_fu_1292_p00;
wire   [1:0] v199_fu_1025_p1;
wire   [1:0] v199_fu_1025_p3;
wire  signed [1:0] v199_fu_1025_p5;
wire  signed [1:0] v199_fu_1025_p7;
wire   [1:0] v205_fu_1064_p1;
wire   [1:0] v205_fu_1064_p3;
wire  signed [1:0] v205_fu_1064_p5;
wire  signed [1:0] v205_fu_1064_p7;
wire   [1:0] v210_fu_1186_p1;
wire   [1:0] v210_fu_1186_p3;
wire  signed [1:0] v210_fu_1186_p5;
wire  signed [1:0] v210_fu_1186_p7;
wire   [1:0] v215_fu_1232_p1;
wire   [1:0] v215_fu_1232_p3;
wire  signed [1:0] v215_fu_1232_p5;
wire  signed [1:0] v215_fu_1232_p7;
wire   [1:0] v219_fu_1433_p1;
wire   [1:0] v219_fu_1433_p3;
wire  signed [1:0] v219_fu_1433_p5;
wire  signed [1:0] v219_fu_1433_p7;
wire   [1:0] v224_fu_1508_p1;
wire   [1:0] v224_fu_1508_p3;
wire  signed [1:0] v224_fu_1508_p5;
wire  signed [1:0] v224_fu_1508_p7;
wire   [1:0] v228_fu_1566_p1;
wire   [1:0] v228_fu_1566_p3;
wire  signed [1:0] v228_fu_1566_p5;
wire  signed [1:0] v228_fu_1566_p7;
wire   [1:0] v233_fu_1655_p1;
wire   [1:0] v233_fu_1655_p3;
wire  signed [1:0] v233_fu_1655_p5;
wire  signed [1:0] v233_fu_1655_p7;
wire   [1:0] v237_fu_1694_p1;
wire   [1:0] v237_fu_1694_p3;
wire  signed [1:0] v237_fu_1694_p5;
wire  signed [1:0] v237_fu_1694_p7;
wire   [1:0] v242_fu_1740_p1;
wire   [1:0] v242_fu_1740_p3;
wire  signed [1:0] v242_fu_1740_p5;
wire  signed [1:0] v242_fu_1740_p7;
wire   [1:0] v246_fu_1779_p1;
wire   [1:0] v246_fu_1779_p3;
wire  signed [1:0] v246_fu_1779_p5;
wire  signed [1:0] v246_fu_1779_p7;
wire   [1:0] v251_fu_1853_p1;
wire   [1:0] v251_fu_1853_p3;
wire  signed [1:0] v251_fu_1853_p5;
wire  signed [1:0] v251_fu_1853_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v198_fu_114 = 8'd0;
#0 v197_fu_118 = 8'd0;
#0 indvar_flatten_fu_122 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_642_p0),.din1(grp_fu_642_p1),.ce(1'b1),.dout(grp_fu_642_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_646_p0),.din1(grp_fu_646_p1),.ce(1'b1),.dout(grp_fu_646_p2));
kernel_3mm_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(select_ln278_1_reg_2024),.din1(grp_fu_750_p1),.ce(1'b1),.dout(grp_fu_750_p2));
kernel_3mm_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(tmp_1_reg_2044),.din1(grp_fu_820_p1),.ce(1'b1),.dout(grp_fu_820_p2));
kernel_3mm_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(empty_17_reg_2070),.din1(grp_fu_838_p1),.ce(1'b1),.dout(grp_fu_838_p2));
kernel_3mm_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(empty_21_reg_2096),.din1(grp_fu_856_p1),.ce(1'b1),.dout(grp_fu_856_p2));
kernel_3mm_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(empty_25_reg_2112),.din1(grp_fu_879_p1),.ce(1'b1),.dout(grp_fu_879_p2));
kernel_3mm_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(empty_29_reg_2133),.din1(grp_fu_901_p1),.ce(1'b1),.dout(grp_fu_901_p2));
kernel_3mm_mul_7ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_7ns_9ns_14_1_1_U9(.din0(mul_ln280_fu_943_p0),.din1(mul_ln280_fu_943_p1),.dout(mul_ln280_fu_943_p2));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U10(.din0(mul_ln278_fu_952_p0),.din1(mul_ln278_fu_952_p1),.dout(mul_ln278_fu_952_p2));
kernel_3mm_mul_7ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_7ns_9ns_14_1_1_U11(.din0(mul_ln293_fu_1003_p0),.din1(mul_ln293_fu_1003_p1),.dout(mul_ln293_fu_1003_p2));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(v199_fu_1025_p2),.din1(v199_fu_1025_p4),.din2(v199_fu_1025_p6),.din3(v199_fu_1025_p8),.def(v199_fu_1025_p9),.sel(trunc_ln_reg_2245),.dout(v199_fu_1025_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13(.din0(v205_fu_1064_p2),.din1(v205_fu_1064_p4),.din2(v205_fu_1064_p6),.din3(v205_fu_1064_p8),.def(v205_fu_1064_p9),.sel(trunc_ln_reg_2245),.dout(v205_fu_1064_p11));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U14(.din0(mul11_fu_1090_p0),.din1(mul11_fu_1090_p1),.dout(mul11_fu_1090_p2));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U15(.din0(v210_fu_1186_p2),.din1(v210_fu_1186_p4),.din2(v210_fu_1186_p6),.din3(v210_fu_1186_p8),.def(v210_fu_1186_p9),.sel(p_cast_reg_2353),.dout(v210_fu_1186_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U16(.din0(v215_fu_1232_p2),.din1(v215_fu_1232_p4),.din2(v215_fu_1232_p6),.din3(v215_fu_1232_p8),.def(v215_fu_1232_p9),.sel(p_cast_reg_2353),.dout(v215_fu_1232_p11));
kernel_3mm_mul_7ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_7ns_9ns_14_1_1_U17(.din0(mul_ln304_fu_1265_p0),.din1(mul_ln304_fu_1265_p1),.dout(mul_ln304_fu_1265_p2));
kernel_3mm_mul_7ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_7ns_9ns_14_1_1_U18(.din0(mul_ln315_fu_1274_p0),.din1(mul_ln315_fu_1274_p1),.dout(mul_ln315_fu_1274_p2));
kernel_3mm_mul_7ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_7ns_9ns_14_1_1_U19(.din0(mul_ln326_fu_1283_p0),.din1(mul_ln326_fu_1283_p1),.dout(mul_ln326_fu_1283_p2));
kernel_3mm_mul_7ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_7ns_9ns_14_1_1_U20(.din0(mul_ln337_fu_1292_p0),.din1(mul_ln337_fu_1292_p1),.dout(mul_ln337_fu_1292_p2));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U21(.din0(mul8_fu_1305_p0),.din1(mul8_fu_1305_p1),.dout(mul8_fu_1305_p2));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U22(.din0(mul5_fu_1338_p0),.din1(mul5_fu_1338_p1),.dout(mul5_fu_1338_p2));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U23(.din0(mul2_fu_1379_p0),.din1(mul2_fu_1379_p1),.dout(mul2_fu_1379_p2));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U24(.din0(v219_fu_1433_p2),.din1(v219_fu_1433_p4),.din2(v219_fu_1433_p6),.din3(v219_fu_1433_p8),.def(v219_fu_1433_p9),.sel(p_cast2_reg_2499),.dout(v219_fu_1433_p11));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U25(.din0(mul_fu_1459_p0),.din1(mul_fu_1459_p1),.dout(mul_fu_1459_p2));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U26(.din0(v224_fu_1508_p2),.din1(v224_fu_1508_p4),.din2(v224_fu_1508_p6),.din3(v224_fu_1508_p8),.def(v224_fu_1508_p9),.sel(p_cast2_reg_2499),.dout(v224_fu_1508_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U27(.din0(v228_fu_1566_p2),.din1(v228_fu_1566_p4),.din2(v228_fu_1566_p6),.din3(v228_fu_1566_p8),.def(v228_fu_1566_p9),.sel(p_cast4_reg_2517),.dout(v228_fu_1566_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U28(.din0(v233_fu_1655_p2),.din1(v233_fu_1655_p4),.din2(v233_fu_1655_p6),.din3(v233_fu_1655_p8),.def(v233_fu_1655_p9),.sel(p_cast4_reg_2517),.dout(v233_fu_1655_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U29(.din0(v237_fu_1694_p2),.din1(v237_fu_1694_p4),.din2(v237_fu_1694_p6),.din3(v237_fu_1694_p8),.def(v237_fu_1694_p9),.sel(p_cast6_reg_2547),.dout(v237_fu_1694_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U30(.din0(v242_fu_1740_p2),.din1(v242_fu_1740_p4),.din2(v242_fu_1740_p6),.din3(v242_fu_1740_p8),.def(v242_fu_1740_p9),.sel(p_cast6_reg_2547),.dout(v242_fu_1740_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U31(.din0(v246_fu_1779_p2),.din1(v246_fu_1779_p4),.din2(v246_fu_1779_p6),.din3(v246_fu_1779_p8),.def(v246_fu_1779_p9),.sel(p_cast8_reg_2582),.dout(v246_fu_1779_p11));
(* dissolve_hierarchy = "yes" *) kernel_3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U32(.din0(v251_fu_1853_p2),.din1(v251_fu_1853_p4),.din2(v251_fu_1853_p6),.din3(v251_fu_1853_p8),.def(v251_fu_1853_p9),.sel(p_cast8_reg_2582),.dout(v251_fu_1853_p11));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1911_p0),.din1(grp_fu_1911_p1),.din2(grp_fu_1911_p2),.ce(1'b1),.dout(grp_fu_1911_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1919_p0),.din1(grp_fu_1919_p1),.din2(grp_fu_1919_p2),.ce(1'b1),.dout(grp_fu_1919_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U35(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1927_p0),.din1(grp_fu_1927_p1),.din2(grp_fu_1927_p2),.ce(1'b1),.dout(grp_fu_1927_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1935_p0),.din1(grp_fu_1935_p1),.din2(grp_fu_1935_p2),.ce(1'b1),.dout(grp_fu_1935_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1943_p0),.din1(grp_fu_1943_p1),.din2(grp_fu_1943_p2),.ce(1'b1),.dout(grp_fu_1943_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1951_p0),.din1(grp_fu_1951_p1),.din2(grp_fu_1951_p2),.ce(1'b1),.dout(grp_fu_1951_p3));
kernel_3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_680_p2 == 1'd0))) begin
            indvar_flatten_fu_122 <= add_ln278_1_fu_686_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_122 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_680_p2 == 1'd0))) begin
            v197_fu_118 <= select_ln278_1_fu_718_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v197_fu_118 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v198_fu_114 <= 8'd0;
    end else if (((icmp_ln278_reg_2012 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_fu_114 <= add_ln279_fu_810_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln332_reg_2658 <= add_ln332_fu_1617_p2;
        add_ln337_reg_2633 <= add_ln337_fu_1601_p2;
        add_ln343_reg_2663 <= add_ln343_fu_1621_p2;
        bitcast_ln336_reg_2849 <= bitcast_ln336_fu_1903_p1;
        empty_21_reg_2096 <= empty_21_fu_843_p2;
        empty_21_reg_2096_pp0_iter1_reg <= empty_21_reg_2096;
        empty_21_reg_2096_pp0_iter2_reg <= empty_21_reg_2096_pp0_iter1_reg;
        empty_24_reg_2329 <= grp_fu_856_p2;
        empty_24_reg_2329_pp0_iter2_reg <= empty_24_reg_2329;
        mul_ln293_reg_2323 <= mul_ln293_fu_1003_p2;
        v199_reg_2334 <= v199_fu_1025_p11;
        v205_reg_2339 <= v205_fu_1064_p11;
        v235_reg_2344_pp0_iter2_reg <= v235_reg_2344;
        v235_reg_2344_pp0_iter3_reg <= v235_reg_2344_pp0_iter2_reg;
        v261_0_addr_7_reg_2628 <= zext_ln326_1_fu_1593_p1;
        v261_0_addr_7_reg_2628_pp0_iter4_reg <= v261_0_addr_7_reg_2628;
        v261_0_addr_8_reg_2653 <= zext_ln321_fu_1609_p1;
        v261_0_addr_8_reg_2653_pp0_iter4_reg <= v261_0_addr_8_reg_2653;
        v261_1_addr_7_reg_2638 <= zext_ln326_1_fu_1593_p1;
        v261_1_addr_7_reg_2638_pp0_iter4_reg <= v261_1_addr_7_reg_2638;
        v261_1_addr_8_reg_2668 <= zext_ln321_fu_1609_p1;
        v261_1_addr_8_reg_2668_pp0_iter4_reg <= v261_1_addr_8_reg_2668;
        v261_2_addr_7_reg_2643 <= zext_ln326_1_fu_1593_p1;
        v261_2_addr_7_reg_2643_pp0_iter4_reg <= v261_2_addr_7_reg_2643;
        v261_2_addr_8_reg_2673 <= zext_ln321_fu_1609_p1;
        v261_2_addr_8_reg_2673_pp0_iter4_reg <= v261_2_addr_8_reg_2673;
        v261_3_addr_7_reg_2648 <= zext_ln326_1_fu_1593_p1;
        v261_3_addr_7_reg_2648_pp0_iter4_reg <= v261_3_addr_7_reg_2648;
        v261_3_addr_8_reg_2678 <= zext_ln321_fu_1609_p1;
        v261_3_addr_8_reg_2678_pp0_iter4_reg <= v261_3_addr_8_reg_2678;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bitcast_ln298_reg_2487 <= bitcast_ln298_fu_1298_p1;
        mul_ln337_reg_2481 <= mul_ln337_fu_1292_p2;
        v239_reg_2174 <= v239_fu_919_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bitcast_ln303_reg_2505 <= bitcast_ln303_fu_1331_p1;
        p_cast2_reg_2499 <= {{mul8_fu_1305_p2[15:14]}};
        p_cast3_reg_2495 <= {{mul8_fu_1305_p2[16:14]}};
        v221_reg_2189 <= v221_fu_927_p1;
        v248_reg_2194 <= v248_fu_931_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bitcast_ln309_reg_2771 <= bitcast_ln309_fu_1802_p1;
        mul_ln315_reg_2469 <= mul_ln315_fu_1274_p2;
        v207_reg_2159 <= v207_fu_906_p1;
        v234_reg_2784 <= v234_fu_1813_p3;
        v238_reg_2789 <= v238_fu_1819_p3;
        v243_reg_2794 <= v243_fu_1825_p3;
        v247_reg_2799 <= v247_fu_1831_p3;
        v249_reg_2389_pp0_iter2_reg <= v249_reg_2389;
        v249_reg_2389_pp0_iter3_reg <= v249_reg_2389_pp0_iter2_reg;
        v252_reg_2804 <= v252_fu_1876_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bitcast_ln314_reg_2809 <= bitcast_ln314_fu_1883_p1;
        mul_ln326_reg_2475 <= mul_ln326_fu_1283_p2;
        v212_reg_2164 <= v212_fu_910_p1;
        v253_reg_2394_pp0_iter2_reg <= v253_reg_2394;
        v253_reg_2394_pp0_iter3_reg <= v253_reg_2394_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln320_reg_2817 <= bitcast_ln320_fu_1887_p1;
        icmp_ln278_reg_2012 <= icmp_ln278_fu_680_p2;
        icmp_ln278_reg_2012_pp0_iter1_reg <= icmp_ln278_reg_2012;
        icmp_ln278_reg_2012_pp0_iter2_reg <= icmp_ln278_reg_2012_pp0_iter1_reg;
        icmp_ln278_reg_2012_pp0_iter3_reg <= icmp_ln278_reg_2012_pp0_iter2_reg;
        p_cast8_reg_2582 <= {{mul_fu_1459_p2[15:14]}};
        p_cast9_reg_2578 <= {{mul_fu_1459_p2[16:14]}};
        p_cast9_reg_2578_pp0_iter4_reg <= p_cast9_reg_2578;
        select_ln278_1_reg_2024 <= select_ln278_1_fu_718_p3;
        select_ln278_1_reg_2024_pp0_iter1_reg <= select_ln278_1_reg_2024;
        select_ln278_reg_2016 <= select_ln278_fu_710_p3;
        select_ln278_reg_2016_pp0_iter1_reg <= select_ln278_reg_2016;
        tmp_reg_2039 <= {{select_ln278_1_fu_718_p3[7:1]}};
        urem_ln278_reg_2219 <= grp_fu_750_p2;
        v222_reg_2224_pp0_iter2_reg <= v222_reg_2224;
        v224_reg_2593 <= v224_fu_1508_p11;
        v261_0_addr_1_reg_2399 <= zext_ln293_1_fu_1142_p1;
        v261_1_addr_1_reg_2404 <= zext_ln293_1_fu_1142_p1;
        v261_2_addr_1_reg_2409 <= zext_ln293_1_fu_1142_p1;
        v261_3_addr_1_reg_2414 <= zext_ln293_1_fu_1142_p1;
        zext_ln277_cast_reg_2002[7 : 0] <= zext_ln277_cast_fu_658_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln325_reg_2833 <= bitcast_ln325_fu_1895_p1;
        empty_16_reg_2235 <= grp_fu_820_p2;
        mul_ln280_reg_2229 <= mul_ln280_fu_943_p2;
        or_ln_reg_2060[7 : 1] <= or_ln_fu_788_p3[7 : 1];
        or_ln_reg_2060_pp0_iter1_reg[7 : 1] <= or_ln_reg_2060[7 : 1];
        tmp_1_reg_2044[7 : 1] <= tmp_1_fu_755_p3[7 : 1];
        tmp_1_reg_2044_pp0_iter1_reg[7 : 1] <= tmp_1_reg_2044[7 : 1];
        v210_reg_2443 <= v210_fu_1186_p11;
        v226_reg_2240_pp0_iter2_reg <= v226_reg_2240;
        v261_0_addr_4_reg_2419 <= zext_ln299_fu_1162_p1;
        v261_0_addr_5_reg_2598 <= zext_ln315_1_fu_1535_p1;
        v261_0_addr_5_reg_2598_pp0_iter4_reg <= v261_0_addr_5_reg_2598;
        v261_1_addr_4_reg_2425 <= zext_ln299_fu_1162_p1;
        v261_1_addr_5_reg_2603 <= zext_ln315_1_fu_1535_p1;
        v261_1_addr_5_reg_2603_pp0_iter4_reg <= v261_1_addr_5_reg_2603;
        v261_2_addr_4_reg_2431 <= zext_ln299_fu_1162_p1;
        v261_2_addr_5_reg_2608 <= zext_ln315_1_fu_1535_p1;
        v261_2_addr_5_reg_2608_pp0_iter4_reg <= v261_2_addr_5_reg_2608;
        v261_3_addr_4_reg_2437 <= zext_ln299_fu_1162_p1;
        v261_3_addr_5_reg_2613 <= zext_ln315_1_fu_1535_p1;
        v261_3_addr_5_reg_2613_pp0_iter4_reg <= v261_3_addr_5_reg_2613;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln331_reg_2841 <= bitcast_ln331_fu_1899_p1;
        empty_17_reg_2070 <= empty_17_fu_825_p2;
        empty_17_reg_2070_pp0_iter1_reg <= empty_17_reg_2070;
        empty_17_reg_2070_pp0_iter2_reg <= empty_17_reg_2070_pp0_iter1_reg;
        empty_20_reg_2251 <= grp_fu_838_p2;
        empty_20_reg_2251_pp0_iter2_reg <= empty_20_reg_2251;
        trunc_ln_reg_2245 <= {{mul_ln278_fu_952_p2[15:14]}};
        v215_reg_2453 <= v215_fu_1232_p11;
        v228_reg_2623 <= v228_fu_1566_p11;
        v231_reg_2318_pp0_iter2_reg <= v231_reg_2318;
        v231_reg_2318_pp0_iter3_reg <= v231_reg_2318_pp0_iter2_reg;
        v261_0_addr_2_reg_2298 <= zext_ln287_fu_992_p1;
        v261_0_addr_reg_2265 <= zext_ln280_1_fu_976_p1;
        v261_1_addr_2_reg_2303 <= zext_ln287_fu_992_p1;
        v261_1_addr_reg_2271 <= zext_ln280_1_fu_976_p1;
        v261_2_addr_2_reg_2308 <= zext_ln287_fu_992_p1;
        v261_2_addr_reg_2277 <= zext_ln280_1_fu_976_p1;
        v261_3_addr_2_reg_2313 <= zext_ln287_fu_992_p1;
        v261_3_addr_reg_2283 <= zext_ln280_1_fu_976_p1;
        zext_ln283_reg_2256[7 : 0] <= zext_ln283_fu_968_p1[7 : 0];
        zext_ln283_reg_2256_pp0_iter2_reg[7 : 0] <= zext_ln283_reg_2256[7 : 0];
        zext_ln283_reg_2256_pp0_iter3_reg[7 : 0] <= zext_ln283_reg_2256_pp0_iter2_reg[7 : 0];
        zext_ln289_reg_2289[7 : 1] <= zext_ln289_fu_984_p1[7 : 1];
        zext_ln289_reg_2289_pp0_iter2_reg[7 : 1] <= zext_ln289_reg_2289[7 : 1];
        zext_ln289_reg_2289_pp0_iter3_reg[7 : 1] <= zext_ln289_reg_2289_pp0_iter2_reg[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bitcast_ln342_reg_2857 <= bitcast_ln342_fu_1907_p1;
        empty_25_reg_2112 <= empty_25_fu_861_p2;
        empty_25_reg_2112_pp0_iter1_reg <= empty_25_reg_2112;
        empty_25_reg_2112_pp0_iter2_reg <= empty_25_reg_2112_pp0_iter1_reg;
        empty_28_reg_2359 <= grp_fu_879_p2;
        empty_28_reg_2359_pp0_iter2_reg <= empty_28_reg_2359;
        p_cast1_reg_2349 <= {{mul11_fu_1090_p2[16:14]}};
        p_cast1_reg_2349_pp0_iter2_reg <= p_cast1_reg_2349;
        p_cast_reg_2353 <= {{mul11_fu_1090_p2[15:14]}};
        v233_reg_2727 <= v233_fu_1655_p11;
        v237_reg_2732 <= v237_fu_1694_p11;
        v240_reg_2369_pp0_iter2_reg <= v240_reg_2369;
        v240_reg_2369_pp0_iter3_reg <= v240_reg_2369_pp0_iter2_reg;
        v261_0_addr_10_reg_2703 <= zext_ln332_fu_1632_p1;
        v261_0_addr_10_reg_2703_pp0_iter4_reg <= v261_0_addr_10_reg_2703;
        v261_0_addr_9_reg_2683 <= zext_ln337_1_fu_1625_p1;
        v261_0_addr_9_reg_2683_pp0_iter4_reg <= v261_0_addr_9_reg_2683;
        v261_1_addr_10_reg_2709 <= zext_ln332_fu_1632_p1;
        v261_1_addr_10_reg_2709_pp0_iter4_reg <= v261_1_addr_10_reg_2709;
        v261_1_addr_9_reg_2688 <= zext_ln337_1_fu_1625_p1;
        v261_1_addr_9_reg_2688_pp0_iter4_reg <= v261_1_addr_9_reg_2688;
        v261_2_addr_10_reg_2715 <= zext_ln332_fu_1632_p1;
        v261_2_addr_10_reg_2715_pp0_iter4_reg <= v261_2_addr_10_reg_2715;
        v261_2_addr_9_reg_2693 <= zext_ln337_1_fu_1625_p1;
        v261_2_addr_9_reg_2693_pp0_iter4_reg <= v261_2_addr_9_reg_2693;
        v261_3_addr_10_reg_2721 <= zext_ln332_fu_1632_p1;
        v261_3_addr_10_reg_2721_pp0_iter4_reg <= v261_3_addr_10_reg_2721;
        v261_3_addr_9_reg_2698 <= zext_ln337_1_fu_1625_p1;
        v261_3_addr_9_reg_2698_pp0_iter4_reg <= v261_3_addr_9_reg_2698;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bitcast_ln347_reg_2825 <= bitcast_ln347_fu_1891_p1;
        empty_29_reg_2133 <= empty_29_fu_884_p2;
        empty_29_reg_2133_pp0_iter1_reg <= empty_29_reg_2133;
        empty_29_reg_2133_pp0_iter2_reg <= empty_29_reg_2133_pp0_iter1_reg;
        empty_32_reg_2374 <= grp_fu_901_p2;
        empty_32_reg_2374_pp0_iter2_reg <= empty_32_reg_2374;
        mul_ln304_reg_2463 <= mul_ln304_fu_1265_p2;
        v201_reg_2123 <= v201_fu_870_p1;
        v202_reg_2144 <= v202_fu_893_p1;
        v242_reg_2761 <= v242_fu_1740_p11;
        v244_reg_2384_pp0_iter2_reg <= v244_reg_2384;
        v244_reg_2384_pp0_iter3_reg <= v244_reg_2384_pp0_iter2_reg;
        v246_reg_2766 <= v246_fu_1779_p11;
        v261_0_addr_11_reg_2737 <= zext_ln343_fu_1717_p1;
        v261_0_addr_11_reg_2737_pp0_iter4_reg <= v261_0_addr_11_reg_2737;
        v261_1_addr_11_reg_2743 <= zext_ln343_fu_1717_p1;
        v261_1_addr_11_reg_2743_pp0_iter4_reg <= v261_1_addr_11_reg_2743;
        v261_2_addr_11_reg_2749 <= zext_ln343_fu_1717_p1;
        v261_2_addr_11_reg_2749_pp0_iter4_reg <= v261_2_addr_11_reg_2749;
        v261_3_addr_11_reg_2755 <= zext_ln343_fu_1717_p1;
        v261_3_addr_11_reg_2755_pp0_iter4_reg <= v261_3_addr_11_reg_2755;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        p_cast4_reg_2517 <= {{mul5_fu_1338_p2[15:14]}};
        p_cast5_reg_2513 <= {{mul5_fu_1338_p2[16:14]}};
        p_cast5_reg_2513_pp0_iter3_reg <= p_cast5_reg_2513;
        v213_reg_2204_pp0_iter1_reg <= v213_reg_2204;
        v261_0_addr_3_reg_2523 <= zext_ln304_1_fu_1368_p1;
        v261_1_addr_3_reg_2528 <= zext_ln304_1_fu_1368_p1;
        v261_2_addr_3_reg_2533 <= zext_ln304_1_fu_1368_p1;
        v261_3_addr_3_reg_2538 <= zext_ln304_1_fu_1368_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        p_cast6_reg_2547 <= {{mul2_fu_1379_p2[15:14]}};
        p_cast7_reg_2543 <= {{mul2_fu_1379_p2[16:14]}};
        p_cast7_reg_2543_pp0_iter3_reg <= p_cast7_reg_2543;
        v217_reg_2214_pp0_iter1_reg <= v217_reg_2214;
        v219_reg_2573 <= v219_fu_1433_p11;
        v230_reg_2209 <= v230_fu_935_p1;
        v261_0_addr_6_reg_2553 <= zext_ln310_fu_1409_p1;
        v261_1_addr_6_reg_2558 <= zext_ln310_fu_1409_p1;
        v261_2_addr_6_reg_2563 <= zext_ln310_fu_1409_p1;
        v261_3_addr_6_reg_2568 <= zext_ln310_fu_1409_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_650 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_654 <= grp_fu_642_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v203_reg_2184 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v208_reg_2199 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v213_reg_2204 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v217_reg_2214 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v222_reg_2224 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v226_reg_2240 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v231_reg_2318 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v235_reg_2344 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v240_reg_2369 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v244_reg_2384 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v249_reg_2389 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v253_reg_2394 <= grp_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v262_load_2_reg_2149 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v263_load_1_reg_2086 <= v263_q0;
        v263_load_reg_2081 <= v263_q1;
    end
end
always @ (*) begin
    if (((icmp_ln278_reg_2012 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln278_reg_2012_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter3_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_122;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v197_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v197_load = v197_fu_118;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v198_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v198_load = v198_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_642_p0 = v252_reg_2804;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_642_p0 = v247_reg_2799;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_642_p0 = v243_reg_2794;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_642_p0 = v238_reg_2789;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_642_p0 = v234_reg_2784;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_642_p0 = v229_fu_1806_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_642_p0 = v225_fu_1543_p3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_642_p0 = v220_fu_1485_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_642_p0 = v216_fu_1255_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_642_p0 = v211_fu_1209_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_642_p0 = v206_fu_1123_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_642_p0 = v200_fu_1116_p3;
    end else begin
        grp_fu_642_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_642_p1 = v253_reg_2394_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_642_p1 = v249_reg_2389_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_642_p1 = v244_reg_2384_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_642_p1 = v240_reg_2369_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_642_p1 = v235_reg_2344_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_642_p1 = v231_reg_2318_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_642_p1 = v226_reg_2240_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_642_p1 = v222_reg_2224_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_642_p1 = v217_reg_2214_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_642_p1 = v213_reg_2204_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_642_p1 = v208_reg_2199;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_642_p1 = v203_reg_2184;
    end else begin
        grp_fu_642_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_646_p0 = v248_reg_2194;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_646_p0 = v239_reg_2174;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_646_p0 = v230_reg_2209;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_646_p0 = v230_fu_935_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_646_p0 = v221_reg_2189;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_646_p0 = v221_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_646_p0 = v212_reg_2164;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_646_p0 = v212_fu_910_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_646_p0 = v201_reg_2123;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_646_p0 = v201_fu_870_p1;
    end else begin
        grp_fu_646_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_646_p1 = v207_reg_2159;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_646_p1 = v202_reg_2144;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_646_p1 = v207_fu_906_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_646_p1 = v202_fu_893_p1;
    end else begin
        grp_fu_646_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_address0_local = v261_0_addr_11_reg_2737_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_address0_local = v261_0_addr_9_reg_2683_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_address0_local = v261_0_addr_10_reg_2703_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_address0_local = v261_0_addr_7_reg_2628_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_0_address0_local = v261_0_addr_5_reg_2598_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_0_address0_local = zext_ln337_1_fu_1625_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address0_local = zext_ln326_1_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address0_local = zext_ln315_1_fu_1535_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_0_address0_local = v261_0_addr_4_reg_2419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_address0_local = v261_0_addr_2_reg_2298;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_0_address0_local = v261_0_addr_reg_2265;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_0_address0_local = zext_ln287_fu_992_p1;
    end else begin
        v261_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_address1_local = v261_0_addr_8_reg_2653_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_address1_local = v261_0_addr_6_reg_2553;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_address1_local = v261_0_addr_3_reg_2523;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_0_address1_local = zext_ln343_fu_1717_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_0_address1_local = zext_ln332_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address1_local = zext_ln321_fu_1609_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_0_address1_local = zext_ln310_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_0_address1_local = zext_ln304_1_fu_1368_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_address1_local = v261_0_addr_1_reg_2399;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address1_local = zext_ln299_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_address1_local = zext_ln293_1_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_0_address1_local = zext_ln280_1_fu_976_p1;
    end else begin
        v261_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_0_ce0_local = 1'b1;
    end else begin
        v261_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_0_ce1_local = 1'b1;
    end else begin
        v261_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_d0_local = bitcast_ln347_reg_2825;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_d0_local = bitcast_ln342_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_d0_local = bitcast_ln336_reg_2849;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_d0_local = bitcast_ln331_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_0_d0_local = bitcast_ln320_reg_2817;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_0_d0_local = bitcast_ln303_reg_2505;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_d0_local = bitcast_ln292_fu_1150_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_0_d0_local = bitcast_ln286_fu_1130_p1;
    end else begin
        v261_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_d1_local = bitcast_ln325_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_d1_local = bitcast_ln314_reg_2809;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_d1_local = bitcast_ln309_reg_2771;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_d1_local = bitcast_ln298_reg_2487;
    end else begin
        v261_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((p_cast9_reg_2578_pp0_iter4_reg == 3'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((p_cast9_reg_2578_pp0_iter4_reg == 3'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (p_cast7_reg_2543_pp0_iter3_reg == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln_reg_2245 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln_reg_2245 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (p_cast1_reg_2349_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (p_cast7_reg_2543_pp0_iter3_reg == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))| ((1'b0 == ap_block_pp0_stage5_11001) & (p_cast5_reg_2513_pp0_iter3_reg == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v261_0_we0_local = 1'b1;
    end else begin
        v261_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (p_cast1_reg_2349_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (p_cast3_reg_2495 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (p_cast5_reg_2513_pp0_iter3_reg == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (p_cast3_reg_2495 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v261_0_we1_local = 1'b1;
    end else begin
        v261_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_address0_local = v261_1_addr_11_reg_2743_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_address0_local = v261_1_addr_9_reg_2688_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_address0_local = v261_1_addr_10_reg_2709_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_address0_local = v261_1_addr_7_reg_2638_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_1_address0_local = v261_1_addr_5_reg_2603_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_1_address0_local = zext_ln337_1_fu_1625_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_address0_local = zext_ln326_1_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address0_local = zext_ln315_1_fu_1535_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_1_address0_local = v261_1_addr_4_reg_2425;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_address0_local = v261_1_addr_2_reg_2303;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_1_address0_local = v261_1_addr_reg_2271;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address0_local = zext_ln287_fu_992_p1;
    end else begin
        v261_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_address1_local = v261_1_addr_8_reg_2668_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_address1_local = v261_1_addr_6_reg_2558;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_address1_local = v261_1_addr_3_reg_2528;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_1_address1_local = zext_ln343_fu_1717_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_1_address1_local = zext_ln332_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_address1_local = zext_ln321_fu_1609_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_1_address1_local = zext_ln310_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_1_address1_local = zext_ln304_1_fu_1368_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_address1_local = v261_1_addr_1_reg_2404;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address1_local = zext_ln299_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_address1_local = zext_ln293_1_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address1_local = zext_ln280_1_fu_976_p1;
    end else begin
        v261_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_1_ce0_local = 1'b1;
    end else begin
        v261_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_1_ce1_local = 1'b1;
    end else begin
        v261_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_d0_local = bitcast_ln347_reg_2825;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_d0_local = bitcast_ln342_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_d0_local = bitcast_ln336_reg_2849;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_d0_local = bitcast_ln331_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_1_d0_local = bitcast_ln320_reg_2817;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_1_d0_local = bitcast_ln303_reg_2505;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_d0_local = bitcast_ln292_fu_1150_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_1_d0_local = bitcast_ln286_fu_1130_p1;
    end else begin
        v261_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_d1_local = bitcast_ln325_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_d1_local = bitcast_ln314_reg_2809;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_d1_local = bitcast_ln309_reg_2771;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_d1_local = bitcast_ln298_reg_2487;
    end else begin
        v261_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((p_cast9_reg_2578_pp0_iter4_reg == 3'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((p_cast9_reg_2578_pp0_iter4_reg == 3'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (p_cast7_reg_2543_pp0_iter3_reg == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln_reg_2245 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln_reg_2245 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (p_cast1_reg_2349_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (p_cast7_reg_2543_pp0_iter3_reg == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))| ((1'b0 == ap_block_pp0_stage5_11001) & (p_cast5_reg_2513_pp0_iter3_reg == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v261_1_we0_local = 1'b1;
    end else begin
        v261_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (p_cast1_reg_2349_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (p_cast3_reg_2495 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (p_cast5_reg_2513_pp0_iter3_reg == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (p_cast3_reg_2495 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v261_1_we1_local = 1'b1;
    end else begin
        v261_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_2_address0_local = v261_2_addr_11_reg_2749_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_2_address0_local = v261_2_addr_9_reg_2693_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_2_address0_local = v261_2_addr_10_reg_2715_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_2_address0_local = v261_2_addr_7_reg_2643_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_2_address0_local = v261_2_addr_5_reg_2608_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_2_address0_local = zext_ln337_1_fu_1625_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_2_address0_local = zext_ln326_1_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_address0_local = zext_ln315_1_fu_1535_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_2_address0_local = v261_2_addr_4_reg_2431;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_2_address0_local = v261_2_addr_2_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_2_address0_local = v261_2_addr_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_2_address0_local = zext_ln287_fu_992_p1;
    end else begin
        v261_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_2_address1_local = v261_2_addr_8_reg_2673_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_2_address1_local = v261_2_addr_6_reg_2563;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_2_address1_local = v261_2_addr_3_reg_2533;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_2_address1_local = zext_ln343_fu_1717_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_2_address1_local = zext_ln332_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_2_address1_local = zext_ln321_fu_1609_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_2_address1_local = zext_ln310_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_2_address1_local = zext_ln304_1_fu_1368_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_2_address1_local = v261_2_addr_1_reg_2409;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_address1_local = zext_ln299_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_2_address1_local = zext_ln293_1_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_2_address1_local = zext_ln280_1_fu_976_p1;
    end else begin
        v261_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_2_ce0_local = 1'b1;
    end else begin
        v261_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_2_ce1_local = 1'b1;
    end else begin
        v261_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_2_d0_local = bitcast_ln347_reg_2825;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_2_d0_local = bitcast_ln342_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_2_d0_local = bitcast_ln336_reg_2849;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_2_d0_local = bitcast_ln331_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_2_d0_local = bitcast_ln320_reg_2817;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_2_d0_local = bitcast_ln303_reg_2505;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_2_d0_local = bitcast_ln292_fu_1150_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_2_d0_local = bitcast_ln286_fu_1130_p1;
    end else begin
        v261_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_2_d1_local = bitcast_ln325_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_2_d1_local = bitcast_ln314_reg_2809;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_2_d1_local = bitcast_ln309_reg_2771;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_2_d1_local = bitcast_ln298_reg_2487;
    end else begin
        v261_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (p_cast7_reg_2543_pp0_iter3_reg == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln_reg_2245 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln_reg_2245 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (p_cast1_reg_2349_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (p_cast7_reg_2543_pp0_iter3_reg == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (p_cast5_reg_2513_pp0_iter3_reg == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((p_cast9_reg_2578_pp0_iter4_reg == 3'd2) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((p_cast9_reg_2578_pp0_iter4_reg == 3'd2) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v261_2_we0_local = 1'b1;
    end else begin
        v261_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (p_cast1_reg_2349_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (p_cast3_reg_2495 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (p_cast5_reg_2513_pp0_iter3_reg == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (p_cast3_reg_2495 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v261_2_we1_local = 1'b1;
    end else begin
        v261_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_3_address0_local = v261_3_addr_11_reg_2755_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_3_address0_local = v261_3_addr_9_reg_2698_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_3_address0_local = v261_3_addr_10_reg_2721_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_3_address0_local = v261_3_addr_7_reg_2648_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_3_address0_local = v261_3_addr_5_reg_2613_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_3_address0_local = zext_ln337_1_fu_1625_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_3_address0_local = zext_ln326_1_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_address0_local = zext_ln315_1_fu_1535_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_3_address0_local = v261_3_addr_4_reg_2437;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_3_address0_local = v261_3_addr_2_reg_2313;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_3_address0_local = v261_3_addr_reg_2283;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_3_address0_local = zext_ln287_fu_992_p1;
    end else begin
        v261_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_3_address1_local = v261_3_addr_8_reg_2678_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_3_address1_local = v261_3_addr_6_reg_2568;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_3_address1_local = v261_3_addr_3_reg_2538;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_3_address1_local = zext_ln343_fu_1717_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_3_address1_local = zext_ln332_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_3_address1_local = zext_ln321_fu_1609_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_3_address1_local = zext_ln310_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_3_address1_local = zext_ln304_1_fu_1368_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_3_address1_local = v261_3_addr_1_reg_2414;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_address1_local = zext_ln299_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_3_address1_local = zext_ln293_1_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_3_address1_local = zext_ln280_1_fu_976_p1;
    end else begin
        v261_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_3_ce0_local = 1'b1;
    end else begin
        v261_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_3_ce1_local = 1'b1;
    end else begin
        v261_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_3_d0_local = bitcast_ln347_reg_2825;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_3_d0_local = bitcast_ln342_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_3_d0_local = bitcast_ln336_reg_2849;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_3_d0_local = bitcast_ln331_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_3_d0_local = bitcast_ln320_reg_2817;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_3_d0_local = bitcast_ln303_reg_2505;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_3_d0_local = bitcast_ln292_fu_1150_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_3_d0_local = bitcast_ln286_fu_1130_p1;
    end else begin
        v261_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_3_d1_local = bitcast_ln325_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_3_d1_local = bitcast_ln314_reg_2809;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_3_d1_local = bitcast_ln309_reg_2771;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_3_d1_local = bitcast_ln298_reg_2487;
    end else begin
        v261_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln_reg_2245 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln_reg_2245 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(p_cast9_reg_2578_pp0_iter4_reg == 3'd1) & ~(p_cast9_reg_2578_pp0_iter4_reg == 3'd0) & ~(p_cast9_reg_2578_pp0_iter4_reg == 3'd2) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(p_cast9_reg_2578_pp0_iter4_reg == 3'd1) & ~(p_cast9_reg_2578_pp0_iter4_reg == 3'd0) & ~(p_cast9_reg_2578_pp0_iter4_reg == 3'd2) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(p_cast7_reg_2543_pp0_iter3_reg == 3'd1) & ~(p_cast7_reg_2543_pp0_iter3_reg == 3'd0) & ~(p_cast7_reg_2543_pp0_iter3_reg == 3'd2) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(p_cast7_reg_2543_pp0_iter3_reg== 3'd1) & ~(p_cast7_reg_2543_pp0_iter3_reg == 3'd0) & ~(p_cast7_reg_2543_pp0_iter3_reg == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(p_cast5_reg_2513_pp0_iter3_reg == 3'd1) & ~(p_cast5_reg_2513_pp0_iter3_reg == 3'd0) & ~(p_cast5_reg_2513_pp0_iter3_reg == 3'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(p_cast1_reg_2349_pp0_iter2_reg == 3'd1) & ~(p_cast1_reg_2349_pp0_iter2_reg == 3'd0) & ~(p_cast1_reg_2349_pp0_iter2_reg == 3'd2) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        v261_3_we0_local = 1'b1;
    end else begin
        v261_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(p_cast5_reg_2513_pp0_iter3_reg == 3'd1) & ~(p_cast5_reg_2513_pp0_iter3_reg == 3'd0) & ~(p_cast5_reg_2513_pp0_iter3_reg == 3'd2) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(p_cast3_reg_2495 == 3'd1) & ~(p_cast3_reg_2495 == 3'd0) & ~(p_cast3_reg_2495 == 3'd2) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(p_cast3_reg_2495 == 3'd1) & ~(p_cast3_reg_2495 == 3'd0) & ~(p_cast3_reg_2495 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(p_cast1_reg_2349_pp0_iter2_reg == 3'd1) & ~(p_cast1_reg_2349_pp0_iter2_reg == 3'd0) & ~(p_cast1_reg_2349_pp0_iter2_reg == 3'd2) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        v261_3_we1_local = 1'b1;
    end else begin
        v261_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            v262_address0_local = p_cast41_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v262_address0_local = p_cast40_fu_915_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v262_address0_local = p_cast39_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v262_address0_local = p_cast38_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v262_address0_local = p_cast37_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_address0_local = p_cast35_fu_834_p1;
        end else begin
            v262_address0_local = 'bx;
        end
    end else begin
        v262_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v262_ce0_local = 1'b1;
    end else begin
        v262_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v263_ce0_local = 1'b1;
    end else begin
        v263_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v263_ce1_local = 1'b1;
    end else begin
        v263_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln278_1_fu_686_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln278_fu_698_p2 = (ap_sig_allocacmp_v197_load + 8'd6);
assign add_ln279_fu_810_p2 = (select_ln278_reg_2016 + 8'd2);
assign add_ln280_fu_971_p2 = (mul_ln280_reg_2229 + zext_ln283_fu_968_p1);
assign add_ln283_fu_769_p2 = (phi_mul + zext_ln283_1_fu_766_p1);
assign add_ln287_fu_987_p2 = (mul_ln280_reg_2229 + zext_ln289_fu_984_p1);
assign add_ln289_fu_800_p2 = (phi_mul + zext_ln289_1_fu_796_p1);
assign add_ln293_fu_1138_p2 = (mul_ln293_reg_2323 + zext_ln283_reg_2256);
assign add_ln299_fu_1158_p2 = (mul_ln293_reg_2323 + zext_ln289_reg_2289);
assign add_ln304_fu_1364_p2 = (mul_ln304_reg_2463 + zext_ln283_reg_2256_pp0_iter2_reg);
assign add_ln310_fu_1405_p2 = (mul_ln304_reg_2463 + zext_ln289_reg_2289_pp0_iter2_reg);
assign add_ln315_fu_1531_p2 = (mul_ln315_reg_2469 + zext_ln283_reg_2256_pp0_iter2_reg);
assign add_ln321_fu_1605_p2 = (mul_ln315_reg_2469 + zext_ln289_reg_2289_pp0_iter3_reg);
assign add_ln326_fu_1589_p2 = (mul_ln326_reg_2475 + zext_ln283_reg_2256_pp0_iter3_reg);
assign add_ln332_fu_1617_p2 = (mul_ln326_reg_2475 + zext_ln289_reg_2289_pp0_iter3_reg);
assign add_ln337_fu_1601_p2 = (mul_ln337_reg_2481 + zext_ln283_reg_2256_pp0_iter3_reg);
assign add_ln343_fu_1621_p2 = (mul_ln337_reg_2481 + zext_ln289_reg_2289_pp0_iter3_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln286_fu_1130_p1 = reg_654;
assign bitcast_ln292_fu_1150_p1 = reg_654;
assign bitcast_ln298_fu_1298_p1 = grp_fu_642_p2;
assign bitcast_ln303_fu_1331_p1 = grp_fu_642_p2;
assign bitcast_ln309_fu_1802_p1 = grp_fu_642_p2;
assign bitcast_ln314_fu_1883_p1 = grp_fu_642_p2;
assign bitcast_ln320_fu_1887_p1 = grp_fu_642_p2;
assign bitcast_ln325_fu_1895_p1 = grp_fu_642_p2;
assign bitcast_ln331_fu_1899_p1 = grp_fu_642_p2;
assign bitcast_ln336_fu_1903_p1 = grp_fu_642_p2;
assign bitcast_ln342_fu_1907_p1 = grp_fu_642_p2;
assign bitcast_ln347_fu_1891_p1 = grp_fu_642_p2;
assign empty_17_fu_825_p2 = (select_ln278_1_reg_2024 + 8'd2);
assign empty_21_fu_843_p2 = (select_ln278_1_reg_2024 + 8'd3);
assign empty_25_fu_861_p2 = (select_ln278_1_reg_2024 + 8'd4);
assign empty_29_fu_884_p2 = (select_ln278_1_reg_2024 + 8'd5);
assign grp_fu_1911_p0 = grp_fu_1911_p00;
assign grp_fu_1911_p00 = select_ln278_1_fu_718_p3;
assign grp_fu_1911_p1 = 16'd200;
assign grp_fu_1911_p2 = zext_ln277_cast_reg_2002;
assign grp_fu_1919_p0 = grp_fu_1919_p00;
assign grp_fu_1919_p00 = tmp_1_fu_755_p3;
assign grp_fu_1919_p1 = 16'd200;
assign grp_fu_1919_p2 = zext_ln277_cast_reg_2002;
assign grp_fu_1927_p0 = grp_fu_1927_p00;
assign grp_fu_1927_p00 = empty_17_fu_825_p2;
assign grp_fu_1927_p1 = 16'd200;
assign grp_fu_1927_p2 = zext_ln277_cast_reg_2002;
assign grp_fu_1935_p0 = grp_fu_1935_p00;
assign grp_fu_1935_p00 = empty_21_fu_843_p2;
assign grp_fu_1935_p1 = 16'd200;
assign grp_fu_1935_p2 = zext_ln277_cast_reg_2002;
assign grp_fu_1943_p0 = grp_fu_1943_p00;
assign grp_fu_1943_p00 = empty_25_fu_861_p2;
assign grp_fu_1943_p1 = 16'd200;
assign grp_fu_1943_p2 = zext_ln277_cast_reg_2002;
assign grp_fu_1951_p0 = grp_fu_1951_p00;
assign grp_fu_1951_p00 = empty_29_fu_884_p2;
assign grp_fu_1951_p1 = 16'd200;
assign grp_fu_1951_p2 = zext_ln277_cast_reg_2002;
assign grp_fu_750_p1 = 8'd45;
assign grp_fu_820_p1 = 8'd45;
assign grp_fu_838_p1 = 8'd45;
assign grp_fu_856_p1 = 8'd45;
assign grp_fu_879_p1 = 8'd45;
assign grp_fu_901_p1 = 8'd45;
assign icmp_ln278_fu_680_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_704_p2 = ((ap_sig_allocacmp_v198_load < 8'd190) ? 1'b1 : 1'b0);
assign mul11_fu_1090_p0 = mul11_fu_1090_p00;
assign mul11_fu_1090_p00 = tmp_1_reg_2044_pp0_iter1_reg;
assign mul11_fu_1090_p1 = 17'd365;
assign mul2_fu_1379_p0 = mul2_fu_1379_p00;
assign mul2_fu_1379_p00 = empty_25_reg_2112_pp0_iter2_reg;
assign mul2_fu_1379_p1 = 17'd365;
assign mul5_fu_1338_p0 = mul5_fu_1338_p00;
assign mul5_fu_1338_p00 = empty_21_reg_2096_pp0_iter2_reg;
assign mul5_fu_1338_p1 = 17'd365;
assign mul8_fu_1305_p0 = mul8_fu_1305_p00;
assign mul8_fu_1305_p00 = empty_17_reg_2070_pp0_iter2_reg;
assign mul8_fu_1305_p1 = 17'd365;
assign mul_fu_1459_p0 = mul_fu_1459_p00;
assign mul_fu_1459_p00 = empty_29_reg_2133_pp0_iter2_reg;
assign mul_fu_1459_p1 = 17'd365;
assign mul_ln278_fu_952_p0 = mul_ln278_fu_952_p00;
assign mul_ln278_fu_952_p00 = select_ln278_1_reg_2024_pp0_iter1_reg;
assign mul_ln278_fu_952_p1 = 17'd365;
assign mul_ln280_fu_943_p0 = mul_ln280_fu_943_p00;
assign mul_ln280_fu_943_p00 = urem_ln278_reg_2219;
assign mul_ln280_fu_943_p1 = 14'd190;
assign mul_ln293_fu_1003_p0 = mul_ln293_fu_1003_p00;
assign mul_ln293_fu_1003_p00 = empty_16_reg_2235;
assign mul_ln293_fu_1003_p1 = 14'd190;
assign mul_ln304_fu_1265_p0 = mul_ln304_fu_1265_p00;
assign mul_ln304_fu_1265_p00 = empty_20_reg_2251_pp0_iter2_reg;
assign mul_ln304_fu_1265_p1 = 14'd190;
assign mul_ln315_fu_1274_p0 = mul_ln315_fu_1274_p00;
assign mul_ln315_fu_1274_p00 = empty_24_reg_2329_pp0_iter2_reg;
assign mul_ln315_fu_1274_p1 = 14'd190;
assign mul_ln326_fu_1283_p0 = mul_ln326_fu_1283_p00;
assign mul_ln326_fu_1283_p00 = empty_28_reg_2359_pp0_iter2_reg;
assign mul_ln326_fu_1283_p1 = 14'd190;
assign mul_ln337_fu_1292_p0 = mul_ln337_fu_1292_p00;
assign mul_ln337_fu_1292_p00 = empty_32_reg_2374_pp0_iter2_reg;
assign mul_ln337_fu_1292_p1 = 14'd190;
assign or_ln_fu_788_p3 = {{tmp_2_fu_779_p4}, {1'd1}};
assign p_cast35_fu_834_p1 = grp_fu_1911_p3;
assign p_cast37_fu_852_p1 = grp_fu_1919_p3;
assign p_cast38_fu_875_p1 = grp_fu_1927_p3;
assign p_cast39_fu_897_p1 = grp_fu_1935_p3;
assign p_cast40_fu_915_p1 = grp_fu_1943_p3;
assign p_cast41_fu_923_p1 = grp_fu_1951_p3;
assign select_ln278_1_fu_718_p3 = ((icmp_ln279_fu_704_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v197_load : add_ln278_fu_698_p2);
assign select_ln278_fu_710_p3 = ((icmp_ln279_fu_704_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v198_load : 8'd0);
assign tmp_1_fu_755_p3 = {{tmp_reg_2039}, {1'd1}};
assign tmp_2_fu_779_p4 = {{select_ln278_reg_2016[7:1]}};
assign v199_fu_1025_p2 = v261_0_q1;
assign v199_fu_1025_p4 = v261_1_q1;
assign v199_fu_1025_p6 = v261_2_q1;
assign v199_fu_1025_p8 = v261_3_q1;
assign v199_fu_1025_p9 = 'bx;
assign v200_fu_1116_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v199_reg_2334);
assign v201_fu_870_p1 = reg_650;
assign v202_fu_893_p1 = v263_load_reg_2081;
assign v205_fu_1064_p2 = v261_0_q0;
assign v205_fu_1064_p4 = v261_1_q0;
assign v205_fu_1064_p6 = v261_2_q0;
assign v205_fu_1064_p8 = v261_3_q0;
assign v205_fu_1064_p9 = 'bx;
assign v206_fu_1123_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v205_reg_2339);
assign v207_fu_906_p1 = v263_load_1_reg_2086;
assign v210_fu_1186_p2 = v261_0_q1;
assign v210_fu_1186_p4 = v261_1_q1;
assign v210_fu_1186_p6 = v261_2_q1;
assign v210_fu_1186_p8 = v261_3_q1;
assign v210_fu_1186_p9 = 'bx;
assign v211_fu_1209_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v210_reg_2443);
assign v212_fu_910_p1 = reg_650;
assign v215_fu_1232_p2 = v261_0_q1;
assign v215_fu_1232_p4 = v261_1_q1;
assign v215_fu_1232_p6 = v261_2_q1;
assign v215_fu_1232_p8 = v261_3_q1;
assign v215_fu_1232_p9 = 'bx;
assign v216_fu_1255_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v215_reg_2453);
assign v219_fu_1433_p2 = v261_0_q1;
assign v219_fu_1433_p4 = v261_1_q1;
assign v219_fu_1433_p6 = v261_2_q1;
assign v219_fu_1433_p8 = v261_3_q1;
assign v219_fu_1433_p9 = 'bx;
assign v220_fu_1485_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v219_reg_2573);
assign v221_fu_927_p1 = v262_load_2_reg_2149;
assign v224_fu_1508_p2 = v261_0_q1;
assign v224_fu_1508_p4 = v261_1_q1;
assign v224_fu_1508_p6 = v261_2_q1;
assign v224_fu_1508_p8 = v261_3_q1;
assign v224_fu_1508_p9 = 'bx;
assign v225_fu_1543_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v224_reg_2593);
assign v228_fu_1566_p2 = v261_0_q0;
assign v228_fu_1566_p4 = v261_1_q0;
assign v228_fu_1566_p6 = v261_2_q0;
assign v228_fu_1566_p8 = v261_3_q0;
assign v228_fu_1566_p9 = 'bx;
assign v229_fu_1806_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v228_reg_2623);
assign v230_fu_935_p1 = reg_650;
assign v233_fu_1655_p2 = v261_0_q1;
assign v233_fu_1655_p4 = v261_1_q1;
assign v233_fu_1655_p6 = v261_2_q1;
assign v233_fu_1655_p8 = v261_3_q1;
assign v233_fu_1655_p9 = 'bx;
assign v234_fu_1813_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v233_reg_2727);
assign v237_fu_1694_p2 = v261_0_q0;
assign v237_fu_1694_p4 = v261_1_q0;
assign v237_fu_1694_p6 = v261_2_q0;
assign v237_fu_1694_p8 = v261_3_q0;
assign v237_fu_1694_p9 = 'bx;
assign v238_fu_1819_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v237_reg_2732);
assign v239_fu_919_p1 = v262_q0;
assign v242_fu_1740_p2 = v261_0_q1;
assign v242_fu_1740_p4 = v261_1_q1;
assign v242_fu_1740_p6 = v261_2_q1;
assign v242_fu_1740_p8 = v261_3_q1;
assign v242_fu_1740_p9 = 'bx;
assign v243_fu_1825_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v242_reg_2761);
assign v246_fu_1779_p2 = v261_0_q0;
assign v246_fu_1779_p4 = v261_1_q0;
assign v246_fu_1779_p6 = v261_2_q0;
assign v246_fu_1779_p8 = v261_3_q0;
assign v246_fu_1779_p9 = 'bx;
assign v247_fu_1831_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v246_reg_2766);
assign v248_fu_931_p1 = v262_q0;
assign v251_fu_1853_p2 = v261_0_q1;
assign v251_fu_1853_p4 = v261_1_q1;
assign v251_fu_1853_p6 = v261_2_q1;
assign v251_fu_1853_p8 = v261_3_q1;
assign v251_fu_1853_p9 = 'bx;
assign v252_fu_1876_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v251_fu_1853_p11);
assign v261_0_address0 = v261_0_address0_local;
assign v261_0_address1 = v261_0_address1_local;
assign v261_0_ce0 = v261_0_ce0_local;
assign v261_0_ce1 = v261_0_ce1_local;
assign v261_0_d0 = v261_0_d0_local;
assign v261_0_d1 = v261_0_d1_local;
assign v261_0_we0 = v261_0_we0_local;
assign v261_0_we1 = v261_0_we1_local;
assign v261_1_address0 = v261_1_address0_local;
assign v261_1_address1 = v261_1_address1_local;
assign v261_1_ce0 = v261_1_ce0_local;
assign v261_1_ce1 = v261_1_ce1_local;
assign v261_1_d0 = v261_1_d0_local;
assign v261_1_d1 = v261_1_d1_local;
assign v261_1_we0 = v261_1_we0_local;
assign v261_1_we1 = v261_1_we1_local;
assign v261_2_address0 = v261_2_address0_local;
assign v261_2_address1 = v261_2_address1_local;
assign v261_2_ce0 = v261_2_ce0_local;
assign v261_2_ce1 = v261_2_ce1_local;
assign v261_2_d0 = v261_2_d0_local;
assign v261_2_d1 = v261_2_d1_local;
assign v261_2_we0 = v261_2_we0_local;
assign v261_2_we1 = v261_2_we1_local;
assign v261_3_address0 = v261_3_address0_local;
assign v261_3_address1 = v261_3_address1_local;
assign v261_3_ce0 = v261_3_ce0_local;
assign v261_3_ce1 = v261_3_ce1_local;
assign v261_3_d0 = v261_3_d0_local;
assign v261_3_d1 = v261_3_d1_local;
assign v261_3_we0 = v261_3_we0_local;
assign v261_3_we1 = v261_3_we1_local;
assign v262_address0 = v262_address0_local;
assign v262_ce0 = v262_ce0_local;
assign v263_address0 = zext_ln289_2_fu_805_p1;
assign v263_address1 = zext_ln283_2_fu_774_p1;
assign v263_ce0 = v263_ce0_local;
assign v263_ce1 = v263_ce1_local;
assign zext_ln277_cast_fu_658_p1 = zext_ln277;
assign zext_ln280_1_fu_976_p1 = add_ln280_fu_971_p2;
assign zext_ln283_1_fu_766_p1 = select_ln278_reg_2016;
assign zext_ln283_2_fu_774_p1 = add_ln283_fu_769_p2;
assign zext_ln283_fu_968_p1 = select_ln278_reg_2016_pp0_iter1_reg;
assign zext_ln287_fu_992_p1 = add_ln287_fu_987_p2;
assign zext_ln289_1_fu_796_p1 = or_ln_fu_788_p3;
assign zext_ln289_2_fu_805_p1 = add_ln289_fu_800_p2;
assign zext_ln289_fu_984_p1 = or_ln_reg_2060_pp0_iter1_reg;
assign zext_ln293_1_fu_1142_p1 = add_ln293_fu_1138_p2;
assign zext_ln299_fu_1162_p1 = add_ln299_fu_1158_p2;
assign zext_ln304_1_fu_1368_p1 = add_ln304_fu_1364_p2;
assign zext_ln310_fu_1409_p1 = add_ln310_fu_1405_p2;
assign zext_ln315_1_fu_1535_p1 = add_ln315_fu_1531_p2;
assign zext_ln321_fu_1609_p1 = add_ln321_fu_1605_p2;
assign zext_ln326_1_fu_1593_p1 = add_ln326_fu_1589_p2;
assign zext_ln332_fu_1632_p1 = add_ln332_reg_2658;
assign zext_ln337_1_fu_1625_p1 = add_ln337_reg_2633;
assign zext_ln343_fu_1717_p1 = add_ln343_reg_2663;
always @ (posedge ap_clk) begin
    zext_ln277_cast_reg_2002[15:8] <= 8'b00000000;
    tmp_1_reg_2044[0] <= 1'b1;
    tmp_1_reg_2044_pp0_iter1_reg[0] <= 1'b1;
    or_ln_reg_2060[0] <= 1'b1;
    or_ln_reg_2060_pp0_iter1_reg[0] <= 1'b1;
    zext_ln283_reg_2256[13:8] <= 6'b000000;
    zext_ln283_reg_2256_pp0_iter2_reg[13:8] <= 6'b000000;
    zext_ln283_reg_2256_pp0_iter3_reg[13:8] <= 6'b000000;
    zext_ln289_reg_2289[0] <= 1'b1;
    zext_ln289_reg_2289[13:8] <= 6'b000000;
    zext_ln289_reg_2289_pp0_iter2_reg[0] <= 1'b1;
    zext_ln289_reg_2289_pp0_iter2_reg[13:8] <= 6'b000000;
    zext_ln289_reg_2289_pp0_iter3_reg[0] <= 1'b1;
    zext_ln289_reg_2289_pp0_iter3_reg[13:8] <= 6'b000000;
end
endmodule 
