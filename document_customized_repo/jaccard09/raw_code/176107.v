module kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v4,cmp11,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,zext_ln31,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,phi_mul,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_opcode,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce); 
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
input  [31:0] v4;
input  [0:0] cmp11;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [14:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
input  [7:0] zext_ln31;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
input  [15:0] phi_mul;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
output  [1:0] grp_fu_180_p_opcode;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
output  [1:0] grp_fu_188_p_opcode;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
input  [31:0] grp_fu_208_p_dout0;
output   grp_fu_208_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln32_reg_1973;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_574;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [0:0] trunc_ln32_reg_2004;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] trunc_ln32_reg_2004_pp0_iter1_reg;
reg   [31:0] reg_578;
reg   [31:0] reg_582;
reg   [31:0] reg_587;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_591;
reg   [31:0] reg_595;
reg   [31:0] reg_599;
reg   [31:0] reg_603;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_607;
reg   [31:0] reg_611;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] trunc_ln32_reg_2004_pp0_iter3_reg;
reg   [31:0] reg_615;
reg   [31:0] reg_619;
reg   [31:0] reg_623;
reg   [31:0] reg_627;
reg   [31:0] reg_631;
wire   [0:0] cmp11_read_reg_1912;
wire   [15:0] zext_ln31_cast_fu_635_p1;
reg   [15:0] zext_ln31_cast_reg_1960;
wire   [0:0] icmp_ln32_fu_657_p2;
reg   [0:0] icmp_ln32_reg_1973_pp0_iter1_reg;
reg   [0:0] icmp_ln32_reg_1973_pp0_iter2_reg;
reg   [7:0] v7_load_reg_1977;
wire   [0:0] icmp_ln33_fu_681_p2;
reg   [0:0] icmp_ln33_reg_1982;
wire   [7:0] select_ln32_1_fu_687_p3;
reg   [7:0] select_ln32_1_reg_1987;
wire   [0:0] trunc_ln32_fu_699_p1;
reg   [0:0] trunc_ln32_reg_2004_pp0_iter2_reg;
reg   [6:0] lshr_ln_reg_2010;
wire   [7:0] select_ln32_fu_723_p3;
reg   [7:0] select_ln32_reg_2019;
wire   [14:0] mul_ln34_fu_732_p2;
reg   [14:0] mul_ln34_reg_2024;
wire   [14:0] mul_ln49_fu_761_p2;
reg   [14:0] mul_ln49_reg_2035;
wire   [7:0] or_ln_fu_791_p3;
reg   [7:0] or_ln_reg_2046;
wire   [14:0] mul_ln62_fu_833_p2;
reg   [14:0] mul_ln62_reg_2056;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [14:0] mul_ln75_fu_862_p2;
reg   [14:0] mul_ln75_reg_2067;
wire   [14:0] zext_ln38_fu_868_p1;
reg   [14:0] zext_ln38_reg_2073;
reg   [14:0] v229_0_addr_reg_2084;
reg   [14:0] v229_0_addr_reg_2084_pp0_iter1_reg;
reg   [14:0] v229_0_addr_9_reg_2089;
reg   [14:0] v229_0_addr_9_reg_2089_pp0_iter1_reg;
reg   [14:0] v229_1_addr_reg_2094;
reg   [14:0] v229_1_addr_reg_2094_pp0_iter1_reg;
reg   [14:0] v229_1_addr_1_reg_2099;
reg   [14:0] v229_1_addr_1_reg_2099_pp0_iter1_reg;
reg   [31:0] v228_load_reg_2104;
wire   [14:0] zext_ln45_fu_893_p1;
reg   [14:0] zext_ln45_reg_2109;
reg   [14:0] v229_0_addr_2_reg_2120;
reg   [14:0] v229_0_addr_2_reg_2120_pp0_iter1_reg;
reg   [14:0] v229_0_addr_12_reg_2125;
reg   [14:0] v229_0_addr_12_reg_2125_pp0_iter1_reg;
reg   [14:0] v229_1_addr_2_reg_2130;
reg   [14:0] v229_1_addr_2_reg_2130_pp0_iter1_reg;
reg   [14:0] v229_1_addr_4_reg_2135;
reg   [14:0] v229_1_addr_4_reg_2135_pp0_iter1_reg;
reg   [31:0] v228_load_1_reg_2140;
wire   [14:0] mul_ln88_fu_931_p2;
reg   [14:0] mul_ln88_reg_2150;
wire   [14:0] mul_ln101_fu_960_p2;
reg   [14:0] mul_ln101_reg_2161;
reg   [14:0] v229_0_addr_1_reg_2167;
reg   [14:0] v229_0_addr_1_reg_2167_pp0_iter1_reg;
reg   [14:0] v229_0_addr_11_reg_2172;
reg   [14:0] v229_0_addr_11_reg_2172_pp0_iter1_reg;
reg   [14:0] v229_1_addr_3_reg_2177;
reg   [14:0] v229_1_addr_3_reg_2177_pp0_iter1_reg;
reg   [14:0] v229_1_addr_9_reg_2182;
reg   [14:0] v229_1_addr_9_reg_2182_pp0_iter1_reg;
wire   [31:0] select_ln34_fu_986_p3;
reg   [31:0] select_ln34_reg_2187;
reg   [14:0] v229_0_addr_4_reg_2192;
reg   [14:0] v229_0_addr_4_reg_2192_pp0_iter1_reg;
reg   [14:0] v229_0_addr_14_reg_2197;
reg   [14:0] v229_0_addr_14_reg_2197_pp0_iter1_reg;
reg   [14:0] v229_1_addr_6_reg_2202;
reg   [14:0] v229_1_addr_6_reg_2202_pp0_iter1_reg;
reg   [14:0] v229_1_addr_12_reg_2207;
reg   [14:0] v229_1_addr_12_reg_2207_pp0_iter1_reg;
wire   [31:0] select_ln42_fu_1013_p3;
reg   [31:0] select_ln42_reg_2212;
wire   [14:0] mul_ln114_fu_1037_p2;
reg   [14:0] mul_ln114_reg_2227;
wire   [14:0] mul_ln127_fu_1066_p2;
reg   [14:0] mul_ln127_reg_2238;
wire   [6:0] empty_68_fu_1072_p2;
reg   [6:0] empty_68_reg_2244;
reg   [14:0] v229_0_addr_3_reg_2249;
reg   [14:0] v229_0_addr_3_reg_2249_pp0_iter1_reg;
reg   [14:0] v229_0_addr_13_reg_2254;
reg   [14:0] v229_0_addr_13_reg_2254_pp0_iter1_reg;
reg   [14:0] v229_1_addr_5_reg_2259;
reg   [14:0] v229_1_addr_5_reg_2259_pp0_iter1_reg;
reg   [14:0] v229_1_addr_11_reg_2264;
reg   [14:0] v229_1_addr_11_reg_2264_pp0_iter1_reg;
wire   [31:0] v8_fu_1097_p1;
reg   [31:0] v8_reg_2269;
reg   [14:0] v229_0_addr_6_reg_2275;
reg   [14:0] v229_0_addr_6_reg_2275_pp0_iter1_reg;
reg   [14:0] v229_0_addr_16_reg_2280;
reg   [14:0] v229_0_addr_16_reg_2280_pp0_iter1_reg;
reg   [14:0] v229_1_addr_8_reg_2285;
reg   [14:0] v229_1_addr_8_reg_2285_pp0_iter1_reg;
reg   [14:0] v229_1_addr_14_reg_2290;
reg   [14:0] v229_1_addr_14_reg_2290_pp0_iter1_reg;
wire   [31:0] v15_fu_1121_p1;
reg   [31:0] v15_reg_2295;
wire   [31:0] v21_fu_1125_p1;
reg   [31:0] v21_reg_2301;
wire   [31:0] v27_fu_1130_p1;
reg   [31:0] v27_reg_2307;
wire   [31:0] v11_fu_1135_p1;
reg   [14:0] v229_0_addr_5_reg_2329;
reg   [14:0] v229_0_addr_5_reg_2329_pp0_iter1_reg;
reg   [14:0] v229_0_addr_5_reg_2329_pp0_iter2_reg;
wire   [14:0] add_ln140_fu_1168_p2;
reg   [14:0] add_ln140_reg_2334;
reg   [14:0] v229_0_addr_15_reg_2339;
reg   [14:0] v229_0_addr_15_reg_2339_pp0_iter1_reg;
reg   [14:0] v229_1_addr_7_reg_2344;
reg   [14:0] v229_1_addr_7_reg_2344_pp0_iter1_reg;
reg   [14:0] v229_1_addr_13_reg_2349;
reg   [14:0] v229_1_addr_13_reg_2349_pp0_iter1_reg;
wire   [31:0] v12_fu_1183_p1;
reg   [31:0] v12_reg_2354;
reg   [14:0] v229_0_addr_8_reg_2361;
reg   [14:0] v229_0_addr_8_reg_2361_pp0_iter1_reg;
reg   [14:0] v229_0_addr_8_reg_2361_pp0_iter2_reg;
wire   [14:0] add_ln147_fu_1197_p2;
reg   [14:0] add_ln147_reg_2366;
reg   [14:0] v229_0_addr_17_reg_2371;
reg   [14:0] v229_0_addr_17_reg_2371_pp0_iter1_reg;
reg   [14:0] v229_1_addr_10_reg_2376;
reg   [14:0] v229_1_addr_10_reg_2376_pp0_iter1_reg;
reg   [14:0] v229_1_addr_16_reg_2381;
reg   [14:0] v229_1_addr_16_reg_2381_pp0_iter1_reg;
wire   [31:0] v18_fu_1212_p1;
reg   [31:0] v18_reg_2386;
wire   [31:0] bitcast_ln49_fu_1216_p1;
reg   [31:0] bitcast_ln49_reg_2393;
wire   [31:0] bitcast_ln56_fu_1221_p1;
reg   [31:0] bitcast_ln56_reg_2399;
wire   [31:0] bitcast_ln62_fu_1226_p1;
reg   [31:0] bitcast_ln62_reg_2405;
wire   [31:0] bitcast_ln69_fu_1231_p1;
reg   [31:0] bitcast_ln69_reg_2411;
wire   [31:0] v32_fu_1236_p1;
reg   [31:0] v32_reg_2417;
wire   [31:0] v38_fu_1241_p1;
reg   [31:0] v38_reg_2423;
wire   [31:0] v43_fu_1246_p1;
reg   [31:0] v43_reg_2429;
wire   [31:0] v49_fu_1251_p1;
reg   [31:0] v49_reg_2435;
wire   [31:0] v24_fu_1256_p1;
reg   [14:0] v229_0_addr_7_reg_2457;
reg   [14:0] v229_0_addr_7_reg_2457_pp0_iter1_reg;
reg   [14:0] v229_0_addr_7_reg_2457_pp0_iter2_reg;
reg   [14:0] v229_0_addr_7_reg_2457_pp0_iter3_reg;
reg   [14:0] v229_1_addr_15_reg_2462;
reg   [14:0] v229_1_addr_15_reg_2462_pp0_iter1_reg;
reg   [14:0] v229_0_addr_10_reg_2467;
reg   [14:0] v229_0_addr_10_reg_2467_pp0_iter1_reg;
reg   [14:0] v229_0_addr_10_reg_2467_pp0_iter2_reg;
reg   [14:0] v229_0_addr_10_reg_2467_pp0_iter3_reg;
reg   [14:0] v229_1_addr_17_reg_2472;
reg   [14:0] v229_1_addr_17_reg_2472_pp0_iter1_reg;
wire   [31:0] bitcast_ln75_fu_1280_p1;
reg   [31:0] bitcast_ln75_reg_2477;
wire   [31:0] bitcast_ln82_fu_1285_p1;
reg   [31:0] bitcast_ln82_reg_2483;
wire   [31:0] bitcast_ln88_fu_1290_p1;
reg   [31:0] bitcast_ln88_reg_2489;
wire   [31:0] bitcast_ln95_fu_1295_p1;
reg   [31:0] bitcast_ln95_reg_2495;
wire   [31:0] v54_fu_1300_p1;
reg   [31:0] v54_reg_2501;
wire   [31:0] v60_fu_1305_p1;
reg   [31:0] v60_reg_2507;
wire   [31:0] v65_fu_1310_p1;
reg   [31:0] v65_reg_2513;
wire   [31:0] v71_fu_1315_p1;
reg   [31:0] v71_reg_2519;
wire   [31:0] v35_fu_1320_p1;
reg   [31:0] v224_load_6_reg_2531;
wire   [31:0] v10_fu_1334_p3;
reg   [31:0] v10_reg_2546;
wire   [31:0] v17_fu_1340_p3;
reg   [31:0] v17_reg_2551;
wire   [31:0] bitcast_ln101_fu_1346_p1;
reg   [31:0] bitcast_ln101_reg_2556;
wire   [31:0] bitcast_ln108_fu_1351_p1;
reg   [31:0] bitcast_ln108_reg_2562;
wire   [31:0] bitcast_ln114_fu_1356_p1;
reg   [31:0] bitcast_ln114_reg_2568;
wire   [31:0] bitcast_ln121_fu_1361_p1;
reg   [31:0] bitcast_ln121_reg_2574;
wire   [31:0] v23_fu_1366_p3;
reg   [31:0] v23_reg_2580;
wire   [31:0] v29_fu_1372_p3;
reg   [31:0] v29_reg_2585;
wire   [31:0] v76_fu_1378_p1;
reg   [31:0] v76_reg_2590;
wire   [31:0] v82_fu_1383_p1;
reg   [31:0] v82_reg_2596;
wire   [31:0] v87_fu_1388_p1;
reg   [31:0] v87_reg_2602;
wire   [31:0] v93_fu_1393_p1;
reg   [31:0] v93_reg_2608;
wire   [31:0] v46_fu_1398_p1;
wire   [31:0] v57_fu_1404_p1;
reg   [31:0] v13_reg_2626;
reg   [31:0] v19_reg_2631;
wire   [31:0] select_ln51_fu_1410_p3;
reg   [31:0] select_ln51_reg_2636;
wire   [31:0] select_ln58_fu_1416_p3;
reg   [31:0] select_ln58_reg_2641;
wire   [31:0] select_ln64_fu_1422_p3;
reg   [31:0] select_ln64_reg_2646;
wire   [31:0] select_ln71_fu_1428_p3;
reg   [31:0] select_ln71_reg_2651;
wire   [31:0] bitcast_ln127_fu_1434_p1;
reg   [31:0] bitcast_ln127_reg_2656;
wire   [31:0] bitcast_ln134_fu_1439_p1;
reg   [31:0] bitcast_ln134_reg_2662;
wire   [31:0] v34_fu_1444_p3;
reg   [31:0] v34_reg_2668;
wire   [31:0] v40_fu_1450_p3;
reg   [31:0] v40_reg_2673;
wire   [31:0] v45_fu_1456_p3;
reg   [31:0] v45_reg_2678;
wire   [31:0] v51_fu_1462_p3;
reg   [31:0] v51_reg_2683;
wire   [31:0] v98_fu_1468_p1;
reg   [31:0] v98_reg_2688;
wire   [31:0] v104_fu_1473_p1;
reg   [31:0] v104_reg_2694;
wire   [31:0] v68_fu_1478_p1;
wire   [31:0] v79_fu_1484_p1;
wire   [31:0] v90_fu_1489_p1;
reg   [31:0] v25_reg_2718;
reg   [31:0] v30_reg_2723;
wire   [31:0] select_ln77_fu_1495_p3;
reg   [31:0] select_ln77_reg_2728;
wire   [31:0] select_ln84_fu_1501_p3;
reg   [31:0] select_ln84_reg_2733;
wire   [31:0] select_ln90_fu_1507_p3;
reg   [31:0] select_ln90_reg_2738;
wire   [31:0] select_ln97_fu_1513_p3;
reg   [31:0] select_ln97_reg_2743;
wire   [31:0] v56_fu_1519_p3;
reg   [31:0] v56_reg_2748;
wire   [31:0] v62_fu_1525_p3;
reg   [31:0] v62_reg_2753;
wire   [31:0] v67_fu_1531_p3;
reg   [31:0] v67_reg_2758;
wire   [31:0] v73_fu_1537_p3;
reg   [31:0] v73_reg_2763;
wire   [31:0] v101_fu_1543_p1;
reg   [31:0] v36_reg_2774;
reg   [31:0] v41_reg_2779;
wire   [31:0] select_ln103_fu_1549_p3;
reg   [31:0] select_ln103_reg_2784;
wire   [31:0] select_ln110_fu_1555_p3;
reg   [31:0] select_ln110_reg_2789;
wire   [31:0] select_ln116_fu_1561_p3;
reg   [31:0] select_ln116_reg_2794;
wire   [31:0] select_ln123_fu_1567_p3;
reg   [31:0] select_ln123_reg_2799;
wire   [31:0] v78_fu_1573_p3;
reg   [31:0] v78_reg_2804;
wire   [31:0] v84_fu_1579_p3;
reg   [31:0] v84_reg_2809;
wire   [31:0] v89_fu_1585_p3;
reg   [31:0] v89_reg_2814;
wire   [31:0] v95_fu_1591_p3;
reg   [31:0] v95_reg_2819;
reg   [31:0] v47_reg_2824;
reg   [31:0] v52_reg_2829;
reg   [31:0] v58_reg_2834;
reg   [31:0] v63_reg_2839;
wire   [31:0] select_ln129_fu_1597_p3;
reg   [31:0] select_ln129_reg_2844;
wire   [31:0] select_ln136_fu_1603_p3;
reg   [31:0] select_ln136_reg_2849;
wire   [31:0] v100_fu_1609_p3;
reg   [31:0] v100_reg_2854;
wire   [31:0] v106_fu_1615_p3;
reg   [31:0] v106_reg_2859;
reg   [31:0] v69_reg_2864;
reg   [31:0] v74_reg_2869;
reg   [31:0] v80_reg_2874;
reg   [31:0] v85_reg_2879;
reg   [31:0] v91_reg_2884;
wire   [31:0] grp_fu_570_p2;
reg   [31:0] v96_reg_2889;
reg   [31:0] v102_reg_2894;
reg   [31:0] v102_reg_2894_pp0_iter2_reg;
reg   [31:0] v107_reg_2900;
reg   [31:0] v107_reg_2900_pp0_iter2_reg;
wire   [31:0] bitcast_ln41_fu_1621_p1;
reg   [31:0] bitcast_ln41_reg_2906;
wire   [31:0] bitcast_ln48_fu_1625_p1;
reg   [31:0] bitcast_ln48_reg_2912;
wire   [31:0] bitcast_ln140_fu_1709_p1;
reg   [31:0] bitcast_ln140_reg_2918;
wire   [31:0] bitcast_ln147_fu_1714_p1;
reg   [31:0] bitcast_ln147_reg_2924;
reg   [31:0] v103_reg_2930;
reg   [31:0] v108_reg_2935;
wire   [31:0] select_ln142_fu_1777_p3;
reg   [31:0] select_ln142_reg_2940;
wire   [31:0] select_ln149_fu_1783_p3;
reg   [31:0] select_ln149_reg_2945;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln38_2_fu_776_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln45_2_fu_808_p1;
wire   [63:0] zext_ln34_1_fu_876_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln49_1_fu_887_p1;
wire   [63:0] zext_ln42_fu_901_p1;
wire   [63:0] zext_ln56_fu_912_p1;
wire   [63:0] p_cast31_fu_918_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln62_1_fu_970_p1;
wire   [63:0] zext_ln75_1_fu_980_p1;
wire   [63:0] zext_ln69_fu_997_p1;
wire   [63:0] zext_ln82_fu_1007_p1;
wire   [63:0] p_cast_fu_1020_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast32_fu_1024_p1;
wire   [63:0] zext_ln88_1_fu_1081_p1;
wire   [63:0] zext_ln101_1_fu_1091_p1;
wire   [63:0] zext_ln95_fu_1105_p1;
wire   [63:0] zext_ln108_fu_1115_p1;
wire   [63:0] p_cast33_fu_1141_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast34_fu_1145_p1;
wire   [63:0] zext_ln114_1_fu_1162_p1;
wire   [63:0] zext_ln127_1_fu_1177_p1;
wire   [63:0] zext_ln121_fu_1191_p1;
wire   [63:0] zext_ln134_fu_1206_p1;
wire   [63:0] p_cast35_fu_1262_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] p_cast36_fu_1266_p1;
wire   [63:0] zext_ln140_1_fu_1270_p1;
wire   [63:0] zext_ln147_fu_1275_p1;
wire   [63:0] p_cast37_fu_1326_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] p_cast38_fu_1330_p1;
reg   [7:0] v7_fu_96;
wire   [7:0] add_ln33_fu_813_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v6_fu_100;
reg   [7:0] ap_sig_allocacmp_v6_load;
reg   [11:0] indvar_flatten_fu_104;
wire   [11:0] add_ln32_1_fu_663_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v228_ce1_local;
reg    v228_ce0_local;
reg    v229_0_ce1_local;
reg   [14:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [14:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln55_1_fu_1639_p1;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln61_1_fu_1644_p1;
wire    ap_block_pp0_stage9;
wire   [31:0] bitcast_ln81_1_fu_1669_p1;
wire   [31:0] bitcast_ln87_1_fu_1674_p1;
wire   [31:0] bitcast_ln68_fu_1689_p1;
wire   [31:0] bitcast_ln74_fu_1694_p1;
wire   [31:0] bitcast_ln107_1_fu_1719_p1;
wire   [31:0] bitcast_ln113_1_fu_1724_p1;
wire   [31:0] bitcast_ln94_fu_1739_p1;
wire   [31:0] bitcast_ln100_fu_1744_p1;
wire   [31:0] bitcast_ln133_1_fu_1759_p1;
wire   [31:0] bitcast_ln139_1_fu_1764_p1;
wire   [31:0] bitcast_ln120_fu_1789_p1;
wire   [31:0] bitcast_ln126_fu_1794_p1;
wire   [31:0] bitcast_ln146_fu_1799_p1;
wire    ap_block_pp0_stage8;
wire   [31:0] bitcast_ln152_fu_1804_p1;
reg    v229_1_ce1_local;
reg   [14:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [14:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln55_fu_1629_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln61_fu_1634_p1;
wire   [31:0] bitcast_ln68_1_fu_1649_p1;
wire   [31:0] bitcast_ln74_1_fu_1654_p1;
wire   [31:0] bitcast_ln81_fu_1659_p1;
wire   [31:0] bitcast_ln87_fu_1664_p1;
wire   [31:0] bitcast_ln94_1_fu_1679_p1;
wire   [31:0] bitcast_ln100_1_fu_1684_p1;
wire   [31:0] bitcast_ln107_fu_1699_p1;
wire   [31:0] bitcast_ln113_fu_1704_p1;
wire   [31:0] bitcast_ln120_1_fu_1729_p1;
wire   [31:0] bitcast_ln126_1_fu_1734_p1;
wire   [31:0] bitcast_ln133_fu_1749_p1;
wire   [31:0] bitcast_ln139_fu_1754_p1;
wire   [31:0] bitcast_ln146_1_fu_1769_p1;
wire   [31:0] bitcast_ln152_1_fu_1773_p1;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg   [31:0] grp_fu_534_p0;
reg   [31:0] grp_fu_534_p1;
reg   [31:0] grp_fu_538_p0;
reg   [31:0] grp_fu_538_p1;
reg   [31:0] grp_fu_542_p0;
reg   [31:0] grp_fu_542_p1;
reg   [31:0] grp_fu_546_p0;
reg   [31:0] grp_fu_546_p1;
reg   [31:0] grp_fu_550_p0;
reg   [31:0] grp_fu_550_p1;
reg   [31:0] grp_fu_554_p0;
reg   [31:0] grp_fu_554_p1;
reg   [31:0] grp_fu_558_p0;
reg   [31:0] grp_fu_558_p1;
reg   [31:0] grp_fu_562_p0;
reg   [31:0] grp_fu_562_p1;
reg   [31:0] grp_fu_566_p0;
reg   [31:0] grp_fu_566_p1;
reg   [31:0] grp_fu_570_p0;
reg   [31:0] grp_fu_570_p1;
wire   [7:0] add_ln32_fu_675_p2;
wire   [6:0] mul_ln34_fu_732_p0;
wire   [8:0] mul_ln34_fu_732_p1;
wire   [7:0] empty_41_fu_738_p2;
wire   [6:0] tmp_fu_747_p4;
wire   [6:0] mul_ln49_fu_761_p0;
wire   [8:0] mul_ln49_fu_761_p1;
wire   [15:0] zext_ln38_1_fu_767_p1;
wire   [15:0] add_ln38_fu_771_p2;
wire   [6:0] tmp_s_fu_781_p4;
wire   [15:0] zext_ln45_1_fu_799_p1;
wire   [15:0] add_ln45_fu_803_p2;
wire   [6:0] empty_47_fu_824_p2;
wire   [6:0] mul_ln62_fu_833_p0;
wire   [8:0] mul_ln62_fu_833_p1;
wire   [7:0] empty_48_fu_839_p2;
wire   [6:0] tmp_7_fu_848_p4;
wire   [6:0] mul_ln75_fu_862_p0;
wire   [8:0] mul_ln75_fu_862_p1;
wire   [14:0] add_ln34_fu_871_p2;
wire   [14:0] add_ln49_fu_882_p2;
wire   [14:0] add_ln42_fu_896_p2;
wire   [14:0] add_ln56_fu_907_p2;
wire   [15:0] grp_fu_1809_p3;
wire   [6:0] empty_54_fu_922_p2;
wire   [6:0] mul_ln88_fu_931_p0;
wire   [8:0] mul_ln88_fu_931_p1;
wire   [7:0] empty_55_fu_937_p2;
wire   [6:0] tmp_8_fu_946_p4;
wire   [6:0] mul_ln101_fu_960_p0;
wire   [8:0] mul_ln101_fu_960_p1;
wire   [14:0] add_ln62_fu_966_p2;
wire   [14:0] add_ln75_fu_976_p2;
wire   [14:0] add_ln69_fu_993_p2;
wire   [14:0] add_ln82_fu_1003_p2;
wire   [15:0] grp_fu_1817_p3;
wire   [15:0] grp_fu_1825_p4;
wire   [6:0] empty_61_fu_1028_p2;
wire   [6:0] mul_ln114_fu_1037_p0;
wire   [8:0] mul_ln114_fu_1037_p1;
wire   [7:0] empty_62_fu_1043_p2;
wire   [6:0] tmp_9_fu_1052_p4;
wire   [6:0] mul_ln127_fu_1066_p0;
wire   [8:0] mul_ln127_fu_1066_p1;
wire   [14:0] add_ln88_fu_1077_p2;
wire   [14:0] add_ln101_fu_1087_p2;
wire   [14:0] add_ln95_fu_1101_p2;
wire   [14:0] add_ln108_fu_1111_p2;
wire   [15:0] grp_fu_1834_p3;
wire   [15:0] grp_fu_1842_p4;
wire   [6:0] mul_ln140_fu_1152_p0;
wire   [8:0] mul_ln140_fu_1152_p1;
wire   [14:0] add_ln114_fu_1158_p2;
wire   [14:0] mul_ln140_fu_1152_p2;
wire   [14:0] add_ln127_fu_1173_p2;
wire   [14:0] add_ln121_fu_1187_p2;
wire   [14:0] add_ln134_fu_1202_p2;
wire   [15:0] grp_fu_1851_p3;
wire   [15:0] grp_fu_1859_p4;
wire   [15:0] grp_fu_1868_p3;
wire   [15:0] grp_fu_1876_p4;
wire   [7:0] grp_fu_1809_p0;
wire   [7:0] grp_fu_1809_p1;
wire   [7:0] grp_fu_1809_p2;
wire   [7:0] grp_fu_1817_p0;
wire   [7:0] grp_fu_1817_p1;
wire   [7:0] grp_fu_1817_p2;
wire   [1:0] grp_fu_1825_p1;
wire   [7:0] grp_fu_1825_p2;
wire   [7:0] grp_fu_1825_p3;
wire   [7:0] grp_fu_1834_p0;
wire   [7:0] grp_fu_1834_p1;
wire   [7:0] grp_fu_1834_p2;
wire   [2:0] grp_fu_1842_p1;
wire   [7:0] grp_fu_1842_p2;
wire   [7:0] grp_fu_1842_p3;
wire   [7:0] grp_fu_1851_p0;
wire   [7:0] grp_fu_1851_p1;
wire   [7:0] grp_fu_1851_p2;
wire   [2:0] grp_fu_1859_p1;
wire   [7:0] grp_fu_1859_p2;
wire   [7:0] grp_fu_1859_p3;
wire   [7:0] grp_fu_1868_p0;
wire   [7:0] grp_fu_1868_p1;
wire   [7:0] grp_fu_1868_p2;
wire   [3:0] grp_fu_1876_p1;
wire   [7:0] grp_fu_1876_p2;
wire   [7:0] grp_fu_1876_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage8;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire   [15:0] grp_fu_1809_p00;
wire   [15:0] grp_fu_1817_p00;
wire   [15:0] grp_fu_1834_p00;
wire   [15:0] grp_fu_1851_p00;
wire   [15:0] grp_fu_1868_p00;
wire   [14:0] mul_ln101_fu_960_p00;
wire   [14:0] mul_ln114_fu_1037_p00;
wire   [14:0] mul_ln127_fu_1066_p00;
wire   [14:0] mul_ln140_fu_1152_p00;
wire   [14:0] mul_ln34_fu_732_p00;
wire   [14:0] mul_ln49_fu_761_p00;
wire   [14:0] mul_ln62_fu_833_p00;
wire   [14:0] mul_ln75_fu_862_p00;
wire   [14:0] mul_ln88_fu_931_p00;
reg    ap_condition_2030;
reg    ap_condition_2033;
reg    ap_condition_2037;
reg    ap_condition_2040;
reg    ap_condition_2047;
reg    ap_condition_2050;
reg    ap_condition_2056;
reg    ap_condition_2059;
reg    ap_condition_2065;
reg    ap_condition_2068;
reg    ap_condition_2074;
reg    ap_condition_2077;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_fu_96 = 8'd0;
#0 v6_fu_100 = 8'd0;
#0 indvar_flatten_fu_104 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_570_p0),.din1(grp_fu_570_p1),.ce(1'b1),.dout(grp_fu_570_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U72(.din0(mul_ln34_fu_732_p0),.din1(mul_ln34_fu_732_p1),.dout(mul_ln34_fu_732_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U73(.din0(mul_ln49_fu_761_p0),.din1(mul_ln49_fu_761_p1),.dout(mul_ln49_fu_761_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U74(.din0(mul_ln62_fu_833_p0),.din1(mul_ln62_fu_833_p1),.dout(mul_ln62_fu_833_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U75(.din0(mul_ln75_fu_862_p0),.din1(mul_ln75_fu_862_p1),.dout(mul_ln75_fu_862_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U76(.din0(mul_ln88_fu_931_p0),.din1(mul_ln88_fu_931_p1),.dout(mul_ln88_fu_931_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U77(.din0(mul_ln101_fu_960_p0),.din1(mul_ln101_fu_960_p1),.dout(mul_ln101_fu_960_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U78(.din0(mul_ln114_fu_1037_p0),.din1(mul_ln114_fu_1037_p1),.dout(mul_ln114_fu_1037_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U79(.din0(mul_ln127_fu_1066_p0),.din1(mul_ln127_fu_1066_p1),.dout(mul_ln127_fu_1066_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U80(.din0(mul_ln140_fu_1152_p0),.din1(mul_ln140_fu_1152_p1),.dout(mul_ln140_fu_1152_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1809_p0),.din1(grp_fu_1809_p1),.din2(grp_fu_1809_p2),.ce(1'b1),.dout(grp_fu_1809_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1817_p0),.din1(grp_fu_1817_p1),.din2(grp_fu_1817_p2),.ce(1'b1),.dout(grp_fu_1817_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1987),.din1(grp_fu_1825_p1),.din2(grp_fu_1825_p2),.din3(grp_fu_1825_p3),.ce(1'b1),.dout(grp_fu_1825_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1834_p0),.din1(grp_fu_1834_p1),.din2(grp_fu_1834_p2),.ce(1'b1),.dout(grp_fu_1834_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1987),.din1(grp_fu_1842_p1),.din2(grp_fu_1842_p2),.din3(grp_fu_1842_p3),.ce(1'b1),.dout(grp_fu_1842_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1851_p0),.din1(grp_fu_1851_p1),.din2(grp_fu_1851_p2),.ce(1'b1),.dout(grp_fu_1851_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1987),.din1(grp_fu_1859_p1),.din2(grp_fu_1859_p2),.din3(grp_fu_1859_p3),.ce(1'b1),.dout(grp_fu_1859_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1868_p0),.din1(grp_fu_1868_p1),.din2(grp_fu_1868_p2),.ce(1'b1),.dout(grp_fu_1868_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1987),.din1(grp_fu_1876_p1),.din2(grp_fu_1876_p2),.din3(grp_fu_1876_p3),.ce(1'b1),.dout(grp_fu_1876_p4));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage8) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage8) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln32_fu_657_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_104 <= add_ln32_1_fu_663_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_104 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_582 <= v224_q1;
    end else if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_582 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln32_fu_657_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v6_fu_100 <= select_ln32_1_fu_687_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v6_fu_100 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_96 <= 8'd0;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_fu_96 <= add_ln33_fu_813_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln140_reg_2334 <= add_ln140_fu_1168_p2;
        add_ln147_reg_2366 <= add_ln147_fu_1197_p2;
        bitcast_ln41_reg_2906 <= bitcast_ln41_fu_1621_p1;
        bitcast_ln48_reg_2912 <= bitcast_ln48_fu_1625_p1;
        bitcast_ln49_reg_2393 <= bitcast_ln49_fu_1216_p1;
        bitcast_ln56_reg_2399 <= bitcast_ln56_fu_1221_p1;
        bitcast_ln62_reg_2405 <= bitcast_ln62_fu_1226_p1;
        bitcast_ln69_reg_2411 <= bitcast_ln69_fu_1231_p1;
        v12_reg_2354 <= v12_fu_1183_p1;
        v18_reg_2386 <= v18_fu_1212_p1;
        v229_0_addr_15_reg_2339 <= zext_ln127_1_fu_1177_p1;
        v229_0_addr_15_reg_2339_pp0_iter1_reg <= v229_0_addr_15_reg_2339;
        v229_0_addr_17_reg_2371 <= zext_ln134_fu_1206_p1;
        v229_0_addr_17_reg_2371_pp0_iter1_reg <= v229_0_addr_17_reg_2371;
        v229_0_addr_5_reg_2329 <= zext_ln114_1_fu_1162_p1;
        v229_0_addr_5_reg_2329_pp0_iter1_reg <= v229_0_addr_5_reg_2329;
        v229_0_addr_5_reg_2329_pp0_iter2_reg <= v229_0_addr_5_reg_2329_pp0_iter1_reg;
        v229_0_addr_8_reg_2361 <= zext_ln121_fu_1191_p1;
        v229_0_addr_8_reg_2361_pp0_iter1_reg <= v229_0_addr_8_reg_2361;
        v229_0_addr_8_reg_2361_pp0_iter2_reg <= v229_0_addr_8_reg_2361_pp0_iter1_reg;
        v229_1_addr_10_reg_2376 <= zext_ln134_fu_1206_p1;
        v229_1_addr_10_reg_2376_pp0_iter1_reg <= v229_1_addr_10_reg_2376;
        v229_1_addr_13_reg_2349 <= zext_ln114_1_fu_1162_p1;
        v229_1_addr_13_reg_2349_pp0_iter1_reg <= v229_1_addr_13_reg_2349;
        v229_1_addr_16_reg_2381 <= zext_ln121_fu_1191_p1;
        v229_1_addr_16_reg_2381_pp0_iter1_reg <= v229_1_addr_16_reg_2381;
        v229_1_addr_7_reg_2344 <= zext_ln127_1_fu_1177_p1;
        v229_1_addr_7_reg_2344_pp0_iter1_reg <= v229_1_addr_7_reg_2344;
        v32_reg_2417 <= v32_fu_1236_p1;
        v38_reg_2423 <= v38_fu_1241_p1;
        v43_reg_2429 <= v43_fu_1246_p1;
        v49_reg_2435 <= v49_fu_1251_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bitcast_ln101_reg_2556 <= bitcast_ln101_fu_1346_p1;
        bitcast_ln108_reg_2562 <= bitcast_ln108_fu_1351_p1;
        bitcast_ln114_reg_2568 <= bitcast_ln114_fu_1356_p1;
        bitcast_ln121_reg_2574 <= bitcast_ln121_fu_1361_p1;
        v10_reg_2546 <= v10_fu_1334_p3;
        v17_reg_2551 <= v17_fu_1340_p3;
        v23_reg_2580 <= v23_fu_1366_p3;
        v29_reg_2585 <= v29_fu_1372_p3;
        v76_reg_2590 <= v76_fu_1378_p1;
        v82_reg_2596 <= v82_fu_1383_p1;
        v87_reg_2602 <= v87_fu_1388_p1;
        v93_reg_2608 <= v93_fu_1393_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bitcast_ln127_reg_2656 <= bitcast_ln127_fu_1434_p1;
        bitcast_ln134_reg_2662 <= bitcast_ln134_fu_1439_p1;
        select_ln51_reg_2636 <= select_ln51_fu_1410_p3;
        select_ln58_reg_2641 <= select_ln58_fu_1416_p3;
        select_ln64_reg_2646 <= select_ln64_fu_1422_p3;
        select_ln71_reg_2651 <= select_ln71_fu_1428_p3;
        v104_reg_2694 <= v104_fu_1473_p1;
        v34_reg_2668 <= v34_fu_1444_p3;
        v40_reg_2673 <= v40_fu_1450_p3;
        v45_reg_2678 <= v45_fu_1456_p3;
        v51_reg_2683 <= v51_fu_1462_p3;
        v98_reg_2688 <= v98_fu_1468_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln140_reg_2918 <= bitcast_ln140_fu_1709_p1;
        bitcast_ln147_reg_2924 <= bitcast_ln147_fu_1714_p1;
        icmp_ln32_reg_1973 <= icmp_ln32_fu_657_p2;
        icmp_ln32_reg_1973_pp0_iter1_reg <= icmp_ln32_reg_1973;
        icmp_ln32_reg_1973_pp0_iter2_reg <= icmp_ln32_reg_1973_pp0_iter1_reg;
        icmp_ln33_reg_1982 <= icmp_ln33_fu_681_p2;
        lshr_ln_reg_2010 <= {{select_ln32_1_fu_687_p3[7:1]}};
        select_ln103_reg_2784 <= select_ln103_fu_1549_p3;
        select_ln110_reg_2789 <= select_ln110_fu_1555_p3;
        select_ln116_reg_2794 <= select_ln116_fu_1561_p3;
        select_ln123_reg_2799 <= select_ln123_fu_1567_p3;
        select_ln32_1_reg_1987 <= select_ln32_1_fu_687_p3;
        trunc_ln32_reg_2004 <= trunc_ln32_fu_699_p1;
        trunc_ln32_reg_2004_pp0_iter1_reg <= trunc_ln32_reg_2004;
        trunc_ln32_reg_2004_pp0_iter2_reg <= trunc_ln32_reg_2004_pp0_iter1_reg;
        trunc_ln32_reg_2004_pp0_iter3_reg <= trunc_ln32_reg_2004_pp0_iter2_reg;
        v78_reg_2804 <= v78_fu_1573_p3;
        v7_load_reg_1977 <= ap_sig_allocacmp_v7_load;
        v84_reg_2809 <= v84_fu_1579_p3;
        v89_reg_2814 <= v89_fu_1585_p3;
        v95_reg_2819 <= v95_fu_1591_p3;
        zext_ln31_cast_reg_1960[7 : 0] <= zext_ln31_cast_fu_635_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bitcast_ln75_reg_2477 <= bitcast_ln75_fu_1280_p1;
        bitcast_ln82_reg_2483 <= bitcast_ln82_fu_1285_p1;
        bitcast_ln88_reg_2489 <= bitcast_ln88_fu_1290_p1;
        bitcast_ln95_reg_2495 <= bitcast_ln95_fu_1295_p1;
        v229_0_addr_10_reg_2467 <= zext_ln147_fu_1275_p1;
        v229_0_addr_10_reg_2467_pp0_iter1_reg <= v229_0_addr_10_reg_2467;
        v229_0_addr_10_reg_2467_pp0_iter2_reg <= v229_0_addr_10_reg_2467_pp0_iter1_reg;
        v229_0_addr_10_reg_2467_pp0_iter3_reg <= v229_0_addr_10_reg_2467_pp0_iter2_reg;
        v229_0_addr_7_reg_2457 <= zext_ln140_1_fu_1270_p1;
        v229_0_addr_7_reg_2457_pp0_iter1_reg <= v229_0_addr_7_reg_2457;
        v229_0_addr_7_reg_2457_pp0_iter2_reg <= v229_0_addr_7_reg_2457_pp0_iter1_reg;
        v229_0_addr_7_reg_2457_pp0_iter3_reg <= v229_0_addr_7_reg_2457_pp0_iter2_reg;
        v229_1_addr_15_reg_2462 <= zext_ln140_1_fu_1270_p1;
        v229_1_addr_15_reg_2462_pp0_iter1_reg <= v229_1_addr_15_reg_2462;
        v229_1_addr_17_reg_2472 <= zext_ln147_fu_1275_p1;
        v229_1_addr_17_reg_2472_pp0_iter1_reg <= v229_1_addr_17_reg_2472;
        v54_reg_2501 <= v54_fu_1300_p1;
        v60_reg_2507 <= v60_fu_1305_p1;
        v65_reg_2513 <= v65_fu_1310_p1;
        v71_reg_2519 <= v71_fu_1315_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        empty_68_reg_2244 <= empty_68_fu_1072_p2;
        mul_ln114_reg_2227 <= mul_ln114_fu_1037_p2;
        mul_ln127_reg_2238 <= mul_ln127_fu_1066_p2;
        v15_reg_2295 <= v15_fu_1121_p1;
        v21_reg_2301 <= v21_fu_1125_p1;
        v229_0_addr_13_reg_2254 <= zext_ln101_1_fu_1091_p1;
        v229_0_addr_13_reg_2254_pp0_iter1_reg <= v229_0_addr_13_reg_2254;
        v229_0_addr_16_reg_2280 <= zext_ln108_fu_1115_p1;
        v229_0_addr_16_reg_2280_pp0_iter1_reg <= v229_0_addr_16_reg_2280;
        v229_0_addr_3_reg_2249 <= zext_ln88_1_fu_1081_p1;
        v229_0_addr_3_reg_2249_pp0_iter1_reg <= v229_0_addr_3_reg_2249;
        v229_0_addr_6_reg_2275 <= zext_ln95_fu_1105_p1;
        v229_0_addr_6_reg_2275_pp0_iter1_reg <= v229_0_addr_6_reg_2275;
        v229_1_addr_11_reg_2264 <= zext_ln88_1_fu_1081_p1;
        v229_1_addr_11_reg_2264_pp0_iter1_reg <= v229_1_addr_11_reg_2264;
        v229_1_addr_14_reg_2290 <= zext_ln95_fu_1105_p1;
        v229_1_addr_14_reg_2290_pp0_iter1_reg <= v229_1_addr_14_reg_2290;
        v229_1_addr_5_reg_2259 <= zext_ln101_1_fu_1091_p1;
        v229_1_addr_5_reg_2259_pp0_iter1_reg <= v229_1_addr_5_reg_2259;
        v229_1_addr_8_reg_2285 <= zext_ln108_fu_1115_p1;
        v229_1_addr_8_reg_2285_pp0_iter1_reg <= v229_1_addr_8_reg_2285;
        v27_reg_2307 <= v27_fu_1130_p1;
        v8_reg_2269 <= v8_fu_1097_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln101_reg_2161 <= mul_ln101_fu_960_p2;
        mul_ln88_reg_2150 <= mul_ln88_fu_931_p2;
        select_ln142_reg_2940 <= select_ln142_fu_1777_p3;
        select_ln149_reg_2945 <= select_ln149_fu_1783_p3;
        select_ln34_reg_2187 <= select_ln34_fu_986_p3;
        select_ln42_reg_2212 <= select_ln42_fu_1013_p3;
        v102_reg_2894_pp0_iter2_reg <= v102_reg_2894;
        v107_reg_2900_pp0_iter2_reg <= v107_reg_2900;
        v229_0_addr_11_reg_2172 <= zext_ln75_1_fu_980_p1;
        v229_0_addr_11_reg_2172_pp0_iter1_reg <= v229_0_addr_11_reg_2172;
        v229_0_addr_14_reg_2197 <= zext_ln82_fu_1007_p1;
        v229_0_addr_14_reg_2197_pp0_iter1_reg <= v229_0_addr_14_reg_2197;
        v229_0_addr_1_reg_2167 <= zext_ln62_1_fu_970_p1;
        v229_0_addr_1_reg_2167_pp0_iter1_reg <= v229_0_addr_1_reg_2167;
        v229_0_addr_4_reg_2192 <= zext_ln69_fu_997_p1;
        v229_0_addr_4_reg_2192_pp0_iter1_reg <= v229_0_addr_4_reg_2192;
        v229_1_addr_12_reg_2207 <= zext_ln69_fu_997_p1;
        v229_1_addr_12_reg_2207_pp0_iter1_reg <= v229_1_addr_12_reg_2207;
        v229_1_addr_3_reg_2177 <= zext_ln75_1_fu_980_p1;
        v229_1_addr_3_reg_2177_pp0_iter1_reg <= v229_1_addr_3_reg_2177;
        v229_1_addr_6_reg_2202 <= zext_ln82_fu_1007_p1;
        v229_1_addr_6_reg_2202_pp0_iter1_reg <= v229_1_addr_6_reg_2202;
        v229_1_addr_9_reg_2182 <= zext_ln62_1_fu_970_p1;
        v229_1_addr_9_reg_2182_pp0_iter1_reg <= v229_1_addr_9_reg_2182;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln34_reg_2024 <= mul_ln34_fu_732_p2;
        mul_ln49_reg_2035 <= mul_ln49_fu_761_p2;
        or_ln_reg_2046[7 : 1] <= or_ln_fu_791_p3[7 : 1];
        select_ln129_reg_2844 <= select_ln129_fu_1597_p3;
        select_ln136_reg_2849 <= select_ln136_fu_1603_p3;
        select_ln32_reg_2019 <= select_ln32_fu_723_p3;
        v100_reg_2854 <= v100_fu_1609_p3;
        v106_reg_2859 <= v106_fu_1615_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln62_reg_2056 <= mul_ln62_fu_833_p2;
        mul_ln75_reg_2067 <= mul_ln75_fu_862_p2;
        v229_0_addr_12_reg_2125 <= zext_ln56_fu_912_p1;
        v229_0_addr_12_reg_2125_pp0_iter1_reg <= v229_0_addr_12_reg_2125;
        v229_0_addr_2_reg_2120 <= zext_ln42_fu_901_p1;
        v229_0_addr_2_reg_2120_pp0_iter1_reg <= v229_0_addr_2_reg_2120;
        v229_0_addr_9_reg_2089 <= zext_ln49_1_fu_887_p1;
        v229_0_addr_9_reg_2089_pp0_iter1_reg <= v229_0_addr_9_reg_2089;
        v229_0_addr_reg_2084 <= zext_ln34_1_fu_876_p1;
        v229_0_addr_reg_2084_pp0_iter1_reg <= v229_0_addr_reg_2084;
        v229_1_addr_1_reg_2099 <= zext_ln49_1_fu_887_p1;
        v229_1_addr_1_reg_2099_pp0_iter1_reg <= v229_1_addr_1_reg_2099;
        v229_1_addr_2_reg_2130 <= zext_ln42_fu_901_p1;
        v229_1_addr_2_reg_2130_pp0_iter1_reg <= v229_1_addr_2_reg_2130;
        v229_1_addr_4_reg_2135 <= zext_ln56_fu_912_p1;
        v229_1_addr_4_reg_2135_pp0_iter1_reg <= v229_1_addr_4_reg_2135;
        v229_1_addr_reg_2094 <= zext_ln34_1_fu_876_p1;
        v229_1_addr_reg_2094_pp0_iter1_reg <= v229_1_addr_reg_2094;
        zext_ln38_reg_2073[7 : 0] <= zext_ln38_fu_868_p1[7 : 0];
        zext_ln45_reg_2109[7 : 1] <= zext_ln45_fu_893_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973== 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        reg_574 <= v229_0_q1;
        reg_578 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
if ((((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1))| ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        reg_587 <= v229_1_q1;
        reg_591 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_595 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_599 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        reg_603 <= grp_fu_176_p_dout0;
        reg_607 <= grp_fu_180_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        reg_611 <= grp_fu_176_p_dout0;
        reg_615 <= grp_fu_180_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        reg_619 <= grp_fu_184_p_dout0;
        reg_623 <= grp_fu_188_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        reg_627 <= grp_fu_184_p_dout0;
        reg_631 <= grp_fu_188_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        select_ln77_reg_2728 <= select_ln77_fu_1495_p3;
        select_ln84_reg_2733 <= select_ln84_fu_1501_p3;
        select_ln90_reg_2738 <= select_ln90_fu_1507_p3;
        select_ln97_reg_2743 <= select_ln97_fu_1513_p3;
        v56_reg_2748 <= v56_fu_1519_p3;
        v62_reg_2753 <= v62_fu_1525_p3;
        v67_reg_2758 <= v67_fu_1531_p3;
        v73_reg_2763 <= v73_fu_1537_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v102_reg_2894 <= grp_fu_192_p_dout0;
        v107_reg_2900 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_2930 <= grp_fu_184_p_dout0;
        v108_reg_2935 <= grp_fu_188_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v13_reg_2626 <= grp_fu_192_p_dout0;
        v19_reg_2631 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v224_load_6_reg_2531 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v228_load_1_reg_2140 <= v228_q0;
        v228_load_reg_2104 <= v228_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v25_reg_2718 <= grp_fu_192_p_dout0;
        v30_reg_2723 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_reg_2774 <= grp_fu_192_p_dout0;
        v41_reg_2779 <= grp_fu_196_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_2824 <= grp_fu_192_p_dout0;
        v52_reg_2829 <= grp_fu_196_p_dout0;
        v58_reg_2834 <= grp_fu_200_p_dout0;
        v63_reg_2839 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v69_reg_2864 <= grp_fu_192_p_dout0;
        v74_reg_2869 <= grp_fu_196_p_dout0;
        v80_reg_2874 <= grp_fu_200_p_dout0;
        v85_reg_2879 <= grp_fu_204_p_dout0;
        v91_reg_2884 <= grp_fu_208_p_dout0;
        v96_reg_2889 <= grp_fu_570_p2;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_1973 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln32_reg_1973_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter2_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_104;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v6_load = v6_fu_100;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_load = v7_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_534_p0 = select_ln142_reg_2940;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_534_p0 = v89_reg_2814;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_534_p0 = select_ln129_reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_534_p0 = v67_reg_2758;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_534_p0 = select_ln103_reg_2784;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_534_p0 = v45_reg_2678;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_534_p0 = select_ln77_reg_2728;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_534_p0 = v34_reg_2668;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_534_p0 = select_ln64_reg_2646;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_534_p0 = v23_reg_2580;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_534_p0 = select_ln51_reg_2636;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_534_p0 = v10_reg_2546;
    end else begin
        grp_fu_534_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_534_p1 = v102_reg_2894_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_534_p1 = v91_reg_2884;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_534_p1 = v69_reg_2864;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_534_p1 = v47_reg_2824;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_534_p1 = v36_reg_2774;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        grp_fu_534_p1 = v25_reg_2718;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_534_p1 = v13_reg_2626;
    end else begin
        grp_fu_534_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_538_p0 = select_ln149_reg_2945;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_538_p0 = v95_reg_2819;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_538_p0 = select_ln136_reg_2849;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_538_p0 = v73_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_538_p0 = select_ln110_reg_2789;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_538_p0 = v51_reg_2683;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_538_p0 = select_ln84_reg_2733;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        grp_fu_538_p0 = v40_reg_2673;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        grp_fu_538_p0 = select_ln71_reg_2651;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_538_p0 = v29_reg_2585;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_538_p0 = select_ln58_reg_2641;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_538_p0 = v17_reg_2551;
    end else begin
        grp_fu_538_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_538_p1 = v107_reg_2900_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_538_p1 = v96_reg_2889;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_538_p1 = v74_reg_2869;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_538_p1 = v52_reg_2829;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_538_p1 = v41_reg_2779;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        grp_fu_538_p1 = v30_reg_2723;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_538_p1 = v19_reg_2631;
    end else begin
        grp_fu_538_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_542_p0 = v100_reg_2854;
        end else if ((1'b1 == ap_condition_2040)) begin
            grp_fu_542_p0 = v78_reg_2804;
        end else if ((1'b1 == ap_condition_2037)) begin
            grp_fu_542_p0 = select_ln116_reg_2794;
        end else if ((1'b1 == ap_condition_2033)) begin
            grp_fu_542_p0 = v56_reg_2748;
        end else if ((1'b1 == ap_condition_2030)) begin
            grp_fu_542_p0 = select_ln90_reg_2738;
        end else begin
            grp_fu_542_p0 = 'bx;
        end
    end else begin
        grp_fu_542_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_542_p1 = v102_reg_2894;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_542_p1 = v80_reg_2874;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_542_p1 = v58_reg_2834;
    end else begin
        grp_fu_542_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_546_p0 = v106_reg_2859;
        end else if ((1'b1 == ap_condition_2040)) begin
            grp_fu_546_p0 = v84_reg_2809;
        end else if ((1'b1 == ap_condition_2037)) begin
            grp_fu_546_p0 = select_ln123_reg_2799;
        end else if ((1'b1 == ap_condition_2033)) begin
            grp_fu_546_p0 = v62_reg_2753;
        end else if ((1'b1 == ap_condition_2030)) begin
            grp_fu_546_p0 = select_ln97_reg_2743;
        end else begin
            grp_fu_546_p0 = 'bx;
        end
    end else begin
        grp_fu_546_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_546_p1 = v107_reg_2900;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_546_p1 = v85_reg_2879;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_546_p1 = v63_reg_2839;
    end else begin
        grp_fu_546_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_550_p0 = v101_fu_1543_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_550_p0 = v68_fu_1478_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_550_p0 = v46_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_550_p0 = v35_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_550_p0 = v24_fu_1256_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_550_p0 = v11_fu_1135_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_550_p0 = v8_fu_1097_p1;
    end else begin
        grp_fu_550_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_550_p1 = v12_reg_2354;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_550_p1 = v12_fu_1183_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_550_p1 = v4;
    end else begin
        grp_fu_550_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_554_p0 = v101_fu_1543_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_554_p0 = v68_fu_1478_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_554_p0 = v46_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_554_p0 = v35_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_554_p0 = v24_fu_1256_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_554_p0 = v11_fu_1135_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_554_p0 = v15_fu_1121_p1;
    end else begin
        grp_fu_554_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_554_p1 = v18_reg_2386;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_554_p1 = v18_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_554_p1 = v4;
    end else begin
        grp_fu_554_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_558_p0 = bitcast_ln140_fu_1709_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_558_p0 = v79_fu_1484_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_558_p0 = v57_fu_1404_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_558_p0 = v76_fu_1378_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_558_p0 = bitcast_ln101_fu_1346_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_558_p0 = v54_fu_1300_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_558_p0 = bitcast_ln75_fu_1280_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_558_p0 = v32_fu_1236_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_558_p0 = bitcast_ln49_fu_1216_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_558_p0 = v21_fu_1125_p1;
    end else begin
        grp_fu_558_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_558_p1 = v12_reg_2354;
end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0)& (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        grp_fu_558_p1 = v4;
    end else begin
        grp_fu_558_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p0 = bitcast_ln147_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_562_p0 = v79_fu_1484_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_562_p0 = v57_fu_1404_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_562_p0 = v82_fu_1383_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_562_p0 = bitcast_ln108_fu_1351_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_562_p0 = v60_fu_1305_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_562_p0 = bitcast_ln82_fu_1285_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1))) begin
        grp_fu_562_p0 = v38_fu_1241_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0))) begin
        grp_fu_562_p0 = bitcast_ln56_fu_1221_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_562_p0 = v27_fu_1130_p1;
    end else begin
        grp_fu_562_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_562_p1 = v18_reg_2386;
end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0)& (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        grp_fu_562_p1 = v4;
    end else begin
        grp_fu_562_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_566_p0 = v90_fu_1489_p1;
        end else if ((1'b1 == ap_condition_2077)) begin
            grp_fu_566_p0 = v98_fu_1468_p1;
        end else if ((1'b1 == ap_condition_2074)) begin
            grp_fu_566_p0 = bitcast_ln127_fu_1434_p1;
        end else if ((1'b1 == ap_condition_2068)) begin
            grp_fu_566_p0 = v87_fu_1388_p1;
        end else if ((1'b1 == ap_condition_2065)) begin
            grp_fu_566_p0 = bitcast_ln114_fu_1356_p1;
        end else if ((1'b1 == ap_condition_2059)) begin
            grp_fu_566_p0 = v65_fu_1310_p1;
        end else if ((1'b1 == ap_condition_2056)) begin
            grp_fu_566_p0 = bitcast_ln88_fu_1290_p1;
        end else if ((1'b1 == ap_condition_2050)) begin
            grp_fu_566_p0 = v43_fu_1246_p1;
        end else if ((1'b1 == ap_condition_2047)) begin
            grp_fu_566_p0 = bitcast_ln62_fu_1226_p1;
        end else begin
            grp_fu_566_p0 = 'bx;
        end
    end else begin
        grp_fu_566_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_566_p1 = v12_reg_2354;
end else if ((((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0== ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        grp_fu_566_p1 = v4;
    end else begin
        grp_fu_566_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_570_p0 = v90_fu_1489_p1;
        end else if ((1'b1 == ap_condition_2077)) begin
            grp_fu_570_p0 = v104_fu_1473_p1;
        end else if ((1'b1 == ap_condition_2074)) begin
            grp_fu_570_p0 = bitcast_ln134_fu_1439_p1;
        end else if ((1'b1 == ap_condition_2068)) begin
            grp_fu_570_p0 = v93_fu_1393_p1;
        end else if ((1'b1 == ap_condition_2065)) begin
            grp_fu_570_p0 = bitcast_ln121_fu_1361_p1;
        end else if ((1'b1 == ap_condition_2059)) begin
            grp_fu_570_p0 = v71_fu_1315_p1;
        end else if ((1'b1 == ap_condition_2056)) begin
            grp_fu_570_p0 = bitcast_ln95_fu_1295_p1;
        end else if ((1'b1 == ap_condition_2050)) begin
            grp_fu_570_p0 = v49_fu_1251_p1;
        end else if ((1'b1 == ap_condition_2047)) begin
            grp_fu_570_p0 = bitcast_ln69_fu_1231_p1;
        end else begin
            grp_fu_570_p0 = 'bx;
        end
    end else begin
        grp_fu_570_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_570_p1 = v18_reg_2386;
end else if ((((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0== ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        grp_fu_570_p1 = v4;
    end else begin
        grp_fu_570_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v224_address0_local = p_cast37_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v224_address0_local = p_cast35_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v224_address0_local = p_cast33_fu_1141_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_address0_local = p_cast32_fu_1024_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v224_address0_local = p_cast31_fu_918_p1;
        end else begin
            v224_address0_local = 'bx;
        end
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v224_address1_local = p_cast38_fu_1330_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v224_address1_local = p_cast36_fu_1266_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v224_address1_local = p_cast34_fu_1145_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_address1_local = p_cast_fu_1020_p1;
        end else begin
            v224_address1_local = 'bx;
        end
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_ce0_local = 1'b1;
    end else begin
        v228_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_ce1_local = 1'b1;
    end else begin
        v228_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address0_local = v229_0_addr_10_reg_2467_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_address0_local = v229_0_addr_8_reg_2361_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_17_reg_2371_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_6_reg_2275_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_address0_local = v229_0_addr_16_reg_2280_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_address0_local = v229_0_addr_4_reg_2192_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_address0_local = v229_0_addr_14_reg_2197_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_address0_local = v229_0_addr_2_reg_2120_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_address0_local = v229_0_addr_12_reg_2125_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_address0_local = v229_0_addr_10_reg_2467_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address0_local = zext_ln134_fu_1206_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address0_local = zext_ln121_fu_1191_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address0_local = zext_ln108_fu_1115_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address0_local = zext_ln95_fu_1105_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address0_local = zext_ln82_fu_1007_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address0_local = zext_ln69_fu_997_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address0_local = zext_ln56_fu_912_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address0_local = zext_ln42_fu_901_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address1_local = v229_0_addr_7_reg_2457_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_address1_local = v229_0_addr_5_reg_2329_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = v229_0_addr_15_reg_2339_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = v229_0_addr_3_reg_2249_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_address1_local = v229_0_addr_13_reg_2254_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_address1_local = v229_0_addr_1_reg_2167_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_address1_local = v229_0_addr_11_reg_2172_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_address1_local = v229_0_addr_reg_2084_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_address1_local = v229_0_addr_9_reg_2089_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_address1_local = v229_0_addr_7_reg_2457_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address1_local = zext_ln127_1_fu_1177_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address1_local = zext_ln114_1_fu_1162_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address1_local = zext_ln101_1_fu_1091_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address1_local = zext_ln88_1_fu_1081_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address1_local = zext_ln75_1_fu_980_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address1_local = zext_ln62_1_fu_970_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_0_address1_local = zext_ln49_1_fu_887_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_0_address1_local = zext_ln34_1_fu_876_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_d0_local = bitcast_ln152_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_d0_local = bitcast_ln126_fu_1794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d0_local = bitcast_ln139_1_fu_1764_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d0_local = bitcast_ln100_fu_1744_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_d0_local = bitcast_ln113_1_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_d0_local = bitcast_ln74_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_d0_local = bitcast_ln87_1_fu_1674_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_d0_local = bitcast_ln48_reg_2912;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_d0_local = bitcast_ln61_1_fu_1644_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_d1_local = bitcast_ln146_fu_1799_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_d1_local = bitcast_ln120_fu_1789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d1_local = bitcast_ln133_1_fu_1759_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d1_local = bitcast_ln94_fu_1739_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_d1_local = bitcast_ln107_1_fu_1719_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_d1_local = bitcast_ln68_fu_1689_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_d1_local = bitcast_ln81_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_0_d1_local = bitcast_ln41_reg_2906;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_0_d1_local = bitcast_ln55_1_fu_1639_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_17_reg_2472_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_10_reg_2376_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_address0_local = v229_1_addr_16_reg_2381_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_address0_local = v229_1_addr_8_reg_2285_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_address0_local = v229_1_addr_14_reg_2290_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_address0_local = v229_1_addr_6_reg_2202_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address0_local = v229_1_addr_12_reg_2207_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_address0_local = v229_1_addr_2_reg_2130_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_address0_local = v229_1_addr_4_reg_2135_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address0_local = zext_ln147_fu_1275_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address0_local = v229_1_addr_10_reg_2376;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address0_local = zext_ln121_fu_1191_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address0_local = v229_1_addr_8_reg_2285;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address0_local = zext_ln95_fu_1105_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address0_local = v229_1_addr_6_reg_2202;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address0_local = zext_ln69_fu_997_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address0_local = v229_1_addr_4_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = zext_ln42_fu_901_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_15_reg_2462_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_7_reg_2344_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_address1_local = v229_1_addr_13_reg_2349_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_address1_local = v229_1_addr_5_reg_2259_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_address1_local = v229_1_addr_11_reg_2264_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_address1_local = v229_1_addr_3_reg_2177_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address1_local = v229_1_addr_9_reg_2182_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_address1_local = v229_1_addr_reg_2094_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_address1_local = v229_1_addr_1_reg_2099_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address1_local = zext_ln140_1_fu_1270_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address1_local = v229_1_addr_7_reg_2344;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address1_local = zext_ln114_1_fu_1162_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address1_local = v229_1_addr_5_reg_2259;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address1_local = zext_ln88_1_fu_1081_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address1_local = v229_1_addr_3_reg_2177;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1))) begin
        v229_1_address1_local = zext_ln62_1_fu_970_p1;
    end else if (((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0))) begin
        v229_1_address1_local = v229_1_addr_1_reg_2099;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = zext_ln34_1_fu_876_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg== 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg== 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_2004 == 1'd1)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd0)) | ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004 == 1'd1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d0_local = bitcast_ln152_1_fu_1773_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d0_local = bitcast_ln139_fu_1754_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_d0_local = bitcast_ln126_1_fu_1734_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_d0_local = bitcast_ln113_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_d0_local = bitcast_ln100_1_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_d0_local = bitcast_ln87_fu_1664_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_d0_local = bitcast_ln74_1_fu_1654_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_d0_local = bitcast_ln48_reg_2912;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_d0_local = bitcast_ln61_fu_1634_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d1_local = bitcast_ln146_1_fu_1769_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d1_local = bitcast_ln133_fu_1749_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_d1_local = bitcast_ln120_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_d1_local = bitcast_ln107_fu_1699_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_d1_local = bitcast_ln94_1_fu_1679_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_d1_local = bitcast_ln81_fu_1659_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_d1_local = bitcast_ln68_1_fu_1649_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1))) begin
        v229_1_d1_local = bitcast_ln41_reg_2906;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0))) begin
        v229_1_d1_local = bitcast_ln55_fu_1629_p1;
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_2004_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage8) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
assign add_ln101_fu_1087_p2 = (mul_ln101_reg_2161 + zext_ln38_reg_2073);
assign add_ln108_fu_1111_p2 = (mul_ln101_reg_2161 + zext_ln45_reg_2109);
assign add_ln114_fu_1158_p2 = (mul_ln114_reg_2227 + zext_ln38_reg_2073);
assign add_ln121_fu_1187_p2 = (mul_ln114_reg_2227 + zext_ln45_reg_2109);
assign add_ln127_fu_1173_p2 = (mul_ln127_reg_2238 + zext_ln38_reg_2073);
assign add_ln134_fu_1202_p2 = (mul_ln127_reg_2238 + zext_ln45_reg_2109);
assign add_ln140_fu_1168_p2 = (mul_ln140_fu_1152_p2 + zext_ln38_reg_2073);
assign add_ln147_fu_1197_p2 = (mul_ln140_fu_1152_p2 + zext_ln45_reg_2109);
assign add_ln32_1_fu_663_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln32_fu_675_p2 = (ap_sig_allocacmp_v6_load + 8'd9);
assign add_ln33_fu_813_p2 = (select_ln32_fu_723_p3 + 8'd2);
assign add_ln34_fu_871_p2 = (mul_ln34_reg_2024 + zext_ln38_fu_868_p1);
assign add_ln38_fu_771_p2 = (phi_mul + zext_ln38_1_fu_767_p1);
assign add_ln42_fu_896_p2 = (mul_ln34_reg_2024 + zext_ln45_fu_893_p1);
assign add_ln45_fu_803_p2 = (phi_mul + zext_ln45_1_fu_799_p1);
assign add_ln49_fu_882_p2 = (mul_ln49_reg_2035 + zext_ln38_fu_868_p1);
assign add_ln56_fu_907_p2 = (mul_ln49_reg_2035 + zext_ln45_fu_893_p1);
assign add_ln62_fu_966_p2 = (mul_ln62_reg_2056 + zext_ln38_reg_2073);
assign add_ln69_fu_993_p2 = (mul_ln62_reg_2056 + zext_ln45_reg_2109);
assign add_ln75_fu_976_p2 = (mul_ln75_reg_2067 + zext_ln38_reg_2073);
assign add_ln82_fu_1003_p2 = (mul_ln75_reg_2067 + zext_ln45_reg_2109);
assign add_ln88_fu_1077_p2 = (mul_ln88_reg_2150 + zext_ln38_reg_2073);
assign add_ln95_fu_1101_p2 = (mul_ln88_reg_2150 + zext_ln45_reg_2109);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2030 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_2033 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_2037 = ((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_2040 = ((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_2004_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_2047 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd0));
end
always @ (*) begin
    ap_condition_2050 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_2004 == 1'd1));
end
always @ (*) begin
    ap_condition_2056 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd0));
end
always @ (*) begin
    ap_condition_2059 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_2004 == 1'd1));
end
always @ (*) begin
    ap_condition_2065 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd0));
end
always @ (*) begin
    ap_condition_2068 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_2004 == 1'd1));
end
always @ (*) begin
    ap_condition_2074 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004 == 1'd0));
end
always @ (*) begin
    ap_condition_2077 = ((icmp_ln32_reg_1973 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (cmp11_read_reg_1912 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_2004 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_1_fu_1684_p1 = reg_623;
assign bitcast_ln100_fu_1744_p1 = reg_623;
assign bitcast_ln101_fu_1346_p1 = reg_587;
assign bitcast_ln107_1_fu_1719_p1 = reg_611;
assign bitcast_ln107_fu_1699_p1 = reg_611;
assign bitcast_ln108_fu_1351_p1 = reg_591;
assign bitcast_ln113_1_fu_1724_p1 = reg_615;
assign bitcast_ln113_fu_1704_p1 = reg_615;
assign bitcast_ln114_fu_1356_p1 = reg_574;
assign bitcast_ln120_1_fu_1729_p1 = reg_627;
assign bitcast_ln120_fu_1789_p1 = reg_627;
assign bitcast_ln121_fu_1361_p1 = reg_578;
assign bitcast_ln126_1_fu_1734_p1 = reg_631;
assign bitcast_ln126_fu_1794_p1 = reg_631;
assign bitcast_ln127_fu_1434_p1 = reg_587;
assign bitcast_ln133_1_fu_1759_p1 = reg_603;
assign bitcast_ln133_fu_1749_p1 = reg_603;
assign bitcast_ln134_fu_1439_p1 = reg_591;
assign bitcast_ln139_1_fu_1764_p1 = reg_607;
assign bitcast_ln139_fu_1754_p1 = reg_607;
assign bitcast_ln140_fu_1709_p1 = reg_574;
assign bitcast_ln146_1_fu_1769_p1 = v103_reg_2930;
assign bitcast_ln146_fu_1799_p1 = reg_611;
assign bitcast_ln147_fu_1714_p1 = reg_578;
assign bitcast_ln152_1_fu_1773_p1 = v108_reg_2935;
assign bitcast_ln152_fu_1804_p1 = reg_615;
assign bitcast_ln41_fu_1621_p1 = grp_fu_176_p_dout0;
assign bitcast_ln48_fu_1625_p1 = grp_fu_180_p_dout0;
assign bitcast_ln49_fu_1216_p1 = reg_587;
assign bitcast_ln55_1_fu_1639_p1 = reg_603;
assign bitcast_ln55_fu_1629_p1 = reg_603;
assign bitcast_ln56_fu_1221_p1 = reg_591;
assign bitcast_ln61_1_fu_1644_p1 = reg_607;
assign bitcast_ln61_fu_1634_p1 = reg_607;
assign bitcast_ln62_fu_1226_p1 = reg_574;
assign bitcast_ln68_1_fu_1649_p1 = reg_603;
assign bitcast_ln68_fu_1689_p1 = reg_603;
assign bitcast_ln69_fu_1231_p1 = reg_578;
assign bitcast_ln74_1_fu_1654_p1 = reg_607;
assign bitcast_ln74_fu_1694_p1 = reg_607;
assign bitcast_ln75_fu_1280_p1 = reg_587;
assign bitcast_ln81_1_fu_1669_p1 = reg_611;
assign bitcast_ln81_fu_1659_p1 = reg_611;
assign bitcast_ln82_fu_1285_p1 = reg_591;
assign bitcast_ln87_1_fu_1674_p1 = reg_615;
assign bitcast_ln87_fu_1664_p1 = reg_615;
assign bitcast_ln88_fu_1290_p1 = reg_574;
assign bitcast_ln94_1_fu_1679_p1 = reg_619;
assign bitcast_ln94_fu_1739_p1 = reg_619;
assign bitcast_ln95_fu_1295_p1 = reg_578;
assign cmp11_read_reg_1912 = cmp11;
assign empty_41_fu_738_p2 = (select_ln32_1_reg_1987 + 8'd1);
assign empty_47_fu_824_p2 = (lshr_ln_reg_2010 + 7'd1);
assign empty_48_fu_839_p2 = (select_ln32_1_reg_1987 + 8'd3);
assign empty_54_fu_922_p2 = (lshr_ln_reg_2010 + 7'd2);
assign empty_55_fu_937_p2 = (select_ln32_1_reg_1987 + 8'd5);
assign empty_61_fu_1028_p2 = (lshr_ln_reg_2010 + 7'd3);
assign empty_62_fu_1043_p2 = (select_ln32_1_reg_1987 + 8'd7);
assign empty_68_fu_1072_p2 = (lshr_ln_reg_2010 + 7'd4);
assign grp_fu_176_p_ce = 1'b1;
assign grp_fu_176_p_din0 = grp_fu_534_p0;
assign grp_fu_176_p_din1 = grp_fu_534_p1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_1809_p0 = grp_fu_1809_p00;
assign grp_fu_1809_p00 = select_ln32_1_fu_687_p3;
assign grp_fu_1809_p1 = 16'd190;
assign grp_fu_1809_p2 = zext_ln31_cast_reg_1960;
assign grp_fu_180_p_ce = 1'b1;
assign grp_fu_180_p_din0 = grp_fu_538_p0;
assign grp_fu_180_p_din1 = grp_fu_538_p1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_1817_p0 = grp_fu_1817_p00;
assign grp_fu_1817_p00 = empty_41_fu_738_p2;
assign grp_fu_1817_p1 = 16'd190;
assign grp_fu_1817_p2 = zext_ln31_cast_reg_1960;
assign grp_fu_1825_p1 = 8'd2;
assign grp_fu_1825_p2 = 16'd190;
assign grp_fu_1825_p3 = zext_ln31_cast_reg_1960;
assign grp_fu_1834_p0 = grp_fu_1834_p00;
assign grp_fu_1834_p00 = empty_48_fu_839_p2;
assign grp_fu_1834_p1 = 16'd190;
assign grp_fu_1834_p2 = zext_ln31_cast_reg_1960;
assign grp_fu_1842_p1 = 8'd4;
assign grp_fu_1842_p2 = 16'd190;
assign grp_fu_1842_p3 = zext_ln31_cast_reg_1960;
assign grp_fu_184_p_ce = 1'b1;
assign grp_fu_184_p_din0 = grp_fu_542_p0;
assign grp_fu_184_p_din1 = grp_fu_542_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_1851_p0 = grp_fu_1851_p00;
assign grp_fu_1851_p00 = empty_55_fu_937_p2;
assign grp_fu_1851_p1 = 16'd190;
assign grp_fu_1851_p2 = zext_ln31_cast_reg_1960;
assign grp_fu_1859_p1 = 8'd6;
assign grp_fu_1859_p2 = 16'd190;
assign grp_fu_1859_p3 = zext_ln31_cast_reg_1960;
assign grp_fu_1868_p0 = grp_fu_1868_p00;
assign grp_fu_1868_p00 = empty_62_fu_1043_p2;
assign grp_fu_1868_p1 = 16'd190;
assign grp_fu_1868_p2 = zext_ln31_cast_reg_1960;
assign grp_fu_1876_p1 = 8'd8;
assign grp_fu_1876_p2 = 16'd190;
assign grp_fu_1876_p3 = zext_ln31_cast_reg_1960;
assign grp_fu_188_p_ce = 1'b1;
assign grp_fu_188_p_din0 = grp_fu_546_p0;
assign grp_fu_188_p_din1 = grp_fu_546_p1;
assign grp_fu_188_p_opcode = 2'd0;
assign grp_fu_192_p_ce = 1'b1;
assign grp_fu_192_p_din0 = grp_fu_550_p0;
assign grp_fu_192_p_din1 = grp_fu_550_p1;
assign grp_fu_196_p_ce = 1'b1;
assign grp_fu_196_p_din0 = grp_fu_554_p0;
assign grp_fu_196_p_din1 = grp_fu_554_p1;
assign grp_fu_200_p_ce = 1'b1;
assign grp_fu_200_p_din0 = grp_fu_558_p0;
assign grp_fu_200_p_din1 = grp_fu_558_p1;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = grp_fu_562_p0;
assign grp_fu_204_p_din1 = grp_fu_562_p1;
assign grp_fu_208_p_ce = 1'b1;
assign grp_fu_208_p_din0 = grp_fu_566_p0;
assign grp_fu_208_p_din1 = grp_fu_566_p1;
assign icmp_ln32_fu_657_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2200) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_681_p2 = ((ap_sig_allocacmp_v7_load < 8'd220) ? 1'b1 : 1'b0);
assign mul_ln101_fu_960_p0 = mul_ln101_fu_960_p00;
assign mul_ln101_fu_960_p00 = tmp_8_fu_946_p4;
assign mul_ln101_fu_960_p1 = 15'd220;
assign mul_ln114_fu_1037_p0 = mul_ln114_fu_1037_p00;
assign mul_ln114_fu_1037_p00 = empty_61_fu_1028_p2;
assign mul_ln114_fu_1037_p1 = 15'd220;
assign mul_ln127_fu_1066_p0 = mul_ln127_fu_1066_p00;
assign mul_ln127_fu_1066_p00 = tmp_9_fu_1052_p4;
assign mul_ln127_fu_1066_p1 = 15'd220;
assign mul_ln140_fu_1152_p0 = mul_ln140_fu_1152_p00;
assign mul_ln140_fu_1152_p00 = empty_68_reg_2244;
assign mul_ln140_fu_1152_p1 = 15'd220;
assign mul_ln34_fu_732_p0 = mul_ln34_fu_732_p00;
assign mul_ln34_fu_732_p00 = lshr_ln_reg_2010;
assign mul_ln34_fu_732_p1 = 15'd220;
assign mul_ln49_fu_761_p0 = mul_ln49_fu_761_p00;
assign mul_ln49_fu_761_p00 = tmp_fu_747_p4;
assign mul_ln49_fu_761_p1 = 15'd220;
assign mul_ln62_fu_833_p0 = mul_ln62_fu_833_p00;
assign mul_ln62_fu_833_p00 = empty_47_fu_824_p2;
assign mul_ln62_fu_833_p1 = 15'd220;
assign mul_ln75_fu_862_p0 = mul_ln75_fu_862_p00;
assign mul_ln75_fu_862_p00 = tmp_7_fu_848_p4;
assign mul_ln75_fu_862_p1 = 15'd220;
assign mul_ln88_fu_931_p0 = mul_ln88_fu_931_p00;
assign mul_ln88_fu_931_p00 = empty_54_fu_922_p2;
assign mul_ln88_fu_931_p1 = 15'd220;
assign or_ln_fu_791_p3 = {{tmp_s_fu_781_p4}, {1'd1}};
assign p_cast31_fu_918_p1 = grp_fu_1809_p3;
assign p_cast32_fu_1024_p1 = grp_fu_1825_p4;
assign p_cast33_fu_1141_p1 = grp_fu_1834_p3;
assign p_cast34_fu_1145_p1 = grp_fu_1842_p4;
assign p_cast35_fu_1262_p1 = grp_fu_1851_p3;
assign p_cast36_fu_1266_p1 = grp_fu_1859_p4;
assign p_cast37_fu_1326_p1 = grp_fu_1868_p3;
assign p_cast38_fu_1330_p1 = grp_fu_1876_p4;
assign p_cast_fu_1020_p1 = grp_fu_1817_p3;
assign select_ln103_fu_1549_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : bitcast_ln101_reg_2556);
assign select_ln110_fu_1555_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : bitcast_ln108_reg_2562);
assign select_ln116_fu_1561_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : bitcast_ln114_reg_2568);
assign select_ln123_fu_1567_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : bitcast_ln121_reg_2574);
assign select_ln129_fu_1597_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : bitcast_ln127_reg_2656);
assign select_ln136_fu_1603_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : bitcast_ln134_reg_2662);
assign select_ln142_fu_1777_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : bitcast_ln140_reg_2918);
assign select_ln149_fu_1783_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : bitcast_ln147_reg_2924);
assign select_ln32_1_fu_687_p3 = ((icmp_ln33_fu_681_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v6_load : add_ln32_fu_675_p2);
assign select_ln32_fu_723_p3 = ((icmp_ln33_reg_1982[0:0] == 1'b1) ? v7_load_reg_1977 : 8'd0);
assign select_ln34_fu_986_p3 = ((trunc_ln32_reg_2004[0:0] == 1'b1) ? v229_1_q1 : v229_0_q1);
assign select_ln42_fu_1013_p3 = ((trunc_ln32_reg_2004[0:0] == 1'b1) ? v229_1_q0 : v229_0_q0);
assign select_ln51_fu_1410_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : bitcast_ln49_reg_2393);
assign select_ln58_fu_1416_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : bitcast_ln56_reg_2399);
assign select_ln64_fu_1422_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : bitcast_ln62_reg_2405);
assign select_ln71_fu_1428_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : bitcast_ln69_reg_2411);
assign select_ln77_fu_1495_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : bitcast_ln75_reg_2477);
assign select_ln84_fu_1501_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : bitcast_ln82_reg_2483);
assign select_ln90_fu_1507_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : bitcast_ln88_reg_2489);
assign select_ln97_fu_1513_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : bitcast_ln95_reg_2495);
assign tmp_7_fu_848_p4 = {{empty_48_fu_839_p2[7:1]}};
assign tmp_8_fu_946_p4 = {{empty_55_fu_937_p2[7:1]}};
assign tmp_9_fu_1052_p4 = {{empty_62_fu_1043_p2[7:1]}};
assign tmp_fu_747_p4 = {{empty_41_fu_738_p2[7:1]}};
assign tmp_s_fu_781_p4 = {{select_ln32_fu_723_p3[7:1]}};
assign trunc_ln32_fu_699_p1 = select_ln32_1_fu_687_p3[0:0];
assign v100_fu_1609_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : v98_reg_2688);
assign v101_fu_1543_p1 = reg_599;
assign v104_fu_1473_p1 = reg_591;
assign v106_fu_1615_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : v104_reg_2694);
assign v10_fu_1334_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_192_p_dout0 : v8_reg_2269);
assign v11_fu_1135_p1 = reg_582;
assign v12_fu_1183_p1 = v228_load_reg_2104;
assign v15_fu_1121_p1 = select_ln42_reg_2212;
assign v17_fu_1340_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_196_p_dout0 : v15_reg_2295);
assign v18_fu_1212_p1 = v228_load_1_reg_2140;
assign v21_fu_1125_p1 = reg_574;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_address0 = zext_ln45_2_fu_808_p1;
assign v228_address1 = zext_ln38_2_fu_776_p1;
assign v228_ce0 = v228_ce0_local;
assign v228_ce1 = v228_ce1_local;
assign v229_0_address0 = v229_0_address0_local;
assign v229_0_address1 = v229_0_address1_local;
assign v229_0_ce0 = v229_0_ce0_local;
assign v229_0_ce1 = v229_0_ce1_local;
assign v229_0_d0 = v229_0_d0_local;
assign v229_0_d1 = v229_0_d1_local;
assign v229_0_we0 = v229_0_we0_local;
assign v229_0_we1 = v229_0_we1_local;
assign v229_1_address0 = v229_1_address0_local;
assign v229_1_address1 = v229_1_address1_local;
assign v229_1_ce0 = v229_1_ce0_local;
assign v229_1_ce1 = v229_1_ce1_local;
assign v229_1_d0 = v229_1_d0_local;
assign v229_1_d1 = v229_1_d1_local;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v23_fu_1366_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : v21_reg_2301);
assign v24_fu_1256_p1 = reg_582;
assign v27_fu_1130_p1 = reg_578;
assign v29_fu_1372_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : v27_reg_2307);
assign v32_fu_1236_p1 = reg_587;
assign v34_fu_1444_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : v32_reg_2417);
assign v35_fu_1320_p1 = reg_595;
assign v38_fu_1241_p1 = reg_591;
assign v40_fu_1450_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : v38_reg_2423);
assign v43_fu_1246_p1 = reg_574;
assign v45_fu_1456_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : v43_reg_2429);
assign v46_fu_1398_p1 = reg_582;
assign v49_fu_1251_p1 = reg_578;
assign v51_fu_1462_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : v49_reg_2435);
assign v54_fu_1300_p1 = reg_587;
assign v56_fu_1519_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : v54_reg_2501);
assign v57_fu_1404_p1 = reg_599;
assign v60_fu_1305_p1 = reg_591;
assign v62_fu_1525_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : v60_reg_2507);
assign v65_fu_1310_p1 = reg_574;
assign v67_fu_1531_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : v65_reg_2513);
assign v68_fu_1478_p1 = reg_595;
assign v71_fu_1315_p1 = reg_578;
assign v73_fu_1537_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : v71_reg_2519);
assign v76_fu_1378_p1 = reg_587;
assign v78_fu_1573_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_200_p_dout0 : v76_reg_2590);
assign v79_fu_1484_p1 = v224_load_6_reg_2531;
assign v82_fu_1383_p1 = reg_591;
assign v84_fu_1579_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_204_p_dout0 : v82_reg_2596);
assign v87_fu_1388_p1 = reg_574;
assign v89_fu_1585_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_208_p_dout0 : v87_reg_2602);
assign v8_fu_1097_p1 = select_ln34_reg_2187;
assign v90_fu_1489_p1 = reg_582;
assign v93_fu_1393_p1 = reg_578;
assign v95_fu_1591_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_570_p2 : v93_reg_2608);
assign v98_fu_1468_p1 = reg_587;
assign zext_ln101_1_fu_1091_p1 = add_ln101_fu_1087_p2;
assign zext_ln108_fu_1115_p1 = add_ln108_fu_1111_p2;
assign zext_ln114_1_fu_1162_p1 = add_ln114_fu_1158_p2;
assign zext_ln121_fu_1191_p1 = add_ln121_fu_1187_p2;
assign zext_ln127_1_fu_1177_p1 = add_ln127_fu_1173_p2;
assign zext_ln134_fu_1206_p1 = add_ln134_fu_1202_p2;
assign zext_ln140_1_fu_1270_p1 = add_ln140_reg_2334;
assign zext_ln147_fu_1275_p1 = add_ln147_reg_2366;
assign zext_ln31_cast_fu_635_p1 = zext_ln31;
assign zext_ln34_1_fu_876_p1 = add_ln34_fu_871_p2;
assign zext_ln38_1_fu_767_p1 = select_ln32_fu_723_p3;
assign zext_ln38_2_fu_776_p1 = add_ln38_fu_771_p2;
assign zext_ln38_fu_868_p1 = select_ln32_reg_2019;
assign zext_ln42_fu_901_p1 = add_ln42_fu_896_p2;
assign zext_ln45_1_fu_799_p1 = or_ln_fu_791_p3;
assign zext_ln45_2_fu_808_p1 = add_ln45_fu_803_p2;
assign zext_ln45_fu_893_p1 = or_ln_reg_2046;
assign zext_ln49_1_fu_887_p1 = add_ln49_fu_882_p2;
assign zext_ln56_fu_912_p1 = add_ln56_fu_907_p2;
assign zext_ln62_1_fu_970_p1 = add_ln62_fu_966_p2;
assign zext_ln69_fu_997_p1 = add_ln69_fu_993_p2;
assign zext_ln75_1_fu_980_p1 = add_ln75_fu_976_p2;
assign zext_ln82_fu_1007_p1 = add_ln82_fu_1003_p2;
assign zext_ln88_1_fu_1081_p1 = add_ln88_fu_1077_p2;
assign zext_ln95_fu_1105_p1 = add_ln95_fu_1101_p2;
always @ (posedge ap_clk) begin
    zext_ln31_cast_reg_1960[15:8] <= 8'b00000000;
    or_ln_reg_2046[0] <= 1'b1;
    zext_ln38_reg_2073[14:8] <= 7'b0000000;
    zext_ln45_reg_2109[0] <= 1'b1;
    zext_ln45_reg_2109[14:8] <= 7'b0000000;
end
endmodule 