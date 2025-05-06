
module backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,norm_34);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
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
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
input  [63:0] norm_34;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [0:0] icmp_ln166_reg_1524;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_425;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] reg_429;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_434;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_439;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_444;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_449;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_454;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_459;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] grp_fu_421_p2;
reg   [63:0] reg_464;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_block_pp0_stage31_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_468;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_472;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_476;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_480;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_484;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_488;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_492;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [0:0] icmp_ln166_fu_514_p2;
reg   [0:0] icmp_ln166_reg_1524_pp0_iter1_reg;
reg   [6:0] i_6_load_reg_1528;
wire   [6:0] add_ln166_1_fu_529_p2;
reg   [6:0] add_ln166_1_reg_1533;
wire   [6:0] select_ln121_fu_551_p3;
reg   [6:0] select_ln121_reg_1538;
wire   [5:0] empty_fu_565_p1;
reg   [5:0] empty_reg_1543;
reg   [11:0] weights2_addr_reg_1577;
reg   [11:0] weights2_addr_reg_1577_pp0_iter1_reg;
reg   [11:0] weights2_addr_1_reg_1582;
reg   [11:0] weights2_addr_1_reg_1582_pp0_iter1_reg;
reg   [3:0] tmp_50_reg_1588;
wire   [0:0] trunc_ln168_fu_627_p1;
reg   [0:0] trunc_ln168_reg_1594;
reg   [2:0] tmp_51_reg_1606;
wire   [1:0] trunc_ln168_1_fu_641_p1;
reg   [1:0] trunc_ln168_1_reg_1614;
reg   [0:0] tmp_47_reg_1622;
reg   [1:0] tmp_52_reg_1630;
wire   [2:0] trunc_ln168_2_fu_663_p1;
reg   [2:0] trunc_ln168_2_reg_1642;
reg   [1:0] tmp_53_reg_1648;
reg   [0:0] tmp_48_reg_1654;
reg   [0:0] tmp_54_reg_1662;
wire   [3:0] trunc_ln168_3_fu_693_p1;
reg   [3:0] trunc_ln168_3_reg_1682;
reg   [2:0] tmp_55_reg_1687;
reg   [1:0] tmp_56_reg_1692;
reg   [0:0] tmp_57_reg_1698;
reg   [11:0] weights2_addr_2_reg_1706;
reg   [11:0] weights2_addr_2_reg_1706_pp0_iter1_reg;
reg   [11:0] weights2_addr_3_reg_1711;
reg   [11:0] weights2_addr_3_reg_1711_pp0_iter1_reg;
reg   [11:0] weights2_addr_3_reg_1711_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_fu_757_p1;
reg   [11:0] weights2_addr_4_reg_1722;
reg   [11:0] weights2_addr_4_reg_1722_pp0_iter1_reg;
reg   [11:0] weights2_addr_4_reg_1722_pp0_iter2_reg;
reg   [11:0] weights2_addr_5_reg_1728;
reg   [11:0] weights2_addr_5_reg_1728_pp0_iter1_reg;
reg   [11:0] weights2_addr_5_reg_1728_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_2_fu_792_p1;
reg   [11:0] weights2_addr_6_reg_1739;
reg   [11:0] weights2_addr_6_reg_1739_pp0_iter1_reg;
reg   [11:0] weights2_addr_6_reg_1739_pp0_iter2_reg;
reg   [11:0] weights2_addr_7_reg_1745;
reg   [11:0] weights2_addr_7_reg_1745_pp0_iter1_reg;
reg   [11:0] weights2_addr_7_reg_1745_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_4_fu_824_p1;
reg   [11:0] weights2_addr_8_reg_1756;
reg   [11:0] weights2_addr_8_reg_1756_pp0_iter1_reg;
reg   [11:0] weights2_addr_8_reg_1756_pp0_iter2_reg;
reg   [11:0] weights2_addr_9_reg_1762;
reg   [11:0] weights2_addr_9_reg_1762_pp0_iter1_reg;
reg   [11:0] weights2_addr_9_reg_1762_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_6_fu_859_p1;
reg   [11:0] weights2_addr_10_reg_1773;
reg   [11:0] weights2_addr_10_reg_1773_pp0_iter1_reg;
reg   [11:0] weights2_addr_10_reg_1773_pp0_iter2_reg;
reg   [11:0] weights2_addr_11_reg_1779;
reg   [11:0] weights2_addr_11_reg_1779_pp0_iter1_reg;
reg   [11:0] weights2_addr_11_reg_1779_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_8_fu_897_p1;
reg   [11:0] weights2_addr_12_reg_1790;
reg   [11:0] weights2_addr_12_reg_1790_pp0_iter1_reg;
reg   [11:0] weights2_addr_12_reg_1790_pp0_iter2_reg;
reg   [11:0] weights2_addr_13_reg_1796;
reg   [11:0] weights2_addr_13_reg_1796_pp0_iter1_reg;
reg   [11:0] weights2_addr_13_reg_1796_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_10_fu_932_p1;
reg   [11:0] weights2_addr_14_reg_1807;
reg   [11:0] weights2_addr_14_reg_1807_pp0_iter1_reg;
reg   [11:0] weights2_addr_14_reg_1807_pp0_iter2_reg;
reg   [11:0] weights2_addr_15_reg_1813;
reg   [11:0] weights2_addr_15_reg_1813_pp0_iter1_reg;
reg   [11:0] weights2_addr_15_reg_1813_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_12_fu_964_p1;
reg   [63:0] weights2_load_15_reg_1824;
reg   [11:0] weights2_addr_16_reg_1829;
reg   [11:0] weights2_addr_16_reg_1829_pp0_iter1_reg;
reg   [11:0] weights2_addr_16_reg_1829_pp0_iter2_reg;
reg   [11:0] weights2_addr_17_reg_1835;
reg   [11:0] weights2_addr_17_reg_1835_pp0_iter1_reg;
reg   [11:0] weights2_addr_17_reg_1835_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_14_fu_999_p1;
reg   [63:0] weights2_load_17_reg_1846;
reg   [11:0] weights2_addr_18_reg_1851;
reg   [11:0] weights2_addr_18_reg_1851_pp0_iter1_reg;
reg   [11:0] weights2_addr_18_reg_1851_pp0_iter2_reg;
reg   [11:0] weights2_addr_19_reg_1857;
reg   [11:0] weights2_addr_19_reg_1857_pp0_iter1_reg;
reg   [11:0] weights2_addr_19_reg_1857_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_16_fu_1037_p1;
reg   [63:0] weights2_load_19_reg_1868;
reg   [11:0] weights2_addr_20_reg_1873;
reg   [11:0] weights2_addr_20_reg_1873_pp0_iter1_reg;
reg   [11:0] weights2_addr_20_reg_1873_pp0_iter2_reg;
reg   [11:0] weights2_addr_21_reg_1879;
reg   [11:0] weights2_addr_21_reg_1879_pp0_iter1_reg;
reg   [11:0] weights2_addr_21_reg_1879_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_18_fu_1078_p1;
reg   [63:0] weights2_load_21_reg_1890;
reg   [11:0] weights2_addr_22_reg_1895;
reg   [11:0] weights2_addr_22_reg_1895_pp0_iter1_reg;
reg   [11:0] weights2_addr_22_reg_1895_pp0_iter2_reg;
reg   [11:0] weights2_addr_23_reg_1901;
reg   [11:0] weights2_addr_23_reg_1901_pp0_iter1_reg;
reg   [11:0] weights2_addr_23_reg_1901_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_20_fu_1116_p1;
reg   [63:0] weights2_load_23_reg_1912;
reg   [11:0] weights2_addr_24_reg_1917;
reg   [11:0] weights2_addr_24_reg_1917_pp0_iter1_reg;
reg   [11:0] weights2_addr_24_reg_1917_pp0_iter2_reg;
reg   [11:0] weights2_addr_25_reg_1923;
reg   [11:0] weights2_addr_25_reg_1923_pp0_iter1_reg;
reg   [11:0] weights2_addr_25_reg_1923_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_22_fu_1151_p1;
reg   [63:0] weights2_load_25_reg_1934;
reg   [11:0] weights2_addr_26_reg_1939;
reg   [11:0] weights2_addr_26_reg_1939_pp0_iter1_reg;
reg   [11:0] weights2_addr_26_reg_1939_pp0_iter2_reg;
reg   [11:0] weights2_addr_27_reg_1945;
reg   [11:0] weights2_addr_27_reg_1945_pp0_iter1_reg;
reg   [11:0] weights2_addr_27_reg_1945_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_24_fu_1189_p1;
reg   [63:0] weights2_load_27_reg_1956;
reg   [11:0] weights2_addr_28_reg_1961;
reg   [11:0] weights2_addr_28_reg_1961_pp0_iter1_reg;
reg   [11:0] weights2_addr_28_reg_1961_pp0_iter2_reg;
reg   [11:0] weights2_addr_29_reg_1967;
reg   [11:0] weights2_addr_29_reg_1967_pp0_iter1_reg;
reg   [11:0] weights2_addr_29_reg_1967_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_26_fu_1224_p1;
reg   [63:0] weights2_load_29_reg_1977;
reg   [11:0] weights2_addr_30_reg_1982;
reg   [11:0] weights2_addr_30_reg_1982_pp0_iter1_reg;
reg   [11:0] weights2_addr_30_reg_1982_pp0_iter2_reg;
reg   [11:0] weights2_addr_31_reg_1988;
reg   [11:0] weights2_addr_31_reg_1988_pp0_iter1_reg;
reg   [11:0] weights2_addr_31_reg_1988_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_28_fu_1256_p1;
reg   [63:0] weights2_load_31_reg_1998;
wire   [63:0] bitcast_ln168_30_fu_1261_p1;
wire   [63:0] bitcast_ln168_32_fu_1265_p1;
wire   [63:0] bitcast_ln168_34_fu_1270_p1;
wire   [63:0] bitcast_ln168_36_fu_1274_p1;
wire   [63:0] bitcast_ln168_38_fu_1279_p1;
wire   [63:0] bitcast_ln168_40_fu_1283_p1;
wire   [63:0] bitcast_ln168_42_fu_1288_p1;
wire   [63:0] bitcast_ln168_44_fu_1292_p1;
wire   [63:0] bitcast_ln168_46_fu_1297_p1;
wire   [63:0] bitcast_ln168_48_fu_1301_p1;
wire   [63:0] bitcast_ln168_50_fu_1306_p1;
wire   [63:0] bitcast_ln168_52_fu_1310_p1;
wire   [63:0] bitcast_ln168_54_fu_1315_p1;
wire   [63:0] bitcast_ln168_56_fu_1319_p1;
wire   [63:0] bitcast_ln168_58_fu_1324_p1;
wire   [63:0] bitcast_ln168_60_fu_1338_p1;
wire   [63:0] bitcast_ln168_62_fu_1343_p1;
reg   [63:0] div131_10_reg_2088;
reg   [63:0] div131_11_reg_2093;
reg   [63:0] div131_12_reg_2098;
reg   [63:0] div131_13_reg_2103;
reg   [63:0] div131_14_reg_2108;
reg   [63:0] div131_15_reg_2113;
reg   [63:0] div131_16_reg_2118;
reg   [63:0] div131_17_reg_2123;
reg   [63:0] div131_18_reg_2128;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln168_fu_587_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln168_1_fu_612_p1;
wire   [63:0] zext_ln168_2_fu_739_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln168_3_fu_752_p1;
wire   [63:0] zext_ln168_4_fu_771_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln168_5_fu_787_p1;
wire   [63:0] zext_ln168_6_fu_806_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln168_7_fu_819_p1;
wire   [63:0] zext_ln168_8_fu_838_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln168_9_fu_854_p1;
wire   [63:0] zext_ln168_10_fu_876_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln168_11_fu_892_p1;
wire   [63:0] zext_ln168_12_fu_911_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln168_13_fu_927_p1;
wire   [63:0] zext_ln168_14_fu_946_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln168_15_fu_959_p1;
wire   [63:0] zext_ln168_16_fu_978_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln168_17_fu_994_p1;
wire   [63:0] zext_ln168_18_fu_1016_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln168_19_fu_1032_p1;
wire   [63:0] zext_ln168_20_fu_1054_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln168_21_fu_1073_p1;
wire   [63:0] zext_ln168_22_fu_1095_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln168_23_fu_1111_p1;
wire   [63:0] zext_ln168_24_fu_1130_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln168_25_fu_1146_p1;
wire   [63:0] zext_ln168_26_fu_1168_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln168_27_fu_1184_p1;
wire   [63:0] zext_ln168_28_fu_1203_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln168_29_fu_1219_p1;
wire   [63:0] zext_ln168_30_fu_1238_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln168_31_fu_1251_p1;
reg   [6:0] j_fu_138;
wire   [6:0] add_ln167_fu_1328_p2;
wire    ap_loop_init;
reg   [6:0] i_6_fu_142;
wire   [6:0] select_ln166_fu_559_p3;
reg   [6:0] ap_sig_allocacmp_i_6_load;
wire    ap_block_pp0_stage0;
reg   [7:0] indvar_flatten20_fu_146;
wire   [7:0] add_ln166_fu_520_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    weights2_ce1_local;
reg   [11:0] weights2_address1_local;
reg    weights2_ce0_local;
reg   [11:0] weights2_address0_local;
reg    weights2_we1_local;
reg   [63:0] weights2_d1_local;
wire   [63:0] bitcast_ln168_1_fu_1347_p1;
wire    ap_block_pp0_stage30;
wire   [63:0] bitcast_ln168_3_fu_1352_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln168_5_fu_1357_p1;
wire   [63:0] bitcast_ln168_7_fu_1362_p1;
wire    ap_block_pp0_stage17;
reg    weights2_we0_local;
reg   [63:0] weights2_d0_local;
wire   [63:0] bitcast_ln168_9_fu_1367_p1;
wire   [63:0] bitcast_ln168_11_fu_1372_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln168_13_fu_1377_p1;
wire   [63:0] bitcast_ln168_15_fu_1382_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln168_17_fu_1387_p1;
wire   [63:0] bitcast_ln168_19_fu_1392_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln168_21_fu_1397_p1;
wire   [63:0] bitcast_ln168_23_fu_1402_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln168_25_fu_1406_p1;
wire   [63:0] bitcast_ln168_27_fu_1410_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln168_29_fu_1414_p1;
wire   [63:0] bitcast_ln168_31_fu_1418_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln168_33_fu_1422_p1;
wire   [63:0] bitcast_ln168_35_fu_1426_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] bitcast_ln168_37_fu_1430_p1;
wire   [63:0] bitcast_ln168_39_fu_1434_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln168_41_fu_1438_p1;
wire   [63:0] bitcast_ln168_43_fu_1443_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] bitcast_ln168_45_fu_1448_p1;
wire   [63:0] bitcast_ln168_47_fu_1453_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln168_49_fu_1458_p1;
wire   [63:0] bitcast_ln168_51_fu_1463_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] bitcast_ln168_53_fu_1468_p1;
wire   [63:0] bitcast_ln168_55_fu_1473_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln168_57_fu_1478_p1;
wire   [63:0] bitcast_ln168_59_fu_1483_p1;
wire   [63:0] bitcast_ln168_61_fu_1488_p1;
wire   [63:0] bitcast_ln168_63_fu_1493_p1;
reg   [63:0] grp_fu_421_p0;
wire   [0:0] tmp_fu_543_p3;
wire   [11:0] zext_ln167_fu_577_p1;
wire   [11:0] tmp_s_fu_569_p3;
wire   [11:0] add_ln168_fu_581_p2;
wire   [4:0] tmp_49_fu_592_p4;
wire   [11:0] add_ln168_1_fu_602_p4;
wire   [11:0] add_ln168_2_fu_730_p5;
wire   [11:0] add_ln168_3_fu_744_p4;
wire   [11:0] add_ln168_4_fu_762_p5;
wire   [11:0] add_ln168_5_fu_776_p6;
wire   [11:0] add_ln168_6_fu_797_p5;
wire   [11:0] add_ln168_7_fu_811_p4;
wire   [11:0] add_ln168_8_fu_829_p5;
wire   [11:0] add_ln168_9_fu_843_p6;
wire   [11:0] add_ln168_s_fu_864_p7;
wire   [11:0] add_ln168_10_fu_881_p6;
wire   [11:0] add_ln168_11_fu_902_p5;
wire   [11:0] add_ln168_12_fu_916_p6;
wire   [11:0] add_ln168_13_fu_937_p5;
wire   [11:0] add_ln168_14_fu_951_p4;
wire   [11:0] add_ln168_15_fu_969_p5;
wire   [11:0] add_ln168_16_fu_983_p6;
wire   [11:0] add_ln168_17_fu_1004_p7;
wire   [11:0] add_ln168_18_fu_1021_p6;
wire   [11:0] add_ln168_19_fu_1042_p7;
wire   [11:0] add_ln168_20_fu_1059_p8;
wire   [11:0] add_ln168_21_fu_1083_p7;
wire   [11:0] add_ln168_22_fu_1100_p6;
wire   [11:0] add_ln168_23_fu_1121_p5;
wire   [11:0] add_ln168_24_fu_1135_p6;
wire   [11:0] add_ln168_25_fu_1156_p7;
wire   [11:0] add_ln168_26_fu_1173_p6;
wire   [11:0] add_ln168_27_fu_1194_p5;
wire   [11:0] add_ln168_28_fu_1208_p6;
wire   [11:0] add_ln168_29_fu_1229_p5;
wire   [11:0] add_ln168_30_fu_1243_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
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
wire    ap_block_pp0_stage17_subdone;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_138 = 7'd0;
#0 i_6_fu_142 = 7'd0;
#0 indvar_flatten20_fu_146 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_421_p0),.din1(norm_34),.ce(1'b1),.dout(grp_fu_421_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage31),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage31)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_6_fu_142 <= 7'd0;
    end else if (((icmp_ln166_reg_1524 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_6_fu_142 <= select_ln166_fu_559_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_514_p2 == 1'd0))) begin
            indvar_flatten20_fu_146 <= add_ln166_fu_520_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_146 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_138 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_138 <= add_ln167_fu_1328_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_429 <= weights2_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_429 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_434 <= weights2_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_434 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_439 <= weights2_q1;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_439 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            reg_444 <= weights2_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_444 <= weights2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            reg_449 <= weights2_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_449 <= weights2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            reg_454 <= weights2_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_454 <= weights2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            reg_459 <= weights2_q1;
        end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_459 <= weights2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln166_1_reg_1533 <= add_ln166_1_fu_529_p2;
        i_6_load_reg_1528 <= ap_sig_allocacmp_i_6_load;
        icmp_ln166_reg_1524 <= icmp_ln166_fu_514_p2;
        icmp_ln166_reg_1524_pp0_iter1_reg <= icmp_ln166_reg_1524;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div131_10_reg_2088 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div131_11_reg_2093 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div131_12_reg_2098 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div131_13_reg_2103 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        div131_14_reg_2108 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        div131_15_reg_2113 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        div131_16_reg_2118 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        div131_17_reg_2123 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        div131_18_reg_2128 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_1543 <= empty_fu_565_p1;
        select_ln121_reg_1538 <= select_ln121_fu_551_p3;
        tmp_47_reg_1622 <= select_ln121_fu_551_p3[32'd1];
        tmp_48_reg_1654 <= select_ln121_fu_551_p3[32'd2];
        tmp_50_reg_1588 <= {{select_ln121_fu_551_p3[5:2]}};
        tmp_51_reg_1606 <= {{select_ln121_fu_551_p3[5:3]}};
        tmp_52_reg_1630 <= {{select_ln121_fu_551_p3[5:4]}};
        tmp_53_reg_1648 <= {{select_ln121_fu_551_p3[2:1]}};
        tmp_54_reg_1662 <= select_ln121_fu_551_p3[32'd5];
        tmp_55_reg_1687 <= {{select_ln121_fu_551_p3[3:1]}};
        tmp_56_reg_1692 <= {{select_ln121_fu_551_p3[3:2]}};
        tmp_57_reg_1698 <= select_ln121_fu_551_p3[32'd3];
        trunc_ln168_1_reg_1614 <= trunc_ln168_1_fu_641_p1;
        trunc_ln168_2_reg_1642 <= trunc_ln168_2_fu_663_p1;
        trunc_ln168_3_reg_1682 <= trunc_ln168_3_fu_693_p1;
        trunc_ln168_reg_1594 <= trunc_ln168_fu_627_p1;
        weights2_addr_1_reg_1582[11 : 1] <= zext_ln168_1_fu_612_p1[11 : 1];
        weights2_addr_1_reg_1582_pp0_iter1_reg[11 : 1] <= weights2_addr_1_reg_1582[11 : 1];
        weights2_addr_reg_1577 <= zext_ln168_fu_587_p1;
        weights2_addr_reg_1577_pp0_iter1_reg <= weights2_addr_reg_1577;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_425 <= weights2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_464 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_468 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_472 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_476 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_480 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_484 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_488 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_492 <= grp_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_addr_10_reg_1773[0] <= zext_ln168_10_fu_876_p1[0];
weights2_addr_10_reg_1773[2] <= zext_ln168_10_fu_876_p1[2];
weights2_addr_10_reg_1773[11 : 4] <= zext_ln168_10_fu_876_p1[11 : 4];
        weights2_addr_10_reg_1773_pp0_iter1_reg[0] <= weights2_addr_10_reg_1773[0];
weights2_addr_10_reg_1773_pp0_iter1_reg[2] <= weights2_addr_10_reg_1773[2];
weights2_addr_10_reg_1773_pp0_iter1_reg[11 : 4] <= weights2_addr_10_reg_1773[11 : 4];
        weights2_addr_10_reg_1773_pp0_iter2_reg[0] <= weights2_addr_10_reg_1773_pp0_iter1_reg[0];
weights2_addr_10_reg_1773_pp0_iter2_reg[2] <= weights2_addr_10_reg_1773_pp0_iter1_reg[2];
weights2_addr_10_reg_1773_pp0_iter2_reg[11 : 4] <= weights2_addr_10_reg_1773_pp0_iter1_reg[11 : 4];
        weights2_addr_11_reg_1779[2] <= zext_ln168_11_fu_892_p1[2];
weights2_addr_11_reg_1779[11 : 4] <= zext_ln168_11_fu_892_p1[11 : 4];
        weights2_addr_11_reg_1779_pp0_iter1_reg[2] <= weights2_addr_11_reg_1779[2];
weights2_addr_11_reg_1779_pp0_iter1_reg[11 : 4] <= weights2_addr_11_reg_1779[11 : 4];
        weights2_addr_11_reg_1779_pp0_iter2_reg[2] <= weights2_addr_11_reg_1779_pp0_iter1_reg[2];
weights2_addr_11_reg_1779_pp0_iter2_reg[11 : 4] <= weights2_addr_11_reg_1779_pp0_iter1_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_addr_12_reg_1790[1 : 0] <= zext_ln168_12_fu_911_p1[1 : 0];
weights2_addr_12_reg_1790[11 : 4] <= zext_ln168_12_fu_911_p1[11 : 4];
        weights2_addr_12_reg_1790_pp0_iter1_reg[1 : 0] <= weights2_addr_12_reg_1790[1 : 0];
weights2_addr_12_reg_1790_pp0_iter1_reg[11 : 4] <= weights2_addr_12_reg_1790[11 : 4];
        weights2_addr_12_reg_1790_pp0_iter2_reg[1 : 0] <= weights2_addr_12_reg_1790_pp0_iter1_reg[1 : 0];
weights2_addr_12_reg_1790_pp0_iter2_reg[11 : 4] <= weights2_addr_12_reg_1790_pp0_iter1_reg[11 : 4];
        weights2_addr_13_reg_1796[1] <= zext_ln168_13_fu_927_p1[1];
weights2_addr_13_reg_1796[11 : 4] <= zext_ln168_13_fu_927_p1[11 : 4];
        weights2_addr_13_reg_1796_pp0_iter1_reg[1] <= weights2_addr_13_reg_1796[1];
weights2_addr_13_reg_1796_pp0_iter1_reg[11 : 4] <= weights2_addr_13_reg_1796[11 : 4];
        weights2_addr_13_reg_1796_pp0_iter2_reg[1] <= weights2_addr_13_reg_1796_pp0_iter1_reg[1];
weights2_addr_13_reg_1796_pp0_iter2_reg[11 : 4] <= weights2_addr_13_reg_1796_pp0_iter1_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_addr_14_reg_1807[0] <= zext_ln168_14_fu_946_p1[0];
weights2_addr_14_reg_1807[11 : 4] <= zext_ln168_14_fu_946_p1[11 : 4];
        weights2_addr_14_reg_1807_pp0_iter1_reg[0] <= weights2_addr_14_reg_1807[0];
weights2_addr_14_reg_1807_pp0_iter1_reg[11 : 4] <= weights2_addr_14_reg_1807[11 : 4];
        weights2_addr_14_reg_1807_pp0_iter2_reg[0] <= weights2_addr_14_reg_1807_pp0_iter1_reg[0];
weights2_addr_14_reg_1807_pp0_iter2_reg[11 : 4] <= weights2_addr_14_reg_1807_pp0_iter1_reg[11 : 4];
        weights2_addr_15_reg_1813[11 : 4] <= zext_ln168_15_fu_959_p1[11 : 4];
        weights2_addr_15_reg_1813_pp0_iter1_reg[11 : 4] <= weights2_addr_15_reg_1813[11 : 4];
        weights2_addr_15_reg_1813_pp0_iter2_reg[11 : 4] <= weights2_addr_15_reg_1813_pp0_iter1_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_addr_16_reg_1829[3 : 0] <= zext_ln168_16_fu_978_p1[3 : 0];
weights2_addr_16_reg_1829[11 : 5] <= zext_ln168_16_fu_978_p1[11 : 5];
        weights2_addr_16_reg_1829_pp0_iter1_reg[3 : 0] <= weights2_addr_16_reg_1829[3 : 0];
weights2_addr_16_reg_1829_pp0_iter1_reg[11 : 5] <= weights2_addr_16_reg_1829[11 : 5];
        weights2_addr_16_reg_1829_pp0_iter2_reg[3 : 0] <= weights2_addr_16_reg_1829_pp0_iter1_reg[3 : 0];
weights2_addr_16_reg_1829_pp0_iter2_reg[11 : 5] <= weights2_addr_16_reg_1829_pp0_iter1_reg[11 : 5];
        weights2_addr_17_reg_1835[3 : 1] <= zext_ln168_17_fu_994_p1[3 : 1];
weights2_addr_17_reg_1835[11 : 5] <= zext_ln168_17_fu_994_p1[11 : 5];
        weights2_addr_17_reg_1835_pp0_iter1_reg[3 : 1] <= weights2_addr_17_reg_1835[3 : 1];
weights2_addr_17_reg_1835_pp0_iter1_reg[11 : 5] <= weights2_addr_17_reg_1835[11 : 5];
        weights2_addr_17_reg_1835_pp0_iter2_reg[3 : 1] <= weights2_addr_17_reg_1835_pp0_iter1_reg[3 : 1];
weights2_addr_17_reg_1835_pp0_iter2_reg[11 : 5] <= weights2_addr_17_reg_1835_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_addr_18_reg_1851[0] <= zext_ln168_18_fu_1016_p1[0];
weights2_addr_18_reg_1851[3 : 2] <= zext_ln168_18_fu_1016_p1[3 : 2];
weights2_addr_18_reg_1851[11 : 5] <= zext_ln168_18_fu_1016_p1[11 : 5];
        weights2_addr_18_reg_1851_pp0_iter1_reg[0] <= weights2_addr_18_reg_1851[0];
weights2_addr_18_reg_1851_pp0_iter1_reg[3 : 2] <= weights2_addr_18_reg_1851[3 : 2];
weights2_addr_18_reg_1851_pp0_iter1_reg[11 : 5] <= weights2_addr_18_reg_1851[11 : 5];
        weights2_addr_18_reg_1851_pp0_iter2_reg[0] <= weights2_addr_18_reg_1851_pp0_iter1_reg[0];
weights2_addr_18_reg_1851_pp0_iter2_reg[3 : 2] <= weights2_addr_18_reg_1851_pp0_iter1_reg[3 : 2];
weights2_addr_18_reg_1851_pp0_iter2_reg[11 : 5] <= weights2_addr_18_reg_1851_pp0_iter1_reg[11 : 5];
        weights2_addr_19_reg_1857[3 : 2] <= zext_ln168_19_fu_1032_p1[3 : 2];
weights2_addr_19_reg_1857[11 : 5] <= zext_ln168_19_fu_1032_p1[11 : 5];
        weights2_addr_19_reg_1857_pp0_iter1_reg[3 : 2] <= weights2_addr_19_reg_1857[3 : 2];
weights2_addr_19_reg_1857_pp0_iter1_reg[11 : 5] <= weights2_addr_19_reg_1857[11 : 5];
        weights2_addr_19_reg_1857_pp0_iter2_reg[3 : 2] <= weights2_addr_19_reg_1857_pp0_iter1_reg[3 : 2];
weights2_addr_19_reg_1857_pp0_iter2_reg[11 : 5] <= weights2_addr_19_reg_1857_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_addr_20_reg_1873[1 : 0] <= zext_ln168_20_fu_1054_p1[1 : 0];
weights2_addr_20_reg_1873[3] <= zext_ln168_20_fu_1054_p1[3];
weights2_addr_20_reg_1873[11 : 5] <= zext_ln168_20_fu_1054_p1[11 : 5];
        weights2_addr_20_reg_1873_pp0_iter1_reg[1 : 0] <= weights2_addr_20_reg_1873[1 : 0];
weights2_addr_20_reg_1873_pp0_iter1_reg[3] <= weights2_addr_20_reg_1873[3];
weights2_addr_20_reg_1873_pp0_iter1_reg[11 : 5] <= weights2_addr_20_reg_1873[11 : 5];
        weights2_addr_20_reg_1873_pp0_iter2_reg[1 : 0] <= weights2_addr_20_reg_1873_pp0_iter1_reg[1 : 0];
weights2_addr_20_reg_1873_pp0_iter2_reg[3] <= weights2_addr_20_reg_1873_pp0_iter1_reg[3];
weights2_addr_20_reg_1873_pp0_iter2_reg[11 : 5] <= weights2_addr_20_reg_1873_pp0_iter1_reg[11 : 5];
        weights2_addr_21_reg_1879[1] <= zext_ln168_21_fu_1073_p1[1];
weights2_addr_21_reg_1879[3] <= zext_ln168_21_fu_1073_p1[3];
weights2_addr_21_reg_1879[11 : 5] <= zext_ln168_21_fu_1073_p1[11 : 5];
        weights2_addr_21_reg_1879_pp0_iter1_reg[1] <= weights2_addr_21_reg_1879[1];
weights2_addr_21_reg_1879_pp0_iter1_reg[3] <= weights2_addr_21_reg_1879[3];
weights2_addr_21_reg_1879_pp0_iter1_reg[11 : 5] <= weights2_addr_21_reg_1879[11 : 5];
        weights2_addr_21_reg_1879_pp0_iter2_reg[1] <= weights2_addr_21_reg_1879_pp0_iter1_reg[1];
weights2_addr_21_reg_1879_pp0_iter2_reg[3] <= weights2_addr_21_reg_1879_pp0_iter1_reg[3];
weights2_addr_21_reg_1879_pp0_iter2_reg[11 : 5] <= weights2_addr_21_reg_1879_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_addr_22_reg_1895[0] <= zext_ln168_22_fu_1095_p1[0];
weights2_addr_22_reg_1895[3] <= zext_ln168_22_fu_1095_p1[3];
weights2_addr_22_reg_1895[11 : 5] <= zext_ln168_22_fu_1095_p1[11 : 5];
        weights2_addr_22_reg_1895_pp0_iter1_reg[0] <= weights2_addr_22_reg_1895[0];
weights2_addr_22_reg_1895_pp0_iter1_reg[3] <= weights2_addr_22_reg_1895[3];
weights2_addr_22_reg_1895_pp0_iter1_reg[11 : 5] <= weights2_addr_22_reg_1895[11 : 5];
        weights2_addr_22_reg_1895_pp0_iter2_reg[0] <= weights2_addr_22_reg_1895_pp0_iter1_reg[0];
weights2_addr_22_reg_1895_pp0_iter2_reg[3] <= weights2_addr_22_reg_1895_pp0_iter1_reg[3];
weights2_addr_22_reg_1895_pp0_iter2_reg[11 : 5] <= weights2_addr_22_reg_1895_pp0_iter1_reg[11 : 5];
        weights2_addr_23_reg_1901[3] <= zext_ln168_23_fu_1111_p1[3];
weights2_addr_23_reg_1901[11 : 5] <= zext_ln168_23_fu_1111_p1[11 : 5];
        weights2_addr_23_reg_1901_pp0_iter1_reg[3] <= weights2_addr_23_reg_1901[3];
weights2_addr_23_reg_1901_pp0_iter1_reg[11 : 5] <= weights2_addr_23_reg_1901[11 : 5];
        weights2_addr_23_reg_1901_pp0_iter2_reg[3] <= weights2_addr_23_reg_1901_pp0_iter1_reg[3];
weights2_addr_23_reg_1901_pp0_iter2_reg[11 : 5] <= weights2_addr_23_reg_1901_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_addr_24_reg_1917[2 : 0] <= zext_ln168_24_fu_1130_p1[2 : 0];
weights2_addr_24_reg_1917[11 : 5] <= zext_ln168_24_fu_1130_p1[11 : 5];
        weights2_addr_24_reg_1917_pp0_iter1_reg[2 : 0] <= weights2_addr_24_reg_1917[2 : 0];
weights2_addr_24_reg_1917_pp0_iter1_reg[11 : 5] <= weights2_addr_24_reg_1917[11 : 5];
        weights2_addr_24_reg_1917_pp0_iter2_reg[2 : 0] <= weights2_addr_24_reg_1917_pp0_iter1_reg[2 : 0];
weights2_addr_24_reg_1917_pp0_iter2_reg[11 : 5] <= weights2_addr_24_reg_1917_pp0_iter1_reg[11 : 5];
        weights2_addr_25_reg_1923[2 : 1] <= zext_ln168_25_fu_1146_p1[2 : 1];
weights2_addr_25_reg_1923[11 : 5] <= zext_ln168_25_fu_1146_p1[11 : 5];
        weights2_addr_25_reg_1923_pp0_iter1_reg[2 : 1] <= weights2_addr_25_reg_1923[2 : 1];
weights2_addr_25_reg_1923_pp0_iter1_reg[11 : 5] <= weights2_addr_25_reg_1923[11 : 5];
        weights2_addr_25_reg_1923_pp0_iter2_reg[2 : 1] <= weights2_addr_25_reg_1923_pp0_iter1_reg[2 : 1];
weights2_addr_25_reg_1923_pp0_iter2_reg[11 : 5] <= weights2_addr_25_reg_1923_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_addr_26_reg_1939[0] <= zext_ln168_26_fu_1168_p1[0];
weights2_addr_26_reg_1939[2] <= zext_ln168_26_fu_1168_p1[2];
weights2_addr_26_reg_1939[11 : 5] <= zext_ln168_26_fu_1168_p1[11 : 5];
        weights2_addr_26_reg_1939_pp0_iter1_reg[0] <= weights2_addr_26_reg_1939[0];
weights2_addr_26_reg_1939_pp0_iter1_reg[2] <= weights2_addr_26_reg_1939[2];
weights2_addr_26_reg_1939_pp0_iter1_reg[11 : 5] <= weights2_addr_26_reg_1939[11 : 5];
        weights2_addr_26_reg_1939_pp0_iter2_reg[0] <= weights2_addr_26_reg_1939_pp0_iter1_reg[0];
weights2_addr_26_reg_1939_pp0_iter2_reg[2] <= weights2_addr_26_reg_1939_pp0_iter1_reg[2];
weights2_addr_26_reg_1939_pp0_iter2_reg[11 : 5] <= weights2_addr_26_reg_1939_pp0_iter1_reg[11 : 5];
        weights2_addr_27_reg_1945[2] <= zext_ln168_27_fu_1184_p1[2];
weights2_addr_27_reg_1945[11 : 5] <= zext_ln168_27_fu_1184_p1[11 : 5];
        weights2_addr_27_reg_1945_pp0_iter1_reg[2] <= weights2_addr_27_reg_1945[2];
weights2_addr_27_reg_1945_pp0_iter1_reg[11 : 5] <= weights2_addr_27_reg_1945[11 : 5];
        weights2_addr_27_reg_1945_pp0_iter2_reg[2] <= weights2_addr_27_reg_1945_pp0_iter1_reg[2];
weights2_addr_27_reg_1945_pp0_iter2_reg[11 : 5] <= weights2_addr_27_reg_1945_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_addr_28_reg_1961[1 : 0] <= zext_ln168_28_fu_1203_p1[1 : 0];
weights2_addr_28_reg_1961[11 : 5] <= zext_ln168_28_fu_1203_p1[11 : 5];
        weights2_addr_28_reg_1961_pp0_iter1_reg[1 : 0] <= weights2_addr_28_reg_1961[1 : 0];
weights2_addr_28_reg_1961_pp0_iter1_reg[11 : 5] <= weights2_addr_28_reg_1961[11 : 5];
        weights2_addr_28_reg_1961_pp0_iter2_reg[1 : 0] <= weights2_addr_28_reg_1961_pp0_iter1_reg[1 : 0];
weights2_addr_28_reg_1961_pp0_iter2_reg[11 : 5] <= weights2_addr_28_reg_1961_pp0_iter1_reg[11 : 5];
        weights2_addr_29_reg_1967[1] <= zext_ln168_29_fu_1219_p1[1];
weights2_addr_29_reg_1967[11 : 5] <= zext_ln168_29_fu_1219_p1[11 : 5];
        weights2_addr_29_reg_1967_pp0_iter1_reg[1] <= weights2_addr_29_reg_1967[1];
weights2_addr_29_reg_1967_pp0_iter1_reg[11 : 5] <= weights2_addr_29_reg_1967[11 : 5];
        weights2_addr_29_reg_1967_pp0_iter2_reg[1] <= weights2_addr_29_reg_1967_pp0_iter1_reg[1];
weights2_addr_29_reg_1967_pp0_iter2_reg[11 : 5] <= weights2_addr_29_reg_1967_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_addr_2_reg_1706[0] <= zext_ln168_2_fu_739_p1[0];
weights2_addr_2_reg_1706[11 : 2] <= zext_ln168_2_fu_739_p1[11 : 2];
        weights2_addr_2_reg_1706_pp0_iter1_reg[0] <= weights2_addr_2_reg_1706[0];
weights2_addr_2_reg_1706_pp0_iter1_reg[11 : 2] <= weights2_addr_2_reg_1706[11 : 2];
        weights2_addr_3_reg_1711[11 : 2] <= zext_ln168_3_fu_752_p1[11 : 2];
        weights2_addr_3_reg_1711_pp0_iter1_reg[11 : 2] <= weights2_addr_3_reg_1711[11 : 2];
        weights2_addr_3_reg_1711_pp0_iter2_reg[11 : 2] <= weights2_addr_3_reg_1711_pp0_iter1_reg[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_addr_30_reg_1982[0] <= zext_ln168_30_fu_1238_p1[0];
weights2_addr_30_reg_1982[11 : 5] <= zext_ln168_30_fu_1238_p1[11 : 5];
        weights2_addr_30_reg_1982_pp0_iter1_reg[0] <= weights2_addr_30_reg_1982[0];
weights2_addr_30_reg_1982_pp0_iter1_reg[11 : 5] <= weights2_addr_30_reg_1982[11 : 5];
        weights2_addr_30_reg_1982_pp0_iter2_reg[0] <= weights2_addr_30_reg_1982_pp0_iter1_reg[0];
weights2_addr_30_reg_1982_pp0_iter2_reg[11 : 5] <= weights2_addr_30_reg_1982_pp0_iter1_reg[11 : 5];
        weights2_addr_31_reg_1988[11 : 5] <= zext_ln168_31_fu_1251_p1[11 : 5];
        weights2_addr_31_reg_1988_pp0_iter1_reg[11 : 5] <= weights2_addr_31_reg_1988[11 : 5];
        weights2_addr_31_reg_1988_pp0_iter2_reg[11 : 5] <= weights2_addr_31_reg_1988_pp0_iter1_reg[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_addr_4_reg_1722[1 : 0] <= zext_ln168_4_fu_771_p1[1 : 0];
weights2_addr_4_reg_1722[11 : 3] <= zext_ln168_4_fu_771_p1[11 : 3];
        weights2_addr_4_reg_1722_pp0_iter1_reg[1 : 0] <= weights2_addr_4_reg_1722[1 : 0];
weights2_addr_4_reg_1722_pp0_iter1_reg[11 : 3] <= weights2_addr_4_reg_1722[11 : 3];
        weights2_addr_4_reg_1722_pp0_iter2_reg[1 : 0] <= weights2_addr_4_reg_1722_pp0_iter1_reg[1 : 0];
weights2_addr_4_reg_1722_pp0_iter2_reg[11 : 3] <= weights2_addr_4_reg_1722_pp0_iter1_reg[11 : 3];
        weights2_addr_5_reg_1728[1] <= zext_ln168_5_fu_787_p1[1];
weights2_addr_5_reg_1728[11 : 3] <= zext_ln168_5_fu_787_p1[11 : 3];
        weights2_addr_5_reg_1728_pp0_iter1_reg[1] <= weights2_addr_5_reg_1728[1];
weights2_addr_5_reg_1728_pp0_iter1_reg[11 : 3] <= weights2_addr_5_reg_1728[11 : 3];
        weights2_addr_5_reg_1728_pp0_iter2_reg[1] <= weights2_addr_5_reg_1728_pp0_iter1_reg[1];
weights2_addr_5_reg_1728_pp0_iter2_reg[11 : 3] <= weights2_addr_5_reg_1728_pp0_iter1_reg[11 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_addr_6_reg_1739[0] <= zext_ln168_6_fu_806_p1[0];
weights2_addr_6_reg_1739[11 : 3] <= zext_ln168_6_fu_806_p1[11 : 3];
        weights2_addr_6_reg_1739_pp0_iter1_reg[0] <= weights2_addr_6_reg_1739[0];
weights2_addr_6_reg_1739_pp0_iter1_reg[11 : 3] <= weights2_addr_6_reg_1739[11 : 3];
        weights2_addr_6_reg_1739_pp0_iter2_reg[0] <= weights2_addr_6_reg_1739_pp0_iter1_reg[0];
weights2_addr_6_reg_1739_pp0_iter2_reg[11 : 3] <= weights2_addr_6_reg_1739_pp0_iter1_reg[11 : 3];
        weights2_addr_7_reg_1745[11 : 3] <= zext_ln168_7_fu_819_p1[11 : 3];
        weights2_addr_7_reg_1745_pp0_iter1_reg[11 : 3] <= weights2_addr_7_reg_1745[11 : 3];
        weights2_addr_7_reg_1745_pp0_iter2_reg[11 : 3] <= weights2_addr_7_reg_1745_pp0_iter1_reg[11 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_addr_8_reg_1756[2 : 0] <= zext_ln168_8_fu_838_p1[2 : 0];
weights2_addr_8_reg_1756[11 : 4] <= zext_ln168_8_fu_838_p1[11 : 4];
        weights2_addr_8_reg_1756_pp0_iter1_reg[2 : 0] <= weights2_addr_8_reg_1756[2 : 0];
weights2_addr_8_reg_1756_pp0_iter1_reg[11 : 4] <= weights2_addr_8_reg_1756[11 : 4];
        weights2_addr_8_reg_1756_pp0_iter2_reg[2 : 0] <= weights2_addr_8_reg_1756_pp0_iter1_reg[2 : 0];
weights2_addr_8_reg_1756_pp0_iter2_reg[11 : 4] <= weights2_addr_8_reg_1756_pp0_iter1_reg[11 : 4];
        weights2_addr_9_reg_1762[2 : 1] <= zext_ln168_9_fu_854_p1[2 : 1];
weights2_addr_9_reg_1762[11 : 4] <= zext_ln168_9_fu_854_p1[11 : 4];
        weights2_addr_9_reg_1762_pp0_iter1_reg[2 : 1] <= weights2_addr_9_reg_1762[2 : 1];
weights2_addr_9_reg_1762_pp0_iter1_reg[11 : 4] <= weights2_addr_9_reg_1762[11 : 4];
        weights2_addr_9_reg_1762_pp0_iter2_reg[2 : 1] <= weights2_addr_9_reg_1762_pp0_iter1_reg[2 : 1];
weights2_addr_9_reg_1762_pp0_iter2_reg[11 : 4] <= weights2_addr_9_reg_1762_pp0_iter1_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_load_15_reg_1824 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_load_17_reg_1846 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_load_19_reg_1868 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_load_21_reg_1890 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_load_23_reg_1912 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_load_25_reg_1934 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_load_27_reg_1956 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_load_29_reg_1977 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_load_31_reg_1998 <= weights2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln166_reg_1524 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln166_reg_1524_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_6_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_6_load = i_6_fu_142;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p0 = bitcast_ln168_62_fu_1343_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_421_p0 = bitcast_ln168_60_fu_1338_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p0 = bitcast_ln168_58_fu_1324_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_421_p0 = bitcast_ln168_56_fu_1319_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_421_p0 = bitcast_ln168_54_fu_1315_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_421_p0 = bitcast_ln168_52_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_421_p0 = bitcast_ln168_50_fu_1306_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_421_p0 = bitcast_ln168_48_fu_1301_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_421_p0 = bitcast_ln168_46_fu_1297_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_421_p0 = bitcast_ln168_44_fu_1292_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_421_p0 = bitcast_ln168_42_fu_1288_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_421_p0 = bitcast_ln168_40_fu_1283_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_421_p0 = bitcast_ln168_38_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_421_p0 = bitcast_ln168_36_fu_1274_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_421_p0 = bitcast_ln168_34_fu_1270_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_421_p0 = bitcast_ln168_32_fu_1265_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_421_p0 = bitcast_ln168_30_fu_1261_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_421_p0 = bitcast_ln168_28_fu_1256_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_421_p0 = bitcast_ln168_26_fu_1224_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_421_p0 = bitcast_ln168_24_fu_1189_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_421_p0 = bitcast_ln168_22_fu_1151_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_421_p0 = bitcast_ln168_20_fu_1116_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_421_p0 = bitcast_ln168_18_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_421_p0 = bitcast_ln168_16_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_421_p0 = bitcast_ln168_14_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_421_p0 = bitcast_ln168_12_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_421_p0 = bitcast_ln168_10_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_421_p0 = bitcast_ln168_8_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_421_p0 = bitcast_ln168_6_fu_859_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_421_p0 = bitcast_ln168_4_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_421_p0 = bitcast_ln168_2_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p0 = bitcast_ln168_fu_757_p1;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address0_local = weights2_addr_31_reg_1988_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_address0_local = weights2_addr_30_reg_1982_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_address0_local = weights2_addr_29_reg_1967_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_address0_local = weights2_addr_28_reg_1961_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_address0_local = weights2_addr_26_reg_1939_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_address0_local = weights2_addr_24_reg_1917_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_address0_local = weights2_addr_22_reg_1895_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_address0_local = weights2_addr_20_reg_1873_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_address0_local = weights2_addr_18_reg_1851_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_address0_local = weights2_addr_16_reg_1829_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_address0_local = weights2_addr_14_reg_1807_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_address0_local = weights2_addr_12_reg_1790_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_address0_local = weights2_addr_10_reg_1773_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_address0_local = weights2_addr_8_reg_1756_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_address0_local = weights2_addr_6_reg_1739_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_address0_local = weights2_addr_4_reg_1722_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_address0_local = zext_ln168_31_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_address0_local = zext_ln168_29_fu_1219_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_address0_local = zext_ln168_27_fu_1184_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_address0_local = zext_ln168_25_fu_1146_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_address0_local = zext_ln168_23_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_address0_local = zext_ln168_21_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_address0_local = zext_ln168_19_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_address0_local = zext_ln168_17_fu_994_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_address0_local = zext_ln168_15_fu_959_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_address0_local = zext_ln168_13_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_address0_local = zext_ln168_11_fu_892_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_address0_local = zext_ln168_9_fu_854_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_address0_local = zext_ln168_7_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address0_local = zext_ln168_5_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address0_local = zext_ln168_3_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address0_local = zext_ln168_1_fu_612_p1;
    end else begin
        weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_address1_local = weights2_addr_27_reg_1945_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_address1_local = weights2_addr_25_reg_1923_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_address1_local = weights2_addr_23_reg_1901_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_address1_local = weights2_addr_21_reg_1879_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_address1_local = weights2_addr_19_reg_1857_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_address1_local = weights2_addr_17_reg_1835_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_address1_local = weights2_addr_15_reg_1813_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_address1_local = weights2_addr_13_reg_1796_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_address1_local = weights2_addr_11_reg_1779_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_address1_local = weights2_addr_9_reg_1762_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_address1_local = weights2_addr_7_reg_1745_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_address1_local = weights2_addr_5_reg_1728_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_address1_local = weights2_addr_3_reg_1711_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address1_local = weights2_addr_2_reg_1706_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_address1_local = weights2_addr_1_reg_1582_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_address1_local = weights2_addr_reg_1577_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_address1_local = zext_ln168_30_fu_1238_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_address1_local = zext_ln168_28_fu_1203_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_address1_local = zext_ln168_26_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_address1_local = zext_ln168_24_fu_1130_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_address1_local = zext_ln168_22_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_address1_local = zext_ln168_20_fu_1054_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_address1_local = zext_ln168_18_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_address1_local = zext_ln168_16_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_address1_local = zext_ln168_14_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_address1_local = zext_ln168_12_fu_911_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_address1_local = zext_ln168_10_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_address1_local = zext_ln168_8_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_address1_local = zext_ln168_6_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address1_local = zext_ln168_4_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address1_local = zext_ln168_2_fu_739_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address1_local = zext_ln168_fu_587_p1;
    end else begin
        weights2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_ce0_local = 1'b1;
    end else begin
        weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_ce1_local = 1'b1;
    end else begin
        weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d0_local = bitcast_ln168_63_fu_1493_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_d0_local = bitcast_ln168_61_fu_1488_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_d0_local = bitcast_ln168_59_fu_1483_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_d0_local = bitcast_ln168_57_fu_1478_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_d0_local = bitcast_ln168_53_fu_1468_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_d0_local = bitcast_ln168_49_fu_1458_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_d0_local = bitcast_ln168_45_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_d0_local = bitcast_ln168_41_fu_1438_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_d0_local = bitcast_ln168_37_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_d0_local = bitcast_ln168_33_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_d0_local = bitcast_ln168_29_fu_1414_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_d0_local = bitcast_ln168_25_fu_1406_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_d0_local = bitcast_ln168_21_fu_1397_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_d0_local = bitcast_ln168_17_fu_1387_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_d0_local = bitcast_ln168_13_fu_1377_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_d0_local = bitcast_ln168_9_fu_1367_p1;
    end else begin
        weights2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_d1_local = bitcast_ln168_55_fu_1473_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_d1_local = bitcast_ln168_51_fu_1463_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_d1_local = bitcast_ln168_47_fu_1453_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_d1_local = bitcast_ln168_43_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_d1_local = bitcast_ln168_39_fu_1434_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_d1_local = bitcast_ln168_35_fu_1426_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_d1_local = bitcast_ln168_31_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_d1_local = bitcast_ln168_27_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_d1_local = bitcast_ln168_23_fu_1402_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_d1_local = bitcast_ln168_19_fu_1392_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_d1_local = bitcast_ln168_15_fu_1382_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_d1_local = bitcast_ln168_11_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_d1_local = bitcast_ln168_7_fu_1362_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d1_local = bitcast_ln168_5_fu_1357_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_d1_local = bitcast_ln168_3_fu_1352_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_d1_local = bitcast_ln168_1_fu_1347_p1;
    end else begin
        weights2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights2_we0_local = 1'b1;
    end else begin
        weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights2_we1_local = 1'b1;
    end else begin
        weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln166_1_fu_529_p2 = (ap_sig_allocacmp_i_6_load + 7'd1);
assign add_ln166_fu_520_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 8'd1);
assign add_ln167_fu_1328_p2 = (select_ln121_reg_1538 + 7'd32);
assign add_ln168_10_fu_881_p6 = {{{{{empty_reg_1543}, {tmp_52_reg_1630}}, {1'd1}}, {tmp_48_reg_1654}}, {2'd3}};
assign add_ln168_11_fu_902_p5 = {{{{empty_reg_1543}, {tmp_52_reg_1630}}, {2'd3}}, {trunc_ln168_1_reg_1614}};
assign add_ln168_12_fu_916_p6 = {{{{{empty_reg_1543}, {tmp_52_reg_1630}}, {2'd3}}, {tmp_47_reg_1622}}, {1'd1}};
assign add_ln168_13_fu_937_p5 = {{{{empty_reg_1543}, {tmp_52_reg_1630}}, {3'd7}}, {trunc_ln168_reg_1594}};
assign add_ln168_14_fu_951_p4 = {{{empty_reg_1543}, {tmp_52_reg_1630}}, {4'd15}};
assign add_ln168_15_fu_969_p5 = {{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {trunc_ln168_3_reg_1682}};
assign add_ln168_16_fu_983_p6 = {{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {tmp_55_reg_1687}}, {1'd1}};
assign add_ln168_17_fu_1004_p7 = {{{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {tmp_56_reg_1692}}, {1'd1}}, {trunc_ln168_reg_1594}};
assign add_ln168_18_fu_1021_p6 = {{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {tmp_56_reg_1692}}, {2'd3}};
assign add_ln168_19_fu_1042_p7 = {{{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {tmp_57_reg_1698}}, {1'd1}}, {trunc_ln168_1_reg_1614}};
assign add_ln168_1_fu_602_p4 = {{{empty_fu_565_p1}, {tmp_49_fu_592_p4}}, {1'd1}};
assign add_ln168_20_fu_1059_p8 = {{{{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {tmp_57_reg_1698}}, {1'd1}}, {tmp_47_reg_1622}}, {1'd1}};
assign add_ln168_21_fu_1083_p7 = {{{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {tmp_57_reg_1698}}, {2'd3}}, {trunc_ln168_reg_1594}};
assign add_ln168_22_fu_1100_p6 = {{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {1'd1}}, {tmp_57_reg_1698}}, {3'd7}};
assign add_ln168_23_fu_1121_p5 = {{{{empty_reg_1543}, {tmp_54_reg_1662}}, {2'd3}}, {trunc_ln168_2_reg_1642}};
assign add_ln168_24_fu_1135_p6 = {{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {2'd3}}, {tmp_53_reg_1648}}, {1'd1}};
assign add_ln168_25_fu_1156_p7 = {{{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {2'd3}}, {tmp_48_reg_1654}}, {1'd1}}, {trunc_ln168_reg_1594}};
assign add_ln168_26_fu_1173_p6 = {{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {2'd3}}, {tmp_48_reg_1654}}, {2'd3}};
assign add_ln168_27_fu_1194_p5 = {{{{empty_reg_1543}, {tmp_54_reg_1662}}, {3'd7}}, {trunc_ln168_1_reg_1614}};
assign add_ln168_28_fu_1208_p6 = {{{{{empty_reg_1543}, {tmp_54_reg_1662}}, {3'd7}}, {tmp_47_reg_1622}}, {1'd1}};
assign add_ln168_29_fu_1229_p5 = {{{{empty_reg_1543}, {tmp_54_reg_1662}}, {4'd15}}, {trunc_ln168_reg_1594}};
assign add_ln168_2_fu_730_p5 = {{{{empty_reg_1543}, {tmp_50_reg_1588}}, {1'd1}}, {trunc_ln168_reg_1594}};
assign add_ln168_30_fu_1243_p4 = {{{empty_reg_1543}, {tmp_54_reg_1662}}, {5'd31}};
assign add_ln168_3_fu_744_p4 = {{{empty_reg_1543}, {tmp_50_reg_1588}}, {2'd3}};
assign add_ln168_4_fu_762_p5 = {{{{empty_reg_1543}, {tmp_51_reg_1606}}, {1'd1}}, {trunc_ln168_1_reg_1614}};
assign add_ln168_5_fu_776_p6 = {{{{{empty_reg_1543}, {tmp_51_reg_1606}}, {1'd1}}, {tmp_47_reg_1622}}, {1'd1}};
assign add_ln168_6_fu_797_p5 = {{{{empty_reg_1543}, {tmp_51_reg_1606}}, {2'd3}}, {trunc_ln168_reg_1594}};
assign add_ln168_7_fu_811_p4 = {{{empty_reg_1543}, {tmp_51_reg_1606}}, {3'd7}};
assign add_ln168_8_fu_829_p5 = {{{{empty_reg_1543}, {tmp_52_reg_1630}}, {1'd1}}, {trunc_ln168_2_reg_1642}};
assign add_ln168_9_fu_843_p6 = {{{{{empty_reg_1543}, {tmp_52_reg_1630}}, {1'd1}}, {tmp_53_reg_1648}}, {1'd1}};
assign add_ln168_fu_581_p2 = (zext_ln167_fu_577_p1 + tmp_s_fu_569_p3);
assign add_ln168_s_fu_864_p7 = {{{{{{empty_reg_1543}, {tmp_52_reg_1630}}, {1'd1}}, {tmp_48_reg_1654}}, {1'd1}}, {trunc_ln168_reg_1594}};
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage31;
assign ap_ready = ap_ready_sig;
assign bitcast_ln168_10_fu_932_p1 = reg_439;
assign bitcast_ln168_11_fu_1372_p1 = reg_472;
assign bitcast_ln168_12_fu_964_p1 = reg_425;
assign bitcast_ln168_13_fu_1377_p1 = reg_476;
assign bitcast_ln168_14_fu_999_p1 = reg_444;
assign bitcast_ln168_15_fu_1382_p1 = reg_480;
assign bitcast_ln168_16_fu_1037_p1 = reg_434;
assign bitcast_ln168_17_fu_1387_p1 = reg_484;
assign bitcast_ln168_18_fu_1078_p1 = reg_449;
assign bitcast_ln168_19_fu_1392_p1 = reg_488;
assign bitcast_ln168_1_fu_1347_p1 = reg_464;
assign bitcast_ln168_20_fu_1116_p1 = reg_429;
assign bitcast_ln168_21_fu_1397_p1 = reg_492;
assign bitcast_ln168_22_fu_1151_p1 = reg_454;
assign bitcast_ln168_23_fu_1402_p1 = div131_10_reg_2088;
assign bitcast_ln168_24_fu_1189_p1 = reg_439;
assign bitcast_ln168_25_fu_1406_p1 = div131_11_reg_2093;
assign bitcast_ln168_26_fu_1224_p1 = reg_459;
assign bitcast_ln168_27_fu_1410_p1 = div131_12_reg_2098;
assign bitcast_ln168_28_fu_1256_p1 = reg_425;
assign bitcast_ln168_29_fu_1414_p1 = div131_13_reg_2103;
assign bitcast_ln168_2_fu_792_p1 = reg_429;
assign bitcast_ln168_30_fu_1261_p1 = weights2_load_15_reg_1824;
assign bitcast_ln168_31_fu_1418_p1 = div131_14_reg_2108;
assign bitcast_ln168_32_fu_1265_p1 = reg_444;
assign bitcast_ln168_33_fu_1422_p1 = div131_15_reg_2113;
assign bitcast_ln168_34_fu_1270_p1 = weights2_load_17_reg_1846;
assign bitcast_ln168_35_fu_1426_p1 = div131_16_reg_2118;
assign bitcast_ln168_36_fu_1274_p1 = reg_434;
assign bitcast_ln168_37_fu_1430_p1 = div131_17_reg_2123;
assign bitcast_ln168_38_fu_1279_p1 = weights2_load_19_reg_1868;
assign bitcast_ln168_39_fu_1434_p1 = div131_18_reg_2128;
assign bitcast_ln168_3_fu_1352_p1 = reg_464;
assign bitcast_ln168_40_fu_1283_p1 = reg_449;
assign bitcast_ln168_41_fu_1438_p1 = reg_464;
assign bitcast_ln168_42_fu_1288_p1 = weights2_load_21_reg_1890;
assign bitcast_ln168_43_fu_1443_p1 = reg_468;
assign bitcast_ln168_44_fu_1292_p1 = reg_429;
assign bitcast_ln168_45_fu_1448_p1 = reg_472;
assign bitcast_ln168_46_fu_1297_p1 = weights2_load_23_reg_1912;
assign bitcast_ln168_47_fu_1453_p1 = reg_476;
assign bitcast_ln168_48_fu_1301_p1 = reg_454;
assign bitcast_ln168_49_fu_1458_p1 = reg_480;
assign bitcast_ln168_4_fu_824_p1 = reg_425;
assign bitcast_ln168_50_fu_1306_p1 = weights2_load_25_reg_1934;
assign bitcast_ln168_51_fu_1463_p1 = reg_484;
assign bitcast_ln168_52_fu_1310_p1 = reg_439;
assign bitcast_ln168_53_fu_1468_p1 = reg_488;
assign bitcast_ln168_54_fu_1315_p1 = weights2_load_27_reg_1956;
assign bitcast_ln168_55_fu_1473_p1 = reg_492;
assign bitcast_ln168_56_fu_1319_p1 = reg_459;
assign bitcast_ln168_57_fu_1478_p1 = reg_464;
assign bitcast_ln168_58_fu_1324_p1 = weights2_load_29_reg_1977;
assign bitcast_ln168_59_fu_1483_p1 = reg_468;
assign bitcast_ln168_5_fu_1357_p1 = reg_464;
assign bitcast_ln168_60_fu_1338_p1 = reg_425;
assign bitcast_ln168_61_fu_1488_p1 = reg_472;
assign bitcast_ln168_62_fu_1343_p1 = weights2_load_31_reg_1998;
assign bitcast_ln168_63_fu_1493_p1 = reg_476;
assign bitcast_ln168_6_fu_859_p1 = reg_434;
assign bitcast_ln168_7_fu_1362_p1 = reg_464;
assign bitcast_ln168_8_fu_897_p1 = reg_429;
assign bitcast_ln168_9_fu_1367_p1 = reg_468;
assign bitcast_ln168_fu_757_p1 = reg_425;
assign empty_fu_565_p1 = select_ln166_fu_559_p3[5:0];
assign icmp_ln166_fu_514_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 8'd128) ? 1'b1 : 1'b0);
assign select_ln121_fu_551_p3 = ((tmp_fu_543_p3[0:0] == 1'b1) ? 7'd0 : j_fu_138);
assign select_ln166_fu_559_p3 = ((tmp_fu_543_p3[0:0] == 1'b1) ? add_ln166_1_reg_1533 : i_6_load_reg_1528);
assign tmp_49_fu_592_p4 = {{select_ln121_fu_551_p3[5:1]}};
assign tmp_fu_543_p3 = j_fu_138[32'd6];
assign tmp_s_fu_569_p3 = {{empty_fu_565_p1}, {6'd0}};
assign trunc_ln168_1_fu_641_p1 = select_ln121_fu_551_p3[1:0];
assign trunc_ln168_2_fu_663_p1 = select_ln121_fu_551_p3[2:0];
assign trunc_ln168_3_fu_693_p1 = select_ln121_fu_551_p3[3:0];
assign trunc_ln168_fu_627_p1 = select_ln121_fu_551_p3[0:0];
assign weights2_address0 = weights2_address0_local;
assign weights2_address1 = weights2_address1_local;
assign weights2_ce0 = weights2_ce0_local;
assign weights2_ce1 = weights2_ce1_local;
assign weights2_d0 = weights2_d0_local;
assign weights2_d1 = weights2_d1_local;
assign weights2_we0 = weights2_we0_local;
assign weights2_we1 = weights2_we1_local;
assign zext_ln167_fu_577_p1 = select_ln121_fu_551_p3;
assign zext_ln168_10_fu_876_p1 = add_ln168_s_fu_864_p7;
assign zext_ln168_11_fu_892_p1 = add_ln168_10_fu_881_p6;
assign zext_ln168_12_fu_911_p1 = add_ln168_11_fu_902_p5;
assign zext_ln168_13_fu_927_p1 = add_ln168_12_fu_916_p6;
assign zext_ln168_14_fu_946_p1 = add_ln168_13_fu_937_p5;
assign zext_ln168_15_fu_959_p1 = add_ln168_14_fu_951_p4;
assign zext_ln168_16_fu_978_p1 = add_ln168_15_fu_969_p5;
assign zext_ln168_17_fu_994_p1 = add_ln168_16_fu_983_p6;
assign zext_ln168_18_fu_1016_p1 = add_ln168_17_fu_1004_p7;
assign zext_ln168_19_fu_1032_p1 = add_ln168_18_fu_1021_p6;
assign zext_ln168_1_fu_612_p1 = add_ln168_1_fu_602_p4;
assign zext_ln168_20_fu_1054_p1 = add_ln168_19_fu_1042_p7;
assign zext_ln168_21_fu_1073_p1 = add_ln168_20_fu_1059_p8;
assign zext_ln168_22_fu_1095_p1 = add_ln168_21_fu_1083_p7;
assign zext_ln168_23_fu_1111_p1 = add_ln168_22_fu_1100_p6;
assign zext_ln168_24_fu_1130_p1 = add_ln168_23_fu_1121_p5;
assign zext_ln168_25_fu_1146_p1 = add_ln168_24_fu_1135_p6;
assign zext_ln168_26_fu_1168_p1 = add_ln168_25_fu_1156_p7;
assign zext_ln168_27_fu_1184_p1 = add_ln168_26_fu_1173_p6;
assign zext_ln168_28_fu_1203_p1 = add_ln168_27_fu_1194_p5;
assign zext_ln168_29_fu_1219_p1 = add_ln168_28_fu_1208_p6;
assign zext_ln168_2_fu_739_p1 = add_ln168_2_fu_730_p5;
assign zext_ln168_30_fu_1238_p1 = add_ln168_29_fu_1229_p5;
assign zext_ln168_31_fu_1251_p1 = add_ln168_30_fu_1243_p4;
assign zext_ln168_3_fu_752_p1 = add_ln168_3_fu_744_p4;
assign zext_ln168_4_fu_771_p1 = add_ln168_4_fu_762_p5;
assign zext_ln168_5_fu_787_p1 = add_ln168_5_fu_776_p6;
assign zext_ln168_6_fu_806_p1 = add_ln168_6_fu_797_p5;
assign zext_ln168_7_fu_819_p1 = add_ln168_7_fu_811_p4;
assign zext_ln168_8_fu_838_p1 = add_ln168_8_fu_829_p5;
assign zext_ln168_9_fu_854_p1 = add_ln168_9_fu_843_p6;
assign zext_ln168_fu_587_p1 = add_ln168_fu_581_p2;
always @ (posedge ap_clk) begin
    weights2_addr_1_reg_1582[0] <= 1'b1;
    weights2_addr_1_reg_1582_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_2_reg_1706[1] <= 1'b1;
    weights2_addr_2_reg_1706_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_3_reg_1711[1:0] <= 2'b11;
    weights2_addr_3_reg_1711_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_1711_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_4_reg_1722[2] <= 1'b1;
    weights2_addr_4_reg_1722_pp0_iter1_reg[2] <= 1'b1;
    weights2_addr_4_reg_1722_pp0_iter2_reg[2] <= 1'b1;
    weights2_addr_5_reg_1728[0] <= 1'b1;
    weights2_addr_5_reg_1728[2] <= 1'b1;
    weights2_addr_5_reg_1728_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_5_reg_1728_pp0_iter1_reg[2] <= 1'b1;
    weights2_addr_5_reg_1728_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_5_reg_1728_pp0_iter2_reg[2] <= 1'b1;
    weights2_addr_6_reg_1739[2:1] <= 2'b11;
    weights2_addr_6_reg_1739_pp0_iter1_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_1739_pp0_iter2_reg[2:1] <= 2'b11;
    weights2_addr_7_reg_1745[2:0] <= 3'b111;
    weights2_addr_7_reg_1745_pp0_iter1_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_1745_pp0_iter2_reg[2:0] <= 3'b111;
    weights2_addr_8_reg_1756[3] <= 1'b1;
    weights2_addr_8_reg_1756_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_8_reg_1756_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_9_reg_1762[0] <= 1'b1;
    weights2_addr_9_reg_1762[3] <= 1'b1;
    weights2_addr_9_reg_1762_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_9_reg_1762_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_9_reg_1762_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_9_reg_1762_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_10_reg_1773[1] <= 1'b1;
    weights2_addr_10_reg_1773[3] <= 1'b1;
    weights2_addr_10_reg_1773_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_10_reg_1773_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_10_reg_1773_pp0_iter2_reg[1] <= 1'b1;
    weights2_addr_10_reg_1773_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_11_reg_1779[1:0] <= 2'b11;
    weights2_addr_11_reg_1779[3] <= 1'b1;
    weights2_addr_11_reg_1779_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_11_reg_1779_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_11_reg_1779_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_11_reg_1779_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_12_reg_1790[3:2] <= 2'b11;
    weights2_addr_12_reg_1790_pp0_iter1_reg[3:2] <= 2'b11;
    weights2_addr_12_reg_1790_pp0_iter2_reg[3:2] <= 2'b11;
    weights2_addr_13_reg_1796[0] <= 1'b1;
    weights2_addr_13_reg_1796[3:2] <= 2'b11;
    weights2_addr_13_reg_1796_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_13_reg_1796_pp0_iter1_reg[3:2] <= 2'b11;
    weights2_addr_13_reg_1796_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_13_reg_1796_pp0_iter2_reg[3:2] <= 2'b11;
    weights2_addr_14_reg_1807[3:1] <= 3'b111;
    weights2_addr_14_reg_1807_pp0_iter1_reg[3:1] <= 3'b111;
    weights2_addr_14_reg_1807_pp0_iter2_reg[3:1] <= 3'b111;
    weights2_addr_15_reg_1813[3:0] <= 4'b1111;
    weights2_addr_15_reg_1813_pp0_iter1_reg[3:0] <= 4'b1111;
    weights2_addr_15_reg_1813_pp0_iter2_reg[3:0] <= 4'b1111;
    weights2_addr_16_reg_1829[4] <= 1'b1;
    weights2_addr_16_reg_1829_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_16_reg_1829_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_17_reg_1835[0] <= 1'b1;
    weights2_addr_17_reg_1835[4] <= 1'b1;
    weights2_addr_17_reg_1835_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_17_reg_1835_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_17_reg_1835_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_17_reg_1835_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_18_reg_1851[1] <= 1'b1;
    weights2_addr_18_reg_1851[4] <= 1'b1;
    weights2_addr_18_reg_1851_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_18_reg_1851_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_18_reg_1851_pp0_iter2_reg[1] <= 1'b1;
    weights2_addr_18_reg_1851_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_19_reg_1857[1:0] <= 2'b11;
    weights2_addr_19_reg_1857[4] <= 1'b1;
    weights2_addr_19_reg_1857_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_19_reg_1857_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_19_reg_1857_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_19_reg_1857_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_20_reg_1873[2] <= 1'b1;
    weights2_addr_20_reg_1873[4] <= 1'b1;
    weights2_addr_20_reg_1873_pp0_iter1_reg[2] <= 1'b1;
    weights2_addr_20_reg_1873_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_20_reg_1873_pp0_iter2_reg[2] <= 1'b1;
    weights2_addr_20_reg_1873_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_21_reg_1879[0] <= 1'b1;
    weights2_addr_21_reg_1879[2:2] <= 1'b1;
    weights2_addr_21_reg_1879[4] <= 1'b1;
    weights2_addr_21_reg_1879_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_21_reg_1879_pp0_iter1_reg[2:2] <= 1'b1;
    weights2_addr_21_reg_1879_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_21_reg_1879_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_21_reg_1879_pp0_iter2_reg[2:2] <= 1'b1;
    weights2_addr_21_reg_1879_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_22_reg_1895[2:1] <= 2'b11;
    weights2_addr_22_reg_1895[4] <= 1'b1;
    weights2_addr_22_reg_1895_pp0_iter1_reg[2:1] <= 2'b11;
    weights2_addr_22_reg_1895_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_22_reg_1895_pp0_iter2_reg[2:1] <= 2'b11;
    weights2_addr_22_reg_1895_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_23_reg_1901[2:0] <= 3'b111;
    weights2_addr_23_reg_1901[4] <= 1'b1;
    weights2_addr_23_reg_1901_pp0_iter1_reg[2:0] <= 3'b111;
    weights2_addr_23_reg_1901_pp0_iter1_reg[4] <= 1'b1;
    weights2_addr_23_reg_1901_pp0_iter2_reg[2:0] <= 3'b111;
    weights2_addr_23_reg_1901_pp0_iter2_reg[4] <= 1'b1;
    weights2_addr_24_reg_1917[4:3] <= 2'b11;
    weights2_addr_24_reg_1917_pp0_iter1_reg[4:3] <= 2'b11;
    weights2_addr_24_reg_1917_pp0_iter2_reg[4:3] <= 2'b11;
    weights2_addr_25_reg_1923[0] <= 1'b1;
    weights2_addr_25_reg_1923[4:3] <= 2'b11;
    weights2_addr_25_reg_1923_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_25_reg_1923_pp0_iter1_reg[4:3] <= 2'b11;
    weights2_addr_25_reg_1923_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_25_reg_1923_pp0_iter2_reg[4:3] <= 2'b11;
    weights2_addr_26_reg_1939[1] <= 1'b1;
    weights2_addr_26_reg_1939[4:3] <= 2'b11;
    weights2_addr_26_reg_1939_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_26_reg_1939_pp0_iter1_reg[4:3] <= 2'b11;
    weights2_addr_26_reg_1939_pp0_iter2_reg[1] <= 1'b1;
    weights2_addr_26_reg_1939_pp0_iter2_reg[4:3] <= 2'b11;
    weights2_addr_27_reg_1945[1:0] <= 2'b11;
    weights2_addr_27_reg_1945[4:3] <= 2'b11;
    weights2_addr_27_reg_1945_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_27_reg_1945_pp0_iter1_reg[4:3] <= 2'b11;
    weights2_addr_27_reg_1945_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_27_reg_1945_pp0_iter2_reg[4:3] <= 2'b11;
    weights2_addr_28_reg_1961[4:2] <= 3'b111;
    weights2_addr_28_reg_1961_pp0_iter1_reg[4:2] <= 3'b111;
    weights2_addr_28_reg_1961_pp0_iter2_reg[4:2] <= 3'b111;
    weights2_addr_29_reg_1967[0] <= 1'b1;
    weights2_addr_29_reg_1967[4:2] <= 3'b111;
    weights2_addr_29_reg_1967_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_29_reg_1967_pp0_iter1_reg[4:2] <= 3'b111;
    weights2_addr_29_reg_1967_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_29_reg_1967_pp0_iter2_reg[4:2] <= 3'b111;
    weights2_addr_30_reg_1982[4:1] <= 4'b1111;
    weights2_addr_30_reg_1982_pp0_iter1_reg[4:1] <= 4'b1111;
    weights2_addr_30_reg_1982_pp0_iter2_reg[4:1] <= 4'b1111;
    weights2_addr_31_reg_1988[4:0] <= 5'b11111;
    weights2_addr_31_reg_1988_pp0_iter1_reg[4:0] <= 5'b11111;
    weights2_addr_31_reg_1988_pp0_iter2_reg[4:0] <= 5'b11111;
end
endmodule 
