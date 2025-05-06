
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_7_address1,M_7_ce1,M_7_we1,M_7_d1,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_6_address1,M_6_ce1,M_6_we1,M_6_d1,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_5_address1,M_5_ce1,M_5_we1,M_5_d1,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_4_address1,M_4_ce1,M_4_we1,M_4_d1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] M_7_address0;
output   M_7_ce0;
output   M_7_we0;
output  [31:0] M_7_d0;
output  [11:0] M_7_address1;
output   M_7_ce1;
output   M_7_we1;
output  [31:0] M_7_d1;
output  [11:0] M_6_address0;
output   M_6_ce0;
output   M_6_we0;
output  [31:0] M_6_d0;
output  [11:0] M_6_address1;
output   M_6_ce1;
output   M_6_we1;
output  [31:0] M_6_d1;
output  [11:0] M_5_address0;
output   M_5_ce0;
output   M_5_we0;
output  [31:0] M_5_d0;
output  [11:0] M_5_address1;
output   M_5_ce1;
output   M_5_we1;
output  [31:0] M_5_d1;
output  [11:0] M_4_address0;
output   M_4_ce0;
output   M_4_we0;
output  [31:0] M_4_d0;
output  [11:0] M_4_address1;
output   M_4_ce1;
output   M_4_we1;
output  [31:0] M_4_d1;
output  [11:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
output  [11:0] M_3_address1;
output   M_3_ce1;
output   M_3_we1;
output  [31:0] M_3_d1;
output  [11:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
output  [11:0] M_2_address1;
output   M_2_ce1;
output   M_2_we1;
output  [31:0] M_2_d1;
output  [11:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [11:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [11:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [11:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_600_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [7:0] b_idx_14_reg_2040;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] tmp_fu_556_p4;
reg   [11:0] tmp_reg_2055;
reg   [0:0] icmp_ln23_reg_2061;
wire   [14:0] add_ln24_32_fu_618_p2;
reg   [14:0] add_ln24_32_reg_2065;
wire  signed [7:0] sub_ln24_8_fu_683_p2;
reg  signed [7:0] sub_ln24_8_reg_2096;
wire   [0:0] tmp_64_fu_861_p3;
reg   [0:0] tmp_64_reg_2102;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] tmp_27_fu_1010_p4;
reg   [1:0] tmp_27_reg_2108;
wire   [0:0] tmp_66_fu_1066_p3;
reg   [0:0] tmp_66_reg_2113;
wire   [1:0] tmp_28_fu_1363_p4;
reg   [1:0] tmp_28_reg_2119;
reg   [1:0] tmp_30_reg_2136;
reg   [0:0] tmp_67_reg_2142;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln24_fu_566_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_634_p1;
wire   [63:0] zext_ln24_16_fu_678_p1;
wire   [63:0] zext_ln24_4_fu_709_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_6_fu_761_p1;
wire   [63:0] zext_ln24_8_fu_804_p1;
wire   [63:0] zext_ln24_10_fu_856_p1;
wire   [63:0] zext_ln24_12_fu_910_p1;
wire   [63:0] zext_ln24_14_fu_953_p1;
wire   [63:0] zext_ln24_17_fu_996_p1;
wire   [63:0] zext_ln24_19_fu_1061_p1;
wire   [63:0] zext_ln24_21_fu_1115_p1;
wire   [63:0] zext_ln24_23_fu_1162_p1;
wire   [63:0] zext_ln24_25_fu_1205_p1;
wire   [63:0] zext_ln24_27_fu_1252_p1;
wire   [63:0] zext_ln24_29_fu_1295_p1;
wire   [63:0] zext_ln24_31_fu_1328_p1;
wire   [63:0] zext_ln24_32_fu_1358_p1;
wire   [63:0] zext_ln24_46_fu_1429_p1;
wire   [63:0] zext_ln24_34_fu_1469_p1;
wire   [63:0] zext_ln24_36_fu_1514_p1;
wire   [63:0] zext_ln24_38_fu_1559_p1;
wire   [63:0] zext_ln24_40_fu_1604_p1;
wire   [63:0] zext_ln24_42_fu_1652_p1;
wire   [63:0] zext_ln24_44_fu_1697_p1;
wire   [63:0] zext_ln24_47_fu_1742_p1;
wire   [63:0] zext_ln24_49_fu_1787_p1;
wire   [63:0] zext_ln24_51_fu_1832_p1;
wire   [63:0] zext_ln24_53_fu_1877_p1;
wire   [63:0] zext_ln24_55_fu_1919_p1;
wire   [63:0] zext_ln24_57_fu_1964_p1;
wire   [63:0] zext_ln24_59_fu_2006_p1;
reg   [7:0] b_idx_fu_206;
wire   [7:0] add_ln23_fu_1444_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_14;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln24_fu_577_p1;
reg    M_0_ce1_local;
reg   [11:0] M_0_address1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln24_8_fu_689_p1;
reg    M_0_ce0_local;
reg   [11:0] M_0_address0_local;
wire  signed [31:0] sext_ln24_16_fu_1338_p1;
wire  signed [31:0] sext_ln24_24_fu_1439_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln24_1_fu_667_p1;
reg    M_1_ce1_local;
reg   [11:0] M_1_address1_local;
wire  signed [31:0] sext_ln24_9_fu_1041_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln24_17_fu_1403_p1;
reg    M_1_ce0_local;
reg   [11:0] M_1_address0_local;
wire  signed [31:0] sext_ln24_25_fu_1767_p1;
reg    M_2_we1_local;
reg   [31:0] M_2_d1_local;
wire  signed [31:0] sext_ln24_2_fu_741_p1;
reg    M_2_ce1_local;
reg   [11:0] M_2_address1_local;
reg    M_2_we0_local;
reg   [31:0] M_2_d0_local;
wire  signed [31:0] sext_ln24_10_fu_1095_p1;
reg    M_2_ce0_local;
reg   [11:0] M_2_address0_local;
wire  signed [31:0] sext_ln24_18_fu_1494_p1;
wire  signed [31:0] sext_ln24_26_fu_1812_p1;
reg    M_3_we1_local;
reg   [31:0] M_3_d1_local;
wire  signed [31:0] sext_ln24_3_fu_784_p1;
reg    M_3_ce1_local;
reg   [11:0] M_3_address1_local;
reg    M_3_we0_local;
reg   [31:0] M_3_d0_local;
wire  signed [31:0] sext_ln24_11_fu_1142_p1;
reg    M_3_ce0_local;
reg   [11:0] M_3_address0_local;
wire  signed [31:0] sext_ln24_19_fu_1539_p1;
wire  signed [31:0] sext_ln24_27_fu_1857_p1;
reg    M_4_we1_local;
reg   [31:0] M_4_d1_local;
wire  signed [31:0] sext_ln24_4_fu_836_p1;
reg    M_4_ce1_local;
reg   [11:0] M_4_address1_local;
reg    M_4_we0_local;
reg   [31:0] M_4_d0_local;
wire  signed [31:0] sext_ln24_12_fu_1185_p1;
reg    M_4_ce0_local;
reg   [11:0] M_4_address0_local;
wire  signed [31:0] sext_ln24_20_fu_1584_p1;
wire  signed [31:0] sext_ln24_28_fu_1899_p1;
reg    M_5_we1_local;
reg   [31:0] M_5_d1_local;
wire  signed [31:0] sext_ln24_5_fu_890_p1;
reg    M_5_ce1_local;
reg   [11:0] M_5_address1_local;
reg    M_5_we0_local;
reg   [31:0] M_5_d0_local;
wire  signed [31:0] sext_ln24_13_fu_1232_p1;
reg    M_5_ce0_local;
reg   [11:0] M_5_address0_local;
wire  signed [31:0] sext_ln24_21_fu_1632_p1;
wire  signed [31:0] sext_ln24_29_fu_1944_p1;
reg    M_6_we1_local;
reg   [31:0] M_6_d1_local;
wire  signed [31:0] sext_ln24_6_fu_933_p1;
reg    M_6_ce1_local;
reg   [11:0] M_6_address1_local;
reg    M_6_we0_local;
reg   [31:0] M_6_d0_local;
wire  signed [31:0] sext_ln24_14_fu_1275_p1;
reg    M_6_ce0_local;
reg   [11:0] M_6_address0_local;
wire  signed [31:0] sext_ln24_22_fu_1677_p1;
wire  signed [31:0] sext_ln24_30_fu_1986_p1;
reg    M_7_we1_local;
reg   [31:0] M_7_d1_local;
wire  signed [31:0] sext_ln24_7_fu_976_p1;
reg    M_7_ce1_local;
reg   [11:0] M_7_address1_local;
reg    M_7_we0_local;
reg   [31:0] M_7_d0_local;
wire  signed [31:0] sext_ln24_15_fu_1318_p1;
reg    M_7_ce0_local;
reg   [11:0] M_7_address0_local;
wire  signed [31:0] sext_ln24_23_fu_1722_p1;
wire  signed [31:0] sext_ln24_31_fu_2028_p1;
wire   [4:0] lshr_ln1_fu_546_p4;
wire   [7:0] sub_ln24_fu_571_p2;
wire   [6:0] tmp_s_fu_582_p4;
wire   [7:0] or_ln2_fu_592_p3;
wire   [14:0] p_shl_fu_610_p3;
wire   [14:0] zext_ln24_1_fu_606_p1;
wire   [11:0] lshr_ln24_1_fu_624_p4;
wire   [5:0] tmp_23_fu_639_p4;
wire   [6:0] or_ln24_s_fu_649_p3;
wire   [7:0] zext_ln24_3_fu_657_p1;
wire   [7:0] sub_ln24_1_fu_661_p2;
wire   [11:0] add_ln24_6_fu_672_p2;
wire   [14:0] add_ln24_fu_694_p2;
wire   [11:0] lshr_ln24_2_fu_699_p4;
wire   [4:0] tmp_24_fu_714_p4;
wire   [6:0] or_ln3_fu_723_p3;
wire   [7:0] zext_ln24_5_fu_731_p1;
wire   [7:0] sub_ln24_2_fu_735_p2;
wire   [14:0] add_ln24_1_fu_746_p2;
wire   [11:0] lshr_ln24_3_fu_751_p4;
wire   [6:0] or_ln24_1_fu_766_p3;
wire   [7:0] zext_ln24_7_fu_774_p1;
wire   [7:0] sub_ln24_3_fu_778_p2;
wire   [14:0] add_ln24_2_fu_789_p2;
wire   [11:0] lshr_ln24_4_fu_794_p4;
wire   [3:0] tmp_25_fu_809_p4;
wire   [6:0] or_ln24_2_fu_818_p3;
wire   [7:0] zext_ln24_9_fu_826_p1;
wire   [7:0] sub_ln24_4_fu_830_p2;
wire   [14:0] add_ln24_3_fu_841_p2;
wire   [11:0] lshr_ln24_5_fu_846_p4;
wire   [6:0] or_ln24_3_fu_868_p5;
wire   [7:0] zext_ln24_11_fu_880_p1;
wire   [7:0] sub_ln24_5_fu_884_p2;
wire   [14:0] add_ln24_4_fu_895_p2;
wire   [11:0] lshr_ln24_6_fu_900_p4;
wire   [6:0] or_ln24_4_fu_915_p3;
wire   [7:0] zext_ln24_13_fu_923_p1;
wire   [7:0] sub_ln24_6_fu_927_p2;
wire   [14:0] add_ln24_5_fu_938_p2;
wire   [11:0] lshr_ln24_7_fu_943_p4;
wire   [6:0] or_ln24_5_fu_958_p3;
wire   [7:0] zext_ln24_15_fu_966_p1;
wire   [7:0] sub_ln24_7_fu_970_p2;
wire   [14:0] add_ln24_7_fu_981_p2;
wire   [11:0] lshr_ln24_8_fu_986_p4;
wire   [2:0] tmp_26_fu_1001_p4;
wire   [6:0] or_ln24_6_fu_1019_p5;
wire   [7:0] zext_ln24_18_fu_1031_p1;
wire   [7:0] sub_ln24_9_fu_1035_p2;
wire   [14:0] add_ln24_8_fu_1046_p2;
wire   [11:0] lshr_ln24_9_fu_1051_p4;
wire   [6:0] or_ln24_7_fu_1073_p5;
wire   [7:0] zext_ln24_20_fu_1085_p1;
wire   [7:0] sub_ln24_10_fu_1089_p2;
wire   [14:0] add_ln24_9_fu_1100_p2;
wire   [11:0] lshr_ln24_s_fu_1105_p4;
wire   [6:0] or_ln24_8_fu_1120_p5;
wire   [7:0] zext_ln24_22_fu_1132_p1;
wire   [7:0] sub_ln24_11_fu_1136_p2;
wire   [14:0] add_ln24_10_fu_1147_p2;
wire   [11:0] lshr_ln24_10_fu_1152_p4;
wire   [6:0] or_ln24_9_fu_1167_p3;
wire   [7:0] zext_ln24_24_fu_1175_p1;
wire   [7:0] sub_ln24_12_fu_1179_p2;
wire   [14:0] add_ln24_11_fu_1190_p2;
wire   [11:0] lshr_ln24_11_fu_1195_p4;
wire   [6:0] or_ln24_10_fu_1210_p5;
wire   [7:0] zext_ln24_26_fu_1222_p1;
wire   [7:0] sub_ln24_13_fu_1226_p2;
wire   [14:0] add_ln24_12_fu_1237_p2;
wire   [11:0] lshr_ln24_12_fu_1242_p4;
wire   [6:0] or_ln24_11_fu_1257_p3;
wire   [7:0] zext_ln24_28_fu_1265_p1;
wire   [7:0] sub_ln24_14_fu_1269_p2;
wire   [14:0] add_ln24_13_fu_1280_p2;
wire   [11:0] lshr_ln24_13_fu_1285_p4;
wire   [6:0] or_ln24_12_fu_1300_p3;
wire   [7:0] zext_ln24_30_fu_1308_p1;
wire   [7:0] sub_ln24_15_fu_1312_p2;
wire   [11:0] add_ln24_14_fu_1323_p2;
wire   [7:0] add_ln24_15_fu_1333_p2;
wire   [14:0] add_ln24_16_fu_1343_p2;
wire   [11:0] lshr_ln24_14_fu_1348_p4;
wire   [2:0] tmp_29_fu_1372_p4;
wire   [6:0] or_ln24_13_fu_1381_p5;
wire   [7:0] zext_ln24_33_fu_1393_p1;
wire   [7:0] sub_ln24_16_fu_1397_p2;
wire   [11:0] add_ln24_23_fu_1424_p2;
wire   [7:0] add_ln24_24_fu_1434_p2;
wire   [14:0] add_ln24_17_fu_1454_p2;
wire   [11:0] lshr_ln24_15_fu_1459_p4;
wire   [6:0] or_ln24_14_fu_1474_p5;
wire   [7:0] zext_ln24_35_fu_1484_p1;
wire   [7:0] sub_ln24_17_fu_1488_p2;
wire   [14:0] add_ln24_18_fu_1499_p2;
wire   [11:0] lshr_ln24_16_fu_1504_p4;
wire   [6:0] or_ln24_15_fu_1519_p5;
wire   [7:0] zext_ln24_37_fu_1529_p1;
wire   [7:0] sub_ln24_18_fu_1533_p2;
wire   [14:0] add_ln24_19_fu_1544_p2;
wire   [11:0] lshr_ln24_17_fu_1549_p4;
wire   [6:0] or_ln24_16_fu_1564_p5;
wire   [7:0] zext_ln24_39_fu_1574_p1;
wire   [7:0] sub_ln24_19_fu_1578_p2;
wire   [14:0] add_ln24_20_fu_1589_p2;
wire   [11:0] lshr_ln24_18_fu_1594_p4;
wire   [6:0] or_ln24_17_fu_1609_p7;
wire   [7:0] zext_ln24_41_fu_1622_p1;
wire   [7:0] sub_ln24_20_fu_1626_p2;
wire   [14:0] add_ln24_21_fu_1637_p2;
wire   [11:0] lshr_ln24_19_fu_1642_p4;
wire   [6:0] or_ln24_18_fu_1657_p5;
wire   [7:0] zext_ln24_43_fu_1667_p1;
wire   [7:0] sub_ln24_21_fu_1671_p2;
wire   [14:0] add_ln24_22_fu_1682_p2;
wire   [11:0] lshr_ln24_20_fu_1687_p4;
wire   [6:0] or_ln24_19_fu_1702_p5;
wire   [7:0] zext_ln24_45_fu_1712_p1;
wire   [7:0] sub_ln24_22_fu_1716_p2;
wire   [14:0] add_ln24_25_fu_1727_p2;
wire   [11:0] lshr_ln24_21_fu_1732_p4;
wire   [6:0] or_ln24_20_fu_1747_p5;
wire   [7:0] zext_ln24_48_fu_1757_p1;
wire   [7:0] sub_ln24_23_fu_1761_p2;
wire   [14:0] add_ln24_26_fu_1772_p2;
wire   [11:0] lshr_ln24_22_fu_1777_p4;
wire   [6:0] or_ln24_21_fu_1792_p5;
wire   [7:0] zext_ln24_50_fu_1802_p1;
wire   [7:0] sub_ln24_24_fu_1806_p2;
wire   [14:0] add_ln24_27_fu_1817_p2;
wire   [11:0] lshr_ln24_23_fu_1822_p4;
wire   [6:0] or_ln24_22_fu_1837_p5;
wire   [7:0] zext_ln24_52_fu_1847_p1;
wire   [7:0] sub_ln24_25_fu_1851_p2;
wire   [14:0] add_ln24_28_fu_1862_p2;
wire   [11:0] lshr_ln24_24_fu_1867_p4;
wire   [6:0] or_ln24_23_fu_1882_p3;
wire   [7:0] zext_ln24_54_fu_1889_p1;
wire   [7:0] sub_ln24_26_fu_1893_p2;
wire   [14:0] add_ln24_29_fu_1904_p2;
wire   [11:0] lshr_ln24_25_fu_1909_p4;
wire   [6:0] or_ln24_24_fu_1924_p5;
wire   [7:0] zext_ln24_56_fu_1934_p1;
wire   [7:0] sub_ln24_27_fu_1938_p2;
wire   [14:0] add_ln24_30_fu_1949_p2;
wire   [11:0] lshr_ln24_26_fu_1954_p4;
wire   [6:0] or_ln24_25_fu_1969_p3;
wire   [7:0] zext_ln24_58_fu_1976_p1;
wire   [7:0] sub_ln24_28_fu_1980_p2;
wire   [14:0] add_ln24_31_fu_1991_p2;
wire   [11:0] lshr_ln24_27_fu_1996_p4;
wire   [6:0] or_ln24_26_fu_2011_p3;
wire   [7:0] zext_ln24_60_fu_2018_p1;
wire   [7:0] sub_ln24_29_fu_2022_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_idx_fu_206 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_idx_fu_206 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1))) begin
        b_idx_fu_206 <= add_ln23_fu_1444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_32_reg_2065[14 : 1] <= add_ln24_32_fu_618_p2[14 : 1];
        b_idx_14_reg_2040 <= ap_sig_allocacmp_b_idx_14;
        icmp_ln23_reg_2061 <= icmp_ln23_fu_600_p2;
        sub_ln24_8_reg_2096 <= sub_ln24_8_fu_683_p2;
        tmp_reg_2055[4 : 0] <= tmp_fu_556_p4[4 : 0];
tmp_reg_2055[11 : 7] <= tmp_fu_556_p4[11 : 7];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_27_reg_2108 <= {{b_idx_14_reg_2040[2:1]}};
        tmp_28_reg_2119 <= {{b_idx_14_reg_2040[6:5]}};
        tmp_30_reg_2136 <= {{b_idx_14_reg_2040[3:2]}};
        tmp_64_reg_2102 <= b_idx_14_reg_2040[32'd1];
        tmp_66_reg_2113 <= b_idx_14_reg_2040[32'd2];
        tmp_67_reg_2142 <= b_idx_14_reg_2040[32'd3];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address0_local = zext_ln24_46_fu_1429_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address0_local = zext_ln24_16_fu_678_p1;
        end else begin
            M_0_address0_local = 'bx;
        end
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln24_31_fu_1328_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln24_fu_566_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = sext_ln24_24_fu_1439_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = sext_ln24_8_fu_689_p1;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln24_16_fu_1338_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln24_fu_577_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln23_fu_600_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln24_47_fu_1742_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln24_32_fu_1358_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln24_17_fu_996_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln24_2_fu_634_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_d0_local = sext_ln24_25_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln24_17_fu_1403_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln24_9_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln24_1_fu_667_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln23_fu_600_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address0_local = zext_ln24_49_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln24_19_fu_1061_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address1_local = zext_ln24_34_fu_1469_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address1_local = zext_ln24_4_fu_709_p1;
    end else begin
        M_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_d0_local = sext_ln24_26_fu_1812_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d0_local = sext_ln24_10_fu_1095_p1;
    end else begin
        M_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_d1_local = sext_ln24_18_fu_1494_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d1_local = sext_ln24_2_fu_741_p1;
    end else begin
        M_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we1_local = 1'b1;
    end else begin
        M_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address0_local = zext_ln24_51_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln24_21_fu_1115_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address1_local = zext_ln24_36_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address1_local = zext_ln24_6_fu_761_p1;
    end else begin
        M_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_d0_local = sext_ln24_27_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d0_local = sext_ln24_11_fu_1142_p1;
    end else begin
        M_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_d1_local = sext_ln24_19_fu_1539_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d1_local = sext_ln24_3_fu_784_p1;
    end else begin
        M_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we1_local = 1'b1;
    end else begin
        M_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_address0_local = zext_ln24_53_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_address0_local = zext_ln24_23_fu_1162_p1;
    end else begin
        M_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_address1_local = zext_ln24_38_fu_1559_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_address1_local = zext_ln24_8_fu_804_p1;
    end else begin
        M_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_ce0_local = 1'b1;
    end else begin
        M_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_ce1_local = 1'b1;
    end else begin
        M_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_d0_local = sext_ln24_28_fu_1899_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_d0_local = sext_ln24_12_fu_1185_p1;
    end else begin
        M_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_d1_local = sext_ln24_20_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_d1_local = sext_ln24_4_fu_836_p1;
    end else begin
        M_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_we0_local = 1'b1;
    end else begin
        M_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_we1_local = 1'b1;
    end else begin
        M_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_address0_local = zext_ln24_55_fu_1919_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_address0_local = zext_ln24_25_fu_1205_p1;
    end else begin
        M_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_address1_local = zext_ln24_40_fu_1604_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_address1_local = zext_ln24_10_fu_856_p1;
    end else begin
        M_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_ce0_local = 1'b1;
    end else begin
        M_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_ce1_local = 1'b1;
    end else begin
        M_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_d0_local = sext_ln24_29_fu_1944_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_d0_local = sext_ln24_13_fu_1232_p1;
    end else begin
        M_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_d1_local = sext_ln24_21_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_d1_local = sext_ln24_5_fu_890_p1;
    end else begin
        M_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_we0_local = 1'b1;
    end else begin
        M_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_we1_local = 1'b1;
    end else begin
        M_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_address0_local = zext_ln24_57_fu_1964_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_address0_local = zext_ln24_27_fu_1252_p1;
    end else begin
        M_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_address1_local = zext_ln24_42_fu_1652_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_address1_local = zext_ln24_12_fu_910_p1;
    end else begin
        M_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_ce0_local = 1'b1;
    end else begin
        M_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_ce1_local = 1'b1;
    end else begin
        M_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_d0_local = sext_ln24_30_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_d0_local = sext_ln24_14_fu_1275_p1;
    end else begin
        M_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_d1_local = sext_ln24_22_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_d1_local = sext_ln24_6_fu_933_p1;
    end else begin
        M_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_we0_local = 1'b1;
    end else begin
        M_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_we1_local = 1'b1;
    end else begin
        M_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_address0_local = zext_ln24_59_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_address0_local = zext_ln24_29_fu_1295_p1;
    end else begin
        M_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_address1_local = zext_ln24_44_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_address1_local = zext_ln24_14_fu_953_p1;
    end else begin
        M_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_ce0_local = 1'b1;
    end else begin
        M_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_ce1_local = 1'b1;
    end else begin
        M_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_d0_local = sext_ln24_31_fu_2028_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_d0_local = sext_ln24_15_fu_1318_p1;
    end else begin
        M_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_d1_local = sext_ln24_23_fu_1722_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_d1_local = sext_ln24_7_fu_976_p1;
    end else begin
        M_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_we0_local = 1'b1;
    end else begin
        M_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_2061 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_we1_local = 1'b1;
    end else begin
        M_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_600_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_14 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_14 = b_idx_fu_206;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_d1 = M_0_d1_local;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_d1 = M_1_d1_local;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = M_2_address1_local;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = M_2_d0_local;
assign M_2_d1 = M_2_d1_local;
assign M_2_we0 = M_2_we0_local;
assign M_2_we1 = M_2_we1_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = M_3_address1_local;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = M_3_d0_local;
assign M_3_d1 = M_3_d1_local;
assign M_3_we0 = M_3_we0_local;
assign M_3_we1 = M_3_we1_local;
assign M_4_address0 = M_4_address0_local;
assign M_4_address1 = M_4_address1_local;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_ce1 = M_4_ce1_local;
assign M_4_d0 = M_4_d0_local;
assign M_4_d1 = M_4_d1_local;
assign M_4_we0 = M_4_we0_local;
assign M_4_we1 = M_4_we1_local;
assign M_5_address0 = M_5_address0_local;
assign M_5_address1 = M_5_address1_local;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_ce1 = M_5_ce1_local;
assign M_5_d0 = M_5_d0_local;
assign M_5_d1 = M_5_d1_local;
assign M_5_we0 = M_5_we0_local;
assign M_5_we1 = M_5_we1_local;
assign M_6_address0 = M_6_address0_local;
assign M_6_address1 = M_6_address1_local;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_ce1 = M_6_ce1_local;
assign M_6_d0 = M_6_d0_local;
assign M_6_d1 = M_6_d1_local;
assign M_6_we0 = M_6_we0_local;
assign M_6_we1 = M_6_we1_local;
assign M_7_address0 = M_7_address0_local;
assign M_7_address1 = M_7_address1_local;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_ce1 = M_7_ce1_local;
assign M_7_d0 = M_7_d0_local;
assign M_7_d1 = M_7_d1_local;
assign M_7_we0 = M_7_we0_local;
assign M_7_we1 = M_7_we1_local;
assign add_ln23_fu_1444_p2 = (b_idx_14_reg_2040 + 8'd32);
assign add_ln24_10_fu_1147_p2 = (add_ln24_32_reg_2065 + 15'd1419);
assign add_ln24_11_fu_1190_p2 = (add_ln24_32_reg_2065 + 15'd1548);
assign add_ln24_12_fu_1237_p2 = (add_ln24_32_reg_2065 + 15'd1677);
assign add_ln24_13_fu_1280_p2 = (add_ln24_32_reg_2065 + 15'd1806);
assign add_ln24_14_fu_1323_p2 = (tmp_reg_2055 + 12'd258);
assign add_ln24_15_fu_1333_p2 = ($signed(sub_ln24_8_reg_2096) + $signed(8'd248));
assign add_ln24_16_fu_1343_p2 = (add_ln24_32_reg_2065 + 15'd2064);
assign add_ln24_17_fu_1454_p2 = (add_ln24_32_reg_2065 + 15'd2193);
assign add_ln24_18_fu_1499_p2 = (add_ln24_32_reg_2065 + 15'd2322);
assign add_ln24_19_fu_1544_p2 = (add_ln24_32_reg_2065 + 15'd2451);
assign add_ln24_1_fu_746_p2 = (add_ln24_32_reg_2065 + 15'd258);
assign add_ln24_20_fu_1589_p2 = (add_ln24_32_reg_2065 + 15'd2580);
assign add_ln24_21_fu_1637_p2 = (add_ln24_32_reg_2065 + 15'd2709);
assign add_ln24_22_fu_1682_p2 = (add_ln24_32_reg_2065 + 15'd2838);
assign add_ln24_23_fu_1424_p2 = (tmp_reg_2055 + 12'd387);
assign add_ln24_24_fu_1434_p2 = ($signed(sub_ln24_8_reg_2096) + $signed(8'd240));
assign add_ln24_25_fu_1727_p2 = (add_ln24_32_reg_2065 + 15'd3096);
assign add_ln24_26_fu_1772_p2 = (add_ln24_32_reg_2065 + 15'd3225);
assign add_ln24_27_fu_1817_p2 = (add_ln24_32_reg_2065 + 15'd3354);
assign add_ln24_28_fu_1862_p2 = (add_ln24_32_reg_2065 + 15'd3483);
assign add_ln24_29_fu_1904_p2 = (add_ln24_32_reg_2065 + 15'd3612);
assign add_ln24_2_fu_789_p2 = (add_ln24_32_reg_2065 + 15'd387);
assign add_ln24_30_fu_1949_p2 = (add_ln24_32_reg_2065 + 15'd3741);
assign add_ln24_31_fu_1991_p2 = (add_ln24_32_reg_2065 + 15'd3870);
assign add_ln24_32_fu_618_p2 = (p_shl_fu_610_p3 + zext_ln24_1_fu_606_p1);
assign add_ln24_3_fu_841_p2 = (add_ln24_32_reg_2065 + 15'd516);
assign add_ln24_4_fu_895_p2 = (add_ln24_32_reg_2065 + 15'd645);
assign add_ln24_5_fu_938_p2 = (add_ln24_32_reg_2065 + 15'd774);
assign add_ln24_6_fu_672_p2 = (tmp_fu_556_p4 + 12'd129);
assign add_ln24_7_fu_981_p2 = (add_ln24_32_reg_2065 + 15'd1032);
assign add_ln24_8_fu_1046_p2 = (add_ln24_32_reg_2065 + 15'd1161);
assign add_ln24_9_fu_1100_p2 = (add_ln24_32_reg_2065 + 15'd1290);
assign add_ln24_fu_694_p2 = (add_ln24_32_reg_2065 + 15'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_600_p2 = ((or_ln2_fu_592_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_546_p4 = {{ap_sig_allocacmp_b_idx_14[7:3]}};
assign lshr_ln24_10_fu_1152_p4 = {{add_ln24_10_fu_1147_p2[14:3]}};
assign lshr_ln24_11_fu_1195_p4 = {{add_ln24_11_fu_1190_p2[14:3]}};
assign lshr_ln24_12_fu_1242_p4 = {{add_ln24_12_fu_1237_p2[14:3]}};
assign lshr_ln24_13_fu_1285_p4 = {{add_ln24_13_fu_1280_p2[14:3]}};
assign lshr_ln24_14_fu_1348_p4 = {{add_ln24_16_fu_1343_p2[14:3]}};
assign lshr_ln24_15_fu_1459_p4 = {{add_ln24_17_fu_1454_p2[14:3]}};
assign lshr_ln24_16_fu_1504_p4 = {{add_ln24_18_fu_1499_p2[14:3]}};
assign lshr_ln24_17_fu_1549_p4 = {{add_ln24_19_fu_1544_p2[14:3]}};
assign lshr_ln24_18_fu_1594_p4 = {{add_ln24_20_fu_1589_p2[14:3]}};
assign lshr_ln24_19_fu_1642_p4 = {{add_ln24_21_fu_1637_p2[14:3]}};
assign lshr_ln24_1_fu_624_p4 = {{add_ln24_32_fu_618_p2[14:3]}};
assign lshr_ln24_20_fu_1687_p4 = {{add_ln24_22_fu_1682_p2[14:3]}};
assign lshr_ln24_21_fu_1732_p4 = {{add_ln24_25_fu_1727_p2[14:3]}};
assign lshr_ln24_22_fu_1777_p4 = {{add_ln24_26_fu_1772_p2[14:3]}};
assign lshr_ln24_23_fu_1822_p4 = {{add_ln24_27_fu_1817_p2[14:3]}};
assign lshr_ln24_24_fu_1867_p4 = {{add_ln24_28_fu_1862_p2[14:3]}};
assign lshr_ln24_25_fu_1909_p4 = {{add_ln24_29_fu_1904_p2[14:3]}};
assign lshr_ln24_26_fu_1954_p4 = {{add_ln24_30_fu_1949_p2[14:3]}};
assign lshr_ln24_27_fu_1996_p4 = {{add_ln24_31_fu_1991_p2[14:3]}};
assign lshr_ln24_2_fu_699_p4 = {{add_ln24_fu_694_p2[14:3]}};
assign lshr_ln24_3_fu_751_p4 = {{add_ln24_1_fu_746_p2[14:3]}};
assign lshr_ln24_4_fu_794_p4 = {{add_ln24_2_fu_789_p2[14:3]}};
assign lshr_ln24_5_fu_846_p4 = {{add_ln24_3_fu_841_p2[14:3]}};
assign lshr_ln24_6_fu_900_p4 = {{add_ln24_4_fu_895_p2[14:3]}};
assign lshr_ln24_7_fu_943_p4 = {{add_ln24_5_fu_938_p2[14:3]}};
assign lshr_ln24_8_fu_986_p4 = {{add_ln24_7_fu_981_p2[14:3]}};
assign lshr_ln24_9_fu_1051_p4 = {{add_ln24_8_fu_1046_p2[14:3]}};
assign lshr_ln24_s_fu_1105_p4 = {{add_ln24_9_fu_1100_p2[14:3]}};
assign or_ln24_10_fu_1210_p5 = {{{{tmp_26_fu_1001_p4}, {2'd3}}, {tmp_64_fu_861_p3}}, {1'd1}};
assign or_ln24_11_fu_1257_p3 = {{tmp_26_fu_1001_p4}, {4'd14}};
assign or_ln24_12_fu_1300_p3 = {{tmp_26_fu_1001_p4}, {4'd15}};
assign or_ln24_13_fu_1381_p5 = {{{{tmp_28_fu_1363_p4}, {1'd1}}, {tmp_29_fu_1372_p4}}, {1'd1}};
assign or_ln24_14_fu_1474_p5 = {{{{tmp_28_reg_2119}, {1'd1}}, {tmp_30_reg_2136}}, {2'd2}};
assign or_ln24_15_fu_1519_p5 = {{{{tmp_28_reg_2119}, {1'd1}}, {tmp_30_reg_2136}}, {2'd3}};
assign or_ln24_16_fu_1564_p5 = {{{{tmp_28_reg_2119}, {1'd1}}, {tmp_67_reg_2142}}, {3'd4}};
assign or_ln24_17_fu_1609_p7 = {{{{{{tmp_28_reg_2119}, {1'd1}}, {tmp_67_reg_2142}}, {1'd1}}, {tmp_64_reg_2102}}, {1'd1}};
assign or_ln24_18_fu_1657_p5 = {{{{tmp_28_reg_2119}, {1'd1}}, {tmp_67_reg_2142}}, {3'd6}};
assign or_ln24_19_fu_1702_p5 = {{{{tmp_28_reg_2119}, {1'd1}}, {tmp_67_reg_2142}}, {3'd7}};
assign or_ln24_1_fu_766_p3 = {{tmp_24_fu_714_p4}, {2'd3}};
assign or_ln24_20_fu_1747_p5 = {{{{tmp_28_reg_2119}, {2'd3}}, {tmp_27_reg_2108}}, {1'd1}};
assign or_ln24_21_fu_1792_p5 = {{{{tmp_28_reg_2119}, {2'd3}}, {tmp_66_reg_2113}}, {2'd2}};
assign or_ln24_22_fu_1837_p5 = {{{{tmp_28_reg_2119}, {2'd3}}, {tmp_66_reg_2113}}, {2'd3}};
assign or_ln24_23_fu_1882_p3 = {{tmp_28_reg_2119}, {5'd28}};
assign or_ln24_24_fu_1924_p5 = {{{{tmp_28_reg_2119}, {3'd7}}, {tmp_64_reg_2102}}, {1'd1}};
assign or_ln24_25_fu_1969_p3 = {{tmp_28_reg_2119}, {5'd30}};
assign or_ln24_26_fu_2011_p3 = {{tmp_28_reg_2119}, {5'd31}};
assign or_ln24_2_fu_818_p3 = {{tmp_25_fu_809_p4}, {3'd4}};
assign or_ln24_3_fu_868_p5 = {{{{tmp_25_fu_809_p4}, {1'd1}}, {tmp_64_fu_861_p3}}, {1'd1}};
assign or_ln24_4_fu_915_p3 = {{tmp_25_fu_809_p4}, {3'd6}};
assign or_ln24_5_fu_958_p3 = {{tmp_25_fu_809_p4}, {3'd7}};
assign or_ln24_6_fu_1019_p5 = {{{{tmp_26_fu_1001_p4}, {1'd1}}, {tmp_27_fu_1010_p4}}, {1'd1}};
assign or_ln24_7_fu_1073_p5 = {{{{tmp_26_fu_1001_p4}, {1'd1}}, {tmp_66_fu_1066_p3}}, {2'd2}};
assign or_ln24_8_fu_1120_p5 = {{{{tmp_26_fu_1001_p4}, {1'd1}}, {tmp_66_fu_1066_p3}}, {2'd3}};
assign or_ln24_9_fu_1167_p3 = {{tmp_26_fu_1001_p4}, {4'd12}};
assign or_ln24_s_fu_649_p3 = {{tmp_23_fu_639_p4}, {1'd1}};
assign or_ln2_fu_592_p3 = {{tmp_s_fu_582_p4}, {1'd1}};
assign or_ln3_fu_723_p3 = {{tmp_24_fu_714_p4}, {2'd2}};
assign p_shl_fu_610_p3 = {{tmp_s_fu_582_p4}, {8'd128}};
assign sext_ln24_10_fu_1095_p1 = $signed(sub_ln24_10_fu_1089_p2);
assign sext_ln24_11_fu_1142_p1 = $signed(sub_ln24_11_fu_1136_p2);
assign sext_ln24_12_fu_1185_p1 = $signed(sub_ln24_12_fu_1179_p2);
assign sext_ln24_13_fu_1232_p1 = $signed(sub_ln24_13_fu_1226_p2);
assign sext_ln24_14_fu_1275_p1 = $signed(sub_ln24_14_fu_1269_p2);
assign sext_ln24_15_fu_1318_p1 = $signed(sub_ln24_15_fu_1312_p2);
assign sext_ln24_16_fu_1338_p1 = $signed(add_ln24_15_fu_1333_p2);
assign sext_ln24_17_fu_1403_p1 = $signed(sub_ln24_16_fu_1397_p2);
assign sext_ln24_18_fu_1494_p1 = $signed(sub_ln24_17_fu_1488_p2);
assign sext_ln24_19_fu_1539_p1 = $signed(sub_ln24_18_fu_1533_p2);
assign sext_ln24_1_fu_667_p1 = $signed(sub_ln24_1_fu_661_p2);
assign sext_ln24_20_fu_1584_p1 = $signed(sub_ln24_19_fu_1578_p2);
assign sext_ln24_21_fu_1632_p1 = $signed(sub_ln24_20_fu_1626_p2);
assign sext_ln24_22_fu_1677_p1 = $signed(sub_ln24_21_fu_1671_p2);
assign sext_ln24_23_fu_1722_p1 = $signed(sub_ln24_22_fu_1716_p2);
assign sext_ln24_24_fu_1439_p1 = $signed(add_ln24_24_fu_1434_p2);
assign sext_ln24_25_fu_1767_p1 = $signed(sub_ln24_23_fu_1761_p2);
assign sext_ln24_26_fu_1812_p1 = $signed(sub_ln24_24_fu_1806_p2);
assign sext_ln24_27_fu_1857_p1 = $signed(sub_ln24_25_fu_1851_p2);
assign sext_ln24_28_fu_1899_p1 = $signed(sub_ln24_26_fu_1893_p2);
assign sext_ln24_29_fu_1944_p1 = $signed(sub_ln24_27_fu_1938_p2);
assign sext_ln24_2_fu_741_p1 = $signed(sub_ln24_2_fu_735_p2);
assign sext_ln24_30_fu_1986_p1 = $signed(sub_ln24_28_fu_1980_p2);
assign sext_ln24_31_fu_2028_p1 = $signed(sub_ln24_29_fu_2022_p2);
assign sext_ln24_3_fu_784_p1 = $signed(sub_ln24_3_fu_778_p2);
assign sext_ln24_4_fu_836_p1 = $signed(sub_ln24_4_fu_830_p2);
assign sext_ln24_5_fu_890_p1 = $signed(sub_ln24_5_fu_884_p2);
assign sext_ln24_6_fu_933_p1 = $signed(sub_ln24_6_fu_927_p2);
assign sext_ln24_7_fu_976_p1 = $signed(sub_ln24_7_fu_970_p2);
assign sext_ln24_8_fu_689_p1 = sub_ln24_8_fu_683_p2;
assign sext_ln24_9_fu_1041_p1 = $signed(sub_ln24_9_fu_1035_p2);
assign sext_ln24_fu_577_p1 = $signed(sub_ln24_fu_571_p2);
assign sub_ln24_10_fu_1089_p2 = (8'd0 - zext_ln24_20_fu_1085_p1);
assign sub_ln24_11_fu_1136_p2 = (8'd0 - zext_ln24_22_fu_1132_p1);
assign sub_ln24_12_fu_1179_p2 = (8'd0 - zext_ln24_24_fu_1175_p1);
assign sub_ln24_13_fu_1226_p2 = (8'd0 - zext_ln24_26_fu_1222_p1);
assign sub_ln24_14_fu_1269_p2 = (8'd0 - zext_ln24_28_fu_1265_p1);
assign sub_ln24_15_fu_1312_p2 = (8'd0 - zext_ln24_30_fu_1308_p1);
assign sub_ln24_16_fu_1397_p2 = (8'd0 - zext_ln24_33_fu_1393_p1);
assign sub_ln24_17_fu_1488_p2 = (8'd0 - zext_ln24_35_fu_1484_p1);
assign sub_ln24_18_fu_1533_p2 = (8'd0 - zext_ln24_37_fu_1529_p1);
assign sub_ln24_19_fu_1578_p2 = (8'd0 - zext_ln24_39_fu_1574_p1);
assign sub_ln24_1_fu_661_p2 = (8'd0 - zext_ln24_3_fu_657_p1);
assign sub_ln24_20_fu_1626_p2 = (8'd0 - zext_ln24_41_fu_1622_p1);
assign sub_ln24_21_fu_1671_p2 = (8'd0 - zext_ln24_43_fu_1667_p1);
assign sub_ln24_22_fu_1716_p2 = (8'd0 - zext_ln24_45_fu_1712_p1);
assign sub_ln24_23_fu_1761_p2 = (8'd0 - zext_ln24_48_fu_1757_p1);
assign sub_ln24_24_fu_1806_p2 = (8'd0 - zext_ln24_50_fu_1802_p1);
assign sub_ln24_25_fu_1851_p2 = (8'd0 - zext_ln24_52_fu_1847_p1);
assign sub_ln24_26_fu_1893_p2 = (8'd0 - zext_ln24_54_fu_1889_p1);
assign sub_ln24_27_fu_1938_p2 = (8'd0 - zext_ln24_56_fu_1934_p1);
assign sub_ln24_28_fu_1980_p2 = (8'd0 - zext_ln24_58_fu_1976_p1);
assign sub_ln24_29_fu_2022_p2 = (8'd0 - zext_ln24_60_fu_2018_p1);
assign sub_ln24_2_fu_735_p2 = (8'd0 - zext_ln24_5_fu_731_p1);
assign sub_ln24_3_fu_778_p2 = (8'd0 - zext_ln24_7_fu_774_p1);
assign sub_ln24_4_fu_830_p2 = (8'd0 - zext_ln24_9_fu_826_p1);
assign sub_ln24_5_fu_884_p2 = (8'd0 - zext_ln24_11_fu_880_p1);
assign sub_ln24_6_fu_927_p2 = (8'd0 - zext_ln24_13_fu_923_p1);
assign sub_ln24_7_fu_970_p2 = (8'd0 - zext_ln24_15_fu_966_p1);
assign sub_ln24_8_fu_683_p2 = ($signed(8'd248) - $signed(ap_sig_allocacmp_b_idx_14));
assign sub_ln24_9_fu_1035_p2 = (8'd0 - zext_ln24_18_fu_1031_p1);
assign sub_ln24_fu_571_p2 = (8'd0 - ap_sig_allocacmp_b_idx_14);
assign tmp_23_fu_639_p4 = {{ap_sig_allocacmp_b_idx_14[6:1]}};
assign tmp_24_fu_714_p4 = {{b_idx_14_reg_2040[6:2]}};
assign tmp_25_fu_809_p4 = {{b_idx_14_reg_2040[6:3]}};
assign tmp_26_fu_1001_p4 = {{b_idx_14_reg_2040[6:4]}};
assign tmp_27_fu_1010_p4 = {{b_idx_14_reg_2040[2:1]}};
assign tmp_28_fu_1363_p4 = {{b_idx_14_reg_2040[6:5]}};
assign tmp_29_fu_1372_p4 = {{b_idx_14_reg_2040[3:1]}};
assign tmp_64_fu_861_p3 = b_idx_14_reg_2040[32'd1];
assign tmp_66_fu_1066_p3 = b_idx_14_reg_2040[32'd2];
assign tmp_fu_556_p4 = {{{lshr_ln1_fu_546_p4}, {2'd0}}, {lshr_ln1_fu_546_p4}};
assign tmp_s_fu_582_p4 = {{ap_sig_allocacmp_b_idx_14[7:1]}};
assign zext_ln24_10_fu_856_p1 = lshr_ln24_5_fu_846_p4;
assign zext_ln24_11_fu_880_p1 = or_ln24_3_fu_868_p5;
assign zext_ln24_12_fu_910_p1 = lshr_ln24_6_fu_900_p4;
assign zext_ln24_13_fu_923_p1 = or_ln24_4_fu_915_p3;
assign zext_ln24_14_fu_953_p1 = lshr_ln24_7_fu_943_p4;
assign zext_ln24_15_fu_966_p1 = or_ln24_5_fu_958_p3;
assign zext_ln24_16_fu_678_p1 = add_ln24_6_fu_672_p2;
assign zext_ln24_17_fu_996_p1 = lshr_ln24_8_fu_986_p4;
assign zext_ln24_18_fu_1031_p1 = or_ln24_6_fu_1019_p5;
assign zext_ln24_19_fu_1061_p1 = lshr_ln24_9_fu_1051_p4;
assign zext_ln24_1_fu_606_p1 = or_ln2_fu_592_p3;
assign zext_ln24_20_fu_1085_p1 = or_ln24_7_fu_1073_p5;
assign zext_ln24_21_fu_1115_p1 = lshr_ln24_s_fu_1105_p4;
assign zext_ln24_22_fu_1132_p1 = or_ln24_8_fu_1120_p5;
assign zext_ln24_23_fu_1162_p1 = lshr_ln24_10_fu_1152_p4;
assign zext_ln24_24_fu_1175_p1 = or_ln24_9_fu_1167_p3;
assign zext_ln24_25_fu_1205_p1 = lshr_ln24_11_fu_1195_p4;
assign zext_ln24_26_fu_1222_p1 = or_ln24_10_fu_1210_p5;
assign zext_ln24_27_fu_1252_p1 = lshr_ln24_12_fu_1242_p4;
assign zext_ln24_28_fu_1265_p1 = or_ln24_11_fu_1257_p3;
assign zext_ln24_29_fu_1295_p1 = lshr_ln24_13_fu_1285_p4;
assign zext_ln24_2_fu_634_p1 = lshr_ln24_1_fu_624_p4;
assign zext_ln24_30_fu_1308_p1 = or_ln24_12_fu_1300_p3;
assign zext_ln24_31_fu_1328_p1 = add_ln24_14_fu_1323_p2;
assign zext_ln24_32_fu_1358_p1 = lshr_ln24_14_fu_1348_p4;
assign zext_ln24_33_fu_1393_p1 = or_ln24_13_fu_1381_p5;
assign zext_ln24_34_fu_1469_p1 = lshr_ln24_15_fu_1459_p4;
assign zext_ln24_35_fu_1484_p1 = or_ln24_14_fu_1474_p5;
assign zext_ln24_36_fu_1514_p1 = lshr_ln24_16_fu_1504_p4;
assign zext_ln24_37_fu_1529_p1 = or_ln24_15_fu_1519_p5;
assign zext_ln24_38_fu_1559_p1 = lshr_ln24_17_fu_1549_p4;
assign zext_ln24_39_fu_1574_p1 = or_ln24_16_fu_1564_p5;
assign zext_ln24_3_fu_657_p1 = or_ln24_s_fu_649_p3;
assign zext_ln24_40_fu_1604_p1 = lshr_ln24_18_fu_1594_p4;
assign zext_ln24_41_fu_1622_p1 = or_ln24_17_fu_1609_p7;
assign zext_ln24_42_fu_1652_p1 = lshr_ln24_19_fu_1642_p4;
assign zext_ln24_43_fu_1667_p1 = or_ln24_18_fu_1657_p5;
assign zext_ln24_44_fu_1697_p1 = lshr_ln24_20_fu_1687_p4;
assign zext_ln24_45_fu_1712_p1 = or_ln24_19_fu_1702_p5;
assign zext_ln24_46_fu_1429_p1 = add_ln24_23_fu_1424_p2;
assign zext_ln24_47_fu_1742_p1 = lshr_ln24_21_fu_1732_p4;
assign zext_ln24_48_fu_1757_p1 = or_ln24_20_fu_1747_p5;
assign zext_ln24_49_fu_1787_p1 = lshr_ln24_22_fu_1777_p4;
assign zext_ln24_4_fu_709_p1 = lshr_ln24_2_fu_699_p4;
assign zext_ln24_50_fu_1802_p1 = or_ln24_21_fu_1792_p5;
assign zext_ln24_51_fu_1832_p1 = lshr_ln24_23_fu_1822_p4;
assign zext_ln24_52_fu_1847_p1 = or_ln24_22_fu_1837_p5;
assign zext_ln24_53_fu_1877_p1 = lshr_ln24_24_fu_1867_p4;
assign zext_ln24_54_fu_1889_p1 = or_ln24_23_fu_1882_p3;
assign zext_ln24_55_fu_1919_p1 = lshr_ln24_25_fu_1909_p4;
assign zext_ln24_56_fu_1934_p1 = or_ln24_24_fu_1924_p5;
assign zext_ln24_57_fu_1964_p1 = lshr_ln24_26_fu_1954_p4;
assign zext_ln24_58_fu_1976_p1 = or_ln24_25_fu_1969_p3;
assign zext_ln24_59_fu_2006_p1 = lshr_ln24_27_fu_1996_p4;
assign zext_ln24_5_fu_731_p1 = or_ln3_fu_723_p3;
assign zext_ln24_60_fu_2018_p1 = or_ln24_26_fu_2011_p3;
assign zext_ln24_6_fu_761_p1 = lshr_ln24_3_fu_751_p4;
assign zext_ln24_7_fu_774_p1 = or_ln24_1_fu_766_p3;
assign zext_ln24_8_fu_804_p1 = lshr_ln24_4_fu_794_p4;
assign zext_ln24_9_fu_826_p1 = or_ln24_2_fu_818_p3;
assign zext_ln24_fu_566_p1 = tmp_fu_556_p4;
always @ (posedge ap_clk) begin
    tmp_reg_2055[6:5] <= 2'b00;
    add_ln24_32_reg_2065[0] <= 1'b1;
end
endmodule 
