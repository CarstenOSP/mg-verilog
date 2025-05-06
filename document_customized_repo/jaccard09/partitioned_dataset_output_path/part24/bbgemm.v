
module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_0_address1,m1_0_ce1,m1_0_q1,m1_1_address0,m1_1_ce0,m1_1_q0,m1_1_address1,m1_1_ce1,m1_1_q1,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_0_address1,prod_0_ce1,prod_0_we1,prod_0_d1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_1_address1,prod_1_ce1,prod_1_we1,prod_1_d1,prod_1_q1);  
parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [10:0] m1_0_address1;
output   m1_0_ce1;
input  [63:0] m1_0_q1;
output  [10:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [10:0] m1_1_address1;
output   m1_1_ce1;
input  [63:0] m1_1_q1;
output  [10:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [10:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [10:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [10:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [10:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [10:0] prod_0_address1;
output   prod_0_ce1;
output   prod_0_we1;
output  [63:0] prod_0_d1;
input  [63:0] prod_0_q1;
output  [10:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [10:0] prod_1_address1;
output   prod_1_ce1;
output   prod_1_we1;
output  [63:0] prod_1_d1;
input  [63:0] prod_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] indvars_iv348_udiv_fu_784_p4;
reg   [4:0] indvars_iv348_udiv_reg_1684;
wire    ap_CS_fsm_state2;
wire   [5:0] indvars_iv348_udiv_cast_fu_794_p1;
reg   [5:0] indvars_iv348_udiv_cast_reg_1694;
wire   [4:0] tmp_fu_806_p4;
reg   [4:0] tmp_reg_1705;
wire    ap_CS_fsm_state3;
wire   [3:0] tmp_3_fu_829_p4;
reg   [3:0] tmp_3_reg_1727;
wire   [4:0] tmp_3_cast_fu_838_p1;
reg   [4:0] tmp_3_cast_reg_1737;
reg   [2:0] tmp_5_reg_1754;
reg   [0:0] tmp_79_reg_1769;
wire   [6:0] add_ln16_fu_874_p2;
reg   [6:0] add_ln16_reg_1782;
reg   [63:0] m2_0_load_reg_1787;
wire    ap_CS_fsm_state4;
reg   [63:0] m2_1_load_reg_1792;
reg   [63:0] m2_0_load_1_reg_1797;
reg   [63:0] m2_1_load_1_reg_1802;
wire   [3:0] tmp_5_cast_fu_890_p1;
reg   [3:0] tmp_5_cast_reg_1807;
reg   [63:0] m2_0_load_2_reg_1837;
wire    ap_CS_fsm_state5;
reg   [63:0] m2_1_load_2_reg_1842;
reg   [63:0] m2_0_load_3_reg_1847;
reg   [63:0] m2_1_load_3_reg_1852;
reg   [63:0] m2_0_load_4_reg_1877;
wire    ap_CS_fsm_state6;
reg   [63:0] m2_1_load_4_reg_1882;
reg   [63:0] m2_0_load_5_reg_1887;
reg   [63:0] m2_1_load_5_reg_1892;
reg   [2:0] tmp_1_reg_1917;
wire    ap_CS_fsm_state7;
reg   [63:0] m2_0_load_6_reg_1938;
reg   [63:0] m2_1_load_6_reg_1943;
reg   [63:0] m2_0_load_7_reg_1948;
reg   [63:0] m2_1_load_7_reg_1953;
wire   [3:0] tmp_10_fu_997_p4;
reg   [3:0] tmp_10_reg_1958;
reg   [0:0] tmp_81_reg_1989;
reg   [63:0] m2_0_load_8_reg_2002;
wire    ap_CS_fsm_state8;
reg   [63:0] m2_1_load_8_reg_2007;
reg   [63:0] m2_0_load_9_reg_2012;
reg   [63:0] m2_1_load_9_reg_2017;
reg   [63:0] m2_0_load_10_reg_2042;
wire    ap_CS_fsm_state9;
reg   [63:0] m2_1_load_10_reg_2047;
reg   [63:0] m2_0_load_11_reg_2052;
reg   [63:0] m2_1_load_11_reg_2057;
reg   [63:0] m2_0_load_12_reg_2082;
wire    ap_CS_fsm_state10;
reg   [63:0] m2_1_load_12_reg_2087;
reg   [63:0] m2_0_load_13_reg_2092;
reg   [63:0] m2_1_load_13_reg_2097;
reg   [63:0] m2_0_load_14_reg_2122;
wire    ap_CS_fsm_state11;
reg   [63:0] m2_1_load_14_reg_2127;
reg   [63:0] m2_0_load_15_reg_2132;
reg   [63:0] m2_1_load_15_reg_2137;
reg   [63:0] m2_0_load_16_reg_2162;
wire    ap_CS_fsm_state12;
reg   [63:0] m2_1_load_16_reg_2167;
reg   [63:0] m2_0_load_17_reg_2172;
reg   [63:0] m2_1_load_17_reg_2177;
reg   [63:0] m2_0_load_18_reg_2202;
wire    ap_CS_fsm_state13;
reg   [63:0] m2_1_load_18_reg_2207;
reg   [63:0] m2_0_load_19_reg_2212;
reg   [63:0] m2_1_load_19_reg_2217;
reg   [63:0] m2_0_load_20_reg_2242;
wire    ap_CS_fsm_state14;
reg   [63:0] m2_1_load_20_reg_2247;
reg   [63:0] m2_0_load_21_reg_2252;
reg   [63:0] m2_1_load_21_reg_2257;
reg   [63:0] m2_0_load_22_reg_2282;
wire    ap_CS_fsm_state15;
reg   [63:0] m2_1_load_22_reg_2287;
reg   [63:0] m2_0_load_23_reg_2292;
reg   [63:0] m2_1_load_23_reg_2297;
reg   [63:0] m2_0_load_24_reg_2322;
wire    ap_CS_fsm_state16;
reg   [63:0] m2_1_load_24_reg_2327;
reg   [63:0] m2_0_load_25_reg_2332;
reg   [63:0] m2_1_load_25_reg_2337;
reg   [63:0] m2_0_load_26_reg_2362;
wire    ap_CS_fsm_state17;
reg   [63:0] m2_1_load_26_reg_2367;
reg   [63:0] m2_0_load_27_reg_2372;
reg   [63:0] m2_1_load_27_reg_2377;
reg   [63:0] m2_0_load_28_reg_2402;
wire    ap_CS_fsm_state18;
reg   [63:0] m2_1_load_28_reg_2407;
reg   [63:0] m2_0_load_29_reg_2412;
reg   [63:0] m2_1_load_29_reg_2417;
wire   [63:0] empty_fu_1411_p1;
reg   [63:0] empty_reg_2442;
wire    ap_CS_fsm_state19;
wire   [63:0] empty_79_fu_1415_p1;
reg   [63:0] empty_79_reg_2447;
wire   [63:0] empty_80_fu_1419_p1;
reg   [63:0] empty_80_reg_2452;
wire   [63:0] empty_81_fu_1423_p1;
reg   [63:0] empty_81_reg_2457;
wire   [63:0] empty_82_fu_1427_p1;
reg   [63:0] empty_82_reg_2462;
wire   [63:0] empty_83_fu_1431_p1;
reg   [63:0] empty_83_reg_2467;
wire   [63:0] empty_84_fu_1435_p1;
reg   [63:0] empty_84_reg_2472;
wire   [63:0] empty_85_fu_1439_p1;
reg   [63:0] empty_85_reg_2477;
wire   [63:0] empty_86_fu_1443_p1;
reg   [63:0] empty_86_reg_2482;
wire   [63:0] empty_87_fu_1447_p1;
reg   [63:0] empty_87_reg_2487;
wire   [63:0] empty_88_fu_1451_p1;
reg   [63:0] empty_88_reg_2492;
wire   [63:0] empty_89_fu_1455_p1;
reg   [63:0] empty_89_reg_2497;
wire   [63:0] empty_90_fu_1459_p1;
reg   [63:0] empty_90_reg_2502;
wire   [63:0] empty_91_fu_1463_p1;
reg   [63:0] empty_91_reg_2507;
wire   [63:0] empty_92_fu_1467_p1;
reg   [63:0] empty_92_reg_2512;
wire   [63:0] empty_93_fu_1471_p1;
reg   [63:0] empty_93_reg_2517;
wire   [63:0] empty_94_fu_1475_p1;
reg   [63:0] empty_94_reg_2522;
wire   [63:0] empty_95_fu_1479_p1;
reg   [63:0] empty_95_reg_2527;
wire   [63:0] empty_96_fu_1483_p1;
reg   [63:0] empty_96_reg_2532;
wire   [63:0] empty_97_fu_1487_p1;
reg   [63:0] empty_97_reg_2537;
wire   [63:0] empty_98_fu_1491_p1;
reg   [63:0] empty_98_reg_2542;
wire   [63:0] empty_99_fu_1495_p1;
reg   [63:0] empty_99_reg_2547;
wire   [63:0] empty_100_fu_1499_p1;
reg   [63:0] empty_100_reg_2552;
wire   [63:0] empty_101_fu_1503_p1;
reg   [63:0] empty_101_reg_2557;
wire   [63:0] empty_102_fu_1507_p1;
reg   [63:0] empty_102_reg_2562;
wire   [63:0] empty_103_fu_1511_p1;
reg   [63:0] empty_103_reg_2567;
wire   [63:0] empty_104_fu_1515_p1;
reg   [63:0] empty_104_reg_2572;
wire   [63:0] empty_105_fu_1519_p1;
reg   [63:0] empty_105_reg_2577;
wire   [63:0] empty_106_fu_1523_p1;
reg   [63:0] empty_106_reg_2582;
wire   [63:0] empty_107_fu_1527_p1;
reg   [63:0] empty_107_reg_2587;
wire   [63:0] empty_108_fu_1531_p1;
reg   [63:0] empty_108_reg_2592;
wire   [63:0] empty_109_fu_1535_p1;
reg   [63:0] empty_109_reg_2597;
wire   [63:0] empty_110_fu_1539_p1;
reg   [63:0] empty_110_reg_2602;
wire   [63:0] empty_111_fu_1543_p1;
reg   [63:0] empty_111_reg_2607;
wire   [63:0] empty_112_fu_1547_p1;
reg   [63:0] empty_112_reg_2612;
wire   [63:0] empty_113_fu_1551_p1;
reg   [63:0] empty_113_reg_2617;
wire   [63:0] empty_114_fu_1555_p1;
reg   [63:0] empty_114_reg_2622;
wire   [63:0] empty_115_fu_1559_p1;
reg   [63:0] empty_115_reg_2627;
wire   [63:0] empty_116_fu_1563_p1;
reg   [63:0] empty_116_reg_2632;
wire   [63:0] empty_117_fu_1567_p1;
reg   [63:0] empty_117_reg_2637;
wire   [63:0] empty_118_fu_1571_p1;
reg   [63:0] empty_118_reg_2642;
wire   [63:0] empty_119_fu_1575_p1;
reg   [63:0] empty_119_reg_2647;
wire   [63:0] empty_120_fu_1579_p1;
reg   [63:0] empty_120_reg_2652;
wire   [63:0] empty_121_fu_1583_p1;
reg   [63:0] empty_121_reg_2657;
wire   [63:0] empty_122_fu_1587_p1;
reg   [63:0] empty_122_reg_2662;
wire   [63:0] empty_123_fu_1591_p1;
reg   [63:0] empty_123_reg_2667;
wire   [63:0] empty_124_fu_1595_p1;
reg   [63:0] empty_124_reg_2672;
wire   [63:0] empty_125_fu_1599_p1;
reg   [63:0] empty_125_reg_2677;
wire   [63:0] empty_126_fu_1603_p1;
reg   [63:0] empty_126_reg_2682;
wire   [63:0] empty_127_fu_1607_p1;
reg   [63:0] empty_127_reg_2687;
wire   [63:0] empty_128_fu_1611_p1;
reg   [63:0] empty_128_reg_2692;
wire   [63:0] empty_129_fu_1615_p1;
reg   [63:0] empty_129_reg_2697;
wire   [63:0] empty_130_fu_1619_p1;
reg   [63:0] empty_130_reg_2702;
wire   [63:0] empty_131_fu_1623_p1;
reg   [63:0] empty_131_reg_2707;
wire   [63:0] empty_132_fu_1627_p1;
reg   [63:0] empty_132_reg_2712;
wire   [63:0] empty_133_fu_1631_p1;
reg   [63:0] empty_133_reg_2717;
wire   [63:0] empty_134_fu_1635_p1;
reg   [63:0] empty_134_reg_2722;
wire   [63:0] empty_135_fu_1639_p1;
reg   [63:0] empty_135_reg_2727;
wire   [63:0] empty_136_fu_1643_p1;
reg   [63:0] empty_136_reg_2732;
wire   [63:0] empty_137_fu_1647_p1;
reg   [63:0] empty_137_reg_2737;
wire   [63:0] empty_138_fu_1651_p1;
reg   [63:0] empty_138_reg_2742;
wire   [63:0] empty_139_fu_1656_p1;
reg   [63:0] empty_139_reg_2747;
wire   [63:0] empty_140_fu_1661_p1;
reg   [63:0] empty_140_reg_2752;
wire   [63:0] empty_141_fu_1666_p1;
reg   [63:0] empty_141_reg_2757;
wire    grp_bbgemm_Pipeline_loopi_fu_680_ap_start;
wire    grp_bbgemm_Pipeline_loopi_fu_680_ap_done;
wire    grp_bbgemm_Pipeline_loopi_fu_680_ap_idle;
wire    grp_bbgemm_Pipeline_loopi_fu_680_ap_ready;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d0;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce1;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d1;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d0;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce1;
wire    grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d1;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce0;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce1;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce0;
wire   [10:0] grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce1;
reg   [6:0] kk_reg_668;
wire   [0:0] tmp_77_fu_776_p3;
wire    ap_CS_fsm_state20;
reg    grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg;
wire   [63:0] p_cast_fu_823_p1;
wire   [0:0] tmp_78_fu_798_p3;
wire   [63:0] p_cast3_fu_852_p1;
wire   [63:0] p_cast4_fu_903_p1;
wire   [63:0] p_cast5_fu_918_p1;
wire   [63:0] p_cast6_fu_932_p1;
wire   [63:0] p_cast7_fu_948_p1;
wire   [63:0] p_cast8_fu_965_p1;
wire   [63:0] p_cast9_fu_981_p1;
wire   [63:0] p_cast10_fu_1016_p1;
wire   [63:0] p_cast11_fu_1033_p1;
wire   [63:0] p_cast12_fu_1058_p1;
wire   [63:0] p_cast13_fu_1074_p1;
wire   [63:0] p_cast14_fu_1088_p1;
wire   [63:0] p_cast15_fu_1104_p1;
wire   [63:0] p_cast16_fu_1121_p1;
wire   [63:0] p_cast17_fu_1137_p1;
wire   [63:0] p_cast18_fu_1152_p1;
wire   [63:0] p_cast19_fu_1169_p1;
wire   [63:0] p_cast20_fu_1187_p1;
wire   [63:0] p_cast21_fu_1204_p1;
wire   [63:0] p_cast22_fu_1221_p1;
wire   [63:0] p_cast23_fu_1240_p1;
wire   [63:0] p_cast24_fu_1260_p1;
wire   [63:0] p_cast25_fu_1279_p1;
wire   [63:0] p_cast26_fu_1293_p1;
wire   [63:0] p_cast27_fu_1309_p1;
wire   [63:0] p_cast28_fu_1326_p1;
wire   [63:0] p_cast29_fu_1342_p1;
wire   [63:0] add_ln23_cast_fu_1356_p1;
wire   [63:0] p_cast30_fu_1372_p1;
wire   [63:0] p_cast31_fu_1389_p1;
wire   [63:0] p_cast32_fu_1405_p1;
reg   [6:0] jj_fu_134;
wire   [6:0] add_ln15_fu_880_p2;
reg    m2_0_ce1_local;
reg   [10:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [10:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [10:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [10:0] m2_1_address0_local;
wire   [10:0] or_ln_fu_816_p3;
wire   [10:0] tmp_4_fu_842_p4;
wire   [10:0] tmp_7_fu_893_p5;
wire   [10:0] tmp_9_fu_909_p4;
wire   [10:0] tmp_s_fu_924_p4;
wire   [10:0] tmp_2_fu_938_p5;
wire   [10:0] tmp_6_fu_954_p6;
wire   [10:0] tmp_8_fu_971_p5;
wire   [10:0] tmp_11_fu_1007_p4;
wire   [10:0] tmp_12_fu_1022_p5;
wire   [10:0] tmp_13_fu_1047_p6;
wire   [10:0] tmp_14_fu_1064_p5;
wire   [10:0] tmp_15_fu_1080_p4;
wire   [10:0] tmp_16_fu_1094_p5;
wire   [10:0] tmp_17_fu_1110_p6;
wire   [10:0] tmp_18_fu_1127_p5;
wire   [10:0] tmp_19_fu_1143_p5;
wire   [10:0] tmp_20_fu_1158_p6;
wire   [10:0] tmp_21_fu_1175_p7;
wire   [10:0] tmp_22_fu_1193_p6;
wire   [10:0] tmp_23_fu_1210_p6;
wire   [10:0] tmp_24_fu_1227_p7;
wire   [10:0] tmp_25_fu_1246_p8;
wire   [10:0] tmp_26_fu_1266_p7;
wire   [10:0] tmp_27_fu_1285_p4;
wire   [10:0] tmp_28_fu_1299_p5;
wire   [10:0] tmp_29_fu_1315_p6;
wire   [10:0] tmp_30_fu_1332_p5;
wire   [10:0] or_ln1_fu_1348_p4;
wire   [10:0] tmp_31_fu_1362_p5;
wire   [10:0] tmp_32_fu_1378_p6;
wire   [10:0] tmp_33_fu_1395_p5;
reg   [19:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
reg    ap_ST_fsm_state20_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg = 1'b0;
#0 jj_fu_134 = 7'd0;
end
bbgemm_bbgemm_Pipeline_loopi grp_bbgemm_Pipeline_loopi_fu_680(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_fu_680_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_fu_680_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_fu_680_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_fu_680_ap_ready),.prod_1_address0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address0),.prod_1_ce0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce0),.prod_1_we0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we0),.prod_1_d0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d0),.prod_1_q0(prod_1_q0),.prod_1_address1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address1),.prod_1_ce1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce1),.prod_1_we1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we1),.prod_1_d1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d1),.prod_1_q1(prod_1_q1),.prod_0_address0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address0),.prod_0_ce0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce0),.prod_0_we0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we0),.prod_0_d0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d0),.prod_0_q0(prod_0_q0),.prod_0_address1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address1),.prod_0_ce1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce1),.prod_0_we1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we1),.prod_0_d1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d1),.prod_0_q1(prod_0_q1),.empty_10(tmp_reg_1705),.m1_0_address0(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address0),.m1_0_ce0(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce0),.m1_0_q0(m1_0_q0),.m1_0_address1(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address1),.m1_0_ce1(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce1),.m1_0_q1(m1_0_q1),.empty_11(empty_reg_2442),.empty_12(indvars_iv348_udiv_reg_1684),.empty_13(empty_79_reg_2447),.empty_14(empty_80_reg_2452),.empty_15(tmp_3_reg_1727),.empty_16(empty_81_reg_2457),.empty_17(empty_82_reg_2462),.empty_18(tmp_5_reg_1754),.empty_19(tmp_79_reg_1769),.empty_20(empty_83_reg_2467),.empty_21(empty_84_reg_2472),.empty_22(empty_85_reg_2477),.m1_1_address0(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address0),.m1_1_ce0(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce0),.m1_1_q0(m1_1_q0),.m1_1_address1(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address1),.m1_1_ce1(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce1),.m1_1_q1(m1_1_q1),.empty_23(empty_86_reg_2482),.empty_24(empty_87_reg_2487),.empty_25(empty_88_reg_2492),.empty_26(empty_89_reg_2497),.empty_27(empty_90_reg_2502),.empty_28(empty_91_reg_2507),.empty_29(empty_92_reg_2512),.empty_30(empty_93_reg_2517),.tmp_19(tmp_10_reg_1958),.empty_31(empty_94_reg_2522),.empty_32(empty_95_reg_2527),.empty_33(empty_96_reg_2532),.empty_34(empty_97_reg_2537),.empty_35(empty_98_reg_2542),.empty_36(empty_99_reg_2547),.empty_37(empty_100_reg_2552),.empty_38(empty_101_reg_2557),.empty_39(empty_102_reg_2562),.empty_40(empty_103_reg_2567),.empty_41(empty_104_reg_2572),.empty_42(empty_105_reg_2577),.empty_43(empty_106_reg_2582),.empty_44(empty_107_reg_2587),.empty_45(empty_108_reg_2592),.empty_46(empty_109_reg_2597),.tmp_1(tmp_1_reg_1917),.empty_47(tmp_81_reg_1989),.empty_48(empty_110_reg_2602),.empty_49(empty_111_reg_2607),.empty_50(empty_112_reg_2612),.empty_51(empty_113_reg_2617),.empty_52(empty_114_reg_2622),.empty_53(empty_115_reg_2627),.empty_54(empty_116_reg_2632),.empty_55(empty_117_reg_2637),.empty_56(empty_118_reg_2642),.empty_57(empty_119_reg_2647),.empty_58(empty_120_reg_2652),.empty_59(empty_121_reg_2657),.empty_60(empty_122_reg_2662),.empty_61(empty_123_reg_2667),.empty_62(empty_124_reg_2672),.empty_63(empty_125_reg_2677),.empty_64(empty_126_reg_2682),.empty_65(empty_127_reg_2687),.empty_66(empty_128_reg_2692),.empty_67(empty_129_reg_2697),.empty_68(empty_130_reg_2702),.empty_69(empty_131_reg_2707),.empty_70(empty_132_reg_2712),.empty_71(empty_133_reg_2717),.empty_72(empty_134_reg_2722),.empty_73(empty_135_reg_2727),.empty_74(empty_136_reg_2732),.empty_75(empty_137_reg_2737),.empty_76(empty_138_reg_2742),.empty_77(empty_139_reg_2747),.empty_78(empty_140_reg_2752),.empty(empty_141_reg_2757),.tmp(tmp_reg_1705),.indvars_iv348_udiv(indvars_iv348_udiv_reg_1684),.tmp_3(tmp_3_reg_1727),.tmp_5(tmp_5_reg_1754));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg <= 1'b1;
        end else if ((grp_bbgemm_Pipeline_loopi_fu_680_ap_ready == 1'b1)) begin
            grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        jj_fu_134 <= 7'd0;
    end else if (((tmp_78_fu_798_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_fu_134 <= add_ln15_fu_880_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_fu_680_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        kk_reg_668 <= add_ln16_reg_1782;
    end else if (((tmp_77_fu_776_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kk_reg_668 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_1782 <= add_ln16_fu_874_p2;
        tmp_3_cast_reg_1737[3 : 0] <= tmp_3_cast_fu_838_p1[3 : 0];
        tmp_3_reg_1727 <= {{jj_fu_134[5:2]}};
        tmp_5_reg_1754 <= {{jj_fu_134[5:3]}};
        tmp_79_reg_1769 <= jj_fu_134[32'd1];
        tmp_reg_1705 <= {{kk_reg_668[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        empty_100_reg_2552 <= empty_100_fu_1499_p1;
        empty_101_reg_2557 <= empty_101_fu_1503_p1;
        empty_102_reg_2562 <= empty_102_fu_1507_p1;
        empty_103_reg_2567 <= empty_103_fu_1511_p1;
        empty_104_reg_2572 <= empty_104_fu_1515_p1;
        empty_105_reg_2577 <= empty_105_fu_1519_p1;
        empty_106_reg_2582 <= empty_106_fu_1523_p1;
        empty_107_reg_2587 <= empty_107_fu_1527_p1;
        empty_108_reg_2592 <= empty_108_fu_1531_p1;
        empty_109_reg_2597 <= empty_109_fu_1535_p1;
        empty_110_reg_2602 <= empty_110_fu_1539_p1;
        empty_111_reg_2607 <= empty_111_fu_1543_p1;
        empty_112_reg_2612 <= empty_112_fu_1547_p1;
        empty_113_reg_2617 <= empty_113_fu_1551_p1;
        empty_114_reg_2622 <= empty_114_fu_1555_p1;
        empty_115_reg_2627 <= empty_115_fu_1559_p1;
        empty_116_reg_2632 <= empty_116_fu_1563_p1;
        empty_117_reg_2637 <= empty_117_fu_1567_p1;
        empty_118_reg_2642 <= empty_118_fu_1571_p1;
        empty_119_reg_2647 <= empty_119_fu_1575_p1;
        empty_120_reg_2652 <= empty_120_fu_1579_p1;
        empty_121_reg_2657 <= empty_121_fu_1583_p1;
        empty_122_reg_2662 <= empty_122_fu_1587_p1;
        empty_123_reg_2667 <= empty_123_fu_1591_p1;
        empty_124_reg_2672 <= empty_124_fu_1595_p1;
        empty_125_reg_2677 <= empty_125_fu_1599_p1;
        empty_126_reg_2682 <= empty_126_fu_1603_p1;
        empty_127_reg_2687 <= empty_127_fu_1607_p1;
        empty_128_reg_2692 <= empty_128_fu_1611_p1;
        empty_129_reg_2697 <= empty_129_fu_1615_p1;
        empty_130_reg_2702 <= empty_130_fu_1619_p1;
        empty_131_reg_2707 <= empty_131_fu_1623_p1;
        empty_132_reg_2712 <= empty_132_fu_1627_p1;
        empty_133_reg_2717 <= empty_133_fu_1631_p1;
        empty_134_reg_2722 <= empty_134_fu_1635_p1;
        empty_135_reg_2727 <= empty_135_fu_1639_p1;
        empty_136_reg_2732 <= empty_136_fu_1643_p1;
        empty_137_reg_2737 <= empty_137_fu_1647_p1;
        empty_138_reg_2742 <= empty_138_fu_1651_p1;
        empty_139_reg_2747 <= empty_139_fu_1656_p1;
        empty_140_reg_2752 <= empty_140_fu_1661_p1;
        empty_141_reg_2757 <= empty_141_fu_1666_p1;
        empty_79_reg_2447 <= empty_79_fu_1415_p1;
        empty_80_reg_2452 <= empty_80_fu_1419_p1;
        empty_81_reg_2457 <= empty_81_fu_1423_p1;
        empty_82_reg_2462 <= empty_82_fu_1427_p1;
        empty_83_reg_2467 <= empty_83_fu_1431_p1;
        empty_84_reg_2472 <= empty_84_fu_1435_p1;
        empty_85_reg_2477 <= empty_85_fu_1439_p1;
        empty_86_reg_2482 <= empty_86_fu_1443_p1;
        empty_87_reg_2487 <= empty_87_fu_1447_p1;
        empty_88_reg_2492 <= empty_88_fu_1451_p1;
        empty_89_reg_2497 <= empty_89_fu_1455_p1;
        empty_90_reg_2502 <= empty_90_fu_1459_p1;
        empty_91_reg_2507 <= empty_91_fu_1463_p1;
        empty_92_reg_2512 <= empty_92_fu_1467_p1;
        empty_93_reg_2517 <= empty_93_fu_1471_p1;
        empty_94_reg_2522 <= empty_94_fu_1475_p1;
        empty_95_reg_2527 <= empty_95_fu_1479_p1;
        empty_96_reg_2532 <= empty_96_fu_1483_p1;
        empty_97_reg_2537 <= empty_97_fu_1487_p1;
        empty_98_reg_2542 <= empty_98_fu_1491_p1;
        empty_99_reg_2547 <= empty_99_fu_1495_p1;
        empty_reg_2442 <= empty_fu_1411_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv348_udiv_cast_reg_1694[4 : 0] <= indvars_iv348_udiv_cast_fu_794_p1[4 : 0];
        indvars_iv348_udiv_reg_1684 <= {{jj_fu_134[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_load_10_reg_2042 <= m2_0_q1;
        m2_0_load_11_reg_2052 <= m2_0_q0;
        m2_1_load_10_reg_2047 <= m2_1_q1;
        m2_1_load_11_reg_2057 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_load_12_reg_2082 <= m2_0_q1;
        m2_0_load_13_reg_2092 <= m2_0_q0;
        m2_1_load_12_reg_2087 <= m2_1_q1;
        m2_1_load_13_reg_2097 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_0_load_14_reg_2122 <= m2_0_q1;
        m2_0_load_15_reg_2132 <= m2_0_q0;
        m2_1_load_14_reg_2127 <= m2_1_q1;
        m2_1_load_15_reg_2137 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_0_load_16_reg_2162 <= m2_0_q1;
        m2_0_load_17_reg_2172 <= m2_0_q0;
        m2_1_load_16_reg_2167 <= m2_1_q1;
        m2_1_load_17_reg_2177 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_0_load_18_reg_2202 <= m2_0_q1;
        m2_0_load_19_reg_2212 <= m2_0_q0;
        m2_1_load_18_reg_2207 <= m2_1_q1;
        m2_1_load_19_reg_2217 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_load_1_reg_1797 <= m2_0_q0;
        m2_0_load_reg_1787 <= m2_0_q1;
        m2_1_load_1_reg_1802 <= m2_1_q0;
        m2_1_load_reg_1792 <= m2_1_q1;
        tmp_5_cast_reg_1807[2 : 0] <= tmp_5_cast_fu_890_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_0_load_20_reg_2242 <= m2_0_q1;
        m2_0_load_21_reg_2252 <= m2_0_q0;
        m2_1_load_20_reg_2247 <= m2_1_q1;
        m2_1_load_21_reg_2257 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_0_load_22_reg_2282 <= m2_0_q1;
        m2_0_load_23_reg_2292 <= m2_0_q0;
        m2_1_load_22_reg_2287 <= m2_1_q1;
        m2_1_load_23_reg_2297 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_0_load_24_reg_2322 <= m2_0_q1;
        m2_0_load_25_reg_2332 <= m2_0_q0;
        m2_1_load_24_reg_2327 <= m2_1_q1;
        m2_1_load_25_reg_2337 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_0_load_26_reg_2362 <= m2_0_q1;
        m2_0_load_27_reg_2372 <= m2_0_q0;
        m2_1_load_26_reg_2367 <= m2_1_q1;
        m2_1_load_27_reg_2377 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_0_load_28_reg_2402 <= m2_0_q1;
        m2_0_load_29_reg_2412 <= m2_0_q0;
        m2_1_load_28_reg_2407 <= m2_1_q1;
        m2_1_load_29_reg_2417 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_load_2_reg_1837 <= m2_0_q1;
        m2_0_load_3_reg_1847 <= m2_0_q0;
        m2_1_load_2_reg_1842 <= m2_1_q1;
        m2_1_load_3_reg_1852 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_load_4_reg_1877 <= m2_0_q1;
        m2_0_load_5_reg_1887 <= m2_0_q0;
        m2_1_load_4_reg_1882 <= m2_1_q1;
        m2_1_load_5_reg_1892 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_load_6_reg_1938 <= m2_0_q1;
        m2_0_load_7_reg_1948 <= m2_0_q0;
        m2_1_load_6_reg_1943 <= m2_1_q1;
        m2_1_load_7_reg_1953 <= m2_1_q0;
        tmp_10_reg_1958 <= {{kk_reg_668[5:2]}};
        tmp_1_reg_1917 <= {{kk_reg_668[5:3]}};
        tmp_81_reg_1989 <= kk_reg_668[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_load_8_reg_2002 <= m2_0_q1;
        m2_0_load_9_reg_2012 <= m2_0_q0;
        m2_1_load_8_reg_2007 <= m2_1_q1;
        m2_1_load_9_reg_2017 <= m2_1_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_bbgemm_Pipeline_loopi_fu_680_ap_done == 1'b0)) begin
        ap_ST_fsm_state20_blk = 1'b1;
    end else begin
        ap_ST_fsm_state20_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_77_fu_776_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_77_fu_776_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_0_address0_local = p_cast32_fu_1405_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_0_address0_local = p_cast30_fu_1372_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_0_address0_local = p_cast29_fu_1342_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_0_address0_local = p_cast27_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_0_address0_local = p_cast25_fu_1279_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_0_address0_local = p_cast23_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_0_address0_local = p_cast21_fu_1204_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_0_address0_local = p_cast19_fu_1169_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_address0_local = p_cast17_fu_1137_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_address0_local = p_cast15_fu_1104_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_address0_local = p_cast13_fu_1074_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_address0_local = p_cast11_fu_1033_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address0_local = p_cast9_fu_981_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address0_local = p_cast7_fu_948_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address0_local = p_cast5_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address0_local = p_cast3_fu_852_p1;
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_0_address1_local = p_cast31_fu_1389_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_0_address1_local = add_ln23_cast_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_0_address1_local = p_cast28_fu_1326_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_0_address1_local = p_cast26_fu_1293_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_0_address1_local = p_cast24_fu_1260_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_0_address1_local = p_cast22_fu_1221_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_0_address1_local = p_cast20_fu_1187_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_0_address1_local = p_cast18_fu_1152_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_address1_local = p_cast16_fu_1121_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_address1_local = p_cast14_fu_1088_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_address1_local = p_cast12_fu_1058_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_address1_local = p_cast10_fu_1016_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address1_local = p_cast8_fu_965_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address1_local = p_cast6_fu_932_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address1_local = p_cast4_fu_903_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address1_local = p_cast_fu_823_p1;
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_1_address0_local = p_cast32_fu_1405_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_1_address0_local = p_cast30_fu_1372_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_1_address0_local = p_cast29_fu_1342_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_1_address0_local = p_cast27_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_1_address0_local = p_cast25_fu_1279_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_1_address0_local = p_cast23_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_1_address0_local = p_cast21_fu_1204_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_1_address0_local = p_cast19_fu_1169_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_1_address0_local = p_cast17_fu_1137_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_1_address0_local = p_cast15_fu_1104_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_1_address0_local = p_cast13_fu_1074_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_1_address0_local = p_cast11_fu_1033_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address0_local = p_cast9_fu_981_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address0_local = p_cast7_fu_948_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address0_local = p_cast5_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address0_local = p_cast3_fu_852_p1;
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_1_address1_local = p_cast31_fu_1389_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_1_address1_local = add_ln23_cast_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_1_address1_local = p_cast28_fu_1326_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_1_address1_local = p_cast26_fu_1293_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_1_address1_local = p_cast24_fu_1260_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_1_address1_local = p_cast22_fu_1221_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_1_address1_local = p_cast20_fu_1187_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_1_address1_local = p_cast18_fu_1152_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_1_address1_local = p_cast16_fu_1121_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_1_address1_local = p_cast14_fu_1088_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_1_address1_local = p_cast12_fu_1058_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_1_address1_local = p_cast10_fu_1016_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address1_local = p_cast8_fu_965_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address1_local = p_cast6_fu_932_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address1_local = p_cast4_fu_903_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address1_local = p_cast_fu_823_p1;
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_77_fu_776_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_78_fu_798_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            if (((grp_bbgemm_Pipeline_loopi_fu_680_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_880_p2 = (jj_fu_134 + 7'd8);
assign add_ln16_fu_874_p2 = (kk_reg_668 + 7'd8);
assign add_ln23_cast_fu_1356_p1 = or_ln1_fu_1348_p4;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_100_fu_1499_p1 = m2_0_load_11_reg_2052;
assign empty_101_fu_1503_p1 = m2_1_load_11_reg_2057;
assign empty_102_fu_1507_p1 = m2_0_load_12_reg_2082;
assign empty_103_fu_1511_p1 = m2_1_load_12_reg_2087;
assign empty_104_fu_1515_p1 = m2_0_load_13_reg_2092;
assign empty_105_fu_1519_p1 = m2_1_load_13_reg_2097;
assign empty_106_fu_1523_p1 = m2_0_load_14_reg_2122;
assign empty_107_fu_1527_p1 = m2_1_load_14_reg_2127;
assign empty_108_fu_1531_p1 = m2_0_load_15_reg_2132;
assign empty_109_fu_1535_p1 = m2_1_load_15_reg_2137;
assign empty_110_fu_1539_p1 = m2_0_load_16_reg_2162;
assign empty_111_fu_1543_p1 = m2_1_load_16_reg_2167;
assign empty_112_fu_1547_p1 = m2_0_load_17_reg_2172;
assign empty_113_fu_1551_p1 = m2_1_load_17_reg_2177;
assign empty_114_fu_1555_p1 = m2_0_load_18_reg_2202;
assign empty_115_fu_1559_p1 = m2_1_load_18_reg_2207;
assign empty_116_fu_1563_p1 = m2_0_load_19_reg_2212;
assign empty_117_fu_1567_p1 = m2_1_load_19_reg_2217;
assign empty_118_fu_1571_p1 = m2_0_load_20_reg_2242;
assign empty_119_fu_1575_p1 = m2_1_load_20_reg_2247;
assign empty_120_fu_1579_p1 = m2_0_load_21_reg_2252;
assign empty_121_fu_1583_p1 = m2_1_load_21_reg_2257;
assign empty_122_fu_1587_p1 = m2_0_load_22_reg_2282;
assign empty_123_fu_1591_p1 = m2_1_load_22_reg_2287;
assign empty_124_fu_1595_p1 = m2_0_load_23_reg_2292;
assign empty_125_fu_1599_p1 = m2_1_load_23_reg_2297;
assign empty_126_fu_1603_p1 = m2_0_load_24_reg_2322;
assign empty_127_fu_1607_p1 = m2_1_load_24_reg_2327;
assign empty_128_fu_1611_p1 = m2_0_load_25_reg_2332;
assign empty_129_fu_1615_p1 = m2_1_load_25_reg_2337;
assign empty_130_fu_1619_p1 = m2_0_load_26_reg_2362;
assign empty_131_fu_1623_p1 = m2_1_load_26_reg_2367;
assign empty_132_fu_1627_p1 = m2_0_load_27_reg_2372;
assign empty_133_fu_1631_p1 = m2_1_load_27_reg_2377;
assign empty_134_fu_1635_p1 = m2_0_load_28_reg_2402;
assign empty_135_fu_1639_p1 = m2_1_load_28_reg_2407;
assign empty_136_fu_1643_p1 = m2_0_load_29_reg_2412;
assign empty_137_fu_1647_p1 = m2_1_load_29_reg_2417;
assign empty_138_fu_1651_p1 = m2_0_q1;
assign empty_139_fu_1656_p1 = m2_1_q1;
assign empty_140_fu_1661_p1 = m2_0_q0;
assign empty_141_fu_1666_p1 = m2_1_q0;
assign empty_79_fu_1415_p1 = m2_1_load_reg_1792;
assign empty_80_fu_1419_p1 = m2_0_load_1_reg_1797;
assign empty_81_fu_1423_p1 = m2_1_load_1_reg_1802;
assign empty_82_fu_1427_p1 = m2_0_load_2_reg_1837;
assign empty_83_fu_1431_p1 = m2_1_load_2_reg_1842;
assign empty_84_fu_1435_p1 = m2_0_load_3_reg_1847;
assign empty_85_fu_1439_p1 = m2_1_load_3_reg_1852;
assign empty_86_fu_1443_p1 = m2_0_load_4_reg_1877;
assign empty_87_fu_1447_p1 = m2_1_load_4_reg_1882;
assign empty_88_fu_1451_p1 = m2_0_load_5_reg_1887;
assign empty_89_fu_1455_p1 = m2_1_load_5_reg_1892;
assign empty_90_fu_1459_p1 = m2_0_load_6_reg_1938;
assign empty_91_fu_1463_p1 = m2_1_load_6_reg_1943;
assign empty_92_fu_1467_p1 = m2_0_load_7_reg_1948;
assign empty_93_fu_1471_p1 = m2_1_load_7_reg_1953;
assign empty_94_fu_1475_p1 = m2_0_load_8_reg_2002;
assign empty_95_fu_1479_p1 = m2_1_load_8_reg_2007;
assign empty_96_fu_1483_p1 = m2_0_load_9_reg_2012;
assign empty_97_fu_1487_p1 = m2_1_load_9_reg_2017;
assign empty_98_fu_1491_p1 = m2_0_load_10_reg_2042;
assign empty_99_fu_1495_p1 = m2_1_load_10_reg_2047;
assign empty_fu_1411_p1 = m2_0_load_reg_1787;
assign grp_bbgemm_Pipeline_loopi_fu_680_ap_start = grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg;
assign indvars_iv348_udiv_cast_fu_794_p1 = indvars_iv348_udiv_fu_784_p4;
assign indvars_iv348_udiv_fu_784_p4 = {{jj_fu_134[5:1]}};
assign m1_0_address0 = grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address0;
assign m1_0_address1 = grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address1;
assign m1_0_ce0 = grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce0;
assign m1_0_ce1 = grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce1;
assign m1_1_address0 = grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address0;
assign m1_1_address1 = grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address1;
assign m1_1_ce0 = grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce0;
assign m1_1_ce1 = grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce1;
assign m2_0_address0 = m2_0_address0_local;
assign m2_0_address1 = m2_0_address1_local;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = m2_1_address0_local;
assign m2_1_address1 = m2_1_address1_local;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign or_ln1_fu_1348_p4 = {{{tmp_1_reg_1917}, {3'd7}}, {indvars_iv348_udiv_reg_1684}};
assign or_ln_fu_816_p3 = {{tmp_fu_806_p4}, {indvars_iv348_udiv_cast_reg_1694}};
assign p_cast10_fu_1016_p1 = tmp_11_fu_1007_p4;
assign p_cast11_fu_1033_p1 = tmp_12_fu_1022_p5;
assign p_cast12_fu_1058_p1 = tmp_13_fu_1047_p6;
assign p_cast13_fu_1074_p1 = tmp_14_fu_1064_p5;
assign p_cast14_fu_1088_p1 = tmp_15_fu_1080_p4;
assign p_cast15_fu_1104_p1 = tmp_16_fu_1094_p5;
assign p_cast16_fu_1121_p1 = tmp_17_fu_1110_p6;
assign p_cast17_fu_1137_p1 = tmp_18_fu_1127_p5;
assign p_cast18_fu_1152_p1 = tmp_19_fu_1143_p5;
assign p_cast19_fu_1169_p1 = tmp_20_fu_1158_p6;
assign p_cast20_fu_1187_p1 = tmp_21_fu_1175_p7;
assign p_cast21_fu_1204_p1 = tmp_22_fu_1193_p6;
assign p_cast22_fu_1221_p1 = tmp_23_fu_1210_p6;
assign p_cast23_fu_1240_p1 = tmp_24_fu_1227_p7;
assign p_cast24_fu_1260_p1 = tmp_25_fu_1246_p8;
assign p_cast25_fu_1279_p1 = tmp_26_fu_1266_p7;
assign p_cast26_fu_1293_p1 = tmp_27_fu_1285_p4;
assign p_cast27_fu_1309_p1 = tmp_28_fu_1299_p5;
assign p_cast28_fu_1326_p1 = tmp_29_fu_1315_p6;
assign p_cast29_fu_1342_p1 = tmp_30_fu_1332_p5;
assign p_cast30_fu_1372_p1 = tmp_31_fu_1362_p5;
assign p_cast31_fu_1389_p1 = tmp_32_fu_1378_p6;
assign p_cast32_fu_1405_p1 = tmp_33_fu_1395_p5;
assign p_cast3_fu_852_p1 = tmp_4_fu_842_p4;
assign p_cast4_fu_903_p1 = tmp_7_fu_893_p5;
assign p_cast5_fu_918_p1 = tmp_9_fu_909_p4;
assign p_cast6_fu_932_p1 = tmp_s_fu_924_p4;
assign p_cast7_fu_948_p1 = tmp_2_fu_938_p5;
assign p_cast8_fu_965_p1 = tmp_6_fu_954_p6;
assign p_cast9_fu_981_p1 = tmp_8_fu_971_p5;
assign p_cast_fu_823_p1 = or_ln_fu_816_p3;
assign prod_0_address0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address0;
assign prod_0_address1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address1;
assign prod_0_ce0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce0;
assign prod_0_ce1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce1;
assign prod_0_d0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d0;
assign prod_0_d1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d1;
assign prod_0_we0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we0;
assign prod_0_we1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we1;
assign prod_1_address0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address0;
assign prod_1_address1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address1;
assign prod_1_ce0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce0;
assign prod_1_ce1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce1;
assign prod_1_d0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d0;
assign prod_1_d1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d1;
assign prod_1_we0 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we0;
assign prod_1_we1 = grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we1;
assign tmp_10_fu_997_p4 = {{kk_reg_668[5:2]}};
assign tmp_11_fu_1007_p4 = {{{tmp_10_fu_997_p4}, {1'd1}}, {indvars_iv348_udiv_cast_reg_1694}};
assign tmp_12_fu_1022_p5 = {{{{tmp_10_fu_997_p4}, {1'd1}}, {tmp_3_cast_reg_1737}}, {1'd1}};
assign tmp_13_fu_1047_p6 = {{{{{tmp_10_reg_1958}, {1'd1}}, {tmp_5_cast_reg_1807}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_14_fu_1064_p5 = {{{{tmp_10_reg_1958}, {1'd1}}, {tmp_5_cast_reg_1807}}, {2'd3}};
assign tmp_15_fu_1080_p4 = {{{tmp_10_reg_1958}, {2'd3}}, {indvars_iv348_udiv_reg_1684}};
assign tmp_16_fu_1094_p5 = {{{{tmp_10_reg_1958}, {2'd3}}, {tmp_3_reg_1727}}, {1'd1}};
assign tmp_17_fu_1110_p6 = {{{{{tmp_10_reg_1958}, {2'd3}}, {tmp_5_reg_1754}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_18_fu_1127_p5 = {{{{tmp_10_reg_1958}, {2'd3}}, {tmp_5_reg_1754}}, {2'd3}};
assign tmp_19_fu_1143_p5 = {{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {indvars_iv348_udiv_cast_reg_1694}};
assign tmp_20_fu_1158_p6 = {{{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {tmp_3_cast_reg_1737}}, {1'd1}};
assign tmp_21_fu_1175_p7 = {{{{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {tmp_5_cast_reg_1807}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_22_fu_1193_p6 = {{{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {tmp_5_cast_reg_1807}}, {2'd3}};
assign tmp_23_fu_1210_p6 = {{{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {1'd1}}, {indvars_iv348_udiv_reg_1684}};
assign tmp_24_fu_1227_p7 = {{{{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {1'd1}}, {tmp_3_reg_1727}}, {1'd1}};
assign tmp_25_fu_1246_p8 = {{{{{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {1'd1}}, {tmp_5_reg_1754}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_26_fu_1266_p7 = {{{{{{tmp_1_reg_1917}, {1'd1}}, {tmp_81_reg_1989}}, {1'd1}}, {tmp_5_reg_1754}}, {2'd3}};
assign tmp_27_fu_1285_p4 = {{{tmp_1_reg_1917}, {2'd3}}, {indvars_iv348_udiv_cast_reg_1694}};
assign tmp_28_fu_1299_p5 = {{{{tmp_1_reg_1917}, {2'd3}}, {tmp_3_cast_reg_1737}}, {1'd1}};
assign tmp_29_fu_1315_p6 = {{{{{tmp_1_reg_1917}, {2'd3}}, {tmp_5_cast_reg_1807}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_2_fu_938_p5 = {{{{tmp_reg_1705}, {1'd1}}, {tmp_3_reg_1727}}, {1'd1}};
assign tmp_30_fu_1332_p5 = {{{{tmp_1_reg_1917}, {2'd3}}, {tmp_5_cast_reg_1807}}, {2'd3}};
assign tmp_31_fu_1362_p5 = {{{{tmp_1_reg_1917}, {3'd7}}, {tmp_3_reg_1727}}, {1'd1}};
assign tmp_32_fu_1378_p6 = {{{{{tmp_1_reg_1917}, {3'd7}}, {tmp_5_reg_1754}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_33_fu_1395_p5 = {{{{tmp_1_reg_1917}, {3'd7}}, {tmp_5_reg_1754}}, {2'd3}};
assign tmp_3_cast_fu_838_p1 = tmp_3_fu_829_p4;
assign tmp_3_fu_829_p4 = {{jj_fu_134[5:2]}};
assign tmp_4_fu_842_p4 = {{{tmp_fu_806_p4}, {tmp_3_cast_fu_838_p1}}, {1'd1}};
assign tmp_5_cast_fu_890_p1 = tmp_5_reg_1754;
assign tmp_6_fu_954_p6 = {{{{{tmp_reg_1705}, {1'd1}}, {tmp_5_reg_1754}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_77_fu_776_p3 = jj_fu_134[32'd6];
assign tmp_78_fu_798_p3 = kk_reg_668[32'd6];
assign tmp_7_fu_893_p5 = {{{{tmp_reg_1705}, {tmp_5_cast_fu_890_p1}}, {1'd1}}, {tmp_79_reg_1769}};
assign tmp_8_fu_971_p5 = {{{{tmp_reg_1705}, {1'd1}}, {tmp_5_reg_1754}}, {2'd3}};
assign tmp_9_fu_909_p4 = {{{tmp_reg_1705}, {tmp_5_cast_fu_890_p1}}, {2'd3}};
assign tmp_fu_806_p4 = {{kk_reg_668[5:1]}};
assign tmp_s_fu_924_p4 = {{{tmp_reg_1705}, {1'd1}}, {indvars_iv348_udiv_reg_1684}};
always @ (posedge ap_clk) begin
    indvars_iv348_udiv_cast_reg_1694[5] <= 1'b0;
    tmp_3_cast_reg_1737[4] <= 1'b0;
    tmp_5_cast_reg_1807[3] <= 1'b0;
end
endmodule 
