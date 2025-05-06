
module main_graph_main_graph_Pipeline_VITIS_LOOP_449_30_VITIS_LOOP_450_31_VITIS_LOOP_451_32 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_Addr_A,v3_EN_A,v3_WEN_A,v3_Din_A,v3_Dout_A,v3_Addr_B,v3_EN_B,v3_WEN_B,v3_Din_B,v3_Dout_B,v94_address1,v94_ce1,v94_we1,v94_d1,v95_address0,v95_ce0,v95_q0,v95_1_address0,v95_1_ce0,v95_1_q0);  
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
output  [31:0] v3_Addr_A;
output   v3_EN_A;
output  [0:0] v3_WEN_A;
output  [7:0] v3_Din_A;
input  [7:0] v3_Dout_A;
output  [31:0] v3_Addr_B;
output   v3_EN_B;
output  [0:0] v3_WEN_B;
output  [7:0] v3_Din_B;
input  [7:0] v3_Dout_B;
output  [15:0] v94_address1;
output   v94_ce1;
output   v94_we1;
output  [7:0] v94_d1;
output  [13:0] v95_address0;
output   v95_ce0;
input  [6:0] v95_q0;
output  [13:0] v95_1_address0;
output   v95_1_ce0;
input  [6:0] v95_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_subdone;
reg   [0:0] icmp_ln449_reg_2131;
reg    ap_condition_exit_pp0_iter0_stage12;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg  signed [7:0] reg_726;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg  signed [7:0] reg_731;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [6:0] reg_735;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg  signed [7:0] reg_739;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage15_11001;
reg   [6:0] reg_744;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [6:0] reg_748;
reg   [6:0] reg_752;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [6:0] reg_756;
reg   [6:0] reg_760;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [6:0] reg_764;
reg  signed [7:0] reg_768;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [6:0] reg_773;
reg   [6:0] reg_777;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage0_11001;
reg  signed [7:0] reg_781;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg  signed [7:0] reg_786;
wire   [0:0] icmp_ln449_fu_818_p2;
wire   [5:0] select_ln449_fu_854_p3;
reg   [5:0] select_ln449_reg_2135;
wire   [0:0] and_ln449_fu_874_p2;
reg   [0:0] and_ln449_reg_2141;
wire   [5:0] trunc_ln450_fu_888_p1;
reg   [5:0] trunc_ln450_reg_2146;
reg   [5:0] trunc_ln450_reg_2146_pp0_iter1_reg;
wire   [5:0] v158_mid2_fu_898_p3;
reg   [5:0] v158_mid2_reg_2180;
wire   [5:0] select_ln450_fu_977_p3;
reg   [5:0] select_ln450_reg_2198;
wire   [10:0] tmp_51_fu_1007_p3;
reg   [10:0] tmp_51_reg_2216;
wire  signed [12:0] tmp_53_cast_fu_1029_p4;
reg  signed [12:0] tmp_53_cast_reg_2222;
wire   [13:0] zext_ln452_1_fu_1075_p1;
reg   [13:0] zext_ln452_1_reg_2227;
wire   [63:0] zext_ln454_40_fu_1087_p1;
reg   [63:0] zext_ln454_40_reg_2238;
wire   [11:0] add_ln454_8_fu_1092_p2;
reg   [11:0] add_ln454_8_reg_2248;
wire   [63:0] zext_ln454_52_fu_1104_p1;
reg   [63:0] zext_ln454_52_reg_2253;
wire   [11:0] add_ln454_21_fu_1109_p2;
reg   [11:0] add_ln454_21_reg_2258;
reg  signed [7:0] v161_29_reg_2278;
reg  signed [7:0] v161_31_reg_2283;
wire   [12:0] zext_ln454_35_fu_1161_p1;
reg   [12:0] zext_ln454_35_reg_2288;
wire   [12:0] zext_ln452_3_fu_1170_p1;
reg   [12:0] zext_ln452_3_reg_2293;
wire   [15:0] add_ln452_1_fu_1176_p2;
reg   [15:0] add_ln452_1_reg_2300;
reg   [15:0] add_ln452_1_reg_2300_pp0_iter1_reg;
wire  signed [12:0] add_ln454_12_fu_1182_p2;
reg  signed [12:0] add_ln454_12_reg_2305;
wire   [63:0] zext_ln454_53_fu_1192_p1;
reg   [63:0] zext_ln454_53_reg_2315;
reg   [6:0] v160_reg_2325;
reg  signed [7:0] v161_reg_2335;
wire  signed [12:0] sext_ln454_fu_1227_p1;
reg  signed [12:0] sext_ln454_reg_2340;
wire   [12:0] add_ln454_9_fu_1231_p2;
reg   [12:0] add_ln454_9_reg_2345;
wire   [12:0] add_ln454_10_fu_1236_p2;
reg   [12:0] add_ln454_10_reg_2350;
wire   [63:0] zext_ln454_54_fu_1250_p1;
reg   [63:0] zext_ln454_54_reg_2360;
reg  signed [7:0] v161_5_reg_2380;
wire   [63:0] zext_ln454_55_fu_1282_p1;
reg   [63:0] zext_ln454_55_reg_2390;
reg  signed [7:0] v161_9_reg_2405;
reg  signed [7:0] v161_11_reg_2410;
wire   [63:0] zext_ln454_41_fu_1299_p1;
reg   [63:0] zext_ln454_41_reg_2415;
wire   [63:0] zext_ln454_42_fu_1327_p1;
reg   [63:0] zext_ln454_42_reg_2445;
reg   [6:0] v160_30_reg_2455;
reg  signed [7:0] v161_17_reg_2470;
reg  signed [7:0] v161_19_reg_2475;
wire   [63:0] zext_ln454_43_fu_1355_p1;
reg   [63:0] zext_ln454_43_reg_2485;
reg   [6:0] v160_5_reg_2495;
reg  signed [7:0] v161_23_reg_2510;
wire   [63:0] zext_ln454_44_fu_1391_p1;
reg   [63:0] zext_ln454_44_reg_2520;
reg   [6:0] v160_4_reg_2530;
reg   [6:0] v160_7_reg_2535;
wire   [63:0] zext_ln454_45_fu_1424_p1;
reg   [63:0] zext_ln454_45_reg_2560;
reg   [6:0] v160_6_reg_2570;
wire   [7:0] mul_ln461_11_fu_1436_p2;
reg   [7:0] mul_ln461_11_reg_2580;
wire   [63:0] zext_ln454_46_fu_1474_p1;
reg   [63:0] zext_ln454_46_reg_2600;
wire   [7:0] mul_ln461_22_fu_1487_p2;
reg   [7:0] mul_ln461_22_reg_2615;
wire   [13:0] zext_ln454_32_fu_1517_p1;
reg   [13:0] zext_ln454_32_reg_2630;
wire   [63:0] zext_ln454_47_fu_1531_p1;
reg   [63:0] zext_ln454_47_reg_2641;
wire   [7:0] mul_ln461_25_fu_1544_p2;
wire   [7:0] grp_fu_1979_p3;
reg  signed [7:0] add_ln461_23_reg_2661;
reg  signed [7:0] v161_4_reg_2676;
reg  signed [7:0] v161_6_reg_2681;
wire   [63:0] zext_ln454_48_fu_1592_p1;
reg   [63:0] zext_ln454_48_reg_2691;
wire   [7:0] mul_ln461_29_fu_1604_p2;
reg   [7:0] mul_ln461_29_reg_2706;
wire   [7:0] grp_fu_1986_p3;
reg  signed [7:0] add_ln461_22_reg_2711;
reg  signed [7:0] v161_10_reg_2726;
wire   [63:0] zext_ln454_49_fu_1658_p1;
reg   [63:0] zext_ln454_49_reg_2736;
wire   [13:0] add_ln454_17_fu_1663_p2;
reg   [13:0] add_ln454_17_reg_2741;
wire   [13:0] add_ln454_18_fu_1668_p2;
reg   [13:0] add_ln454_18_reg_2746;
reg   [6:0] v160_14_reg_2761;
wire   [7:0] mul_ln461_6_fu_1681_p2;
reg   [7:0] mul_ln461_6_reg_2766;
wire   [7:0] grp_fu_1994_p3;
reg  signed [7:0] add_ln461_25_reg_2771;
reg  signed [7:0] v161_14_reg_2786;
wire   [63:0] zext_ln454_50_fu_1711_p1;
reg   [63:0] zext_ln454_50_reg_2796;
wire   [7:0] mul_ln461_7_fu_1723_p2;
wire   [7:0] add_ln461_28_fu_1737_p2;
reg   [7:0] add_ln461_28_reg_2816;
reg  signed [7:0] v161_18_reg_2831;
wire   [63:0] zext_ln454_51_fu_1767_p1;
reg   [63:0] zext_ln454_51_reg_2841;
wire   [7:0] mul_ln461_fu_1779_p2;
reg   [7:0] mul_ln461_reg_2856;
wire   [7:0] grp_fu_2007_p3;
reg  signed [7:0] add_ln461_1_reg_2861;
reg   [6:0] v160_23_reg_2881;
wire   [7:0] mul_ln461_1_fu_1792_p2;
reg   [7:0] mul_ln461_1_reg_2886;
wire   [7:0] grp_fu_2015_p3;
reg  signed [7:0] add_ln461_7_reg_2891;
wire   [7:0] mul_ln461_2_fu_1806_p2;
reg   [7:0] mul_ln461_2_reg_2901;
wire   [7:0] grp_fu_2021_p3;
reg  signed [7:0] add_ln461_15_reg_2906;
wire   [7:0] mul_ln461_8_fu_1820_p2;
wire   [7:0] grp_fu_2027_p3;
reg  signed [7:0] add_ln461_18_reg_2921;
wire   [7:0] mul_ln461_10_fu_1845_p2;
wire   [7:0] grp_fu_2034_p3;
reg  signed [7:0] add_ln461_reg_2941;
wire   [7:0] mul_ln461_15_fu_1858_p2;
wire   [7:0] grp_fu_2041_p3;
reg  signed [7:0] add_ln461_10_reg_2956;
wire   [7:0] mul_ln461_16_fu_1882_p2;
wire   [7:0] grp_fu_2049_p3;
reg  signed [7:0] add_ln461_8_reg_2976;
wire   [7:0] mul_ln461_20_fu_1894_p2;
wire   [7:0] grp_fu_2056_p3;
reg  signed [7:0] add_ln461_3_reg_2991;
wire   [7:0] mul_ln461_21_fu_1906_p2;
wire   [7:0] add_ln461_6_fu_1919_p2;
reg   [7:0] add_ln461_6_reg_3006;
wire   [7:0] mul_ln461_24_fu_1928_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_17_fu_1933_p2;
reg   [7:0] add_ln461_17_reg_3016;
wire   [7:0] add_ln461_13_fu_1945_p2;
reg   [7:0] add_ln461_13_reg_3021;
wire   [7:0] add_ln461_29_fu_1960_p2;
reg   [7:0] add_ln461_29_reg_3026;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_42_cast_fu_914_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_44_cast_fu_927_p1;
wire   [63:0] tmp_46_cast_fu_990_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_48_cast_fu_1002_p1;
wire   [63:0] tmp_17_cast_fu_1127_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] tmp_20_cast_fu_1139_p1;
wire   [63:0] tmp_22_cast_fu_1204_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] tmp_26_cast_fu_1262_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] tmp_28_cast_fu_1274_p1;
wire   [63:0] tmp_30_cast_fu_1294_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] tmp_34_cast_fu_1310_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] tmp_36_cast_fu_1322_p1;
wire   [63:0] tmp_38_cast_fu_1338_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] tmp_40_cast_fu_1350_p1;
wire   [63:0] tmp_41_cast_fu_1366_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] tmp_43_cast_fu_1378_p1;
wire   [63:0] tmp_45_cast_fu_1407_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] tmp_47_cast_fu_1419_p1;
wire   [63:0] tmp_18_cast_fu_1449_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] tmp_19_cast_fu_1461_p1;
wire   [63:0] tmp_21_cast_fu_1500_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] tmp_23_cast_fu_1512_p1;
wire   [63:0] tmp_25_cast_fu_1557_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] tmp_27_cast_fu_1569_p1;
wire   [63:0] tmp_29_cast_fu_1617_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] tmp_31_cast_fu_1629_p1;
wire   [63:0] tmp_33_cast_fu_1694_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] tmp_35_cast_fu_1706_p1;
wire   [63:0] tmp_37_cast_fu_1750_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_39_cast_fu_1762_p1;
wire   [63:0] tmp_24_cast_fu_1833_p1;
wire   [63:0] tmp_32_cast_fu_1870_p1;
wire   [63:0] zext_ln452_5_fu_1965_p1;
reg   [5:0] v158_fu_158;
wire   [5:0] add_ln451_fu_932_p2;
wire    ap_loop_init;
reg   [5:0] v157_fu_162;
reg   [11:0] indvar_flatten123_fu_166;
wire   [11:0] select_ln450_1_fu_944_p3;
reg   [6:0] v156_fu_170;
wire   [6:0] select_ln449_1_fu_880_p3;
reg   [16:0] indvar_flatten136_fu_174;
wire   [16:0] add_ln449_1_fu_824_p2;
reg    v3_EN_B_local;
reg   [31:0] v3_Addr_B_orig;
reg    v3_EN_A_local;
reg   [31:0] v3_Addr_A_orig;
reg    v95_ce0_local;
reg   [13:0] v95_address0_local;
reg    v95_1_ce0_local;
reg   [13:0] v95_1_address0_local;
reg    v94_we1_local;
wire   [7:0] v168_fu_1973_p2;
reg    v94_ce1_local;
wire   [0:0] icmp_ln450_fu_848_p2;
wire   [0:0] icmp_ln451_fu_868_p2;
wire   [0:0] xor_ln449_fu_862_p2;
wire   [6:0] add_ln449_fu_842_p2;
wire   [0:0] empty_fu_892_p2;
wire   [10:0] tmp_42_fu_906_p3;
wire   [10:0] tmp_44_fu_919_p3;
wire   [11:0] add_ln450_1_fu_938_p2;
wire   [5:0] add_ln450_fu_972_p2;
wire   [10:0] tmp_46_fu_983_p3;
wire   [10:0] tmp_48_fu_995_p3;
wire   [11:0] zext_ln454_36_fu_1015_p1;
wire   [6:0] zext_ln454_33_fu_1025_p1;
wire   [0:0] bit_sel_fu_1043_p3;
wire   [0:0] xor_ln454_fu_1051_p2;
wire   [4:0] trunc_ln454_fu_1057_p1;
wire   [10:0] add_ln454_7_fu_1061_p4;
wire   [11:0] zext_ln452_2_fu_1078_p1;
wire   [11:0] add_ln454_6_fu_1081_p2;
wire   [11:0] add_ln454_fu_1019_p2;
wire  signed [13:0] sext_ln454_1_fu_1039_p1;
wire   [13:0] add_ln454_19_fu_1098_p2;
wire  signed [11:0] sext_ln452_fu_1071_p1;
wire   [10:0] tmp_17_fu_1120_p3;
wire   [10:0] tmp_20_fu_1132_p3;
wire   [10:0] zext_ln452_fu_1144_p1;
wire   [10:0] add_ln452_fu_1147_p2;
wire   [15:0] tmp_fu_1153_p3;
wire   [15:0] zext_ln452_4_fu_1173_p1;
wire   [12:0] add_ln454_2_fu_1164_p2;
wire  signed [13:0] sext_ln454_2_fu_1188_p1;
wire   [10:0] tmp_22_fu_1197_p3;
wire  signed [11:0] tmp_52_cast_fu_1209_p4;
wire   [12:0] zext_ln454_37_fu_1218_p1;
wire   [12:0] add_ln454_1_fu_1222_p2;
wire   [12:0] add_ln454_20_fu_1241_p2;
wire  signed [13:0] sext_ln454_3_fu_1246_p1;
wire   [10:0] tmp_26_fu_1255_p3;
wire   [10:0] tmp_28_fu_1267_p3;
wire  signed [13:0] sext_ln454_4_fu_1279_p1;
wire   [10:0] tmp_30_fu_1287_p3;
wire   [10:0] tmp_34_fu_1303_p3;
wire   [10:0] tmp_36_fu_1315_p3;
wire   [10:0] tmp_38_fu_1331_p3;
wire   [10:0] tmp_40_fu_1343_p3;
wire   [10:0] tmp_41_fu_1359_p3;
wire   [10:0] tmp_43_fu_1371_p3;
wire   [13:0] zext_ln454_38_fu_1383_p1;
wire   [13:0] add_ln454_11_fu_1386_p2;
wire   [10:0] tmp_45_fu_1400_p3;
wire   [10:0] tmp_47_fu_1412_p3;
wire   [6:0] mul_ln461_11_fu_1436_p0;
wire   [10:0] tmp_18_fu_1442_p3;
wire   [10:0] tmp_19_fu_1454_p3;
wire   [13:0] zext_ln454_39_fu_1466_p1;
wire   [13:0] add_ln454_13_fu_1469_p2;
wire   [6:0] mul_ln461_22_fu_1487_p0;
wire   [10:0] tmp_21_fu_1493_p3;
wire   [10:0] tmp_23_fu_1505_p3;
wire   [13:0] add_ln454_3_fu_1520_p2;
wire   [13:0] add_ln454_14_fu_1526_p2;
wire   [6:0] mul_ln461_25_fu_1544_p0;
wire   [10:0] tmp_25_fu_1550_p3;
wire   [10:0] tmp_27_fu_1562_p3;
wire   [7:0] zext_ln454_34_fu_1574_p1;
wire   [13:0] tmp_55_fu_1577_p4;
wire   [13:0] add_ln454_15_fu_1587_p2;
wire   [6:0] mul_ln461_29_fu_1604_p0;
wire   [10:0] tmp_29_fu_1610_p3;
wire   [10:0] tmp_31_fu_1622_p3;
wire   [13:0] add_ln454_4_fu_1634_p2;
wire   [13:0] add_ln454_16_fu_1653_p2;
wire   [13:0] tmp_56_fu_1639_p4;
wire   [13:0] add_ln454_5_fu_1648_p2;
wire   [6:0] mul_ln461_6_fu_1681_p0;
wire   [10:0] tmp_33_fu_1687_p3;
wire   [10:0] tmp_35_fu_1699_p3;
wire   [6:0] mul_ln461_7_fu_1723_p0;
wire  signed [7:0] add_ln461_27_fu_1733_p0;
wire   [7:0] grp_fu_2000_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_27_fu_1733_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_24_fu_1729_p2;
wire   [10:0] tmp_37_fu_1743_p3;
wire   [10:0] tmp_39_fu_1755_p3;
wire   [6:0] mul_ln461_fu_1779_p0;
wire   [6:0] mul_ln461_1_fu_1792_p0;
wire   [6:0] mul_ln461_2_fu_1806_p0;
wire   [6:0] mul_ln461_8_fu_1820_p0;
wire   [10:0] tmp_24_fu_1826_p3;
wire   [6:0] mul_ln461_10_fu_1845_p0;
wire   [6:0] mul_ln461_15_fu_1858_p0;
wire   [10:0] tmp_32_fu_1863_p3;
wire   [6:0] mul_ln461_16_fu_1882_p0;
wire   [6:0] mul_ln461_20_fu_1894_p0;
wire   [6:0] mul_ln461_21_fu_1906_p0;
wire  signed [7:0] add_ln461_5_fu_1915_p0;
wire   [7:0] grp_fu_2063_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_5_fu_1915_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_2_fu_1911_p2;
wire   [6:0] mul_ln461_24_fu_1928_p0;
wire  signed [7:0] add_ln461_17_fu_1933_p0;
wire   [7:0] grp_fu_2072_p3;
wire  signed [7:0] add_ln461_12_fu_1941_p0;
wire   [7:0] grp_fu_2080_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_12_fu_1941_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_9_fu_1937_p2;
wire  signed [7:0] add_ln461_20_fu_1951_p0;
wire   [7:0] grp_fu_2089_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln461_20_fu_1951_p2;
wire   [7:0] add_ln461_21_fu_1955_p2;
wire   [7:0] add_ln461_14_fu_1969_p2;
wire   [6:0] grp_fu_1979_p1;
wire   [6:0] grp_fu_1986_p1;
wire   [6:0] grp_fu_1994_p1;
wire   [6:0] grp_fu_2000_p1;
wire   [6:0] grp_fu_2007_p1;
wire   [6:0] grp_fu_2015_p1;
wire   [6:0] grp_fu_2021_p1;
wire   [6:0] grp_fu_2027_p1;
wire   [6:0] grp_fu_2034_p1;
wire   [6:0] grp_fu_2041_p1;
wire   [6:0] grp_fu_2049_p1;
wire   [6:0] grp_fu_2056_p1;
wire   [6:0] grp_fu_2063_p1;
wire   [6:0] grp_fu_2072_p1;
wire   [6:0] grp_fu_2080_p1;
wire   [6:0] grp_fu_2089_p1;
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
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_1979_p10;
wire   [7:0] grp_fu_1986_p10;
wire   [7:0] grp_fu_1994_p10;
wire   [7:0] grp_fu_2000_p10;
wire   [7:0] grp_fu_2007_p10;
wire   [7:0] grp_fu_2015_p10;
wire   [7:0] grp_fu_2021_p10;
wire   [7:0] grp_fu_2027_p10;
wire   [7:0] grp_fu_2034_p10;
wire   [7:0] grp_fu_2041_p10;
wire   [7:0] grp_fu_2049_p10;
wire   [7:0] grp_fu_2056_p10;
wire   [7:0] grp_fu_2063_p10;
wire   [7:0] grp_fu_2072_p10;
wire   [7:0] grp_fu_2080_p10;
wire   [7:0] grp_fu_2089_p10;
wire   [7:0] mul_ln461_10_fu_1845_p00;
wire   [7:0] mul_ln461_11_fu_1436_p00;
wire   [7:0] mul_ln461_15_fu_1858_p00;
wire   [7:0] mul_ln461_16_fu_1882_p00;
wire   [7:0] mul_ln461_1_fu_1792_p00;
wire   [7:0] mul_ln461_20_fu_1894_p00;
wire   [7:0] mul_ln461_21_fu_1906_p00;
wire   [7:0] mul_ln461_22_fu_1487_p00;
wire   [7:0] mul_ln461_24_fu_1928_p00;
wire   [7:0] mul_ln461_25_fu_1544_p00;
wire   [7:0] mul_ln461_29_fu_1604_p00;
wire   [7:0] mul_ln461_2_fu_1806_p00;
wire   [7:0] mul_ln461_6_fu_1681_p00;
wire   [7:0] mul_ln461_7_fu_1723_p00;
wire   [7:0] mul_ln461_8_fu_1820_p00;
wire   [7:0] mul_ln461_fu_1779_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v158_fu_158 = 6'd0;
#0 v157_fu_162 = 6'd0;
#0 indvar_flatten123_fu_166 = 12'd0;
#0 v156_fu_170 = 7'd0;
#0 indvar_flatten136_fu_174 = 17'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U105(.din0(mul_ln461_11_fu_1436_p0),.din1(v3_Dout_A),.dout(mul_ln461_11_fu_1436_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U106(.din0(mul_ln461_22_fu_1487_p0),.din1(v3_Dout_B),.dout(mul_ln461_22_fu_1487_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U107(.din0(mul_ln461_25_fu_1544_p0),.din1(reg_786),.dout(mul_ln461_25_fu_1544_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U108(.din0(mul_ln461_29_fu_1604_p0),.din1(reg_731),.dout(mul_ln461_29_fu_1604_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U109(.din0(mul_ln461_6_fu_1681_p0),.din1(v3_Dout_B),.dout(mul_ln461_6_fu_1681_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U110(.din0(mul_ln461_7_fu_1723_p0),.din1(reg_726),.dout(mul_ln461_7_fu_1723_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U111(.din0(mul_ln461_fu_1779_p0),.din1(v3_Dout_B),.dout(mul_ln461_fu_1779_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U112(.din0(mul_ln461_1_fu_1792_p0),.din1(v3_Dout_B),.dout(mul_ln461_1_fu_1792_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U113(.din0(mul_ln461_2_fu_1806_p0),.din1(reg_726),.dout(mul_ln461_2_fu_1806_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U114(.din0(mul_ln461_8_fu_1820_p0),.din1(reg_786),.dout(mul_ln461_8_fu_1820_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U115(.din0(mul_ln461_10_fu_1845_p0),.din1(reg_739),.dout(mul_ln461_10_fu_1845_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U116(.din0(mul_ln461_15_fu_1858_p0),.din1(v161_10_reg_2726),.dout(mul_ln461_15_fu_1858_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U117(.din0(mul_ln461_16_fu_1882_p0),.din1(v161_4_reg_2676),.dout(mul_ln461_16_fu_1882_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U118(.din0(mul_ln461_20_fu_1894_p0),.din1(v161_6_reg_2681),.dout(mul_ln461_20_fu_1894_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U119(.din0(mul_ln461_21_fu_1906_p0),.din1(v161_18_reg_2831),.dout(mul_ln461_21_fu_1906_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U120(.din0(mul_ln461_24_fu_1928_p0),.din1(v161_14_reg_2786),.dout(mul_ln461_24_fu_1928_p2));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(reg_731),.din1(grp_fu_1979_p1),.din2(mul_ln461_11_reg_2580),.ce(1'b1),.dout(grp_fu_1979_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(reg_726),.din1(grp_fu_1986_p1),.din2(mul_ln461_25_fu_1544_p2),.ce(1'b1),.dout(grp_fu_1986_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(v161_29_reg_2278),.din1(grp_fu_1994_p1),.din2(mul_ln461_22_reg_2615),.ce(1'b1),.dout(grp_fu_1994_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(v161_31_reg_2283),.din1(grp_fu_2000_p1),.din2(mul_ln461_29_reg_2706),.ce(1'b1),.dout(grp_fu_2000_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(reg_739),.din1(grp_fu_2007_p1),.din2(mul_ln461_7_fu_1723_p2),.ce(1'b1),.dout(grp_fu_2007_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(v161_9_reg_2405),.din1(grp_fu_2015_p1),.din2(mul_ln461_6_reg_2766),.ce(1'b1),.dout(grp_fu_2015_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(v161_17_reg_2470),.din1(grp_fu_2021_p1),.din2(mul_ln461_reg_2856),.ce(1'b1),.dout(grp_fu_2021_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(reg_781),.din1(grp_fu_2027_p1),.din2(mul_ln461_1_reg_2886),.ce(1'b1),.dout(grp_fu_2027_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(v161_reg_2335),.din1(grp_fu_2034_p1),.din2(mul_ln461_8_fu_1820_p2),.ce(1'b1),.dout(grp_fu_2034_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(reg_768),.din1(grp_fu_2041_p1),.din2(mul_ln461_10_fu_1845_p2),.ce(1'b1),.dout(grp_fu_2041_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(v161_11_reg_2410),.din1(grp_fu_2049_p1),.din2(mul_ln461_15_fu_1858_p2),.ce(1'b1),.dout(grp_fu_2049_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(v161_5_reg_2380),.din1(grp_fu_2056_p1),.din2(mul_ln461_16_fu_1882_p2),.ce(1'b1),.dout(grp_fu_2056_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(v3_Dout_A),.din1(grp_fu_2063_p1),.din2(mul_ln461_20_fu_1894_p2),.ce(1'b1),.dout(grp_fu_2063_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(v161_19_reg_2475),.din1(grp_fu_2072_p1),.din2(mul_ln461_21_fu_1906_p2),.ce(1'b1),.dout(grp_fu_2072_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(v3_Dout_A),.din1(grp_fu_2080_p1),.din2(mul_ln461_24_fu_1928_p2),.ce(1'b1),.dout(grp_fu_2080_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(v161_23_reg_2510),.din1(grp_fu_2089_p1),.din2(mul_ln461_2_reg_2901),.ce(1'b1),.dout(grp_fu_2089_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage12),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage12)) begin
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
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten123_fu_166 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln449_fu_818_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten123_fu_166 <= select_ln450_1_fu_944_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten136_fu_174 <= 17'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln449_fu_818_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten136_fu_174 <= add_ln449_1_fu_824_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_726 <= v3_Dout_A;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_726 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            reg_739 <= v3_Dout_B;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_739 <= v3_Dout_A;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_768 <= v3_Dout_A;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        reg_768 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        reg_781 <= v3_Dout_A;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        reg_781 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v156_fu_170 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln449_fu_818_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_fu_170 <= select_ln449_1_fu_880_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v157_fu_162 <= 6'd0;
    end else if (((icmp_ln449_reg_2131 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v157_fu_162 <= select_ln450_fu_977_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v158_fu_158 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln449_fu_818_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v158_fu_158 <= add_ln451_fu_932_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln452_1_reg_2300 <= add_ln452_1_fu_1176_p2;
        add_ln452_1_reg_2300_pp0_iter1_reg <= add_ln452_1_reg_2300;
        add_ln454_12_reg_2305 <= add_ln454_12_fu_1182_p2;
        zext_ln452_3_reg_2293[5 : 0] <= zext_ln452_3_fu_1170_p1[5 : 0];
        zext_ln454_35_reg_2288[10 : 5] <= zext_ln454_35_fu_1161_p1[10 : 5];
        zext_ln454_53_reg_2315[13 : 0] <= zext_ln454_53_fu_1192_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln454_10_reg_2350 <= add_ln454_10_fu_1236_p2;
        add_ln454_9_reg_2345 <= add_ln454_9_fu_1231_p2;
        sext_ln454_reg_2340[10 : 5] <= sext_ln454_fu_1227_p1[10 : 5];
        zext_ln454_54_reg_2360[13 : 0] <= zext_ln454_54_fu_1250_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln454_17_reg_2741 <= add_ln454_17_fu_1663_p2;
        add_ln454_18_reg_2746 <= add_ln454_18_fu_1668_p2;
        mul_ln461_6_reg_2766 <= mul_ln461_6_fu_1681_p2;
        zext_ln454_49_reg_2736[13 : 0] <= zext_ln454_49_fu_1658_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln454_21_reg_2258 <= add_ln454_21_fu_1109_p2;
        add_ln454_8_reg_2248 <= add_ln454_8_fu_1092_p2;
        mul_ln461_2_reg_2901 <= mul_ln461_2_fu_1806_p2;
        select_ln450_reg_2198 <= select_ln450_fu_977_p3;
        tmp_51_reg_2216[10 : 5] <= tmp_51_fu_1007_p3[10 : 5];
        tmp_53_cast_reg_2222[10 : 5] <= tmp_53_cast_fu_1029_p4[10 : 5];
        zext_ln452_1_reg_2227[5 : 0] <= zext_ln452_1_fu_1075_p1[5 : 0];
        zext_ln454_40_reg_2238[11 : 0] <= zext_ln454_40_fu_1087_p1[11 : 0];
        zext_ln454_52_reg_2253[13 : 0] <= zext_ln454_52_fu_1104_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln461_10_reg_2956 <= grp_fu_2041_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln461_13_reg_3021 <= add_ln461_13_fu_1945_p2;
        mul_ln461_11_reg_2580 <= mul_ln461_11_fu_1436_p2;
        zext_ln454_45_reg_2560[12 : 0] <= zext_ln454_45_fu_1424_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln461_15_reg_2906 <= grp_fu_2021_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln461_17_reg_3016 <= add_ln461_17_fu_1933_p2;
        zext_ln454_44_reg_2520[13 : 0] <= zext_ln454_44_fu_1391_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln461_18_reg_2921 <= grp_fu_2027_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln461_1_reg_2861 <= grp_fu_2007_p3;
        v161_18_reg_2831 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln461_22_reg_2711 <= grp_fu_1986_p3;
        v161_4_reg_2676 <= v3_Dout_B;
        v161_6_reg_2681 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln461_23_reg_2661 <= grp_fu_1979_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln461_25_reg_2771 <= grp_fu_1994_p3;
        v160_14_reg_2761 <= v95_q0;
        v161_10_reg_2726 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add_ln461_28_reg_2816 <= add_ln461_28_fu_1737_p2;
        zext_ln454_50_reg_2796[13 : 0] <= zext_ln454_50_fu_1711_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln461_29_reg_3026 <= add_ln461_29_fu_1960_p2;
        mul_ln461_22_reg_2615 <= mul_ln461_22_fu_1487_p2;
        zext_ln454_46_reg_2600[13 : 0] <= zext_ln454_46_fu_1474_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln461_3_reg_2991 <= grp_fu_2056_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln461_6_reg_3006 <= add_ln461_6_fu_1919_p2;
        zext_ln454_43_reg_2485[12 : 0] <= zext_ln454_43_fu_1355_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln461_7_reg_2891 <= grp_fu_2015_p3;
        v160_23_reg_2881 <= v95_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln461_8_reg_2976 <= grp_fu_2049_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln461_reg_2941 <= grp_fu_2034_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln449_reg_2141 <= and_ln449_fu_874_p2;
        icmp_ln449_reg_2131 <= icmp_ln449_fu_818_p2;
        mul_ln461_1_reg_2886 <= mul_ln461_1_fu_1792_p2;
        select_ln449_reg_2135 <= select_ln449_fu_854_p3;
        trunc_ln450_reg_2146 <= trunc_ln450_fu_888_p1;
        trunc_ln450_reg_2146_pp0_iter1_reg <= trunc_ln450_reg_2146;
        v158_mid2_reg_2180 <= v158_mid2_fu_898_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul_ln461_29_reg_2706 <= mul_ln461_29_fu_1604_p2;
        zext_ln454_48_reg_2691[13 : 0] <= zext_ln454_48_fu_1592_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln461_reg_2856 <= mul_ln461_fu_1779_p2;
        zext_ln454_51_reg_2841[13 : 0] <= zext_ln454_51_fu_1767_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_731 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_735 <= v95_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_744 <= v95_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_748 <= v95_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_752 <= v95_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_756 <= v95_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_760 <= v95_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_764 <= v95_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_773 <= v95_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_777 <= v95_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_786 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v160_30_reg_2455 <= v95_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v160_4_reg_2530 <= v95_q0;
        v160_7_reg_2535 <= v95_1_q0;
        v161_23_reg_2510 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v160_5_reg_2495 <= v95_1_q0;
        v161_17_reg_2470 <= v3_Dout_B;
        v161_19_reg_2475 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v160_6_reg_2570 <= v95_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v160_reg_2325 <= v95_q0;
        v161_29_reg_2278 <= v3_Dout_B;
        v161_31_reg_2283 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v161_11_reg_2410 <= v3_Dout_A;
        v161_9_reg_2405 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v161_14_reg_2786 <= v3_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v161_5_reg_2380 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v161_reg_2335 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        zext_ln454_32_reg_2630[10 : 5] <= zext_ln454_32_fu_1517_p1[10 : 5];
        zext_ln454_47_reg_2641[13 : 0] <= zext_ln454_47_fu_1531_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln454_41_reg_2415[11 : 0] <= zext_ln454_41_fu_1299_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln454_42_reg_2445[12 : 0] <= zext_ln454_42_fu_1327_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln454_55_reg_2390[13 : 0] <= zext_ln454_55_fu_1282_p1[13 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln449_reg_2131 == 1'd1) & (1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v3_Addr_A_orig = tmp_32_cast_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v3_Addr_A_orig = tmp_24_cast_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_Addr_A_orig = tmp_39_cast_fu_1762_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v3_Addr_A_orig = tmp_35_cast_fu_1706_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v3_Addr_A_orig = tmp_31_cast_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v3_Addr_A_orig = tmp_27_cast_fu_1569_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v3_Addr_A_orig = tmp_23_cast_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v3_Addr_A_orig = tmp_19_cast_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v3_Addr_A_orig = tmp_47_cast_fu_1419_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v3_Addr_A_orig = tmp_43_cast_fu_1378_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v3_Addr_A_orig = tmp_40_cast_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v3_Addr_A_orig = tmp_36_cast_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v3_Addr_A_orig = tmp_28_cast_fu_1274_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_Addr_A_orig = tmp_20_cast_fu_1139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_Addr_A_orig = tmp_48_cast_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_Addr_A_orig = tmp_44_cast_fu_927_p1;
    end else begin
        v3_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_Addr_B_orig = tmp_37_cast_fu_1750_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v3_Addr_B_orig = tmp_33_cast_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v3_Addr_B_orig = tmp_29_cast_fu_1617_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v3_Addr_B_orig = tmp_25_cast_fu_1557_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v3_Addr_B_orig = tmp_21_cast_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v3_Addr_B_orig = tmp_18_cast_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v3_Addr_B_orig = tmp_45_cast_fu_1407_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v3_Addr_B_orig = tmp_41_cast_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v3_Addr_B_orig = tmp_38_cast_fu_1338_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v3_Addr_B_orig = tmp_34_cast_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v3_Addr_B_orig = tmp_30_cast_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v3_Addr_B_orig = tmp_26_cast_fu_1262_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v3_Addr_B_orig = tmp_22_cast_fu_1204_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_Addr_B_orig = tmp_17_cast_fu_1127_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_Addr_B_orig = tmp_46_cast_fu_990_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_Addr_B_orig = tmp_42_cast_fu_914_p1;
    end else begin
        v3_Addr_B_orig = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage14_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v3_EN_A_local = 1'b1;
    end else begin
        v3_EN_A_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage14_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v3_EN_B_local = 1'b1;
    end else begin
        v3_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v94_ce1_local = 1'b1;
    end else begin
        v94_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v94_we1_local = 1'b1;
    end else begin
        v94_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v95_1_address0_local = zext_ln454_40_reg_2238;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v95_1_address0_local = zext_ln454_51_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v95_1_address0_local = zext_ln454_50_fu_1711_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v95_1_address0_local = zext_ln454_49_fu_1658_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v95_1_address0_local = zext_ln454_48_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v95_1_address0_local = zext_ln454_47_fu_1531_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v95_1_address0_local = zext_ln454_46_fu_1474_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v95_1_address0_local = zext_ln454_45_fu_1424_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v95_1_address0_local = zext_ln454_44_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v95_1_address0_local = zext_ln454_43_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v95_1_address0_local = zext_ln454_42_fu_1327_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v95_1_address0_local = zext_ln454_41_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v95_1_address0_local = zext_ln454_55_fu_1282_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v95_1_address0_local = zext_ln454_54_fu_1250_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v95_1_address0_local = zext_ln454_53_fu_1192_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v95_1_address0_local = zext_ln454_52_fu_1104_p1;
    end else begin
        v95_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage14_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v95_1_ce0_local = 1'b1;
    end else begin
        v95_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v95_address0_local = zext_ln454_51_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v95_address0_local = zext_ln454_50_reg_2796;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v95_address0_local = zext_ln454_49_reg_2736;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v95_address0_local = zext_ln454_48_reg_2691;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v95_address0_local = zext_ln454_47_reg_2641;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v95_address0_local = zext_ln454_46_reg_2600;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v95_address0_local = zext_ln454_45_reg_2560;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v95_address0_local = zext_ln454_44_reg_2520;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v95_address0_local = zext_ln454_43_reg_2485;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v95_address0_local = zext_ln454_42_reg_2445;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v95_address0_local = zext_ln454_41_reg_2415;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v95_address0_local = zext_ln454_55_reg_2390;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v95_address0_local = zext_ln454_54_reg_2360;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v95_address0_local = zext_ln454_53_reg_2315;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v95_address0_local = zext_ln454_52_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v95_address0_local = zext_ln454_40_fu_1087_p1;
    end else begin
        v95_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage14_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v95_ce0_local = 1'b1;
    end else begin
        v95_ce0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage12)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
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
assign add_ln449_1_fu_824_p2 = (indvar_flatten136_fu_174 + 17'd1);
assign add_ln449_fu_842_p2 = (v156_fu_170 + 7'd1);
assign add_ln450_1_fu_938_p2 = (indvar_flatten123_fu_166 + 12'd1);
assign add_ln450_fu_972_p2 = (select_ln449_reg_2135 + 6'd1);
assign add_ln451_fu_932_p2 = (v158_mid2_fu_898_p3 + 6'd1);
assign add_ln452_1_fu_1176_p2 = (tmp_fu_1153_p3 + zext_ln452_4_fu_1173_p1);
assign add_ln452_fu_1147_p2 = (tmp_17_fu_1120_p3 + zext_ln452_fu_1144_p1);
assign add_ln454_10_fu_1236_p2 = (add_ln454_1_fu_1222_p2 + zext_ln452_3_reg_2293);
assign add_ln454_11_fu_1386_p2 = (zext_ln454_38_fu_1383_p1 + zext_ln452_1_reg_2227);
assign add_ln454_12_fu_1182_p2 = (add_ln454_2_fu_1164_p2 + zext_ln452_3_fu_1170_p1);
assign add_ln454_13_fu_1469_p2 = (zext_ln454_39_fu_1466_p1 + zext_ln452_1_reg_2227);
assign add_ln454_14_fu_1526_p2 = (add_ln454_3_fu_1520_p2 + zext_ln452_1_reg_2227);
assign add_ln454_15_fu_1587_p2 = (tmp_55_fu_1577_p4 + zext_ln452_1_reg_2227);
assign add_ln454_16_fu_1653_p2 = (add_ln454_4_fu_1634_p2 + zext_ln452_1_reg_2227);
assign add_ln454_17_fu_1663_p2 = (tmp_56_fu_1639_p4 + zext_ln452_1_reg_2227);
assign add_ln454_18_fu_1668_p2 = (add_ln454_5_fu_1648_p2 + zext_ln452_1_reg_2227);
assign add_ln454_19_fu_1098_p2 = ($signed(sext_ln454_1_fu_1039_p1) + $signed(zext_ln452_1_fu_1075_p1));
assign add_ln454_1_fu_1222_p2 = (zext_ln454_35_reg_2288 + 13'd3072);
assign add_ln454_20_fu_1241_p2 = ($signed(sext_ln454_fu_1227_p1) + $signed(zext_ln452_3_reg_2293));
assign add_ln454_21_fu_1109_p2 = ($signed(sext_ln452_fu_1071_p1) + $signed(zext_ln452_2_fu_1078_p1));
assign add_ln454_2_fu_1164_p2 = ($signed(zext_ln454_35_fu_1161_p1) + $signed(13'd5120));
assign add_ln454_3_fu_1520_p2 = (zext_ln454_32_fu_1517_p1 + 14'd7168);
assign add_ln454_4_fu_1634_p2 = ($signed(zext_ln454_32_reg_2630) + $signed(14'd9216));
assign add_ln454_5_fu_1648_p2 = ($signed(zext_ln454_32_reg_2630) + $signed(14'd11264));
assign add_ln454_6_fu_1081_p2 = (zext_ln454_36_fu_1015_p1 + zext_ln452_2_fu_1078_p1);
assign add_ln454_7_fu_1061_p4 = {{{xor_ln454_fu_1051_p2}, {trunc_ln454_fu_1057_p1}}, {5'd0}};
assign add_ln454_8_fu_1092_p2 = (add_ln454_fu_1019_p2 + zext_ln452_2_fu_1078_p1);
assign add_ln454_9_fu_1231_p2 = (zext_ln454_37_fu_1218_p1 + zext_ln452_3_reg_2293);
assign add_ln454_fu_1019_p2 = (zext_ln454_36_fu_1015_p1 + 12'd1024);
assign add_ln461_12_fu_1941_p0 = grp_fu_2080_p3;
assign add_ln461_12_fu_1941_p2 = ($signed(add_ln461_12_fu_1941_p0) + $signed(add_ln461_10_reg_2956));
assign add_ln461_13_fu_1945_p2 = (add_ln461_12_fu_1941_p2 + add_ln461_9_fu_1937_p2);
assign add_ln461_14_fu_1969_p2 = (add_ln461_13_reg_3021 + add_ln461_6_reg_3006);
assign add_ln461_17_fu_1933_p0 = grp_fu_2072_p3;
assign add_ln461_17_fu_1933_p2 = ($signed(add_ln461_17_fu_1933_p0) + $signed(add_ln461_15_reg_2906));
assign add_ln461_20_fu_1951_p0 = grp_fu_2089_p3;
assign add_ln461_20_fu_1951_p2 = ($signed(add_ln461_20_fu_1951_p0) + $signed(add_ln461_18_reg_2921));
assign add_ln461_21_fu_1955_p2 = (add_ln461_20_fu_1951_p2 + add_ln461_17_reg_3016);
assign add_ln461_24_fu_1729_p2 = ($signed(add_ln461_23_reg_2661) + $signed(add_ln461_22_reg_2711));
assign add_ln461_27_fu_1733_p0 = grp_fu_2000_p3;
assign add_ln461_27_fu_1733_p2 = ($signed(add_ln461_27_fu_1733_p0) + $signed(add_ln461_25_reg_2771));
assign add_ln461_28_fu_1737_p2 = (add_ln461_27_fu_1733_p2 + add_ln461_24_fu_1729_p2);
assign add_ln461_29_fu_1960_p2 = (add_ln461_28_reg_2816 + add_ln461_21_fu_1955_p2);
assign add_ln461_2_fu_1911_p2 = ($signed(add_ln461_1_reg_2861) + $signed(add_ln461_reg_2941));
assign add_ln461_5_fu_1915_p0 = grp_fu_2063_p3;
assign add_ln461_5_fu_1915_p2 = ($signed(add_ln461_5_fu_1915_p0) + $signed(add_ln461_3_reg_2991));
assign add_ln461_6_fu_1919_p2 = (add_ln461_5_fu_1915_p2 + add_ln461_2_fu_1911_p2);
assign add_ln461_9_fu_1937_p2 = ($signed(add_ln461_8_reg_2976) + $signed(add_ln461_7_reg_2891));
assign and_ln449_fu_874_p2 = (xor_ln449_fu_862_p2 & icmp_ln451_fu_868_p2);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage12;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_1043_p3 = select_ln450_fu_977_p3[11'd5];
assign empty_fu_892_p2 = (icmp_ln450_fu_848_p2 | and_ln449_fu_874_p2);
assign grp_fu_1979_p1 = grp_fu_1979_p10;
assign grp_fu_1979_p10 = reg_748;
assign grp_fu_1986_p1 = grp_fu_1986_p10;
assign grp_fu_1986_p10 = reg_735;
assign grp_fu_1994_p1 = grp_fu_1994_p10;
assign grp_fu_1994_p10 = reg_756;
assign grp_fu_2000_p1 = grp_fu_2000_p10;
assign grp_fu_2000_p10 = reg_764;
assign grp_fu_2007_p1 = grp_fu_2007_p10;
assign grp_fu_2007_p10 = reg_773;
assign grp_fu_2015_p1 = grp_fu_2015_p10;
assign grp_fu_2015_p10 = reg_735;
assign grp_fu_2021_p1 = grp_fu_2021_p10;
assign grp_fu_2021_p10 = reg_735;
assign grp_fu_2027_p1 = grp_fu_2027_p10;
assign grp_fu_2027_p10 = v95_1_q0;
assign grp_fu_2034_p1 = grp_fu_2034_p10;
assign grp_fu_2034_p10 = v160_reg_2325;
assign grp_fu_2041_p1 = grp_fu_2041_p10;
assign grp_fu_2041_p10 = reg_756;
assign grp_fu_2049_p1 = grp_fu_2049_p10;
assign grp_fu_2049_p10 = reg_748;
assign grp_fu_2056_p1 = grp_fu_2056_p10;
assign grp_fu_2056_p10 = v160_5_reg_2495;
assign grp_fu_2063_p1 = grp_fu_2063_p10;
assign grp_fu_2063_p10 = v160_7_reg_2535;
assign grp_fu_2072_p1 = grp_fu_2072_p10;
assign grp_fu_2072_p10 = reg_764;
assign grp_fu_2080_p1 = grp_fu_2080_p10;
assign grp_fu_2080_p10 = reg_773;
assign grp_fu_2089_p1 = grp_fu_2089_p10;
assign grp_fu_2089_p10 = v160_23_reg_2881;
assign icmp_ln449_fu_818_p2 = ((indvar_flatten136_fu_174 == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln450_fu_848_p2 = ((indvar_flatten123_fu_166 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln451_fu_868_p2 = ((v158_fu_158 == 6'd32) ? 1'b1 : 1'b0);
assign mul_ln461_10_fu_1845_p0 = mul_ln461_10_fu_1845_p00;
assign mul_ln461_10_fu_1845_p00 = reg_744;
assign mul_ln461_11_fu_1436_p0 = mul_ln461_11_fu_1436_p00;
assign mul_ln461_11_fu_1436_p00 = reg_752;
assign mul_ln461_15_fu_1858_p0 = mul_ln461_15_fu_1858_p00;
assign mul_ln461_15_fu_1858_p00 = reg_760;
assign mul_ln461_16_fu_1882_p0 = mul_ln461_16_fu_1882_p00;
assign mul_ln461_16_fu_1882_p00 = v160_4_reg_2530;
assign mul_ln461_1_fu_1792_p0 = mul_ln461_1_fu_1792_p00;
assign mul_ln461_1_fu_1792_p00 = v95_q0;
assign mul_ln461_20_fu_1894_p0 = mul_ln461_20_fu_1894_p00;
assign mul_ln461_20_fu_1894_p00 = v160_6_reg_2570;
assign mul_ln461_21_fu_1906_p0 = mul_ln461_21_fu_1906_p00;
assign mul_ln461_21_fu_1906_p00 = reg_777;
assign mul_ln461_22_fu_1487_p0 = mul_ln461_22_fu_1487_p00;
assign mul_ln461_22_fu_1487_p00 = reg_760;
assign mul_ln461_24_fu_1928_p0 = mul_ln461_24_fu_1928_p00;
assign mul_ln461_24_fu_1928_p00 = v160_14_reg_2761;
assign mul_ln461_25_fu_1544_p0 = mul_ln461_25_fu_1544_p00;
assign mul_ln461_25_fu_1544_p00 = reg_744;
assign mul_ln461_29_fu_1604_p0 = mul_ln461_29_fu_1604_p00;
assign mul_ln461_29_fu_1604_p00 = v160_30_reg_2455;
assign mul_ln461_2_fu_1806_p0 = mul_ln461_2_fu_1806_p00;
assign mul_ln461_2_fu_1806_p00 = v95_q0;
assign mul_ln461_6_fu_1681_p0 = mul_ln461_6_fu_1681_p00;
assign mul_ln461_6_fu_1681_p00 = reg_752;
assign mul_ln461_7_fu_1723_p0 = mul_ln461_7_fu_1723_p00;
assign mul_ln461_7_fu_1723_p00 = reg_777;
assign mul_ln461_8_fu_1820_p0 = mul_ln461_8_fu_1820_p00;
assign mul_ln461_8_fu_1820_p00 = reg_735;
assign mul_ln461_fu_1779_p0 = mul_ln461_fu_1779_p00;
assign mul_ln461_fu_1779_p00 = reg_752;
assign select_ln449_1_fu_880_p3 = ((icmp_ln450_fu_848_p2[0:0] == 1'b1) ? add_ln449_fu_842_p2 : v156_fu_170);
assign select_ln449_fu_854_p3 = ((icmp_ln450_fu_848_p2[0:0] == 1'b1) ? 6'd0 : v157_fu_162);
assign select_ln450_1_fu_944_p3 = ((icmp_ln450_fu_848_p2[0:0] == 1'b1) ? 12'd1 : add_ln450_1_fu_938_p2);
assign select_ln450_fu_977_p3 = ((and_ln449_reg_2141[0:0] == 1'b1) ? add_ln450_fu_972_p2 : select_ln449_reg_2135);
assign sext_ln452_fu_1071_p1 = $signed(add_ln454_7_fu_1061_p4);
assign sext_ln454_1_fu_1039_p1 = tmp_53_cast_fu_1029_p4;
assign sext_ln454_2_fu_1188_p1 = add_ln454_12_fu_1182_p2;
assign sext_ln454_3_fu_1246_p1 = $signed(add_ln454_20_fu_1241_p2);
assign sext_ln454_4_fu_1279_p1 = $signed(add_ln454_21_reg_2258);
assign sext_ln454_fu_1227_p1 = tmp_52_cast_fu_1209_p4;
assign tmp_17_cast_fu_1127_p1 = tmp_17_fu_1120_p3;
assign tmp_17_fu_1120_p3 = {{trunc_ln450_reg_2146}, {5'd0}};
assign tmp_18_cast_fu_1449_p1 = tmp_18_fu_1442_p3;
assign tmp_18_fu_1442_p3 = {{trunc_ln450_reg_2146}, {5'd1}};
assign tmp_19_cast_fu_1461_p1 = tmp_19_fu_1454_p3;
assign tmp_19_fu_1454_p3 = {{trunc_ln450_reg_2146}, {5'd2}};
assign tmp_20_cast_fu_1139_p1 = tmp_20_fu_1132_p3;
assign tmp_20_fu_1132_p3 = {{trunc_ln450_reg_2146}, {5'd3}};
assign tmp_21_cast_fu_1500_p1 = tmp_21_fu_1493_p3;
assign tmp_21_fu_1493_p3 = {{trunc_ln450_reg_2146}, {5'd4}};
assign tmp_22_cast_fu_1204_p1 = tmp_22_fu_1197_p3;
assign tmp_22_fu_1197_p3 = {{trunc_ln450_reg_2146}, {5'd5}};
assign tmp_23_cast_fu_1512_p1 = tmp_23_fu_1505_p3;
assign tmp_23_fu_1505_p3 = {{trunc_ln450_reg_2146}, {5'd6}};
assign tmp_24_cast_fu_1833_p1 = tmp_24_fu_1826_p3;
assign tmp_24_fu_1826_p3 = {{trunc_ln450_reg_2146_pp0_iter1_reg}, {5'd7}};
assign tmp_25_cast_fu_1557_p1 = tmp_25_fu_1550_p3;
assign tmp_25_fu_1550_p3 = {{trunc_ln450_reg_2146}, {5'd8}};
assign tmp_26_cast_fu_1262_p1 = tmp_26_fu_1255_p3;
assign tmp_26_fu_1255_p3 = {{trunc_ln450_reg_2146}, {5'd9}};
assign tmp_27_cast_fu_1569_p1 = tmp_27_fu_1562_p3;
assign tmp_27_fu_1562_p3 = {{trunc_ln450_reg_2146}, {5'd10}};
assign tmp_28_cast_fu_1274_p1 = tmp_28_fu_1267_p3;
assign tmp_28_fu_1267_p3 = {{trunc_ln450_reg_2146}, {5'd11}};
assign tmp_29_cast_fu_1617_p1 = tmp_29_fu_1610_p3;
assign tmp_29_fu_1610_p3 = {{trunc_ln450_reg_2146}, {5'd12}};
assign tmp_30_cast_fu_1294_p1 = tmp_30_fu_1287_p3;
assign tmp_30_fu_1287_p3 = {{trunc_ln450_reg_2146}, {5'd13}};
assign tmp_31_cast_fu_1629_p1 = tmp_31_fu_1622_p3;
assign tmp_31_fu_1622_p3 = {{trunc_ln450_reg_2146}, {5'd14}};
assign tmp_32_cast_fu_1870_p1 = tmp_32_fu_1863_p3;
assign tmp_32_fu_1863_p3 = {{trunc_ln450_reg_2146_pp0_iter1_reg}, {5'd15}};
assign tmp_33_cast_fu_1694_p1 = tmp_33_fu_1687_p3;
assign tmp_33_fu_1687_p3 = {{trunc_ln450_reg_2146}, {5'd16}};
assign tmp_34_cast_fu_1310_p1 = tmp_34_fu_1303_p3;
assign tmp_34_fu_1303_p3 = {{trunc_ln450_reg_2146}, {5'd17}};
assign tmp_35_cast_fu_1706_p1 = tmp_35_fu_1699_p3;
assign tmp_35_fu_1699_p3 = {{trunc_ln450_reg_2146}, {5'd18}};
assign tmp_36_cast_fu_1322_p1 = tmp_36_fu_1315_p3;
assign tmp_36_fu_1315_p3 = {{trunc_ln450_reg_2146}, {5'd19}};
assign tmp_37_cast_fu_1750_p1 = tmp_37_fu_1743_p3;
assign tmp_37_fu_1743_p3 = {{trunc_ln450_reg_2146}, {5'd20}};
assign tmp_38_cast_fu_1338_p1 = tmp_38_fu_1331_p3;
assign tmp_38_fu_1331_p3 = {{trunc_ln450_reg_2146}, {5'd21}};
assign tmp_39_cast_fu_1762_p1 = tmp_39_fu_1755_p3;
assign tmp_39_fu_1755_p3 = {{trunc_ln450_reg_2146}, {5'd22}};
assign tmp_40_cast_fu_1350_p1 = tmp_40_fu_1343_p3;
assign tmp_40_fu_1343_p3 = {{trunc_ln450_reg_2146}, {5'd23}};
assign tmp_41_cast_fu_1366_p1 = tmp_41_fu_1359_p3;
assign tmp_41_fu_1359_p3 = {{trunc_ln450_reg_2146}, {5'd24}};
assign tmp_42_cast_fu_914_p1 = tmp_42_fu_906_p3;
assign tmp_42_fu_906_p3 = {{trunc_ln450_fu_888_p1}, {5'd25}};
assign tmp_43_cast_fu_1378_p1 = tmp_43_fu_1371_p3;
assign tmp_43_fu_1371_p3 = {{trunc_ln450_reg_2146}, {5'd26}};
assign tmp_44_cast_fu_927_p1 = tmp_44_fu_919_p3;
assign tmp_44_fu_919_p3 = {{trunc_ln450_fu_888_p1}, {5'd27}};
assign tmp_45_cast_fu_1407_p1 = tmp_45_fu_1400_p3;
assign tmp_45_fu_1400_p3 = {{trunc_ln450_reg_2146}, {5'd28}};
assign tmp_46_cast_fu_990_p1 = tmp_46_fu_983_p3;
assign tmp_46_fu_983_p3 = {{trunc_ln450_reg_2146}, {5'd29}};
assign tmp_47_cast_fu_1419_p1 = tmp_47_fu_1412_p3;
assign tmp_47_fu_1412_p3 = {{trunc_ln450_reg_2146}, {5'd30}};
assign tmp_48_cast_fu_1002_p1 = tmp_48_fu_995_p3;
assign tmp_48_fu_995_p3 = {{trunc_ln450_reg_2146}, {5'd31}};
assign tmp_51_fu_1007_p3 = {{select_ln450_fu_977_p3}, {5'd0}};
assign tmp_52_cast_fu_1209_p4 = {{{{1'd1}, {select_ln450_reg_2198}}}, {5'd0}};
assign tmp_53_cast_fu_1029_p4 = {{{{1'd1}, {zext_ln454_33_fu_1025_p1}}}, {5'd0}};
assign tmp_55_fu_1577_p4 = {{{{1'd1}, {zext_ln454_34_fu_1574_p1}}}, {5'd0}};
assign tmp_56_fu_1639_p4 = {{{{3'd5}, {select_ln450_reg_2198}}}, {5'd0}};
assign tmp_fu_1153_p3 = {{add_ln452_fu_1147_p2}, {5'd0}};
assign trunc_ln450_fu_888_p1 = select_ln449_1_fu_880_p3[5:0];
assign trunc_ln454_fu_1057_p1 = select_ln450_fu_977_p3[4:0];
assign v158_mid2_fu_898_p3 = ((empty_fu_892_p2[0:0] == 1'b1) ? 6'd0 : v158_fu_158);
assign v168_fu_1973_p2 = (add_ln461_29_reg_3026 + add_ln461_14_fu_1969_p2);
assign v3_Addr_A = v3_Addr_A_orig << 32'd0;
assign v3_Addr_B = v3_Addr_B_orig << 32'd0;
assign v3_Din_A = 8'd0;
assign v3_Din_B = 8'd0;
assign v3_EN_A = v3_EN_A_local;
assign v3_EN_B = v3_EN_B_local;
assign v3_WEN_A = 1'd0;
assign v3_WEN_B = 1'd0;
assign v94_address1 = zext_ln452_5_fu_1965_p1;
assign v94_ce1 = v94_ce1_local;
assign v94_d1 = v168_fu_1973_p2;
assign v94_we1 = v94_we1_local;
assign v95_1_address0 = v95_1_address0_local;
assign v95_1_ce0 = v95_1_ce0_local;
assign v95_address0 = v95_address0_local;
assign v95_ce0 = v95_ce0_local;
assign xor_ln449_fu_862_p2 = (icmp_ln450_fu_848_p2 ^ 1'd1);
assign xor_ln454_fu_1051_p2 = (bit_sel_fu_1043_p3 ^ 1'd1);
assign zext_ln452_1_fu_1075_p1 = v158_mid2_reg_2180;
assign zext_ln452_2_fu_1078_p1 = v158_mid2_reg_2180;
assign zext_ln452_3_fu_1170_p1 = v158_mid2_reg_2180;
assign zext_ln452_4_fu_1173_p1 = v158_mid2_reg_2180;
assign zext_ln452_5_fu_1965_p1 = add_ln452_1_reg_2300_pp0_iter1_reg;
assign zext_ln452_fu_1144_p1 = select_ln450_reg_2198;
assign zext_ln454_32_fu_1517_p1 = tmp_51_reg_2216;
assign zext_ln454_33_fu_1025_p1 = select_ln450_fu_977_p3;
assign zext_ln454_34_fu_1574_p1 = select_ln450_reg_2198;
assign zext_ln454_35_fu_1161_p1 = tmp_51_reg_2216;
assign zext_ln454_36_fu_1015_p1 = tmp_51_fu_1007_p3;
assign zext_ln454_37_fu_1218_p1 = $unsigned(tmp_52_cast_fu_1209_p4);
assign zext_ln454_38_fu_1383_p1 = $unsigned(tmp_53_cast_reg_2222);
assign zext_ln454_39_fu_1466_p1 = $unsigned(sext_ln454_reg_2340);
assign zext_ln454_40_fu_1087_p1 = add_ln454_6_fu_1081_p2;
assign zext_ln454_41_fu_1299_p1 = add_ln454_8_reg_2248;
assign zext_ln454_42_fu_1327_p1 = add_ln454_9_reg_2345;
assign zext_ln454_43_fu_1355_p1 = add_ln454_10_reg_2350;
assign zext_ln454_44_fu_1391_p1 = add_ln454_11_fu_1386_p2;
assign zext_ln454_45_fu_1424_p1 = $unsigned(add_ln454_12_reg_2305);
assign zext_ln454_46_fu_1474_p1 = add_ln454_13_fu_1469_p2;
assign zext_ln454_47_fu_1531_p1 = add_ln454_14_fu_1526_p2;
assign zext_ln454_48_fu_1592_p1 = add_ln454_15_fu_1587_p2;
assign zext_ln454_49_fu_1658_p1 = add_ln454_16_fu_1653_p2;
assign zext_ln454_50_fu_1711_p1 = add_ln454_17_reg_2741;
assign zext_ln454_51_fu_1767_p1 = add_ln454_18_reg_2746;
assign zext_ln454_52_fu_1104_p1 = add_ln454_19_fu_1098_p2;
assign zext_ln454_53_fu_1192_p1 = $unsigned(sext_ln454_2_fu_1188_p1);
assign zext_ln454_54_fu_1250_p1 = $unsigned(sext_ln454_3_fu_1246_p1);
assign zext_ln454_55_fu_1282_p1 = $unsigned(sext_ln454_4_fu_1279_p1);
always @ (posedge ap_clk) begin
    tmp_51_reg_2216[4:0] <= 5'b00000;
    tmp_53_cast_reg_2222[4:0] <= 5'b00000;
    tmp_53_cast_reg_2222[12:11] <= 2'b10;
    zext_ln452_1_reg_2227[13:6] <= 8'b00000000;
    zext_ln454_40_reg_2238[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln454_52_reg_2253[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_35_reg_2288[4:0] <= 5'b00000;
    zext_ln454_35_reg_2288[12:11] <= 2'b00;
    zext_ln452_3_reg_2293[12:6] <= 7'b0000000;
    zext_ln454_53_reg_2315[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    sext_ln454_reg_2340[4:0] <= 5'b00000;
    sext_ln454_reg_2340[12:11] <= 2'b11;
    zext_ln454_54_reg_2360[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_55_reg_2390[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_41_reg_2415[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln454_42_reg_2445[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln454_43_reg_2485[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln454_44_reg_2520[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_45_reg_2560[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln454_46_reg_2600[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_32_reg_2630[4:0] <= 5'b00000;
    zext_ln454_32_reg_2630[13:11] <= 3'b000;
    zext_ln454_47_reg_2641[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_48_reg_2691[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_49_reg_2736[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_50_reg_2796[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln454_51_reg_2841[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
