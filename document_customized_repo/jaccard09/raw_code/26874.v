module backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,norm_1,grp_fu_381_p_din0,grp_fu_381_p_din1,grp_fu_381_p_dout0,grp_fu_381_p_ce); 
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
output  [9:0] weights1_address0;
output   weights1_ce0;
output   weights1_we0;
output  [63:0] weights1_d0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
output   weights1_we1;
output  [63:0] weights1_d1;
input  [63:0] weights1_q1;
input  [63:0] norm_1;
output  [63:0] grp_fu_381_p_din0;
output  [63:0] grp_fu_381_p_din1;
input  [63:0] grp_fu_381_p_dout0;
output   grp_fu_381_p_ce;
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
reg   [0:0] icmp_ln140_reg_1522;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_427;
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
reg   [63:0] reg_431;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_436;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_441;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_446;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_451;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_456;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_461;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_466;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_block_pp0_stage31_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_470;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_474;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_478;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_482;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_486;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_490;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_494;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [0:0] icmp_ln140_fu_516_p2;
reg   [0:0] icmp_ln140_reg_1522_pp0_iter1_reg;
reg   [3:0] i_2_load_reg_1526;
wire   [3:0] add_ln140_1_fu_531_p2;
reg   [3:0] add_ln140_1_reg_1531;
wire   [6:0] select_ln121_fu_553_p3;
reg   [6:0] select_ln121_reg_1536;
wire   [3:0] select_ln140_fu_561_p3;
reg   [3:0] select_ln140_reg_1541;
reg   [9:0] weights1_addr_reg_1575;
reg   [9:0] weights1_addr_reg_1575_pp0_iter1_reg;
reg   [9:0] weights1_addr_1_reg_1580;
reg   [9:0] weights1_addr_1_reg_1580_pp0_iter1_reg;
reg   [3:0] tmp_68_reg_1586;
wire   [0:0] trunc_ln142_fu_625_p1;
reg   [0:0] trunc_ln142_reg_1592;
reg   [2:0] tmp_69_reg_1604;
wire   [1:0] trunc_ln142_1_fu_639_p1;
reg   [1:0] trunc_ln142_1_reg_1612;
reg   [0:0] tmp_70_reg_1620;
reg   [1:0] tmp_71_reg_1628;
wire   [2:0] trunc_ln142_2_fu_661_p1;
reg   [2:0] trunc_ln142_2_reg_1640;
reg   [1:0] tmp_72_reg_1646;
reg   [0:0] tmp_73_reg_1652;
reg   [0:0] tmp_74_reg_1660;
wire   [3:0] trunc_ln142_3_fu_691_p1;
reg   [3:0] trunc_ln142_3_reg_1680;
reg   [2:0] tmp_75_reg_1685;
reg   [1:0] tmp_76_reg_1690;
reg   [0:0] tmp_77_reg_1696;
reg   [9:0] weights1_addr_2_reg_1704;
reg   [9:0] weights1_addr_2_reg_1704_pp0_iter1_reg;
reg   [9:0] weights1_addr_3_reg_1709;
reg   [9:0] weights1_addr_3_reg_1709_pp0_iter1_reg;
reg   [9:0] weights1_addr_3_reg_1709_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_fu_755_p1;
reg   [9:0] weights1_addr_4_reg_1720;
reg   [9:0] weights1_addr_4_reg_1720_pp0_iter1_reg;
reg   [9:0] weights1_addr_4_reg_1720_pp0_iter2_reg;
reg   [9:0] weights1_addr_5_reg_1726;
reg   [9:0] weights1_addr_5_reg_1726_pp0_iter1_reg;
reg   [9:0] weights1_addr_5_reg_1726_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_2_fu_790_p1;
reg   [9:0] weights1_addr_6_reg_1737;
reg   [9:0] weights1_addr_6_reg_1737_pp0_iter1_reg;
reg   [9:0] weights1_addr_6_reg_1737_pp0_iter2_reg;
reg   [9:0] weights1_addr_7_reg_1743;
reg   [9:0] weights1_addr_7_reg_1743_pp0_iter1_reg;
reg   [9:0] weights1_addr_7_reg_1743_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_4_fu_822_p1;
reg   [9:0] weights1_addr_8_reg_1754;
reg   [9:0] weights1_addr_8_reg_1754_pp0_iter1_reg;
reg   [9:0] weights1_addr_8_reg_1754_pp0_iter2_reg;
reg   [9:0] weights1_addr_9_reg_1760;
reg   [9:0] weights1_addr_9_reg_1760_pp0_iter1_reg;
reg   [9:0] weights1_addr_9_reg_1760_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_6_fu_857_p1;
reg   [9:0] weights1_addr_10_reg_1771;
reg   [9:0] weights1_addr_10_reg_1771_pp0_iter1_reg;
reg   [9:0] weights1_addr_10_reg_1771_pp0_iter2_reg;
reg   [9:0] weights1_addr_11_reg_1777;
reg   [9:0] weights1_addr_11_reg_1777_pp0_iter1_reg;
reg   [9:0] weights1_addr_11_reg_1777_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_8_fu_895_p1;
reg   [9:0] weights1_addr_12_reg_1788;
reg   [9:0] weights1_addr_12_reg_1788_pp0_iter1_reg;
reg   [9:0] weights1_addr_12_reg_1788_pp0_iter2_reg;
reg   [9:0] weights1_addr_13_reg_1794;
reg   [9:0] weights1_addr_13_reg_1794_pp0_iter1_reg;
reg   [9:0] weights1_addr_13_reg_1794_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_10_fu_930_p1;
reg   [9:0] weights1_addr_14_reg_1805;
reg   [9:0] weights1_addr_14_reg_1805_pp0_iter1_reg;
reg   [9:0] weights1_addr_14_reg_1805_pp0_iter2_reg;
reg   [9:0] weights1_addr_15_reg_1811;
reg   [9:0] weights1_addr_15_reg_1811_pp0_iter1_reg;
reg   [9:0] weights1_addr_15_reg_1811_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_12_fu_962_p1;
reg   [63:0] weights1_load_15_reg_1822;
reg   [9:0] weights1_addr_16_reg_1827;
reg   [9:0] weights1_addr_16_reg_1827_pp0_iter1_reg;
reg   [9:0] weights1_addr_16_reg_1827_pp0_iter2_reg;
reg   [9:0] weights1_addr_17_reg_1833;
reg   [9:0] weights1_addr_17_reg_1833_pp0_iter1_reg;
reg   [9:0] weights1_addr_17_reg_1833_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_14_fu_997_p1;
reg   [63:0] weights1_load_17_reg_1844;
reg   [9:0] weights1_addr_18_reg_1849;
reg   [9:0] weights1_addr_18_reg_1849_pp0_iter1_reg;
reg   [9:0] weights1_addr_18_reg_1849_pp0_iter2_reg;
reg   [9:0] weights1_addr_19_reg_1855;
reg   [9:0] weights1_addr_19_reg_1855_pp0_iter1_reg;
reg   [9:0] weights1_addr_19_reg_1855_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_16_fu_1035_p1;
reg   [63:0] weights1_load_19_reg_1866;
reg   [9:0] weights1_addr_20_reg_1871;
reg   [9:0] weights1_addr_20_reg_1871_pp0_iter1_reg;
reg   [9:0] weights1_addr_20_reg_1871_pp0_iter2_reg;
reg   [9:0] weights1_addr_21_reg_1877;
reg   [9:0] weights1_addr_21_reg_1877_pp0_iter1_reg;
reg   [9:0] weights1_addr_21_reg_1877_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_18_fu_1076_p1;
reg   [63:0] weights1_load_21_reg_1888;
reg   [9:0] weights1_addr_22_reg_1893;
reg   [9:0] weights1_addr_22_reg_1893_pp0_iter1_reg;
reg   [9:0] weights1_addr_22_reg_1893_pp0_iter2_reg;
reg   [9:0] weights1_addr_23_reg_1899;
reg   [9:0] weights1_addr_23_reg_1899_pp0_iter1_reg;
reg   [9:0] weights1_addr_23_reg_1899_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_20_fu_1114_p1;
reg   [63:0] weights1_load_23_reg_1910;
reg   [9:0] weights1_addr_24_reg_1915;
reg   [9:0] weights1_addr_24_reg_1915_pp0_iter1_reg;
reg   [9:0] weights1_addr_24_reg_1915_pp0_iter2_reg;
reg   [9:0] weights1_addr_25_reg_1921;
reg   [9:0] weights1_addr_25_reg_1921_pp0_iter1_reg;
reg   [9:0] weights1_addr_25_reg_1921_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_22_fu_1149_p1;
reg   [63:0] weights1_load_25_reg_1932;
reg   [9:0] weights1_addr_26_reg_1937;
reg   [9:0] weights1_addr_26_reg_1937_pp0_iter1_reg;
reg   [9:0] weights1_addr_26_reg_1937_pp0_iter2_reg;
reg   [9:0] weights1_addr_27_reg_1943;
reg   [9:0] weights1_addr_27_reg_1943_pp0_iter1_reg;
reg   [9:0] weights1_addr_27_reg_1943_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_24_fu_1187_p1;
reg   [63:0] weights1_load_27_reg_1954;
reg   [9:0] weights1_addr_28_reg_1959;
reg   [9:0] weights1_addr_28_reg_1959_pp0_iter1_reg;
reg   [9:0] weights1_addr_28_reg_1959_pp0_iter2_reg;
reg   [9:0] weights1_addr_29_reg_1965;
reg   [9:0] weights1_addr_29_reg_1965_pp0_iter1_reg;
reg   [9:0] weights1_addr_29_reg_1965_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_26_fu_1222_p1;
reg   [63:0] weights1_load_29_reg_1975;
reg   [9:0] weights1_addr_30_reg_1980;
reg   [9:0] weights1_addr_30_reg_1980_pp0_iter1_reg;
reg   [9:0] weights1_addr_30_reg_1980_pp0_iter2_reg;
reg   [9:0] weights1_addr_31_reg_1986;
reg   [9:0] weights1_addr_31_reg_1986_pp0_iter1_reg;
reg   [9:0] weights1_addr_31_reg_1986_pp0_iter2_reg;
wire   [63:0] bitcast_ln142_28_fu_1254_p1;
reg   [63:0] weights1_load_31_reg_1996;
wire   [63:0] bitcast_ln142_30_fu_1259_p1;
wire   [63:0] bitcast_ln142_32_fu_1263_p1;
wire   [63:0] bitcast_ln142_34_fu_1268_p1;
wire   [63:0] bitcast_ln142_36_fu_1272_p1;
wire   [63:0] bitcast_ln142_38_fu_1277_p1;
wire   [63:0] bitcast_ln142_40_fu_1281_p1;
wire   [63:0] bitcast_ln142_42_fu_1286_p1;
wire   [63:0] bitcast_ln142_44_fu_1290_p1;
wire   [63:0] bitcast_ln142_46_fu_1295_p1;
wire   [63:0] bitcast_ln142_48_fu_1299_p1;
wire   [63:0] bitcast_ln142_50_fu_1304_p1;
wire   [63:0] bitcast_ln142_52_fu_1308_p1;
wire   [63:0] bitcast_ln142_54_fu_1313_p1;
wire   [63:0] bitcast_ln142_56_fu_1317_p1;
wire   [63:0] bitcast_ln142_58_fu_1322_p1;
wire   [63:0] bitcast_ln142_60_fu_1336_p1;
wire   [63:0] bitcast_ln142_62_fu_1341_p1;
reg   [63:0] div_10_reg_2086;
reg   [63:0] div_11_reg_2091;
reg   [63:0] div_12_reg_2096;
reg   [63:0] div_13_reg_2101;
reg   [63:0] div_14_reg_2106;
reg   [63:0] div_15_reg_2111;
reg   [63:0] div_16_reg_2116;
reg   [63:0] div_17_reg_2121;
reg   [63:0] div_18_reg_2126;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln142_fu_585_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln142_1_fu_610_p1;
wire   [63:0] zext_ln142_2_fu_737_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln142_3_fu_750_p1;
wire   [63:0] zext_ln142_4_fu_769_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln142_5_fu_785_p1;
wire   [63:0] zext_ln142_6_fu_804_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln142_7_fu_817_p1;
wire   [63:0] zext_ln142_8_fu_836_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln142_9_fu_852_p1;
wire   [63:0] zext_ln142_10_fu_874_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln142_11_fu_890_p1;
wire   [63:0] zext_ln142_12_fu_909_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln142_13_fu_925_p1;
wire   [63:0] zext_ln142_14_fu_944_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln142_15_fu_957_p1;
wire   [63:0] zext_ln142_16_fu_976_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln142_17_fu_992_p1;
wire   [63:0] zext_ln142_18_fu_1014_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln142_19_fu_1030_p1;
wire   [63:0] zext_ln142_20_fu_1052_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln142_21_fu_1071_p1;
wire   [63:0] zext_ln142_22_fu_1093_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln142_23_fu_1109_p1;
wire   [63:0] zext_ln142_24_fu_1128_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln142_25_fu_1144_p1;
wire   [63:0] zext_ln142_26_fu_1166_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln142_27_fu_1182_p1;
wire   [63:0] zext_ln142_28_fu_1201_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln142_29_fu_1217_p1;
wire   [63:0] zext_ln142_30_fu_1236_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln142_31_fu_1249_p1;
reg   [6:0] j_fu_140;
wire   [6:0] add_ln141_fu_1326_p2;
wire    ap_loop_init;
reg   [3:0] i_2_fu_144;
reg   [3:0] ap_sig_allocacmp_i_2_load;
wire    ap_block_pp0_stage0;
reg   [4:0] indvar_flatten6_fu_148;
wire   [4:0] add_ln140_fu_522_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    weights1_we1_local;
reg   [63:0] weights1_d1_local;
wire   [63:0] bitcast_ln142_1_fu_1345_p1;
wire    ap_block_pp0_stage30;
wire   [63:0] bitcast_ln142_3_fu_1350_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln142_5_fu_1355_p1;
wire   [63:0] bitcast_ln142_7_fu_1360_p1;
wire    ap_block_pp0_stage17;
reg    weights1_we0_local;
reg   [63:0] weights1_d0_local;
wire   [63:0] bitcast_ln142_9_fu_1365_p1;
wire   [63:0] bitcast_ln142_11_fu_1370_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln142_13_fu_1375_p1;
wire   [63:0] bitcast_ln142_15_fu_1380_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln142_17_fu_1385_p1;
wire   [63:0] bitcast_ln142_19_fu_1390_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln142_21_fu_1395_p1;
wire   [63:0] bitcast_ln142_23_fu_1400_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln142_25_fu_1404_p1;
wire   [63:0] bitcast_ln142_27_fu_1408_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln142_29_fu_1412_p1;
wire   [63:0] bitcast_ln142_31_fu_1416_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln142_33_fu_1420_p1;
wire   [63:0] bitcast_ln142_35_fu_1424_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] bitcast_ln142_37_fu_1428_p1;
wire   [63:0] bitcast_ln142_39_fu_1432_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln142_41_fu_1436_p1;
wire   [63:0] bitcast_ln142_43_fu_1441_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] bitcast_ln142_45_fu_1446_p1;
wire   [63:0] bitcast_ln142_47_fu_1451_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln142_49_fu_1456_p1;
wire   [63:0] bitcast_ln142_51_fu_1461_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] bitcast_ln142_53_fu_1466_p1;
wire   [63:0] bitcast_ln142_55_fu_1471_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln142_57_fu_1476_p1;
wire   [63:0] bitcast_ln142_59_fu_1481_p1;
wire   [63:0] bitcast_ln142_61_fu_1486_p1;
wire   [63:0] bitcast_ln142_63_fu_1491_p1;
reg   [63:0] grp_fu_423_p0;
wire   [0:0] tmp_fu_545_p3;
wire   [9:0] zext_ln141_fu_575_p1;
wire   [9:0] tmp_s_fu_567_p3;
wire   [9:0] add_ln142_fu_579_p2;
wire   [4:0] tmp_67_fu_590_p4;
wire   [9:0] add_ln142_1_fu_600_p4;
wire   [9:0] add_ln142_2_fu_728_p5;
wire   [9:0] add_ln142_3_fu_742_p4;
wire   [9:0] add_ln142_4_fu_760_p5;
wire   [9:0] add_ln142_5_fu_774_p6;
wire   [9:0] add_ln142_6_fu_795_p5;
wire   [9:0] add_ln142_7_fu_809_p4;
wire   [9:0] add_ln142_8_fu_827_p5;
wire   [9:0] add_ln142_9_fu_841_p6;
wire   [9:0] add_ln142_s_fu_862_p7;
wire   [9:0] add_ln142_10_fu_879_p6;
wire   [9:0] add_ln142_11_fu_900_p5;
wire   [9:0] add_ln142_12_fu_914_p6;
wire   [9:0] add_ln142_13_fu_935_p5;
wire   [9:0] add_ln142_14_fu_949_p4;
wire   [9:0] add_ln142_15_fu_967_p5;
wire   [9:0] add_ln142_16_fu_981_p6;
wire   [9:0] add_ln142_17_fu_1002_p7;
wire   [9:0] add_ln142_18_fu_1019_p6;
wire   [9:0] add_ln142_19_fu_1040_p7;
wire   [9:0] add_ln142_20_fu_1057_p8;
wire   [9:0] add_ln142_21_fu_1081_p7;
wire   [9:0] add_ln142_22_fu_1098_p6;
wire   [9:0] add_ln142_23_fu_1119_p5;
wire   [9:0] add_ln142_24_fu_1133_p6;
wire   [9:0] add_ln142_25_fu_1154_p7;
wire   [9:0] add_ln142_26_fu_1171_p6;
wire   [9:0] add_ln142_27_fu_1192_p5;
wire   [9:0] add_ln142_28_fu_1206_p6;
wire   [9:0] add_ln142_29_fu_1227_p5;
wire   [9:0] add_ln142_30_fu_1241_p4;
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
#0 j_fu_140 = 7'd0;
#0 i_2_fu_144 = 4'd0;
#0 indvar_flatten6_fu_148 = 5'd0;
#0 ap_done_reg = 1'b0;
end
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
        i_2_fu_144 <= 4'd0;
    end else if (((icmp_ln140_reg_1522 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_144 <= select_ln140_fu_561_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln140_fu_516_p2 == 1'd0))) begin
            indvar_flatten6_fu_148 <= add_ln140_fu_522_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_148 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_140 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_140 <= add_ln141_fu_1326_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_431 <= weights1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_431 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_436 <= weights1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_436 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_441 <= weights1_q1;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_441 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            reg_446 <= weights1_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_446 <= weights1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            reg_451 <= weights1_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_451 <= weights1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            reg_456 <= weights1_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_456 <= weights1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            reg_461 <= weights1_q1;
        end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_461 <= weights1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln140_1_reg_1531 <= add_ln140_1_fu_531_p2;
        i_2_load_reg_1526 <= ap_sig_allocacmp_i_2_load;
        icmp_ln140_reg_1522 <= icmp_ln140_fu_516_p2;
        icmp_ln140_reg_1522_pp0_iter1_reg <= icmp_ln140_reg_1522;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div_10_reg_2086 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div_11_reg_2091 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div_12_reg_2096 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div_13_reg_2101 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        div_14_reg_2106 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        div_15_reg_2111 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        div_16_reg_2116 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        div_17_reg_2121 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        div_18_reg_2126 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_427 <= weights1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_466 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_470 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_474 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_478 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_482 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_486 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_490 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_494 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln121_reg_1536 <= select_ln121_fu_553_p3;
        select_ln140_reg_1541 <= select_ln140_fu_561_p3;
        tmp_68_reg_1586 <= {{select_ln121_fu_553_p3[5:2]}};
        tmp_69_reg_1604 <= {{select_ln121_fu_553_p3[5:3]}};
        tmp_70_reg_1620 <= select_ln121_fu_553_p3[32'd1];
        tmp_71_reg_1628 <= {{select_ln121_fu_553_p3[5:4]}};
        tmp_72_reg_1646 <= {{select_ln121_fu_553_p3[2:1]}};
        tmp_73_reg_1652 <= select_ln121_fu_553_p3[32'd2];
        tmp_74_reg_1660 <= select_ln121_fu_553_p3[32'd5];
        tmp_75_reg_1685 <= {{select_ln121_fu_553_p3[3:1]}};
        tmp_76_reg_1690 <= {{select_ln121_fu_553_p3[3:2]}};
        tmp_77_reg_1696 <= select_ln121_fu_553_p3[32'd3];
        trunc_ln142_1_reg_1612 <= trunc_ln142_1_fu_639_p1;
        trunc_ln142_2_reg_1640 <= trunc_ln142_2_fu_661_p1;
        trunc_ln142_3_reg_1680 <= trunc_ln142_3_fu_691_p1;
        trunc_ln142_reg_1592 <= trunc_ln142_fu_625_p1;
        weights1_addr_1_reg_1580[9 : 1] <= zext_ln142_1_fu_610_p1[9 : 1];
        weights1_addr_1_reg_1580_pp0_iter1_reg[9 : 1] <= weights1_addr_1_reg_1580[9 : 1];
        weights1_addr_reg_1575 <= zext_ln142_fu_585_p1;
        weights1_addr_reg_1575_pp0_iter1_reg <= weights1_addr_reg_1575;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_addr_10_reg_1771[0] <= zext_ln142_10_fu_874_p1[0];
weights1_addr_10_reg_1771[2] <= zext_ln142_10_fu_874_p1[2];
weights1_addr_10_reg_1771[9 : 4] <= zext_ln142_10_fu_874_p1[9 : 4];
        weights1_addr_10_reg_1771_pp0_iter1_reg[0] <= weights1_addr_10_reg_1771[0];
weights1_addr_10_reg_1771_pp0_iter1_reg[2] <= weights1_addr_10_reg_1771[2];
weights1_addr_10_reg_1771_pp0_iter1_reg[9 : 4] <= weights1_addr_10_reg_1771[9 : 4];
        weights1_addr_10_reg_1771_pp0_iter2_reg[0] <= weights1_addr_10_reg_1771_pp0_iter1_reg[0];
weights1_addr_10_reg_1771_pp0_iter2_reg[2] <= weights1_addr_10_reg_1771_pp0_iter1_reg[2];
weights1_addr_10_reg_1771_pp0_iter2_reg[9 : 4] <= weights1_addr_10_reg_1771_pp0_iter1_reg[9 : 4];
        weights1_addr_11_reg_1777[2] <= zext_ln142_11_fu_890_p1[2];
weights1_addr_11_reg_1777[9 : 4] <= zext_ln142_11_fu_890_p1[9 : 4];
        weights1_addr_11_reg_1777_pp0_iter1_reg[2] <= weights1_addr_11_reg_1777[2];
weights1_addr_11_reg_1777_pp0_iter1_reg[9 : 4] <= weights1_addr_11_reg_1777[9 : 4];
        weights1_addr_11_reg_1777_pp0_iter2_reg[2] <= weights1_addr_11_reg_1777_pp0_iter1_reg[2];
weights1_addr_11_reg_1777_pp0_iter2_reg[9 : 4] <= weights1_addr_11_reg_1777_pp0_iter1_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_addr_12_reg_1788[1 : 0] <= zext_ln142_12_fu_909_p1[1 : 0];
weights1_addr_12_reg_1788[9 : 4] <= zext_ln142_12_fu_909_p1[9 : 4];
        weights1_addr_12_reg_1788_pp0_iter1_reg[1 : 0] <= weights1_addr_12_reg_1788[1 : 0];
weights1_addr_12_reg_1788_pp0_iter1_reg[9 : 4] <= weights1_addr_12_reg_1788[9 : 4];
        weights1_addr_12_reg_1788_pp0_iter2_reg[1 : 0] <= weights1_addr_12_reg_1788_pp0_iter1_reg[1 : 0];
weights1_addr_12_reg_1788_pp0_iter2_reg[9 : 4] <= weights1_addr_12_reg_1788_pp0_iter1_reg[9 : 4];
        weights1_addr_13_reg_1794[1] <= zext_ln142_13_fu_925_p1[1];
weights1_addr_13_reg_1794[9 : 4] <= zext_ln142_13_fu_925_p1[9 : 4];
        weights1_addr_13_reg_1794_pp0_iter1_reg[1] <= weights1_addr_13_reg_1794[1];
weights1_addr_13_reg_1794_pp0_iter1_reg[9 : 4] <= weights1_addr_13_reg_1794[9 : 4];
        weights1_addr_13_reg_1794_pp0_iter2_reg[1] <= weights1_addr_13_reg_1794_pp0_iter1_reg[1];
weights1_addr_13_reg_1794_pp0_iter2_reg[9 : 4] <= weights1_addr_13_reg_1794_pp0_iter1_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_addr_14_reg_1805[0] <= zext_ln142_14_fu_944_p1[0];
weights1_addr_14_reg_1805[9 : 4] <= zext_ln142_14_fu_944_p1[9 : 4];
        weights1_addr_14_reg_1805_pp0_iter1_reg[0] <= weights1_addr_14_reg_1805[0];
weights1_addr_14_reg_1805_pp0_iter1_reg[9 : 4] <= weights1_addr_14_reg_1805[9 : 4];
        weights1_addr_14_reg_1805_pp0_iter2_reg[0] <= weights1_addr_14_reg_1805_pp0_iter1_reg[0];
weights1_addr_14_reg_1805_pp0_iter2_reg[9 : 4] <= weights1_addr_14_reg_1805_pp0_iter1_reg[9 : 4];
        weights1_addr_15_reg_1811[9 : 4] <= zext_ln142_15_fu_957_p1[9 : 4];
        weights1_addr_15_reg_1811_pp0_iter1_reg[9 : 4] <= weights1_addr_15_reg_1811[9 : 4];
        weights1_addr_15_reg_1811_pp0_iter2_reg[9 : 4] <= weights1_addr_15_reg_1811_pp0_iter1_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_addr_16_reg_1827[3 : 0] <= zext_ln142_16_fu_976_p1[3 : 0];
weights1_addr_16_reg_1827[9 : 5] <= zext_ln142_16_fu_976_p1[9 : 5];
        weights1_addr_16_reg_1827_pp0_iter1_reg[3 : 0] <= weights1_addr_16_reg_1827[3 : 0];
weights1_addr_16_reg_1827_pp0_iter1_reg[9 : 5] <= weights1_addr_16_reg_1827[9 : 5];
        weights1_addr_16_reg_1827_pp0_iter2_reg[3 : 0] <= weights1_addr_16_reg_1827_pp0_iter1_reg[3 : 0];
weights1_addr_16_reg_1827_pp0_iter2_reg[9 : 5] <= weights1_addr_16_reg_1827_pp0_iter1_reg[9 : 5];
        weights1_addr_17_reg_1833[3 : 1] <= zext_ln142_17_fu_992_p1[3 : 1];
weights1_addr_17_reg_1833[9 : 5] <= zext_ln142_17_fu_992_p1[9 : 5];
        weights1_addr_17_reg_1833_pp0_iter1_reg[3 : 1] <= weights1_addr_17_reg_1833[3 : 1];
weights1_addr_17_reg_1833_pp0_iter1_reg[9 : 5] <= weights1_addr_17_reg_1833[9 : 5];
        weights1_addr_17_reg_1833_pp0_iter2_reg[3 : 1] <= weights1_addr_17_reg_1833_pp0_iter1_reg[3 : 1];
weights1_addr_17_reg_1833_pp0_iter2_reg[9 : 5] <= weights1_addr_17_reg_1833_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_addr_18_reg_1849[0] <= zext_ln142_18_fu_1014_p1[0];
weights1_addr_18_reg_1849[3 : 2] <= zext_ln142_18_fu_1014_p1[3 : 2];
weights1_addr_18_reg_1849[9 : 5] <= zext_ln142_18_fu_1014_p1[9 : 5];
        weights1_addr_18_reg_1849_pp0_iter1_reg[0] <= weights1_addr_18_reg_1849[0];
weights1_addr_18_reg_1849_pp0_iter1_reg[3 : 2] <= weights1_addr_18_reg_1849[3 : 2];
weights1_addr_18_reg_1849_pp0_iter1_reg[9 : 5] <= weights1_addr_18_reg_1849[9 : 5];
        weights1_addr_18_reg_1849_pp0_iter2_reg[0] <= weights1_addr_18_reg_1849_pp0_iter1_reg[0];
weights1_addr_18_reg_1849_pp0_iter2_reg[3 : 2] <= weights1_addr_18_reg_1849_pp0_iter1_reg[3 : 2];
weights1_addr_18_reg_1849_pp0_iter2_reg[9 : 5] <= weights1_addr_18_reg_1849_pp0_iter1_reg[9 : 5];
        weights1_addr_19_reg_1855[3 : 2] <= zext_ln142_19_fu_1030_p1[3 : 2];
weights1_addr_19_reg_1855[9 : 5] <= zext_ln142_19_fu_1030_p1[9 : 5];
        weights1_addr_19_reg_1855_pp0_iter1_reg[3 : 2] <= weights1_addr_19_reg_1855[3 : 2];
weights1_addr_19_reg_1855_pp0_iter1_reg[9 : 5] <= weights1_addr_19_reg_1855[9 : 5];
        weights1_addr_19_reg_1855_pp0_iter2_reg[3 : 2] <= weights1_addr_19_reg_1855_pp0_iter1_reg[3 : 2];
weights1_addr_19_reg_1855_pp0_iter2_reg[9 : 5] <= weights1_addr_19_reg_1855_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_addr_20_reg_1871[1 : 0] <= zext_ln142_20_fu_1052_p1[1 : 0];
weights1_addr_20_reg_1871[3] <= zext_ln142_20_fu_1052_p1[3];
weights1_addr_20_reg_1871[9 : 5] <= zext_ln142_20_fu_1052_p1[9 : 5];
        weights1_addr_20_reg_1871_pp0_iter1_reg[1 : 0] <= weights1_addr_20_reg_1871[1 : 0];
weights1_addr_20_reg_1871_pp0_iter1_reg[3] <= weights1_addr_20_reg_1871[3];
weights1_addr_20_reg_1871_pp0_iter1_reg[9 : 5] <= weights1_addr_20_reg_1871[9 : 5];
        weights1_addr_20_reg_1871_pp0_iter2_reg[1 : 0] <= weights1_addr_20_reg_1871_pp0_iter1_reg[1 : 0];
weights1_addr_20_reg_1871_pp0_iter2_reg[3] <= weights1_addr_20_reg_1871_pp0_iter1_reg[3];
weights1_addr_20_reg_1871_pp0_iter2_reg[9 : 5] <= weights1_addr_20_reg_1871_pp0_iter1_reg[9 : 5];
        weights1_addr_21_reg_1877[1] <= zext_ln142_21_fu_1071_p1[1];
weights1_addr_21_reg_1877[3] <= zext_ln142_21_fu_1071_p1[3];
weights1_addr_21_reg_1877[9 : 5] <= zext_ln142_21_fu_1071_p1[9 : 5];
        weights1_addr_21_reg_1877_pp0_iter1_reg[1] <= weights1_addr_21_reg_1877[1];
weights1_addr_21_reg_1877_pp0_iter1_reg[3] <= weights1_addr_21_reg_1877[3];
weights1_addr_21_reg_1877_pp0_iter1_reg[9 : 5] <= weights1_addr_21_reg_1877[9 : 5];
        weights1_addr_21_reg_1877_pp0_iter2_reg[1] <= weights1_addr_21_reg_1877_pp0_iter1_reg[1];
weights1_addr_21_reg_1877_pp0_iter2_reg[3] <= weights1_addr_21_reg_1877_pp0_iter1_reg[3];
weights1_addr_21_reg_1877_pp0_iter2_reg[9 : 5] <= weights1_addr_21_reg_1877_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_addr_22_reg_1893[0] <= zext_ln142_22_fu_1093_p1[0];
weights1_addr_22_reg_1893[3] <= zext_ln142_22_fu_1093_p1[3];
weights1_addr_22_reg_1893[9 : 5] <= zext_ln142_22_fu_1093_p1[9 : 5];
        weights1_addr_22_reg_1893_pp0_iter1_reg[0] <= weights1_addr_22_reg_1893[0];
weights1_addr_22_reg_1893_pp0_iter1_reg[3] <= weights1_addr_22_reg_1893[3];
weights1_addr_22_reg_1893_pp0_iter1_reg[9 : 5] <= weights1_addr_22_reg_1893[9 : 5];
        weights1_addr_22_reg_1893_pp0_iter2_reg[0] <= weights1_addr_22_reg_1893_pp0_iter1_reg[0];
weights1_addr_22_reg_1893_pp0_iter2_reg[3] <= weights1_addr_22_reg_1893_pp0_iter1_reg[3];
weights1_addr_22_reg_1893_pp0_iter2_reg[9 : 5] <= weights1_addr_22_reg_1893_pp0_iter1_reg[9 : 5];
        weights1_addr_23_reg_1899[3] <= zext_ln142_23_fu_1109_p1[3];
weights1_addr_23_reg_1899[9 : 5] <= zext_ln142_23_fu_1109_p1[9 : 5];
        weights1_addr_23_reg_1899_pp0_iter1_reg[3] <= weights1_addr_23_reg_1899[3];
weights1_addr_23_reg_1899_pp0_iter1_reg[9 : 5] <= weights1_addr_23_reg_1899[9 : 5];
        weights1_addr_23_reg_1899_pp0_iter2_reg[3] <= weights1_addr_23_reg_1899_pp0_iter1_reg[3];
weights1_addr_23_reg_1899_pp0_iter2_reg[9 : 5] <= weights1_addr_23_reg_1899_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_addr_24_reg_1915[2 : 0] <= zext_ln142_24_fu_1128_p1[2 : 0];
weights1_addr_24_reg_1915[9 : 5] <= zext_ln142_24_fu_1128_p1[9 : 5];
        weights1_addr_24_reg_1915_pp0_iter1_reg[2 : 0] <= weights1_addr_24_reg_1915[2 : 0];
weights1_addr_24_reg_1915_pp0_iter1_reg[9 : 5] <= weights1_addr_24_reg_1915[9 : 5];
        weights1_addr_24_reg_1915_pp0_iter2_reg[2 : 0] <= weights1_addr_24_reg_1915_pp0_iter1_reg[2 : 0];
weights1_addr_24_reg_1915_pp0_iter2_reg[9 : 5] <= weights1_addr_24_reg_1915_pp0_iter1_reg[9 : 5];
        weights1_addr_25_reg_1921[2 : 1] <= zext_ln142_25_fu_1144_p1[2 : 1];
weights1_addr_25_reg_1921[9 : 5] <= zext_ln142_25_fu_1144_p1[9 : 5];
        weights1_addr_25_reg_1921_pp0_iter1_reg[2 : 1] <= weights1_addr_25_reg_1921[2 : 1];
weights1_addr_25_reg_1921_pp0_iter1_reg[9 : 5] <= weights1_addr_25_reg_1921[9 : 5];
        weights1_addr_25_reg_1921_pp0_iter2_reg[2 : 1] <= weights1_addr_25_reg_1921_pp0_iter1_reg[2 : 1];
weights1_addr_25_reg_1921_pp0_iter2_reg[9 : 5] <= weights1_addr_25_reg_1921_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_addr_26_reg_1937[0] <= zext_ln142_26_fu_1166_p1[0];
weights1_addr_26_reg_1937[2] <= zext_ln142_26_fu_1166_p1[2];
weights1_addr_26_reg_1937[9 : 5] <= zext_ln142_26_fu_1166_p1[9 : 5];
        weights1_addr_26_reg_1937_pp0_iter1_reg[0] <= weights1_addr_26_reg_1937[0];
weights1_addr_26_reg_1937_pp0_iter1_reg[2] <= weights1_addr_26_reg_1937[2];
weights1_addr_26_reg_1937_pp0_iter1_reg[9 : 5] <= weights1_addr_26_reg_1937[9 : 5];
        weights1_addr_26_reg_1937_pp0_iter2_reg[0] <= weights1_addr_26_reg_1937_pp0_iter1_reg[0];
weights1_addr_26_reg_1937_pp0_iter2_reg[2] <= weights1_addr_26_reg_1937_pp0_iter1_reg[2];
weights1_addr_26_reg_1937_pp0_iter2_reg[9 : 5] <= weights1_addr_26_reg_1937_pp0_iter1_reg[9 : 5];
        weights1_addr_27_reg_1943[2] <= zext_ln142_27_fu_1182_p1[2];
weights1_addr_27_reg_1943[9 : 5] <= zext_ln142_27_fu_1182_p1[9 : 5];
        weights1_addr_27_reg_1943_pp0_iter1_reg[2] <= weights1_addr_27_reg_1943[2];
weights1_addr_27_reg_1943_pp0_iter1_reg[9 : 5] <= weights1_addr_27_reg_1943[9 : 5];
        weights1_addr_27_reg_1943_pp0_iter2_reg[2] <= weights1_addr_27_reg_1943_pp0_iter1_reg[2];
weights1_addr_27_reg_1943_pp0_iter2_reg[9 : 5] <= weights1_addr_27_reg_1943_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_addr_28_reg_1959[1 : 0] <= zext_ln142_28_fu_1201_p1[1 : 0];
weights1_addr_28_reg_1959[9 : 5] <= zext_ln142_28_fu_1201_p1[9 : 5];
        weights1_addr_28_reg_1959_pp0_iter1_reg[1 : 0] <= weights1_addr_28_reg_1959[1 : 0];
weights1_addr_28_reg_1959_pp0_iter1_reg[9 : 5] <= weights1_addr_28_reg_1959[9 : 5];
        weights1_addr_28_reg_1959_pp0_iter2_reg[1 : 0] <= weights1_addr_28_reg_1959_pp0_iter1_reg[1 : 0];
weights1_addr_28_reg_1959_pp0_iter2_reg[9 : 5] <= weights1_addr_28_reg_1959_pp0_iter1_reg[9 : 5];
        weights1_addr_29_reg_1965[1] <= zext_ln142_29_fu_1217_p1[1];
weights1_addr_29_reg_1965[9 : 5] <= zext_ln142_29_fu_1217_p1[9 : 5];
        weights1_addr_29_reg_1965_pp0_iter1_reg[1] <= weights1_addr_29_reg_1965[1];
weights1_addr_29_reg_1965_pp0_iter1_reg[9 : 5] <= weights1_addr_29_reg_1965[9 : 5];
        weights1_addr_29_reg_1965_pp0_iter2_reg[1] <= weights1_addr_29_reg_1965_pp0_iter1_reg[1];
weights1_addr_29_reg_1965_pp0_iter2_reg[9 : 5] <= weights1_addr_29_reg_1965_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_addr_2_reg_1704[0] <= zext_ln142_2_fu_737_p1[0];
weights1_addr_2_reg_1704[9 : 2] <= zext_ln142_2_fu_737_p1[9 : 2];
        weights1_addr_2_reg_1704_pp0_iter1_reg[0] <= weights1_addr_2_reg_1704[0];
weights1_addr_2_reg_1704_pp0_iter1_reg[9 : 2] <= weights1_addr_2_reg_1704[9 : 2];
        weights1_addr_3_reg_1709[9 : 2] <= zext_ln142_3_fu_750_p1[9 : 2];
        weights1_addr_3_reg_1709_pp0_iter1_reg[9 : 2] <= weights1_addr_3_reg_1709[9 : 2];
        weights1_addr_3_reg_1709_pp0_iter2_reg[9 : 2] <= weights1_addr_3_reg_1709_pp0_iter1_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_addr_30_reg_1980[0] <= zext_ln142_30_fu_1236_p1[0];
weights1_addr_30_reg_1980[9 : 5] <= zext_ln142_30_fu_1236_p1[9 : 5];
        weights1_addr_30_reg_1980_pp0_iter1_reg[0] <= weights1_addr_30_reg_1980[0];
weights1_addr_30_reg_1980_pp0_iter1_reg[9 : 5] <= weights1_addr_30_reg_1980[9 : 5];
        weights1_addr_30_reg_1980_pp0_iter2_reg[0] <= weights1_addr_30_reg_1980_pp0_iter1_reg[0];
weights1_addr_30_reg_1980_pp0_iter2_reg[9 : 5] <= weights1_addr_30_reg_1980_pp0_iter1_reg[9 : 5];
        weights1_addr_31_reg_1986[9 : 5] <= zext_ln142_31_fu_1249_p1[9 : 5];
        weights1_addr_31_reg_1986_pp0_iter1_reg[9 : 5] <= weights1_addr_31_reg_1986[9 : 5];
        weights1_addr_31_reg_1986_pp0_iter2_reg[9 : 5] <= weights1_addr_31_reg_1986_pp0_iter1_reg[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_addr_4_reg_1720[1 : 0] <= zext_ln142_4_fu_769_p1[1 : 0];
weights1_addr_4_reg_1720[9 : 3] <= zext_ln142_4_fu_769_p1[9 : 3];
        weights1_addr_4_reg_1720_pp0_iter1_reg[1 : 0] <= weights1_addr_4_reg_1720[1 : 0];
weights1_addr_4_reg_1720_pp0_iter1_reg[9 : 3] <= weights1_addr_4_reg_1720[9 : 3];
        weights1_addr_4_reg_1720_pp0_iter2_reg[1 : 0] <= weights1_addr_4_reg_1720_pp0_iter1_reg[1 : 0];
weights1_addr_4_reg_1720_pp0_iter2_reg[9 : 3] <= weights1_addr_4_reg_1720_pp0_iter1_reg[9 : 3];
        weights1_addr_5_reg_1726[1] <= zext_ln142_5_fu_785_p1[1];
weights1_addr_5_reg_1726[9 : 3] <= zext_ln142_5_fu_785_p1[9 : 3];
        weights1_addr_5_reg_1726_pp0_iter1_reg[1] <= weights1_addr_5_reg_1726[1];
weights1_addr_5_reg_1726_pp0_iter1_reg[9 : 3] <= weights1_addr_5_reg_1726[9 : 3];
        weights1_addr_5_reg_1726_pp0_iter2_reg[1] <= weights1_addr_5_reg_1726_pp0_iter1_reg[1];
weights1_addr_5_reg_1726_pp0_iter2_reg[9 : 3] <= weights1_addr_5_reg_1726_pp0_iter1_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_addr_6_reg_1737[0] <= zext_ln142_6_fu_804_p1[0];
weights1_addr_6_reg_1737[9 : 3] <= zext_ln142_6_fu_804_p1[9 : 3];
        weights1_addr_6_reg_1737_pp0_iter1_reg[0] <= weights1_addr_6_reg_1737[0];
weights1_addr_6_reg_1737_pp0_iter1_reg[9 : 3] <= weights1_addr_6_reg_1737[9 : 3];
        weights1_addr_6_reg_1737_pp0_iter2_reg[0] <= weights1_addr_6_reg_1737_pp0_iter1_reg[0];
weights1_addr_6_reg_1737_pp0_iter2_reg[9 : 3] <= weights1_addr_6_reg_1737_pp0_iter1_reg[9 : 3];
        weights1_addr_7_reg_1743[9 : 3] <= zext_ln142_7_fu_817_p1[9 : 3];
        weights1_addr_7_reg_1743_pp0_iter1_reg[9 : 3] <= weights1_addr_7_reg_1743[9 : 3];
        weights1_addr_7_reg_1743_pp0_iter2_reg[9 : 3] <= weights1_addr_7_reg_1743_pp0_iter1_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_addr_8_reg_1754[2 : 0] <= zext_ln142_8_fu_836_p1[2 : 0];
weights1_addr_8_reg_1754[9 : 4] <= zext_ln142_8_fu_836_p1[9 : 4];
        weights1_addr_8_reg_1754_pp0_iter1_reg[2 : 0] <= weights1_addr_8_reg_1754[2 : 0];
weights1_addr_8_reg_1754_pp0_iter1_reg[9 : 4] <= weights1_addr_8_reg_1754[9 : 4];
        weights1_addr_8_reg_1754_pp0_iter2_reg[2 : 0] <= weights1_addr_8_reg_1754_pp0_iter1_reg[2 : 0];
weights1_addr_8_reg_1754_pp0_iter2_reg[9 : 4] <= weights1_addr_8_reg_1754_pp0_iter1_reg[9 : 4];
        weights1_addr_9_reg_1760[2 : 1] <= zext_ln142_9_fu_852_p1[2 : 1];
weights1_addr_9_reg_1760[9 : 4] <= zext_ln142_9_fu_852_p1[9 : 4];
        weights1_addr_9_reg_1760_pp0_iter1_reg[2 : 1] <= weights1_addr_9_reg_1760[2 : 1];
weights1_addr_9_reg_1760_pp0_iter1_reg[9 : 4] <= weights1_addr_9_reg_1760[9 : 4];
        weights1_addr_9_reg_1760_pp0_iter2_reg[2 : 1] <= weights1_addr_9_reg_1760_pp0_iter1_reg[2 : 1];
weights1_addr_9_reg_1760_pp0_iter2_reg[9 : 4] <= weights1_addr_9_reg_1760_pp0_iter1_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_load_15_reg_1822 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_load_17_reg_1844 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_load_19_reg_1866 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_load_21_reg_1888 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_load_23_reg_1910 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_load_25_reg_1932 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_load_27_reg_1954 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_load_29_reg_1975 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_load_31_reg_1996 <= weights1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln140_reg_1522 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln140_reg_1522_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_2_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_2_load = i_2_fu_144;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p0 = bitcast_ln142_62_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_423_p0 = bitcast_ln142_60_fu_1336_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p0 = bitcast_ln142_58_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_423_p0 = bitcast_ln142_56_fu_1317_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_423_p0 = bitcast_ln142_54_fu_1313_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_423_p0 = bitcast_ln142_52_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_423_p0 = bitcast_ln142_50_fu_1304_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_423_p0 = bitcast_ln142_48_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_423_p0 = bitcast_ln142_46_fu_1295_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_423_p0 = bitcast_ln142_44_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_423_p0 = bitcast_ln142_42_fu_1286_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_423_p0 = bitcast_ln142_40_fu_1281_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_423_p0 = bitcast_ln142_38_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_423_p0 = bitcast_ln142_36_fu_1272_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_423_p0 = bitcast_ln142_34_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_423_p0 = bitcast_ln142_32_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_423_p0 = bitcast_ln142_30_fu_1259_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_423_p0 = bitcast_ln142_28_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_423_p0 = bitcast_ln142_26_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_423_p0 = bitcast_ln142_24_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_423_p0 = bitcast_ln142_22_fu_1149_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_423_p0 = bitcast_ln142_20_fu_1114_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_423_p0 = bitcast_ln142_18_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_423_p0 = bitcast_ln142_16_fu_1035_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_423_p0 = bitcast_ln142_14_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_423_p0 = bitcast_ln142_12_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_423_p0 = bitcast_ln142_10_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_423_p0 = bitcast_ln142_8_fu_895_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_423_p0 = bitcast_ln142_6_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_423_p0 = bitcast_ln142_4_fu_822_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_423_p0 = bitcast_ln142_2_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_423_p0 = bitcast_ln142_fu_755_p1;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address0_local = weights1_addr_31_reg_1986_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights1_address0_local = weights1_addr_30_reg_1980_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights1_address0_local = weights1_addr_29_reg_1965_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights1_address0_local = weights1_addr_28_reg_1959_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights1_address0_local = weights1_addr_26_reg_1937_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights1_address0_local = weights1_addr_24_reg_1915_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights1_address0_local = weights1_addr_22_reg_1893_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_address0_local = weights1_addr_20_reg_1871_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_address0_local = weights1_addr_18_reg_1849_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_address0_local = weights1_addr_16_reg_1827_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_address0_local = weights1_addr_14_reg_1805_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_address0_local = weights1_addr_12_reg_1788_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_address0_local = weights1_addr_10_reg_1771_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_address0_local = weights1_addr_8_reg_1754_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_address0_local = weights1_addr_6_reg_1737_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_address0_local = weights1_addr_4_reg_1720_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_address0_local = zext_ln142_31_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_address0_local = zext_ln142_29_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_address0_local = zext_ln142_27_fu_1182_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_address0_local = zext_ln142_25_fu_1144_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address0_local = zext_ln142_23_fu_1109_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address0_local = zext_ln142_21_fu_1071_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address0_local = zext_ln142_19_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address0_local = zext_ln142_17_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address0_local = zext_ln142_15_fu_957_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address0_local = zext_ln142_13_fu_925_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address0_local = zext_ln142_11_fu_890_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address0_local = zext_ln142_9_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address0_local = zext_ln142_7_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address0_local = zext_ln142_5_fu_785_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address0_local = zext_ln142_3_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address0_local = zext_ln142_1_fu_610_p1;
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights1_address1_local = weights1_addr_27_reg_1943_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights1_address1_local = weights1_addr_25_reg_1921_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights1_address1_local = weights1_addr_23_reg_1899_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights1_address1_local = weights1_addr_21_reg_1877_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_address1_local = weights1_addr_19_reg_1855_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_address1_local = weights1_addr_17_reg_1833_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_address1_local = weights1_addr_15_reg_1811_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_address1_local = weights1_addr_13_reg_1794_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_address1_local = weights1_addr_11_reg_1777_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_address1_local = weights1_addr_9_reg_1760_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_address1_local = weights1_addr_7_reg_1743_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_address1_local = weights1_addr_5_reg_1726_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_address1_local = weights1_addr_3_reg_1709_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address1_local = weights1_addr_2_reg_1704_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights1_address1_local = weights1_addr_1_reg_1580_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights1_address1_local = weights1_addr_reg_1575_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_address1_local = zext_ln142_30_fu_1236_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_address1_local = zext_ln142_28_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_address1_local = zext_ln142_26_fu_1166_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_address1_local = zext_ln142_24_fu_1128_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address1_local = zext_ln142_22_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address1_local = zext_ln142_20_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address1_local = zext_ln142_18_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address1_local = zext_ln142_16_fu_976_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address1_local = zext_ln142_14_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address1_local = zext_ln142_12_fu_909_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address1_local = zext_ln142_10_fu_874_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address1_local = zext_ln142_8_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address1_local = zext_ln142_6_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address1_local = zext_ln142_4_fu_769_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address1_local = zext_ln142_2_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address1_local = zext_ln142_fu_585_p1;
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d0_local = bitcast_ln142_63_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights1_d0_local = bitcast_ln142_61_fu_1486_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights1_d0_local = bitcast_ln142_59_fu_1481_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights1_d0_local = bitcast_ln142_57_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights1_d0_local = bitcast_ln142_53_fu_1466_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights1_d0_local = bitcast_ln142_49_fu_1456_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights1_d0_local = bitcast_ln142_45_fu_1446_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_d0_local = bitcast_ln142_41_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_d0_local = bitcast_ln142_37_fu_1428_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_d0_local = bitcast_ln142_33_fu_1420_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_d0_local = bitcast_ln142_29_fu_1412_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_d0_local = bitcast_ln142_25_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_d0_local = bitcast_ln142_21_fu_1395_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_d0_local = bitcast_ln142_17_fu_1385_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_d0_local = bitcast_ln142_13_fu_1375_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_d0_local = bitcast_ln142_9_fu_1365_p1;
    end else begin
        weights1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights1_d1_local = bitcast_ln142_55_fu_1471_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights1_d1_local = bitcast_ln142_51_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights1_d1_local = bitcast_ln142_47_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights1_d1_local = bitcast_ln142_43_fu_1441_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_d1_local = bitcast_ln142_39_fu_1432_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_d1_local = bitcast_ln142_35_fu_1424_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_d1_local = bitcast_ln142_31_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_d1_local = bitcast_ln142_27_fu_1408_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_d1_local = bitcast_ln142_23_fu_1400_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_d1_local = bitcast_ln142_19_fu_1390_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_d1_local = bitcast_ln142_15_fu_1380_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_d1_local = bitcast_ln142_11_fu_1370_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_d1_local = bitcast_ln142_7_fu_1360_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d1_local = bitcast_ln142_5_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights1_d1_local = bitcast_ln142_3_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights1_d1_local = bitcast_ln142_1_fu_1345_p1;
    end else begin
        weights1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights1_we0_local = 1'b1;
    end else begin
        weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights1_we1_local = 1'b1;
    end else begin
        weights1_we1_local = 1'b0;
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
assign add_ln140_1_fu_531_p2 = (ap_sig_allocacmp_i_2_load + 4'd1);
assign add_ln140_fu_522_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 5'd1);
assign add_ln141_fu_1326_p2 = (select_ln121_reg_1536 + 7'd32);
assign add_ln142_10_fu_879_p6 = {{{{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {1'd1}}, {tmp_73_reg_1652}}, {2'd3}};
assign add_ln142_11_fu_900_p5 = {{{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {2'd3}}, {trunc_ln142_1_reg_1612}};
assign add_ln142_12_fu_914_p6 = {{{{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {2'd3}}, {tmp_70_reg_1620}}, {1'd1}};
assign add_ln142_13_fu_935_p5 = {{{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {3'd7}}, {trunc_ln142_reg_1592}};
assign add_ln142_14_fu_949_p4 = {{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {4'd15}};
assign add_ln142_15_fu_967_p5 = {{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {trunc_ln142_3_reg_1680}};
assign add_ln142_16_fu_981_p6 = {{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {tmp_75_reg_1685}}, {1'd1}};
assign add_ln142_17_fu_1002_p7 = {{{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {tmp_76_reg_1690}}, {1'd1}}, {trunc_ln142_reg_1592}};
assign add_ln142_18_fu_1019_p6 = {{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {tmp_76_reg_1690}}, {2'd3}};
assign add_ln142_19_fu_1040_p7 = {{{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {tmp_77_reg_1696}}, {1'd1}}, {trunc_ln142_1_reg_1612}};
assign add_ln142_1_fu_600_p4 = {{{select_ln140_fu_561_p3}, {tmp_67_fu_590_p4}}, {1'd1}};
assign add_ln142_20_fu_1057_p8 = {{{{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {tmp_77_reg_1696}}, {1'd1}}, {tmp_70_reg_1620}}, {1'd1}};
assign add_ln142_21_fu_1081_p7 = {{{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {tmp_77_reg_1696}}, {2'd3}}, {trunc_ln142_reg_1592}};
assign add_ln142_22_fu_1098_p6 = {{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {1'd1}}, {tmp_77_reg_1696}}, {3'd7}};
assign add_ln142_23_fu_1119_p5 = {{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {2'd3}}, {trunc_ln142_2_reg_1640}};
assign add_ln142_24_fu_1133_p6 = {{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {2'd3}}, {tmp_72_reg_1646}}, {1'd1}};
assign add_ln142_25_fu_1154_p7 = {{{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {2'd3}}, {tmp_73_reg_1652}}, {1'd1}}, {trunc_ln142_reg_1592}};
assign add_ln142_26_fu_1171_p6 = {{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {2'd3}}, {tmp_73_reg_1652}}, {2'd3}};
assign add_ln142_27_fu_1192_p5 = {{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {3'd7}}, {trunc_ln142_1_reg_1612}};
assign add_ln142_28_fu_1206_p6 = {{{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {3'd7}}, {tmp_70_reg_1620}}, {1'd1}};
assign add_ln142_29_fu_1227_p5 = {{{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {4'd15}}, {trunc_ln142_reg_1592}};
assign add_ln142_2_fu_728_p5 = {{{{select_ln140_reg_1541}, {tmp_68_reg_1586}}, {1'd1}}, {trunc_ln142_reg_1592}};
assign add_ln142_30_fu_1241_p4 = {{{select_ln140_reg_1541}, {tmp_74_reg_1660}}, {5'd31}};
assign add_ln142_3_fu_742_p4 = {{{select_ln140_reg_1541}, {tmp_68_reg_1586}}, {2'd3}};
assign add_ln142_4_fu_760_p5 = {{{{select_ln140_reg_1541}, {tmp_69_reg_1604}}, {1'd1}}, {trunc_ln142_1_reg_1612}};
assign add_ln142_5_fu_774_p6 = {{{{{select_ln140_reg_1541}, {tmp_69_reg_1604}}, {1'd1}}, {tmp_70_reg_1620}}, {1'd1}};
assign add_ln142_6_fu_795_p5 = {{{{select_ln140_reg_1541}, {tmp_69_reg_1604}}, {2'd3}}, {trunc_ln142_reg_1592}};
assign add_ln142_7_fu_809_p4 = {{{select_ln140_reg_1541}, {tmp_69_reg_1604}}, {3'd7}};
assign add_ln142_8_fu_827_p5 = {{{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {1'd1}}, {trunc_ln142_2_reg_1640}};
assign add_ln142_9_fu_841_p6 = {{{{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {1'd1}}, {tmp_72_reg_1646}}, {1'd1}};
assign add_ln142_fu_579_p2 = (zext_ln141_fu_575_p1 + tmp_s_fu_567_p3);
assign add_ln142_s_fu_862_p7 = {{{{{{select_ln140_reg_1541}, {tmp_71_reg_1628}}, {1'd1}}, {tmp_73_reg_1652}}, {1'd1}}, {trunc_ln142_reg_1592}};
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
assign bitcast_ln142_10_fu_930_p1 = reg_441;
assign bitcast_ln142_11_fu_1370_p1 = reg_474;
assign bitcast_ln142_12_fu_962_p1 = reg_427;
assign bitcast_ln142_13_fu_1375_p1 = reg_478;
assign bitcast_ln142_14_fu_997_p1 = reg_446;
assign bitcast_ln142_15_fu_1380_p1 = reg_482;
assign bitcast_ln142_16_fu_1035_p1 = reg_436;
assign bitcast_ln142_17_fu_1385_p1 = reg_486;
assign bitcast_ln142_18_fu_1076_p1 = reg_451;
assign bitcast_ln142_19_fu_1390_p1 = reg_490;
assign bitcast_ln142_1_fu_1345_p1 = reg_466;
assign bitcast_ln142_20_fu_1114_p1 = reg_431;
assign bitcast_ln142_21_fu_1395_p1 = reg_494;
assign bitcast_ln142_22_fu_1149_p1 = reg_456;
assign bitcast_ln142_23_fu_1400_p1 = div_10_reg_2086;
assign bitcast_ln142_24_fu_1187_p1 = reg_441;
assign bitcast_ln142_25_fu_1404_p1 = div_11_reg_2091;
assign bitcast_ln142_26_fu_1222_p1 = reg_461;
assign bitcast_ln142_27_fu_1408_p1 = div_12_reg_2096;
assign bitcast_ln142_28_fu_1254_p1 = reg_427;
assign bitcast_ln142_29_fu_1412_p1 = div_13_reg_2101;
assign bitcast_ln142_2_fu_790_p1 = reg_431;
assign bitcast_ln142_30_fu_1259_p1 = weights1_load_15_reg_1822;
assign bitcast_ln142_31_fu_1416_p1 = div_14_reg_2106;
assign bitcast_ln142_32_fu_1263_p1 = reg_446;
assign bitcast_ln142_33_fu_1420_p1 = div_15_reg_2111;
assign bitcast_ln142_34_fu_1268_p1 = weights1_load_17_reg_1844;
assign bitcast_ln142_35_fu_1424_p1 = div_16_reg_2116;
assign bitcast_ln142_36_fu_1272_p1 = reg_436;
assign bitcast_ln142_37_fu_1428_p1 = div_17_reg_2121;
assign bitcast_ln142_38_fu_1277_p1 = weights1_load_19_reg_1866;
assign bitcast_ln142_39_fu_1432_p1 = div_18_reg_2126;
assign bitcast_ln142_3_fu_1350_p1 = reg_466;
assign bitcast_ln142_40_fu_1281_p1 = reg_451;
assign bitcast_ln142_41_fu_1436_p1 = reg_466;
assign bitcast_ln142_42_fu_1286_p1 = weights1_load_21_reg_1888;
assign bitcast_ln142_43_fu_1441_p1 = reg_470;
assign bitcast_ln142_44_fu_1290_p1 = reg_431;
assign bitcast_ln142_45_fu_1446_p1 = reg_474;
assign bitcast_ln142_46_fu_1295_p1 = weights1_load_23_reg_1910;
assign bitcast_ln142_47_fu_1451_p1 = reg_478;
assign bitcast_ln142_48_fu_1299_p1 = reg_456;
assign bitcast_ln142_49_fu_1456_p1 = reg_482;
assign bitcast_ln142_4_fu_822_p1 = reg_427;
assign bitcast_ln142_50_fu_1304_p1 = weights1_load_25_reg_1932;
assign bitcast_ln142_51_fu_1461_p1 = reg_486;
assign bitcast_ln142_52_fu_1308_p1 = reg_441;
assign bitcast_ln142_53_fu_1466_p1 = reg_490;
assign bitcast_ln142_54_fu_1313_p1 = weights1_load_27_reg_1954;
assign bitcast_ln142_55_fu_1471_p1 = reg_494;
assign bitcast_ln142_56_fu_1317_p1 = reg_461;
assign bitcast_ln142_57_fu_1476_p1 = reg_466;
assign bitcast_ln142_58_fu_1322_p1 = weights1_load_29_reg_1975;
assign bitcast_ln142_59_fu_1481_p1 = reg_470;
assign bitcast_ln142_5_fu_1355_p1 = reg_466;
assign bitcast_ln142_60_fu_1336_p1 = reg_427;
assign bitcast_ln142_61_fu_1486_p1 = reg_474;
assign bitcast_ln142_62_fu_1341_p1 = weights1_load_31_reg_1996;
assign bitcast_ln142_63_fu_1491_p1 = reg_478;
assign bitcast_ln142_6_fu_857_p1 = reg_436;
assign bitcast_ln142_7_fu_1360_p1 = reg_466;
assign bitcast_ln142_8_fu_895_p1 = reg_431;
assign bitcast_ln142_9_fu_1365_p1 = reg_470;
assign bitcast_ln142_fu_755_p1 = reg_427;
assign grp_fu_381_p_ce = 1'b1;
assign grp_fu_381_p_din0 = grp_fu_423_p0;
assign grp_fu_381_p_din1 = norm_1;
assign icmp_ln140_fu_516_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 5'd26) ? 1'b1 : 1'b0);
assign select_ln121_fu_553_p3 = ((tmp_fu_545_p3[0:0] == 1'b1) ? 7'd0 : j_fu_140);
assign select_ln140_fu_561_p3 = ((tmp_fu_545_p3[0:0] == 1'b1) ? add_ln140_1_reg_1531 : i_2_load_reg_1526);
assign tmp_67_fu_590_p4 = {{select_ln121_fu_553_p3[5:1]}};
assign tmp_fu_545_p3 = j_fu_140[32'd6];
assign tmp_s_fu_567_p3 = {{select_ln140_fu_561_p3}, {6'd0}};
assign trunc_ln142_1_fu_639_p1 = select_ln121_fu_553_p3[1:0];
assign trunc_ln142_2_fu_661_p1 = select_ln121_fu_553_p3[2:0];
assign trunc_ln142_3_fu_691_p1 = select_ln121_fu_553_p3[3:0];
assign trunc_ln142_fu_625_p1 = select_ln121_fu_553_p3[0:0];
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign weights1_d0 = weights1_d0_local;
assign weights1_d1 = weights1_d1_local;
assign weights1_we0 = weights1_we0_local;
assign weights1_we1 = weights1_we1_local;
assign zext_ln141_fu_575_p1 = select_ln121_fu_553_p3;
assign zext_ln142_10_fu_874_p1 = add_ln142_s_fu_862_p7;
assign zext_ln142_11_fu_890_p1 = add_ln142_10_fu_879_p6;
assign zext_ln142_12_fu_909_p1 = add_ln142_11_fu_900_p5;
assign zext_ln142_13_fu_925_p1 = add_ln142_12_fu_914_p6;
assign zext_ln142_14_fu_944_p1 = add_ln142_13_fu_935_p5;
assign zext_ln142_15_fu_957_p1 = add_ln142_14_fu_949_p4;
assign zext_ln142_16_fu_976_p1 = add_ln142_15_fu_967_p5;
assign zext_ln142_17_fu_992_p1 = add_ln142_16_fu_981_p6;
assign zext_ln142_18_fu_1014_p1 = add_ln142_17_fu_1002_p7;
assign zext_ln142_19_fu_1030_p1 = add_ln142_18_fu_1019_p6;
assign zext_ln142_1_fu_610_p1 = add_ln142_1_fu_600_p4;
assign zext_ln142_20_fu_1052_p1 = add_ln142_19_fu_1040_p7;
assign zext_ln142_21_fu_1071_p1 = add_ln142_20_fu_1057_p8;
assign zext_ln142_22_fu_1093_p1 = add_ln142_21_fu_1081_p7;
assign zext_ln142_23_fu_1109_p1 = add_ln142_22_fu_1098_p6;
assign zext_ln142_24_fu_1128_p1 = add_ln142_23_fu_1119_p5;
assign zext_ln142_25_fu_1144_p1 = add_ln142_24_fu_1133_p6;
assign zext_ln142_26_fu_1166_p1 = add_ln142_25_fu_1154_p7;
assign zext_ln142_27_fu_1182_p1 = add_ln142_26_fu_1171_p6;
assign zext_ln142_28_fu_1201_p1 = add_ln142_27_fu_1192_p5;
assign zext_ln142_29_fu_1217_p1 = add_ln142_28_fu_1206_p6;
assign zext_ln142_2_fu_737_p1 = add_ln142_2_fu_728_p5;
assign zext_ln142_30_fu_1236_p1 = add_ln142_29_fu_1227_p5;
assign zext_ln142_31_fu_1249_p1 = add_ln142_30_fu_1241_p4;
assign zext_ln142_3_fu_750_p1 = add_ln142_3_fu_742_p4;
assign zext_ln142_4_fu_769_p1 = add_ln142_4_fu_760_p5;
assign zext_ln142_5_fu_785_p1 = add_ln142_5_fu_774_p6;
assign zext_ln142_6_fu_804_p1 = add_ln142_6_fu_795_p5;
assign zext_ln142_7_fu_817_p1 = add_ln142_7_fu_809_p4;
assign zext_ln142_8_fu_836_p1 = add_ln142_8_fu_827_p5;
assign zext_ln142_9_fu_852_p1 = add_ln142_9_fu_841_p6;
assign zext_ln142_fu_585_p1 = add_ln142_fu_579_p2;
always @ (posedge ap_clk) begin
    weights1_addr_1_reg_1580[0] <= 1'b1;
    weights1_addr_1_reg_1580_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_2_reg_1704[1] <= 1'b1;
    weights1_addr_2_reg_1704_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_3_reg_1709[1:0] <= 2'b11;
    weights1_addr_3_reg_1709_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_1709_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_4_reg_1720[2] <= 1'b1;
    weights1_addr_4_reg_1720_pp0_iter1_reg[2] <= 1'b1;
    weights1_addr_4_reg_1720_pp0_iter2_reg[2] <= 1'b1;
    weights1_addr_5_reg_1726[0] <= 1'b1;
    weights1_addr_5_reg_1726[2] <= 1'b1;
    weights1_addr_5_reg_1726_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_5_reg_1726_pp0_iter1_reg[2] <= 1'b1;
    weights1_addr_5_reg_1726_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_5_reg_1726_pp0_iter2_reg[2] <= 1'b1;
    weights1_addr_6_reg_1737[2:1] <= 2'b11;
    weights1_addr_6_reg_1737_pp0_iter1_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_1737_pp0_iter2_reg[2:1] <= 2'b11;
    weights1_addr_7_reg_1743[2:0] <= 3'b111;
    weights1_addr_7_reg_1743_pp0_iter1_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_1743_pp0_iter2_reg[2:0] <= 3'b111;
    weights1_addr_8_reg_1754[3] <= 1'b1;
    weights1_addr_8_reg_1754_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_8_reg_1754_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_9_reg_1760[0] <= 1'b1;
    weights1_addr_9_reg_1760[3] <= 1'b1;
    weights1_addr_9_reg_1760_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_9_reg_1760_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_9_reg_1760_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_9_reg_1760_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_10_reg_1771[1] <= 1'b1;
    weights1_addr_10_reg_1771[3] <= 1'b1;
    weights1_addr_10_reg_1771_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_10_reg_1771_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_10_reg_1771_pp0_iter2_reg[1] <= 1'b1;
    weights1_addr_10_reg_1771_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_11_reg_1777[1:0] <= 2'b11;
    weights1_addr_11_reg_1777[3] <= 1'b1;
    weights1_addr_11_reg_1777_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_11_reg_1777_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_11_reg_1777_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_11_reg_1777_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_12_reg_1788[3:2] <= 2'b11;
    weights1_addr_12_reg_1788_pp0_iter1_reg[3:2] <= 2'b11;
    weights1_addr_12_reg_1788_pp0_iter2_reg[3:2] <= 2'b11;
    weights1_addr_13_reg_1794[0] <= 1'b1;
    weights1_addr_13_reg_1794[3:2] <= 2'b11;
    weights1_addr_13_reg_1794_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_13_reg_1794_pp0_iter1_reg[3:2] <= 2'b11;
    weights1_addr_13_reg_1794_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_13_reg_1794_pp0_iter2_reg[3:2] <= 2'b11;
    weights1_addr_14_reg_1805[3:1] <= 3'b111;
    weights1_addr_14_reg_1805_pp0_iter1_reg[3:1] <= 3'b111;
    weights1_addr_14_reg_1805_pp0_iter2_reg[3:1] <= 3'b111;
    weights1_addr_15_reg_1811[3:0] <= 4'b1111;
    weights1_addr_15_reg_1811_pp0_iter1_reg[3:0] <= 4'b1111;
    weights1_addr_15_reg_1811_pp0_iter2_reg[3:0] <= 4'b1111;
    weights1_addr_16_reg_1827[4] <= 1'b1;
    weights1_addr_16_reg_1827_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_16_reg_1827_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_17_reg_1833[0] <= 1'b1;
    weights1_addr_17_reg_1833[4] <= 1'b1;
    weights1_addr_17_reg_1833_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_17_reg_1833_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_17_reg_1833_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_17_reg_1833_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_18_reg_1849[1] <= 1'b1;
    weights1_addr_18_reg_1849[4] <= 1'b1;
    weights1_addr_18_reg_1849_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_18_reg_1849_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_18_reg_1849_pp0_iter2_reg[1] <= 1'b1;
    weights1_addr_18_reg_1849_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_19_reg_1855[1:0] <= 2'b11;
    weights1_addr_19_reg_1855[4] <= 1'b1;
    weights1_addr_19_reg_1855_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_19_reg_1855_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_19_reg_1855_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_19_reg_1855_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_20_reg_1871[2] <= 1'b1;
    weights1_addr_20_reg_1871[4] <= 1'b1;
    weights1_addr_20_reg_1871_pp0_iter1_reg[2] <= 1'b1;
    weights1_addr_20_reg_1871_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_20_reg_1871_pp0_iter2_reg[2] <= 1'b1;
    weights1_addr_20_reg_1871_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_21_reg_1877[0] <= 1'b1;
    weights1_addr_21_reg_1877[2:2] <= 1'b1;
    weights1_addr_21_reg_1877[4] <= 1'b1;
    weights1_addr_21_reg_1877_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_21_reg_1877_pp0_iter1_reg[2:2] <= 1'b1;
    weights1_addr_21_reg_1877_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_21_reg_1877_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_21_reg_1877_pp0_iter2_reg[2:2] <= 1'b1;
    weights1_addr_21_reg_1877_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_22_reg_1893[2:1] <= 2'b11;
    weights1_addr_22_reg_1893[4] <= 1'b1;
    weights1_addr_22_reg_1893_pp0_iter1_reg[2:1] <= 2'b11;
    weights1_addr_22_reg_1893_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_22_reg_1893_pp0_iter2_reg[2:1] <= 2'b11;
    weights1_addr_22_reg_1893_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_23_reg_1899[2:0] <= 3'b111;
    weights1_addr_23_reg_1899[4] <= 1'b1;
    weights1_addr_23_reg_1899_pp0_iter1_reg[2:0] <= 3'b111;
    weights1_addr_23_reg_1899_pp0_iter1_reg[4] <= 1'b1;
    weights1_addr_23_reg_1899_pp0_iter2_reg[2:0] <= 3'b111;
    weights1_addr_23_reg_1899_pp0_iter2_reg[4] <= 1'b1;
    weights1_addr_24_reg_1915[4:3] <= 2'b11;
    weights1_addr_24_reg_1915_pp0_iter1_reg[4:3] <= 2'b11;
    weights1_addr_24_reg_1915_pp0_iter2_reg[4:3] <= 2'b11;
    weights1_addr_25_reg_1921[0] <= 1'b1;
    weights1_addr_25_reg_1921[4:3] <= 2'b11;
    weights1_addr_25_reg_1921_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_25_reg_1921_pp0_iter1_reg[4:3] <= 2'b11;
    weights1_addr_25_reg_1921_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_25_reg_1921_pp0_iter2_reg[4:3] <= 2'b11;
    weights1_addr_26_reg_1937[1] <= 1'b1;
    weights1_addr_26_reg_1937[4:3] <= 2'b11;
    weights1_addr_26_reg_1937_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_26_reg_1937_pp0_iter1_reg[4:3] <= 2'b11;
    weights1_addr_26_reg_1937_pp0_iter2_reg[1] <= 1'b1;
    weights1_addr_26_reg_1937_pp0_iter2_reg[4:3] <= 2'b11;
    weights1_addr_27_reg_1943[1:0] <= 2'b11;
    weights1_addr_27_reg_1943[4:3] <= 2'b11;
    weights1_addr_27_reg_1943_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_27_reg_1943_pp0_iter1_reg[4:3] <= 2'b11;
    weights1_addr_27_reg_1943_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_27_reg_1943_pp0_iter2_reg[4:3] <= 2'b11;
    weights1_addr_28_reg_1959[4:2] <= 3'b111;
    weights1_addr_28_reg_1959_pp0_iter1_reg[4:2] <= 3'b111;
    weights1_addr_28_reg_1959_pp0_iter2_reg[4:2] <= 3'b111;
    weights1_addr_29_reg_1965[0] <= 1'b1;
    weights1_addr_29_reg_1965[4:2] <= 3'b111;
    weights1_addr_29_reg_1965_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_29_reg_1965_pp0_iter1_reg[4:2] <= 3'b111;
    weights1_addr_29_reg_1965_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_29_reg_1965_pp0_iter2_reg[4:2] <= 3'b111;
    weights1_addr_30_reg_1980[4:1] <= 4'b1111;
    weights1_addr_30_reg_1980_pp0_iter1_reg[4:1] <= 4'b1111;
    weights1_addr_30_reg_1980_pp0_iter2_reg[4:1] <= 4'b1111;
    weights1_addr_31_reg_1986[4:0] <= 5'b11111;
    weights1_addr_31_reg_1986_pp0_iter1_reg[4:0] <= 5'b11111;
    weights1_addr_31_reg_1986_pp0_iter2_reg[4:0] <= 5'b11111;
end
endmodule 