module kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_29 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,zext_ln32_20,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,mul_ln38_1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,grp_fu_550_p_din0,grp_fu_550_p_din1,grp_fu_550_p_opcode,grp_fu_550_p_dout0,grp_fu_550_p_ce,grp_fu_554_p_din0,grp_fu_554_p_din1,grp_fu_554_p_opcode,grp_fu_554_p_dout0,grp_fu_554_p_ce,grp_fu_558_p_din0,grp_fu_558_p_din1,grp_fu_558_p_opcode,grp_fu_558_p_dout0,grp_fu_558_p_ce,grp_fu_562_p_din0,grp_fu_562_p_din1,grp_fu_562_p_opcode,grp_fu_562_p_dout0,grp_fu_562_p_ce,grp_fu_566_p_din0,grp_fu_566_p_din1,grp_fu_566_p_dout0,grp_fu_566_p_ce,grp_fu_570_p_din0,grp_fu_570_p_din1,grp_fu_570_p_dout0,grp_fu_570_p_ce,grp_fu_574_p_din0,grp_fu_574_p_din1,grp_fu_574_p_dout0,grp_fu_574_p_ce); 
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
input  [15:0] zext_ln32_20;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
input  [13:0] mul_ln38_1;
output  [13:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [13:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [31:0] grp_fu_550_p_din0;
output  [31:0] grp_fu_550_p_din1;
output  [1:0] grp_fu_550_p_opcode;
input  [31:0] grp_fu_550_p_dout0;
output   grp_fu_550_p_ce;
output  [31:0] grp_fu_554_p_din0;
output  [31:0] grp_fu_554_p_din1;
output  [1:0] grp_fu_554_p_opcode;
input  [31:0] grp_fu_554_p_dout0;
output   grp_fu_554_p_ce;
output  [31:0] grp_fu_558_p_din0;
output  [31:0] grp_fu_558_p_din1;
output  [1:0] grp_fu_558_p_opcode;
input  [31:0] grp_fu_558_p_dout0;
output   grp_fu_558_p_ce;
output  [31:0] grp_fu_562_p_din0;
output  [31:0] grp_fu_562_p_din1;
output  [1:0] grp_fu_562_p_opcode;
input  [31:0] grp_fu_562_p_dout0;
output   grp_fu_562_p_ce;
output  [31:0] grp_fu_566_p_din0;
output  [31:0] grp_fu_566_p_din1;
input  [31:0] grp_fu_566_p_dout0;
output   grp_fu_566_p_ce;
output  [31:0] grp_fu_570_p_din0;
output  [31:0] grp_fu_570_p_din1;
input  [31:0] grp_fu_570_p_dout0;
output   grp_fu_570_p_ce;
output  [31:0] grp_fu_574_p_din0;
output  [31:0] grp_fu_574_p_din1;
input  [31:0] grp_fu_574_p_dout0;
output   grp_fu_574_p_ce;
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
reg   [0:0] icmp_ln32_reg_1718;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_552;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_557;
reg   [0:0] trunc_ln32_reg_1749;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_561;
reg   [31:0] reg_565;
reg   [31:0] reg_569;
reg   [31:0] reg_573;
reg   [31:0] reg_577;
reg   [31:0] reg_581;
reg   [31:0] reg_585;
reg   [31:0] reg_589;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] reg_593;
reg   [31:0] reg_597;
reg   [31:0] reg_601;
reg   [31:0] reg_605;
reg   [0:0] trunc_ln32_reg_1749_pp0_iter1_reg;
reg   [31:0] reg_609;
reg   [31:0] reg_613;
reg   [31:0] reg_617;
reg   [31:0] reg_621;
reg   [31:0] reg_625;
reg   [31:0] reg_629;
reg   [31:0] reg_633;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] reg_637;
reg   [31:0] reg_641;
reg   [31:0] reg_645;
reg   [31:0] reg_649;
reg   [0:0] trunc_ln32_reg_1749_pp0_iter2_reg;
reg   [31:0] reg_653;
wire   [0:0] icmp_ln32_fu_675_p2;
reg   [0:0] icmp_ln32_reg_1718_pp0_iter1_reg;
reg   [0:0] icmp_ln32_reg_1718_pp0_iter2_reg;
reg   [7:0] v7_load_reg_1722;
wire   [0:0] icmp_ln33_fu_699_p2;
reg   [0:0] icmp_ln33_reg_1727;
wire   [7:0] select_ln32_1_fu_705_p3;
reg   [7:0] select_ln32_1_reg_1732;
wire   [0:0] trunc_ln32_fu_717_p1;
reg   [0:0] trunc_ln32_reg_1749_pp0_iter3_reg;
reg   [6:0] lshr_ln32_7_reg_1755;
wire   [7:0] select_ln32_fu_741_p3;
reg   [7:0] select_ln32_reg_1764;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] mul_ln34_fu_750_p2;
reg   [14:0] mul_ln34_reg_1769;
reg   [6:0] tmp_s_reg_1780;
reg   [6:0] tmp_1_reg_1790;
wire   [7:0] or_ln42_7_fu_818_p3;
reg   [7:0] or_ln42_7_reg_1800;
wire   [14:0] mul_ln49_fu_854_p2;
reg   [14:0] mul_ln49_reg_1810;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] tmp_2_reg_1821;
wire   [31:0] v12_fu_879_p1;
reg   [31:0] v12_reg_1826;
wire   [31:0] v18_fu_883_p1;
reg   [31:0] v18_reg_1833;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [14:0] mul_ln62_fu_900_p2;
reg   [14:0] mul_ln62_reg_1845;
reg   [6:0] tmp_3_reg_1856;
wire   [14:0] zext_ln38_fu_925_p1;
reg   [14:0] zext_ln38_reg_1861;
reg   [14:0] v229_0_addr_reg_1872;
reg   [14:0] v229_0_addr_reg_1872_pp0_iter1_reg;
reg   [14:0] v229_0_addr_5_reg_1877;
reg   [14:0] v229_0_addr_5_reg_1877_pp0_iter1_reg;
reg   [14:0] v229_1_addr_reg_1882;
reg   [14:0] v229_1_addr_reg_1882_pp0_iter1_reg;
reg   [14:0] v229_1_addr_1_reg_1887;
reg   [14:0] v229_1_addr_1_reg_1887_pp0_iter1_reg;
wire   [14:0] zext_ln45_fu_950_p1;
reg   [14:0] zext_ln45_reg_1892;
reg   [14:0] v229_0_addr_9_reg_1903;
reg   [14:0] v229_0_addr_9_reg_1903_pp0_iter1_reg;
reg   [14:0] v229_0_addr_14_reg_1908;
reg   [14:0] v229_0_addr_14_reg_1908_pp0_iter1_reg;
reg   [14:0] v229_1_addr_9_reg_1913;
reg   [14:0] v229_1_addr_9_reg_1913_pp0_iter1_reg;
reg   [14:0] v229_1_addr_10_reg_1918;
reg   [14:0] v229_1_addr_10_reg_1918_pp0_iter1_reg;
wire   [15:0] grp_fu_1632_p3;
reg   [15:0] empty_90_reg_1933;
wire   [14:0] mul_ln75_fu_986_p2;
reg   [14:0] mul_ln75_reg_1938;
wire   [31:0] select_ln34_fu_992_p3;
reg   [31:0] select_ln34_reg_1944;
wire   [31:0] select_ln42_fu_999_p3;
reg   [31:0] select_ln42_reg_1949;
wire   [31:0] v11_fu_1006_p1;
reg   [31:0] v224_load_2_reg_1960;
wire   [14:0] mul_ln88_fu_1029_p2;
reg   [14:0] mul_ln88_reg_1975;
wire   [15:0] grp_fu_1648_p3;
reg   [15:0] empty_97_reg_1981;
wire   [15:0] grp_fu_1655_p4;
reg   [15:0] empty_100_reg_1986;
reg   [14:0] v229_0_addr_1_reg_1991;
reg   [14:0] v229_0_addr_1_reg_1991_pp0_iter1_reg;
reg   [14:0] v229_0_addr_6_reg_1996;
reg   [14:0] v229_0_addr_6_reg_1996_pp0_iter1_reg;
reg   [14:0] v229_1_addr_2_reg_2001;
reg   [14:0] v229_1_addr_2_reg_2001_pp0_iter1_reg;
reg   [14:0] v229_1_addr_5_reg_2006;
reg   [14:0] v229_1_addr_5_reg_2006_pp0_iter1_reg;
reg   [14:0] v229_0_addr_10_reg_2011;
reg   [14:0] v229_0_addr_10_reg_2011_pp0_iter1_reg;
reg   [14:0] v229_0_addr_15_reg_2016;
reg   [14:0] v229_0_addr_15_reg_2016_pp0_iter1_reg;
reg   [14:0] v229_1_addr_11_reg_2021;
reg   [14:0] v229_1_addr_11_reg_2021_pp0_iter1_reg;
reg   [14:0] v229_1_addr_14_reg_2026;
reg   [14:0] v229_1_addr_14_reg_2026_pp0_iter1_reg;
wire   [31:0] v24_fu_1075_p1;
wire   [31:0] v35_fu_1081_p1;
reg   [31:0] v35_reg_2037;
wire   [31:0] v57_fu_1085_p1;
reg   [31:0] v57_reg_2043;
wire   [14:0] mul_ln101_fu_1096_p2;
reg   [14:0] mul_ln101_reg_2054;
wire   [15:0] grp_fu_1663_p3;
reg   [15:0] empty_104_reg_2065;
wire   [15:0] grp_fu_1670_p4;
reg   [15:0] empty_107_reg_2070;
wire   [31:0] v46_fu_1106_p1;
wire   [14:0] mul_ln114_fu_1121_p2;
reg   [14:0] mul_ln114_reg_2081;
wire   [31:0] v79_fu_1127_p1;
reg   [31:0] v79_reg_2087;
reg   [14:0] v229_0_addr_2_reg_2103;
reg   [14:0] v229_0_addr_2_reg_2103_pp0_iter1_reg;
reg   [14:0] v229_0_addr_7_reg_2108;
reg   [14:0] v229_0_addr_7_reg_2108_pp0_iter1_reg;
reg   [14:0] v229_1_addr_3_reg_2113;
reg   [14:0] v229_1_addr_3_reg_2113_pp0_iter1_reg;
reg   [14:0] v229_1_addr_6_reg_2118;
reg   [14:0] v229_1_addr_6_reg_2118_pp0_iter1_reg;
reg   [14:0] v229_0_addr_11_reg_2123;
reg   [14:0] v229_0_addr_11_reg_2123_pp0_iter1_reg;
reg   [14:0] v229_0_addr_16_reg_2128;
reg   [14:0] v229_0_addr_16_reg_2128_pp0_iter1_reg;
reg   [14:0] v229_1_addr_12_reg_2133;
reg   [14:0] v229_1_addr_12_reg_2133_pp0_iter1_reg;
reg   [14:0] v229_1_addr_15_reg_2138;
reg   [14:0] v229_1_addr_15_reg_2138_pp0_iter1_reg;
wire   [31:0] v68_fu_1179_p1;
reg   [31:0] v68_reg_2143;
wire   [14:0] mul_ln127_fu_1187_p2;
reg   [14:0] mul_ln127_reg_2149;
wire   [31:0] v90_fu_1193_p1;
reg   [31:0] v90_reg_2155;
wire   [6:0] empty_108_fu_1197_p2;
reg   [6:0] empty_108_reg_2161;
wire   [31:0] v101_fu_1202_p1;
reg   [31:0] v101_reg_2166;
reg   [31:0] v13_reg_2172;
reg   [31:0] v19_reg_2177;
reg   [14:0] v229_0_addr_3_reg_2182;
reg   [14:0] v229_0_addr_3_reg_2182_pp0_iter1_reg;
wire   [14:0] add_ln140_fu_1225_p2;
reg   [14:0] add_ln140_reg_2187;
reg   [14:0] v229_0_addr_8_reg_2192;
reg   [14:0] v229_0_addr_8_reg_2192_pp0_iter1_reg;
reg   [14:0] v229_1_addr_4_reg_2197;
reg   [14:0] v229_1_addr_4_reg_2197_pp0_iter1_reg;
reg   [14:0] v229_1_addr_7_reg_2202;
reg   [14:0] v229_1_addr_7_reg_2202_pp0_iter1_reg;
wire   [31:0] v8_fu_1240_p1;
reg   [14:0] v229_0_addr_12_reg_2212;
reg   [14:0] v229_0_addr_12_reg_2212_pp0_iter1_reg;
wire   [14:0] add_ln147_fu_1254_p2;
reg   [14:0] add_ln147_reg_2217;
reg   [14:0] v229_0_addr_17_reg_2222;
reg   [14:0] v229_0_addr_17_reg_2222_pp0_iter1_reg;
reg   [14:0] v229_1_addr_13_reg_2227;
reg   [14:0] v229_1_addr_13_reg_2227_pp0_iter1_reg;
reg   [14:0] v229_1_addr_16_reg_2232;
reg   [14:0] v229_1_addr_16_reg_2232_pp0_iter1_reg;
wire   [31:0] v15_fu_1269_p1;
reg   [31:0] v25_reg_2242;
reg   [31:0] v30_reg_2247;
reg   [31:0] v36_reg_2252;
reg   [31:0] v41_reg_2257;
reg   [31:0] v47_reg_2262;
reg   [31:0] v52_reg_2267;
wire   [31:0] bitcast_ln49_fu_1273_p1;
wire   [31:0] bitcast_ln56_fu_1278_p1;
wire   [31:0] bitcast_ln62_fu_1283_p1;
wire   [31:0] v21_fu_1288_p1;
wire   [31:0] v27_fu_1293_p1;
wire   [31:0] v32_fu_1298_p1;
reg   [31:0] v58_reg_2302;
reg   [31:0] v63_reg_2307;
reg   [31:0] v69_reg_2312;
wire   [31:0] bitcast_ln69_fu_1303_p1;
wire   [31:0] bitcast_ln75_fu_1308_p1;
wire   [31:0] bitcast_ln82_fu_1313_p1;
wire   [31:0] v38_fu_1318_p1;
wire   [31:0] v43_fu_1323_p1;
wire   [31:0] v49_fu_1328_p1;
reg   [31:0] v74_reg_2347;
reg   [31:0] v80_reg_2352;
reg   [31:0] v85_reg_2357;
wire   [31:0] bitcast_ln88_fu_1333_p1;
wire   [31:0] bitcast_ln95_fu_1338_p1;
wire   [31:0] bitcast_ln101_fu_1343_p1;
wire   [31:0] v54_fu_1348_p1;
wire   [31:0] v60_fu_1353_p1;
wire   [31:0] v65_fu_1358_p1;
reg   [31:0] v91_reg_2392;
reg   [31:0] v96_reg_2397;
reg   [31:0] v102_reg_2402;
wire   [31:0] bitcast_ln108_fu_1363_p1;
wire   [31:0] bitcast_ln114_fu_1368_p1;
wire   [31:0] bitcast_ln121_fu_1373_p1;
wire   [31:0] v71_fu_1378_p1;
wire   [31:0] v76_fu_1383_p1;
wire   [31:0] v82_fu_1388_p1;
reg   [31:0] v107_reg_2437;
wire   [31:0] bitcast_ln127_fu_1393_p1;
wire   [31:0] bitcast_ln134_fu_1398_p1;
wire   [31:0] v87_fu_1403_p1;
wire   [31:0] v93_fu_1408_p1;
wire   [31:0] bitcast_ln41_fu_1413_p1;
reg   [31:0] bitcast_ln41_reg_2462;
wire   [31:0] bitcast_ln48_fu_1417_p1;
reg   [31:0] bitcast_ln48_reg_2468;
reg   [14:0] v229_0_addr_4_reg_2474;
reg   [14:0] v229_0_addr_4_reg_2474_pp0_iter2_reg;
reg   [14:0] v229_1_addr_8_reg_2479;
reg   [14:0] v229_1_addr_8_reg_2479_pp0_iter2_reg;
reg   [14:0] v229_0_addr_13_reg_2484;
reg   [14:0] v229_0_addr_13_reg_2484_pp0_iter2_reg;
reg   [14:0] v229_1_addr_17_reg_2489;
reg   [14:0] v229_1_addr_17_reg_2489_pp0_iter2_reg;
reg   [31:0] v229_0_load_16_reg_2494;
reg   [31:0] v229_0_load_17_reg_2499;
reg   [31:0] v229_1_load_8_reg_2504;
reg   [31:0] v229_1_load_9_reg_2509;
wire   [31:0] bitcast_ln140_fu_1461_p1;
wire   [31:0] v98_fu_1475_p1;
wire   [31:0] bitcast_ln147_fu_1499_p1;
wire   [31:0] v104_fu_1523_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln38_2_fu_803_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln45_2_fu_835_p1;
wire   [63:0] p_cast15_fu_887_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln34_1_fu_933_p1;
wire   [63:0] zext_ln49_1_fu_944_p1;
wire   [63:0] zext_ln42_fu_958_p1;
wire   [63:0] zext_ln56_fu_969_p1;
wire   [63:0] p_cast16_fu_975_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast17_fu_979_p1;
wire   [63:0] p_cast18_fu_1012_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast19_fu_1016_p1;
wire   [63:0] zext_ln62_1_fu_1039_p1;
wire   [63:0] zext_ln75_1_fu_1049_p1;
wire   [63:0] zext_ln69_fu_1059_p1;
wire   [63:0] zext_ln82_fu_1069_p1;
wire   [63:0] p_cast20_fu_1089_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] p_cast21_fu_1102_p1;
wire   [63:0] p_cast22_fu_1131_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] p_cast23_fu_1135_p1;
wire   [63:0] zext_ln88_1_fu_1143_p1;
wire   [63:0] zext_ln101_1_fu_1153_p1;
wire   [63:0] zext_ln95_fu_1163_p1;
wire   [63:0] zext_ln108_fu_1173_p1;
wire   [63:0] zext_ln114_1_fu_1219_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln127_1_fu_1234_p1;
wire   [63:0] zext_ln121_fu_1248_p1;
wire   [63:0] zext_ln134_fu_1263_p1;
wire   [63:0] zext_ln140_1_fu_1421_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln147_fu_1426_p1;
reg   [7:0] v7_fu_88;
wire   [7:0] add_ln33_fu_840_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v6_fu_92;
reg   [7:0] ap_sig_allocacmp_v6_load;
reg   [11:0] indvar_flatten48_fu_96;
wire   [11:0] add_ln32_fu_681_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten48_load;
reg    v228_3_ce1_local;
reg    v228_3_ce0_local;
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
wire   [31:0] bitcast_ln55_fu_1441_p1;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln61_fu_1446_p1;
wire   [31:0] bitcast_ln81_fu_1465_p1;
wire   [31:0] bitcast_ln87_fu_1470_p1;
wire   [31:0] bitcast_ln68_1_fu_1479_p1;
wire   [31:0] bitcast_ln74_1_fu_1484_p1;
wire   [31:0] bitcast_ln107_fu_1513_p1;
wire   [31:0] bitcast_ln113_fu_1518_p1;
wire   [31:0] bitcast_ln94_1_fu_1527_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] bitcast_ln100_1_fu_1532_p1;
wire   [31:0] bitcast_ln133_fu_1557_p1;
wire   [31:0] bitcast_ln139_fu_1562_p1;
wire   [31:0] bitcast_ln120_1_fu_1567_p1;
wire   [31:0] bitcast_ln126_1_fu_1572_p1;
wire   [31:0] bitcast_ln146_1_fu_1587_p1;
wire   [31:0] bitcast_ln152_1_fu_1592_p1;
reg    v229_1_ce1_local;
reg   [14:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [14:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln55_1_fu_1431_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln61_1_fu_1436_p1;
wire   [31:0] bitcast_ln81_1_fu_1451_p1;
wire   [31:0] bitcast_ln87_1_fu_1456_p1;
wire   [31:0] bitcast_ln107_1_fu_1489_p1;
wire   [31:0] bitcast_ln113_1_fu_1494_p1;
wire   [31:0] bitcast_ln68_fu_1503_p1;
wire   [31:0] bitcast_ln74_fu_1508_p1;
wire   [31:0] bitcast_ln133_1_fu_1537_p1;
wire   [31:0] bitcast_ln139_1_fu_1542_p1;
wire   [31:0] bitcast_ln94_fu_1547_p1;
wire   [31:0] bitcast_ln100_fu_1552_p1;
wire   [31:0] bitcast_ln120_fu_1577_p1;
wire   [31:0] bitcast_ln126_fu_1582_p1;
wire   [31:0] bitcast_ln146_fu_1597_p1;
wire   [31:0] bitcast_ln152_fu_1602_p1;
reg   [31:0] grp_fu_524_p0;
reg   [31:0] grp_fu_524_p1;
reg   [31:0] grp_fu_528_p0;
reg   [31:0] grp_fu_528_p1;
reg   [31:0] grp_fu_532_p0;
reg   [31:0] grp_fu_532_p1;
reg   [31:0] grp_fu_536_p0;
reg   [31:0] grp_fu_536_p1;
reg   [31:0] grp_fu_540_p0;
reg   [31:0] grp_fu_540_p1;
reg   [31:0] grp_fu_544_p0;
reg   [31:0] grp_fu_544_p1;
reg   [31:0] grp_fu_548_p0;
reg   [31:0] grp_fu_548_p1;
wire   [7:0] add_ln32_1_fu_693_p2;
wire   [6:0] mul_ln34_fu_750_p0;
wire   [8:0] mul_ln34_fu_750_p1;
wire   [7:0] empty_81_fu_756_p2;
wire   [7:0] empty_88_fu_775_p2;
wire   [13:0] zext_ln38_1_fu_794_p1;
wire   [13:0] add_ln38_fu_798_p2;
wire   [6:0] tmp_4_fu_808_p4;
wire   [13:0] zext_ln45_1_fu_826_p1;
wire   [13:0] add_ln45_fu_830_p2;
wire   [6:0] mul_ln49_fu_854_p0;
wire   [8:0] mul_ln49_fu_854_p1;
wire   [7:0] empty_95_fu_860_p2;
wire   [15:0] grp_fu_1607_p3;
wire   [6:0] empty_87_fu_891_p2;
wire   [6:0] mul_ln62_fu_900_p0;
wire   [8:0] mul_ln62_fu_900_p1;
wire   [7:0] empty_102_fu_906_p2;
wire   [14:0] add_ln34_fu_928_p2;
wire   [14:0] add_ln49_fu_939_p2;
wire   [14:0] add_ln42_fu_953_p2;
wire   [14:0] add_ln56_fu_964_p2;
wire   [15:0] grp_fu_1615_p3;
wire   [15:0] grp_fu_1623_p4;
wire   [6:0] mul_ln75_fu_986_p0;
wire   [8:0] mul_ln75_fu_986_p1;
wire   [15:0] grp_fu_1639_p4;
wire   [6:0] empty_94_fu_1020_p2;
wire   [6:0] mul_ln88_fu_1029_p0;
wire   [8:0] mul_ln88_fu_1029_p1;
wire   [14:0] add_ln62_fu_1035_p2;
wire   [14:0] add_ln75_fu_1045_p2;
wire   [14:0] add_ln69_fu_1055_p2;
wire   [14:0] add_ln82_fu_1065_p2;
wire   [6:0] mul_ln101_fu_1096_p0;
wire   [8:0] mul_ln101_fu_1096_p1;
wire   [6:0] empty_101_fu_1112_p2;
wire   [6:0] mul_ln114_fu_1121_p0;
wire   [8:0] mul_ln114_fu_1121_p1;
wire   [14:0] add_ln88_fu_1139_p2;
wire   [14:0] add_ln101_fu_1149_p2;
wire   [14:0] add_ln95_fu_1159_p2;
wire   [14:0] add_ln108_fu_1169_p2;
wire   [6:0] mul_ln127_fu_1187_p0;
wire   [8:0] mul_ln127_fu_1187_p1;
wire   [6:0] mul_ln140_fu_1209_p0;
wire   [8:0] mul_ln140_fu_1209_p1;
wire   [14:0] add_ln114_fu_1215_p2;
wire   [14:0] mul_ln140_fu_1209_p2;
wire   [14:0] add_ln127_fu_1230_p2;
wire   [14:0] add_ln121_fu_1244_p2;
wire   [14:0] add_ln134_fu_1259_p2;
wire   [7:0] grp_fu_1607_p0;
wire   [7:0] grp_fu_1607_p1;
wire   [7:0] grp_fu_1615_p0;
wire   [7:0] grp_fu_1615_p1;
wire   [1:0] grp_fu_1623_p1;
wire   [7:0] grp_fu_1623_p2;
wire   [7:0] grp_fu_1632_p0;
wire   [7:0] grp_fu_1632_p1;
wire   [2:0] grp_fu_1639_p1;
wire   [7:0] grp_fu_1639_p2;
wire   [7:0] grp_fu_1648_p0;
wire   [7:0] grp_fu_1648_p1;
wire   [2:0] grp_fu_1655_p1;
wire   [7:0] grp_fu_1655_p2;
wire   [7:0] grp_fu_1663_p0;
wire   [7:0] grp_fu_1663_p1;
wire   [3:0] grp_fu_1670_p1;
wire   [7:0] grp_fu_1670_p2;
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
wire   [15:0] grp_fu_1607_p00;
wire   [15:0] grp_fu_1615_p00;
wire   [15:0] grp_fu_1632_p00;
wire   [15:0] grp_fu_1648_p00;
wire   [15:0] grp_fu_1663_p00;
wire   [14:0] mul_ln101_fu_1096_p00;
wire   [14:0] mul_ln114_fu_1121_p00;
wire   [14:0] mul_ln127_fu_1187_p00;
wire   [14:0] mul_ln140_fu_1209_p00;
wire   [14:0] mul_ln34_fu_750_p00;
wire   [14:0] mul_ln49_fu_854_p00;
wire   [14:0] mul_ln62_fu_900_p00;
wire   [14:0] mul_ln75_fu_986_p00;
wire   [14:0] mul_ln88_fu_1029_p00;
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
#0 v7_fu_88 = 8'd0;
#0 v6_fu_92 = 8'd0;
#0 indvar_flatten48_fu_96 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U304(.din0(mul_ln34_fu_750_p0),.din1(mul_ln34_fu_750_p1),.dout(mul_ln34_fu_750_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U305(.din0(mul_ln49_fu_854_p0),.din1(mul_ln49_fu_854_p1),.dout(mul_ln49_fu_854_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U306(.din0(mul_ln62_fu_900_p0),.din1(mul_ln62_fu_900_p1),.dout(mul_ln62_fu_900_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U307(.din0(mul_ln75_fu_986_p0),.din1(mul_ln75_fu_986_p1),.dout(mul_ln75_fu_986_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U308(.din0(mul_ln88_fu_1029_p0),.din1(mul_ln88_fu_1029_p1),.dout(mul_ln88_fu_1029_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U309(.din0(mul_ln101_fu_1096_p0),.din1(mul_ln101_fu_1096_p1),.dout(mul_ln101_fu_1096_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U310(.din0(mul_ln114_fu_1121_p0),.din1(mul_ln114_fu_1121_p1),.dout(mul_ln114_fu_1121_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U311(.din0(mul_ln127_fu_1187_p0),.din1(mul_ln127_fu_1187_p1),.dout(mul_ln127_fu_1187_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U312(.din0(mul_ln140_fu_1209_p0),.din1(mul_ln140_fu_1209_p1),.dout(mul_ln140_fu_1209_p2));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U313(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1607_p0),.din1(grp_fu_1607_p1),.din2(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1607_p3));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U314(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1615_p0),.din1(grp_fu_1615_p1),.din2(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1615_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_16ns_16_4_1_U315(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1732),.din1(grp_fu_1623_p1),.din2(grp_fu_1623_p2),.din3(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1623_p4));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U316(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1632_p0),.din1(grp_fu_1632_p1),.din2(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1632_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1_U317(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1732),.din1(grp_fu_1639_p1),.din2(grp_fu_1639_p2),.din3(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1639_p4));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U318(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1648_p0),.din1(grp_fu_1648_p1),.din2(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1648_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_16ns_16_4_1_U319(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1732),.din1(grp_fu_1655_p1),.din2(grp_fu_1655_p2),.din3(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1655_p4));
kernel_2mm_mac_muladd_8ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 16 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_16ns_16_4_1_U320(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1663_p0),.din1(grp_fu_1663_p1),.din2(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1663_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_16ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 16 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_16ns_16_4_1_U321(.clk(ap_clk),.reset(ap_rst),.din0(select_ln32_1_reg_1732),.din1(grp_fu_1670_p1),.din2(grp_fu_1670_p2),.din3(zext_ln32_20),.ce(1'b1),.dout(grp_fu_1670_p4));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_675_p2 == 1'd0))) begin
            indvar_flatten48_fu_96 <= add_ln32_fu_681_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten48_fu_96 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_552 <= v224_q1;
    end else if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_552 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_675_p2 == 1'd0))) begin
            v6_fu_92 <= select_ln32_1_fu_705_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v6_fu_92 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_88 <= 8'd0;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_fu_88 <= add_ln33_fu_840_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln140_reg_2187 <= add_ln140_fu_1225_p2;
        add_ln147_reg_2217 <= add_ln147_fu_1254_p2;
        v229_0_addr_12_reg_2212 <= zext_ln121_fu_1248_p1;
        v229_0_addr_12_reg_2212_pp0_iter1_reg <= v229_0_addr_12_reg_2212;
        v229_0_addr_17_reg_2222 <= zext_ln134_fu_1263_p1;
        v229_0_addr_17_reg_2222_pp0_iter1_reg <= v229_0_addr_17_reg_2222;
        v229_0_addr_3_reg_2182 <= zext_ln114_1_fu_1219_p1;
        v229_0_addr_3_reg_2182_pp0_iter1_reg <= v229_0_addr_3_reg_2182;
        v229_0_addr_8_reg_2192 <= zext_ln127_1_fu_1234_p1;
        v229_0_addr_8_reg_2192_pp0_iter1_reg <= v229_0_addr_8_reg_2192;
        v229_1_addr_13_reg_2227 <= zext_ln134_fu_1263_p1;
        v229_1_addr_13_reg_2227_pp0_iter1_reg <= v229_1_addr_13_reg_2227;
        v229_1_addr_16_reg_2232 <= zext_ln121_fu_1248_p1;
        v229_1_addr_16_reg_2232_pp0_iter1_reg <= v229_1_addr_16_reg_2232;
        v229_1_addr_4_reg_2197 <= zext_ln127_1_fu_1234_p1;
        v229_1_addr_4_reg_2197_pp0_iter1_reg <= v229_1_addr_4_reg_2197;
        v229_1_addr_7_reg_2202 <= zext_ln114_1_fu_1219_p1;
        v229_1_addr_7_reg_2202_pp0_iter1_reg <= v229_1_addr_7_reg_2202;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bitcast_ln41_reg_2462 <= bitcast_ln41_fu_1413_p1;
        bitcast_ln48_reg_2468 <= bitcast_ln48_fu_1417_p1;
        mul_ln88_reg_1975 <= mul_ln88_fu_1029_p2;
        v229_0_addr_10_reg_2011 <= zext_ln69_fu_1059_p1;
        v229_0_addr_10_reg_2011_pp0_iter1_reg <= v229_0_addr_10_reg_2011;
        v229_0_addr_15_reg_2016 <= zext_ln82_fu_1069_p1;
        v229_0_addr_15_reg_2016_pp0_iter1_reg <= v229_0_addr_15_reg_2016;
        v229_0_addr_1_reg_1991 <= zext_ln62_1_fu_1039_p1;
        v229_0_addr_1_reg_1991_pp0_iter1_reg <= v229_0_addr_1_reg_1991;
        v229_0_addr_6_reg_1996 <= zext_ln75_1_fu_1049_p1;
        v229_0_addr_6_reg_1996_pp0_iter1_reg <= v229_0_addr_6_reg_1996;
        v229_1_addr_11_reg_2021 <= zext_ln82_fu_1069_p1;
        v229_1_addr_11_reg_2021_pp0_iter1_reg <= v229_1_addr_11_reg_2021;
        v229_1_addr_14_reg_2026 <= zext_ln69_fu_1059_p1;
        v229_1_addr_14_reg_2026_pp0_iter1_reg <= v229_1_addr_14_reg_2026;
        v229_1_addr_2_reg_2001 <= zext_ln75_1_fu_1049_p1;
        v229_1_addr_2_reg_2001_pp0_iter1_reg <= v229_1_addr_2_reg_2001;
        v229_1_addr_5_reg_2006 <= zext_ln62_1_fu_1039_p1;
        v229_1_addr_5_reg_2006_pp0_iter1_reg <= v229_1_addr_5_reg_2006;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        empty_100_reg_1986 <= grp_fu_1655_p4;
        empty_97_reg_1981 <= grp_fu_1648_p3;
        v224_load_2_reg_1960 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        empty_104_reg_2065 <= grp_fu_1663_p3;
        empty_107_reg_2070 <= grp_fu_1670_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        empty_108_reg_2161 <= empty_108_fu_1197_p2;
        mul_ln127_reg_2149 <= mul_ln127_fu_1187_p2;
        v101_reg_2166 <= v101_fu_1202_p1;
        v229_0_addr_13_reg_2484 <= zext_ln147_fu_1426_p1;
        v229_0_addr_13_reg_2484_pp0_iter2_reg <= v229_0_addr_13_reg_2484;
        v229_0_addr_4_reg_2474 <= zext_ln140_1_fu_1421_p1;
        v229_0_addr_4_reg_2474_pp0_iter2_reg <= v229_0_addr_4_reg_2474;
        v229_1_addr_17_reg_2489 <= zext_ln147_fu_1426_p1;
        v229_1_addr_17_reg_2489_pp0_iter2_reg <= v229_1_addr_17_reg_2489;
        v229_1_addr_8_reg_2479 <= zext_ln140_1_fu_1421_p1;
        v229_1_addr_8_reg_2479_pp0_iter2_reg <= v229_1_addr_8_reg_2479;
        v68_reg_2143 <= v68_fu_1179_p1;
        v90_reg_2155 <= v90_fu_1193_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        empty_90_reg_1933 <= grp_fu_1632_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln32_reg_1718 <= icmp_ln32_fu_675_p2;
        icmp_ln32_reg_1718_pp0_iter1_reg <= icmp_ln32_reg_1718;
        icmp_ln32_reg_1718_pp0_iter2_reg <= icmp_ln32_reg_1718_pp0_iter1_reg;
        icmp_ln33_reg_1727 <= icmp_ln33_fu_699_p2;
        lshr_ln32_7_reg_1755 <= {{select_ln32_1_fu_705_p3[7:1]}};
        select_ln32_1_reg_1732 <= select_ln32_1_fu_705_p3;
        trunc_ln32_reg_1749 <= trunc_ln32_fu_717_p1;
        trunc_ln32_reg_1749_pp0_iter1_reg <= trunc_ln32_reg_1749;
        trunc_ln32_reg_1749_pp0_iter2_reg <= trunc_ln32_reg_1749_pp0_iter1_reg;
        trunc_ln32_reg_1749_pp0_iter3_reg <= trunc_ln32_reg_1749_pp0_iter2_reg;
        v7_load_reg_1722 <= ap_sig_allocacmp_v7_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln101_reg_2054 <= mul_ln101_fu_1096_p2;
        v35_reg_2037 <= v35_fu_1081_p1;
        v57_reg_2043 <= v57_fu_1085_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln114_reg_2081 <= mul_ln114_fu_1121_p2;
        v229_0_addr_11_reg_2123 <= zext_ln95_fu_1163_p1;
        v229_0_addr_11_reg_2123_pp0_iter1_reg <= v229_0_addr_11_reg_2123;
        v229_0_addr_16_reg_2128 <= zext_ln108_fu_1173_p1;
        v229_0_addr_16_reg_2128_pp0_iter1_reg <= v229_0_addr_16_reg_2128;
        v229_0_addr_2_reg_2103 <= zext_ln88_1_fu_1143_p1;
        v229_0_addr_2_reg_2103_pp0_iter1_reg <= v229_0_addr_2_reg_2103;
        v229_0_addr_7_reg_2108 <= zext_ln101_1_fu_1153_p1;
        v229_0_addr_7_reg_2108_pp0_iter1_reg <= v229_0_addr_7_reg_2108;
        v229_1_addr_12_reg_2133 <= zext_ln108_fu_1173_p1;
        v229_1_addr_12_reg_2133_pp0_iter1_reg <= v229_1_addr_12_reg_2133;
        v229_1_addr_15_reg_2138 <= zext_ln95_fu_1163_p1;
        v229_1_addr_15_reg_2138_pp0_iter1_reg <= v229_1_addr_15_reg_2138;
        v229_1_addr_3_reg_2113 <= zext_ln101_1_fu_1153_p1;
        v229_1_addr_3_reg_2113_pp0_iter1_reg <= v229_1_addr_3_reg_2113;
        v229_1_addr_6_reg_2118 <= zext_ln88_1_fu_1143_p1;
        v229_1_addr_6_reg_2118_pp0_iter1_reg <= v229_1_addr_6_reg_2118;
        v79_reg_2087 <= v79_fu_1127_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln34_reg_1769 <= mul_ln34_fu_750_p2;
        or_ln42_7_reg_1800[7 : 1] <= or_ln42_7_fu_818_p3[7 : 1];
        select_ln32_reg_1764 <= select_ln32_fu_741_p3;
        tmp_1_reg_1790 <= {{empty_88_fu_775_p2[7:1]}};
        tmp_s_reg_1780 <= {{empty_81_fu_756_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln49_reg_1810 <= mul_ln49_fu_854_p2;
        tmp_2_reg_1821 <= {{empty_95_fu_860_p2[7:1]}};
        v12_reg_1826 <= v12_fu_879_p1;
        v18_reg_1833 <= v18_fu_883_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln62_reg_1845 <= mul_ln62_fu_900_p2;
        tmp_3_reg_1856 <= {{empty_102_fu_906_p2[7:1]}};
        v229_0_addr_14_reg_1908 <= zext_ln56_fu_969_p1;
        v229_0_addr_14_reg_1908_pp0_iter1_reg <= v229_0_addr_14_reg_1908;
        v229_0_addr_5_reg_1877 <= zext_ln49_1_fu_944_p1;
        v229_0_addr_5_reg_1877_pp0_iter1_reg <= v229_0_addr_5_reg_1877;
        v229_0_addr_9_reg_1903 <= zext_ln42_fu_958_p1;
        v229_0_addr_9_reg_1903_pp0_iter1_reg <= v229_0_addr_9_reg_1903;
        v229_0_addr_reg_1872 <= zext_ln34_1_fu_933_p1;
        v229_0_addr_reg_1872_pp0_iter1_reg <= v229_0_addr_reg_1872;
        v229_1_addr_10_reg_1918 <= zext_ln56_fu_969_p1;
        v229_1_addr_10_reg_1918_pp0_iter1_reg <= v229_1_addr_10_reg_1918;
        v229_1_addr_1_reg_1887 <= zext_ln49_1_fu_944_p1;
        v229_1_addr_1_reg_1887_pp0_iter1_reg <= v229_1_addr_1_reg_1887;
        v229_1_addr_9_reg_1913 <= zext_ln42_fu_958_p1;
        v229_1_addr_9_reg_1913_pp0_iter1_reg <= v229_1_addr_9_reg_1913;
        v229_1_addr_reg_1882 <= zext_ln34_1_fu_933_p1;
        v229_1_addr_reg_1882_pp0_iter1_reg <= v229_1_addr_reg_1882;
        zext_ln38_reg_1861[7 : 0] <= zext_ln38_fu_925_p1[7 : 0];
        zext_ln45_reg_1892[7 : 1] <= zext_ln45_fu_950_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln75_reg_1938 <= mul_ln75_fu_986_p2;
        select_ln34_reg_1944 <= select_ln34_fu_992_p3;
        select_ln42_reg_1949 <= select_ln42_fu_999_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_1749 == 1'd0)))) begin
        reg_557 <= v229_1_q1;
        reg_561 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln32_reg_1749 == 1'd1)))) begin
        reg_565 <= v229_0_q1;
        reg_569 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln32_reg_1749 == 1'd0)))) begin
        reg_573 <= v229_0_q1;
        reg_577 <= v229_0_q0;
        reg_581 <= v229_1_q1;
        reg_585 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln32_reg_1749 == 1'd0)))) begin
        reg_589 <= v229_0_q1;
        reg_593 <= v229_0_q0;
        reg_597 <= v229_1_q1;
        reg_601 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_605 <= grp_fu_550_p_dout0;
        reg_609 <= grp_fu_554_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_613 <= grp_fu_558_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_617 <= grp_fu_550_p_dout0;
        reg_625 <= grp_fu_558_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_621 <= grp_fu_554_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_629 <= grp_fu_558_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_633 <= grp_fu_550_p_dout0;
        reg_637 <= grp_fu_554_p_dout0;
        reg_641 <= grp_fu_558_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_645 <= grp_fu_550_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_649 <= grp_fu_562_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_653 <= grp_fu_562_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v102_reg_2402 <= grp_fu_574_p_dout0;
        v91_reg_2392 <= grp_fu_566_p_dout0;
        v96_reg_2397 <= grp_fu_570_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v107_reg_2437 <= grp_fu_566_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v13_reg_2172 <= grp_fu_566_p_dout0;
        v19_reg_2177 <= grp_fu_570_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v229_0_load_16_reg_2494 <= v229_0_q1;
        v229_0_load_17_reg_2499 <= v229_0_q0;
        v229_1_load_8_reg_2504 <= v229_1_q1;
        v229_1_load_9_reg_2509 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v25_reg_2242 <= grp_fu_566_p_dout0;
        v30_reg_2247 <= grp_fu_570_p_dout0;
        v36_reg_2252 <= grp_fu_574_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v41_reg_2257 <= grp_fu_566_p_dout0;
        v47_reg_2262 <= grp_fu_570_p_dout0;
        v52_reg_2267 <= grp_fu_574_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_reg_2302 <= grp_fu_566_p_dout0;
        v63_reg_2307 <= grp_fu_570_p_dout0;
        v69_reg_2312 <= grp_fu_574_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_2347 <= grp_fu_566_p_dout0;
        v80_reg_2352 <= grp_fu_570_p_dout0;
        v85_reg_2357 <= grp_fu_574_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_1718 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln32_reg_1718_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        ap_sig_allocacmp_indvar_flatten48_load = indvar_flatten48_fu_96;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v6_load = v6_fu_92;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_load = v7_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_524_p0 = v87_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_524_p0 = bitcast_ln127_fu_1393_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p0 = v71_fu_1378_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p0 = bitcast_ln108_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_524_p0 = v54_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_524_p0 = bitcast_ln88_fu_1333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p0 = v38_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p0 = bitcast_ln69_fu_1303_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1))) begin
        grp_fu_524_p0 = v21_fu_1288_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0))) begin
        grp_fu_524_p0 = bitcast_ln49_fu_1273_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_524_p0 = v8_fu_1240_p1;
    end else begin
        grp_fu_524_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_524_p1 = v91_reg_2392;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_524_p1 = v74_reg_2347;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_524_p1 = v58_reg_2302;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_524_p1 = v41_reg_2257;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0)))) begin
        grp_fu_524_p1 = v25_reg_2242;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_524_p1 = v13_reg_2172;
    end else begin
        grp_fu_524_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_528_p0 = v93_fu_1408_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_528_p0 = bitcast_ln134_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_528_p0 = v76_fu_1383_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_528_p0 = bitcast_ln114_fu_1368_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_528_p0 = v60_fu_1353_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_528_p0 = bitcast_ln95_fu_1338_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_528_p0 = v43_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_528_p0 = bitcast_ln75_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1))) begin
        grp_fu_528_p0 = v27_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0))) begin
        grp_fu_528_p0 = bitcast_ln56_fu_1278_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_528_p0 = v15_fu_1269_p1;
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_528_p1 = v96_reg_2397;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_528_p1 = v80_reg_2352;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_528_p1 = v63_reg_2307;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_528_p1 = v47_reg_2262;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0)))) begin
        grp_fu_528_p1 = v30_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_528_p1 = v19_reg_2177;
    end else begin
        grp_fu_528_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1801)) begin
            grp_fu_532_p0 = v82_fu_1388_p1;
        end else if ((1'b1 == ap_condition_1797)) begin
            grp_fu_532_p0 = bitcast_ln121_fu_1373_p1;
        end else if ((1'b1 == ap_condition_1793)) begin
            grp_fu_532_p0 = v65_fu_1358_p1;
        end else if ((1'b1 == ap_condition_1789)) begin
            grp_fu_532_p0 = bitcast_ln101_fu_1343_p1;
        end else if ((1'b1 == ap_condition_1785)) begin
            grp_fu_532_p0 = v49_fu_1328_p1;
        end else if ((1'b1 == ap_condition_1781)) begin
            grp_fu_532_p0 = bitcast_ln82_fu_1313_p1;
        end else if ((1'b1 == ap_condition_1777)) begin
            grp_fu_532_p0 = v32_fu_1298_p1;
        end else if ((1'b1 == ap_condition_1774)) begin
            grp_fu_532_p0 = bitcast_ln62_fu_1283_p1;
        end else begin
            grp_fu_532_p0 = 'bx;
        end
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_532_p1 = v85_reg_2357;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_532_p1 = v69_reg_2312;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_532_p1 = v52_reg_2267;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0)))) begin
        grp_fu_532_p1 = v36_reg_2252;
    end else begin
        grp_fu_532_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1817)) begin
            grp_fu_536_p0 = v104_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1813)) begin
            grp_fu_536_p0 = bitcast_ln147_fu_1499_p1;
        end else if ((1'b1 == ap_condition_1809)) begin
            grp_fu_536_p0 = v98_fu_1475_p1;
        end else if ((1'b1 == ap_condition_1805)) begin
            grp_fu_536_p0 = bitcast_ln140_fu_1461_p1;
        end else begin
            grp_fu_536_p0 = 'bx;
        end
    end else begin
        grp_fu_536_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_536_p1 = v107_reg_2437;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_536_p1 = v102_reg_2402;
    end else begin
        grp_fu_536_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_540_p0 = v101_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_540_p0 = v90_reg_2155;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_540_p0 = v68_reg_2143;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_540_p0 = v57_reg_2043;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_540_p0 = v35_reg_2037;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_540_p0 = v24_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_540_p0 = v11_fu_1006_p1;
    end else begin
        grp_fu_540_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_540_p1 = v18_reg_1833;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_540_p1 = v12_reg_1826;
    end else begin
        grp_fu_540_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_544_p0 = v90_reg_2155;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_544_p0 = v79_reg_2087;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_544_p0 = v57_reg_2043;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_544_p0 = v46_fu_1106_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_544_p0 = v24_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_544_p0 = v11_fu_1006_p1;
    end else begin
        grp_fu_544_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_544_p1 = v12_reg_1826;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_544_p1 = v18_reg_1833;
    end else begin
        grp_fu_544_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_548_p0 = v101_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_548_p0 = v79_reg_2087;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_548_p0 = v68_fu_1179_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_548_p0 = v46_fu_1106_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_548_p0 = v35_fu_1081_p1;
    end else begin
        grp_fu_548_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_548_p1 = v18_reg_1833;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_548_p1 = v12_reg_1826;
    end else begin
        grp_fu_548_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v224_address0_local = p_cast22_fu_1131_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v224_address0_local = p_cast20_fu_1089_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v224_address0_local = p_cast18_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_address0_local = p_cast17_fu_979_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v224_address0_local = p_cast15_fu_887_p1;
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
            v224_address1_local = p_cast23_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v224_address1_local = p_cast21_fu_1102_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v224_address1_local = p_cast19_fu_1016_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_address1_local = p_cast16_fu_975_p1;
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
        v228_3_ce0_local = 1'b1;
    end else begin
        v228_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_3_ce1_local = 1'b1;
    end else begin
        v228_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_address0_local = v229_0_addr_13_reg_2484_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address0_local = v229_0_addr_12_reg_2212_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_17_reg_2222_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_11_reg_2123_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_16_reg_2128_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_10_reg_2011_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = v229_0_addr_15_reg_2016_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = v229_0_addr_9_reg_1903_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address0_local = v229_0_addr_14_reg_1908_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address0_local = zext_ln147_fu_1426_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address0_local = zext_ln134_fu_1263_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address0_local = zext_ln121_fu_1248_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address0_local = zext_ln108_fu_1173_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address0_local = zext_ln95_fu_1163_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address0_local = zext_ln82_fu_1069_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address0_local = zext_ln69_fu_1059_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address0_local = zext_ln56_fu_969_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address0_local = zext_ln42_fu_958_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_address1_local = v229_0_addr_4_reg_2474_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address1_local = v229_0_addr_3_reg_2182_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_8_reg_2192_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_2_reg_2103_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = v229_0_addr_7_reg_2108_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = v229_0_addr_1_reg_1991_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = v229_0_addr_6_reg_1996_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = v229_0_addr_reg_1872_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address1_local = v229_0_addr_5_reg_1877_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_address1_local = zext_ln140_1_fu_1421_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address1_local = zext_ln127_1_fu_1234_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address1_local = zext_ln114_1_fu_1219_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address1_local = zext_ln101_1_fu_1153_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address1_local = zext_ln88_1_fu_1143_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address1_local = zext_ln75_1_fu_1049_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address1_local = zext_ln62_1_fu_1039_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_0_address1_local = zext_ln49_1_fu_944_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_0_address1_local = zext_ln34_1_fu_933_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_d0_local = bitcast_ln152_1_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d0_local = bitcast_ln126_1_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln139_fu_1562_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln100_1_fu_1532_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d0_local = bitcast_ln113_fu_1518_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d0_local = bitcast_ln74_1_fu_1484_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d0_local = bitcast_ln87_fu_1470_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d0_local = bitcast_ln48_reg_2468;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_d0_local = bitcast_ln61_fu_1446_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_0_d1_local = bitcast_ln146_1_fu_1587_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d1_local = bitcast_ln120_1_fu_1567_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d1_local = bitcast_ln133_fu_1557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d1_local = bitcast_ln94_1_fu_1527_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d1_local = bitcast_ln107_fu_1513_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_d1_local = bitcast_ln68_1_fu_1479_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d1_local = bitcast_ln81_fu_1465_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_d1_local = bitcast_ln41_reg_2462;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_0_d1_local = bitcast_ln55_fu_1441_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_address0_local = v229_1_addr_17_reg_2489_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_16_reg_2232_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_15_reg_2138_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_13_reg_2227_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_14_reg_2026_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_12_reg_2133_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = v229_1_addr_9_reg_1913_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = v229_1_addr_11_reg_2021_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address0_local = zext_ln147_fu_1426_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address0_local = v229_1_addr_10_reg_1918_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address0_local = zext_ln121_fu_1248_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address0_local = zext_ln134_fu_1263_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address0_local = zext_ln95_fu_1163_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address0_local = zext_ln108_fu_1173_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address0_local = zext_ln69_fu_1059_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address0_local = zext_ln82_fu_1069_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address0_local = zext_ln56_fu_969_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address0_local = zext_ln42_fu_958_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_address1_local = v229_1_addr_8_reg_2479_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_7_reg_2202_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_6_reg_2118_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_4_reg_2197_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_5_reg_2006_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_3_reg_2113_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = v229_1_addr_reg_1882_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = v229_1_addr_2_reg_2001_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address1_local = zext_ln140_1_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_address1_local = v229_1_addr_1_reg_1887_pp0_iter1_reg;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address1_local = zext_ln114_1_fu_1219_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address1_local = zext_ln127_1_fu_1234_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address1_local = zext_ln88_1_fu_1143_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address1_local = zext_ln101_1_fu_1153_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address1_local = zext_ln62_1_fu_1039_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address1_local = zext_ln75_1_fu_1049_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0))) begin
        v229_1_address1_local = zext_ln49_1_fu_944_p1;
    end else if (((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1))) begin
        v229_1_address1_local = zext_ln34_1_fu_933_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)& (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln32_reg_1749 == 1'd0)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd1)) | ((icmp_ln32_reg_1718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln32_reg_1749 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_d0_local = bitcast_ln152_fu_1602_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d0_local = bitcast_ln126_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d0_local = bitcast_ln100_fu_1552_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d0_local = bitcast_ln139_1_fu_1542_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d0_local = bitcast_ln74_fu_1508_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d0_local = bitcast_ln113_1_fu_1494_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d0_local = bitcast_ln48_reg_2468;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d0_local = bitcast_ln87_1_fu_1456_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_d0_local = bitcast_ln61_1_fu_1436_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_1_d1_local = bitcast_ln146_fu_1597_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d1_local = bitcast_ln120_fu_1577_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d1_local = bitcast_ln94_fu_1547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d1_local = bitcast_ln133_1_fu_1537_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d1_local = bitcast_ln68_fu_1503_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_d1_local = bitcast_ln107_1_fu_1489_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d1_local = bitcast_ln41_reg_2462;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_d1_local = bitcast_ln81_1_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_1_d1_local = bitcast_ln55_1_fu_1431_p1;
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter1_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
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
assign add_ln101_fu_1149_p2 = (mul_ln101_reg_2054 + zext_ln38_reg_1861);
assign add_ln108_fu_1169_p2 = (mul_ln101_reg_2054 + zext_ln45_reg_1892);
assign add_ln114_fu_1215_p2 = (mul_ln114_reg_2081 + zext_ln38_reg_1861);
assign add_ln121_fu_1244_p2 = (mul_ln114_reg_2081 + zext_ln45_reg_1892);
assign add_ln127_fu_1230_p2 = (mul_ln127_reg_2149 + zext_ln38_reg_1861);
assign add_ln134_fu_1259_p2 = (mul_ln127_reg_2149 + zext_ln45_reg_1892);
assign add_ln140_fu_1225_p2 = (mul_ln140_fu_1209_p2 + zext_ln38_reg_1861);
assign add_ln147_fu_1254_p2 = (mul_ln140_fu_1209_p2 + zext_ln45_reg_1892);
assign add_ln32_1_fu_693_p2 = (ap_sig_allocacmp_v6_load + 8'd9);
assign add_ln32_fu_681_p2 = (ap_sig_allocacmp_indvar_flatten48_load + 12'd1);
assign add_ln33_fu_840_p2 = (select_ln32_fu_741_p3 + 8'd2);
assign add_ln34_fu_928_p2 = (mul_ln34_reg_1769 + zext_ln38_fu_925_p1);
assign add_ln38_fu_798_p2 = (mul_ln38_1 + zext_ln38_1_fu_794_p1);
assign add_ln42_fu_953_p2 = (mul_ln34_reg_1769 + zext_ln45_fu_950_p1);
assign add_ln45_fu_830_p2 = (mul_ln38_1 + zext_ln45_1_fu_826_p1);
assign add_ln49_fu_939_p2 = (mul_ln49_reg_1810 + zext_ln38_fu_925_p1);
assign add_ln56_fu_964_p2 = (mul_ln49_reg_1810 + zext_ln45_fu_950_p1);
assign add_ln62_fu_1035_p2 = (mul_ln62_reg_1845 + zext_ln38_reg_1861);
assign add_ln69_fu_1055_p2 = (mul_ln62_reg_1845 + zext_ln45_reg_1892);
assign add_ln75_fu_1045_p2 = (mul_ln75_reg_1938 + zext_ln38_reg_1861);
assign add_ln82_fu_1065_p2 = (mul_ln75_reg_1938 + zext_ln45_reg_1892);
assign add_ln88_fu_1139_p2 = (mul_ln88_reg_1975 + zext_ln38_reg_1861);
assign add_ln95_fu_1159_p2 = (mul_ln88_reg_1975 + zext_ln45_reg_1892);
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
    ap_condition_1774 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd0));
end
always @ (*) begin
    ap_condition_1777 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln32_reg_1749 == 1'd1));
end
always @ (*) begin
    ap_condition_1781 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1785 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1789 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1793 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1797 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1801 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1805 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1809 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln32_reg_1749_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1813 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1817 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln32_reg_1749_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_1_fu_1532_p1 = reg_609;
assign bitcast_ln100_fu_1552_p1 = reg_609;
assign bitcast_ln101_fu_1343_p1 = reg_597;
assign bitcast_ln107_1_fu_1489_p1 = reg_629;
assign bitcast_ln107_fu_1513_p1 = reg_629;
assign bitcast_ln108_fu_1363_p1 = reg_601;
assign bitcast_ln113_1_fu_1494_p1 = reg_633;
assign bitcast_ln113_fu_1518_p1 = reg_633;
assign bitcast_ln114_fu_1368_p1 = reg_565;
assign bitcast_ln120_1_fu_1567_p1 = reg_637;
assign bitcast_ln120_fu_1577_p1 = reg_637;
assign bitcast_ln121_fu_1373_p1 = reg_569;
assign bitcast_ln126_1_fu_1572_p1 = reg_641;
assign bitcast_ln126_fu_1582_p1 = reg_641;
assign bitcast_ln127_fu_1393_p1 = reg_557;
assign bitcast_ln133_1_fu_1537_p1 = reg_645;
assign bitcast_ln133_fu_1557_p1 = reg_645;
assign bitcast_ln134_fu_1398_p1 = reg_561;
assign bitcast_ln139_1_fu_1542_p1 = reg_621;
assign bitcast_ln139_fu_1562_p1 = reg_621;
assign bitcast_ln140_fu_1461_p1 = v229_0_load_16_reg_2494;
assign bitcast_ln146_1_fu_1587_p1 = reg_649;
assign bitcast_ln146_fu_1597_p1 = reg_649;
assign bitcast_ln147_fu_1499_p1 = v229_0_load_17_reg_2499;
assign bitcast_ln152_1_fu_1592_p1 = reg_653;
assign bitcast_ln152_fu_1602_p1 = reg_653;
assign bitcast_ln41_fu_1413_p1 = grp_fu_550_p_dout0;
assign bitcast_ln48_fu_1417_p1 = grp_fu_554_p_dout0;
assign bitcast_ln49_fu_1273_p1 = reg_557;
assign bitcast_ln55_1_fu_1431_p1 = reg_605;
assign bitcast_ln55_fu_1441_p1 = reg_605;
assign bitcast_ln56_fu_1278_p1 = reg_561;
assign bitcast_ln61_1_fu_1436_p1 = reg_609;
assign bitcast_ln61_fu_1446_p1 = reg_609;
assign bitcast_ln62_fu_1283_p1 = reg_573;
assign bitcast_ln68_1_fu_1479_p1 = reg_613;
assign bitcast_ln68_fu_1503_p1 = reg_613;
assign bitcast_ln69_fu_1303_p1 = reg_577;
assign bitcast_ln74_1_fu_1484_p1 = reg_617;
assign bitcast_ln74_fu_1508_p1 = reg_617;
assign bitcast_ln75_fu_1308_p1 = reg_581;
assign bitcast_ln81_1_fu_1451_p1 = reg_621;
assign bitcast_ln81_fu_1465_p1 = reg_621;
assign bitcast_ln82_fu_1313_p1 = reg_585;
assign bitcast_ln87_1_fu_1456_p1 = reg_625;
assign bitcast_ln87_fu_1470_p1 = reg_625;
assign bitcast_ln88_fu_1333_p1 = reg_589;
assign bitcast_ln94_1_fu_1527_p1 = reg_605;
assign bitcast_ln94_fu_1547_p1 = reg_605;
assign bitcast_ln95_fu_1338_p1 = reg_593;
assign empty_101_fu_1112_p2 = (lshr_ln32_7_reg_1755 + 7'd3);
assign empty_102_fu_906_p2 = (select_ln32_1_reg_1732 + 8'd7);
assign empty_108_fu_1197_p2 = (lshr_ln32_7_reg_1755 + 7'd4);
assign empty_81_fu_756_p2 = (select_ln32_1_reg_1732 + 8'd1);
assign empty_87_fu_891_p2 = (lshr_ln32_7_reg_1755 + 7'd1);
assign empty_88_fu_775_p2 = (select_ln32_1_reg_1732 + 8'd3);
assign empty_94_fu_1020_p2 = (lshr_ln32_7_reg_1755 + 7'd2);
assign empty_95_fu_860_p2 = (select_ln32_1_reg_1732 + 8'd5);
assign grp_fu_1607_p0 = grp_fu_1607_p00;
assign grp_fu_1607_p00 = select_ln32_1_fu_705_p3;
assign grp_fu_1607_p1 = 16'd190;
assign grp_fu_1615_p0 = grp_fu_1615_p00;
assign grp_fu_1615_p00 = empty_81_fu_756_p2;
assign grp_fu_1615_p1 = 16'd190;
assign grp_fu_1623_p1 = 8'd2;
assign grp_fu_1623_p2 = 16'd190;
assign grp_fu_1632_p0 = grp_fu_1632_p00;
assign grp_fu_1632_p00 = empty_88_fu_775_p2;
assign grp_fu_1632_p1 = 16'd190;
assign grp_fu_1639_p1 = 8'd4;
assign grp_fu_1639_p2 = 16'd190;
assign grp_fu_1648_p0 = grp_fu_1648_p00;
assign grp_fu_1648_p00 = empty_95_fu_860_p2;
assign grp_fu_1648_p1 = 16'd190;
assign grp_fu_1655_p1 = 8'd6;
assign grp_fu_1655_p2 = 16'd190;
assign grp_fu_1663_p0 = grp_fu_1663_p00;
assign grp_fu_1663_p00 = empty_102_fu_906_p2;
assign grp_fu_1663_p1 = 16'd190;
assign grp_fu_1670_p1 = 8'd8;
assign grp_fu_1670_p2 = 16'd190;
assign grp_fu_550_p_ce = 1'b1;
assign grp_fu_550_p_din0 = grp_fu_524_p0;
assign grp_fu_550_p_din1 = grp_fu_524_p1;
assign grp_fu_550_p_opcode = 2'd0;
assign grp_fu_554_p_ce = 1'b1;
assign grp_fu_554_p_din0 = grp_fu_528_p0;
assign grp_fu_554_p_din1 = grp_fu_528_p1;
assign grp_fu_554_p_opcode = 2'd0;
assign grp_fu_558_p_ce = 1'b1;
assign grp_fu_558_p_din0 = grp_fu_532_p0;
assign grp_fu_558_p_din1 = grp_fu_532_p1;
assign grp_fu_558_p_opcode = 2'd0;
assign grp_fu_562_p_ce = 1'b1;
assign grp_fu_562_p_din0 = grp_fu_536_p0;
assign grp_fu_562_p_din1 = grp_fu_536_p1;
assign grp_fu_562_p_opcode = 2'd0;
assign grp_fu_566_p_ce = 1'b1;
assign grp_fu_566_p_din0 = grp_fu_540_p0;
assign grp_fu_566_p_din1 = grp_fu_540_p1;
assign grp_fu_570_p_ce = 1'b1;
assign grp_fu_570_p_din0 = grp_fu_544_p0;
assign grp_fu_570_p_din1 = grp_fu_544_p1;
assign grp_fu_574_p_ce = 1'b1;
assign grp_fu_574_p_din0 = grp_fu_548_p0;
assign grp_fu_574_p_din1 = grp_fu_548_p1;
assign icmp_ln32_fu_675_p2 = ((ap_sig_allocacmp_indvar_flatten48_load == 12'd2200) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_699_p2 = ((ap_sig_allocacmp_v7_load < 8'd220) ? 1'b1 : 1'b0);
assign mul_ln101_fu_1096_p0 = mul_ln101_fu_1096_p00;
assign mul_ln101_fu_1096_p00 = tmp_2_reg_1821;
assign mul_ln101_fu_1096_p1 = 15'd220;
assign mul_ln114_fu_1121_p0 = mul_ln114_fu_1121_p00;
assign mul_ln114_fu_1121_p00 = empty_101_fu_1112_p2;
assign mul_ln114_fu_1121_p1 = 15'd220;
assign mul_ln127_fu_1187_p0 = mul_ln127_fu_1187_p00;
assign mul_ln127_fu_1187_p00 = tmp_3_reg_1856;
assign mul_ln127_fu_1187_p1 = 15'd220;
assign mul_ln140_fu_1209_p0 = mul_ln140_fu_1209_p00;
assign mul_ln140_fu_1209_p00 = empty_108_reg_2161;
assign mul_ln140_fu_1209_p1 = 15'd220;
assign mul_ln34_fu_750_p0 = mul_ln34_fu_750_p00;
assign mul_ln34_fu_750_p00 = lshr_ln32_7_reg_1755;
assign mul_ln34_fu_750_p1 = 15'd220;
assign mul_ln49_fu_854_p0 = mul_ln49_fu_854_p00;
assign mul_ln49_fu_854_p00 = tmp_s_reg_1780;
assign mul_ln49_fu_854_p1 = 15'd220;
assign mul_ln62_fu_900_p0 = mul_ln62_fu_900_p00;
assign mul_ln62_fu_900_p00 = empty_87_fu_891_p2;
assign mul_ln62_fu_900_p1 = 15'd220;
assign mul_ln75_fu_986_p0 = mul_ln75_fu_986_p00;
assign mul_ln75_fu_986_p00 = tmp_1_reg_1790;
assign mul_ln75_fu_986_p1 = 15'd220;
assign mul_ln88_fu_1029_p0 = mul_ln88_fu_1029_p00;
assign mul_ln88_fu_1029_p00 = empty_94_fu_1020_p2;
assign mul_ln88_fu_1029_p1 = 15'd220;
assign or_ln42_7_fu_818_p3 = {{tmp_4_fu_808_p4}, {1'd1}};
assign p_cast15_fu_887_p1 = grp_fu_1607_p3;
assign p_cast16_fu_975_p1 = grp_fu_1615_p3;
assign p_cast17_fu_979_p1 = grp_fu_1623_p4;
assign p_cast18_fu_1012_p1 = empty_90_reg_1933;
assign p_cast19_fu_1016_p1 = grp_fu_1639_p4;
assign p_cast20_fu_1089_p1 = empty_97_reg_1981;
assign p_cast21_fu_1102_p1 = empty_100_reg_1986;
assign p_cast22_fu_1131_p1 = empty_104_reg_2065;
assign p_cast23_fu_1135_p1 = empty_107_reg_2070;
assign select_ln32_1_fu_705_p3 = ((icmp_ln33_fu_699_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v6_load : add_ln32_1_fu_693_p2);
assign select_ln32_fu_741_p3 = ((icmp_ln33_reg_1727[0:0] == 1'b1) ? v7_load_reg_1722 : 8'd0);
assign select_ln34_fu_992_p3 = ((trunc_ln32_reg_1749[0:0] == 1'b1) ? v229_1_q1 : v229_0_q1);
assign select_ln42_fu_999_p3 = ((trunc_ln32_reg_1749[0:0] == 1'b1) ? v229_1_q0 : v229_0_q0);
assign tmp_4_fu_808_p4 = {{select_ln32_fu_741_p3[7:1]}};
assign trunc_ln32_fu_717_p1 = select_ln32_1_fu_705_p3[0:0];
assign v101_fu_1202_p1 = v224_q1;
assign v104_fu_1523_p1 = v229_1_load_9_reg_2509;
assign v11_fu_1006_p1 = reg_552;
assign v12_fu_879_p1 = v228_3_q1;
assign v15_fu_1269_p1 = select_ln42_reg_1949;
assign v18_fu_883_p1 = v228_3_q0;
assign v21_fu_1288_p1 = reg_565;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_3_address0 = zext_ln45_2_fu_835_p1;
assign v228_3_address1 = zext_ln38_2_fu_803_p1;
assign v228_3_ce0 = v228_3_ce0_local;
assign v228_3_ce1 = v228_3_ce1_local;
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
assign v24_fu_1075_p1 = reg_552;
assign v27_fu_1293_p1 = reg_569;
assign v32_fu_1298_p1 = reg_581;
assign v35_fu_1081_p1 = v224_load_2_reg_1960;
assign v38_fu_1318_p1 = reg_585;
assign v43_fu_1323_p1 = reg_573;
assign v46_fu_1106_p1 = reg_552;
assign v49_fu_1328_p1 = reg_577;
assign v54_fu_1348_p1 = reg_597;
assign v57_fu_1085_p1 = v224_q1;
assign v60_fu_1353_p1 = reg_601;
assign v65_fu_1358_p1 = reg_589;
assign v68_fu_1179_p1 = reg_552;
assign v71_fu_1378_p1 = reg_593;
assign v76_fu_1383_p1 = reg_557;
assign v79_fu_1127_p1 = v224_q1;
assign v82_fu_1388_p1 = reg_561;
assign v87_fu_1403_p1 = reg_565;
assign v8_fu_1240_p1 = select_ln34_reg_1944;
assign v90_fu_1193_p1 = v224_q0;
assign v93_fu_1408_p1 = reg_569;
assign v98_fu_1475_p1 = v229_1_load_8_reg_2504;
assign zext_ln101_1_fu_1153_p1 = add_ln101_fu_1149_p2;
assign zext_ln108_fu_1173_p1 = add_ln108_fu_1169_p2;
assign zext_ln114_1_fu_1219_p1 = add_ln114_fu_1215_p2;
assign zext_ln121_fu_1248_p1 = add_ln121_fu_1244_p2;
assign zext_ln127_1_fu_1234_p1 = add_ln127_fu_1230_p2;
assign zext_ln134_fu_1263_p1 = add_ln134_fu_1259_p2;
assign zext_ln140_1_fu_1421_p1 = add_ln140_reg_2187;
assign zext_ln147_fu_1426_p1 = add_ln147_reg_2217;
assign zext_ln34_1_fu_933_p1 = add_ln34_fu_928_p2;
assign zext_ln38_1_fu_794_p1 = select_ln32_fu_741_p3;
assign zext_ln38_2_fu_803_p1 = add_ln38_fu_798_p2;
assign zext_ln38_fu_925_p1 = select_ln32_reg_1764;
assign zext_ln42_fu_958_p1 = add_ln42_fu_953_p2;
assign zext_ln45_1_fu_826_p1 = or_ln42_7_fu_818_p3;
assign zext_ln45_2_fu_835_p1 = add_ln45_fu_830_p2;
assign zext_ln45_fu_950_p1 = or_ln42_7_reg_1800;
assign zext_ln49_1_fu_944_p1 = add_ln49_fu_939_p2;
assign zext_ln56_fu_969_p1 = add_ln56_fu_964_p2;
assign zext_ln62_1_fu_1039_p1 = add_ln62_fu_1035_p2;
assign zext_ln69_fu_1059_p1 = add_ln69_fu_1055_p2;
assign zext_ln75_1_fu_1049_p1 = add_ln75_fu_1045_p2;
assign zext_ln82_fu_1069_p1 = add_ln82_fu_1065_p2;
assign zext_ln88_1_fu_1143_p1 = add_ln88_fu_1139_p2;
assign zext_ln95_fu_1163_p1 = add_ln95_fu_1159_p2;
always @ (posedge ap_clk) begin
    or_ln42_7_reg_1800[0] <= 1'b1;
    zext_ln38_reg_1861[14:8] <= 7'b0000000;
    zext_ln45_reg_1892[0] <= 1'b1;
    zext_ln45_reg_1892[14:8] <= 7'b0000000;
end
endmodule 