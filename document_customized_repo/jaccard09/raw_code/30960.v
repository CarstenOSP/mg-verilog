module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m1_4_address0,m1_4_ce0,m1_4_q0,m1_5_address0,m1_5_ce0,m1_5_q0,m1_6_address0,m1_6_ce0,m1_6_q0,m1_7_address0,m1_7_ce0,m1_7_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,m2_4_address0,m2_4_ce0,m2_4_q0,m2_4_address1,m2_4_ce1,m2_4_q1,m2_5_address0,m2_5_ce0,m2_5_q0,m2_5_address1,m2_5_ce1,m2_5_q1,m2_6_address0,m2_6_ce0,m2_6_q0,m2_6_address1,m2_6_ce1,m2_6_q1,m2_7_address0,m2_7_ce0,m2_7_q0,m2_7_address1,m2_7_ce1,m2_7_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_address1,prod_0_ce1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_address1,prod_1_ce1,prod_1_q1,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_address1,prod_2_ce1,prod_2_q1,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_address1,prod_3_ce1,prod_3_q1,prod_4_address0,prod_4_ce0,prod_4_we0,prod_4_d0,prod_4_address1,prod_4_ce1,prod_4_q1,prod_5_address0,prod_5_ce0,prod_5_we0,prod_5_d0,prod_5_address1,prod_5_ce1,prod_5_q1,prod_6_address0,prod_6_ce0,prod_6_we0,prod_6_d0,prod_6_address1,prod_6_ce1,prod_6_q1,prod_7_address0,prod_7_ce0,prod_7_we0,prod_7_d0,prod_7_address1,prod_7_ce1,prod_7_q1); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [8:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [8:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [8:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [8:0] m1_4_address0;
output   m1_4_ce0;
input  [63:0] m1_4_q0;
output  [8:0] m1_5_address0;
output   m1_5_ce0;
input  [63:0] m1_5_q0;
output  [8:0] m1_6_address0;
output   m1_6_ce0;
input  [63:0] m1_6_q0;
output  [8:0] m1_7_address0;
output   m1_7_ce0;
input  [63:0] m1_7_q0;
output  [8:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [8:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [8:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [8:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [8:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [8:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [8:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [8:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
output  [8:0] m2_4_address0;
output   m2_4_ce0;
input  [63:0] m2_4_q0;
output  [8:0] m2_4_address1;
output   m2_4_ce1;
input  [63:0] m2_4_q1;
output  [8:0] m2_5_address0;
output   m2_5_ce0;
input  [63:0] m2_5_q0;
output  [8:0] m2_5_address1;
output   m2_5_ce1;
input  [63:0] m2_5_q1;
output  [8:0] m2_6_address0;
output   m2_6_ce0;
input  [63:0] m2_6_q0;
output  [8:0] m2_6_address1;
output   m2_6_ce1;
input  [63:0] m2_6_q1;
output  [8:0] m2_7_address0;
output   m2_7_ce0;
input  [63:0] m2_7_q0;
output  [8:0] m2_7_address1;
output   m2_7_ce1;
input  [63:0] m2_7_q1;
output  [8:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
output  [8:0] prod_0_address1;
output   prod_0_ce1;
input  [63:0] prod_0_q1;
output  [8:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
output  [8:0] prod_1_address1;
output   prod_1_ce1;
input  [63:0] prod_1_q1;
output  [8:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
output  [8:0] prod_2_address1;
output   prod_2_ce1;
input  [63:0] prod_2_q1;
output  [8:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
output  [8:0] prod_3_address1;
output   prod_3_ce1;
input  [63:0] prod_3_q1;
output  [8:0] prod_4_address0;
output   prod_4_ce0;
output   prod_4_we0;
output  [63:0] prod_4_d0;
output  [8:0] prod_4_address1;
output   prod_4_ce1;
input  [63:0] prod_4_q1;
output  [8:0] prod_5_address0;
output   prod_5_ce0;
output   prod_5_we0;
output  [63:0] prod_5_d0;
output  [8:0] prod_5_address1;
output   prod_5_ce1;
input  [63:0] prod_5_q1;
output  [8:0] prod_6_address0;
output   prod_6_ce0;
output   prod_6_we0;
output  [63:0] prod_6_d0;
output  [8:0] prod_6_address1;
output   prod_6_ce1;
input  [63:0] prod_6_q1;
output  [8:0] prod_7_address0;
output   prod_7_ce0;
output   prod_7_we0;
output  [63:0] prod_7_d0;
output  [8:0] prod_7_address1;
output   prod_7_ce1;
input  [63:0] prod_7_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] indvars_iv230_udiv_fu_833_p4;
reg   [2:0] indvars_iv230_udiv_reg_1334;
wire    ap_CS_fsm_state2;
wire   [5:0] indvars_iv230_udiv_cast_fu_843_p1;
reg   [5:0] indvars_iv230_udiv_cast_reg_1345;
wire   [2:0] tmp_fu_855_p4;
reg   [2:0] tmp_reg_1353;
wire    ap_CS_fsm_state3;
wire   [6:0] add_ln16_fu_905_p2;
reg   [6:0] add_ln16_reg_1444;
reg   [63:0] m2_0_load_reg_1449;
wire    ap_CS_fsm_state4;
reg   [63:0] m2_1_load_reg_1454;
reg   [63:0] m2_2_load_reg_1459;
reg   [63:0] m2_3_load_reg_1464;
reg   [63:0] m2_4_load_reg_1469;
reg   [63:0] m2_5_load_reg_1474;
reg   [63:0] m2_6_load_reg_1479;
reg   [63:0] m2_7_load_reg_1484;
reg   [63:0] m2_0_load_1_reg_1489;
reg   [63:0] m2_1_load_1_reg_1494;
reg   [63:0] m2_2_load_1_reg_1499;
reg   [63:0] m2_3_load_1_reg_1504;
reg   [63:0] m2_4_load_1_reg_1509;
reg   [63:0] m2_5_load_1_reg_1514;
reg   [63:0] m2_6_load_1_reg_1519;
reg   [63:0] m2_7_load_1_reg_1524;
wire   [3:0] indvars_iv230_udiv_cast5_fu_921_p1;
reg   [3:0] indvars_iv230_udiv_cast5_reg_1529;
reg   [63:0] m2_0_load_2_reg_1614;
wire    ap_CS_fsm_state5;
reg   [63:0] m2_1_load_2_reg_1619;
reg   [63:0] m2_2_load_2_reg_1624;
reg   [63:0] m2_3_load_2_reg_1629;
reg   [63:0] m2_4_load_2_reg_1634;
reg   [63:0] m2_5_load_2_reg_1639;
reg   [63:0] m2_6_load_2_reg_1644;
reg   [63:0] m2_7_load_2_reg_1649;
reg   [63:0] m2_0_load_3_reg_1654;
reg   [63:0] m2_1_load_3_reg_1659;
reg   [63:0] m2_2_load_3_reg_1664;
reg   [63:0] m2_3_load_3_reg_1669;
reg   [63:0] m2_4_load_3_reg_1674;
reg   [63:0] m2_5_load_3_reg_1679;
reg   [63:0] m2_6_load_3_reg_1684;
reg   [63:0] m2_7_load_3_reg_1689;
reg   [63:0] m2_0_load_4_reg_1774;
wire    ap_CS_fsm_state6;
reg   [63:0] m2_1_load_4_reg_1779;
reg   [63:0] m2_2_load_4_reg_1784;
reg   [63:0] m2_3_load_4_reg_1789;
reg   [63:0] m2_4_load_4_reg_1794;
reg   [63:0] m2_5_load_4_reg_1799;
reg   [63:0] m2_6_load_4_reg_1804;
reg   [63:0] m2_7_load_4_reg_1809;
reg   [63:0] m2_0_load_5_reg_1814;
reg   [63:0] m2_1_load_5_reg_1819;
reg   [63:0] m2_2_load_5_reg_1824;
reg   [63:0] m2_3_load_5_reg_1829;
reg   [63:0] m2_4_load_5_reg_1834;
reg   [63:0] m2_5_load_5_reg_1839;
reg   [63:0] m2_6_load_5_reg_1844;
reg   [63:0] m2_7_load_5_reg_1849;
wire   [63:0] empty_fu_1049_p1;
reg   [63:0] empty_reg_1934;
wire    ap_CS_fsm_state7;
wire   [63:0] empty_73_fu_1053_p1;
reg   [63:0] empty_73_reg_1939;
wire   [63:0] empty_74_fu_1057_p1;
reg   [63:0] empty_74_reg_1944;
wire   [63:0] empty_75_fu_1061_p1;
reg   [63:0] empty_75_reg_1949;
wire   [63:0] empty_76_fu_1065_p1;
reg   [63:0] empty_76_reg_1954;
wire   [63:0] empty_77_fu_1069_p1;
reg   [63:0] empty_77_reg_1959;
wire   [63:0] empty_78_fu_1073_p1;
reg   [63:0] empty_78_reg_1964;
wire   [63:0] empty_79_fu_1077_p1;
reg   [63:0] empty_79_reg_1969;
wire   [63:0] empty_80_fu_1081_p1;
reg   [63:0] empty_80_reg_1974;
wire   [63:0] empty_81_fu_1085_p1;
reg   [63:0] empty_81_reg_1979;
wire   [63:0] empty_82_fu_1089_p1;
reg   [63:0] empty_82_reg_1984;
wire   [63:0] empty_83_fu_1093_p1;
reg   [63:0] empty_83_reg_1989;
wire   [63:0] empty_84_fu_1097_p1;
reg   [63:0] empty_84_reg_1994;
wire   [63:0] empty_85_fu_1101_p1;
reg   [63:0] empty_85_reg_1999;
wire   [63:0] empty_86_fu_1105_p1;
reg   [63:0] empty_86_reg_2004;
wire   [63:0] empty_87_fu_1109_p1;
reg   [63:0] empty_87_reg_2009;
wire   [63:0] empty_88_fu_1113_p1;
reg   [63:0] empty_88_reg_2014;
wire   [63:0] empty_89_fu_1117_p1;
reg   [63:0] empty_89_reg_2019;
wire   [63:0] empty_90_fu_1121_p1;
reg   [63:0] empty_90_reg_2024;
wire   [63:0] empty_91_fu_1125_p1;
reg   [63:0] empty_91_reg_2029;
wire   [63:0] empty_92_fu_1129_p1;
reg   [63:0] empty_92_reg_2034;
wire   [63:0] empty_93_fu_1133_p1;
reg   [63:0] empty_93_reg_2039;
wire   [63:0] empty_94_fu_1137_p1;
reg   [63:0] empty_94_reg_2044;
wire   [63:0] empty_95_fu_1141_p1;
reg   [63:0] empty_95_reg_2049;
wire   [63:0] empty_96_fu_1145_p1;
reg   [63:0] empty_96_reg_2054;
wire   [63:0] empty_97_fu_1149_p1;
reg   [63:0] empty_97_reg_2059;
wire   [63:0] empty_98_fu_1153_p1;
reg   [63:0] empty_98_reg_2064;
wire   [63:0] empty_99_fu_1157_p1;
reg   [63:0] empty_99_reg_2069;
wire   [63:0] empty_100_fu_1161_p1;
reg   [63:0] empty_100_reg_2074;
wire   [63:0] empty_101_fu_1165_p1;
reg   [63:0] empty_101_reg_2079;
wire   [63:0] empty_102_fu_1169_p1;
reg   [63:0] empty_102_reg_2084;
wire   [63:0] empty_103_fu_1173_p1;
reg   [63:0] empty_103_reg_2089;
wire   [63:0] empty_104_fu_1177_p1;
reg   [63:0] empty_104_reg_2094;
wire   [63:0] empty_105_fu_1181_p1;
reg   [63:0] empty_105_reg_2099;
wire   [63:0] empty_106_fu_1185_p1;
reg   [63:0] empty_106_reg_2104;
wire   [63:0] empty_107_fu_1189_p1;
reg   [63:0] empty_107_reg_2109;
wire   [63:0] empty_108_fu_1193_p1;
reg   [63:0] empty_108_reg_2114;
wire   [63:0] empty_109_fu_1197_p1;
reg   [63:0] empty_109_reg_2119;
wire   [63:0] empty_110_fu_1201_p1;
reg   [63:0] empty_110_reg_2124;
wire   [63:0] empty_111_fu_1205_p1;
reg   [63:0] empty_111_reg_2129;
wire   [63:0] empty_112_fu_1209_p1;
reg   [63:0] empty_112_reg_2134;
wire   [63:0] empty_113_fu_1213_p1;
reg   [63:0] empty_113_reg_2139;
wire   [63:0] empty_114_fu_1217_p1;
reg   [63:0] empty_114_reg_2144;
wire   [63:0] empty_115_fu_1221_p1;
reg   [63:0] empty_115_reg_2149;
wire   [63:0] empty_116_fu_1225_p1;
reg   [63:0] empty_116_reg_2154;
wire   [63:0] empty_117_fu_1229_p1;
reg   [63:0] empty_117_reg_2159;
wire   [63:0] empty_118_fu_1233_p1;
reg   [63:0] empty_118_reg_2164;
wire   [63:0] empty_119_fu_1237_p1;
reg   [63:0] empty_119_reg_2169;
wire   [63:0] empty_120_fu_1241_p1;
reg   [63:0] empty_120_reg_2174;
wire   [63:0] empty_121_fu_1246_p1;
reg   [63:0] empty_121_reg_2179;
wire   [63:0] empty_122_fu_1251_p1;
reg   [63:0] empty_122_reg_2184;
wire   [63:0] empty_123_fu_1256_p1;
reg   [63:0] empty_123_reg_2189;
wire   [63:0] empty_124_fu_1261_p1;
reg   [63:0] empty_124_reg_2194;
wire   [63:0] empty_125_fu_1266_p1;
reg   [63:0] empty_125_reg_2199;
wire   [63:0] empty_126_fu_1271_p1;
reg   [63:0] empty_126_reg_2204;
wire   [63:0] empty_127_fu_1276_p1;
reg   [63:0] empty_127_reg_2209;
wire   [63:0] empty_128_fu_1281_p1;
reg   [63:0] empty_128_reg_2214;
wire   [63:0] empty_129_fu_1286_p1;
reg   [63:0] empty_129_reg_2219;
wire   [63:0] empty_130_fu_1291_p1;
reg   [63:0] empty_130_reg_2224;
wire   [63:0] empty_131_fu_1296_p1;
reg   [63:0] empty_131_reg_2229;
wire   [63:0] empty_132_fu_1301_p1;
reg   [63:0] empty_132_reg_2234;
wire   [63:0] empty_133_fu_1306_p1;
reg   [63:0] empty_133_reg_2239;
wire   [63:0] empty_134_fu_1311_p1;
reg   [63:0] empty_134_reg_2244;
wire   [63:0] empty_135_fu_1316_p1;
reg   [63:0] empty_135_reg_2249;
wire    grp_bbgemm_Pipeline_loopi_fu_715_ap_start;
wire    grp_bbgemm_Pipeline_loopi_fu_715_ap_done;
wire    grp_bbgemm_Pipeline_loopi_fu_715_ap_idle;
wire    grp_bbgemm_Pipeline_loopi_fu_715_ap_ready;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_7_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_7_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_7_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_7_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_7_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_7_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_6_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_6_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_6_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_6_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_6_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_6_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_5_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_5_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_5_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_5_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_5_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_5_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_4_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_4_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_4_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_4_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_4_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_4_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_3_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_3_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_3_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_3_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_3_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_3_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_2_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_2_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_2_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_2_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_2_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_2_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_1_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_1_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_1_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_1_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_1_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_1_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_0_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_0_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_0_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_0_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_prod_0_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_715_prod_0_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_0_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_0_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_1_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_1_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_2_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_2_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_3_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_3_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_4_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_4_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_5_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_5_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_6_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_6_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_fu_715_m1_7_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_715_m1_7_ce0;
reg   [6:0] kk_reg_704;
wire   [0:0] tmp_65_fu_825_p3;
wire    ap_CS_fsm_state8;
reg    grp_bbgemm_Pipeline_loopi_fu_715_ap_start_reg;
wire   [63:0] p_cast_fu_872_p1;
wire   [0:0] tmp_66_fu_847_p3;
wire   [63:0] p_cast2_fu_893_p1;
wire   [63:0] p_cast3_fu_933_p1;
wire   [63:0] p_cast4_fu_953_p1;
wire   [63:0] p_cast5_fu_977_p1;
wire   [63:0] p_cast6_fu_997_p1;
wire   [63:0] p_cast7_fu_1037_p1;
wire   [63:0] add_ln23_cast_fu_1017_p1;
reg   [6:0] jj_fu_116;
wire   [6:0] add_ln15_fu_911_p2;
reg    m2_0_ce1_local;
reg   [8:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [8:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [8:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [8:0] m2_1_address0_local;
reg    m2_2_ce1_local;
reg   [8:0] m2_2_address1_local;
reg    m2_2_ce0_local;
reg   [8:0] m2_2_address0_local;
reg    m2_3_ce1_local;
reg   [8:0] m2_3_address1_local;
reg    m2_3_ce0_local;
reg   [8:0] m2_3_address0_local;
reg    m2_4_ce1_local;
reg   [8:0] m2_4_address1_local;
reg    m2_4_ce0_local;
reg   [8:0] m2_4_address0_local;
reg    m2_5_ce1_local;
reg   [8:0] m2_5_address1_local;
reg    m2_5_ce0_local;
reg   [8:0] m2_5_address0_local;
reg    m2_6_ce1_local;
reg   [8:0] m2_6_address1_local;
reg    m2_6_ce0_local;
reg   [8:0] m2_6_address0_local;
reg    m2_7_ce1_local;
reg   [8:0] m2_7_address1_local;
reg    m2_7_ce0_local;
reg   [8:0] m2_7_address0_local;
wire   [8:0] or_ln_fu_865_p3;
wire   [8:0] tmp_3_fu_884_p4;
wire   [8:0] tmp_5_fu_924_p4;
wire   [8:0] tmp_7_fu_945_p4;
wire   [4:0] indvars_iv230_udiv_cast6_fu_965_p1;
wire   [8:0] tmp_9_fu_968_p4;
wire   [8:0] tmp_s_fu_989_p4;
wire   [8:0] or_ln1_fu_1009_p4;
wire   [8:0] tmp_1_fu_1029_p4;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_bbgemm_Pipeline_loopi_fu_715_ap_start_reg = 1'b0;
#0 jj_fu_116 = 7'd0;
end
bbgemm_bbgemm_Pipeline_loopi grp_bbgemm_Pipeline_loopi_fu_715(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_fu_715_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_fu_715_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_fu_715_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_fu_715_ap_ready),.prod_7_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_7_address0),.prod_7_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_7_ce0),.prod_7_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_7_we0),.prod_7_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_7_d0),.prod_7_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_7_address1),.prod_7_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_7_ce1),.prod_7_q1(prod_7_q1),.prod_6_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_6_address0),.prod_6_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_6_ce0),.prod_6_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_6_we0),.prod_6_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_6_d0),.prod_6_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_6_address1),.prod_6_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_6_ce1),.prod_6_q1(prod_6_q1),.prod_5_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_5_address0),.prod_5_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_5_ce0),.prod_5_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_5_we0),.prod_5_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_5_d0),.prod_5_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_5_address1),.prod_5_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_5_ce1),.prod_5_q1(prod_5_q1),.prod_4_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_4_address0),.prod_4_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_4_ce0),.prod_4_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_4_we0),.prod_4_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_4_d0),.prod_4_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_4_address1),.prod_4_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_4_ce1),.prod_4_q1(prod_4_q1),.prod_3_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_3_address0),.prod_3_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_3_ce0),.prod_3_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_3_we0),.prod_3_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_3_d0),.prod_3_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_3_address1),.prod_3_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_3_ce1),.prod_3_q1(prod_3_q1),.prod_2_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_2_address0),.prod_2_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_2_ce0),.prod_2_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_2_we0),.prod_2_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_2_d0),.prod_2_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_2_address1),.prod_2_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_2_ce1),.prod_2_q1(prod_2_q1),.prod_1_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_1_address0),.prod_1_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_1_ce0),.prod_1_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_1_we0),.prod_1_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_1_d0),.prod_1_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_1_address1),.prod_1_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_1_ce1),.prod_1_q1(prod_1_q1),.prod_0_address0(grp_bbgemm_Pipeline_loopi_fu_715_prod_0_address0),.prod_0_ce0(grp_bbgemm_Pipeline_loopi_fu_715_prod_0_ce0),.prod_0_we0(grp_bbgemm_Pipeline_loopi_fu_715_prod_0_we0),.prod_0_d0(grp_bbgemm_Pipeline_loopi_fu_715_prod_0_d0),.prod_0_address1(grp_bbgemm_Pipeline_loopi_fu_715_prod_0_address1),.prod_0_ce1(grp_bbgemm_Pipeline_loopi_fu_715_prod_0_ce1),.prod_0_q1(prod_0_q1),.tmp(tmp_reg_1353),.m1_0_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_0_address0),.m1_0_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_0_ce0),.m1_0_q0(m1_0_q0),.empty_10(empty_reg_1934),.indvars_iv230_udiv(indvars_iv230_udiv_reg_1334),.empty_11(empty_73_reg_1939),.empty_12(empty_74_reg_1944),.empty_13(empty_75_reg_1949),.empty_14(empty_76_reg_1954),.empty_15(empty_77_reg_1959),.empty_16(empty_78_reg_1964),.empty_17(empty_79_reg_1969),.m1_1_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_1_address0),.m1_1_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_1_ce0),.m1_1_q0(m1_1_q0),.empty_18(empty_80_reg_1974),.empty_19(empty_81_reg_1979),.empty_20(empty_82_reg_1984),.empty_21(empty_83_reg_1989),.empty_22(empty_84_reg_1994),.empty_23(empty_85_reg_1999),.empty_24(empty_86_reg_2004),.empty_25(empty_87_reg_2009),.m1_2_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_2_address0),.m1_2_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_2_ce0),.m1_2_q0(m1_2_q0),.empty_26(empty_88_reg_2014),.empty_27(empty_89_reg_2019),.empty_28(empty_90_reg_2024),.empty_29(empty_91_reg_2029),.empty_30(empty_92_reg_2034),.empty_31(empty_93_reg_2039),.empty_32(empty_94_reg_2044),.empty_33(empty_95_reg_2049),.m1_3_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_3_address0),.m1_3_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_3_ce0),.m1_3_q0(m1_3_q0),.empty_34(empty_96_reg_2054),.empty_35(empty_97_reg_2059),.empty_36(empty_98_reg_2064),.empty_37(empty_99_reg_2069),.empty_38(empty_100_reg_2074),.empty_39(empty_101_reg_2079),.empty_40(empty_102_reg_2084),.empty_41(empty_103_reg_2089),.m1_4_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_4_address0),.m1_4_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_4_ce0),.m1_4_q0(m1_4_q0),.empty_42(empty_104_reg_2094),.empty_43(empty_105_reg_2099),.empty_44(empty_106_reg_2104),.empty_45(empty_107_reg_2109),.empty_46(empty_108_reg_2114),.empty_47(empty_109_reg_2119),.empty_48(empty_110_reg_2124),.empty_49(empty_111_reg_2129),.m1_5_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_5_address0),.m1_5_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_5_ce0),.m1_5_q0(m1_5_q0),.empty_50(empty_112_reg_2134),.empty_51(empty_113_reg_2139),.empty_52(empty_114_reg_2144),.empty_53(empty_115_reg_2149),.empty_54(empty_116_reg_2154),.empty_55(empty_117_reg_2159),.empty_56(empty_118_reg_2164),.empty_57(empty_119_reg_2169),.m1_6_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_6_address0),.m1_6_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_6_ce0),.m1_6_q0(m1_6_q0),.empty_58(empty_120_reg_2174),.empty_59(empty_121_reg_2179),.empty_60(empty_122_reg_2184),.empty_61(empty_123_reg_2189),.empty_62(empty_124_reg_2194),.empty_63(empty_125_reg_2199),.empty_64(empty_126_reg_2204),.empty_65(empty_127_reg_2209),.m1_7_address0(grp_bbgemm_Pipeline_loopi_fu_715_m1_7_address0),.m1_7_ce0(grp_bbgemm_Pipeline_loopi_fu_715_m1_7_ce0),.m1_7_q0(m1_7_q0),.empty_66(empty_128_reg_2214),.empty_67(empty_129_reg_2219),.empty_68(empty_130_reg_2224),.empty_69(empty_131_reg_2229),.empty_70(empty_132_reg_2234),.empty_71(empty_133_reg_2239),.empty_72(empty_134_reg_2244),.empty(empty_135_reg_2249));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bbgemm_Pipeline_loopi_fu_715_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_bbgemm_Pipeline_loopi_fu_715_ap_start_reg <= 1'b1;
        end else if ((grp_bbgemm_Pipeline_loopi_fu_715_ap_ready == 1'b1)) begin
            grp_bbgemm_Pipeline_loopi_fu_715_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        jj_fu_116 <= 7'd0;
    end else if (((tmp_66_fu_847_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_fu_116 <= add_ln15_fu_911_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_fu_715_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        kk_reg_704 <= add_ln16_reg_1444;
    end else if (((tmp_65_fu_825_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kk_reg_704 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_1444 <= add_ln16_fu_905_p2;
        tmp_reg_1353 <= {{kk_reg_704[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_100_reg_2074 <= empty_100_fu_1161_p1;
        empty_101_reg_2079 <= empty_101_fu_1165_p1;
        empty_102_reg_2084 <= empty_102_fu_1169_p1;
        empty_103_reg_2089 <= empty_103_fu_1173_p1;
        empty_104_reg_2094 <= empty_104_fu_1177_p1;
        empty_105_reg_2099 <= empty_105_fu_1181_p1;
        empty_106_reg_2104 <= empty_106_fu_1185_p1;
        empty_107_reg_2109 <= empty_107_fu_1189_p1;
        empty_108_reg_2114 <= empty_108_fu_1193_p1;
        empty_109_reg_2119 <= empty_109_fu_1197_p1;
        empty_110_reg_2124 <= empty_110_fu_1201_p1;
        empty_111_reg_2129 <= empty_111_fu_1205_p1;
        empty_112_reg_2134 <= empty_112_fu_1209_p1;
        empty_113_reg_2139 <= empty_113_fu_1213_p1;
        empty_114_reg_2144 <= empty_114_fu_1217_p1;
        empty_115_reg_2149 <= empty_115_fu_1221_p1;
        empty_116_reg_2154 <= empty_116_fu_1225_p1;
        empty_117_reg_2159 <= empty_117_fu_1229_p1;
        empty_118_reg_2164 <= empty_118_fu_1233_p1;
        empty_119_reg_2169 <= empty_119_fu_1237_p1;
        empty_120_reg_2174 <= empty_120_fu_1241_p1;
        empty_121_reg_2179 <= empty_121_fu_1246_p1;
        empty_122_reg_2184 <= empty_122_fu_1251_p1;
        empty_123_reg_2189 <= empty_123_fu_1256_p1;
        empty_124_reg_2194 <= empty_124_fu_1261_p1;
        empty_125_reg_2199 <= empty_125_fu_1266_p1;
        empty_126_reg_2204 <= empty_126_fu_1271_p1;
        empty_127_reg_2209 <= empty_127_fu_1276_p1;
        empty_128_reg_2214 <= empty_128_fu_1281_p1;
        empty_129_reg_2219 <= empty_129_fu_1286_p1;
        empty_130_reg_2224 <= empty_130_fu_1291_p1;
        empty_131_reg_2229 <= empty_131_fu_1296_p1;
        empty_132_reg_2234 <= empty_132_fu_1301_p1;
        empty_133_reg_2239 <= empty_133_fu_1306_p1;
        empty_134_reg_2244 <= empty_134_fu_1311_p1;
        empty_135_reg_2249 <= empty_135_fu_1316_p1;
        empty_73_reg_1939 <= empty_73_fu_1053_p1;
        empty_74_reg_1944 <= empty_74_fu_1057_p1;
        empty_75_reg_1949 <= empty_75_fu_1061_p1;
        empty_76_reg_1954 <= empty_76_fu_1065_p1;
        empty_77_reg_1959 <= empty_77_fu_1069_p1;
        empty_78_reg_1964 <= empty_78_fu_1073_p1;
        empty_79_reg_1969 <= empty_79_fu_1077_p1;
        empty_80_reg_1974 <= empty_80_fu_1081_p1;
        empty_81_reg_1979 <= empty_81_fu_1085_p1;
        empty_82_reg_1984 <= empty_82_fu_1089_p1;
        empty_83_reg_1989 <= empty_83_fu_1093_p1;
        empty_84_reg_1994 <= empty_84_fu_1097_p1;
        empty_85_reg_1999 <= empty_85_fu_1101_p1;
        empty_86_reg_2004 <= empty_86_fu_1105_p1;
        empty_87_reg_2009 <= empty_87_fu_1109_p1;
        empty_88_reg_2014 <= empty_88_fu_1113_p1;
        empty_89_reg_2019 <= empty_89_fu_1117_p1;
        empty_90_reg_2024 <= empty_90_fu_1121_p1;
        empty_91_reg_2029 <= empty_91_fu_1125_p1;
        empty_92_reg_2034 <= empty_92_fu_1129_p1;
        empty_93_reg_2039 <= empty_93_fu_1133_p1;
        empty_94_reg_2044 <= empty_94_fu_1137_p1;
        empty_95_reg_2049 <= empty_95_fu_1141_p1;
        empty_96_reg_2054 <= empty_96_fu_1145_p1;
        empty_97_reg_2059 <= empty_97_fu_1149_p1;
        empty_98_reg_2064 <= empty_98_fu_1153_p1;
        empty_99_reg_2069 <= empty_99_fu_1157_p1;
        empty_reg_1934 <= empty_fu_1049_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        indvars_iv230_udiv_cast5_reg_1529[2 : 0] <= indvars_iv230_udiv_cast5_fu_921_p1[2 : 0];
        m2_0_load_1_reg_1489 <= m2_0_q0;
        m2_0_load_reg_1449 <= m2_0_q1;
        m2_1_load_1_reg_1494 <= m2_1_q0;
        m2_1_load_reg_1454 <= m2_1_q1;
        m2_2_load_1_reg_1499 <= m2_2_q0;
        m2_2_load_reg_1459 <= m2_2_q1;
        m2_3_load_1_reg_1504 <= m2_3_q0;
        m2_3_load_reg_1464 <= m2_3_q1;
        m2_4_load_1_reg_1509 <= m2_4_q0;
        m2_4_load_reg_1469 <= m2_4_q1;
        m2_5_load_1_reg_1514 <= m2_5_q0;
        m2_5_load_reg_1474 <= m2_5_q1;
        m2_6_load_1_reg_1519 <= m2_6_q0;
        m2_6_load_reg_1479 <= m2_6_q1;
        m2_7_load_1_reg_1524 <= m2_7_q0;
        m2_7_load_reg_1484 <= m2_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv230_udiv_cast_reg_1345[2 : 0] <= indvars_iv230_udiv_cast_fu_843_p1[2 : 0];
        indvars_iv230_udiv_reg_1334 <= {{jj_fu_116[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_load_2_reg_1614 <= m2_0_q1;
        m2_0_load_3_reg_1654 <= m2_0_q0;
        m2_1_load_2_reg_1619 <= m2_1_q1;
        m2_1_load_3_reg_1659 <= m2_1_q0;
        m2_2_load_2_reg_1624 <= m2_2_q1;
        m2_2_load_3_reg_1664 <= m2_2_q0;
        m2_3_load_2_reg_1629 <= m2_3_q1;
        m2_3_load_3_reg_1669 <= m2_3_q0;
        m2_4_load_2_reg_1634 <= m2_4_q1;
        m2_4_load_3_reg_1674 <= m2_4_q0;
        m2_5_load_2_reg_1639 <= m2_5_q1;
        m2_5_load_3_reg_1679 <= m2_5_q0;
        m2_6_load_2_reg_1644 <= m2_6_q1;
        m2_6_load_3_reg_1684 <= m2_6_q0;
        m2_7_load_2_reg_1649 <= m2_7_q1;
        m2_7_load_3_reg_1689 <= m2_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_load_4_reg_1774 <= m2_0_q1;
        m2_0_load_5_reg_1814 <= m2_0_q0;
        m2_1_load_4_reg_1779 <= m2_1_q1;
        m2_1_load_5_reg_1819 <= m2_1_q0;
        m2_2_load_4_reg_1784 <= m2_2_q1;
        m2_2_load_5_reg_1824 <= m2_2_q0;
        m2_3_load_4_reg_1789 <= m2_3_q1;
        m2_3_load_5_reg_1829 <= m2_3_q0;
        m2_4_load_4_reg_1794 <= m2_4_q1;
        m2_4_load_5_reg_1834 <= m2_4_q0;
        m2_5_load_4_reg_1799 <= m2_5_q1;
        m2_5_load_5_reg_1839 <= m2_5_q0;
        m2_6_load_4_reg_1804 <= m2_6_q1;
        m2_6_load_5_reg_1844 <= m2_6_q0;
        m2_7_load_4_reg_1809 <= m2_7_q1;
        m2_7_load_5_reg_1849 <= m2_7_q0;
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
always @ (*) begin
    if ((grp_bbgemm_Pipeline_loopi_fu_715_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_65_fu_825_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_65_fu_825_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_0_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_0_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_0_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_0_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_1_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_1_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_1_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_1_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_2_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_2_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_2_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_2_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_2_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_2_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_2_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_2_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_2_ce1_local = 1'b1;
    end else begin
        m2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_3_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_3_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_3_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_3_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_3_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_3_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_3_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_3_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_3_ce1_local = 1'b1;
    end else begin
        m2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_4_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_4_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_4_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_4_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_4_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_4_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_4_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_4_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_4_ce0_local = 1'b1;
    end else begin
        m2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_4_ce1_local = 1'b1;
    end else begin
        m2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_5_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_5_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_5_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_5_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_5_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_5_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_5_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_5_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_5_ce0_local = 1'b1;
    end else begin
        m2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_5_ce1_local = 1'b1;
    end else begin
        m2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_6_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_6_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_6_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_6_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_6_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_6_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_6_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_6_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_6_ce0_local = 1'b1;
    end else begin
        m2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_6_ce1_local = 1'b1;
    end else begin
        m2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_7_address0_local = add_ln23_cast_fu_1017_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_7_address0_local = p_cast6_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_7_address0_local = p_cast4_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_7_address0_local = p_cast2_fu_893_p1;
    end else begin
        m2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_7_address1_local = p_cast7_fu_1037_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_7_address1_local = p_cast5_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_7_address1_local = p_cast3_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_7_address1_local = p_cast_fu_872_p1;
    end else begin
        m2_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_7_ce0_local = 1'b1;
    end else begin
        m2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_7_ce1_local = 1'b1;
    end else begin
        m2_7_ce1_local = 1'b0;
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
            if (((tmp_65_fu_825_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_66_fu_847_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_bbgemm_Pipeline_loopi_fu_715_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_911_p2 = (jj_fu_116 + 7'd8);
assign add_ln16_fu_905_p2 = (kk_reg_704 + 7'd8);
assign add_ln23_cast_fu_1017_p1 = or_ln1_fu_1009_p4;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign empty_100_fu_1161_p1 = m2_4_load_3_reg_1674;
assign empty_101_fu_1165_p1 = m2_5_load_3_reg_1679;
assign empty_102_fu_1169_p1 = m2_6_load_3_reg_1684;
assign empty_103_fu_1173_p1 = m2_7_load_3_reg_1689;
assign empty_104_fu_1177_p1 = m2_0_load_4_reg_1774;
assign empty_105_fu_1181_p1 = m2_1_load_4_reg_1779;
assign empty_106_fu_1185_p1 = m2_2_load_4_reg_1784;
assign empty_107_fu_1189_p1 = m2_3_load_4_reg_1789;
assign empty_108_fu_1193_p1 = m2_4_load_4_reg_1794;
assign empty_109_fu_1197_p1 = m2_5_load_4_reg_1799;
assign empty_110_fu_1201_p1 = m2_6_load_4_reg_1804;
assign empty_111_fu_1205_p1 = m2_7_load_4_reg_1809;
assign empty_112_fu_1209_p1 = m2_0_load_5_reg_1814;
assign empty_113_fu_1213_p1 = m2_1_load_5_reg_1819;
assign empty_114_fu_1217_p1 = m2_2_load_5_reg_1824;
assign empty_115_fu_1221_p1 = m2_3_load_5_reg_1829;
assign empty_116_fu_1225_p1 = m2_4_load_5_reg_1834;
assign empty_117_fu_1229_p1 = m2_5_load_5_reg_1839;
assign empty_118_fu_1233_p1 = m2_6_load_5_reg_1844;
assign empty_119_fu_1237_p1 = m2_7_load_5_reg_1849;
assign empty_120_fu_1241_p1 = m2_0_q1;
assign empty_121_fu_1246_p1 = m2_1_q1;
assign empty_122_fu_1251_p1 = m2_2_q1;
assign empty_123_fu_1256_p1 = m2_3_q1;
assign empty_124_fu_1261_p1 = m2_4_q1;
assign empty_125_fu_1266_p1 = m2_5_q1;
assign empty_126_fu_1271_p1 = m2_6_q1;
assign empty_127_fu_1276_p1 = m2_7_q1;
assign empty_128_fu_1281_p1 = m2_0_q0;
assign empty_129_fu_1286_p1 = m2_1_q0;
assign empty_130_fu_1291_p1 = m2_2_q0;
assign empty_131_fu_1296_p1 = m2_3_q0;
assign empty_132_fu_1301_p1 = m2_4_q0;
assign empty_133_fu_1306_p1 = m2_5_q0;
assign empty_134_fu_1311_p1 = m2_6_q0;
assign empty_135_fu_1316_p1 = m2_7_q0;
assign empty_73_fu_1053_p1 = m2_1_load_reg_1454;
assign empty_74_fu_1057_p1 = m2_2_load_reg_1459;
assign empty_75_fu_1061_p1 = m2_3_load_reg_1464;
assign empty_76_fu_1065_p1 = m2_4_load_reg_1469;
assign empty_77_fu_1069_p1 = m2_5_load_reg_1474;
assign empty_78_fu_1073_p1 = m2_6_load_reg_1479;
assign empty_79_fu_1077_p1 = m2_7_load_reg_1484;
assign empty_80_fu_1081_p1 = m2_0_load_1_reg_1489;
assign empty_81_fu_1085_p1 = m2_1_load_1_reg_1494;
assign empty_82_fu_1089_p1 = m2_2_load_1_reg_1499;
assign empty_83_fu_1093_p1 = m2_3_load_1_reg_1504;
assign empty_84_fu_1097_p1 = m2_4_load_1_reg_1509;
assign empty_85_fu_1101_p1 = m2_5_load_1_reg_1514;
assign empty_86_fu_1105_p1 = m2_6_load_1_reg_1519;
assign empty_87_fu_1109_p1 = m2_7_load_1_reg_1524;
assign empty_88_fu_1113_p1 = m2_0_load_2_reg_1614;
assign empty_89_fu_1117_p1 = m2_1_load_2_reg_1619;
assign empty_90_fu_1121_p1 = m2_2_load_2_reg_1624;
assign empty_91_fu_1125_p1 = m2_3_load_2_reg_1629;
assign empty_92_fu_1129_p1 = m2_4_load_2_reg_1634;
assign empty_93_fu_1133_p1 = m2_5_load_2_reg_1639;
assign empty_94_fu_1137_p1 = m2_6_load_2_reg_1644;
assign empty_95_fu_1141_p1 = m2_7_load_2_reg_1649;
assign empty_96_fu_1145_p1 = m2_0_load_3_reg_1654;
assign empty_97_fu_1149_p1 = m2_1_load_3_reg_1659;
assign empty_98_fu_1153_p1 = m2_2_load_3_reg_1664;
assign empty_99_fu_1157_p1 = m2_3_load_3_reg_1669;
assign empty_fu_1049_p1 = m2_0_load_reg_1449;
assign grp_bbgemm_Pipeline_loopi_fu_715_ap_start = grp_bbgemm_Pipeline_loopi_fu_715_ap_start_reg;
assign indvars_iv230_udiv_cast5_fu_921_p1 = indvars_iv230_udiv_reg_1334;
assign indvars_iv230_udiv_cast6_fu_965_p1 = indvars_iv230_udiv_reg_1334;
assign indvars_iv230_udiv_cast_fu_843_p1 = indvars_iv230_udiv_fu_833_p4;
assign indvars_iv230_udiv_fu_833_p4 = {{jj_fu_116[5:3]}};
assign m1_0_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_0_address0;
assign m1_0_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_0_ce0;
assign m1_1_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_1_address0;
assign m1_1_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_1_ce0;
assign m1_2_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_2_address0;
assign m1_2_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_2_ce0;
assign m1_3_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_3_address0;
assign m1_3_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_3_ce0;
assign m1_4_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_4_address0;
assign m1_4_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_4_ce0;
assign m1_5_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_5_address0;
assign m1_5_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_5_ce0;
assign m1_6_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_6_address0;
assign m1_6_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_6_ce0;
assign m1_7_address0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_7_address0;
assign m1_7_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_m1_7_ce0;
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
assign m2_4_address0 = m2_4_address0_local;
assign m2_4_address1 = m2_4_address1_local;
assign m2_4_ce0 = m2_4_ce0_local;
assign m2_4_ce1 = m2_4_ce1_local;
assign m2_5_address0 = m2_5_address0_local;
assign m2_5_address1 = m2_5_address1_local;
assign m2_5_ce0 = m2_5_ce0_local;
assign m2_5_ce1 = m2_5_ce1_local;
assign m2_6_address0 = m2_6_address0_local;
assign m2_6_address1 = m2_6_address1_local;
assign m2_6_ce0 = m2_6_ce0_local;
assign m2_6_ce1 = m2_6_ce1_local;
assign m2_7_address0 = m2_7_address0_local;
assign m2_7_address1 = m2_7_address1_local;
assign m2_7_ce0 = m2_7_ce0_local;
assign m2_7_ce1 = m2_7_ce1_local;
assign or_ln1_fu_1009_p4 = {{{tmp_reg_1353}, {3'd7}}, {indvars_iv230_udiv_reg_1334}};
assign or_ln_fu_865_p3 = {{tmp_fu_855_p4}, {indvars_iv230_udiv_cast_reg_1345}};
assign p_cast2_fu_893_p1 = tmp_3_fu_884_p4;
assign p_cast3_fu_933_p1 = tmp_5_fu_924_p4;
assign p_cast4_fu_953_p1 = tmp_7_fu_945_p4;
assign p_cast5_fu_977_p1 = tmp_9_fu_968_p4;
assign p_cast6_fu_997_p1 = tmp_s_fu_989_p4;
assign p_cast7_fu_1037_p1 = tmp_1_fu_1029_p4;
assign p_cast_fu_872_p1 = or_ln_fu_865_p3;
assign prod_0_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_0_address0;
assign prod_0_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_0_address1;
assign prod_0_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_0_ce0;
assign prod_0_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_0_ce1;
assign prod_0_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_0_d0;
assign prod_0_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_0_we0;
assign prod_1_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_1_address0;
assign prod_1_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_1_address1;
assign prod_1_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_1_ce0;
assign prod_1_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_1_ce1;
assign prod_1_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_1_d0;
assign prod_1_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_1_we0;
assign prod_2_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_2_address0;
assign prod_2_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_2_address1;
assign prod_2_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_2_ce0;
assign prod_2_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_2_ce1;
assign prod_2_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_2_d0;
assign prod_2_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_2_we0;
assign prod_3_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_3_address0;
assign prod_3_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_3_address1;
assign prod_3_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_3_ce0;
assign prod_3_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_3_ce1;
assign prod_3_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_3_d0;
assign prod_3_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_3_we0;
assign prod_4_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_4_address0;
assign prod_4_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_4_address1;
assign prod_4_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_4_ce0;
assign prod_4_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_4_ce1;
assign prod_4_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_4_d0;
assign prod_4_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_4_we0;
assign prod_5_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_5_address0;
assign prod_5_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_5_address1;
assign prod_5_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_5_ce0;
assign prod_5_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_5_ce1;
assign prod_5_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_5_d0;
assign prod_5_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_5_we0;
assign prod_6_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_6_address0;
assign prod_6_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_6_address1;
assign prod_6_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_6_ce0;
assign prod_6_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_6_ce1;
assign prod_6_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_6_d0;
assign prod_6_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_6_we0;
assign prod_7_address0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_7_address0;
assign prod_7_address1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_7_address1;
assign prod_7_ce0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_7_ce0;
assign prod_7_ce1 = grp_bbgemm_Pipeline_loopi_fu_715_prod_7_ce1;
assign prod_7_d0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_7_d0;
assign prod_7_we0 = grp_bbgemm_Pipeline_loopi_fu_715_prod_7_we0;
assign tmp_1_fu_1029_p4 = {{{tmp_reg_1353}, {2'd3}}, {indvars_iv230_udiv_cast5_reg_1529}};
assign tmp_3_fu_884_p4 = {{{tmp_fu_855_p4}, {3'd1}}, {indvars_iv230_udiv_reg_1334}};
assign tmp_5_fu_924_p4 = {{{tmp_reg_1353}, {2'd1}}, {indvars_iv230_udiv_cast5_fu_921_p1}};
assign tmp_65_fu_825_p3 = jj_fu_116[32'd6];
assign tmp_66_fu_847_p3 = kk_reg_704[32'd6];
assign tmp_7_fu_945_p4 = {{{tmp_reg_1353}, {3'd3}}, {indvars_iv230_udiv_reg_1334}};
assign tmp_9_fu_968_p4 = {{{tmp_reg_1353}, {1'd1}}, {indvars_iv230_udiv_cast6_fu_965_p1}};
assign tmp_fu_855_p4 = {{kk_reg_704[5:3]}};
assign tmp_s_fu_989_p4 = {{{tmp_reg_1353}, {3'd5}}, {indvars_iv230_udiv_reg_1334}};
always @ (posedge ap_clk) begin
    indvars_iv230_udiv_cast_reg_1345[5:3] <= 3'b000;
    indvars_iv230_udiv_cast5_reg_1529[3] <= 1'b0;
end
endmodule 