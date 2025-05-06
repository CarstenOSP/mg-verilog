
module kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_216 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,zext_ln32_8,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,mul_ln38_7,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,grp_fu_575_p_din0,grp_fu_575_p_din1,grp_fu_575_p_opcode,grp_fu_575_p_dout0,grp_fu_575_p_ce,grp_fu_579_p_din0,grp_fu_579_p_din1,grp_fu_579_p_dout0,grp_fu_579_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 18'd1;
parameter    ap_ST_fsm_pp0_stage1 = 18'd2;
parameter    ap_ST_fsm_pp0_stage2 = 18'd4;
parameter    ap_ST_fsm_pp0_stage3 = 18'd8;
parameter    ap_ST_fsm_pp0_stage4 = 18'd16;
parameter    ap_ST_fsm_pp0_stage5 = 18'd32;
parameter    ap_ST_fsm_pp0_stage6 = 18'd64;
parameter    ap_ST_fsm_pp0_stage7 = 18'd128;
parameter    ap_ST_fsm_pp0_stage8 = 18'd256;
parameter    ap_ST_fsm_pp0_stage9 = 18'd512;
parameter    ap_ST_fsm_pp0_stage10 = 18'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 18'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 18'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 18'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 18'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 18'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 18'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [13:0] zext_ln32_8;
output  [13:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [13:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
input  [15:0] mul_ln38_7;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [31:0] grp_fu_575_p_din0;
output  [31:0] grp_fu_575_p_din1;
output  [1:0] grp_fu_575_p_opcode;
input  [31:0] grp_fu_575_p_dout0;
output   grp_fu_575_p_ce;
output  [31:0] grp_fu_579_p_din0;
output  [31:0] grp_fu_579_p_din1;
input  [31:0] grp_fu_579_p_dout0;
output   grp_fu_579_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_subdone;
reg   [0:0] icmp_ln32_reg_1425;
reg    ap_condition_exit_pp0_iter0_stage17;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_375;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_379;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_384;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_388;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] reg_393;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] reg_397;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_402;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_406;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [31:0] reg_411;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [31:0] reg_416;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [31:0] reg_421;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [31:0] reg_426;
wire    ap_block_pp0_stage17_11001;
reg   [31:0] reg_431;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_436;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_441;
reg   [31:0] reg_445;
reg   [31:0] reg_449;
wire   [0:0] icmp_ln32_fu_471_p2;
reg   [0:0] icmp_ln32_reg_1425_pp0_iter1_reg;
reg   [7:0] v7_load_reg_1429;
wire   [0:0] icmp_ln33_fu_495_p2;
reg   [0:0] icmp_ln33_reg_1434;
wire   [7:0] select_ln32_1_fu_501_p3;
reg   [7:0] select_ln32_1_reg_1439;
wire   [7:0] empty_224_fu_509_p2;
reg   [7:0] empty_224_reg_1453;
wire   [15:0] mul_ln34_fu_568_p2;
reg   [15:0] mul_ln34_reg_1465;
wire   [7:0] empty_227_fu_608_p2;
reg   [7:0] empty_227_reg_1476;
wire   [7:0] empty_230_fu_613_p2;
reg   [7:0] empty_230_reg_1483;
wire   [15:0] zext_ln38_fu_618_p1;
reg   [15:0] zext_ln38_reg_1490;
wire   [15:0] zext_ln45_fu_650_p1;
reg   [15:0] zext_ln45_reg_1508;
wire   [15:0] mul_ln49_fu_678_p2;
reg   [15:0] mul_ln49_reg_1526;
wire   [7:0] empty_233_fu_752_p2;
reg   [7:0] empty_233_reg_1542;
wire   [7:0] empty_236_fu_757_p2;
reg   [7:0] empty_236_reg_1549;
reg   [15:0] v229_addr_reg_1556;
reg   [31:0] v228_load_reg_1561;
reg   [15:0] v229_addr_9_reg_1566;
wire   [31:0] v18_fu_780_p1;
reg   [31:0] v18_reg_1572;
wire   [31:0] v11_fu_784_p1;
reg   [31:0] v11_reg_1577;
wire   [15:0] mul_ln62_fu_792_p2;
reg   [15:0] mul_ln62_reg_1582;
reg   [31:0] v224_3_load_3_reg_1588;
wire   [7:0] empty_239_fu_866_p2;
reg   [7:0] empty_239_reg_1603;
wire   [7:0] empty_242_fu_871_p2;
reg   [7:0] empty_242_reg_1610;
reg   [15:0] v229_addr_1_reg_1617;
wire   [31:0] v12_fu_885_p1;
reg   [31:0] v12_reg_1622;
reg   [15:0] v229_addr_10_reg_1627;
wire   [15:0] mul_ln75_fu_901_p2;
reg   [15:0] mul_ln75_reg_1633;
reg   [31:0] v224_3_load_4_reg_1639;
reg   [31:0] v224_3_load_5_reg_1644;
wire   [7:0] empty_245_fu_975_p2;
reg   [7:0] empty_245_reg_1659;
reg   [15:0] v229_addr_2_reg_1666;
reg   [15:0] v229_addr_11_reg_1671;
wire   [31:0] v24_fu_998_p1;
reg   [31:0] v24_reg_1677;
wire   [15:0] mul_ln88_fu_1006_p2;
reg   [15:0] mul_ln88_reg_1682;
reg   [31:0] v224_3_load_7_reg_1688;
reg   [15:0] v229_addr_3_reg_1698;
reg   [15:0] v229_addr_3_reg_1698_pp0_iter1_reg;
reg   [15:0] v229_addr_12_reg_1703;
reg   [15:0] v229_addr_12_reg_1703_pp0_iter1_reg;
reg   [31:0] v229_load_5_reg_1708;
wire   [15:0] mul_ln101_fu_1067_p2;
reg   [15:0] mul_ln101_reg_1713;
reg   [31:0] v224_3_load_8_reg_1719;
reg   [15:0] v229_addr_4_reg_1724;
reg   [15:0] v229_addr_4_reg_1724_pp0_iter1_reg;
reg   [15:0] v229_addr_13_reg_1729;
reg   [15:0] v229_addr_13_reg_1729_pp0_iter1_reg;
reg   [31:0] v229_load_6_reg_1734;
reg   [31:0] v229_load_7_reg_1739;
wire   [31:0] v35_fu_1091_p1;
reg   [31:0] v35_reg_1744;
wire   [15:0] mul_ln114_fu_1099_p2;
reg   [15:0] mul_ln114_reg_1749;
reg   [15:0] v229_addr_5_reg_1755;
reg   [15:0] v229_addr_5_reg_1755_pp0_iter1_reg;
wire   [31:0] v8_fu_1114_p1;
reg   [15:0] v229_addr_14_reg_1765;
reg   [15:0] v229_addr_14_reg_1765_pp0_iter1_reg;
reg   [31:0] v229_load_9_reg_1770;
wire   [15:0] mul_ln127_fu_1131_p2;
reg   [15:0] mul_ln127_reg_1775;
reg   [15:0] v229_addr_6_reg_1781;
reg   [15:0] v229_addr_6_reg_1781_pp0_iter1_reg;
reg   [15:0] v229_addr_15_reg_1787;
reg   [15:0] v229_addr_15_reg_1787_pp0_iter1_reg;
wire   [31:0] v15_fu_1155_p1;
reg   [31:0] v229_load_11_reg_1797;
wire   [31:0] v46_fu_1160_p1;
reg   [31:0] v46_reg_1802;
reg   [15:0] v229_addr_7_reg_1807;
reg   [15:0] v229_addr_7_reg_1807_pp0_iter1_reg;
wire   [15:0] add_ln140_fu_1182_p2;
reg   [15:0] add_ln140_reg_1813;
reg   [15:0] v229_addr_16_reg_1818;
reg   [15:0] v229_addr_16_reg_1818_pp0_iter1_reg;
wire   [15:0] add_ln147_fu_1196_p2;
reg   [15:0] add_ln147_reg_1823;
wire   [31:0] v21_fu_1201_p1;
reg   [31:0] v229_load_13_reg_1833;
reg   [15:0] v229_addr_8_reg_1838;
reg   [15:0] v229_addr_8_reg_1838_pp0_iter1_reg;
reg   [15:0] v229_addr_17_reg_1844;
reg   [15:0] v229_addr_17_reg_1844_pp0_iter1_reg;
wire   [31:0] v27_fu_1214_p1;
reg   [31:0] v229_load_15_reg_1854;
wire   [31:0] v57_fu_1219_p1;
reg   [31:0] v57_reg_1859;
wire   [31:0] v32_fu_1223_p1;
reg   [31:0] v229_load_17_reg_1869;
wire   [31:0] v38_fu_1228_p1;
wire   [31:0] v68_fu_1232_p1;
reg   [31:0] v68_reg_1879;
wire   [31:0] v43_fu_1236_p1;
wire   [31:0] v49_fu_1245_p1;
wire   [31:0] v79_fu_1249_p1;
reg   [31:0] v79_reg_1894;
wire   [31:0] v54_fu_1259_p1;
wire   [31:0] v60_fu_1269_p1;
wire   [31:0] v90_fu_1273_p1;
reg   [31:0] v90_reg_1909;
wire   [31:0] v65_fu_1282_p1;
wire   [31:0] v71_fu_1292_p1;
wire   [31:0] v101_fu_1296_p1;
reg   [31:0] v101_reg_1924;
wire   [31:0] v76_fu_1305_p1;
wire   [31:0] v82_fu_1310_p1;
reg   [31:0] v91_reg_1939;
wire   [31:0] v87_fu_1314_p1;
reg   [31:0] v96_reg_1949;
reg   [31:0] v64_reg_1954;
wire   [31:0] v93_fu_1319_p1;
reg   [31:0] v102_reg_1964;
reg   [31:0] v70_reg_1969;
wire   [31:0] v98_fu_1323_p1;
reg   [31:0] v107_reg_1979;
reg   [31:0] v75_reg_1984;
wire   [31:0] v104_fu_1328_p1;
reg   [31:0] v81_reg_1994;
reg   [31:0] v86_reg_1999;
reg   [31:0] v92_reg_2004;
reg   [31:0] v97_reg_2009;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] p_cast17_fu_563_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast18_fu_603_p1;
wire   [63:0] zext_ln38_1_fu_627_p1;
wire   [63:0] zext_ln45_1_fu_659_p1;
wire   [63:0] p_cast19_fu_713_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast20_fu_747_p1;
wire   [63:0] zext_ln34_fu_766_p1;
wire   [63:0] zext_ln42_fu_775_p1;
wire   [63:0] p_cast21_fu_827_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast22_fu_861_p1;
wire   [63:0] zext_ln49_fu_880_p1;
wire   [63:0] zext_ln56_fu_893_p1;
wire   [63:0] p_cast23_fu_936_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast24_fu_970_p1;
wire   [63:0] zext_ln62_fu_984_p1;
wire   [63:0] zext_ln69_fu_993_p1;
wire   [63:0] p_cast25_fu_1041_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln75_fu_1050_p1;
wire   [63:0] zext_ln82_fu_1059_p1;
wire   [63:0] zext_ln88_fu_1077_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln95_fu_1086_p1;
wire   [63:0] zext_ln101_fu_1109_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln108_fu_1123_p1;
wire   [63:0] zext_ln114_fu_1141_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln121_fu_1150_p1;
wire   [63:0] zext_ln127_fu_1177_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln134_fu_1191_p1;
wire   [63:0] zext_ln140_fu_1206_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln147_fu_1210_p1;
reg   [7:0] v7_fu_84;
wire   [7:0] add_ln33_fu_664_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v6_fu_88;
reg   [7:0] ap_sig_allocacmp_v6_load;
reg   [11:0] indvar_flatten48_fu_92;
wire   [11:0] add_ln32_fu_477_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten48_load;
reg    v224_3_ce1_local;
reg   [13:0] v224_3_address1_local;
reg    v224_3_ce0_local;
reg   [13:0] v224_3_address0_local;
reg    v228_ce1_local;
reg    v228_ce0_local;
reg    v229_ce1_local;
reg   [15:0] v229_address1_local;
reg    v229_ce0_local;
reg   [15:0] v229_address0_local;
reg    v229_we1_local;
reg   [31:0] v229_d1_local;
wire   [31:0] bitcast_ln41_fu_1240_p1;
wire    ap_block_pp0_stage14;
wire   [31:0] bitcast_ln48_fu_1254_p1;
wire    ap_block_pp0_stage15;
wire   [31:0] bitcast_ln55_fu_1264_p1;
wire    ap_block_pp0_stage16;
wire   [31:0] bitcast_ln61_fu_1277_p1;
wire    ap_block_pp0_stage17;
wire   [31:0] bitcast_ln68_fu_1287_p1;
wire   [31:0] bitcast_ln74_fu_1300_p1;
wire   [31:0] bitcast_ln81_fu_1332_p1;
wire    ap_block_pp0_stage11;
reg    v229_we0_local;
reg   [31:0] v229_d0_local;
wire   [31:0] bitcast_ln87_fu_1337_p1;
wire   [31:0] bitcast_ln94_fu_1342_p1;
wire    ap_block_pp0_stage12;
wire   [31:0] bitcast_ln100_fu_1347_p1;
wire   [31:0] bitcast_ln107_fu_1351_p1;
wire    ap_block_pp0_stage13;
wire   [31:0] bitcast_ln113_fu_1355_p1;
wire   [31:0] bitcast_ln120_fu_1359_p1;
wire   [31:0] bitcast_ln126_fu_1363_p1;
wire   [31:0] bitcast_ln133_fu_1367_p1;
wire   [31:0] bitcast_ln139_fu_1371_p1;
wire   [31:0] bitcast_ln146_fu_1375_p1;
wire   [31:0] bitcast_ln152_fu_1380_p1;
reg   [31:0] grp_fu_367_p0;
reg   [31:0] grp_fu_367_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
wire   [7:0] add_ln32_1_fu_489_p2;
wire   [11:0] tmp_fu_541_p3;
wire   [13:0] p_shl1_fu_534_p3;
wire   [13:0] p_shl93_fu_548_p1;
wire   [13:0] empty_fu_552_p2;
wire   [13:0] empty_223_fu_558_p2;
wire   [7:0] mul_ln34_fu_568_p0;
wire   [8:0] mul_ln34_fu_568_p1;
wire   [11:0] tmp_3_fu_581_p3;
wire   [13:0] p_shl2_fu_574_p3;
wire   [13:0] p_shl91_fu_588_p1;
wire   [13:0] empty_225_fu_592_p2;
wire   [13:0] empty_226_fu_598_p2;
wire   [7:0] select_ln32_fu_525_p3;
wire   [15:0] add_ln38_fu_622_p2;
wire   [6:0] tmp_s_fu_632_p4;
wire   [7:0] or_ln42_7_fu_642_p3;
wire   [15:0] add_ln45_fu_654_p2;
wire   [7:0] mul_ln49_fu_678_p0;
wire   [8:0] mul_ln49_fu_678_p1;
wire   [11:0] tmp_4_fu_691_p3;
wire   [13:0] p_shl3_fu_684_p3;
wire   [13:0] p_shl89_fu_698_p1;
wire   [13:0] empty_228_fu_702_p2;
wire   [13:0] empty_229_fu_708_p2;
wire   [11:0] tmp_5_fu_725_p3;
wire   [13:0] p_shl4_fu_718_p3;
wire   [13:0] p_shl87_fu_732_p1;
wire   [13:0] empty_231_fu_736_p2;
wire   [13:0] empty_232_fu_742_p2;
wire   [15:0] add_ln34_fu_762_p2;
wire   [15:0] add_ln42_fu_771_p2;
wire   [7:0] mul_ln62_fu_792_p0;
wire   [8:0] mul_ln62_fu_792_p1;
wire   [11:0] tmp_6_fu_805_p3;
wire   [13:0] p_shl5_fu_798_p3;
wire   [13:0] p_shl85_fu_812_p1;
wire   [13:0] empty_234_fu_816_p2;
wire   [13:0] empty_235_fu_822_p2;
wire   [11:0] tmp_7_fu_839_p3;
wire   [13:0] p_shl6_fu_832_p3;
wire   [13:0] p_shl83_fu_846_p1;
wire   [13:0] empty_237_fu_850_p2;
wire   [13:0] empty_238_fu_856_p2;
wire   [15:0] add_ln49_fu_876_p2;
wire   [15:0] add_ln56_fu_889_p2;
wire   [7:0] mul_ln75_fu_901_p0;
wire   [8:0] mul_ln75_fu_901_p1;
wire   [11:0] tmp_8_fu_914_p3;
wire   [13:0] p_shl7_fu_907_p3;
wire   [13:0] p_shl81_fu_921_p1;
wire   [13:0] empty_240_fu_925_p2;
wire   [13:0] empty_241_fu_931_p2;
wire   [11:0] tmp_9_fu_948_p3;
wire   [13:0] p_shl8_fu_941_p3;
wire   [13:0] p_shl79_fu_955_p1;
wire   [13:0] empty_243_fu_959_p2;
wire   [13:0] empty_244_fu_965_p2;
wire   [15:0] add_ln62_fu_980_p2;
wire   [15:0] add_ln69_fu_989_p2;
wire   [7:0] mul_ln88_fu_1006_p0;
wire   [8:0] mul_ln88_fu_1006_p1;
wire   [11:0] tmp_10_fu_1019_p3;
wire   [13:0] p_shl_fu_1012_p3;
wire   [13:0] p_shl77_fu_1026_p1;
wire   [13:0] empty_246_fu_1030_p2;
wire   [13:0] empty_247_fu_1036_p2;
wire   [15:0] add_ln75_fu_1046_p2;
wire   [15:0] add_ln82_fu_1055_p2;
wire   [7:0] mul_ln101_fu_1067_p0;
wire   [8:0] mul_ln101_fu_1067_p1;
wire   [15:0] add_ln88_fu_1073_p2;
wire   [15:0] add_ln95_fu_1082_p2;
wire   [7:0] mul_ln114_fu_1099_p0;
wire   [8:0] mul_ln114_fu_1099_p1;
wire   [15:0] add_ln101_fu_1105_p2;
wire   [15:0] add_ln108_fu_1119_p2;
wire   [7:0] mul_ln127_fu_1131_p0;
wire   [8:0] mul_ln127_fu_1131_p1;
wire   [15:0] add_ln114_fu_1137_p2;
wire   [15:0] add_ln121_fu_1146_p2;
wire   [7:0] mul_ln140_fu_1167_p0;
wire   [8:0] mul_ln140_fu_1167_p1;
wire   [15:0] add_ln127_fu_1173_p2;
wire   [15:0] mul_ln140_fu_1167_p2;
wire   [15:0] add_ln134_fu_1187_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [17:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire   [15:0] mul_ln101_fu_1067_p00;
wire   [15:0] mul_ln114_fu_1099_p00;
wire   [15:0] mul_ln127_fu_1131_p00;
wire   [15:0] mul_ln140_fu_1167_p00;
wire   [15:0] mul_ln34_fu_568_p00;
wire   [15:0] mul_ln49_fu_678_p00;
wire   [15:0] mul_ln62_fu_792_p00;
wire   [15:0] mul_ln75_fu_901_p00;
wire   [15:0] mul_ln88_fu_1006_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_fu_84 = 8'd0;
#0 v6_fu_88 = 8'd0;
#0 indvar_flatten48_fu_92 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U473(.din0(mul_ln34_fu_568_p0),.din1(mul_ln34_fu_568_p1),.dout(mul_ln34_fu_568_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U474(.din0(mul_ln49_fu_678_p0),.din1(mul_ln49_fu_678_p1),.dout(mul_ln49_fu_678_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U475(.din0(mul_ln62_fu_792_p0),.din1(mul_ln62_fu_792_p1),.dout(mul_ln62_fu_792_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U476(.din0(mul_ln75_fu_901_p0),.din1(mul_ln75_fu_901_p1),.dout(mul_ln75_fu_901_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U477(.din0(mul_ln88_fu_1006_p0),.din1(mul_ln88_fu_1006_p1),.dout(mul_ln88_fu_1006_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U478(.din0(mul_ln101_fu_1067_p0),.din1(mul_ln101_fu_1067_p1),.dout(mul_ln101_fu_1067_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U479(.din0(mul_ln114_fu_1099_p0),.din1(mul_ln114_fu_1099_p1),.dout(mul_ln114_fu_1099_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U480(.din0(mul_ln127_fu_1131_p0),.din1(mul_ln127_fu_1131_p1),.dout(mul_ln127_fu_1131_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U481(.din0(mul_ln140_fu_1167_p0),.din1(mul_ln140_fu_1167_p1),.dout(mul_ln140_fu_1167_p2));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage17),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage17)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_471_p2 == 1'd0))) begin
            indvar_flatten48_fu_92 <= add_ln32_fu_477_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten48_fu_92 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_379 <= v224_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_379 <= v224_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_388 <= v229_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_388 <= v229_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            reg_397 <= v229_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_397 <= v229_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_471_p2 == 1'd0))) begin
            v6_fu_88 <= select_ln32_1_fu_501_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v6_fu_88 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_84 <= 8'd0;
    end else if (((icmp_ln32_reg_1425 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_fu_84 <= add_ln33_fu_664_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln140_reg_1813 <= add_ln140_fu_1182_p2;
        add_ln147_reg_1823 <= add_ln147_fu_1196_p2;
        v229_addr_16_reg_1818 <= zext_ln134_fu_1191_p1;
        v229_addr_16_reg_1818_pp0_iter1_reg <= v229_addr_16_reg_1818;
        v229_addr_7_reg_1807 <= zext_ln127_fu_1177_p1;
        v229_addr_7_reg_1807_pp0_iter1_reg <= v229_addr_7_reg_1807;
        v46_reg_1802 <= v46_fu_1160_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_224_reg_1453 <= empty_224_fu_509_p2;
        icmp_ln32_reg_1425 <= icmp_ln32_fu_471_p2;
        icmp_ln32_reg_1425_pp0_iter1_reg <= icmp_ln32_reg_1425;
        icmp_ln33_reg_1434 <= icmp_ln33_fu_495_p2;
        select_ln32_1_reg_1439 <= select_ln32_1_fu_501_p3;
        v7_load_reg_1429 <= ap_sig_allocacmp_v7_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_227_reg_1476 <= empty_227_fu_608_p2;
        empty_230_reg_1483 <= empty_230_fu_613_p2;
        mul_ln34_reg_1465 <= mul_ln34_fu_568_p2;
        v101_reg_1924 <= v101_fu_1296_p1;
        zext_ln38_reg_1490[7 : 0] <= zext_ln38_fu_618_p1[7 : 0];
        zext_ln45_reg_1508[7 : 1] <= zext_ln45_fu_650_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        empty_233_reg_1542 <= empty_233_fu_752_p2;
        empty_236_reg_1549 <= empty_236_fu_757_p2;
        mul_ln49_reg_1526 <= mul_ln49_fu_678_p2;
        v18_reg_1572 <= v18_fu_780_p1;
        v229_addr_9_reg_1566 <= zext_ln42_fu_775_p1;
        v229_addr_reg_1556 <= zext_ln34_fu_766_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        empty_239_reg_1603 <= empty_239_fu_866_p2;
        empty_242_reg_1610 <= empty_242_fu_871_p2;
        mul_ln62_reg_1582 <= mul_ln62_fu_792_p2;
        v11_reg_1577 <= v11_fu_784_p1;
        v12_reg_1622 <= v12_fu_885_p1;
        v229_addr_10_reg_1627 <= zext_ln56_fu_893_p1;
        v229_addr_1_reg_1617 <= zext_ln49_fu_880_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        empty_245_reg_1659 <= empty_245_fu_975_p2;
        mul_ln75_reg_1633 <= mul_ln75_fu_901_p2;
        v229_addr_11_reg_1671 <= zext_ln69_fu_993_p1;
        v229_addr_2_reg_1666 <= zext_ln62_fu_984_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln101_reg_1713 <= mul_ln101_fu_1067_p2;
        v229_addr_13_reg_1729 <= zext_ln95_fu_1086_p1;
        v229_addr_13_reg_1729_pp0_iter1_reg <= v229_addr_13_reg_1729;
        v229_addr_4_reg_1724 <= zext_ln88_fu_1077_p1;
        v229_addr_4_reg_1724_pp0_iter1_reg <= v229_addr_4_reg_1724;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln114_reg_1749 <= mul_ln114_fu_1099_p2;
        v229_addr_14_reg_1765 <= zext_ln108_fu_1123_p1;
        v229_addr_14_reg_1765_pp0_iter1_reg <= v229_addr_14_reg_1765;
        v229_addr_5_reg_1755 <= zext_ln101_fu_1109_p1;
        v229_addr_5_reg_1755_pp0_iter1_reg <= v229_addr_5_reg_1755;
        v35_reg_1744 <= v35_fu_1091_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln127_reg_1775 <= mul_ln127_fu_1131_p2;
        v229_addr_15_reg_1787 <= zext_ln121_fu_1150_p1;
        v229_addr_15_reg_1787_pp0_iter1_reg <= v229_addr_15_reg_1787;
        v229_addr_6_reg_1781 <= zext_ln114_fu_1141_p1;
        v229_addr_6_reg_1781_pp0_iter1_reg <= v229_addr_6_reg_1781;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln88_reg_1682 <= mul_ln88_fu_1006_p2;
        v229_addr_12_reg_1703 <= zext_ln82_fu_1059_p1;
        v229_addr_12_reg_1703_pp0_iter1_reg <= v229_addr_12_reg_1703;
        v229_addr_3_reg_1698 <= zext_ln75_fu_1050_p1;
        v229_addr_3_reg_1698_pp0_iter1_reg <= v229_addr_3_reg_1698;
        v24_reg_1677 <= v24_fu_998_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_375 <= v224_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_384 <= v229_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_393 <= v229_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_402 <= v229_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_406 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_411 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_416 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_421 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_426 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_431 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_436 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_441 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_445 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_449 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1964 <= grp_fu_579_p_dout0;
        v64_reg_1954 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v107_reg_1979 <= grp_fu_579_p_dout0;
        v70_reg_1969 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v224_3_load_3_reg_1588 <= v224_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v224_3_load_4_reg_1639 <= v224_3_q1;
        v224_3_load_5_reg_1644 <= v224_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v224_3_load_7_reg_1688 <= v224_3_q0;
        v229_load_5_reg_1708 <= v229_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v224_3_load_8_reg_1719 <= v224_3_q0;
        v229_load_6_reg_1734 <= v229_q1;
        v229_load_7_reg_1739 <= v229_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v228_load_reg_1561 <= v228_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v229_addr_17_reg_1844 <= zext_ln147_fu_1210_p1;
        v229_addr_17_reg_1844_pp0_iter1_reg <= v229_addr_17_reg_1844;
        v229_addr_8_reg_1838 <= zext_ln140_fu_1206_p1;
        v229_addr_8_reg_1838_pp0_iter1_reg <= v229_addr_8_reg_1838;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_load_11_reg_1797 <= v229_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v229_load_13_reg_1833 <= v229_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v229_load_15_reg_1854 <= v229_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v229_load_17_reg_1869 <= v229_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v229_load_9_reg_1770 <= v229_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v57_reg_1859 <= v57_fu_1219_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v68_reg_1879 <= v68_fu_1232_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v75_reg_1984 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v79_reg_1894 <= v79_fu_1249_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v81_reg_1994 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v86_reg_1999 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v90_reg_1909 <= v90_fu_1273_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v91_reg_1939 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v92_reg_2004 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v96_reg_1949 <= grp_fu_579_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v97_reg_2009 <= grp_fu_575_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_1425 == 1'd1) & (1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln32_reg_1425_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten48_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten48_load = indvar_flatten48_fu_92;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v6_load = v6_fu_88;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_load = v7_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_367_p0 = v104_fu_1328_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_367_p0 = v98_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_367_p0 = v93_fu_1319_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_367_p0 = v87_fu_1314_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p0 = v82_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_367_p0 = v76_fu_1305_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_367_p0 = v71_fu_1292_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_367_p0 = v65_fu_1282_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_367_p0 = v60_fu_1269_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_367_p0 = v54_fu_1259_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_367_p0 = v49_fu_1245_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_367_p0 = v43_fu_1236_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_367_p0 = v38_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_367_p0 = v32_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_367_p0 = v27_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_367_p0 = v21_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_367_p0 = v15_fu_1155_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_367_p0 = v8_fu_1114_p1;
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_367_p1 = v107_reg_1979;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_367_p1 = v102_reg_1964;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_367_p1 = v96_reg_1949;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_367_p1 = v91_reg_1939;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_367_p1 = reg_436;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_367_p1 = reg_431;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_367_p1 = reg_426;
    end else if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_367_p1 = reg_421;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_367_p1 = reg_416;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_367_p1 = reg_411;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_367_p1 = reg_406;
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p0 = v101_reg_1924;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p0 = v101_fu_1296_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p0 = v90_reg_1909;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_371_p0 = v90_fu_1273_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_371_p0 = v79_reg_1894;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_371_p0 = v79_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_371_p0 = v68_reg_1879;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_371_p0 = v68_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_371_p0 = v57_reg_1859;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_371_p0 = v57_fu_1219_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_371_p0 = v46_reg_1802;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_371_p0 = v46_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_371_p0 = v35_reg_1744;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_371_p0 = v35_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_371_p0 = v24_reg_1677;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_371_p0 = v24_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_371_p0 = v11_reg_1577;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p0 = v11_fu_784_p1;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_371_p1 = v12_reg_1622;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_371_p1 = v18_reg_1572;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p1 = v12_fu_885_p1;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v224_3_address0_local = p_cast25_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_3_address0_local = p_cast24_fu_970_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v224_3_address0_local = p_cast22_fu_861_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v224_3_address0_local = p_cast20_fu_747_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v224_3_address0_local = p_cast18_fu_603_p1;
        end else begin
            v224_3_address0_local = 'bx;
        end
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v224_3_address1_local = p_cast23_fu_936_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v224_3_address1_local = p_cast21_fu_827_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v224_3_address1_local = p_cast19_fu_713_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v224_3_address1_local = p_cast17_fu_563_p1;
        end else begin
            v224_3_address1_local = 'bx;
        end
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_address0_local = v229_addr_17_reg_1844_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_address0_local = v229_addr_8_reg_1838_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v229_address0_local = v229_addr_16_reg_1818_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v229_address0_local = v229_addr_7_reg_1807_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v229_address0_local = v229_addr_15_reg_1787_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v229_address0_local = v229_addr_6_reg_1781_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v229_address0_local = v229_addr_14_reg_1765_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v229_address0_local = v229_addr_13_reg_1729_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v229_address0_local = v229_addr_12_reg_1703_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v229_address0_local = zext_ln147_fu_1210_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v229_address0_local = zext_ln134_fu_1191_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_address0_local = zext_ln121_fu_1150_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v229_address0_local = zext_ln108_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_address0_local = zext_ln95_fu_1086_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_address0_local = zext_ln82_fu_1059_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_address0_local = zext_ln69_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_address0_local = zext_ln56_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_address0_local = zext_ln42_fu_775_p1;
    end else begin
        v229_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v229_address1_local = v229_addr_5_reg_1755_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v229_address1_local = v229_addr_4_reg_1724_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v229_address1_local = v229_addr_3_reg_1698_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_address1_local = v229_addr_11_reg_1671;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_address1_local = v229_addr_2_reg_1666;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v229_address1_local = v229_addr_10_reg_1627;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v229_address1_local = v229_addr_1_reg_1617;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v229_address1_local = v229_addr_9_reg_1566;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v229_address1_local = v229_addr_reg_1556;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v229_address1_local = zext_ln140_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v229_address1_local = zext_ln127_fu_1177_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v229_address1_local = zext_ln114_fu_1141_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v229_address1_local = zext_ln101_fu_1109_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v229_address1_local = zext_ln88_fu_1077_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_address1_local = zext_ln75_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_address1_local = zext_ln62_fu_984_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_address1_local = zext_ln49_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_address1_local = zext_ln34_fu_766_p1;
    end else begin
        v229_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage11_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_ce0_local = 1'b1;
    end else begin
        v229_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage11_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_ce1_local = 1'b1;
    end else begin
        v229_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_d0_local = bitcast_ln152_fu_1380_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_d0_local = bitcast_ln146_fu_1375_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v229_d0_local = bitcast_ln139_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v229_d0_local = bitcast_ln133_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v229_d0_local = bitcast_ln126_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v229_d0_local = bitcast_ln120_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v229_d0_local = bitcast_ln113_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v229_d0_local = bitcast_ln100_fu_1347_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v229_d0_local = bitcast_ln87_fu_1337_p1;
    end else begin
        v229_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v229_d1_local = bitcast_ln107_fu_1351_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v229_d1_local = bitcast_ln94_fu_1342_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v229_d1_local = bitcast_ln81_fu_1332_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_d1_local = bitcast_ln74_fu_1300_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_d1_local = bitcast_ln68_fu_1287_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v229_d1_local = bitcast_ln61_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v229_d1_local = bitcast_ln55_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v229_d1_local = bitcast_ln48_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v229_d1_local = bitcast_ln41_fu_1240_p1;
    end else begin
        v229_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v229_we0_local = 1'b1;
    end else begin
        v229_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln32_reg_1425 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((icmp_ln32_reg_1425 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((icmp_ln32_reg_1425 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln32_reg_1425 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v229_we1_local = 1'b1;
    end else begin
        v229_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln101_fu_1105_p2 = (mul_ln101_reg_1713 + zext_ln38_reg_1490);
assign add_ln108_fu_1119_p2 = (mul_ln101_reg_1713 + zext_ln45_reg_1508);
assign add_ln114_fu_1137_p2 = (mul_ln114_reg_1749 + zext_ln38_reg_1490);
assign add_ln121_fu_1146_p2 = (mul_ln114_reg_1749 + zext_ln45_reg_1508);
assign add_ln127_fu_1173_p2 = (mul_ln127_reg_1775 + zext_ln38_reg_1490);
assign add_ln134_fu_1187_p2 = (mul_ln127_reg_1775 + zext_ln45_reg_1508);
assign add_ln140_fu_1182_p2 = (mul_ln140_fu_1167_p2 + zext_ln38_reg_1490);
assign add_ln147_fu_1196_p2 = (mul_ln140_fu_1167_p2 + zext_ln45_reg_1508);
assign add_ln32_1_fu_489_p2 = (ap_sig_allocacmp_v6_load + 8'd9);
assign add_ln32_fu_477_p2 = (ap_sig_allocacmp_indvar_flatten48_load + 12'd1);
assign add_ln33_fu_664_p2 = (select_ln32_fu_525_p3 + 8'd2);
assign add_ln34_fu_762_p2 = (mul_ln34_reg_1465 + zext_ln38_reg_1490);
assign add_ln38_fu_622_p2 = (mul_ln38_7 + zext_ln38_fu_618_p1);
assign add_ln42_fu_771_p2 = (mul_ln34_reg_1465 + zext_ln45_reg_1508);
assign add_ln45_fu_654_p2 = (mul_ln38_7 + zext_ln45_fu_650_p1);
assign add_ln49_fu_876_p2 = (mul_ln49_reg_1526 + zext_ln38_reg_1490);
assign add_ln56_fu_889_p2 = (mul_ln49_reg_1526 + zext_ln45_reg_1508);
assign add_ln62_fu_980_p2 = (mul_ln62_reg_1582 + zext_ln38_reg_1490);
assign add_ln69_fu_989_p2 = (mul_ln62_reg_1582 + zext_ln45_reg_1508);
assign add_ln75_fu_1046_p2 = (mul_ln75_reg_1633 + zext_ln38_reg_1490);
assign add_ln82_fu_1055_p2 = (mul_ln75_reg_1633 + zext_ln45_reg_1508);
assign add_ln88_fu_1073_p2 = (mul_ln88_reg_1682 + zext_ln38_reg_1490);
assign add_ln95_fu_1082_p2 = (mul_ln88_reg_1682 + zext_ln45_reg_1508);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
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
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage17;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_fu_1347_p1 = v64_reg_1954;
assign bitcast_ln107_fu_1351_p1 = v70_reg_1969;
assign bitcast_ln113_fu_1355_p1 = v75_reg_1984;
assign bitcast_ln120_fu_1359_p1 = v81_reg_1994;
assign bitcast_ln126_fu_1363_p1 = v86_reg_1999;
assign bitcast_ln133_fu_1367_p1 = v92_reg_2004;
assign bitcast_ln139_fu_1371_p1 = v97_reg_2009;
assign bitcast_ln146_fu_1375_p1 = reg_445;
assign bitcast_ln152_fu_1380_p1 = reg_449;
assign bitcast_ln41_fu_1240_p1 = reg_441;
assign bitcast_ln48_fu_1254_p1 = reg_441;
assign bitcast_ln55_fu_1264_p1 = reg_441;
assign bitcast_ln61_fu_1277_p1 = reg_441;
assign bitcast_ln68_fu_1287_p1 = reg_441;
assign bitcast_ln74_fu_1300_p1 = reg_441;
assign bitcast_ln81_fu_1332_p1 = reg_441;
assign bitcast_ln87_fu_1337_p1 = reg_445;
assign bitcast_ln94_fu_1342_p1 = reg_449;
assign empty_223_fu_558_p2 = (empty_fu_552_p2 + zext_ln32_8);
assign empty_224_fu_509_p2 = (select_ln32_1_fu_501_p3 + 8'd1);
assign empty_225_fu_592_p2 = (p_shl2_fu_574_p3 - p_shl91_fu_588_p1);
assign empty_226_fu_598_p2 = (empty_225_fu_592_p2 + zext_ln32_8);
assign empty_227_fu_608_p2 = (select_ln32_1_reg_1439 + 8'd2);
assign empty_228_fu_702_p2 = (p_shl3_fu_684_p3 - p_shl89_fu_698_p1);
assign empty_229_fu_708_p2 = (empty_228_fu_702_p2 + zext_ln32_8);
assign empty_230_fu_613_p2 = (select_ln32_1_reg_1439 + 8'd3);
assign empty_231_fu_736_p2 = (p_shl4_fu_718_p3 - p_shl87_fu_732_p1);
assign empty_232_fu_742_p2 = (empty_231_fu_736_p2 + zext_ln32_8);
assign empty_233_fu_752_p2 = (select_ln32_1_reg_1439 + 8'd4);
assign empty_234_fu_816_p2 = (p_shl5_fu_798_p3 - p_shl85_fu_812_p1);
assign empty_235_fu_822_p2 = (empty_234_fu_816_p2 + zext_ln32_8);
assign empty_236_fu_757_p2 = (select_ln32_1_reg_1439 + 8'd5);
assign empty_237_fu_850_p2 = (p_shl6_fu_832_p3 - p_shl83_fu_846_p1);
assign empty_238_fu_856_p2 = (empty_237_fu_850_p2 + zext_ln32_8);
assign empty_239_fu_866_p2 = (select_ln32_1_reg_1439 + 8'd6);
assign empty_240_fu_925_p2 = (p_shl7_fu_907_p3 - p_shl81_fu_921_p1);
assign empty_241_fu_931_p2 = (empty_240_fu_925_p2 + zext_ln32_8);
assign empty_242_fu_871_p2 = (select_ln32_1_reg_1439 + 8'd7);
assign empty_243_fu_959_p2 = (p_shl8_fu_941_p3 - p_shl79_fu_955_p1);
assign empty_244_fu_965_p2 = (empty_243_fu_959_p2 + zext_ln32_8);
assign empty_245_fu_975_p2 = (select_ln32_1_reg_1439 + 8'd8);
assign empty_246_fu_1030_p2 = (p_shl_fu_1012_p3 - p_shl77_fu_1026_p1);
assign empty_247_fu_1036_p2 = (empty_246_fu_1030_p2 + zext_ln32_8);
assign empty_fu_552_p2 = (p_shl1_fu_534_p3 - p_shl93_fu_548_p1);
assign grp_fu_575_p_ce = 1'b1;
assign grp_fu_575_p_din0 = grp_fu_367_p0;
assign grp_fu_575_p_din1 = grp_fu_367_p1;
assign grp_fu_575_p_opcode = 2'd0;
assign grp_fu_579_p_ce = 1'b1;
assign grp_fu_579_p_din0 = grp_fu_371_p0;
assign grp_fu_579_p_din1 = grp_fu_371_p1;
assign icmp_ln32_fu_471_p2 = ((ap_sig_allocacmp_indvar_flatten48_load == 12'd2200) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_495_p2 = ((ap_sig_allocacmp_v7_load < 8'd220) ? 1'b1 : 1'b0);
assign mul_ln101_fu_1067_p0 = mul_ln101_fu_1067_p00;
assign mul_ln101_fu_1067_p00 = empty_236_reg_1549;
assign mul_ln101_fu_1067_p1 = 16'd220;
assign mul_ln114_fu_1099_p0 = mul_ln114_fu_1099_p00;
assign mul_ln114_fu_1099_p00 = empty_239_reg_1603;
assign mul_ln114_fu_1099_p1 = 16'd220;
assign mul_ln127_fu_1131_p0 = mul_ln127_fu_1131_p00;
assign mul_ln127_fu_1131_p00 = empty_242_reg_1610;
assign mul_ln127_fu_1131_p1 = 16'd220;
assign mul_ln140_fu_1167_p0 = mul_ln140_fu_1167_p00;
assign mul_ln140_fu_1167_p00 = empty_245_reg_1659;
assign mul_ln140_fu_1167_p1 = 16'd220;
assign mul_ln34_fu_568_p0 = mul_ln34_fu_568_p00;
assign mul_ln34_fu_568_p00 = select_ln32_1_reg_1439;
assign mul_ln34_fu_568_p1 = 16'd220;
assign mul_ln49_fu_678_p0 = mul_ln49_fu_678_p00;
assign mul_ln49_fu_678_p00 = empty_224_reg_1453;
assign mul_ln49_fu_678_p1 = 16'd220;
assign mul_ln62_fu_792_p0 = mul_ln62_fu_792_p00;
assign mul_ln62_fu_792_p00 = empty_227_reg_1476;
assign mul_ln62_fu_792_p1 = 16'd220;
assign mul_ln75_fu_901_p0 = mul_ln75_fu_901_p00;
assign mul_ln75_fu_901_p00 = empty_230_reg_1483;
assign mul_ln75_fu_901_p1 = 16'd220;
assign mul_ln88_fu_1006_p0 = mul_ln88_fu_1006_p00;
assign mul_ln88_fu_1006_p00 = empty_233_reg_1542;
assign mul_ln88_fu_1006_p1 = 16'd220;
assign or_ln42_7_fu_642_p3 = {{tmp_s_fu_632_p4}, {1'd1}};
assign p_cast17_fu_563_p1 = empty_223_fu_558_p2;
assign p_cast18_fu_603_p1 = empty_226_fu_598_p2;
assign p_cast19_fu_713_p1 = empty_229_fu_708_p2;
assign p_cast20_fu_747_p1 = empty_232_fu_742_p2;
assign p_cast21_fu_827_p1 = empty_235_fu_822_p2;
assign p_cast22_fu_861_p1 = empty_238_fu_856_p2;
assign p_cast23_fu_936_p1 = empty_241_fu_931_p2;
assign p_cast24_fu_970_p1 = empty_244_fu_965_p2;
assign p_cast25_fu_1041_p1 = empty_247_fu_1036_p2;
assign p_shl1_fu_534_p3 = {{select_ln32_1_reg_1439}, {6'd0}};
assign p_shl2_fu_574_p3 = {{empty_224_reg_1453}, {6'd0}};
assign p_shl3_fu_684_p3 = {{empty_227_reg_1476}, {6'd0}};
assign p_shl4_fu_718_p3 = {{empty_230_reg_1483}, {6'd0}};
assign p_shl5_fu_798_p3 = {{empty_233_reg_1542}, {6'd0}};
assign p_shl6_fu_832_p3 = {{empty_236_reg_1549}, {6'd0}};
assign p_shl77_fu_1026_p1 = tmp_10_fu_1019_p3;
assign p_shl79_fu_955_p1 = tmp_9_fu_948_p3;
assign p_shl7_fu_907_p3 = {{empty_239_reg_1603}, {6'd0}};
assign p_shl81_fu_921_p1 = tmp_8_fu_914_p3;
assign p_shl83_fu_846_p1 = tmp_7_fu_839_p3;
assign p_shl85_fu_812_p1 = tmp_6_fu_805_p3;
assign p_shl87_fu_732_p1 = tmp_5_fu_725_p3;
assign p_shl89_fu_698_p1 = tmp_4_fu_691_p3;
assign p_shl8_fu_941_p3 = {{empty_242_reg_1610}, {6'd0}};
assign p_shl91_fu_588_p1 = tmp_3_fu_581_p3;
assign p_shl93_fu_548_p1 = tmp_fu_541_p3;
assign p_shl_fu_1012_p3 = {{empty_245_reg_1659}, {6'd0}};
assign select_ln32_1_fu_501_p3 = ((icmp_ln33_fu_495_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v6_load : add_ln32_1_fu_489_p2);
assign select_ln32_fu_525_p3 = ((icmp_ln33_reg_1434[0:0] == 1'b1) ? v7_load_reg_1429 : 8'd0);
assign tmp_10_fu_1019_p3 = {{empty_245_reg_1659}, {4'd0}};
assign tmp_3_fu_581_p3 = {{empty_224_reg_1453}, {4'd0}};
assign tmp_4_fu_691_p3 = {{empty_227_reg_1476}, {4'd0}};
assign tmp_5_fu_725_p3 = {{empty_230_reg_1483}, {4'd0}};
assign tmp_6_fu_805_p3 = {{empty_233_reg_1542}, {4'd0}};
assign tmp_7_fu_839_p3 = {{empty_236_reg_1549}, {4'd0}};
assign tmp_8_fu_914_p3 = {{empty_239_reg_1603}, {4'd0}};
assign tmp_9_fu_948_p3 = {{empty_242_reg_1610}, {4'd0}};
assign tmp_fu_541_p3 = {{select_ln32_1_reg_1439}, {4'd0}};
assign tmp_s_fu_632_p4 = {{select_ln32_fu_525_p3[7:1]}};
assign v101_fu_1296_p1 = v224_3_load_8_reg_1719;
assign v104_fu_1328_p1 = v229_load_17_reg_1869;
assign v11_fu_784_p1 = reg_375;
assign v12_fu_885_p1 = v228_load_reg_1561;
assign v15_fu_1155_p1 = reg_388;
assign v18_fu_780_p1 = v228_q0;
assign v21_fu_1201_p1 = reg_393;
assign v224_3_address0 = v224_3_address0_local;
assign v224_3_address1 = v224_3_address1_local;
assign v224_3_ce0 = v224_3_ce0_local;
assign v224_3_ce1 = v224_3_ce1_local;
assign v228_address0 = zext_ln45_1_fu_659_p1;
assign v228_address1 = zext_ln38_1_fu_627_p1;
assign v228_ce0 = v228_ce0_local;
assign v228_ce1 = v228_ce1_local;
assign v229_address0 = v229_address0_local;
assign v229_address1 = v229_address1_local;
assign v229_ce0 = v229_ce0_local;
assign v229_ce1 = v229_ce1_local;
assign v229_d0 = v229_d0_local;
assign v229_d1 = v229_d1_local;
assign v229_we0 = v229_we0_local;
assign v229_we1 = v229_we1_local;
assign v24_fu_998_p1 = reg_379;
assign v27_fu_1214_p1 = reg_397;
assign v32_fu_1223_p1 = reg_402;
assign v35_fu_1091_p1 = reg_375;
assign v38_fu_1228_p1 = v229_load_5_reg_1708;
assign v43_fu_1236_p1 = v229_load_6_reg_1734;
assign v46_fu_1160_p1 = v224_3_load_3_reg_1588;
assign v49_fu_1245_p1 = v229_load_7_reg_1739;
assign v54_fu_1259_p1 = reg_384;
assign v57_fu_1219_p1 = v224_3_load_4_reg_1639;
assign v60_fu_1269_p1 = v229_load_9_reg_1770;
assign v65_fu_1282_p1 = reg_388;
assign v68_fu_1232_p1 = v224_3_load_5_reg_1644;
assign v71_fu_1292_p1 = v229_load_11_reg_1797;
assign v76_fu_1305_p1 = reg_393;
assign v79_fu_1249_p1 = reg_379;
assign v82_fu_1310_p1 = v229_load_13_reg_1833;
assign v87_fu_1314_p1 = reg_397;
assign v8_fu_1114_p1 = reg_384;
assign v90_fu_1273_p1 = v224_3_load_7_reg_1688;
assign v93_fu_1319_p1 = v229_load_15_reg_1854;
assign v98_fu_1323_p1 = reg_402;
assign zext_ln101_fu_1109_p1 = add_ln101_fu_1105_p2;
assign zext_ln108_fu_1123_p1 = add_ln108_fu_1119_p2;
assign zext_ln114_fu_1141_p1 = add_ln114_fu_1137_p2;
assign zext_ln121_fu_1150_p1 = add_ln121_fu_1146_p2;
assign zext_ln127_fu_1177_p1 = add_ln127_fu_1173_p2;
assign zext_ln134_fu_1191_p1 = add_ln134_fu_1187_p2;
assign zext_ln140_fu_1206_p1 = add_ln140_reg_1813;
assign zext_ln147_fu_1210_p1 = add_ln147_reg_1823;
assign zext_ln34_fu_766_p1 = add_ln34_fu_762_p2;
assign zext_ln38_1_fu_627_p1 = add_ln38_fu_622_p2;
assign zext_ln38_fu_618_p1 = select_ln32_fu_525_p3;
assign zext_ln42_fu_775_p1 = add_ln42_fu_771_p2;
assign zext_ln45_1_fu_659_p1 = add_ln45_fu_654_p2;
assign zext_ln45_fu_650_p1 = or_ln42_7_fu_642_p3;
assign zext_ln49_fu_880_p1 = add_ln49_fu_876_p2;
assign zext_ln56_fu_893_p1 = add_ln56_fu_889_p2;
assign zext_ln62_fu_984_p1 = add_ln62_fu_980_p2;
assign zext_ln69_fu_993_p1 = add_ln69_fu_989_p2;
assign zext_ln75_fu_1050_p1 = add_ln75_fu_1046_p2;
assign zext_ln82_fu_1059_p1 = add_ln82_fu_1055_p2;
assign zext_ln88_fu_1077_p1 = add_ln88_fu_1073_p2;
assign zext_ln95_fu_1086_p1 = add_ln95_fu_1082_p2;
always @ (posedge ap_clk) begin
    zext_ln38_reg_1490[15:8] <= 8'b00000000;
    zext_ln45_reg_1508[0] <= 1'b1;
    zext_ln45_reg_1508[15:8] <= 8'b00000000;
end
endmodule 
