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
wire   [4:0] indvars_iv230_udiv_fu_780_p4;
reg   [4:0] indvars_iv230_udiv_reg_1680;
wire    ap_CS_fsm_state2;
wire   [5:0] indvars_iv230_udiv_cast_fu_790_p1;
reg   [5:0] indvars_iv230_udiv_cast_reg_1689;
wire   [4:0] tmp_fu_802_p4;
reg   [4:0] tmp_reg_1700;
wire    ap_CS_fsm_state3;
wire   [3:0] tmp_3_fu_825_p4;
reg   [3:0] tmp_3_reg_1721;
wire   [4:0] tmp_3_cast_fu_834_p1;
reg   [4:0] tmp_3_cast_reg_1730;
reg   [2:0] tmp_5_reg_1747;
reg   [0:0] tmp_77_reg_1761;
wire   [6:0] add_ln16_fu_870_p2;
reg   [6:0] add_ln16_reg_1774;
reg   [63:0] m2_0_load_reg_1779;
wire    ap_CS_fsm_state4;
reg   [63:0] m2_1_load_reg_1784;
reg   [63:0] m2_0_load_1_reg_1789;
reg   [63:0] m2_1_load_1_reg_1794;
wire   [3:0] tmp_5_cast_fu_886_p1;
reg   [3:0] tmp_5_cast_reg_1799;
reg   [63:0] m2_0_load_2_reg_1829;
wire    ap_CS_fsm_state5;
reg   [63:0] m2_1_load_2_reg_1834;
reg   [63:0] m2_0_load_3_reg_1839;
reg   [63:0] m2_1_load_3_reg_1844;
reg   [63:0] m2_0_load_4_reg_1869;
wire    ap_CS_fsm_state6;
reg   [63:0] m2_1_load_4_reg_1874;
reg   [63:0] m2_0_load_5_reg_1879;
reg   [63:0] m2_1_load_5_reg_1884;
reg   [2:0] tmp_1_reg_1909;
wire    ap_CS_fsm_state7;
reg   [63:0] m2_0_load_6_reg_1930;
reg   [63:0] m2_1_load_6_reg_1935;
reg   [63:0] m2_0_load_7_reg_1940;
reg   [63:0] m2_1_load_7_reg_1945;
wire   [3:0] tmp_10_fu_993_p4;
reg   [3:0] tmp_10_reg_1950;
reg   [0:0] tmp_79_reg_1981;
reg   [63:0] m2_0_load_8_reg_1994;
wire    ap_CS_fsm_state8;
reg   [63:0] m2_1_load_8_reg_1999;
reg   [63:0] m2_0_load_9_reg_2004;
reg   [63:0] m2_1_load_9_reg_2009;
reg   [63:0] m2_0_load_10_reg_2034;
wire    ap_CS_fsm_state9;
reg   [63:0] m2_1_load_10_reg_2039;
reg   [63:0] m2_0_load_11_reg_2044;
reg   [63:0] m2_1_load_11_reg_2049;
reg   [63:0] m2_0_load_12_reg_2074;
wire    ap_CS_fsm_state10;
reg   [63:0] m2_1_load_12_reg_2079;
reg   [63:0] m2_0_load_13_reg_2084;
reg   [63:0] m2_1_load_13_reg_2089;
reg   [63:0] m2_0_load_14_reg_2114;
wire    ap_CS_fsm_state11;
reg   [63:0] m2_1_load_14_reg_2119;
reg   [63:0] m2_0_load_15_reg_2124;
reg   [63:0] m2_1_load_15_reg_2129;
reg   [63:0] m2_0_load_16_reg_2154;
wire    ap_CS_fsm_state12;
reg   [63:0] m2_1_load_16_reg_2159;
reg   [63:0] m2_0_load_17_reg_2164;
reg   [63:0] m2_1_load_17_reg_2169;
reg   [63:0] m2_0_load_18_reg_2194;
wire    ap_CS_fsm_state13;
reg   [63:0] m2_1_load_18_reg_2199;
reg   [63:0] m2_0_load_19_reg_2204;
reg   [63:0] m2_1_load_19_reg_2209;
reg   [63:0] m2_0_load_20_reg_2234;
wire    ap_CS_fsm_state14;
reg   [63:0] m2_1_load_20_reg_2239;
reg   [63:0] m2_0_load_21_reg_2244;
reg   [63:0] m2_1_load_21_reg_2249;
reg   [63:0] m2_0_load_22_reg_2274;
wire    ap_CS_fsm_state15;
reg   [63:0] m2_1_load_22_reg_2279;
reg   [63:0] m2_0_load_23_reg_2284;
reg   [63:0] m2_1_load_23_reg_2289;
reg   [63:0] m2_0_load_24_reg_2314;
wire    ap_CS_fsm_state16;
reg   [63:0] m2_1_load_24_reg_2319;
reg   [63:0] m2_0_load_25_reg_2324;
reg   [63:0] m2_1_load_25_reg_2329;
reg   [63:0] m2_0_load_26_reg_2354;
wire    ap_CS_fsm_state17;
reg   [63:0] m2_1_load_26_reg_2359;
reg   [63:0] m2_0_load_27_reg_2364;
reg   [63:0] m2_1_load_27_reg_2369;
reg   [63:0] m2_0_load_28_reg_2394;
wire    ap_CS_fsm_state18;
reg   [63:0] m2_1_load_28_reg_2399;
reg   [63:0] m2_0_load_29_reg_2404;
reg   [63:0] m2_1_load_29_reg_2409;
wire   [63:0] empty_fu_1407_p1;
reg   [63:0] empty_reg_2434;
wire    ap_CS_fsm_state19;
wire   [63:0] empty_75_fu_1411_p1;
reg   [63:0] empty_75_reg_2439;
wire   [63:0] empty_76_fu_1415_p1;
reg   [63:0] empty_76_reg_2444;
wire   [63:0] empty_77_fu_1419_p1;
reg   [63:0] empty_77_reg_2449;
wire   [63:0] empty_78_fu_1423_p1;
reg   [63:0] empty_78_reg_2454;
wire   [63:0] empty_79_fu_1427_p1;
reg   [63:0] empty_79_reg_2459;
wire   [63:0] empty_80_fu_1431_p1;
reg   [63:0] empty_80_reg_2464;
wire   [63:0] empty_81_fu_1435_p1;
reg   [63:0] empty_81_reg_2469;
wire   [63:0] empty_82_fu_1439_p1;
reg   [63:0] empty_82_reg_2474;
wire   [63:0] empty_83_fu_1443_p1;
reg   [63:0] empty_83_reg_2479;
wire   [63:0] empty_84_fu_1447_p1;
reg   [63:0] empty_84_reg_2484;
wire   [63:0] empty_85_fu_1451_p1;
reg   [63:0] empty_85_reg_2489;
wire   [63:0] empty_86_fu_1455_p1;
reg   [63:0] empty_86_reg_2494;
wire   [63:0] empty_87_fu_1459_p1;
reg   [63:0] empty_87_reg_2499;
wire   [63:0] empty_88_fu_1463_p1;
reg   [63:0] empty_88_reg_2504;
wire   [63:0] empty_89_fu_1467_p1;
reg   [63:0] empty_89_reg_2509;
wire   [63:0] empty_90_fu_1471_p1;
reg   [63:0] empty_90_reg_2514;
wire   [63:0] empty_91_fu_1475_p1;
reg   [63:0] empty_91_reg_2519;
wire   [63:0] empty_92_fu_1479_p1;
reg   [63:0] empty_92_reg_2524;
wire   [63:0] empty_93_fu_1483_p1;
reg   [63:0] empty_93_reg_2529;
wire   [63:0] empty_94_fu_1487_p1;
reg   [63:0] empty_94_reg_2534;
wire   [63:0] empty_95_fu_1491_p1;
reg   [63:0] empty_95_reg_2539;
wire   [63:0] empty_96_fu_1495_p1;
reg   [63:0] empty_96_reg_2544;
wire   [63:0] empty_97_fu_1499_p1;
reg   [63:0] empty_97_reg_2549;
wire   [63:0] empty_98_fu_1503_p1;
reg   [63:0] empty_98_reg_2554;
wire   [63:0] empty_99_fu_1507_p1;
reg   [63:0] empty_99_reg_2559;
wire   [63:0] empty_100_fu_1511_p1;
reg   [63:0] empty_100_reg_2564;
wire   [63:0] empty_101_fu_1515_p1;
reg   [63:0] empty_101_reg_2569;
wire   [63:0] empty_102_fu_1519_p1;
reg   [63:0] empty_102_reg_2574;
wire   [63:0] empty_103_fu_1523_p1;
reg   [63:0] empty_103_reg_2579;
wire   [63:0] empty_104_fu_1527_p1;
reg   [63:0] empty_104_reg_2584;
wire   [63:0] empty_105_fu_1531_p1;
reg   [63:0] empty_105_reg_2589;
wire   [63:0] empty_106_fu_1535_p1;
reg   [63:0] empty_106_reg_2594;
wire   [63:0] empty_107_fu_1539_p1;
reg   [63:0] empty_107_reg_2599;
wire   [63:0] empty_108_fu_1543_p1;
reg   [63:0] empty_108_reg_2604;
wire   [63:0] empty_109_fu_1547_p1;
reg   [63:0] empty_109_reg_2609;
wire   [63:0] empty_110_fu_1551_p1;
reg   [63:0] empty_110_reg_2614;
wire   [63:0] empty_111_fu_1555_p1;
reg   [63:0] empty_111_reg_2619;
wire   [63:0] empty_112_fu_1559_p1;
reg   [63:0] empty_112_reg_2624;
wire   [63:0] empty_113_fu_1563_p1;
reg   [63:0] empty_113_reg_2629;
wire   [63:0] empty_114_fu_1567_p1;
reg   [63:0] empty_114_reg_2634;
wire   [63:0] empty_115_fu_1571_p1;
reg   [63:0] empty_115_reg_2639;
wire   [63:0] empty_116_fu_1575_p1;
reg   [63:0] empty_116_reg_2644;
wire   [63:0] empty_117_fu_1579_p1;
reg   [63:0] empty_117_reg_2649;
wire   [63:0] empty_118_fu_1583_p1;
reg   [63:0] empty_118_reg_2654;
wire   [63:0] empty_119_fu_1587_p1;
reg   [63:0] empty_119_reg_2659;
wire   [63:0] empty_120_fu_1591_p1;
reg   [63:0] empty_120_reg_2664;
wire   [63:0] empty_121_fu_1595_p1;
reg   [63:0] empty_121_reg_2669;
wire   [63:0] empty_122_fu_1599_p1;
reg   [63:0] empty_122_reg_2674;
wire   [63:0] empty_123_fu_1603_p1;
reg   [63:0] empty_123_reg_2679;
wire   [63:0] empty_124_fu_1607_p1;
reg   [63:0] empty_124_reg_2684;
wire   [63:0] empty_125_fu_1611_p1;
reg   [63:0] empty_125_reg_2689;
wire   [63:0] empty_126_fu_1615_p1;
reg   [63:0] empty_126_reg_2694;
wire   [63:0] empty_127_fu_1619_p1;
reg   [63:0] empty_127_reg_2699;
wire   [63:0] empty_128_fu_1623_p1;
reg   [63:0] empty_128_reg_2704;
wire   [63:0] empty_129_fu_1627_p1;
reg   [63:0] empty_129_reg_2709;
wire   [63:0] empty_130_fu_1631_p1;
reg   [63:0] empty_130_reg_2714;
wire   [63:0] empty_131_fu_1635_p1;
reg   [63:0] empty_131_reg_2719;
wire   [63:0] empty_132_fu_1639_p1;
reg   [63:0] empty_132_reg_2724;
wire   [63:0] empty_133_fu_1643_p1;
reg   [63:0] empty_133_reg_2729;
wire   [63:0] empty_134_fu_1647_p1;
reg   [63:0] empty_134_reg_2734;
wire   [63:0] empty_135_fu_1652_p1;
reg   [63:0] empty_135_reg_2739;
wire   [63:0] empty_136_fu_1657_p1;
reg   [63:0] empty_136_reg_2744;
wire   [63:0] empty_137_fu_1662_p1;
reg   [63:0] empty_137_reg_2749;
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
wire   [0:0] tmp_74_fu_772_p3;
wire    ap_CS_fsm_state20;
reg    grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg;
wire   [63:0] p_cast_fu_819_p1;
wire   [0:0] tmp_75_fu_794_p3;
wire   [63:0] p_cast2_fu_848_p1;
wire   [63:0] p_cast3_fu_899_p1;
wire   [63:0] p_cast4_fu_914_p1;
wire   [63:0] p_cast5_fu_928_p1;
wire   [63:0] p_cast6_fu_944_p1;
wire   [63:0] p_cast7_fu_961_p1;
wire   [63:0] p_cast8_fu_977_p1;
wire   [63:0] p_cast9_fu_1012_p1;
wire   [63:0] p_cast10_fu_1029_p1;
wire   [63:0] p_cast11_fu_1054_p1;
wire   [63:0] p_cast12_fu_1070_p1;
wire   [63:0] p_cast13_fu_1084_p1;
wire   [63:0] p_cast14_fu_1100_p1;
wire   [63:0] p_cast15_fu_1117_p1;
wire   [63:0] p_cast16_fu_1133_p1;
wire   [63:0] p_cast17_fu_1148_p1;
wire   [63:0] p_cast18_fu_1165_p1;
wire   [63:0] p_cast19_fu_1183_p1;
wire   [63:0] p_cast20_fu_1200_p1;
wire   [63:0] p_cast21_fu_1217_p1;
wire   [63:0] p_cast22_fu_1236_p1;
wire   [63:0] p_cast23_fu_1256_p1;
wire   [63:0] p_cast24_fu_1275_p1;
wire   [63:0] p_cast25_fu_1289_p1;
wire   [63:0] p_cast26_fu_1305_p1;
wire   [63:0] p_cast27_fu_1322_p1;
wire   [63:0] p_cast28_fu_1338_p1;
wire   [63:0] add_ln23_cast_fu_1352_p1;
wire   [63:0] p_cast29_fu_1368_p1;
wire   [63:0] p_cast30_fu_1385_p1;
wire   [63:0] p_cast31_fu_1401_p1;
reg   [6:0] jj_fu_134;
wire   [6:0] add_ln15_fu_876_p2;
reg    m2_0_ce1_local;
reg   [10:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [10:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [10:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [10:0] m2_1_address0_local;
wire   [10:0] or_ln_fu_812_p3;
wire   [10:0] tmp_4_fu_838_p4;
wire   [10:0] tmp_7_fu_889_p5;
wire   [10:0] tmp_9_fu_905_p4;
wire   [10:0] tmp_s_fu_920_p4;
wire   [10:0] tmp_2_fu_934_p5;
wire   [10:0] tmp_6_fu_950_p6;
wire   [10:0] tmp_8_fu_967_p5;
wire   [10:0] tmp_11_fu_1003_p4;
wire   [10:0] tmp_12_fu_1018_p5;
wire   [10:0] tmp_13_fu_1043_p6;
wire   [10:0] tmp_14_fu_1060_p5;
wire   [10:0] tmp_15_fu_1076_p4;
wire   [10:0] tmp_16_fu_1090_p5;
wire   [10:0] tmp_17_fu_1106_p6;
wire   [10:0] tmp_18_fu_1123_p5;
wire   [10:0] tmp_19_fu_1139_p5;
wire   [10:0] tmp_20_fu_1154_p6;
wire   [10:0] tmp_21_fu_1171_p7;
wire   [10:0] tmp_22_fu_1189_p6;
wire   [10:0] tmp_23_fu_1206_p6;
wire   [10:0] tmp_24_fu_1223_p7;
wire   [10:0] tmp_25_fu_1242_p8;
wire   [10:0] tmp_26_fu_1262_p7;
wire   [10:0] tmp_27_fu_1281_p4;
wire   [10:0] tmp_28_fu_1295_p5;
wire   [10:0] tmp_29_fu_1311_p6;
wire   [10:0] tmp_30_fu_1328_p5;
wire   [10:0] or_ln1_fu_1344_p4;
wire   [10:0] tmp_31_fu_1358_p5;
wire   [10:0] tmp_32_fu_1374_p6;
wire   [10:0] tmp_33_fu_1391_p5;
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
bbgemm_bbgemm_Pipeline_loopi grp_bbgemm_Pipeline_loopi_fu_680(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_fu_680_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_fu_680_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_fu_680_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_fu_680_ap_ready),.prod_1_address0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address0),.prod_1_ce0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce0),.prod_1_we0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we0),.prod_1_d0(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d0),.prod_1_q0(prod_1_q0),.prod_1_address1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_address1),.prod_1_ce1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_ce1),.prod_1_we1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_we1),.prod_1_d1(grp_bbgemm_Pipeline_loopi_fu_680_prod_1_d1),.prod_1_q1(prod_1_q1),.prod_0_address0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address0),.prod_0_ce0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce0),.prod_0_we0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we0),.prod_0_d0(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d0),.prod_0_q0(prod_0_q0),.prod_0_address1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_address1),.prod_0_ce1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_ce1),.prod_0_we1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_we1),.prod_0_d1(grp_bbgemm_Pipeline_loopi_fu_680_prod_0_d1),.prod_0_q1(prod_0_q1),.tmp(tmp_reg_1700),.m1_0_address0(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address0),.m1_0_ce0(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce0),.m1_0_q0(m1_0_q0),.m1_0_address1(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_address1),.m1_0_ce1(grp_bbgemm_Pipeline_loopi_fu_680_m1_0_ce1),.m1_0_q1(m1_0_q1),.empty_10(empty_reg_2434),.indvars_iv230_udiv(indvars_iv230_udiv_reg_1680),.empty_11(empty_75_reg_2439),.empty_12(empty_76_reg_2444),.tmp_3(tmp_3_reg_1721),.empty_13(empty_77_reg_2449),.empty_14(empty_78_reg_2454),.tmp_5(tmp_5_reg_1747),.empty_15(tmp_77_reg_1761),.empty_16(empty_79_reg_2459),.empty_17(empty_80_reg_2464),.empty_18(empty_81_reg_2469),.m1_1_address0(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address0),.m1_1_ce0(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce0),.m1_1_q0(m1_1_q0),.m1_1_address1(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_address1),.m1_1_ce1(grp_bbgemm_Pipeline_loopi_fu_680_m1_1_ce1),.m1_1_q1(m1_1_q1),.empty_19(empty_82_reg_2474),.empty_20(empty_83_reg_2479),.empty_21(empty_84_reg_2484),.empty_22(empty_85_reg_2489),.empty_23(empty_86_reg_2494),.empty_24(empty_87_reg_2499),.empty_25(empty_88_reg_2504),.empty_26(empty_89_reg_2509),.tmp_19(tmp_10_reg_1950),.empty_27(empty_90_reg_2514),.empty_28(empty_91_reg_2519),.empty_29(empty_92_reg_2524),.empty_30(empty_93_reg_2529),.empty_31(empty_94_reg_2534),.empty_32(empty_95_reg_2539),.empty_33(empty_96_reg_2544),.empty_34(empty_97_reg_2549),.empty_35(empty_98_reg_2554),.empty_36(empty_99_reg_2559),.empty_37(empty_100_reg_2564),.empty_38(empty_101_reg_2569),.empty_39(empty_102_reg_2574),.empty_40(empty_103_reg_2579),.empty_41(empty_104_reg_2584),.empty_42(empty_105_reg_2589),.tmp_1(tmp_1_reg_1909),.empty_43(tmp_79_reg_1981),.empty_44(empty_106_reg_2594),.empty_45(empty_107_reg_2599),.empty_46(empty_108_reg_2604),.empty_47(empty_109_reg_2609),.empty_48(empty_110_reg_2614),.empty_49(empty_111_reg_2619),.empty_50(empty_112_reg_2624),.empty_51(empty_113_reg_2629),.empty_52(empty_114_reg_2634),.empty_53(empty_115_reg_2639),.empty_54(empty_116_reg_2644),.empty_55(empty_117_reg_2649),.empty_56(empty_118_reg_2654),.empty_57(empty_119_reg_2659),.empty_58(empty_120_reg_2664),.empty_59(empty_121_reg_2669),.empty_60(empty_122_reg_2674),.empty_61(empty_123_reg_2679),.empty_62(empty_124_reg_2684),.empty_63(empty_125_reg_2689),.empty_64(empty_126_reg_2694),.empty_65(empty_127_reg_2699),.empty_66(empty_128_reg_2704),.empty_67(empty_129_reg_2709),.empty_68(empty_130_reg_2714),.empty_69(empty_131_reg_2719),.empty_70(empty_132_reg_2724),.empty_71(empty_133_reg_2729),.empty_72(empty_134_reg_2734),.empty_73(empty_135_reg_2739),.empty_74(empty_136_reg_2744),.empty(empty_137_reg_2749));
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
    end else if (((tmp_75_fu_794_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_fu_134 <= add_ln15_fu_876_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_fu_680_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        kk_reg_668 <= add_ln16_reg_1774;
    end else if (((tmp_74_fu_772_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kk_reg_668 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_1774 <= add_ln16_fu_870_p2;
        tmp_3_cast_reg_1730[3 : 0] <= tmp_3_cast_fu_834_p1[3 : 0];
        tmp_3_reg_1721 <= {{jj_fu_134[5:2]}};
        tmp_5_reg_1747 <= {{jj_fu_134[5:3]}};
        tmp_77_reg_1761 <= jj_fu_134[32'd1];
        tmp_reg_1700 <= {{kk_reg_668[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        empty_100_reg_2564 <= empty_100_fu_1511_p1;
        empty_101_reg_2569 <= empty_101_fu_1515_p1;
        empty_102_reg_2574 <= empty_102_fu_1519_p1;
        empty_103_reg_2579 <= empty_103_fu_1523_p1;
        empty_104_reg_2584 <= empty_104_fu_1527_p1;
        empty_105_reg_2589 <= empty_105_fu_1531_p1;
        empty_106_reg_2594 <= empty_106_fu_1535_p1;
        empty_107_reg_2599 <= empty_107_fu_1539_p1;
        empty_108_reg_2604 <= empty_108_fu_1543_p1;
        empty_109_reg_2609 <= empty_109_fu_1547_p1;
        empty_110_reg_2614 <= empty_110_fu_1551_p1;
        empty_111_reg_2619 <= empty_111_fu_1555_p1;
        empty_112_reg_2624 <= empty_112_fu_1559_p1;
        empty_113_reg_2629 <= empty_113_fu_1563_p1;
        empty_114_reg_2634 <= empty_114_fu_1567_p1;
        empty_115_reg_2639 <= empty_115_fu_1571_p1;
        empty_116_reg_2644 <= empty_116_fu_1575_p1;
        empty_117_reg_2649 <= empty_117_fu_1579_p1;
        empty_118_reg_2654 <= empty_118_fu_1583_p1;
        empty_119_reg_2659 <= empty_119_fu_1587_p1;
        empty_120_reg_2664 <= empty_120_fu_1591_p1;
        empty_121_reg_2669 <= empty_121_fu_1595_p1;
        empty_122_reg_2674 <= empty_122_fu_1599_p1;
        empty_123_reg_2679 <= empty_123_fu_1603_p1;
        empty_124_reg_2684 <= empty_124_fu_1607_p1;
        empty_125_reg_2689 <= empty_125_fu_1611_p1;
        empty_126_reg_2694 <= empty_126_fu_1615_p1;
        empty_127_reg_2699 <= empty_127_fu_1619_p1;
        empty_128_reg_2704 <= empty_128_fu_1623_p1;
        empty_129_reg_2709 <= empty_129_fu_1627_p1;
        empty_130_reg_2714 <= empty_130_fu_1631_p1;
        empty_131_reg_2719 <= empty_131_fu_1635_p1;
        empty_132_reg_2724 <= empty_132_fu_1639_p1;
        empty_133_reg_2729 <= empty_133_fu_1643_p1;
        empty_134_reg_2734 <= empty_134_fu_1647_p1;
        empty_135_reg_2739 <= empty_135_fu_1652_p1;
        empty_136_reg_2744 <= empty_136_fu_1657_p1;
        empty_137_reg_2749 <= empty_137_fu_1662_p1;
        empty_75_reg_2439 <= empty_75_fu_1411_p1;
        empty_76_reg_2444 <= empty_76_fu_1415_p1;
        empty_77_reg_2449 <= empty_77_fu_1419_p1;
        empty_78_reg_2454 <= empty_78_fu_1423_p1;
        empty_79_reg_2459 <= empty_79_fu_1427_p1;
        empty_80_reg_2464 <= empty_80_fu_1431_p1;
        empty_81_reg_2469 <= empty_81_fu_1435_p1;
        empty_82_reg_2474 <= empty_82_fu_1439_p1;
        empty_83_reg_2479 <= empty_83_fu_1443_p1;
        empty_84_reg_2484 <= empty_84_fu_1447_p1;
        empty_85_reg_2489 <= empty_85_fu_1451_p1;
        empty_86_reg_2494 <= empty_86_fu_1455_p1;
        empty_87_reg_2499 <= empty_87_fu_1459_p1;
        empty_88_reg_2504 <= empty_88_fu_1463_p1;
        empty_89_reg_2509 <= empty_89_fu_1467_p1;
        empty_90_reg_2514 <= empty_90_fu_1471_p1;
        empty_91_reg_2519 <= empty_91_fu_1475_p1;
        empty_92_reg_2524 <= empty_92_fu_1479_p1;
        empty_93_reg_2529 <= empty_93_fu_1483_p1;
        empty_94_reg_2534 <= empty_94_fu_1487_p1;
        empty_95_reg_2539 <= empty_95_fu_1491_p1;
        empty_96_reg_2544 <= empty_96_fu_1495_p1;
        empty_97_reg_2549 <= empty_97_fu_1499_p1;
        empty_98_reg_2554 <= empty_98_fu_1503_p1;
        empty_99_reg_2559 <= empty_99_fu_1507_p1;
        empty_reg_2434 <= empty_fu_1407_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv230_udiv_cast_reg_1689[4 : 0] <= indvars_iv230_udiv_cast_fu_790_p1[4 : 0];
        indvars_iv230_udiv_reg_1680 <= {{jj_fu_134[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_load_10_reg_2034 <= m2_0_q1;
        m2_0_load_11_reg_2044 <= m2_0_q0;
        m2_1_load_10_reg_2039 <= m2_1_q1;
        m2_1_load_11_reg_2049 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_load_12_reg_2074 <= m2_0_q1;
        m2_0_load_13_reg_2084 <= m2_0_q0;
        m2_1_load_12_reg_2079 <= m2_1_q1;
        m2_1_load_13_reg_2089 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_0_load_14_reg_2114 <= m2_0_q1;
        m2_0_load_15_reg_2124 <= m2_0_q0;
        m2_1_load_14_reg_2119 <= m2_1_q1;
        m2_1_load_15_reg_2129 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_0_load_16_reg_2154 <= m2_0_q1;
        m2_0_load_17_reg_2164 <= m2_0_q0;
        m2_1_load_16_reg_2159 <= m2_1_q1;
        m2_1_load_17_reg_2169 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_0_load_18_reg_2194 <= m2_0_q1;
        m2_0_load_19_reg_2204 <= m2_0_q0;
        m2_1_load_18_reg_2199 <= m2_1_q1;
        m2_1_load_19_reg_2209 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_load_1_reg_1789 <= m2_0_q0;
        m2_0_load_reg_1779 <= m2_0_q1;
        m2_1_load_1_reg_1794 <= m2_1_q0;
        m2_1_load_reg_1784 <= m2_1_q1;
        tmp_5_cast_reg_1799[2 : 0] <= tmp_5_cast_fu_886_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_0_load_20_reg_2234 <= m2_0_q1;
        m2_0_load_21_reg_2244 <= m2_0_q0;
        m2_1_load_20_reg_2239 <= m2_1_q1;
        m2_1_load_21_reg_2249 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_0_load_22_reg_2274 <= m2_0_q1;
        m2_0_load_23_reg_2284 <= m2_0_q0;
        m2_1_load_22_reg_2279 <= m2_1_q1;
        m2_1_load_23_reg_2289 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_0_load_24_reg_2314 <= m2_0_q1;
        m2_0_load_25_reg_2324 <= m2_0_q0;
        m2_1_load_24_reg_2319 <= m2_1_q1;
        m2_1_load_25_reg_2329 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_0_load_26_reg_2354 <= m2_0_q1;
        m2_0_load_27_reg_2364 <= m2_0_q0;
        m2_1_load_26_reg_2359 <= m2_1_q1;
        m2_1_load_27_reg_2369 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_0_load_28_reg_2394 <= m2_0_q1;
        m2_0_load_29_reg_2404 <= m2_0_q0;
        m2_1_load_28_reg_2399 <= m2_1_q1;
        m2_1_load_29_reg_2409 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_load_2_reg_1829 <= m2_0_q1;
        m2_0_load_3_reg_1839 <= m2_0_q0;
        m2_1_load_2_reg_1834 <= m2_1_q1;
        m2_1_load_3_reg_1844 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_load_4_reg_1869 <= m2_0_q1;
        m2_0_load_5_reg_1879 <= m2_0_q0;
        m2_1_load_4_reg_1874 <= m2_1_q1;
        m2_1_load_5_reg_1884 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_load_6_reg_1930 <= m2_0_q1;
        m2_0_load_7_reg_1940 <= m2_0_q0;
        m2_1_load_6_reg_1935 <= m2_1_q1;
        m2_1_load_7_reg_1945 <= m2_1_q0;
        tmp_10_reg_1950 <= {{kk_reg_668[5:2]}};
        tmp_1_reg_1909 <= {{kk_reg_668[5:3]}};
        tmp_79_reg_1981 <= kk_reg_668[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_load_8_reg_1994 <= m2_0_q1;
        m2_0_load_9_reg_2004 <= m2_0_q0;
        m2_1_load_8_reg_1999 <= m2_1_q1;
        m2_1_load_9_reg_2009 <= m2_1_q0;
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
    if (((tmp_74_fu_772_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_74_fu_772_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_0_address0_local = p_cast31_fu_1401_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_0_address0_local = p_cast29_fu_1368_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_0_address0_local = p_cast28_fu_1338_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_0_address0_local = p_cast26_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_0_address0_local = p_cast24_fu_1275_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_0_address0_local = p_cast22_fu_1236_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_0_address0_local = p_cast20_fu_1200_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_0_address0_local = p_cast18_fu_1165_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_address0_local = p_cast16_fu_1133_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_address0_local = p_cast14_fu_1100_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_address0_local = p_cast12_fu_1070_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_address0_local = p_cast10_fu_1029_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address0_local = p_cast8_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address0_local = p_cast6_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address0_local = p_cast4_fu_914_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address0_local = p_cast2_fu_848_p1;
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_0_address1_local = p_cast30_fu_1385_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_0_address1_local = add_ln23_cast_fu_1352_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_0_address1_local = p_cast27_fu_1322_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_0_address1_local = p_cast25_fu_1289_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_0_address1_local = p_cast23_fu_1256_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_0_address1_local = p_cast21_fu_1217_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_0_address1_local = p_cast19_fu_1183_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_0_address1_local = p_cast17_fu_1148_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_address1_local = p_cast15_fu_1117_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_address1_local = p_cast13_fu_1084_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_address1_local = p_cast11_fu_1054_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_address1_local = p_cast9_fu_1012_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address1_local = p_cast7_fu_961_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address1_local = p_cast5_fu_928_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address1_local = p_cast3_fu_899_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address1_local = p_cast_fu_819_p1;
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
        m2_1_address0_local = p_cast31_fu_1401_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_1_address0_local = p_cast29_fu_1368_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_1_address0_local = p_cast28_fu_1338_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_1_address0_local = p_cast26_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_1_address0_local = p_cast24_fu_1275_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_1_address0_local = p_cast22_fu_1236_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_1_address0_local = p_cast20_fu_1200_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_1_address0_local = p_cast18_fu_1165_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_1_address0_local = p_cast16_fu_1133_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_1_address0_local = p_cast14_fu_1100_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_1_address0_local = p_cast12_fu_1070_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_1_address0_local = p_cast10_fu_1029_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address0_local = p_cast8_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address0_local = p_cast6_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address0_local = p_cast4_fu_914_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address0_local = p_cast2_fu_848_p1;
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_1_address1_local = p_cast30_fu_1385_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_1_address1_local = add_ln23_cast_fu_1352_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_1_address1_local = p_cast27_fu_1322_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_1_address1_local = p_cast25_fu_1289_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_1_address1_local = p_cast23_fu_1256_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_1_address1_local = p_cast21_fu_1217_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_1_address1_local = p_cast19_fu_1183_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_1_address1_local = p_cast17_fu_1148_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_1_address1_local = p_cast15_fu_1117_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_1_address1_local = p_cast13_fu_1084_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_1_address1_local = p_cast11_fu_1054_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_1_address1_local = p_cast9_fu_1012_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address1_local = p_cast7_fu_961_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address1_local = p_cast5_fu_928_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address1_local = p_cast3_fu_899_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address1_local = p_cast_fu_819_p1;
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
            if (((tmp_74_fu_772_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_75_fu_794_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign add_ln15_fu_876_p2 = (jj_fu_134 + 7'd8);
assign add_ln16_fu_870_p2 = (kk_reg_668 + 7'd8);
assign add_ln23_cast_fu_1352_p1 = or_ln1_fu_1344_p4;
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
assign empty_100_fu_1511_p1 = m2_0_load_13_reg_2084;
assign empty_101_fu_1515_p1 = m2_1_load_13_reg_2089;
assign empty_102_fu_1519_p1 = m2_0_load_14_reg_2114;
assign empty_103_fu_1523_p1 = m2_1_load_14_reg_2119;
assign empty_104_fu_1527_p1 = m2_0_load_15_reg_2124;
assign empty_105_fu_1531_p1 = m2_1_load_15_reg_2129;
assign empty_106_fu_1535_p1 = m2_0_load_16_reg_2154;
assign empty_107_fu_1539_p1 = m2_1_load_16_reg_2159;
assign empty_108_fu_1543_p1 = m2_0_load_17_reg_2164;
assign empty_109_fu_1547_p1 = m2_1_load_17_reg_2169;
assign empty_110_fu_1551_p1 = m2_0_load_18_reg_2194;
assign empty_111_fu_1555_p1 = m2_1_load_18_reg_2199;
assign empty_112_fu_1559_p1 = m2_0_load_19_reg_2204;
assign empty_113_fu_1563_p1 = m2_1_load_19_reg_2209;
assign empty_114_fu_1567_p1 = m2_0_load_20_reg_2234;
assign empty_115_fu_1571_p1 = m2_1_load_20_reg_2239;
assign empty_116_fu_1575_p1 = m2_0_load_21_reg_2244;
assign empty_117_fu_1579_p1 = m2_1_load_21_reg_2249;
assign empty_118_fu_1583_p1 = m2_0_load_22_reg_2274;
assign empty_119_fu_1587_p1 = m2_1_load_22_reg_2279;
assign empty_120_fu_1591_p1 = m2_0_load_23_reg_2284;
assign empty_121_fu_1595_p1 = m2_1_load_23_reg_2289;
assign empty_122_fu_1599_p1 = m2_0_load_24_reg_2314;
assign empty_123_fu_1603_p1 = m2_1_load_24_reg_2319;
assign empty_124_fu_1607_p1 = m2_0_load_25_reg_2324;
assign empty_125_fu_1611_p1 = m2_1_load_25_reg_2329;
assign empty_126_fu_1615_p1 = m2_0_load_26_reg_2354;
assign empty_127_fu_1619_p1 = m2_1_load_26_reg_2359;
assign empty_128_fu_1623_p1 = m2_0_load_27_reg_2364;
assign empty_129_fu_1627_p1 = m2_1_load_27_reg_2369;
assign empty_130_fu_1631_p1 = m2_0_load_28_reg_2394;
assign empty_131_fu_1635_p1 = m2_1_load_28_reg_2399;
assign empty_132_fu_1639_p1 = m2_0_load_29_reg_2404;
assign empty_133_fu_1643_p1 = m2_1_load_29_reg_2409;
assign empty_134_fu_1647_p1 = m2_0_q1;
assign empty_135_fu_1652_p1 = m2_1_q1;
assign empty_136_fu_1657_p1 = m2_0_q0;
assign empty_137_fu_1662_p1 = m2_1_q0;
assign empty_75_fu_1411_p1 = m2_1_load_reg_1784;
assign empty_76_fu_1415_p1 = m2_0_load_1_reg_1789;
assign empty_77_fu_1419_p1 = m2_1_load_1_reg_1794;
assign empty_78_fu_1423_p1 = m2_0_load_2_reg_1829;
assign empty_79_fu_1427_p1 = m2_1_load_2_reg_1834;
assign empty_80_fu_1431_p1 = m2_0_load_3_reg_1839;
assign empty_81_fu_1435_p1 = m2_1_load_3_reg_1844;
assign empty_82_fu_1439_p1 = m2_0_load_4_reg_1869;
assign empty_83_fu_1443_p1 = m2_1_load_4_reg_1874;
assign empty_84_fu_1447_p1 = m2_0_load_5_reg_1879;
assign empty_85_fu_1451_p1 = m2_1_load_5_reg_1884;
assign empty_86_fu_1455_p1 = m2_0_load_6_reg_1930;
assign empty_87_fu_1459_p1 = m2_1_load_6_reg_1935;
assign empty_88_fu_1463_p1 = m2_0_load_7_reg_1940;
assign empty_89_fu_1467_p1 = m2_1_load_7_reg_1945;
assign empty_90_fu_1471_p1 = m2_0_load_8_reg_1994;
assign empty_91_fu_1475_p1 = m2_1_load_8_reg_1999;
assign empty_92_fu_1479_p1 = m2_0_load_9_reg_2004;
assign empty_93_fu_1483_p1 = m2_1_load_9_reg_2009;
assign empty_94_fu_1487_p1 = m2_0_load_10_reg_2034;
assign empty_95_fu_1491_p1 = m2_1_load_10_reg_2039;
assign empty_96_fu_1495_p1 = m2_0_load_11_reg_2044;
assign empty_97_fu_1499_p1 = m2_1_load_11_reg_2049;
assign empty_98_fu_1503_p1 = m2_0_load_12_reg_2074;
assign empty_99_fu_1507_p1 = m2_1_load_12_reg_2079;
assign empty_fu_1407_p1 = m2_0_load_reg_1779;
assign grp_bbgemm_Pipeline_loopi_fu_680_ap_start = grp_bbgemm_Pipeline_loopi_fu_680_ap_start_reg;
assign indvars_iv230_udiv_cast_fu_790_p1 = indvars_iv230_udiv_fu_780_p4;
assign indvars_iv230_udiv_fu_780_p4 = {{jj_fu_134[5:1]}};
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
assign or_ln1_fu_1344_p4 = {{{tmp_1_reg_1909}, {3'd7}}, {indvars_iv230_udiv_reg_1680}};
assign or_ln_fu_812_p3 = {{tmp_fu_802_p4}, {indvars_iv230_udiv_cast_reg_1689}};
assign p_cast10_fu_1029_p1 = tmp_12_fu_1018_p5;
assign p_cast11_fu_1054_p1 = tmp_13_fu_1043_p6;
assign p_cast12_fu_1070_p1 = tmp_14_fu_1060_p5;
assign p_cast13_fu_1084_p1 = tmp_15_fu_1076_p4;
assign p_cast14_fu_1100_p1 = tmp_16_fu_1090_p5;
assign p_cast15_fu_1117_p1 = tmp_17_fu_1106_p6;
assign p_cast16_fu_1133_p1 = tmp_18_fu_1123_p5;
assign p_cast17_fu_1148_p1 = tmp_19_fu_1139_p5;
assign p_cast18_fu_1165_p1 = tmp_20_fu_1154_p6;
assign p_cast19_fu_1183_p1 = tmp_21_fu_1171_p7;
assign p_cast20_fu_1200_p1 = tmp_22_fu_1189_p6;
assign p_cast21_fu_1217_p1 = tmp_23_fu_1206_p6;
assign p_cast22_fu_1236_p1 = tmp_24_fu_1223_p7;
assign p_cast23_fu_1256_p1 = tmp_25_fu_1242_p8;
assign p_cast24_fu_1275_p1 = tmp_26_fu_1262_p7;
assign p_cast25_fu_1289_p1 = tmp_27_fu_1281_p4;
assign p_cast26_fu_1305_p1 = tmp_28_fu_1295_p5;
assign p_cast27_fu_1322_p1 = tmp_29_fu_1311_p6;
assign p_cast28_fu_1338_p1 = tmp_30_fu_1328_p5;
assign p_cast29_fu_1368_p1 = tmp_31_fu_1358_p5;
assign p_cast2_fu_848_p1 = tmp_4_fu_838_p4;
assign p_cast30_fu_1385_p1 = tmp_32_fu_1374_p6;
assign p_cast31_fu_1401_p1 = tmp_33_fu_1391_p5;
assign p_cast3_fu_899_p1 = tmp_7_fu_889_p5;
assign p_cast4_fu_914_p1 = tmp_9_fu_905_p4;
assign p_cast5_fu_928_p1 = tmp_s_fu_920_p4;
assign p_cast6_fu_944_p1 = tmp_2_fu_934_p5;
assign p_cast7_fu_961_p1 = tmp_6_fu_950_p6;
assign p_cast8_fu_977_p1 = tmp_8_fu_967_p5;
assign p_cast9_fu_1012_p1 = tmp_11_fu_1003_p4;
assign p_cast_fu_819_p1 = or_ln_fu_812_p3;
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
assign tmp_10_fu_993_p4 = {{kk_reg_668[5:2]}};
assign tmp_11_fu_1003_p4 = {{{tmp_10_fu_993_p4}, {1'd1}}, {indvars_iv230_udiv_cast_reg_1689}};
assign tmp_12_fu_1018_p5 = {{{{tmp_10_fu_993_p4}, {1'd1}}, {tmp_3_cast_reg_1730}}, {1'd1}};
assign tmp_13_fu_1043_p6 = {{{{{tmp_10_reg_1950}, {1'd1}}, {tmp_5_cast_reg_1799}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_14_fu_1060_p5 = {{{{tmp_10_reg_1950}, {1'd1}}, {tmp_5_cast_reg_1799}}, {2'd3}};
assign tmp_15_fu_1076_p4 = {{{tmp_10_reg_1950}, {2'd3}}, {indvars_iv230_udiv_reg_1680}};
assign tmp_16_fu_1090_p5 = {{{{tmp_10_reg_1950}, {2'd3}}, {tmp_3_reg_1721}}, {1'd1}};
assign tmp_17_fu_1106_p6 = {{{{{tmp_10_reg_1950}, {2'd3}}, {tmp_5_reg_1747}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_18_fu_1123_p5 = {{{{tmp_10_reg_1950}, {2'd3}}, {tmp_5_reg_1747}}, {2'd3}};
assign tmp_19_fu_1139_p5 = {{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {indvars_iv230_udiv_cast_reg_1689}};
assign tmp_20_fu_1154_p6 = {{{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {tmp_3_cast_reg_1730}}, {1'd1}};
assign tmp_21_fu_1171_p7 = {{{{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {tmp_5_cast_reg_1799}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_22_fu_1189_p6 = {{{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {tmp_5_cast_reg_1799}}, {2'd3}};
assign tmp_23_fu_1206_p6 = {{{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {1'd1}}, {indvars_iv230_udiv_reg_1680}};
assign tmp_24_fu_1223_p7 = {{{{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {1'd1}}, {tmp_3_reg_1721}}, {1'd1}};
assign tmp_25_fu_1242_p8 = {{{{{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {1'd1}}, {tmp_5_reg_1747}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_26_fu_1262_p7 = {{{{{{tmp_1_reg_1909}, {1'd1}}, {tmp_79_reg_1981}}, {1'd1}}, {tmp_5_reg_1747}}, {2'd3}};
assign tmp_27_fu_1281_p4 = {{{tmp_1_reg_1909}, {2'd3}}, {indvars_iv230_udiv_cast_reg_1689}};
assign tmp_28_fu_1295_p5 = {{{{tmp_1_reg_1909}, {2'd3}}, {tmp_3_cast_reg_1730}}, {1'd1}};
assign tmp_29_fu_1311_p6 = {{{{{tmp_1_reg_1909}, {2'd3}}, {tmp_5_cast_reg_1799}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_2_fu_934_p5 = {{{{tmp_reg_1700}, {1'd1}}, {tmp_3_reg_1721}}, {1'd1}};
assign tmp_30_fu_1328_p5 = {{{{tmp_1_reg_1909}, {2'd3}}, {tmp_5_cast_reg_1799}}, {2'd3}};
assign tmp_31_fu_1358_p5 = {{{{tmp_1_reg_1909}, {3'd7}}, {tmp_3_reg_1721}}, {1'd1}};
assign tmp_32_fu_1374_p6 = {{{{{tmp_1_reg_1909}, {3'd7}}, {tmp_5_reg_1747}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_33_fu_1391_p5 = {{{{tmp_1_reg_1909}, {3'd7}}, {tmp_5_reg_1747}}, {2'd3}};
assign tmp_3_cast_fu_834_p1 = tmp_3_fu_825_p4;
assign tmp_3_fu_825_p4 = {{jj_fu_134[5:2]}};
assign tmp_4_fu_838_p4 = {{{tmp_fu_802_p4}, {tmp_3_cast_fu_834_p1}}, {1'd1}};
assign tmp_5_cast_fu_886_p1 = tmp_5_reg_1747;
assign tmp_6_fu_950_p6 = {{{{{tmp_reg_1700}, {1'd1}}, {tmp_5_reg_1747}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_74_fu_772_p3 = jj_fu_134[32'd6];
assign tmp_75_fu_794_p3 = kk_reg_668[32'd6];
assign tmp_7_fu_889_p5 = {{{{tmp_reg_1700}, {tmp_5_cast_fu_886_p1}}, {1'd1}}, {tmp_77_reg_1761}};
assign tmp_8_fu_967_p5 = {{{{tmp_reg_1700}, {1'd1}}, {tmp_5_reg_1747}}, {2'd3}};
assign tmp_9_fu_905_p4 = {{{tmp_reg_1700}, {tmp_5_cast_fu_886_p1}}, {2'd3}};
assign tmp_fu_802_p4 = {{kk_reg_668[5:1]}};
assign tmp_s_fu_920_p4 = {{{tmp_reg_1700}, {1'd1}}, {indvars_iv230_udiv_reg_1680}};
always @ (posedge ap_clk) begin
    indvars_iv230_udiv_cast_reg_1689[5] <= 1'b0;
    tmp_3_cast_reg_1730[4] <= 1'b0;
    tmp_5_cast_reg_1799[3] <= 1'b0;
end
endmodule 