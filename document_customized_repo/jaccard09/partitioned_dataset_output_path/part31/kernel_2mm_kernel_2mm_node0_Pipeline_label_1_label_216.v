
module kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_216 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,zext_ln32_19,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,mul_ln38_7,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,grp_fu_518_p_din0,grp_fu_518_p_din1,grp_fu_518_p_opcode,grp_fu_518_p_dout0,grp_fu_518_p_ce,grp_fu_522_p_din0,grp_fu_522_p_din1,grp_fu_522_p_opcode,grp_fu_522_p_dout0,grp_fu_522_p_ce,grp_fu_526_p_din0,grp_fu_526_p_din1,grp_fu_526_p_opcode,grp_fu_526_p_dout0,grp_fu_526_p_ce,grp_fu_530_p_din0,grp_fu_530_p_din1,grp_fu_530_p_opcode,grp_fu_530_p_dout0,grp_fu_530_p_ce,grp_fu_534_p_din0,grp_fu_534_p_din1,grp_fu_534_p_dout0,grp_fu_534_p_ce,grp_fu_538_p_din0,grp_fu_538_p_din1,grp_fu_538_p_dout0,grp_fu_538_p_ce,grp_fu_542_p_din0,grp_fu_542_p_din1,grp_fu_542_p_dout0,grp_fu_542_p_ce);  
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
input  [15:0] zext_ln32_19;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
input  [15:0] mul_ln38_7;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [31:0] grp_fu_518_p_din0;
output  [31:0] grp_fu_518_p_din1;
output  [1:0] grp_fu_518_p_opcode;
input  [31:0] grp_fu_518_p_dout0;
output   grp_fu_518_p_ce;
output  [31:0] grp_fu_522_p_din0;
output  [31:0] grp_fu_522_p_din1;
output  [1:0] grp_fu_522_p_opcode;
input  [31:0] grp_fu_522_p_dout0;
output   grp_fu_522_p_ce;
output  [31:0] grp_fu_526_p_din0;
output  [31:0] grp_fu_526_p_din1;
output  [1:0] grp_fu_526_p_opcode;
input  [31:0] grp_fu_526_p_dout0;
output   grp_fu_526_p_ce;
output  [31:0] grp_fu_530_p_din0;
output  [31:0] grp_fu_530_p_din1;
output  [1:0] grp_fu_530_p_opcode;
input  [31:0] grp_fu_530_p_dout0;
output   grp_fu_530_p_ce;
output  [31:0] grp_fu_534_p_din0;
output  [31:0] grp_fu_534_p_din1;
input  [31:0] grp_fu_534_p_dout0;
output   grp_fu_534_p_ce;
output  [31:0] grp_fu_538_p_din0;
output  [31:0] grp_fu_538_p_din1;
input  [31:0] grp_fu_538_p_dout0;
output   grp_fu_538_p_ce;
output  [31:0] grp_fu_542_p_din0;
output  [31:0] grp_fu_542_p_din1;
input  [31:0] grp_fu_542_p_dout0;
output   grp_fu_542_p_ce;
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
reg   [0:0] icmp_ln32_reg_1716;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_550;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_555;
reg   [0:0] trunc_ln32_reg_1747;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_559;
reg   [31:0] reg_563;
reg   [31:0] reg_567;
reg   [31:0] reg_571;
reg   [31:0] reg_575;
reg   [31:0] reg_579;
reg   [31:0] reg_583;
reg   [31:0] reg_587;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] reg_591;
reg   [31:0] reg_595;
reg   [31:0] reg_599;
reg   [31:0] reg_603;
reg   [0:0] trunc_ln32_reg_1747_pp0_iter1_reg;
reg   [31:0] reg_607;
reg   [31:0] reg_611;
reg   [31:0] reg_615;
reg   [31:0] reg_619;
reg   [31:0] reg_623;
reg   [31:0] reg_627;
reg   [31:0] reg_631;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] reg_635;
reg   [31:0] reg_639;
reg   [31:0] reg_643;
reg   [31:0] reg_647;
reg   [0:0] trunc_ln32_reg_1747_pp0_iter2_reg;
reg   [31:0] reg_651;
wire   [0:0] icmp_ln32_fu_673_p2;
reg   [0:0] icmp_ln32_reg_1716_pp0_iter1_reg;
reg   [0:0] icmp_ln32_reg_1716_pp0_iter2_reg;
reg   [7:0] v7_load_reg_1720;
wire   [0:0] icmp_ln33_fu_697_p2;
reg   [0:0] icmp_ln33_reg_1725;
wire   [7:0] select_ln32_1_fu_703_p3;
reg   [7:0] select_ln32_1_reg_1730;
wire   [0:0] trunc_ln32_fu_715_p1;
reg   [0:0] trunc_ln32_reg_1747_pp0_iter3_reg;
reg   [6:0] lshr_ln32_7_reg_1753;
wire   [7:0] select_ln32_fu_739_p3;
reg   [7:0] select_ln32_reg_1762;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] mul_ln34_fu_748_p2;
reg   [14:0] mul_ln34_reg_1767;
reg   [6:0] tmp_s_reg_1778;
reg   [6:0] tmp_21_reg_1788;
wire   [7:0] or_ln42_7_fu_816_p3;
reg   [7:0] or_ln42_7_reg_1798;
wire   [14:0] mul_ln49_fu_852_p2;
reg   [14:0] mul_ln49_reg_1808;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] tmp_22_reg_1819;
wire   [31:0] v12_fu_877_p1;
reg   [31:0] v12_reg_1824;
wire   [31:0] v18_fu_881_p1;
reg   [31:0] v18_reg_1831;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [14:0] mul_ln62_fu_898_p2;
reg   [14:0] mul_ln62_reg_1843;
reg   [6:0] tmp_23_reg_1854;
wire   [14:0] zext_ln38_fu_923_p1;
reg   [14:0] zext_ln38_reg_1859;
reg   [14:0] v229_0_addr_reg_1870;
reg   [14:0] v229_0_addr_reg_1870_pp0_iter1_reg;
reg   [14:0] v229_0_addr_5_reg_1875;
reg   [14:0] v229_0_addr_5_reg_1875_pp0_iter1_reg;
reg   [14:0] v229_1_addr_reg_1880;
reg   [14:0] v229_1_addr_reg_1880_pp0_iter1_reg;
reg   [14:0] v229_1_addr_1_reg_1885;
reg   [14:0] v229_1_addr_1_reg_1885_pp0_iter1_reg;
wire   [14:0] zext_ln45_fu_948_p1;
reg   [14:0] zext_ln45_reg_1890;
reg   [14:0] v229_0_addr_9_reg_1901;
reg   [14:0] v229_0_addr_9_reg_1901_pp0_iter1_reg;
reg   [14:0] v229_0_addr_14_reg_1906;
reg   [14:0] v229_0_addr_14_reg_1906_pp0_iter1_reg;
reg   [14:0] v229_1_addr_9_reg_1911;
reg   [14:0] v229_1_addr_9_reg_1911_pp0_iter1_reg;
reg   [14:0] v229_1_addr_10_reg_1916;
reg   [14:0] v229_1_addr_10_reg_1916_pp0_iter1_reg;
wire   [15:0] grp_fu_1630_p3;
reg   [15:0] empty_229_reg_1931;
wire   [14:0] mul_ln75_fu_984_p2;
reg   [14:0] mul_ln75_reg_1936;
wire   [31:0] select_ln34_fu_990_p3;
reg   [31:0] select_ln34_reg_1942;
wire   [31:0] select_ln42_fu_997_p3;
reg   [31:0] select_ln42_reg_1947;
wire   [31:0] v11_fu_1004_p1;
reg   [31:0] v224_load_2_reg_1958;
wire   [14:0] mul_ln88_fu_1027_p2;
reg   [14:0] mul_ln88_reg_1973;
wire   [15:0] grp_fu_1646_p3;
reg   [15:0] empty_236_reg_1979;
wire   [15:0] grp_fu_1653_p4;
reg   [15:0] empty_239_reg_1984;
reg   [14:0] v229_0_addr_1_reg_1989;
reg   [14:0] v229_0_addr_1_reg_1989_pp0_iter1_reg;
reg   [14:0] v229_0_addr_6_reg_1994;
reg   [14:0] v229_0_addr_6_reg_1994_pp0_iter1_reg;
reg   [14:0] v229_1_addr_2_reg_1999;
reg   [14:0] v229_1_addr_2_reg_1999_pp0_iter1_reg;
reg   [14:0] v229_1_addr_5_reg_2004;
reg   [14:0] v229_1_addr_5_reg_2004_pp0_iter1_reg;
reg   [14:0] v229_0_addr_10_reg_2009;
reg   [14:0] v229_0_addr_10_reg_2009_pp0_iter1_reg;
reg   [14:0] v229_0_addr_15_reg_2014;
reg   [14:0] v229_0_addr_15_reg_2014_pp0_iter1_reg;
reg   [14:0] v229_1_addr_11_reg_2019;
reg   [14:0] v229_1_addr_11_reg_2019_pp0_iter1_reg;
reg   [14:0] v229_1_addr_14_reg_2024;
reg   [14:0] v229_1_addr_14_reg_2024_pp0_iter1_reg;
wire   [31:0] v24_fu_1073_p1;
wire   [31:0] v35_fu_1079_p1;
reg   [31:0] v35_reg_2035;
wire   [31:0] v57_fu_1083_p1;
reg   [31:0] v57_reg_2041;
wire   [14:0] mul_ln101_fu_1094_p2;
reg   [14:0] mul_ln101_reg_2052;
wire   [15:0] grp_fu_1661_p3;
reg   [15:0] empty_243_reg_2063;
wire   [15:0] grp_fu_1668_p4;
reg   [15:0] empty_246_reg_2068;
wire   [31:0] v46_fu_1104_p1;
wire   [14:0] mul_ln114_fu_1119_p2;
reg   [14:0] mul_ln114_reg_2079;
wire   [31:0] v79_fu_1125_p1;
reg   [31:0] v79_reg_2085;
reg   [14:0] v229_0_addr_2_reg_2101;
reg   [14:0] v229_0_addr_2_reg_2101_pp0_iter1_reg;
reg   [14:0] v229_0_addr_7_reg_2106;
reg   [14:0] v229_0_addr_7_reg_2106_pp0_iter1_reg;
reg   [14:0] v229_1_addr_3_reg_2111;
reg   [14:0] v229_1_addr_3_reg_2111_pp0_iter1_reg;
reg   [14:0] v229_1_addr_6_reg_2116;
reg   [14:0] v229_1_addr_6_reg_2116_pp0_iter1_reg;
reg   [14:0] v229_0_addr_11_reg_2121;
reg   [14:0] v229_0_addr_11_reg_2121_pp0_iter1_reg;
reg   [14:0] v229_0_addr_16_reg_2126;
reg   [14:0] v229_0_addr_16_reg_2126_pp0_iter1_reg;
reg   [14:0] v229_1_addr_12_reg_2131;
reg   [14:0] v229_1_addr_12_reg_2131_pp0_iter1_reg;
reg   [14:0] v229_1_addr_15_reg_2136;
reg   [14:0] v229_1_addr_15_reg_2136_pp0_iter1_reg;
wire   [31:0] v68_fu_1177_p1;
reg   [31:0] v68_reg_2141;
wire   [14:0] mul_ln127_fu_1185_p2;
reg   [14:0] mul_ln127_reg_2147;
wire   [31:0] v90_fu_1191_p1;
reg   [31:0] v90_reg_2153;
wire   [6:0] empty_247_fu_1195_p2;
reg   [6:0] empty_247_reg_2159;
wire   [31:0] v101_fu_1200_p1;
reg   [31:0] v101_reg_2164;
reg   [31:0] v13_reg_2170;
reg   [31:0] v19_reg_2175;
reg   [14:0] v229_0_addr_3_reg_2180;
reg   [14:0] v229_0_addr_3_reg_2180_pp0_iter1_reg;
wire   [14:0] add_ln140_fu_1223_p2;
reg   [14:0] add_ln140_reg_2185;
reg   [14:0] v229_0_addr_8_reg_2190;
reg   [14:0] v229_0_addr_8_reg_2190_pp0_iter1_reg;
reg   [14:0] v229_1_addr_4_reg_2195;
reg   [14:0] v229_1_addr_4_reg_2195_pp0_iter1_reg;
reg   [14:0] v229_1_addr_7_reg_2200;
reg   [14:0] v229_1_addr_7_reg_2200_pp0_iter1_reg;
wire   [31:0] v8_fu_1238_p1;
reg   [14:0] v229_0_addr_12_reg_2210;
reg   [14:0] v229_0_addr_12_reg_2210_pp0_iter1_reg;
wire   [14:0] add_ln147_fu_1252_p2;
reg   [14:0] add_ln147_reg_2215;
reg   [14:0] v229_0_addr_17_reg_2220;
reg   [14:0] v229_0_addr_17_reg_2220_pp0_iter1_reg;
reg   [14:0] v229_1_addr_13_reg_2225;
reg   [14:0] v229_1_addr_13_reg_2225_pp0_iter1_reg;
reg   [14:0] v229_1_addr_16_reg_2230;
reg   [14:0] v229_1_addr_16_reg_2230_pp0_iter1_reg;
wire   [31:0] v15_fu_1267_p1;
reg   [31:0] v25_reg_2240;
reg   [31:0] v30_reg_2245;
reg   [31:0] v36_reg_2250;
reg   [31:0] v41_reg_2255;
reg   [31:0] v47_reg_2260;
reg   [31:0] v52_reg_2265;
wire   [31:0] bitcast_ln49_fu_1271_p1;
wire   [31:0] bitcast_ln56_fu_1276_p1;
wire   [31:0] bitcast_ln62_fu_1281_p1;
wire   [31:0] v21_fu_1286_p1;
wire   [31:0] v27_fu_1291_p1;
wire   [31:0] v32_fu_1296_p1;
reg   [31:0] v58_reg_2300;
reg   [31:0] v63_reg_2305;
reg   [31:0] v69_reg_2310;
wire   [31:0] bitcast_ln69_fu_1301_p1;
wire   [31:0] bitcast_ln75_fu_1306_p1;
wire   [31:0] bitcast_ln82_fu_1311_p1;
wire   [31:0] v38_fu_1316_p1;
wire   [31:0] v43_fu_1321_p1;
wire   [31:0] v49_fu_1326_p1;
reg   [31:0] v74_reg_2345;
reg   [31:0] v80_reg_2350;
reg   [31:0] v85_reg_2355;
wire   [31:0] bitcast_ln88_fu_1331_p1;
wire   [31:0] bitcast_ln95_fu_1336_p1;
wire   [31:0] bitcast_ln101_fu_1341_p1;
wire   [31:0] v54_fu_1346_p1;
wire   [31:0] v60_fu_1351_p1;
wire   [31:0] v65_fu_1356_p1;
reg   [31:0] v91_reg_2390;
reg   [31:0] v96_reg_2395;
reg   [31:0] v102_reg_2400;
wire   [31:0] bitcast_ln108_fu_1361_p1;
wire   [31:0] bitcast_ln114_fu_1366_p1;
wire   [31:0] bitcast_ln121_fu_1371_p1;
wire   [31:0] v71_fu_1376_p1;
wire   [31:0] v76_fu_1381_p1;
wire   [31:0] v82_fu_1386_p1;
reg   [31:0] v107_reg_2435;
wire   [31:0] bitcast_ln127_fu_1391_p1;
wire   [31:0] bitcast_ln134_fu_1396_p1;
wire   [31:0] v87_fu_1401_p1;
wire   [31:0] v93_fu_1406_p1;
wire   [31:0] bitcast_ln41_fu_1411_p1;
reg   [31:0] bitcast_ln41_reg_2460;
wire   [31:0] bitcast_ln48_fu_1415_p1;
reg   [31:0] bitcast_ln48_reg_2466;
reg   [14:0] v229_0_addr_4_reg_2472;
reg   [14:0] v229_0_addr_4_reg_2472_pp0_iter2_reg;
reg   [14:0] v229_1_addr_8_reg_2477;
reg   [14:0] v229_1_addr_8_reg_2477_pp0_iter2_reg;
reg   [14:0] v229_0_addr_13_reg_2482;
reg   [14:0] v229_0_addr_13_reg_2482_pp0_iter2_reg;
reg   [14:0] v229_1_addr_17_reg_2487;
reg   [14:0] v229_1_addr_17_reg_2487_pp0_iter2_reg;
reg   [31:0] v229_0_load_16_reg_2492;
reg   [31:0] v229_0_load_17_reg_2497;
reg   [31:0] v229_1_load_8_reg_2502;
reg   [31:0] v229_1_load_9_reg_2507;
wire   [31:0] bitcast_ln140_fu_1459_p1;
wire   [31:0] v98_fu_1473_p1;
wire   [31:0] bitcast_ln147_fu_1497_p1;
wire   [31:0] v104_fu_1521_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln38_2_fu_801_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln45_2_fu_833_p1;
wire   [63:0] p_cast15_fu_885_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln34_1_fu_931_p1;
wire   [63:0] zext_ln49_1_fu_942_p1;
wire   [63:0] zext_ln42_fu_956_p1;
wire   [63:0] zext_ln56_fu_967_p1;
wire   [63:0] p_cast16_fu_973_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast17_fu_977_p1;
wire   [63:0] p_cast18_fu_1010_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast19_fu_1014_p1;
wire   [63:0] zext_ln62_1_fu_1037_p1;
wire   [63:0] zext_ln75_1_fu_1047_p1;
wire   [63:0] zext_ln69_fu_1057_p1;
wire   [63:0] zext_ln82_fu_1067_p1;
wire   [63:0] p_cast20_fu_1087_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] p_cast21_fu_1100_p1;
wire   [63:0] p_cast22_fu_1129_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] p_cast23_fu_1133_p1;
wire   [63:0] zext_ln88_1_fu_1141_p1;
wire   [63:0] zext_ln101_1_fu_1151_p1;
wire   [63:0] zext_ln95_fu_1161_p1;
wire   [63:0] zext_ln108_fu_1171_p1;
wire   [63:0] zext_ln114_1_fu_1217_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln127_1_fu_1232_p1;
wire   [63:0] zext_ln121_fu_1246_p1;
wire   [63:0] zext_ln134_fu_1261_p1;
wire   [63:0] zext_ln140_1_fu_1419_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln147_fu_1424_p1;
reg   [7:0] v7_fu_86;
wire   [7:0] add_ln33_fu_838_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v6_fu_90;
reg   [7:0] ap_sig_allocacmp_v6_load;
reg   [11:0] indvar_flatten48_fu_94;
wire   [11:0] add_ln32_fu_679_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten48_load;
reg    v228_ce1_local;
reg    v228_ce0_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v229_0_ce1_local;
reg   [14:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [14:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln55_fu_1439_p1;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln61_fu_1444_p1;
wire   [31:0] bitcast_ln81_fu_1463_p1;
wire   [31:0] bitcast_ln87_fu_1468_p1;
wire   [31:0] bitcast_ln68_1_fu_1477_p1;
wire   [31:0] bitcast_ln74_1_fu_1482_p1;
wire   [31:0] bitcast_ln107_fu_1511_p1;
wire   [31:0] bitcast_ln113_fu_1516_p1;
wire   [31:0] bitcast_ln94_1_fu_1525_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] bitcast_ln100_1_fu_1530_p1;
wire   [31:0] bitcast_ln133_fu_1555_p1;
wire   [31:0] bitcast_ln139_fu_1560_p1;
wire   [31:0] bitcast_ln120_1_fu_1565_p1;
wire   [31:0] bitcast_ln126_1_fu_1570_p1;
wire   [31:0] bitcast_ln146_1_fu_1585_p1;
wire   [31:0] bitcast_ln152_1_fu_1590_p1;
reg    v229_1_ce1_local;
reg   [14:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [14:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln55_1_fu_1429_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln61_1_fu_1434_p1;
wire   [31:0] bitcast_ln81_1_fu_1449_p1;
wire   [31:0] bitcast_ln87_1_fu_1454_p1;
wire   [31:0] bitcast_ln107_1_fu_1487_p1;
wire   [31:0] bitcast_ln113_1_fu_1492_p1;
wire   [31:0] bitcast_ln68_fu_1501_p1;
wire   [31:0] bitcast_ln74_fu_1506_p1;
wire   [31:0] bitcast_ln133_1_fu_1535_p1;
wire   [31:0] bitcast_ln139_1_fu_1540_p1;
wire   [31:0] bitcast_ln94_fu_1545_p1;
wire   [31:0] bitcast_ln100_fu_1550_p1;
wire   [31:0] bitcast_ln120_fu_1575_p1;
wire   [31:0] bitcast_ln126_fu_1580_p1;
wire   [31:0] bitcast_ln146_fu_1595_p1;
wire   [31:0] bitcast_ln152_fu_1600_p1;
reg   [31:0] grp_fu_522_p0;
reg   [31:0] grp_fu_522_p1;
reg   [31:0] grp_fu_526_p0;
reg   [31:0] grp_fu_526_p1;
reg   [31:0] grp_fu_530_p0;
reg   [31:0] grp_fu_530_p1;
reg   [31:0] grp_fu_534_p0;
reg   [31:0] grp_fu_534_p1;
reg   [31:0] grp_fu_538_p0;
reg   [31:0] grp_fu_538_p1;
reg   [31:0] grp_fu_542_p0;
reg   [31:0] grp_fu_542_p1;
reg   [31:0] grp_fu_546_p0;
reg   [31:0] grp_fu_546_p1;
wire   [7:0] add_ln32_1_fu_691_p2;
wire   [6:0] mul_ln34_fu_748_p0;
wire   [8:0] mul_ln34_fu_748_p1;
wire   [7:0] empty_220_fu_754_p2;
wire   [7:0] empty_227_fu_773_p2;
wire   [15:0] zext_ln38_1_fu_792_p1;
wire   [15:0] add_ln38_fu_796_p2;
wire   [6:0] tmp_24_fu_806_p4;
wire   [15:0] zext_ln45_1_fu_824_p1;
wire   [15:0] add_ln45_fu_828_p2;
wire   [6:0] mul_ln49_fu_852_p0;
wire   [8:0] mul_ln49_fu_852_p1;
wire   [7:0] empty_234_fu_858_p2;
wire   [15:0] grp_fu_1605_p3;
wire   [6:0] empty_226_fu_889_p2;
wire   [6:0] mul_ln62_fu_898_p0;
wire   [8:0] mul_ln62_fu_898_p1;
wire   [7:0] empty_241_fu_904_p2;
wire   [14:0] add_ln34_fu_926_p2;
wire   [14:0] add_ln49_fu_937_p2;
wire   [14:0] add_ln42_fu_951_p2;
wire   [14:0] add_ln56_fu_962_p2;
wire   [15:0] grp_fu_1613_p3;
wire   [15:0] grp_fu_1621_p4;
wire   [6:0] mul_ln75_fu_984_p0;
wire   [8:0] mul_ln75_fu_984_p1;
wire   [15:0] grp_fu_1637_p4;
wire   [6:0] empty_233_fu_1018_p2;
wire   [6:0] mul_ln88_fu_1027_p0;
wire   [8:0] mul_ln88_fu_1027_p1;
wire   [14:0] add_ln62_fu_1033_p2;
wire   [14:0] add_ln75_fu_1043_p2;
wire   [14:0] add_ln69_fu_1053_p2;
wire   [14:0] add_ln82_fu_1063_p2;
wire   [6:0] mul_ln101_fu_1094_p0;
wire   [8:0] mul_ln101_fu_1094_p1;
wire   [6:0] empty_240_fu_1110_p2;
wire   [6:0] mul_ln114_fu_1119_p0;
wire   [8:0] mul_ln114_fu_1119_p1;
wire   [14:0] add_ln88_fu_1137_p2;
wire   [14:0] add_ln101_fu_1147_p2;
wire   [14:0] add_ln95_fu_1157_p2;
wire   [14:0] add_ln108_fu_1167_p2;
wire   [6:0] mul_ln127_fu_1185_p0;
wire   [8:0] mul_ln127_fu_1185_p1;
wire   [6:0] mul_ln140_fu_1207_p0;
wire   [8:0] mul_ln140_fu_1207_p1;
wire   [14:0] add_ln114_fu_1213_p2;
wire   [14:0] mul_ln140_fu_1207_p2;
wire   [14:0] add_ln127_fu_1228_p2;
wire   [14:0] add_ln121_fu_1242_p2;
wire   [14:0] add_ln134_fu_1257_p2;
wire   [7:0] grp_fu_1605_p0;
wire   [7:0] grp_fu_1605_p1;
wire   [7:0] grp_fu_1613_p0;
wire   [7:0] grp_fu_1613_p1;
wire   [1:0] grp_fu_1621_p1;
wire   [7:0] grp_fu_1621_p2;
wire   [7:0] grp_fu_1630_p0;
wire   [7:0] grp_fu_1630_p1;
wire   [2:0] grp_fu_1637_p1;
wire   [7:0] grp_fu_1637_p2;
wire   [7:0] grp_fu_1646_p0;
wire   [7:0] grp_fu_1646_p1;
wire   [2:0] grp_fu_1653_p1;
wire   [7:0] grp_fu_1653_p2;
wire   [7:0] grp_fu_1661_p0;
wire   [7:0] grp_fu_1661_p1;
wire   [3:0] grp_fu_1668_p1;
wire   [7:0] grp_fu_1668_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage6;
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
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
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
wire   [15:0] grp_fu_1605_p00;
wire   [15:0] grp_fu_1613_p00;
wire   [15:0] grp_fu_1630_p00;
wire   [15:0] grp_fu_1646_p00;
wire   [15:0] grp_fu_1661_p00;
wire   [14:0] mul_ln101_fu_1094_p00;
wire   [14:0] mul_ln114_fu_1119_p00;
wire   [14:0] mul_ln127_fu_1185_p00;
wire   [14:0] mul_ln140_fu_1207_p00;
wire   [14:0] mul_ln34_fu_748_p00;
wire   [14:0] mul_ln49_fu_852_p00;
wire   [14:0] mul_ln62_fu_898_p00;
wire   [14:0] mul_ln75_fu_984_p00;
wire   [14:0] mul_ln88_fu_1027_p00;
reg    ap_condition_1774;
reg    ap_condition_1777;
reg    ap_condition_1781;
reg    ap_condition_1785;
reg    ap_condition_1789;
reg    ap_condition_1793;
reg    ap_condition_1797;
reg    ap_condition_1801;
reg    ap_condition_1805;
reg    ap_condition_1809;
reg    ap_condition_1813;
reg    ap_condition_1817;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_fu_86 = 8'd0;
#0 v6_fu_90 = 8'd0;
#0 indvar_flatten48_fu_94 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U590(.din0(mul_ln34_fu_748_p0),.din1(mul_ln34_fu_748_p1),.dout(mul_ln34_fu_748_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U591(.din0(mul_ln49_fu_852_p0),.din1(mul_ln49_fu_852_p1),.dout(mul_ln49_fu_852_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U592(.din0(mul_ln62_fu_898_p0),.din1(mul_ln62_fu_898_p1),.dout(mul_ln62_fu_898_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U593(.din0(mul_ln75_fu_984_p0),.din1(mul_ln75_fu_984_p1),.dout(mul_ln75_fu_984_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U594(.din0(mul_ln88_fu_1027_p0),.din1(mul_ln88_fu_1027_p1),.dout(mul_ln88_fu_1027_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U595(.din0(mul_ln101_fu_1094_p0),.din1(mul_ln101_fu_1094_p1),.dout(mul_ln101_fu_1094_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U596(.din0(mul_ln114_fu_1119_p0),.din1(mul_ln114_fu_1119_p1),.dout(mul_ln114_fu_1119_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U597(.din0(mul_ln127_fu_1185_p0),.din1(mul_ln127_fu_1185_p1),.dout(mul_ln127_fu_1185_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U598(.din0(mul_ln140_fu_1207_p0),.din1(mul_ln140_fu_1207_p1),.dout(mul_ln140_fu_1207_p2));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U599(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1605_p0),.din1(grp_fu_1605_p1),.din2(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1605_p3));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U600(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1613_p0),.din1(grp_fu_1613_p1),.din2(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1613_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_16ns_16_4_1_U601(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1730),.din1(grp_fu_1621_p1),.din2(grp_fu_1621_p2),.din3(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1621_p4));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U602(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1630_p0),.din1(grp_fu_1630_p1),.din2(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1630_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1_U603(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1730),.din1(grp_fu_1637_p1),.din2(grp_fu_1637_p2),.din3(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1637_p4));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U604(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1646_p0),.din1(grp_fu_1646_p1),.din2(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1646_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1_U605(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1730),.din1(grp_fu_1653_p1),.din2(grp_fu_1653_p2),.din3(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1653_p4));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U606(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1661_p0),.din1(grp_fu_1661_p1),.din2(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1661_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_16ns_16_4_1_U607(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1730),.din1(grp_fu_1668_p1),.din2(grp_fu_1668_p2),.din3(zext_ln32_19),.ce(1'b1),.dout(grp_fu_1668_p4));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage6) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage6) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_673_p2 == 1'd0))) begin
            indvar_flatten48_fu_94 <= add_ln32_fu_679_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten48_fu_94 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_550 <= v224_q1;
    end else if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_550 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_673_p2 == 1'd0))) begin
            v6_fu_90 <= select_ln32_1_fu_703_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v6_fu_90 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_86 <= 8'd0;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_fu_86 <= add_ln33_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln140_reg_2185 <= add_ln140_fu_1223_p2;
        add_ln147_reg_2215 <= add_ln147_fu_1252_p2;
        v229_0_addr_12_reg_2210 <= zext_ln121_fu_1246_p1;
        v229_0_addr_12_reg_2210_pp0_iter1_reg <= v229_0_addr_12_reg_2210;
        v229_0_addr_17_reg_2220 <= zext_ln134_fu_1261_p1;
        v229_0_addr_17_reg_2220_pp0_iter1_reg <= v229_0_addr_17_reg_2220;
        v229_0_addr_3_reg_2180 <= zext_ln114_1_fu_1217_p1;
        v229_0_addr_3_reg_2180_pp0_iter1_reg <= v229_0_addr_3_reg_2180;
        v229_0_addr_8_reg_2190 <= zext_ln127_1_fu_1232_p1;
        v229_0_addr_8_reg_2190_pp0_iter1_reg <= v229_0_addr_8_reg_2190;
        v229_1_addr_13_reg_2225 <= zext_ln134_fu_1261_p1;
        v229_1_addr_13_reg_2225_pp0_iter1_reg <= v229_1_addr_13_reg_2225;
        v229_1_addr_16_reg_2230 <= zext_ln121_fu_1246_p1;
        v229_1_addr_16_reg_2230_pp0_iter1_reg <= v229_1_addr_16_reg_2230;
        v229_1_addr_4_reg_2195 <= zext_ln127_1_fu_1232_p1;
        v229_1_addr_4_reg_2195_pp0_iter1_reg <= v229_1_addr_4_reg_2195;
        v229_1_addr_7_reg_2200 <= zext_ln114_1_fu_1217_p1;
        v229_1_addr_7_reg_2200_pp0_iter1_reg <= v229_1_addr_7_reg_2200;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bitcast_ln41_reg_2460 <= bitcast_ln41_fu_1411_p1;
        bitcast_ln48_reg_2466 <= bitcast_ln48_fu_1415_p1;
        mul_ln88_reg_1973 <= mul_ln88_fu_1027_p2;
        v229_0_addr_10_reg_2009 <= zext_ln69_fu_1057_p1;
        v229_0_addr_10_reg_2009_pp0_iter1_reg <= v229_0_addr_10_reg_2009;
        v229_0_addr_15_reg_2014 <= zext_ln82_fu_1067_p1;
        v229_0_addr_15_reg_2014_pp0_iter1_reg <= v229_0_addr_15_reg_2014;
        v229_0_addr_1_reg_1989 <= zext_ln62_1_fu_1037_p1;
        v229_0_addr_1_reg_1989_pp0_iter1_reg <= v229_0_addr_1_reg_1989;
        v229_0_addr_6_reg_1994 <= zext_ln75_1_fu_1047_p1;
        v229_0_addr_6_reg_1994_pp0_iter1_reg <= v229_0_addr_6_reg_1994;
        v229_1_addr_11_reg_2019 <= zext_ln82_fu_1067_p1;
        v229_1_addr_11_reg_2019_pp0_iter1_reg <= v229_1_addr_11_reg_2019;
        v229_1_addr_14_reg_2024 <= zext_ln69_fu_1057_p1;
        v229_1_addr_14_reg_2024_pp0_iter1_reg <= v229_1_addr_14_reg_2024;
        v229_1_addr_2_reg_1999 <= zext_ln75_1_fu_1047_p1;
        v229_1_addr_2_reg_1999_pp0_iter1_reg <= v229_1_addr_2_reg_1999;
        v229_1_addr_5_reg_2004 <= zext_ln62_1_fu_1037_p1;
        v229_1_addr_5_reg_2004_pp0_iter1_reg <= v229_1_addr_5_reg_2004;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        empty_229_reg_1931 <= grp_fu_1630_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        empty_236_reg_1979 <= grp_fu_1646_p3;
        empty_239_reg_1984 <= grp_fu_1653_p4;
        v224_load_2_reg_1958 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        empty_243_reg_2063 <= grp_fu_1661_p3;
        empty_246_reg_2068 <= grp_fu_1668_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        empty_247_reg_2159 <= empty_247_fu_1195_p2;
        mul_ln127_reg_2147 <= mul_ln127_fu_1185_p2;
        v101_reg_2164 <= v101_fu_1200_p1;
        v229_0_addr_13_reg_2482 <= zext_ln147_fu_1424_p1;
        v229_0_addr_13_reg_2482_pp0_iter2_reg <= v229_0_addr_13_reg_2482;
        v229_0_addr_4_reg_2472 <= zext_ln140_1_fu_1419_p1;
        v229_0_addr_4_reg_2472_pp0_iter2_reg <= v229_0_addr_4_reg_2472;
        v229_1_addr_17_reg_2487 <= zext_ln147_fu_1424_p1;
        v229_1_addr_17_reg_2487_pp0_iter2_reg <= v229_1_addr_17_reg_2487;
        v229_1_addr_8_reg_2477 <= zext_ln140_1_fu_1419_p1;
        v229_1_addr_8_reg_2477_pp0_iter2_reg <= v229_1_addr_8_reg_2477;
        v68_reg_2141 <= v68_fu_1177_p1;
        v90_reg_2153 <= v90_fu_1191_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln32_reg_1716 <= icmp_ln32_fu_673_p2;
        icmp_ln32_reg_1716_pp0_iter1_reg <= icmp_ln32_reg_1716;
        icmp_ln32_reg_1716_pp0_iter2_reg <= icmp_ln32_reg_1716_pp0_iter1_reg;
        icmp_ln33_reg_1725 <= icmp_ln33_fu_697_p2;
        lshr_ln32_7_reg_1753 <= {{select_ln32_1_fu_703_p3[7:1]}};
        select_ln32_1_reg_1730 <= select_ln32_1_fu_703_p3;
        trunc_ln32_reg_1747 <= trunc_ln32_fu_715_p1;
        trunc_ln32_reg_1747_pp0_iter1_reg <= trunc_ln32_reg_1747;
        trunc_ln32_reg_1747_pp0_iter2_reg <= trunc_ln32_reg_1747_pp0_iter1_reg;
        trunc_ln32_reg_1747_pp0_iter3_reg <= trunc_ln32_reg_1747_pp0_iter2_reg;
        v7_load_reg_1720 <= ap_sig_allocacmp_v7_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln101_reg_2052 <= mul_ln101_fu_1094_p2;
        v35_reg_2035 <= v35_fu_1079_p1;
        v57_reg_2041 <= v57_fu_1083_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln114_reg_2079 <= mul_ln114_fu_1119_p2;
        v229_0_addr_11_reg_2121 <= zext_ln95_fu_1161_p1;
        v229_0_addr_11_reg_2121_pp0_iter1_reg <= v229_0_addr_11_reg_2121;
        v229_0_addr_16_reg_2126 <= zext_ln108_fu_1171_p1;
        v229_0_addr_16_reg_2126_pp0_iter1_reg <= v229_0_addr_16_reg_2126;
        v229_0_addr_2_reg_2101 <= zext_ln88_1_fu_1141_p1;
        v229_0_addr_2_reg_2101_pp0_iter1_reg <= v229_0_addr_2_reg_2101;
        v229_0_addr_7_reg_2106 <= zext_ln101_1_fu_1151_p1;
        v229_0_addr_7_reg_2106_pp0_iter1_reg <= v229_0_addr_7_reg_2106;
        v229_1_addr_12_reg_2131 <= zext_ln108_fu_1171_p1;
        v229_1_addr_12_reg_2131_pp0_iter1_reg <= v229_1_addr_12_reg_2131;
        v229_1_addr_15_reg_2136 <= zext_ln95_fu_1161_p1;
        v229_1_addr_15_reg_2136_pp0_iter1_reg <= v229_1_addr_15_reg_2136;
        v229_1_addr_3_reg_2111 <= zext_ln101_1_fu_1151_p1;
        v229_1_addr_3_reg_2111_pp0_iter1_reg <= v229_1_addr_3_reg_2111;
        v229_1_addr_6_reg_2116 <= zext_ln88_1_fu_1141_p1;
        v229_1_addr_6_reg_2116_pp0_iter1_reg <= v229_1_addr_6_reg_2116;
        v79_reg_2085 <= v79_fu_1125_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln34_reg_1767 <= mul_ln34_fu_748_p2;
        or_ln42_7_reg_1798[7 : 1] <= or_ln42_7_fu_816_p3[7 : 1];
        select_ln32_reg_1762 <= select_ln32_fu_739_p3;
        tmp_21_reg_1788 <= {{empty_227_fu_773_p2[7:1]}};
        tmp_s_reg_1778 <= {{empty_220_fu_754_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln49_reg_1808 <= mul_ln49_fu_852_p2;
        tmp_22_reg_1819 <= {{empty_234_fu_858_p2[7:1]}};
        v12_reg_1824 <= v12_fu_877_p1;
        v18_reg_1831 <= v18_fu_881_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln62_reg_1843 <= mul_ln62_fu_898_p2;
        tmp_23_reg_1854 <= {{empty_241_fu_904_p2[7:1]}};
        v229_0_addr_14_reg_1906 <= zext_ln56_fu_967_p1;
        v229_0_addr_14_reg_1906_pp0_iter1_reg <= v229_0_addr_14_reg_1906;
        v229_0_addr_5_reg_1875 <= zext_ln49_1_fu_942_p1;
        v229_0_addr_5_reg_1875_pp0_iter1_reg <= v229_0_addr_5_reg_1875;
        v229_0_addr_9_reg_1901 <= zext_ln42_fu_956_p1;
        v229_0_addr_9_reg_1901_pp0_iter1_reg <= v229_0_addr_9_reg_1901;
        v229_0_addr_reg_1870 <= zext_ln34_1_fu_931_p1;
        v229_0_addr_reg_1870_pp0_iter1_reg <= v229_0_addr_reg_1870;
        v229_1_addr_10_reg_1916 <= zext_ln56_fu_967_p1;
        v229_1_addr_10_reg_1916_pp0_iter1_reg <= v229_1_addr_10_reg_1916;
        v229_1_addr_1_reg_1885 <= zext_ln49_1_fu_942_p1;
        v229_1_addr_1_reg_1885_pp0_iter1_reg <= v229_1_addr_1_reg_1885;
        v229_1_addr_9_reg_1911 <= zext_ln42_fu_956_p1;
        v229_1_addr_9_reg_1911_pp0_iter1_reg <= v229_1_addr_9_reg_1911;
        v229_1_addr_reg_1880 <= zext_ln34_1_fu_931_p1;
        v229_1_addr_reg_1880_pp0_iter1_reg <= v229_1_addr_reg_1880;
        zext_ln38_reg_1859[7 : 0] <= zext_ln38_fu_923_p1[7 : 0];
        zext_ln45_reg_1890[7 : 1] <= zext_ln45_fu_948_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln75_reg_1936 <= mul_ln75_fu_984_p2;
        select_ln34_reg_1942 <= select_ln34_fu_990_p3;
        select_ln42_reg_1947 <= select_ln42_fu_997_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_1747 == 1'd0)))) begin
        reg_555 <= v229_1_q1;
        reg_559 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_1747 == 1'd1)))) begin
        reg_563 <= v229_0_q1;
        reg_567 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_1747 == 1'd0)))) begin
        reg_571 <= v229_0_q1;
        reg_575 <= v229_0_q0;
        reg_579 <= v229_1_q1;
        reg_583 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_1747 == 1'd0)))) begin
        reg_587 <= v229_0_q1;
        reg_591 <= v229_0_q0;
        reg_595 <= v229_1_q1;
        reg_599 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_603 <= grp_fu_518_p_dout0;
        reg_607 <= grp_fu_522_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_611 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_615 <= grp_fu_518_p_dout0;
        reg_623 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_619 <= grp_fu_522_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_627 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_631 <= grp_fu_518_p_dout0;
        reg_635 <= grp_fu_522_p_dout0;
        reg_639 <= grp_fu_526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_643 <= grp_fu_518_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_647 <= grp_fu_530_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_651 <= grp_fu_530_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v102_reg_2400 <= grp_fu_542_p_dout0;
        v91_reg_2390 <= grp_fu_534_p_dout0;
        v96_reg_2395 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v107_reg_2435 <= grp_fu_534_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v13_reg_2170 <= grp_fu_534_p_dout0;
        v19_reg_2175 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v229_0_load_16_reg_2492 <= v229_0_q1;
        v229_0_load_17_reg_2497 <= v229_0_q0;
        v229_1_load_8_reg_2502 <= v229_1_q1;
        v229_1_load_9_reg_2507 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v25_reg_2240 <= grp_fu_534_p_dout0;
        v30_reg_2245 <= grp_fu_538_p_dout0;
        v36_reg_2250 <= grp_fu_542_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v41_reg_2255 <= grp_fu_534_p_dout0;
        v47_reg_2260 <= grp_fu_538_p_dout0;
        v52_reg_2265 <= grp_fu_542_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_reg_2300 <= grp_fu_534_p_dout0;
        v63_reg_2305 <= grp_fu_538_p_dout0;
        v69_reg_2310 <= grp_fu_542_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_2345 <= grp_fu_534_p_dout0;
        v80_reg_2350 <= grp_fu_538_p_dout0;
        v85_reg_2355 <= grp_fu_542_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_1716 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln32_reg_1716_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter2_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        ap_sig_allocacmp_indvar_flatten48_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten48_load = indvar_flatten48_fu_94;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v6_load = v6_fu_90;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_load = v7_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_522_p0 = v87_fu_1401_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_522_p0 = bitcast_ln127_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p0 = v71_fu_1376_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p0 = bitcast_ln108_fu_1361_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p0 = v54_fu_1346_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p0 = bitcast_ln88_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_522_p0 = v38_fu_1316_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_522_p0 = bitcast_ln69_fu_1301_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1))) begin
        grp_fu_522_p0 = v21_fu_1286_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0))) begin
        grp_fu_522_p0 = bitcast_ln49_fu_1271_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_522_p0 = v8_fu_1238_p1;
    end else begin
        grp_fu_522_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_522_p1 = v91_reg_2390;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_522_p1 = v74_reg_2345;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_522_p1 = v58_reg_2300;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_522_p1 = v41_reg_2255;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0)))) begin
        grp_fu_522_p1 = v25_reg_2240;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_522_p1 = v13_reg_2170;
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_526_p0 = v93_fu_1406_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_526_p0 = bitcast_ln134_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_526_p0 = v76_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_526_p0 = bitcast_ln114_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_526_p0 = v60_fu_1351_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_526_p0 = bitcast_ln95_fu_1336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_526_p0 = v43_fu_1321_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_526_p0 = bitcast_ln75_fu_1306_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1))) begin
        grp_fu_526_p0 = v27_fu_1291_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0))) begin
        grp_fu_526_p0 = bitcast_ln56_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_526_p0 = v15_fu_1267_p1;
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_526_p1 = v96_reg_2395;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_526_p1 = v80_reg_2350;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_526_p1 = v63_reg_2305;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_526_p1 = v47_reg_2260;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0)))) begin
        grp_fu_526_p1 = v30_reg_2245;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_526_p1 = v19_reg_2175;
    end else begin
        grp_fu_526_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1801)) begin
            grp_fu_530_p0 = v82_fu_1386_p1;
        end else if ((1'b1 == ap_condition_1797)) begin
            grp_fu_530_p0 = bitcast_ln121_fu_1371_p1;
        end else if ((1'b1 == ap_condition_1793)) begin
            grp_fu_530_p0 = v65_fu_1356_p1;
        end else if ((1'b1 == ap_condition_1789)) begin
            grp_fu_530_p0 = bitcast_ln101_fu_1341_p1;
        end else if ((1'b1 == ap_condition_1785)) begin
            grp_fu_530_p0 = v49_fu_1326_p1;
        end else if ((1'b1 == ap_condition_1781)) begin
            grp_fu_530_p0 = bitcast_ln82_fu_1311_p1;
        end else if ((1'b1 == ap_condition_1777)) begin
            grp_fu_530_p0 = v32_fu_1296_p1;
        end else if ((1'b1 == ap_condition_1774)) begin
            grp_fu_530_p0 = bitcast_ln62_fu_1281_p1;
        end else begin
            grp_fu_530_p0 = 'bx;
        end
    end else begin
        grp_fu_530_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_530_p1 = v85_reg_2355;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_530_p1 = v69_reg_2310;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_530_p1 = v52_reg_2265;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0)))) begin
        grp_fu_530_p1 = v36_reg_2250;
    end else begin
        grp_fu_530_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1817)) begin
            grp_fu_534_p0 = v104_fu_1521_p1;
        end else if ((1'b1 == ap_condition_1813)) begin
            grp_fu_534_p0 = bitcast_ln147_fu_1497_p1;
        end else if ((1'b1 == ap_condition_1809)) begin
            grp_fu_534_p0 = v98_fu_1473_p1;
        end else if ((1'b1 == ap_condition_1805)) begin
            grp_fu_534_p0 = bitcast_ln140_fu_1459_p1;
        end else begin
            grp_fu_534_p0 = 'bx;
        end
    end else begin
        grp_fu_534_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_534_p1 = v107_reg_2435;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_534_p1 = v102_reg_2400;
    end else begin
        grp_fu_534_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_538_p0 = v101_reg_2164;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_538_p0 = v90_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_538_p0 = v68_reg_2141;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_538_p0 = v57_reg_2041;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_538_p0 = v35_reg_2035;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_538_p0 = v24_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_538_p0 = v11_fu_1004_p1;
    end else begin
        grp_fu_538_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_538_p1 = v18_reg_1831;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_538_p1 = v12_reg_1824;
    end else begin
        grp_fu_538_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_542_p0 = v90_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_542_p0 = v79_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_542_p0 = v57_reg_2041;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_542_p0 = v46_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_542_p0 = v24_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_542_p0 = v11_fu_1004_p1;
    end else begin
        grp_fu_542_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_542_p1 = v12_reg_1824;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_542_p1 = v18_reg_1831;
    end else begin
        grp_fu_542_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_546_p0 = v101_reg_2164;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_546_p0 = v79_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_546_p0 = v68_fu_1177_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_546_p0 = v46_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_546_p0 = v35_fu_1079_p1;
    end else begin
        grp_fu_546_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_546_p1 = v18_reg_1831;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_546_p1 = v12_reg_1824;
    end else begin
        grp_fu_546_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v224_address0_local = p_cast22_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v224_address0_local = p_cast20_fu_1087_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v224_address0_local = p_cast18_fu_1010_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_address0_local = p_cast17_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v224_address0_local = p_cast15_fu_885_p1;
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
            v224_address1_local = p_cast23_fu_1133_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v224_address1_local = p_cast21_fu_1100_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v224_address1_local = p_cast19_fu_1014_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_address1_local = p_cast16_fu_973_p1;
        end else begin
            v224_address1_local = 'bx;
        end
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
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
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_address0_local = v229_0_addr_13_reg_2482_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address0_local = v229_0_addr_12_reg_2210_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_17_reg_2220_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_11_reg_2121_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_16_reg_2126_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_10_reg_2009_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = v229_0_addr_15_reg_2014_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = v229_0_addr_9_reg_1901_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address0_local = v229_0_addr_14_reg_1906_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address0_local = zext_ln147_fu_1424_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address0_local = zext_ln134_fu_1261_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address0_local = zext_ln121_fu_1246_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address0_local = zext_ln108_fu_1171_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address0_local = zext_ln95_fu_1161_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address0_local = zext_ln82_fu_1067_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address0_local = zext_ln69_fu_1057_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address0_local = zext_ln56_fu_967_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address0_local = zext_ln42_fu_956_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_address1_local = v229_0_addr_4_reg_2472_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address1_local = v229_0_addr_3_reg_2180_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_8_reg_2190_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_2_reg_2101_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = v229_0_addr_7_reg_2106_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = v229_0_addr_1_reg_1989_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = v229_0_addr_6_reg_1994_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = v229_0_addr_reg_1870_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address1_local = v229_0_addr_5_reg_1875_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address1_local = zext_ln140_1_fu_1419_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address1_local = zext_ln127_1_fu_1232_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address1_local = zext_ln114_1_fu_1217_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address1_local = zext_ln101_1_fu_1151_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address1_local = zext_ln88_1_fu_1141_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address1_local = zext_ln75_1_fu_1047_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address1_local = zext_ln62_1_fu_1037_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_0_address1_local = zext_ln49_1_fu_942_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_0_address1_local = zext_ln34_1_fu_931_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_d0_local = bitcast_ln152_1_fu_1590_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d0_local = bitcast_ln126_1_fu_1570_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln139_fu_1560_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln100_1_fu_1530_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d0_local = bitcast_ln113_fu_1516_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d0_local = bitcast_ln74_1_fu_1482_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d0_local = bitcast_ln87_fu_1468_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d0_local = bitcast_ln48_reg_2466;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_d0_local = bitcast_ln61_fu_1444_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_d1_local = bitcast_ln146_1_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d1_local = bitcast_ln120_1_fu_1565_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d1_local = bitcast_ln133_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d1_local = bitcast_ln94_1_fu_1525_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d1_local = bitcast_ln107_fu_1511_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d1_local = bitcast_ln68_1_fu_1477_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d1_local = bitcast_ln81_fu_1463_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d1_local = bitcast_ln41_reg_2460;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_d1_local = bitcast_ln55_fu_1439_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_address0_local = v229_1_addr_17_reg_2487_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_16_reg_2230_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_15_reg_2136_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_13_reg_2225_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_14_reg_2024_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_12_reg_2131_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = v229_1_addr_9_reg_1911_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = v229_1_addr_11_reg_2019_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address0_local = zext_ln147_fu_1424_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address0_local = v229_1_addr_10_reg_1916_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address0_local = zext_ln121_fu_1246_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address0_local = zext_ln134_fu_1261_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address0_local = zext_ln95_fu_1161_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address0_local = zext_ln108_fu_1171_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address0_local = zext_ln69_fu_1057_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address0_local = zext_ln82_fu_1067_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address0_local = zext_ln56_fu_967_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address0_local = zext_ln42_fu_956_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_address1_local = v229_1_addr_8_reg_2477_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_7_reg_2200_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_6_reg_2116_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_4_reg_2195_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_5_reg_2004_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_3_reg_2111_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = v229_1_addr_reg_1880_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = v229_1_addr_2_reg_1999_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address1_local = zext_ln140_1_fu_1419_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address1_local = v229_1_addr_1_reg_1885_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address1_local = zext_ln114_1_fu_1217_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address1_local = zext_ln127_1_fu_1232_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address1_local = zext_ln88_1_fu_1141_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address1_local = zext_ln101_1_fu_1151_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address1_local = zext_ln62_1_fu_1037_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address1_local = zext_ln75_1_fu_1047_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0))) begin
        v229_1_address1_local = zext_ln49_1_fu_942_p1;
    end else if (((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1))) begin
        v229_1_address1_local = zext_ln34_1_fu_931_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1747 == 1'd0)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd1)) | ((icmp_ln32_reg_1716 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1747 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_d0_local = bitcast_ln152_fu_1600_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d0_local = bitcast_ln126_fu_1580_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d0_local = bitcast_ln100_fu_1550_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d0_local = bitcast_ln139_1_fu_1540_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d0_local = bitcast_ln74_fu_1506_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d0_local = bitcast_ln113_1_fu_1492_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d0_local = bitcast_ln48_reg_2466;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d0_local = bitcast_ln87_1_fu_1454_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_d0_local = bitcast_ln61_1_fu_1434_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_d1_local = bitcast_ln146_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d1_local = bitcast_ln120_fu_1575_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d1_local = bitcast_ln94_fu_1545_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d1_local = bitcast_ln133_1_fu_1535_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d1_local = bitcast_ln68_fu_1501_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d1_local = bitcast_ln107_1_fu_1487_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d1_local = bitcast_ln41_reg_2460;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d1_local = bitcast_ln81_1_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_d1_local = bitcast_ln55_1_fu_1429_p1;
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage6) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
assign add_ln101_fu_1147_p2 = (mul_ln101_reg_2052 + zext_ln38_reg_1859);
assign add_ln108_fu_1167_p2 = (mul_ln101_reg_2052 + zext_ln45_reg_1890);
assign add_ln114_fu_1213_p2 = (mul_ln114_reg_2079 + zext_ln38_reg_1859);
assign add_ln121_fu_1242_p2 = (mul_ln114_reg_2079 + zext_ln45_reg_1890);
assign add_ln127_fu_1228_p2 = (mul_ln127_reg_2147 + zext_ln38_reg_1859);
assign add_ln134_fu_1257_p2 = (mul_ln127_reg_2147 + zext_ln45_reg_1890);
assign add_ln140_fu_1223_p2 = (mul_ln140_fu_1207_p2 + zext_ln38_reg_1859);
assign add_ln147_fu_1252_p2 = (mul_ln140_fu_1207_p2 + zext_ln45_reg_1890);
assign add_ln32_1_fu_691_p2 = (ap_sig_allocacmp_v6_load + 8'd9);
assign add_ln32_fu_679_p2 = (ap_sig_allocacmp_indvar_flatten48_load + 12'd1);
assign add_ln33_fu_838_p2 = (select_ln32_fu_739_p3 + 8'd2);
assign add_ln34_fu_926_p2 = (mul_ln34_reg_1767 + zext_ln38_fu_923_p1);
assign add_ln38_fu_796_p2 = (mul_ln38_7 + zext_ln38_1_fu_792_p1);
assign add_ln42_fu_951_p2 = (mul_ln34_reg_1767 + zext_ln45_fu_948_p1);
assign add_ln45_fu_828_p2 = (mul_ln38_7 + zext_ln45_1_fu_824_p1);
assign add_ln49_fu_937_p2 = (mul_ln49_reg_1808 + zext_ln38_fu_923_p1);
assign add_ln56_fu_962_p2 = (mul_ln49_reg_1808 + zext_ln45_fu_948_p1);
assign add_ln62_fu_1033_p2 = (mul_ln62_reg_1843 + zext_ln38_reg_1859);
assign add_ln69_fu_1053_p2 = (mul_ln62_reg_1843 + zext_ln45_reg_1890);
assign add_ln75_fu_1043_p2 = (mul_ln75_reg_1936 + zext_ln38_reg_1859);
assign add_ln82_fu_1063_p2 = (mul_ln75_reg_1936 + zext_ln45_reg_1890);
assign add_ln88_fu_1137_p2 = (mul_ln88_reg_1973 + zext_ln38_reg_1859);
assign add_ln95_fu_1157_p2 = (mul_ln88_reg_1973 + zext_ln45_reg_1890);
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
    ap_condition_1774 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd0));
end
always @ (*) begin
    ap_condition_1777 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1747 == 1'd1));
end
always @ (*) begin
    ap_condition_1781 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1785 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1789 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1793 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1797 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1801 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1805 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1809 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln32_reg_1747_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1813 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1817 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1747_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_1_fu_1530_p1 = reg_607;
assign bitcast_ln100_fu_1550_p1 = reg_607;
assign bitcast_ln101_fu_1341_p1 = reg_595;
assign bitcast_ln107_1_fu_1487_p1 = reg_627;
assign bitcast_ln107_fu_1511_p1 = reg_627;
assign bitcast_ln108_fu_1361_p1 = reg_599;
assign bitcast_ln113_1_fu_1492_p1 = reg_631;
assign bitcast_ln113_fu_1516_p1 = reg_631;
assign bitcast_ln114_fu_1366_p1 = reg_563;
assign bitcast_ln120_1_fu_1565_p1 = reg_635;
assign bitcast_ln120_fu_1575_p1 = reg_635;
assign bitcast_ln121_fu_1371_p1 = reg_567;
assign bitcast_ln126_1_fu_1570_p1 = reg_639;
assign bitcast_ln126_fu_1580_p1 = reg_639;
assign bitcast_ln127_fu_1391_p1 = reg_555;
assign bitcast_ln133_1_fu_1535_p1 = reg_643;
assign bitcast_ln133_fu_1555_p1 = reg_643;
assign bitcast_ln134_fu_1396_p1 = reg_559;
assign bitcast_ln139_1_fu_1540_p1 = reg_619;
assign bitcast_ln139_fu_1560_p1 = reg_619;
assign bitcast_ln140_fu_1459_p1 = v229_0_load_16_reg_2492;
assign bitcast_ln146_1_fu_1585_p1 = reg_647;
assign bitcast_ln146_fu_1595_p1 = reg_647;
assign bitcast_ln147_fu_1497_p1 = v229_0_load_17_reg_2497;
assign bitcast_ln152_1_fu_1590_p1 = reg_651;
assign bitcast_ln152_fu_1600_p1 = reg_651;
assign bitcast_ln41_fu_1411_p1 = grp_fu_518_p_dout0;
assign bitcast_ln48_fu_1415_p1 = grp_fu_522_p_dout0;
assign bitcast_ln49_fu_1271_p1 = reg_555;
assign bitcast_ln55_1_fu_1429_p1 = reg_603;
assign bitcast_ln55_fu_1439_p1 = reg_603;
assign bitcast_ln56_fu_1276_p1 = reg_559;
assign bitcast_ln61_1_fu_1434_p1 = reg_607;
assign bitcast_ln61_fu_1444_p1 = reg_607;
assign bitcast_ln62_fu_1281_p1 = reg_571;
assign bitcast_ln68_1_fu_1477_p1 = reg_611;
assign bitcast_ln68_fu_1501_p1 = reg_611;
assign bitcast_ln69_fu_1301_p1 = reg_575;
assign bitcast_ln74_1_fu_1482_p1 = reg_615;
assign bitcast_ln74_fu_1506_p1 = reg_615;
assign bitcast_ln75_fu_1306_p1 = reg_579;
assign bitcast_ln81_1_fu_1449_p1 = reg_619;
assign bitcast_ln81_fu_1463_p1 = reg_619;
assign bitcast_ln82_fu_1311_p1 = reg_583;
assign bitcast_ln87_1_fu_1454_p1 = reg_623;
assign bitcast_ln87_fu_1468_p1 = reg_623;
assign bitcast_ln88_fu_1331_p1 = reg_587;
assign bitcast_ln94_1_fu_1525_p1 = reg_603;
assign bitcast_ln94_fu_1545_p1 = reg_603;
assign bitcast_ln95_fu_1336_p1 = reg_591;
assign empty_220_fu_754_p2 = (select_ln32_1_reg_1730 + 8'd1);
assign empty_226_fu_889_p2 = (lshr_ln32_7_reg_1753 + 7'd1);
assign empty_227_fu_773_p2 = (select_ln32_1_reg_1730 + 8'd3);
assign empty_233_fu_1018_p2 = (lshr_ln32_7_reg_1753 + 7'd2);
assign empty_234_fu_858_p2 = (select_ln32_1_reg_1730 + 8'd5);
assign empty_240_fu_1110_p2 = (lshr_ln32_7_reg_1753 + 7'd3);
assign empty_241_fu_904_p2 = (select_ln32_1_reg_1730 + 8'd7);
assign empty_247_fu_1195_p2 = (lshr_ln32_7_reg_1753 + 7'd4);
assign grp_fu_1605_p0 = grp_fu_1605_p00;
assign grp_fu_1605_p00 = select_ln32_1_fu_703_p3;
assign grp_fu_1605_p1 = 16'd190;
assign grp_fu_1613_p0 = grp_fu_1613_p00;
assign grp_fu_1613_p00 = empty_220_fu_754_p2;
assign grp_fu_1613_p1 = 16'd190;
assign grp_fu_1621_p1 = 8'd2;
assign grp_fu_1621_p2 = 16'd190;
assign grp_fu_1630_p0 = grp_fu_1630_p00;
assign grp_fu_1630_p00 = empty_227_fu_773_p2;
assign grp_fu_1630_p1 = 16'd190;
assign grp_fu_1637_p1 = 8'd4;
assign grp_fu_1637_p2 = 16'd190;
assign grp_fu_1646_p0 = grp_fu_1646_p00;
assign grp_fu_1646_p00 = empty_234_fu_858_p2;
assign grp_fu_1646_p1 = 16'd190;
assign grp_fu_1653_p1 = 8'd6;
assign grp_fu_1653_p2 = 16'd190;
assign grp_fu_1661_p0 = grp_fu_1661_p00;
assign grp_fu_1661_p00 = empty_241_fu_904_p2;
assign grp_fu_1661_p1 = 16'd190;
assign grp_fu_1668_p1 = 8'd8;
assign grp_fu_1668_p2 = 16'd190;
assign grp_fu_518_p_ce = 1'b1;
assign grp_fu_518_p_din0 = grp_fu_522_p0;
assign grp_fu_518_p_din1 = grp_fu_522_p1;
assign grp_fu_518_p_opcode = 2'd0;
assign grp_fu_522_p_ce = 1'b1;
assign grp_fu_522_p_din0 = grp_fu_526_p0;
assign grp_fu_522_p_din1 = grp_fu_526_p1;
assign grp_fu_522_p_opcode = 2'd0;
assign grp_fu_526_p_ce = 1'b1;
assign grp_fu_526_p_din0 = grp_fu_530_p0;
assign grp_fu_526_p_din1 = grp_fu_530_p1;
assign grp_fu_526_p_opcode = 2'd0;
assign grp_fu_530_p_ce = 1'b1;
assign grp_fu_530_p_din0 = grp_fu_534_p0;
assign grp_fu_530_p_din1 = grp_fu_534_p1;
assign grp_fu_530_p_opcode = 2'd0;
assign grp_fu_534_p_ce = 1'b1;
assign grp_fu_534_p_din0 = grp_fu_538_p0;
assign grp_fu_534_p_din1 = grp_fu_538_p1;
assign grp_fu_538_p_ce = 1'b1;
assign grp_fu_538_p_din0 = grp_fu_542_p0;
assign grp_fu_538_p_din1 = grp_fu_542_p1;
assign grp_fu_542_p_ce = 1'b1;
assign grp_fu_542_p_din0 = grp_fu_546_p0;
assign grp_fu_542_p_din1 = grp_fu_546_p1;
assign icmp_ln32_fu_673_p2 = ((ap_sig_allocacmp_indvar_flatten48_load == 12'd2200) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_697_p2 = ((ap_sig_allocacmp_v7_load < 8'd220) ? 1'b1 : 1'b0);
assign mul_ln101_fu_1094_p0 = mul_ln101_fu_1094_p00;
assign mul_ln101_fu_1094_p00 = tmp_22_reg_1819;
assign mul_ln101_fu_1094_p1 = 15'd220;
assign mul_ln114_fu_1119_p0 = mul_ln114_fu_1119_p00;
assign mul_ln114_fu_1119_p00 = empty_240_fu_1110_p2;
assign mul_ln114_fu_1119_p1 = 15'd220;
assign mul_ln127_fu_1185_p0 = mul_ln127_fu_1185_p00;
assign mul_ln127_fu_1185_p00 = tmp_23_reg_1854;
assign mul_ln127_fu_1185_p1 = 15'd220;
assign mul_ln140_fu_1207_p0 = mul_ln140_fu_1207_p00;
assign mul_ln140_fu_1207_p00 = empty_247_reg_2159;
assign mul_ln140_fu_1207_p1 = 15'd220;
assign mul_ln34_fu_748_p0 = mul_ln34_fu_748_p00;
assign mul_ln34_fu_748_p00 = lshr_ln32_7_reg_1753;
assign mul_ln34_fu_748_p1 = 15'd220;
assign mul_ln49_fu_852_p0 = mul_ln49_fu_852_p00;
assign mul_ln49_fu_852_p00 = tmp_s_reg_1778;
assign mul_ln49_fu_852_p1 = 15'd220;
assign mul_ln62_fu_898_p0 = mul_ln62_fu_898_p00;
assign mul_ln62_fu_898_p00 = empty_226_fu_889_p2;
assign mul_ln62_fu_898_p1 = 15'd220;
assign mul_ln75_fu_984_p0 = mul_ln75_fu_984_p00;
assign mul_ln75_fu_984_p00 = tmp_21_reg_1788;
assign mul_ln75_fu_984_p1 = 15'd220;
assign mul_ln88_fu_1027_p0 = mul_ln88_fu_1027_p00;
assign mul_ln88_fu_1027_p00 = empty_233_fu_1018_p2;
assign mul_ln88_fu_1027_p1 = 15'd220;
assign or_ln42_7_fu_816_p3 = {{tmp_24_fu_806_p4}, {1'd1}};
assign p_cast15_fu_885_p1 = grp_fu_1605_p3;
assign p_cast16_fu_973_p1 = grp_fu_1613_p3;
assign p_cast17_fu_977_p1 = grp_fu_1621_p4;
assign p_cast18_fu_1010_p1 = empty_229_reg_1931;
assign p_cast19_fu_1014_p1 = grp_fu_1637_p4;
assign p_cast20_fu_1087_p1 = empty_236_reg_1979;
assign p_cast21_fu_1100_p1 = empty_239_reg_1984;
assign p_cast22_fu_1129_p1 = empty_243_reg_2063;
assign p_cast23_fu_1133_p1 = empty_246_reg_2068;
assign select_ln32_1_fu_703_p3 = ((icmp_ln33_fu_697_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v6_load : add_ln32_1_fu_691_p2);
assign select_ln32_fu_739_p3 = ((icmp_ln33_reg_1725[0:0] == 1'b1) ? v7_load_reg_1720 : 8'd0);
assign select_ln34_fu_990_p3 = ((trunc_ln32_reg_1747[0:0] == 1'b1) ? v229_1_q1 : v229_0_q1);
assign select_ln42_fu_997_p3 = ((trunc_ln32_reg_1747[0:0] == 1'b1) ? v229_1_q0 : v229_0_q0);
assign tmp_24_fu_806_p4 = {{select_ln32_fu_739_p3[7:1]}};
assign trunc_ln32_fu_715_p1 = select_ln32_1_fu_703_p3[0:0];
assign v101_fu_1200_p1 = v224_q1;
assign v104_fu_1521_p1 = v229_1_load_9_reg_2507;
assign v11_fu_1004_p1 = reg_550;
assign v12_fu_877_p1 = v228_q1;
assign v15_fu_1267_p1 = select_ln42_reg_1947;
assign v18_fu_881_p1 = v228_q0;
assign v21_fu_1286_p1 = reg_563;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_address0 = zext_ln45_2_fu_833_p1;
assign v228_address1 = zext_ln38_2_fu_801_p1;
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
assign v24_fu_1073_p1 = reg_550;
assign v27_fu_1291_p1 = reg_567;
assign v32_fu_1296_p1 = reg_579;
assign v35_fu_1079_p1 = v224_load_2_reg_1958;
assign v38_fu_1316_p1 = reg_583;
assign v43_fu_1321_p1 = reg_571;
assign v46_fu_1104_p1 = reg_550;
assign v49_fu_1326_p1 = reg_575;
assign v54_fu_1346_p1 = reg_595;
assign v57_fu_1083_p1 = v224_q1;
assign v60_fu_1351_p1 = reg_599;
assign v65_fu_1356_p1 = reg_587;
assign v68_fu_1177_p1 = reg_550;
assign v71_fu_1376_p1 = reg_591;
assign v76_fu_1381_p1 = reg_555;
assign v79_fu_1125_p1 = v224_q1;
assign v82_fu_1386_p1 = reg_559;
assign v87_fu_1401_p1 = reg_563;
assign v8_fu_1238_p1 = select_ln34_reg_1942;
assign v90_fu_1191_p1 = v224_q0;
assign v93_fu_1406_p1 = reg_567;
assign v98_fu_1473_p1 = v229_1_load_8_reg_2502;
assign zext_ln101_1_fu_1151_p1 = add_ln101_fu_1147_p2;
assign zext_ln108_fu_1171_p1 = add_ln108_fu_1167_p2;
assign zext_ln114_1_fu_1217_p1 = add_ln114_fu_1213_p2;
assign zext_ln121_fu_1246_p1 = add_ln121_fu_1242_p2;
assign zext_ln127_1_fu_1232_p1 = add_ln127_fu_1228_p2;
assign zext_ln134_fu_1261_p1 = add_ln134_fu_1257_p2;
assign zext_ln140_1_fu_1419_p1 = add_ln140_reg_2185;
assign zext_ln147_fu_1424_p1 = add_ln147_reg_2215;
assign zext_ln34_1_fu_931_p1 = add_ln34_fu_926_p2;
assign zext_ln38_1_fu_792_p1 = select_ln32_fu_739_p3;
assign zext_ln38_2_fu_801_p1 = add_ln38_fu_796_p2;
assign zext_ln38_fu_923_p1 = select_ln32_reg_1762;
assign zext_ln42_fu_956_p1 = add_ln42_fu_951_p2;
assign zext_ln45_1_fu_824_p1 = or_ln42_7_fu_816_p3;
assign zext_ln45_2_fu_833_p1 = add_ln45_fu_828_p2;
assign zext_ln45_fu_948_p1 = or_ln42_7_reg_1798;
assign zext_ln49_1_fu_942_p1 = add_ln49_fu_937_p2;
assign zext_ln56_fu_967_p1 = add_ln56_fu_962_p2;
assign zext_ln62_1_fu_1037_p1 = add_ln62_fu_1033_p2;
assign zext_ln69_fu_1057_p1 = add_ln69_fu_1053_p2;
assign zext_ln75_1_fu_1047_p1 = add_ln75_fu_1043_p2;
assign zext_ln82_fu_1067_p1 = add_ln82_fu_1063_p2;
assign zext_ln88_1_fu_1141_p1 = add_ln88_fu_1137_p2;
assign zext_ln95_fu_1161_p1 = add_ln95_fu_1157_p2;
always @ (posedge ap_clk) begin
    or_ln42_7_reg_1798[0] <= 1'b1;
    zext_ln38_reg_1859[14:8] <= 7'b0000000;
    zext_ln45_reg_1890[0] <= 1'b1;
    zext_ln45_reg_1890[14:8] <= 7'b0000000;
end
endmodule 
