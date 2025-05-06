
module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_0_address1,m1_0_ce1,m1_0_q1,m1_1_address0,m1_1_ce0,m1_1_q0,m1_1_address1,m1_1_ce1,m1_1_q1,m1_2_address0,m1_2_ce0,m1_2_q0,m1_2_address1,m1_2_ce1,m1_2_q1,m1_3_address0,m1_3_ce0,m1_3_q0,m1_3_address1,m1_3_ce1,m1_3_q1,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_0_address1,prod_0_ce1,prod_0_we1,prod_0_d1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_1_address1,prod_1_ce1,prod_1_we1,prod_1_d1,prod_1_q1,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_2_address1,prod_2_ce1,prod_2_we1,prod_2_d1,prod_2_q1,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0,prod_3_address1,prod_3_ce1,prod_3_we1,prod_3_d1,prod_3_q1);  
parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [9:0] m1_0_address1;
output   m1_0_ce1;
input  [63:0] m1_0_q1;
output  [9:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [9:0] m1_1_address1;
output   m1_1_ce1;
input  [63:0] m1_1_q1;
output  [9:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [9:0] m1_2_address1;
output   m1_2_ce1;
input  [63:0] m1_2_q1;
output  [9:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [9:0] m1_3_address1;
output   m1_3_ce1;
input  [63:0] m1_3_q1;
output  [9:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [9:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [9:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [9:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [9:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [9:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [9:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [9:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
output  [9:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [9:0] prod_0_address1;
output   prod_0_ce1;
output   prod_0_we1;
output  [63:0] prod_0_d1;
input  [63:0] prod_0_q1;
output  [9:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [9:0] prod_1_address1;
output   prod_1_ce1;
output   prod_1_we1;
output  [63:0] prod_1_d1;
input  [63:0] prod_1_q1;
output  [9:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [9:0] prod_2_address1;
output   prod_2_ce1;
output   prod_2_we1;
output  [63:0] prod_2_d1;
input  [63:0] prod_2_q1;
output  [9:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
output  [9:0] prod_3_address1;
output   prod_3_ce1;
output   prod_3_we1;
output  [63:0] prod_3_d1;
input  [63:0] prod_3_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] indvars_iv230_udiv_fu_775_p4;
reg   [3:0] indvars_iv230_udiv_reg_1402;
wire    ap_CS_fsm_state2;
wire   [5:0] indvars_iv230_udiv_cast_fu_785_p1;
reg   [5:0] indvars_iv230_udiv_cast_reg_1412;
wire   [3:0] tmp_fu_797_p4;
reg   [3:0] tmp_reg_1421;
wire    ap_CS_fsm_state3;
reg   [2:0] tmp_1_reg_1432;
wire   [2:0] tmp_3_fu_832_p4;
reg   [2:0] tmp_3_reg_1465;
wire   [4:0] tmp_3_cast_fu_841_p1;
reg   [4:0] tmp_3_cast_reg_1475;
wire   [6:0] add_ln16_fu_863_p2;
reg   [6:0] add_ln16_reg_1500;
reg   [63:0] m2_0_load_reg_1505;
wire    ap_CS_fsm_state4;
reg   [63:0] m2_1_load_reg_1510;
reg   [63:0] m2_2_load_reg_1515;
reg   [63:0] m2_3_load_reg_1520;
reg   [63:0] m2_0_load_1_reg_1525;
reg   [63:0] m2_1_load_1_reg_1530;
reg   [63:0] m2_2_load_1_reg_1535;
reg   [63:0] m2_3_load_1_reg_1540;
reg   [63:0] m2_0_load_2_reg_1585;
wire    ap_CS_fsm_state5;
reg   [63:0] m2_1_load_2_reg_1590;
reg   [63:0] m2_2_load_2_reg_1595;
reg   [63:0] m2_3_load_2_reg_1600;
reg   [63:0] m2_0_load_3_reg_1605;
reg   [63:0] m2_1_load_3_reg_1610;
reg   [63:0] m2_2_load_3_reg_1615;
reg   [63:0] m2_3_load_3_reg_1620;
wire   [4:0] indvars_iv230_udiv_cast5_fu_913_p1;
reg   [4:0] indvars_iv230_udiv_cast5_reg_1625;
wire   [3:0] tmp_3_cast6_fu_933_p1;
reg   [3:0] tmp_3_cast6_reg_1650;
reg   [63:0] m2_0_load_4_reg_1675;
wire    ap_CS_fsm_state6;
reg   [63:0] m2_1_load_4_reg_1680;
reg   [63:0] m2_2_load_4_reg_1685;
reg   [63:0] m2_3_load_4_reg_1690;
reg   [63:0] m2_0_load_5_reg_1695;
reg   [63:0] m2_1_load_5_reg_1700;
reg   [63:0] m2_2_load_5_reg_1705;
reg   [63:0] m2_3_load_5_reg_1710;
reg   [63:0] m2_0_load_6_reg_1755;
wire    ap_CS_fsm_state7;
reg   [63:0] m2_1_load_6_reg_1760;
reg   [63:0] m2_2_load_6_reg_1765;
reg   [63:0] m2_3_load_6_reg_1770;
reg   [63:0] m2_0_load_7_reg_1775;
reg   [63:0] m2_1_load_7_reg_1780;
reg   [63:0] m2_2_load_7_reg_1785;
reg   [63:0] m2_3_load_7_reg_1790;
reg   [63:0] m2_0_load_8_reg_1835;
wire    ap_CS_fsm_state8;
reg   [63:0] m2_1_load_8_reg_1840;
reg   [63:0] m2_2_load_8_reg_1845;
reg   [63:0] m2_3_load_8_reg_1850;
reg   [63:0] m2_0_load_9_reg_1855;
reg   [63:0] m2_1_load_9_reg_1860;
reg   [63:0] m2_2_load_9_reg_1865;
reg   [63:0] m2_3_load_9_reg_1870;
reg   [63:0] m2_0_load_10_reg_1915;
wire    ap_CS_fsm_state9;
reg   [63:0] m2_1_load_10_reg_1920;
reg   [63:0] m2_2_load_10_reg_1925;
reg   [63:0] m2_3_load_10_reg_1930;
reg   [63:0] m2_0_load_11_reg_1935;
reg   [63:0] m2_1_load_11_reg_1940;
reg   [63:0] m2_2_load_11_reg_1945;
reg   [63:0] m2_3_load_11_reg_1950;
reg   [63:0] m2_0_load_12_reg_1995;
wire    ap_CS_fsm_state10;
reg   [63:0] m2_1_load_12_reg_2000;
reg   [63:0] m2_2_load_12_reg_2005;
reg   [63:0] m2_3_load_12_reg_2010;
reg   [63:0] m2_0_load_13_reg_2015;
reg   [63:0] m2_1_load_13_reg_2020;
reg   [63:0] m2_2_load_13_reg_2025;
reg   [63:0] m2_3_load_13_reg_2030;
wire   [63:0] empty_fu_1125_p1;
reg   [63:0] empty_reg_2075;
wire    ap_CS_fsm_state11;
wire   [63:0] empty_73_fu_1129_p1;
reg   [63:0] empty_73_reg_2080;
wire   [63:0] empty_74_fu_1133_p1;
reg   [63:0] empty_74_reg_2085;
wire   [63:0] empty_75_fu_1137_p1;
reg   [63:0] empty_75_reg_2090;
wire   [63:0] empty_76_fu_1141_p1;
reg   [63:0] empty_76_reg_2095;
wire   [63:0] empty_77_fu_1145_p1;
reg   [63:0] empty_77_reg_2100;
wire   [63:0] empty_78_fu_1149_p1;
reg   [63:0] empty_78_reg_2105;
wire   [63:0] empty_79_fu_1153_p1;
reg   [63:0] empty_79_reg_2110;
wire   [63:0] empty_80_fu_1157_p1;
reg   [63:0] empty_80_reg_2115;
wire   [63:0] empty_81_fu_1161_p1;
reg   [63:0] empty_81_reg_2120;
wire   [63:0] empty_82_fu_1165_p1;
reg   [63:0] empty_82_reg_2125;
wire   [63:0] empty_83_fu_1169_p1;
reg   [63:0] empty_83_reg_2130;
wire   [63:0] empty_84_fu_1173_p1;
reg   [63:0] empty_84_reg_2135;
wire   [63:0] empty_85_fu_1177_p1;
reg   [63:0] empty_85_reg_2140;
wire   [63:0] empty_86_fu_1181_p1;
reg   [63:0] empty_86_reg_2145;
wire   [63:0] empty_87_fu_1185_p1;
reg   [63:0] empty_87_reg_2150;
wire   [63:0] empty_88_fu_1189_p1;
reg   [63:0] empty_88_reg_2155;
wire   [63:0] empty_89_fu_1193_p1;
reg   [63:0] empty_89_reg_2160;
wire   [63:0] empty_90_fu_1197_p1;
reg   [63:0] empty_90_reg_2165;
wire   [63:0] empty_91_fu_1201_p1;
reg   [63:0] empty_91_reg_2170;
wire   [63:0] empty_92_fu_1205_p1;
reg   [63:0] empty_92_reg_2175;
wire   [63:0] empty_93_fu_1209_p1;
reg   [63:0] empty_93_reg_2180;
wire   [63:0] empty_94_fu_1213_p1;
reg   [63:0] empty_94_reg_2185;
wire   [63:0] empty_95_fu_1217_p1;
reg   [63:0] empty_95_reg_2190;
wire   [63:0] empty_96_fu_1221_p1;
reg   [63:0] empty_96_reg_2195;
wire   [63:0] empty_97_fu_1225_p1;
reg   [63:0] empty_97_reg_2200;
wire   [63:0] empty_98_fu_1229_p1;
reg   [63:0] empty_98_reg_2205;
wire   [63:0] empty_99_fu_1233_p1;
reg   [63:0] empty_99_reg_2210;
wire   [63:0] empty_100_fu_1237_p1;
reg   [63:0] empty_100_reg_2215;
wire   [63:0] empty_101_fu_1241_p1;
reg   [63:0] empty_101_reg_2220;
wire   [63:0] empty_102_fu_1245_p1;
reg   [63:0] empty_102_reg_2225;
wire   [63:0] empty_103_fu_1249_p1;
reg   [63:0] empty_103_reg_2230;
wire   [63:0] empty_104_fu_1253_p1;
reg   [63:0] empty_104_reg_2235;
wire   [63:0] empty_105_fu_1257_p1;
reg   [63:0] empty_105_reg_2240;
wire   [63:0] empty_106_fu_1261_p1;
reg   [63:0] empty_106_reg_2245;
wire   [63:0] empty_107_fu_1265_p1;
reg   [63:0] empty_107_reg_2250;
wire   [63:0] empty_108_fu_1269_p1;
reg   [63:0] empty_108_reg_2255;
wire   [63:0] empty_109_fu_1273_p1;
reg   [63:0] empty_109_reg_2260;
wire   [63:0] empty_110_fu_1277_p1;
reg   [63:0] empty_110_reg_2265;
wire   [63:0] empty_111_fu_1281_p1;
reg   [63:0] empty_111_reg_2270;
wire   [63:0] empty_112_fu_1285_p1;
reg   [63:0] empty_112_reg_2275;
wire   [63:0] empty_113_fu_1289_p1;
reg   [63:0] empty_113_reg_2280;
wire   [63:0] empty_114_fu_1293_p1;
reg   [63:0] empty_114_reg_2285;
wire   [63:0] empty_115_fu_1297_p1;
reg   [63:0] empty_115_reg_2290;
wire   [63:0] empty_116_fu_1301_p1;
reg   [63:0] empty_116_reg_2295;
wire   [63:0] empty_117_fu_1305_p1;
reg   [63:0] empty_117_reg_2300;
wire   [63:0] empty_118_fu_1309_p1;
reg   [63:0] empty_118_reg_2305;
wire   [63:0] empty_119_fu_1313_p1;
reg   [63:0] empty_119_reg_2310;
wire   [63:0] empty_120_fu_1317_p1;
reg   [63:0] empty_120_reg_2315;
wire   [63:0] empty_121_fu_1321_p1;
reg   [63:0] empty_121_reg_2320;
wire   [63:0] empty_122_fu_1325_p1;
reg   [63:0] empty_122_reg_2325;
wire   [63:0] empty_123_fu_1329_p1;
reg   [63:0] empty_123_reg_2330;
wire   [63:0] empty_124_fu_1333_p1;
reg   [63:0] empty_124_reg_2335;
wire   [63:0] empty_125_fu_1337_p1;
reg   [63:0] empty_125_reg_2340;
wire   [63:0] empty_126_fu_1341_p1;
reg   [63:0] empty_126_reg_2345;
wire   [63:0] empty_127_fu_1345_p1;
reg   [63:0] empty_127_reg_2350;
wire   [63:0] empty_128_fu_1349_p1;
reg   [63:0] empty_128_reg_2355;
wire   [63:0] empty_129_fu_1354_p1;
reg   [63:0] empty_129_reg_2360;
wire   [63:0] empty_130_fu_1359_p1;
reg   [63:0] empty_130_reg_2365;
wire   [63:0] empty_131_fu_1364_p1;
reg   [63:0] empty_131_reg_2370;
wire   [63:0] empty_132_fu_1369_p1;
reg   [63:0] empty_132_reg_2375;
wire   [63:0] empty_133_fu_1374_p1;
reg   [63:0] empty_133_reg_2380;
wire   [63:0] empty_134_fu_1379_p1;
reg   [63:0] empty_134_reg_2385;
wire   [63:0] empty_135_fu_1384_p1;
reg   [63:0] empty_135_reg_2390;
wire    grp_bbgemm_Pipeline_loopi_fu_671_ap_start;
wire    grp_bbgemm_Pipeline_loopi_fu_671_ap_done;
wire    grp_bbgemm_Pipeline_loopi_fu_671_ap_idle;
wire    grp_bbgemm_Pipeline_loopi_fu_671_ap_ready;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_3_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_3_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_3_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_3_d0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_3_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_3_ce1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_3_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_3_d1;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_2_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_2_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_2_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_2_d0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_2_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_2_ce1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_2_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_2_d1;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_1_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_1_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_1_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_1_d0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_1_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_1_ce1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_1_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_1_d1;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_0_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_0_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_0_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_0_d0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_0_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_0_ce1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_prod_0_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_671_prod_0_d1;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_0_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_0_ce0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_0_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_0_ce1;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_1_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_1_ce0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_1_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_1_ce1;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_2_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_2_ce0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_2_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_2_ce1;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_3_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_3_ce0;
wire   [9:0] grp_bbgemm_Pipeline_loopi_fu_671_m1_3_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_671_m1_3_ce1;
reg   [6:0] kk_reg_660;
wire   [0:0] tmp_69_fu_767_p3;
wire    ap_CS_fsm_state12;
reg    grp_bbgemm_Pipeline_loopi_fu_671_ap_start_reg;
wire   [63:0] p_cast_fu_824_p1;
wire   [0:0] tmp_70_fu_789_p3;
wire   [63:0] p_cast2_fu_855_p1;
wire   [63:0] p_cast3_fu_887_p1;
wire   [63:0] p_cast4_fu_905_p1;
wire   [63:0] p_cast5_fu_925_p1;
wire   [63:0] p_cast6_fu_947_p1;
wire   [63:0] p_cast7_fu_963_p1;
wire   [63:0] p_cast8_fu_981_p1;
wire   [63:0] p_cast9_fu_997_p1;
wire   [63:0] p_cast10_fu_1015_p1;
wire   [63:0] p_cast11_fu_1031_p1;
wire   [63:0] p_cast12_fu_1049_p1;
wire   [63:0] p_cast13_fu_1065_p1;
wire   [63:0] p_cast14_fu_1083_p1;
wire   [63:0] add_ln23_cast_fu_1099_p1;
wire   [63:0] p_cast15_fu_1117_p1;
reg   [6:0] jj_fu_108;
wire   [6:0] add_ln15_fu_869_p2;
reg    m2_0_ce1_local;
reg   [9:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [9:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [9:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [9:0] m2_1_address0_local;
reg    m2_2_ce1_local;
reg   [9:0] m2_2_address1_local;
reg    m2_2_ce0_local;
reg   [9:0] m2_2_address0_local;
reg    m2_3_ce1_local;
reg   [9:0] m2_3_address1_local;
reg    m2_3_ce0_local;
reg   [9:0] m2_3_address0_local;
wire   [9:0] or_ln_fu_807_p3;
wire   [9:0] tmp_4_fu_845_p4;
wire   [9:0] tmp_6_fu_879_p4;
wire   [9:0] tmp_8_fu_895_p5;
wire   [9:0] tmp_s_fu_916_p4;
wire   [9:0] tmp_2_fu_936_p5;
wire   [9:0] tmp_5_fu_955_p4;
wire   [9:0] tmp_7_fu_971_p5;
wire   [9:0] tmp_9_fu_989_p4;
wire   [9:0] tmp_10_fu_1005_p5;
wire   [9:0] tmp_11_fu_1023_p4;
wire   [9:0] tmp_12_fu_1039_p5;
wire   [9:0] tmp_13_fu_1057_p4;
wire   [9:0] tmp_14_fu_1073_p5;
wire   [9:0] or_ln1_fu_1091_p4;
wire   [9:0] tmp_15_fu_1107_p5;
reg   [11:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_bbgemm_Pipeline_loopi_fu_671_ap_start_reg = 1'b0;
#0 jj_fu_108 = 7'd0;
end
bbgemm_bbgemm_Pipeline_loopi grp_bbgemm_Pipeline_loopi_fu_671(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_fu_671_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_fu_671_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_fu_671_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_fu_671_ap_ready),.prod_3_address0(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_address0),.prod_3_ce0(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_ce0),.prod_3_we0(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_we0),.prod_3_d0(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_d0),.prod_3_q0(prod_3_q0),.prod_3_address1(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_address1),.prod_3_ce1(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_ce1),.prod_3_we1(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_we1),.prod_3_d1(grp_bbgemm_Pipeline_loopi_fu_671_prod_3_d1),.prod_3_q1(prod_3_q1),.prod_2_address0(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_address0),.prod_2_ce0(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_ce0),.prod_2_we0(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_we0),.prod_2_d0(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_d0),.prod_2_q0(prod_2_q0),.prod_2_address1(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_address1),.prod_2_ce1(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_ce1),.prod_2_we1(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_we1),.prod_2_d1(grp_bbgemm_Pipeline_loopi_fu_671_prod_2_d1),.prod_2_q1(prod_2_q1),.prod_1_address0(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_address0),.prod_1_ce0(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_ce0),.prod_1_we0(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_we0),.prod_1_d0(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_d0),.prod_1_q0(prod_1_q0),.prod_1_address1(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_address1),.prod_1_ce1(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_ce1),.prod_1_we1(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_we1),.prod_1_d1(grp_bbgemm_Pipeline_loopi_fu_671_prod_1_d1),.prod_1_q1(prod_1_q1),.prod_0_address0(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_address0),.prod_0_ce0(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_ce0),.prod_0_we0(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_we0),.prod_0_d0(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_d0),.prod_0_q0(prod_0_q0),.prod_0_address1(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_address1),.prod_0_ce1(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_ce1),.prod_0_we1(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_we1),.prod_0_d1(grp_bbgemm_Pipeline_loopi_fu_671_prod_0_d1),.prod_0_q1(prod_0_q1),.tmp(tmp_reg_1421),.m1_0_address0(grp_bbgemm_Pipeline_loopi_fu_671_m1_0_address0),.m1_0_ce0(grp_bbgemm_Pipeline_loopi_fu_671_m1_0_ce0),.m1_0_q0(m1_0_q0),.m1_0_address1(grp_bbgemm_Pipeline_loopi_fu_671_m1_0_address1),.m1_0_ce1(grp_bbgemm_Pipeline_loopi_fu_671_m1_0_ce1),.m1_0_q1(m1_0_q1),.empty_10(empty_reg_2075),.indvars_iv230_udiv(indvars_iv230_udiv_reg_1402),.empty_11(empty_73_reg_2080),.empty_12(empty_74_reg_2085),.empty_13(empty_75_reg_2090),.empty_14(empty_76_reg_2095),.tmp_3(tmp_3_reg_1465),.empty_15(empty_77_reg_2100),.empty_16(empty_78_reg_2105),.empty_17(empty_79_reg_2110),.m1_1_address0(grp_bbgemm_Pipeline_loopi_fu_671_m1_1_address0),.m1_1_ce0(grp_bbgemm_Pipeline_loopi_fu_671_m1_1_ce0),.m1_1_q0(m1_1_q0),.m1_1_address1(grp_bbgemm_Pipeline_loopi_fu_671_m1_1_address1),.m1_1_ce1(grp_bbgemm_Pipeline_loopi_fu_671_m1_1_ce1),.m1_1_q1(m1_1_q1),.empty_18(empty_80_reg_2115),.empty_19(empty_81_reg_2120),.empty_20(empty_82_reg_2125),.empty_21(empty_83_reg_2130),.empty_22(empty_84_reg_2135),.empty_23(empty_85_reg_2140),.empty_24(empty_86_reg_2145),.empty_25(empty_87_reg_2150),.m1_2_address0(grp_bbgemm_Pipeline_loopi_fu_671_m1_2_address0),.m1_2_ce0(grp_bbgemm_Pipeline_loopi_fu_671_m1_2_ce0),.m1_2_q0(m1_2_q0),.m1_2_address1(grp_bbgemm_Pipeline_loopi_fu_671_m1_2_address1),.m1_2_ce1(grp_bbgemm_Pipeline_loopi_fu_671_m1_2_ce1),.m1_2_q1(m1_2_q1),.empty_26(empty_88_reg_2155),.empty_27(empty_89_reg_2160),.empty_28(empty_90_reg_2165),.empty_29(empty_91_reg_2170),.empty_30(empty_92_reg_2175),.empty_31(empty_93_reg_2180),.empty_32(empty_94_reg_2185),.empty_33(empty_95_reg_2190),.m1_3_address0(grp_bbgemm_Pipeline_loopi_fu_671_m1_3_address0),.m1_3_ce0(grp_bbgemm_Pipeline_loopi_fu_671_m1_3_ce0),.m1_3_q0(m1_3_q0),.m1_3_address1(grp_bbgemm_Pipeline_loopi_fu_671_m1_3_address1),.m1_3_ce1(grp_bbgemm_Pipeline_loopi_fu_671_m1_3_ce1),.m1_3_q1(m1_3_q1),.empty_34(empty_96_reg_2195),.empty_35(empty_97_reg_2200),.empty_36(empty_98_reg_2205),.empty_37(empty_99_reg_2210),.empty_38(empty_100_reg_2215),.empty_39(empty_101_reg_2220),.empty_40(empty_102_reg_2225),.empty_41(empty_103_reg_2230),.tmp_1(tmp_1_reg_1432),.empty_42(empty_104_reg_2235),.empty_43(empty_105_reg_2240),.empty_44(empty_106_reg_2245),.empty_45(empty_107_reg_2250),.empty_46(empty_108_reg_2255),.empty_47(empty_109_reg_2260),.empty_48(empty_110_reg_2265),.empty_49(empty_111_reg_2270),.empty_50(empty_112_reg_2275),.empty_51(empty_113_reg_2280),.empty_52(empty_114_reg_2285),.empty_53(empty_115_reg_2290),.empty_54(empty_116_reg_2295),.empty_55(empty_117_reg_2300),.empty_56(empty_118_reg_2305),.empty_57(empty_119_reg_2310),.empty_58(empty_120_reg_2315),.empty_59(empty_121_reg_2320),.empty_60(empty_122_reg_2325),.empty_61(empty_123_reg_2330),.empty_62(empty_124_reg_2335),.empty_63(empty_125_reg_2340),.empty_64(empty_126_reg_2345),.empty_65(empty_127_reg_2350),.empty_66(empty_128_reg_2355),.empty_67(empty_129_reg_2360),.empty_68(empty_130_reg_2365),.empty_69(empty_131_reg_2370),.empty_70(empty_132_reg_2375),.empty_71(empty_133_reg_2380),.empty_72(empty_134_reg_2385),.empty(empty_135_reg_2390));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bbgemm_Pipeline_loopi_fu_671_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_bbgemm_Pipeline_loopi_fu_671_ap_start_reg <= 1'b1;
        end else if ((grp_bbgemm_Pipeline_loopi_fu_671_ap_ready == 1'b1)) begin
            grp_bbgemm_Pipeline_loopi_fu_671_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        jj_fu_108 <= 7'd0;
    end else if (((tmp_70_fu_789_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_fu_108 <= add_ln15_fu_869_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_fu_671_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        kk_reg_660 <= add_ln16_reg_1500;
    end else if (((tmp_69_fu_767_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kk_reg_660 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_1500 <= add_ln16_fu_863_p2;
        tmp_1_reg_1432 <= {{kk_reg_660[5:3]}};
        tmp_3_cast_reg_1475[2 : 0] <= tmp_3_cast_fu_841_p1[2 : 0];
        tmp_3_reg_1465 <= {{jj_fu_108[5:3]}};
        tmp_reg_1421 <= {{kk_reg_660[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_100_reg_2215 <= empty_100_fu_1237_p1;
        empty_101_reg_2220 <= empty_101_fu_1241_p1;
        empty_102_reg_2225 <= empty_102_fu_1245_p1;
        empty_103_reg_2230 <= empty_103_fu_1249_p1;
        empty_104_reg_2235 <= empty_104_fu_1253_p1;
        empty_105_reg_2240 <= empty_105_fu_1257_p1;
        empty_106_reg_2245 <= empty_106_fu_1261_p1;
        empty_107_reg_2250 <= empty_107_fu_1265_p1;
        empty_108_reg_2255 <= empty_108_fu_1269_p1;
        empty_109_reg_2260 <= empty_109_fu_1273_p1;
        empty_110_reg_2265 <= empty_110_fu_1277_p1;
        empty_111_reg_2270 <= empty_111_fu_1281_p1;
        empty_112_reg_2275 <= empty_112_fu_1285_p1;
        empty_113_reg_2280 <= empty_113_fu_1289_p1;
        empty_114_reg_2285 <= empty_114_fu_1293_p1;
        empty_115_reg_2290 <= empty_115_fu_1297_p1;
        empty_116_reg_2295 <= empty_116_fu_1301_p1;
        empty_117_reg_2300 <= empty_117_fu_1305_p1;
        empty_118_reg_2305 <= empty_118_fu_1309_p1;
        empty_119_reg_2310 <= empty_119_fu_1313_p1;
        empty_120_reg_2315 <= empty_120_fu_1317_p1;
        empty_121_reg_2320 <= empty_121_fu_1321_p1;
        empty_122_reg_2325 <= empty_122_fu_1325_p1;
        empty_123_reg_2330 <= empty_123_fu_1329_p1;
        empty_124_reg_2335 <= empty_124_fu_1333_p1;
        empty_125_reg_2340 <= empty_125_fu_1337_p1;
        empty_126_reg_2345 <= empty_126_fu_1341_p1;
        empty_127_reg_2350 <= empty_127_fu_1345_p1;
        empty_128_reg_2355 <= empty_128_fu_1349_p1;
        empty_129_reg_2360 <= empty_129_fu_1354_p1;
        empty_130_reg_2365 <= empty_130_fu_1359_p1;
        empty_131_reg_2370 <= empty_131_fu_1364_p1;
        empty_132_reg_2375 <= empty_132_fu_1369_p1;
        empty_133_reg_2380 <= empty_133_fu_1374_p1;
        empty_134_reg_2385 <= empty_134_fu_1379_p1;
        empty_135_reg_2390 <= empty_135_fu_1384_p1;
        empty_73_reg_2080 <= empty_73_fu_1129_p1;
        empty_74_reg_2085 <= empty_74_fu_1133_p1;
        empty_75_reg_2090 <= empty_75_fu_1137_p1;
        empty_76_reg_2095 <= empty_76_fu_1141_p1;
        empty_77_reg_2100 <= empty_77_fu_1145_p1;
        empty_78_reg_2105 <= empty_78_fu_1149_p1;
        empty_79_reg_2110 <= empty_79_fu_1153_p1;
        empty_80_reg_2115 <= empty_80_fu_1157_p1;
        empty_81_reg_2120 <= empty_81_fu_1161_p1;
        empty_82_reg_2125 <= empty_82_fu_1165_p1;
        empty_83_reg_2130 <= empty_83_fu_1169_p1;
        empty_84_reg_2135 <= empty_84_fu_1173_p1;
        empty_85_reg_2140 <= empty_85_fu_1177_p1;
        empty_86_reg_2145 <= empty_86_fu_1181_p1;
        empty_87_reg_2150 <= empty_87_fu_1185_p1;
        empty_88_reg_2155 <= empty_88_fu_1189_p1;
        empty_89_reg_2160 <= empty_89_fu_1193_p1;
        empty_90_reg_2165 <= empty_90_fu_1197_p1;
        empty_91_reg_2170 <= empty_91_fu_1201_p1;
        empty_92_reg_2175 <= empty_92_fu_1205_p1;
        empty_93_reg_2180 <= empty_93_fu_1209_p1;
        empty_94_reg_2185 <= empty_94_fu_1213_p1;
        empty_95_reg_2190 <= empty_95_fu_1217_p1;
        empty_96_reg_2195 <= empty_96_fu_1221_p1;
        empty_97_reg_2200 <= empty_97_fu_1225_p1;
        empty_98_reg_2205 <= empty_98_fu_1229_p1;
        empty_99_reg_2210 <= empty_99_fu_1233_p1;
        empty_reg_2075 <= empty_fu_1125_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        indvars_iv230_udiv_cast5_reg_1625[3 : 0] <= indvars_iv230_udiv_cast5_fu_913_p1[3 : 0];
        m2_0_load_2_reg_1585 <= m2_0_q1;
        m2_0_load_3_reg_1605 <= m2_0_q0;
        m2_1_load_2_reg_1590 <= m2_1_q1;
        m2_1_load_3_reg_1610 <= m2_1_q0;
        m2_2_load_2_reg_1595 <= m2_2_q1;
        m2_2_load_3_reg_1615 <= m2_2_q0;
        m2_3_load_2_reg_1600 <= m2_3_q1;
        m2_3_load_3_reg_1620 <= m2_3_q0;
        tmp_3_cast6_reg_1650[2 : 0] <= tmp_3_cast6_fu_933_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv230_udiv_cast_reg_1412[3 : 0] <= indvars_iv230_udiv_cast_fu_785_p1[3 : 0];
        indvars_iv230_udiv_reg_1402 <= {{jj_fu_108[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_load_10_reg_1915 <= m2_0_q1;
        m2_0_load_11_reg_1935 <= m2_0_q0;
        m2_1_load_10_reg_1920 <= m2_1_q1;
        m2_1_load_11_reg_1940 <= m2_1_q0;
        m2_2_load_10_reg_1925 <= m2_2_q1;
        m2_2_load_11_reg_1945 <= m2_2_q0;
        m2_3_load_10_reg_1930 <= m2_3_q1;
        m2_3_load_11_reg_1950 <= m2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_load_12_reg_1995 <= m2_0_q1;
        m2_0_load_13_reg_2015 <= m2_0_q0;
        m2_1_load_12_reg_2000 <= m2_1_q1;
        m2_1_load_13_reg_2020 <= m2_1_q0;
        m2_2_load_12_reg_2005 <= m2_2_q1;
        m2_2_load_13_reg_2025 <= m2_2_q0;
        m2_3_load_12_reg_2010 <= m2_3_q1;
        m2_3_load_13_reg_2030 <= m2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_load_1_reg_1525 <= m2_0_q0;
        m2_0_load_reg_1505 <= m2_0_q1;
        m2_1_load_1_reg_1530 <= m2_1_q0;
        m2_1_load_reg_1510 <= m2_1_q1;
        m2_2_load_1_reg_1535 <= m2_2_q0;
        m2_2_load_reg_1515 <= m2_2_q1;
        m2_3_load_1_reg_1540 <= m2_3_q0;
        m2_3_load_reg_1520 <= m2_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_load_4_reg_1675 <= m2_0_q1;
        m2_0_load_5_reg_1695 <= m2_0_q0;
        m2_1_load_4_reg_1680 <= m2_1_q1;
        m2_1_load_5_reg_1700 <= m2_1_q0;
        m2_2_load_4_reg_1685 <= m2_2_q1;
        m2_2_load_5_reg_1705 <= m2_2_q0;
        m2_3_load_4_reg_1690 <= m2_3_q1;
        m2_3_load_5_reg_1710 <= m2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_load_6_reg_1755 <= m2_0_q1;
        m2_0_load_7_reg_1775 <= m2_0_q0;
        m2_1_load_6_reg_1760 <= m2_1_q1;
        m2_1_load_7_reg_1780 <= m2_1_q0;
        m2_2_load_6_reg_1765 <= m2_2_q1;
        m2_2_load_7_reg_1785 <= m2_2_q0;
        m2_3_load_6_reg_1770 <= m2_3_q1;
        m2_3_load_7_reg_1790 <= m2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_load_8_reg_1835 <= m2_0_q1;
        m2_0_load_9_reg_1855 <= m2_0_q0;
        m2_1_load_8_reg_1840 <= m2_1_q1;
        m2_1_load_9_reg_1860 <= m2_1_q0;
        m2_2_load_8_reg_1845 <= m2_2_q1;
        m2_2_load_9_reg_1865 <= m2_2_q0;
        m2_3_load_8_reg_1850 <= m2_3_q1;
        m2_3_load_9_reg_1870 <= m2_3_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_bbgemm_Pipeline_loopi_fu_671_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
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
    if (((tmp_69_fu_767_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_69_fu_767_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_address0_local = p_cast15_fu_1117_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_address0_local = p_cast14_fu_1083_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_address0_local = p_cast12_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_address0_local = p_cast10_fu_1015_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address0_local = p_cast8_fu_981_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address0_local = p_cast6_fu_947_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address0_local = p_cast4_fu_905_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address0_local = p_cast2_fu_855_p1;
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_0_address1_local = add_ln23_cast_fu_1099_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_0_address1_local = p_cast13_fu_1065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_0_address1_local = p_cast11_fu_1031_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_0_address1_local = p_cast9_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address1_local = p_cast7_fu_963_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address1_local = p_cast5_fu_925_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address1_local = p_cast3_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address1_local = p_cast_fu_824_p1;
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_1_address0_local = p_cast15_fu_1117_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_1_address0_local = p_cast14_fu_1083_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_1_address0_local = p_cast12_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_1_address0_local = p_cast10_fu_1015_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address0_local = p_cast8_fu_981_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address0_local = p_cast6_fu_947_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address0_local = p_cast4_fu_905_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address0_local = p_cast2_fu_855_p1;
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_1_address1_local = add_ln23_cast_fu_1099_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_1_address1_local = p_cast13_fu_1065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_1_address1_local = p_cast11_fu_1031_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_1_address1_local = p_cast9_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address1_local = p_cast7_fu_963_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address1_local = p_cast5_fu_925_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address1_local = p_cast3_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address1_local = p_cast_fu_824_p1;
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_2_address0_local = p_cast15_fu_1117_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_2_address0_local = p_cast14_fu_1083_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_2_address0_local = p_cast12_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_2_address0_local = p_cast10_fu_1015_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_2_address0_local = p_cast8_fu_981_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_2_address0_local = p_cast6_fu_947_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_2_address0_local = p_cast4_fu_905_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_2_address0_local = p_cast2_fu_855_p1;
    end else begin
        m2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_2_address1_local = add_ln23_cast_fu_1099_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_2_address1_local = p_cast13_fu_1065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_2_address1_local = p_cast11_fu_1031_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_2_address1_local = p_cast9_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_2_address1_local = p_cast7_fu_963_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_2_address1_local = p_cast5_fu_925_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_2_address1_local = p_cast3_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_2_address1_local = p_cast_fu_824_p1;
    end else begin
        m2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_2_ce1_local = 1'b1;
    end else begin
        m2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_3_address0_local = p_cast15_fu_1117_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_3_address0_local = p_cast14_fu_1083_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_3_address0_local = p_cast12_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_3_address0_local = p_cast10_fu_1015_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_3_address0_local = p_cast8_fu_981_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_3_address0_local = p_cast6_fu_947_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_3_address0_local = p_cast4_fu_905_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_3_address0_local = p_cast2_fu_855_p1;
    end else begin
        m2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_3_address1_local = add_ln23_cast_fu_1099_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_3_address1_local = p_cast13_fu_1065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_3_address1_local = p_cast11_fu_1031_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_3_address1_local = p_cast9_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_3_address1_local = p_cast7_fu_963_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_3_address1_local = p_cast5_fu_925_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_3_address1_local = p_cast3_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_3_address1_local = p_cast_fu_824_p1;
    end else begin
        m2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_3_ce1_local = 1'b1;
    end else begin
        m2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_69_fu_767_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_70_fu_789_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_bbgemm_Pipeline_loopi_fu_671_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_869_p2 = (jj_fu_108 + 7'd8);
assign add_ln16_fu_863_p2 = (kk_reg_660 + 7'd8);
assign add_ln23_cast_fu_1099_p1 = or_ln1_fu_1091_p4;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_100_fu_1237_p1 = m2_0_load_7_reg_1775;
assign empty_101_fu_1241_p1 = m2_1_load_7_reg_1780;
assign empty_102_fu_1245_p1 = m2_2_load_7_reg_1785;
assign empty_103_fu_1249_p1 = m2_3_load_7_reg_1790;
assign empty_104_fu_1253_p1 = m2_0_load_8_reg_1835;
assign empty_105_fu_1257_p1 = m2_1_load_8_reg_1840;
assign empty_106_fu_1261_p1 = m2_2_load_8_reg_1845;
assign empty_107_fu_1265_p1 = m2_3_load_8_reg_1850;
assign empty_108_fu_1269_p1 = m2_0_load_9_reg_1855;
assign empty_109_fu_1273_p1 = m2_1_load_9_reg_1860;
assign empty_110_fu_1277_p1 = m2_2_load_9_reg_1865;
assign empty_111_fu_1281_p1 = m2_3_load_9_reg_1870;
assign empty_112_fu_1285_p1 = m2_0_load_10_reg_1915;
assign empty_113_fu_1289_p1 = m2_1_load_10_reg_1920;
assign empty_114_fu_1293_p1 = m2_2_load_10_reg_1925;
assign empty_115_fu_1297_p1 = m2_3_load_10_reg_1930;
assign empty_116_fu_1301_p1 = m2_0_load_11_reg_1935;
assign empty_117_fu_1305_p1 = m2_1_load_11_reg_1940;
assign empty_118_fu_1309_p1 = m2_2_load_11_reg_1945;
assign empty_119_fu_1313_p1 = m2_3_load_11_reg_1950;
assign empty_120_fu_1317_p1 = m2_0_load_12_reg_1995;
assign empty_121_fu_1321_p1 = m2_1_load_12_reg_2000;
assign empty_122_fu_1325_p1 = m2_2_load_12_reg_2005;
assign empty_123_fu_1329_p1 = m2_3_load_12_reg_2010;
assign empty_124_fu_1333_p1 = m2_0_load_13_reg_2015;
assign empty_125_fu_1337_p1 = m2_1_load_13_reg_2020;
assign empty_126_fu_1341_p1 = m2_2_load_13_reg_2025;
assign empty_127_fu_1345_p1 = m2_3_load_13_reg_2030;
assign empty_128_fu_1349_p1 = m2_0_q1;
assign empty_129_fu_1354_p1 = m2_1_q1;
assign empty_130_fu_1359_p1 = m2_2_q1;
assign empty_131_fu_1364_p1 = m2_3_q1;
assign empty_132_fu_1369_p1 = m2_0_q0;
assign empty_133_fu_1374_p1 = m2_1_q0;
assign empty_134_fu_1379_p1 = m2_2_q0;
assign empty_135_fu_1384_p1 = m2_3_q0;
assign empty_73_fu_1129_p1 = m2_1_load_reg_1510;
assign empty_74_fu_1133_p1 = m2_2_load_reg_1515;
assign empty_75_fu_1137_p1 = m2_3_load_reg_1520;
assign empty_76_fu_1141_p1 = m2_0_load_1_reg_1525;
assign empty_77_fu_1145_p1 = m2_1_load_1_reg_1530;
assign empty_78_fu_1149_p1 = m2_2_load_1_reg_1535;
assign empty_79_fu_1153_p1 = m2_3_load_1_reg_1540;
assign empty_80_fu_1157_p1 = m2_0_load_2_reg_1585;
assign empty_81_fu_1161_p1 = m2_1_load_2_reg_1590;
assign empty_82_fu_1165_p1 = m2_2_load_2_reg_1595;
assign empty_83_fu_1169_p1 = m2_3_load_2_reg_1600;
assign empty_84_fu_1173_p1 = m2_0_load_3_reg_1605;
assign empty_85_fu_1177_p1 = m2_1_load_3_reg_1610;
assign empty_86_fu_1181_p1 = m2_2_load_3_reg_1615;
assign empty_87_fu_1185_p1 = m2_3_load_3_reg_1620;
assign empty_88_fu_1189_p1 = m2_0_load_4_reg_1675;
assign empty_89_fu_1193_p1 = m2_1_load_4_reg_1680;
assign empty_90_fu_1197_p1 = m2_2_load_4_reg_1685;
assign empty_91_fu_1201_p1 = m2_3_load_4_reg_1690;
assign empty_92_fu_1205_p1 = m2_0_load_5_reg_1695;
assign empty_93_fu_1209_p1 = m2_1_load_5_reg_1700;
assign empty_94_fu_1213_p1 = m2_2_load_5_reg_1705;
assign empty_95_fu_1217_p1 = m2_3_load_5_reg_1710;
assign empty_96_fu_1221_p1 = m2_0_load_6_reg_1755;
assign empty_97_fu_1225_p1 = m2_1_load_6_reg_1760;
assign empty_98_fu_1229_p1 = m2_2_load_6_reg_1765;
assign empty_99_fu_1233_p1 = m2_3_load_6_reg_1770;
assign empty_fu_1125_p1 = m2_0_load_reg_1505;
assign grp_bbgemm_Pipeline_loopi_fu_671_ap_start = grp_bbgemm_Pipeline_loopi_fu_671_ap_start_reg;
assign indvars_iv230_udiv_cast5_fu_913_p1 = indvars_iv230_udiv_reg_1402;
assign indvars_iv230_udiv_cast_fu_785_p1 = indvars_iv230_udiv_fu_775_p4;
assign indvars_iv230_udiv_fu_775_p4 = {{jj_fu_108[5:2]}};
assign m1_0_address0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_0_address0;
assign m1_0_address1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_0_address1;
assign m1_0_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_0_ce0;
assign m1_0_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_0_ce1;
assign m1_1_address0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_1_address0;
assign m1_1_address1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_1_address1;
assign m1_1_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_1_ce0;
assign m1_1_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_1_ce1;
assign m1_2_address0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_2_address0;
assign m1_2_address1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_2_address1;
assign m1_2_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_2_ce0;
assign m1_2_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_2_ce1;
assign m1_3_address0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_3_address0;
assign m1_3_address1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_3_address1;
assign m1_3_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_m1_3_ce0;
assign m1_3_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_m1_3_ce1;
assign m2_0_address0 = m2_0_address0_local;
assign m2_0_address1 = m2_0_address1_local;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = m2_1_address0_local;
assign m2_1_address1 = m2_1_address1_local;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign m2_2_address0 = m2_2_address0_local;
assign m2_2_address1 = m2_2_address1_local;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_2_ce1 = m2_2_ce1_local;
assign m2_3_address0 = m2_3_address0_local;
assign m2_3_address1 = m2_3_address1_local;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_3_ce1 = m2_3_ce1_local;
assign or_ln1_fu_1091_p4 = {{{tmp_1_reg_1432}, {3'd7}}, {indvars_iv230_udiv_reg_1402}};
assign or_ln_fu_807_p3 = {{tmp_fu_797_p4}, {indvars_iv230_udiv_cast_reg_1412}};
assign p_cast10_fu_1015_p1 = tmp_10_fu_1005_p5;
assign p_cast11_fu_1031_p1 = tmp_11_fu_1023_p4;
assign p_cast12_fu_1049_p1 = tmp_12_fu_1039_p5;
assign p_cast13_fu_1065_p1 = tmp_13_fu_1057_p4;
assign p_cast14_fu_1083_p1 = tmp_14_fu_1073_p5;
assign p_cast15_fu_1117_p1 = tmp_15_fu_1107_p5;
assign p_cast2_fu_855_p1 = tmp_4_fu_845_p4;
assign p_cast3_fu_887_p1 = tmp_6_fu_879_p4;
assign p_cast4_fu_905_p1 = tmp_8_fu_895_p5;
assign p_cast5_fu_925_p1 = tmp_s_fu_916_p4;
assign p_cast6_fu_947_p1 = tmp_2_fu_936_p5;
assign p_cast7_fu_963_p1 = tmp_5_fu_955_p4;
assign p_cast8_fu_981_p1 = tmp_7_fu_971_p5;
assign p_cast9_fu_997_p1 = tmp_9_fu_989_p4;
assign p_cast_fu_824_p1 = or_ln_fu_807_p3;
assign prod_0_address0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_address0;
assign prod_0_address1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_address1;
assign prod_0_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_ce0;
assign prod_0_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_ce1;
assign prod_0_d0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_d0;
assign prod_0_d1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_d1;
assign prod_0_we0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_we0;
assign prod_0_we1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_0_we1;
assign prod_1_address0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_address0;
assign prod_1_address1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_address1;
assign prod_1_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_ce0;
assign prod_1_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_ce1;
assign prod_1_d0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_d0;
assign prod_1_d1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_d1;
assign prod_1_we0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_we0;
assign prod_1_we1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_1_we1;
assign prod_2_address0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_address0;
assign prod_2_address1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_address1;
assign prod_2_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_ce0;
assign prod_2_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_ce1;
assign prod_2_d0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_d0;
assign prod_2_d1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_d1;
assign prod_2_we0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_we0;
assign prod_2_we1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_2_we1;
assign prod_3_address0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_address0;
assign prod_3_address1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_address1;
assign prod_3_ce0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_ce0;
assign prod_3_ce1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_ce1;
assign prod_3_d0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_d0;
assign prod_3_d1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_d1;
assign prod_3_we0 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_we0;
assign prod_3_we1 = grp_bbgemm_Pipeline_loopi_fu_671_prod_3_we1;
assign tmp_10_fu_1005_p5 = {{{{tmp_1_reg_1432}, {1'd1}}, {tmp_3_cast_reg_1475}}, {1'd1}};
assign tmp_11_fu_1023_p4 = {{{tmp_1_reg_1432}, {3'd5}}, {indvars_iv230_udiv_reg_1402}};
assign tmp_12_fu_1039_p5 = {{{{tmp_1_reg_1432}, {3'd5}}, {tmp_3_reg_1465}}, {1'd1}};
assign tmp_13_fu_1057_p4 = {{{tmp_1_reg_1432}, {2'd3}}, {indvars_iv230_udiv_cast5_reg_1625}};
assign tmp_14_fu_1073_p5 = {{{{tmp_1_reg_1432}, {2'd3}}, {tmp_3_cast6_reg_1650}}, {1'd1}};
assign tmp_15_fu_1107_p5 = {{{{tmp_1_reg_1432}, {3'd7}}, {tmp_3_reg_1465}}, {1'd1}};
assign tmp_2_fu_936_p5 = {{{{tmp_reg_1421}, {1'd1}}, {tmp_3_cast6_fu_933_p1}}, {1'd1}};
assign tmp_3_cast6_fu_933_p1 = tmp_3_reg_1465;
assign tmp_3_cast_fu_841_p1 = tmp_3_fu_832_p4;
assign tmp_3_fu_832_p4 = {{jj_fu_108[5:3]}};
assign tmp_4_fu_845_p4 = {{{tmp_fu_797_p4}, {tmp_3_cast_fu_841_p1}}, {1'd1}};
assign tmp_5_fu_955_p4 = {{{tmp_reg_1421}, {2'd3}}, {indvars_iv230_udiv_reg_1402}};
assign tmp_69_fu_767_p3 = jj_fu_108[32'd6];
assign tmp_6_fu_879_p4 = {{{tmp_reg_1421}, {2'd1}}, {indvars_iv230_udiv_reg_1402}};
assign tmp_70_fu_789_p3 = kk_reg_660[32'd6];
assign tmp_7_fu_971_p5 = {{{{tmp_reg_1421}, {2'd3}}, {tmp_3_reg_1465}}, {1'd1}};
assign tmp_8_fu_895_p5 = {{{{tmp_reg_1421}, {2'd1}}, {tmp_3_reg_1465}}, {1'd1}};
assign tmp_9_fu_989_p4 = {{{tmp_1_reg_1432}, {1'd1}}, {indvars_iv230_udiv_cast_reg_1412}};
assign tmp_fu_797_p4 = {{kk_reg_660[5:2]}};
assign tmp_s_fu_916_p4 = {{{tmp_reg_1421}, {1'd1}}, {indvars_iv230_udiv_cast5_fu_913_p1}};
always @ (posedge ap_clk) begin
    indvars_iv230_udiv_cast_reg_1412[5:4] <= 2'b00;
    tmp_3_cast_reg_1475[4:3] <= 2'b00;
    indvars_iv230_udiv_cast5_reg_1625[4] <= 1'b0;
    tmp_3_cast6_reg_1650[3] <= 1'b0;
end
endmodule 
