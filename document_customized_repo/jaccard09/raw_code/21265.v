module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0,prod_address1,prod_ce1,prod_we1,prod_d1,prod_q1); 
parameter    ap_ST_fsm_state1 = 36'd1;
parameter    ap_ST_fsm_state2 = 36'd2;
parameter    ap_ST_fsm_state3 = 36'd4;
parameter    ap_ST_fsm_state4 = 36'd8;
parameter    ap_ST_fsm_state5 = 36'd16;
parameter    ap_ST_fsm_state6 = 36'd32;
parameter    ap_ST_fsm_state7 = 36'd64;
parameter    ap_ST_fsm_state8 = 36'd128;
parameter    ap_ST_fsm_state9 = 36'd256;
parameter    ap_ST_fsm_state10 = 36'd512;
parameter    ap_ST_fsm_state11 = 36'd1024;
parameter    ap_ST_fsm_state12 = 36'd2048;
parameter    ap_ST_fsm_state13 = 36'd4096;
parameter    ap_ST_fsm_state14 = 36'd8192;
parameter    ap_ST_fsm_state15 = 36'd16384;
parameter    ap_ST_fsm_state16 = 36'd32768;
parameter    ap_ST_fsm_state17 = 36'd65536;
parameter    ap_ST_fsm_state18 = 36'd131072;
parameter    ap_ST_fsm_state19 = 36'd262144;
parameter    ap_ST_fsm_state20 = 36'd524288;
parameter    ap_ST_fsm_state21 = 36'd1048576;
parameter    ap_ST_fsm_state22 = 36'd2097152;
parameter    ap_ST_fsm_state23 = 36'd4194304;
parameter    ap_ST_fsm_state24 = 36'd8388608;
parameter    ap_ST_fsm_state25 = 36'd16777216;
parameter    ap_ST_fsm_state26 = 36'd33554432;
parameter    ap_ST_fsm_state27 = 36'd67108864;
parameter    ap_ST_fsm_state28 = 36'd134217728;
parameter    ap_ST_fsm_state29 = 36'd268435456;
parameter    ap_ST_fsm_state30 = 36'd536870912;
parameter    ap_ST_fsm_state31 = 36'd1073741824;
parameter    ap_ST_fsm_state32 = 36'd2147483648;
parameter    ap_ST_fsm_state33 = 36'd4294967296;
parameter    ap_ST_fsm_state34 = 36'd8589934592;
parameter    ap_ST_fsm_state35 = 36'd17179869184;
parameter    ap_ST_fsm_state36 = 36'd34359738368;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m1_address1;
output   m1_ce1;
input  [63:0] m1_q1;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
input  [63:0] prod_q0;
output  [11:0] prod_address1;
output   prod_ce1;
output   prod_we1;
output  [63:0] prod_d1;
input  [63:0] prod_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [35:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] jj_1_reg_2265;
wire    ap_CS_fsm_state2;
wire   [11:0] zext_ln15_fu_804_p1;
reg   [11:0] zext_ln15_reg_2280;
wire   [5:0] trunc_ln11_fu_808_p1;
reg   [5:0] trunc_ln11_reg_2316;
wire   [4:0] tmp_1_fu_820_p4;
reg   [4:0] tmp_1_reg_2324;
wire    ap_CS_fsm_state3;
wire   [5:0] tmp_4_fu_842_p4;
reg   [5:0] tmp_4_reg_2346;
wire   [6:0] add_ln16_fu_866_p2;
reg   [6:0] add_ln16_reg_2359;
reg   [63:0] m2_load_reg_2364;
wire    ap_CS_fsm_state4;
reg   [63:0] m2_load_1_reg_2369;
wire   [4:0] tmp_6_fu_882_p4;
reg   [4:0] tmp_6_reg_2374;
wire   [2:0] tmp_3_fu_919_p4;
reg   [2:0] tmp_3_reg_2395;
wire    ap_CS_fsm_state5;
reg   [63:0] m2_load_2_reg_2431;
reg   [63:0] m2_load_3_reg_2436;
wire   [3:0] tmp_7_fu_941_p4;
reg   [3:0] tmp_7_reg_2441;
wire   [0:0] tmp_79_fu_964_p3;
reg   [0:0] tmp_79_reg_2464;
wire   [6:0] tmp_fu_989_p2;
reg   [6:0] tmp_reg_2477;
wire   [5:0] trunc_ln16_fu_994_p1;
reg   [5:0] trunc_ln16_reg_2482;
wire    ap_CS_fsm_state6;
reg   [63:0] m2_load_4_reg_2488;
reg   [63:0] m2_load_5_reg_2493;
reg   [3:0] tmp_20_reg_2508;
reg   [0:0] tmp_80_reg_2528;
reg   [63:0] m2_load_6_reg_2549;
wire    ap_CS_fsm_state7;
reg   [63:0] m2_load_7_reg_2554;
reg   [63:0] m2_load_8_reg_2569;
wire    ap_CS_fsm_state8;
reg   [63:0] m2_load_9_reg_2574;
reg   [63:0] m2_load_10_reg_2589;
wire    ap_CS_fsm_state9;
reg   [63:0] m2_load_11_reg_2594;
reg   [63:0] m2_load_12_reg_2609;
wire    ap_CS_fsm_state10;
reg   [63:0] m2_load_13_reg_2614;
reg   [63:0] m2_load_14_reg_2629;
wire    ap_CS_fsm_state11;
reg   [63:0] m2_load_15_reg_2634;
reg   [63:0] m2_load_16_reg_2649;
wire    ap_CS_fsm_state12;
reg   [63:0] m2_load_17_reg_2654;
reg   [63:0] m2_load_18_reg_2669;
wire    ap_CS_fsm_state13;
reg   [63:0] m2_load_19_reg_2674;
reg   [63:0] m2_load_20_reg_2689;
wire    ap_CS_fsm_state14;
reg   [63:0] m2_load_21_reg_2694;
reg   [63:0] m2_load_22_reg_2709;
wire    ap_CS_fsm_state15;
reg   [63:0] m2_load_23_reg_2714;
reg   [63:0] m2_load_24_reg_2729;
wire    ap_CS_fsm_state16;
reg   [63:0] m2_load_25_reg_2734;
reg   [63:0] m2_load_26_reg_2749;
wire    ap_CS_fsm_state17;
reg   [63:0] m2_load_27_reg_2754;
reg   [63:0] m2_load_28_reg_2769;
wire    ap_CS_fsm_state18;
reg   [63:0] m2_load_29_reg_2774;
reg   [63:0] m2_load_30_reg_2789;
wire    ap_CS_fsm_state19;
reg   [63:0] m2_load_31_reg_2794;
reg   [63:0] m2_load_32_reg_2809;
wire    ap_CS_fsm_state20;
reg   [63:0] m2_load_33_reg_2814;
reg   [63:0] m2_load_34_reg_2829;
wire    ap_CS_fsm_state21;
reg   [63:0] m2_load_35_reg_2834;
reg   [63:0] m2_load_36_reg_2849;
wire    ap_CS_fsm_state22;
reg   [63:0] m2_load_37_reg_2854;
reg   [63:0] m2_load_38_reg_2869;
wire    ap_CS_fsm_state23;
reg   [63:0] m2_load_39_reg_2874;
reg   [63:0] m2_load_40_reg_2889;
wire    ap_CS_fsm_state24;
reg   [63:0] m2_load_41_reg_2894;
reg   [63:0] m2_load_42_reg_2909;
wire    ap_CS_fsm_state25;
reg   [63:0] m2_load_43_reg_2914;
reg   [63:0] m2_load_44_reg_2929;
wire    ap_CS_fsm_state26;
reg   [63:0] m2_load_45_reg_2934;
reg   [63:0] m2_load_46_reg_2949;
wire    ap_CS_fsm_state27;
reg   [63:0] m2_load_47_reg_2954;
reg   [63:0] m2_load_48_reg_2969;
wire    ap_CS_fsm_state28;
reg   [63:0] m2_load_49_reg_2974;
reg   [63:0] m2_load_50_reg_2989;
wire    ap_CS_fsm_state29;
reg   [63:0] m2_load_51_reg_2994;
reg   [63:0] m2_load_52_reg_3009;
wire    ap_CS_fsm_state30;
reg   [63:0] m2_load_53_reg_3014;
reg   [63:0] m2_load_54_reg_3029;
wire    ap_CS_fsm_state31;
reg   [63:0] m2_load_55_reg_3034;
reg   [63:0] m2_load_56_reg_3049;
wire    ap_CS_fsm_state32;
reg   [63:0] m2_load_57_reg_3054;
reg   [63:0] m2_load_58_reg_3069;
wire    ap_CS_fsm_state33;
reg   [63:0] m2_load_59_reg_3074;
reg   [63:0] m2_load_60_reg_3089;
wire    ap_CS_fsm_state34;
reg   [63:0] m2_load_61_reg_3094;
wire   [63:0] empty_fu_2000_p1;
reg   [63:0] empty_reg_3109;
wire    ap_CS_fsm_state35;
wire   [63:0] empty_77_fu_2004_p1;
reg   [63:0] empty_77_reg_3114;
wire   [63:0] empty_78_fu_2008_p1;
reg   [63:0] empty_78_reg_3119;
wire   [63:0] empty_79_fu_2012_p1;
reg   [63:0] empty_79_reg_3124;
wire   [63:0] empty_80_fu_2016_p1;
reg   [63:0] empty_80_reg_3129;
wire   [63:0] empty_81_fu_2020_p1;
reg   [63:0] empty_81_reg_3134;
wire   [63:0] empty_82_fu_2024_p1;
reg   [63:0] empty_82_reg_3139;
wire   [63:0] empty_85_fu_2028_p1;
reg   [63:0] empty_85_reg_3144;
wire   [63:0] empty_87_fu_2032_p1;
reg   [63:0] empty_87_reg_3149;
wire   [63:0] empty_89_fu_2036_p1;
reg   [63:0] empty_89_reg_3154;
wire   [63:0] empty_91_fu_2040_p1;
reg   [63:0] empty_91_reg_3159;
wire   [63:0] empty_93_fu_2044_p1;
reg   [63:0] empty_93_reg_3164;
wire   [63:0] empty_95_fu_2048_p1;
reg   [63:0] empty_95_reg_3169;
wire   [63:0] empty_97_fu_2052_p1;
reg   [63:0] empty_97_reg_3174;
wire   [63:0] empty_99_fu_2056_p1;
reg   [63:0] empty_99_reg_3179;
wire   [63:0] empty_101_fu_2060_p1;
reg   [63:0] empty_101_reg_3184;
wire   [63:0] empty_102_fu_2064_p1;
reg   [63:0] empty_102_reg_3189;
wire   [63:0] empty_103_fu_2068_p1;
reg   [63:0] empty_103_reg_3194;
wire   [63:0] empty_104_fu_2072_p1;
reg   [63:0] empty_104_reg_3199;
wire   [63:0] empty_105_fu_2076_p1;
reg   [63:0] empty_105_reg_3204;
wire   [63:0] empty_106_fu_2080_p1;
reg   [63:0] empty_106_reg_3209;
wire   [63:0] empty_107_fu_2084_p1;
reg   [63:0] empty_107_reg_3214;
wire   [63:0] empty_108_fu_2088_p1;
reg   [63:0] empty_108_reg_3219;
wire   [63:0] empty_109_fu_2092_p1;
reg   [63:0] empty_109_reg_3224;
wire   [63:0] empty_111_fu_2096_p1;
reg   [63:0] empty_111_reg_3229;
wire   [63:0] empty_113_fu_2100_p1;
reg   [63:0] empty_113_reg_3234;
wire   [63:0] empty_115_fu_2104_p1;
reg   [63:0] empty_115_reg_3239;
wire   [63:0] empty_117_fu_2108_p1;
reg   [63:0] empty_117_reg_3244;
wire   [63:0] empty_119_fu_2112_p1;
reg   [63:0] empty_119_reg_3249;
wire   [63:0] empty_121_fu_2116_p1;
reg   [63:0] empty_121_reg_3254;
wire   [63:0] empty_123_fu_2120_p1;
reg   [63:0] empty_123_reg_3259;
wire   [63:0] empty_125_fu_2124_p1;
reg   [63:0] empty_125_reg_3264;
wire   [63:0] empty_126_fu_2128_p1;
reg   [63:0] empty_126_reg_3269;
wire   [63:0] empty_127_fu_2132_p1;
reg   [63:0] empty_127_reg_3274;
wire   [63:0] empty_128_fu_2136_p1;
reg   [63:0] empty_128_reg_3279;
wire   [63:0] empty_129_fu_2140_p1;
reg   [63:0] empty_129_reg_3284;
wire   [63:0] empty_130_fu_2144_p1;
reg   [63:0] empty_130_reg_3289;
wire   [63:0] empty_131_fu_2148_p1;
reg   [63:0] empty_131_reg_3294;
wire   [63:0] empty_132_fu_2152_p1;
reg   [63:0] empty_132_reg_3299;
wire   [63:0] empty_133_fu_2156_p1;
reg   [63:0] empty_133_reg_3304;
wire   [63:0] empty_135_fu_2160_p1;
reg   [63:0] empty_135_reg_3309;
wire   [63:0] empty_137_fu_2164_p1;
reg   [63:0] empty_137_reg_3314;
wire   [63:0] empty_139_fu_2168_p1;
reg   [63:0] empty_139_reg_3319;
wire   [63:0] empty_141_fu_2172_p1;
reg   [63:0] empty_141_reg_3324;
wire   [63:0] empty_143_fu_2176_p1;
reg   [63:0] empty_143_reg_3329;
wire   [63:0] empty_145_fu_2180_p1;
reg   [63:0] empty_145_reg_3334;
wire   [63:0] empty_147_fu_2184_p1;
reg   [63:0] empty_147_reg_3339;
wire   [63:0] empty_149_fu_2188_p1;
reg   [63:0] empty_149_reg_3344;
wire   [63:0] empty_150_fu_2192_p1;
reg   [63:0] empty_150_reg_3349;
wire   [63:0] empty_151_fu_2196_p1;
reg   [63:0] empty_151_reg_3354;
wire   [63:0] empty_152_fu_2200_p1;
reg   [63:0] empty_152_reg_3359;
wire   [63:0] empty_153_fu_2204_p1;
reg   [63:0] empty_153_reg_3364;
wire   [63:0] empty_154_fu_2208_p1;
reg   [63:0] empty_154_reg_3369;
wire   [63:0] empty_155_fu_2212_p1;
reg   [63:0] empty_155_reg_3374;
wire   [63:0] empty_156_fu_2216_p1;
reg   [63:0] empty_156_reg_3379;
wire   [63:0] empty_157_fu_2220_p1;
reg   [63:0] empty_157_reg_3384;
wire   [63:0] empty_158_fu_2224_p1;
reg   [63:0] empty_158_reg_3389;
wire   [63:0] empty_160_fu_2228_p1;
reg   [63:0] empty_160_reg_3394;
wire   [63:0] empty_162_fu_2232_p1;
reg   [63:0] empty_162_reg_3399;
wire   [63:0] empty_164_fu_2236_p1;
reg   [63:0] empty_164_reg_3404;
wire   [63:0] empty_166_fu_2240_p1;
reg   [63:0] empty_166_reg_3409;
wire   [63:0] empty_168_fu_2244_p1;
reg   [63:0] empty_168_reg_3414;
wire   [63:0] empty_170_fu_2248_p1;
reg   [63:0] empty_170_reg_3419;
wire   [63:0] empty_172_fu_2253_p1;
reg   [63:0] empty_172_reg_3424;
wire    grp_bbgemm_Pipeline_loopi_fu_707_ap_start;
wire    grp_bbgemm_Pipeline_loopi_fu_707_ap_done;
wire    grp_bbgemm_Pipeline_loopi_fu_707_ap_idle;
wire    grp_bbgemm_Pipeline_loopi_fu_707_ap_ready;
wire   [11:0] grp_bbgemm_Pipeline_loopi_fu_707_m1_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_707_m1_ce0;
wire   [11:0] grp_bbgemm_Pipeline_loopi_fu_707_m1_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_707_m1_ce1;
wire   [11:0] grp_bbgemm_Pipeline_loopi_fu_707_prod_address0;
wire    grp_bbgemm_Pipeline_loopi_fu_707_prod_ce0;
wire    grp_bbgemm_Pipeline_loopi_fu_707_prod_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_707_prod_d0;
wire   [11:0] grp_bbgemm_Pipeline_loopi_fu_707_prod_address1;
wire    grp_bbgemm_Pipeline_loopi_fu_707_prod_ce1;
wire    grp_bbgemm_Pipeline_loopi_fu_707_prod_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_fu_707_prod_d1;
reg   [6:0] kk_reg_695;
wire   [0:0] tmp_75_fu_796_p3;
wire    ap_CS_fsm_state36;
reg    grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg;
wire   [63:0] p_cast7_fu_837_p1;
wire   [0:0] tmp_77_fu_812_p3;
wire   [63:0] p_cast8_fu_861_p1;
wire   [63:0] p_cast9_fu_900_p1;
wire   [63:0] p_cast10_fu_914_p1;
wire   [63:0] p_cast11_fu_959_p1;
wire   [63:0] p_cast12_fu_984_p1;
wire   [63:0] p_cast13_fu_1010_p1;
wire   [63:0] p_cast14_fu_1038_p1;
wire   [63:0] p_cast15_fu_1073_p1;
wire   [63:0] p_cast16_fu_1090_p1;
wire   [63:0] p_cast17_fu_1107_p1;
wire   [63:0] p_cast18_fu_1124_p1;
wire   [63:0] p_cast19_fu_1141_p1;
wire   [63:0] p_cast20_fu_1158_p1;
wire   [63:0] p_cast21_fu_1175_p1;
wire   [63:0] p_cast22_fu_1192_p1;
wire   [63:0] p_cast23_fu_1205_p1;
wire   [63:0] p_cast24_fu_1220_p1;
wire   [63:0] p_cast25_fu_1235_p1;
wire   [63:0] p_cast26_fu_1250_p1;
wire   [63:0] p_cast27_fu_1265_p1;
wire   [63:0] p_cast28_fu_1283_p1;
wire   [63:0] p_cast29_fu_1298_p1;
wire   [63:0] p_cast30_fu_1313_p1;
wire   [63:0] p_cast31_fu_1330_p1;
wire   [63:0] p_cast32_fu_1347_p1;
wire   [63:0] p_cast33_fu_1364_p1;
wire   [63:0] p_cast34_fu_1381_p1;
wire   [63:0] p_cast35_fu_1398_p1;
wire   [63:0] p_cast36_fu_1415_p1;
wire   [63:0] p_cast37_fu_1432_p1;
wire   [63:0] p_cast38_fu_1449_p1;
wire   [63:0] p_cast39_fu_1463_p1;
wire   [63:0] p_cast40_fu_1479_p1;
wire   [63:0] p_cast41_fu_1495_p1;
wire   [63:0] p_cast42_fu_1511_p1;
wire   [63:0] p_cast43_fu_1527_p1;
wire   [63:0] p_cast44_fu_1546_p1;
wire   [63:0] p_cast45_fu_1562_p1;
wire   [63:0] p_cast46_fu_1578_p1;
wire   [63:0] p_cast47_fu_1598_p1;
wire   [63:0] p_cast48_fu_1618_p1;
wire   [63:0] p_cast49_fu_1638_p1;
wire   [63:0] p_cast50_fu_1658_p1;
wire   [63:0] p_cast51_fu_1678_p1;
wire   [63:0] p_cast52_fu_1698_p1;
wire   [63:0] p_cast53_fu_1718_p1;
wire   [63:0] p_cast54_fu_1738_p1;
wire   [63:0] p_cast55_fu_1751_p1;
wire   [63:0] p_cast56_fu_1766_p1;
wire   [63:0] p_cast57_fu_1781_p1;
wire   [63:0] p_cast58_fu_1796_p1;
wire   [63:0] p_cast59_fu_1811_p1;
wire   [63:0] p_cast60_fu_1829_p1;
wire   [63:0] p_cast61_fu_1844_p1;
wire   [63:0] p_cast62_fu_1859_p1;
wire   [63:0] add_ln23_cast_fu_1876_p1;
wire   [63:0] p_cast63_fu_1893_p1;
wire   [63:0] p_cast64_fu_1910_p1;
wire   [63:0] p_cast65_fu_1927_p1;
wire   [63:0] p_cast66_fu_1944_p1;
wire   [63:0] p_cast67_fu_1961_p1;
wire   [63:0] p_cast68_fu_1978_p1;
wire   [63:0] p_cast69_fu_1995_p1;
reg   [6:0] jj_fu_170;
wire   [6:0] add_ln15_fu_872_p2;
reg    m2_ce1_local;
reg   [11:0] m2_address1_local;
reg    m2_ce0_local;
reg   [11:0] m2_address0_local;
wire   [11:0] tmp_2_fu_830_p3;
wire   [11:0] tmp_5_fu_851_p4;
wire   [11:0] tmp_8_fu_891_p4;
wire   [11:0] tmp_s_fu_905_p4;
wire   [5:0] or_ln_fu_929_p3;
wire   [11:0] tmp_9_fu_950_p4;
wire   [11:0] tmp_10_fu_971_p6;
wire   [6:0] zext_ln20_fu_937_p1;
wire   [11:0] tmp_11_fu_1002_p4;
wire   [11:0] p_shl_fu_1015_p3;
wire   [11:0] kk_cast4_fu_998_p1;
wire   [11:0] tmp_cast_fu_1029_p1;
wire   [11:0] empty_83_fu_1023_p2;
wire   [11:0] empty_84_fu_1032_p2;
wire   [11:0] tmp_12_fu_1061_p3;
wire   [11:0] empty_86_fu_1068_p2;
wire   [11:0] tmp_13_fu_1078_p3;
wire   [11:0] empty_88_fu_1085_p2;
wire   [11:0] tmp_14_fu_1095_p3;
wire   [11:0] empty_90_fu_1102_p2;
wire   [11:0] tmp_15_fu_1112_p3;
wire   [11:0] empty_92_fu_1119_p2;
wire   [11:0] tmp_16_fu_1129_p3;
wire   [11:0] empty_94_fu_1136_p2;
wire   [11:0] tmp_17_fu_1146_p3;
wire   [11:0] empty_96_fu_1153_p2;
wire   [11:0] tmp_18_fu_1163_p3;
wire   [11:0] empty_98_fu_1170_p2;
wire   [11:0] tmp_19_fu_1180_p3;
wire   [11:0] empty_100_fu_1187_p2;
wire   [11:0] tmp_21_fu_1197_p4;
wire   [11:0] tmp_22_fu_1210_p5;
wire   [11:0] tmp_23_fu_1225_p5;
wire   [11:0] tmp_24_fu_1240_p5;
wire   [11:0] tmp_25_fu_1255_p5;
wire   [11:0] tmp_26_fu_1270_p7;
wire   [11:0] tmp_27_fu_1288_p5;
wire   [11:0] tmp_28_fu_1303_p5;
wire   [11:0] tmp_29_fu_1318_p3;
wire   [11:0] empty_110_fu_1325_p2;
wire   [11:0] tmp_30_fu_1335_p3;
wire   [11:0] empty_112_fu_1342_p2;
wire   [11:0] tmp_31_fu_1352_p3;
wire   [11:0] empty_114_fu_1359_p2;
wire   [11:0] tmp_32_fu_1369_p3;
wire   [11:0] empty_116_fu_1376_p2;
wire   [11:0] tmp_33_fu_1386_p3;
wire   [11:0] empty_118_fu_1393_p2;
wire   [11:0] tmp_34_fu_1403_p3;
wire   [11:0] empty_120_fu_1410_p2;
wire   [11:0] tmp_35_fu_1420_p3;
wire   [11:0] empty_122_fu_1427_p2;
wire   [11:0] tmp_36_fu_1437_p3;
wire   [11:0] empty_124_fu_1444_p2;
wire   [11:0] tmp_37_fu_1454_p5;
wire   [11:0] tmp_38_fu_1468_p6;
wire   [11:0] tmp_39_fu_1484_p6;
wire   [11:0] tmp_40_fu_1500_p6;
wire   [11:0] tmp_41_fu_1516_p6;
wire   [11:0] tmp_42_fu_1532_p8;
wire   [11:0] tmp_43_fu_1551_p6;
wire   [11:0] tmp_44_fu_1567_p6;
wire   [11:0] tmp_45_fu_1583_p5;
wire   [11:0] empty_134_fu_1593_p2;
wire   [11:0] tmp_46_fu_1603_p5;
wire   [11:0] empty_136_fu_1613_p2;
wire   [11:0] tmp_47_fu_1623_p5;
wire   [11:0] empty_138_fu_1633_p2;
wire   [11:0] tmp_48_fu_1643_p5;
wire   [11:0] empty_140_fu_1653_p2;
wire   [11:0] tmp_49_fu_1663_p5;
wire   [11:0] empty_142_fu_1673_p2;
wire   [11:0] tmp_50_fu_1683_p5;
wire   [11:0] empty_144_fu_1693_p2;
wire   [11:0] tmp_51_fu_1703_p5;
wire   [11:0] empty_146_fu_1713_p2;
wire   [11:0] tmp_52_fu_1723_p5;
wire   [11:0] empty_148_fu_1733_p2;
wire   [11:0] tmp_53_fu_1743_p4;
wire   [11:0] tmp_54_fu_1756_p5;
wire   [11:0] tmp_55_fu_1771_p5;
wire   [11:0] tmp_56_fu_1786_p5;
wire   [11:0] tmp_57_fu_1801_p5;
wire   [11:0] tmp_58_fu_1816_p7;
wire   [11:0] tmp_59_fu_1834_p5;
wire   [11:0] tmp_60_fu_1849_p5;
wire   [11:0] shl_ln_fu_1864_p3;
wire   [11:0] add_ln23_fu_1871_p2;
wire   [11:0] tmp_61_fu_1881_p3;
wire   [11:0] empty_159_fu_1888_p2;
wire   [11:0] tmp_62_fu_1898_p3;
wire   [11:0] empty_161_fu_1905_p2;
wire   [11:0] tmp_63_fu_1915_p3;
wire   [11:0] empty_163_fu_1922_p2;
wire   [11:0] tmp_64_fu_1932_p3;
wire   [11:0] empty_165_fu_1939_p2;
wire   [11:0] tmp_65_fu_1949_p3;
wire   [11:0] empty_167_fu_1956_p2;
wire   [11:0] tmp_66_fu_1966_p3;
wire   [11:0] empty_169_fu_1973_p2;
wire   [11:0] tmp_67_fu_1983_p3;
wire   [11:0] empty_171_fu_1990_p2;
reg   [35:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
reg    ap_ST_fsm_state36_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 36'd1;
#0 grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg = 1'b0;
#0 jj_fu_170 = 7'd0;
end
bbgemm_bbgemm_Pipeline_loopi grp_bbgemm_Pipeline_loopi_fu_707(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_fu_707_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_fu_707_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_fu_707_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_fu_707_ap_ready),.kk(trunc_ln16_reg_2482),.m1_address0(grp_bbgemm_Pipeline_loopi_fu_707_m1_address0),.m1_ce0(grp_bbgemm_Pipeline_loopi_fu_707_m1_ce0),.m1_q0(m1_q0),.m1_address1(grp_bbgemm_Pipeline_loopi_fu_707_m1_address1),.m1_ce1(grp_bbgemm_Pipeline_loopi_fu_707_m1_ce1),.m1_q1(m1_q1),.empty_12(empty_reg_3109),.jj(jj_1_reg_2265),.prod_address0(grp_bbgemm_Pipeline_loopi_fu_707_prod_address0),.prod_ce0(grp_bbgemm_Pipeline_loopi_fu_707_prod_ce0),.prod_we0(grp_bbgemm_Pipeline_loopi_fu_707_prod_we0),.prod_d0(grp_bbgemm_Pipeline_loopi_fu_707_prod_d0),.prod_q0(prod_q0),.prod_address1(grp_bbgemm_Pipeline_loopi_fu_707_prod_address1),.prod_ce1(grp_bbgemm_Pipeline_loopi_fu_707_prod_ce1),.prod_we1(grp_bbgemm_Pipeline_loopi_fu_707_prod_we1),.prod_d1(grp_bbgemm_Pipeline_loopi_fu_707_prod_d1),.prod_q1(prod_q1),.empty_13(empty_77_reg_3114),.tmp_4(tmp_4_reg_2346),.empty_14(empty_78_reg_3119),.tmp_6(tmp_6_reg_2374),.empty_15(empty_79_reg_3124),.empty_16(empty_80_reg_3129),.tmp_11(tmp_7_reg_2441),.empty_17(empty_81_reg_3134),.empty_18(tmp_79_reg_2464),.empty_19(empty_82_reg_3139),.empty_20(empty_85_reg_3144),.empty_21(empty_87_reg_3149),.empty_22(empty_89_reg_3154),.empty_23(empty_91_reg_3159),.empty_24(empty_93_reg_3164),.empty_25(empty_95_reg_3169),.empty_26(empty_97_reg_3174),.empty_27(empty_99_reg_3179),.empty_28(empty_101_reg_3184),.empty_29(empty_102_reg_3189),.empty_30(empty_103_reg_3194),.empty_31(empty_104_reg_3199),.empty_32(empty_105_reg_3204),.empty_33(empty_106_reg_3209),.empty_34(empty_107_reg_3214),.empty_35(empty_108_reg_3219),.empty_36(empty_109_reg_3224),.empty_37(empty_111_reg_3229),.empty_38(empty_113_reg_3234),.empty_39(empty_115_reg_3239),.empty_40(empty_117_reg_3244),.empty_41(empty_119_reg_3249),.empty_42(empty_121_reg_3254),.empty_43(empty_123_reg_3259),.empty_44(empty_125_reg_3264),.empty_45(empty_126_reg_3269),.empty_46(empty_127_reg_3274),.empty_47(empty_128_reg_3279),.empty_48(empty_129_reg_3284),.empty_49(empty_130_reg_3289),.empty_50(empty_131_reg_3294),.empty_51(empty_132_reg_3299),.empty_52(empty_133_reg_3304),.empty_53(tmp_80_reg_2528),.empty_54(empty_135_reg_3309),.empty_55(empty_137_reg_3314),.empty_56(empty_139_reg_3319),.empty_57(empty_141_reg_3324),.empty_58(empty_143_reg_3329),.empty_59(empty_145_reg_3334),.empty_60(empty_147_reg_3339),.empty_61(empty_149_reg_3344),.empty_62(empty_150_reg_3349),.empty_63(empty_151_reg_3354),.empty_64(empty_152_reg_3359),.empty_65(empty_153_reg_3364),.empty_66(empty_154_reg_3369),.empty_67(empty_155_reg_3374),.empty_68(empty_156_reg_3379),.empty_69(empty_157_reg_3384),.empty_70(empty_158_reg_3389),.empty_71(empty_160_reg_3394),.empty_72(empty_162_reg_3399),.empty_73(empty_164_reg_3404),.empty_74(empty_166_reg_3409),.empty_75(empty_168_reg_3414),.empty_76(empty_170_reg_3419),.empty(empty_172_reg_3424),.kk_cast4(trunc_ln16_reg_2482),.zext_ln15(trunc_ln11_reg_2316));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state35)) begin
            grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg <= 1'b1;
        end else if ((grp_bbgemm_Pipeline_loopi_fu_707_ap_ready == 1'b1)) begin
            grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        jj_fu_170 <= 7'd0;
    end else if (((tmp_77_fu_812_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_fu_170 <= add_ln15_fu_872_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_fu_707_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
        kk_reg_695 <= add_ln16_reg_2359;
    end else if (((tmp_75_fu_796_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kk_reg_695 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_2359 <= add_ln16_fu_866_p2;
        tmp_1_reg_2324 <= {{kk_reg_695[5:1]}};
        tmp_4_reg_2346 <= {{jj_fu_170[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        empty_101_reg_3184 <= empty_101_fu_2060_p1;
        empty_102_reg_3189 <= empty_102_fu_2064_p1;
        empty_103_reg_3194 <= empty_103_fu_2068_p1;
        empty_104_reg_3199 <= empty_104_fu_2072_p1;
        empty_105_reg_3204 <= empty_105_fu_2076_p1;
        empty_106_reg_3209 <= empty_106_fu_2080_p1;
        empty_107_reg_3214 <= empty_107_fu_2084_p1;
        empty_108_reg_3219 <= empty_108_fu_2088_p1;
        empty_109_reg_3224 <= empty_109_fu_2092_p1;
        empty_111_reg_3229 <= empty_111_fu_2096_p1;
        empty_113_reg_3234 <= empty_113_fu_2100_p1;
        empty_115_reg_3239 <= empty_115_fu_2104_p1;
        empty_117_reg_3244 <= empty_117_fu_2108_p1;
        empty_119_reg_3249 <= empty_119_fu_2112_p1;
        empty_121_reg_3254 <= empty_121_fu_2116_p1;
        empty_123_reg_3259 <= empty_123_fu_2120_p1;
        empty_125_reg_3264 <= empty_125_fu_2124_p1;
        empty_126_reg_3269 <= empty_126_fu_2128_p1;
        empty_127_reg_3274 <= empty_127_fu_2132_p1;
        empty_128_reg_3279 <= empty_128_fu_2136_p1;
        empty_129_reg_3284 <= empty_129_fu_2140_p1;
        empty_130_reg_3289 <= empty_130_fu_2144_p1;
        empty_131_reg_3294 <= empty_131_fu_2148_p1;
        empty_132_reg_3299 <= empty_132_fu_2152_p1;
        empty_133_reg_3304 <= empty_133_fu_2156_p1;
        empty_135_reg_3309 <= empty_135_fu_2160_p1;
        empty_137_reg_3314 <= empty_137_fu_2164_p1;
        empty_139_reg_3319 <= empty_139_fu_2168_p1;
        empty_141_reg_3324 <= empty_141_fu_2172_p1;
        empty_143_reg_3329 <= empty_143_fu_2176_p1;
        empty_145_reg_3334 <= empty_145_fu_2180_p1;
        empty_147_reg_3339 <= empty_147_fu_2184_p1;
        empty_149_reg_3344 <= empty_149_fu_2188_p1;
        empty_150_reg_3349 <= empty_150_fu_2192_p1;
        empty_151_reg_3354 <= empty_151_fu_2196_p1;
        empty_152_reg_3359 <= empty_152_fu_2200_p1;
        empty_153_reg_3364 <= empty_153_fu_2204_p1;
        empty_154_reg_3369 <= empty_154_fu_2208_p1;
        empty_155_reg_3374 <= empty_155_fu_2212_p1;
        empty_156_reg_3379 <= empty_156_fu_2216_p1;
        empty_157_reg_3384 <= empty_157_fu_2220_p1;
        empty_158_reg_3389 <= empty_158_fu_2224_p1;
        empty_160_reg_3394 <= empty_160_fu_2228_p1;
        empty_162_reg_3399 <= empty_162_fu_2232_p1;
        empty_164_reg_3404 <= empty_164_fu_2236_p1;
        empty_166_reg_3409 <= empty_166_fu_2240_p1;
        empty_168_reg_3414 <= empty_168_fu_2244_p1;
        empty_170_reg_3419 <= empty_170_fu_2248_p1;
        empty_172_reg_3424 <= empty_172_fu_2253_p1;
        empty_77_reg_3114 <= empty_77_fu_2004_p1;
        empty_78_reg_3119 <= empty_78_fu_2008_p1;
        empty_79_reg_3124 <= empty_79_fu_2012_p1;
        empty_80_reg_3129 <= empty_80_fu_2016_p1;
        empty_81_reg_3134 <= empty_81_fu_2020_p1;
        empty_82_reg_3139 <= empty_82_fu_2024_p1;
        empty_85_reg_3144 <= empty_85_fu_2028_p1;
        empty_87_reg_3149 <= empty_87_fu_2032_p1;
        empty_89_reg_3154 <= empty_89_fu_2036_p1;
        empty_91_reg_3159 <= empty_91_fu_2040_p1;
        empty_93_reg_3164 <= empty_93_fu_2044_p1;
        empty_95_reg_3169 <= empty_95_fu_2048_p1;
        empty_97_reg_3174 <= empty_97_fu_2052_p1;
        empty_99_reg_3179 <= empty_99_fu_2056_p1;
        empty_reg_3109 <= empty_fu_2000_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        jj_1_reg_2265 <= jj_fu_170;
        trunc_ln11_reg_2316 <= trunc_ln11_fu_808_p1;
        zext_ln15_reg_2280[6 : 0] <= zext_ln15_fu_804_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_load_10_reg_2589 <= m2_q1;
        m2_load_11_reg_2594 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_load_12_reg_2609 <= m2_q1;
        m2_load_13_reg_2614 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_load_14_reg_2629 <= m2_q1;
        m2_load_15_reg_2634 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_load_16_reg_2649 <= m2_q1;
        m2_load_17_reg_2654 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_load_18_reg_2669 <= m2_q1;
        m2_load_19_reg_2674 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_load_1_reg_2369 <= m2_q0;
        m2_load_reg_2364 <= m2_q1;
        tmp_6_reg_2374 <= {{jj_1_reg_2265[6:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_load_20_reg_2689 <= m2_q1;
        m2_load_21_reg_2694 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_load_22_reg_2709 <= m2_q1;
        m2_load_23_reg_2714 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_load_24_reg_2729 <= m2_q1;
        m2_load_25_reg_2734 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_load_26_reg_2749 <= m2_q1;
        m2_load_27_reg_2754 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_load_28_reg_2769 <= m2_q1;
        m2_load_29_reg_2774 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_load_2_reg_2431 <= m2_q1;
        m2_load_3_reg_2436 <= m2_q0;
        tmp_3_reg_2395 <= {{kk_reg_695[5:3]}};
        tmp_79_reg_2464 <= jj_1_reg_2265[32'd1];
        tmp_7_reg_2441 <= {{jj_1_reg_2265[6:3]}};
        tmp_reg_2477 <= tmp_fu_989_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        m2_load_30_reg_2789 <= m2_q1;
        m2_load_31_reg_2794 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        m2_load_32_reg_2809 <= m2_q1;
        m2_load_33_reg_2814 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        m2_load_34_reg_2829 <= m2_q1;
        m2_load_35_reg_2834 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        m2_load_36_reg_2849 <= m2_q1;
        m2_load_37_reg_2854 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        m2_load_38_reg_2869 <= m2_q1;
        m2_load_39_reg_2874 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        m2_load_40_reg_2889 <= m2_q1;
        m2_load_41_reg_2894 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        m2_load_42_reg_2909 <= m2_q1;
        m2_load_43_reg_2914 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        m2_load_44_reg_2929 <= m2_q1;
        m2_load_45_reg_2934 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        m2_load_46_reg_2949 <= m2_q1;
        m2_load_47_reg_2954 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        m2_load_48_reg_2969 <= m2_q1;
        m2_load_49_reg_2974 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_load_4_reg_2488 <= m2_q1;
        m2_load_5_reg_2493 <= m2_q0;
        tmp_20_reg_2508 <= {{kk_reg_695[5:2]}};
        tmp_80_reg_2528 <= kk_reg_695[32'd1];
        trunc_ln16_reg_2482 <= trunc_ln16_fu_994_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        m2_load_50_reg_2989 <= m2_q1;
        m2_load_51_reg_2994 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        m2_load_52_reg_3009 <= m2_q1;
        m2_load_53_reg_3014 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        m2_load_54_reg_3029 <= m2_q1;
        m2_load_55_reg_3034 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        m2_load_56_reg_3049 <= m2_q1;
        m2_load_57_reg_3054 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        m2_load_58_reg_3069 <= m2_q1;
        m2_load_59_reg_3074 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        m2_load_60_reg_3089 <= m2_q1;
        m2_load_61_reg_3094 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_load_6_reg_2549 <= m2_q1;
        m2_load_7_reg_2554 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_load_8_reg_2569 <= m2_q1;
        m2_load_9_reg_2574 <= m2_q0;
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
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
always @ (*) begin
    if ((grp_bbgemm_Pipeline_loopi_fu_707_ap_done == 1'b0)) begin
        ap_ST_fsm_state36_blk = 1'b1;
    end else begin
        ap_ST_fsm_state36_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_75_fu_796_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_75_fu_796_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        m2_address0_local = p_cast69_fu_1995_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        m2_address0_local = p_cast67_fu_1961_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        m2_address0_local = p_cast65_fu_1927_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        m2_address0_local = p_cast63_fu_1893_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        m2_address0_local = p_cast62_fu_1859_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        m2_address0_local = p_cast60_fu_1829_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        m2_address0_local = p_cast58_fu_1796_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        m2_address0_local = p_cast56_fu_1766_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        m2_address0_local = p_cast54_fu_1738_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        m2_address0_local = p_cast52_fu_1698_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        m2_address0_local = p_cast50_fu_1658_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        m2_address0_local = p_cast48_fu_1618_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        m2_address0_local = p_cast46_fu_1578_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        m2_address0_local = p_cast44_fu_1546_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        m2_address0_local = p_cast42_fu_1511_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        m2_address0_local = p_cast40_fu_1479_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_address0_local = p_cast38_fu_1449_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_address0_local = p_cast36_fu_1415_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_address0_local = p_cast34_fu_1381_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_address0_local = p_cast32_fu_1347_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_address0_local = p_cast30_fu_1313_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_address0_local = p_cast28_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_address0_local = p_cast26_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_address0_local = p_cast24_fu_1220_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_address0_local = p_cast22_fu_1192_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_address0_local = p_cast20_fu_1158_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_address0_local = p_cast18_fu_1124_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_address0_local = p_cast16_fu_1090_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_address0_local = p_cast14_fu_1038_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_address0_local = p_cast12_fu_984_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_address0_local = p_cast10_fu_914_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_address0_local = p_cast8_fu_861_p1;
    end else begin
        m2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        m2_address1_local = p_cast68_fu_1978_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        m2_address1_local = p_cast66_fu_1944_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        m2_address1_local = p_cast64_fu_1910_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        m2_address1_local = add_ln23_cast_fu_1876_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        m2_address1_local = p_cast61_fu_1844_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        m2_address1_local = p_cast59_fu_1811_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        m2_address1_local = p_cast57_fu_1781_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        m2_address1_local = p_cast55_fu_1751_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        m2_address1_local = p_cast53_fu_1718_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        m2_address1_local = p_cast51_fu_1678_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        m2_address1_local = p_cast49_fu_1638_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        m2_address1_local = p_cast47_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        m2_address1_local = p_cast45_fu_1562_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        m2_address1_local = p_cast43_fu_1527_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        m2_address1_local = p_cast41_fu_1495_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        m2_address1_local = p_cast39_fu_1463_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_address1_local = p_cast37_fu_1432_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_address1_local = p_cast35_fu_1398_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_address1_local = p_cast33_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_address1_local = p_cast31_fu_1330_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_address1_local = p_cast29_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_address1_local = p_cast27_fu_1265_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_address1_local = p_cast25_fu_1235_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_address1_local = p_cast23_fu_1205_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_address1_local = p_cast21_fu_1175_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_address1_local = p_cast19_fu_1141_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_address1_local = p_cast17_fu_1107_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_address1_local = p_cast15_fu_1073_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_address1_local = p_cast13_fu_1010_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_address1_local = p_cast11_fu_959_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_address1_local = p_cast9_fu_900_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_address1_local = p_cast7_fu_837_p1;
    end else begin
        m2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m2_ce1_local = 1'b1;
    end else begin
        m2_ce1_local = 1'b0;
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
            if (((tmp_75_fu_796_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_77_fu_812_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            if (((grp_bbgemm_Pipeline_loopi_fu_707_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_872_p2 = (jj_fu_170 + 7'd8);
assign add_ln16_fu_866_p2 = (kk_reg_695 + 7'd8);
assign add_ln23_cast_fu_1876_p1 = add_ln23_fu_1871_p2;
assign add_ln23_fu_1871_p2 = (shl_ln_fu_1864_p3 + zext_ln15_reg_2280);
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
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_100_fu_1187_p2 = (tmp_19_fu_1180_p3 + zext_ln15_reg_2280);
assign empty_101_fu_2060_p1 = m2_load_15_reg_2634;
assign empty_102_fu_2064_p1 = m2_load_16_reg_2649;
assign empty_103_fu_2068_p1 = m2_load_17_reg_2654;
assign empty_104_fu_2072_p1 = m2_load_18_reg_2669;
assign empty_105_fu_2076_p1 = m2_load_19_reg_2674;
assign empty_106_fu_2080_p1 = m2_load_20_reg_2689;
assign empty_107_fu_2084_p1 = m2_load_21_reg_2694;
assign empty_108_fu_2088_p1 = m2_load_22_reg_2709;
assign empty_109_fu_2092_p1 = m2_load_23_reg_2714;
assign empty_110_fu_1325_p2 = (tmp_29_fu_1318_p3 + zext_ln15_reg_2280);
assign empty_111_fu_2096_p1 = m2_load_24_reg_2729;
assign empty_112_fu_1342_p2 = (tmp_30_fu_1335_p3 + zext_ln15_reg_2280);
assign empty_113_fu_2100_p1 = m2_load_25_reg_2734;
assign empty_114_fu_1359_p2 = (tmp_31_fu_1352_p3 + zext_ln15_reg_2280);
assign empty_115_fu_2104_p1 = m2_load_26_reg_2749;
assign empty_116_fu_1376_p2 = (tmp_32_fu_1369_p3 + zext_ln15_reg_2280);
assign empty_117_fu_2108_p1 = m2_load_27_reg_2754;
assign empty_118_fu_1393_p2 = (tmp_33_fu_1386_p3 + zext_ln15_reg_2280);
assign empty_119_fu_2112_p1 = m2_load_28_reg_2769;
assign empty_120_fu_1410_p2 = (tmp_34_fu_1403_p3 + zext_ln15_reg_2280);
assign empty_121_fu_2116_p1 = m2_load_29_reg_2774;
assign empty_122_fu_1427_p2 = (tmp_35_fu_1420_p3 + zext_ln15_reg_2280);
assign empty_123_fu_2120_p1 = m2_load_30_reg_2789;
assign empty_124_fu_1444_p2 = (tmp_36_fu_1437_p3 + zext_ln15_reg_2280);
assign empty_125_fu_2124_p1 = m2_load_31_reg_2794;
assign empty_126_fu_2128_p1 = m2_load_32_reg_2809;
assign empty_127_fu_2132_p1 = m2_load_33_reg_2814;
assign empty_128_fu_2136_p1 = m2_load_34_reg_2829;
assign empty_129_fu_2140_p1 = m2_load_35_reg_2834;
assign empty_130_fu_2144_p1 = m2_load_36_reg_2849;
assign empty_131_fu_2148_p1 = m2_load_37_reg_2854;
assign empty_132_fu_2152_p1 = m2_load_38_reg_2869;
assign empty_133_fu_2156_p1 = m2_load_39_reg_2874;
assign empty_134_fu_1593_p2 = (tmp_45_fu_1583_p5 + zext_ln15_reg_2280);
assign empty_135_fu_2160_p1 = m2_load_40_reg_2889;
assign empty_136_fu_1613_p2 = (tmp_46_fu_1603_p5 + zext_ln15_reg_2280);
assign empty_137_fu_2164_p1 = m2_load_41_reg_2894;
assign empty_138_fu_1633_p2 = (tmp_47_fu_1623_p5 + zext_ln15_reg_2280);
assign empty_139_fu_2168_p1 = m2_load_42_reg_2909;
assign empty_140_fu_1653_p2 = (tmp_48_fu_1643_p5 + zext_ln15_reg_2280);
assign empty_141_fu_2172_p1 = m2_load_43_reg_2914;
assign empty_142_fu_1673_p2 = (tmp_49_fu_1663_p5 + zext_ln15_reg_2280);
assign empty_143_fu_2176_p1 = m2_load_44_reg_2929;
assign empty_144_fu_1693_p2 = (tmp_50_fu_1683_p5 + zext_ln15_reg_2280);
assign empty_145_fu_2180_p1 = m2_load_45_reg_2934;
assign empty_146_fu_1713_p2 = (tmp_51_fu_1703_p5 + zext_ln15_reg_2280);
assign empty_147_fu_2184_p1 = m2_load_46_reg_2949;
assign empty_148_fu_1733_p2 = (tmp_52_fu_1723_p5 + zext_ln15_reg_2280);
assign empty_149_fu_2188_p1 = m2_load_47_reg_2954;
assign empty_150_fu_2192_p1 = m2_load_48_reg_2969;
assign empty_151_fu_2196_p1 = m2_load_49_reg_2974;
assign empty_152_fu_2200_p1 = m2_load_50_reg_2989;
assign empty_153_fu_2204_p1 = m2_load_51_reg_2994;
assign empty_154_fu_2208_p1 = m2_load_52_reg_3009;
assign empty_155_fu_2212_p1 = m2_load_53_reg_3014;
assign empty_156_fu_2216_p1 = m2_load_54_reg_3029;
assign empty_157_fu_2220_p1 = m2_load_55_reg_3034;
assign empty_158_fu_2224_p1 = m2_load_56_reg_3049;
assign empty_159_fu_1888_p2 = (tmp_61_fu_1881_p3 + zext_ln15_reg_2280);
assign empty_160_fu_2228_p1 = m2_load_57_reg_3054;
assign empty_161_fu_1905_p2 = (tmp_62_fu_1898_p3 + zext_ln15_reg_2280);
assign empty_162_fu_2232_p1 = m2_load_58_reg_3069;
assign empty_163_fu_1922_p2 = (tmp_63_fu_1915_p3 + zext_ln15_reg_2280);
assign empty_164_fu_2236_p1 = m2_load_59_reg_3074;
assign empty_165_fu_1939_p2 = (tmp_64_fu_1932_p3 + zext_ln15_reg_2280);
assign empty_166_fu_2240_p1 = m2_load_60_reg_3089;
assign empty_167_fu_1956_p2 = (tmp_65_fu_1949_p3 + zext_ln15_reg_2280);
assign empty_168_fu_2244_p1 = m2_load_61_reg_3094;
assign empty_169_fu_1973_p2 = (tmp_66_fu_1966_p3 + zext_ln15_reg_2280);
assign empty_170_fu_2248_p1 = m2_q1;
assign empty_171_fu_1990_p2 = (tmp_67_fu_1983_p3 + zext_ln15_reg_2280);
assign empty_172_fu_2253_p1 = m2_q0;
assign empty_77_fu_2004_p1 = m2_load_1_reg_2369;
assign empty_78_fu_2008_p1 = m2_load_2_reg_2431;
assign empty_79_fu_2012_p1 = m2_load_3_reg_2436;
assign empty_80_fu_2016_p1 = m2_load_4_reg_2488;
assign empty_81_fu_2020_p1 = m2_load_5_reg_2493;
assign empty_82_fu_2024_p1 = m2_load_6_reg_2549;
assign empty_83_fu_1023_p2 = (p_shl_fu_1015_p3 - kk_cast4_fu_998_p1);
assign empty_84_fu_1032_p2 = (tmp_cast_fu_1029_p1 + empty_83_fu_1023_p2);
assign empty_85_fu_2028_p1 = m2_load_7_reg_2554;
assign empty_86_fu_1068_p2 = (tmp_12_fu_1061_p3 + zext_ln15_reg_2280);
assign empty_87_fu_2032_p1 = m2_load_8_reg_2569;
assign empty_88_fu_1085_p2 = (tmp_13_fu_1078_p3 + zext_ln15_reg_2280);
assign empty_89_fu_2036_p1 = m2_load_9_reg_2574;
assign empty_90_fu_1102_p2 = (tmp_14_fu_1095_p3 + zext_ln15_reg_2280);
assign empty_91_fu_2040_p1 = m2_load_10_reg_2589;
assign empty_92_fu_1119_p2 = (tmp_15_fu_1112_p3 + zext_ln15_reg_2280);
assign empty_93_fu_2044_p1 = m2_load_11_reg_2594;
assign empty_94_fu_1136_p2 = (tmp_16_fu_1129_p3 + zext_ln15_reg_2280);
assign empty_95_fu_2048_p1 = m2_load_12_reg_2609;
assign empty_96_fu_1153_p2 = (tmp_17_fu_1146_p3 + zext_ln15_reg_2280);
assign empty_97_fu_2052_p1 = m2_load_13_reg_2614;
assign empty_98_fu_1170_p2 = (tmp_18_fu_1163_p3 + zext_ln15_reg_2280);
assign empty_99_fu_2056_p1 = m2_load_14_reg_2629;
assign empty_fu_2000_p1 = m2_load_reg_2364;
assign grp_bbgemm_Pipeline_loopi_fu_707_ap_start = grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg;
assign kk_cast4_fu_998_p1 = kk_reg_695;
assign m1_address0 = grp_bbgemm_Pipeline_loopi_fu_707_m1_address0;
assign m1_address1 = grp_bbgemm_Pipeline_loopi_fu_707_m1_address1;
assign m1_ce0 = grp_bbgemm_Pipeline_loopi_fu_707_m1_ce0;
assign m1_ce1 = grp_bbgemm_Pipeline_loopi_fu_707_m1_ce1;
assign m2_address0 = m2_address0_local;
assign m2_address1 = m2_address1_local;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign or_ln_fu_929_p3 = {{tmp_3_fu_919_p4}, {3'd7}};
assign p_cast10_fu_914_p1 = tmp_s_fu_905_p4;
assign p_cast11_fu_959_p1 = tmp_9_fu_950_p4;
assign p_cast12_fu_984_p1 = tmp_10_fu_971_p6;
assign p_cast13_fu_1010_p1 = tmp_11_fu_1002_p4;
assign p_cast14_fu_1038_p1 = empty_84_fu_1032_p2;
assign p_cast15_fu_1073_p1 = empty_86_fu_1068_p2;
assign p_cast16_fu_1090_p1 = empty_88_fu_1085_p2;
assign p_cast17_fu_1107_p1 = empty_90_fu_1102_p2;
assign p_cast18_fu_1124_p1 = empty_92_fu_1119_p2;
assign p_cast19_fu_1141_p1 = empty_94_fu_1136_p2;
assign p_cast20_fu_1158_p1 = empty_96_fu_1153_p2;
assign p_cast21_fu_1175_p1 = empty_98_fu_1170_p2;
assign p_cast22_fu_1192_p1 = empty_100_fu_1187_p2;
assign p_cast23_fu_1205_p1 = tmp_21_fu_1197_p4;
assign p_cast24_fu_1220_p1 = tmp_22_fu_1210_p5;
assign p_cast25_fu_1235_p1 = tmp_23_fu_1225_p5;
assign p_cast26_fu_1250_p1 = tmp_24_fu_1240_p5;
assign p_cast27_fu_1265_p1 = tmp_25_fu_1255_p5;
assign p_cast28_fu_1283_p1 = tmp_26_fu_1270_p7;
assign p_cast29_fu_1298_p1 = tmp_27_fu_1288_p5;
assign p_cast30_fu_1313_p1 = tmp_28_fu_1303_p5;
assign p_cast31_fu_1330_p1 = empty_110_fu_1325_p2;
assign p_cast32_fu_1347_p1 = empty_112_fu_1342_p2;
assign p_cast33_fu_1364_p1 = empty_114_fu_1359_p2;
assign p_cast34_fu_1381_p1 = empty_116_fu_1376_p2;
assign p_cast35_fu_1398_p1 = empty_118_fu_1393_p2;
assign p_cast36_fu_1415_p1 = empty_120_fu_1410_p2;
assign p_cast37_fu_1432_p1 = empty_122_fu_1427_p2;
assign p_cast38_fu_1449_p1 = empty_124_fu_1444_p2;
assign p_cast39_fu_1463_p1 = tmp_37_fu_1454_p5;
assign p_cast40_fu_1479_p1 = tmp_38_fu_1468_p6;
assign p_cast41_fu_1495_p1 = tmp_39_fu_1484_p6;
assign p_cast42_fu_1511_p1 = tmp_40_fu_1500_p6;
assign p_cast43_fu_1527_p1 = tmp_41_fu_1516_p6;
assign p_cast44_fu_1546_p1 = tmp_42_fu_1532_p8;
assign p_cast45_fu_1562_p1 = tmp_43_fu_1551_p6;
assign p_cast46_fu_1578_p1 = tmp_44_fu_1567_p6;
assign p_cast47_fu_1598_p1 = empty_134_fu_1593_p2;
assign p_cast48_fu_1618_p1 = empty_136_fu_1613_p2;
assign p_cast49_fu_1638_p1 = empty_138_fu_1633_p2;
assign p_cast50_fu_1658_p1 = empty_140_fu_1653_p2;
assign p_cast51_fu_1678_p1 = empty_142_fu_1673_p2;
assign p_cast52_fu_1698_p1 = empty_144_fu_1693_p2;
assign p_cast53_fu_1718_p1 = empty_146_fu_1713_p2;
assign p_cast54_fu_1738_p1 = empty_148_fu_1733_p2;
assign p_cast55_fu_1751_p1 = tmp_53_fu_1743_p4;
assign p_cast56_fu_1766_p1 = tmp_54_fu_1756_p5;
assign p_cast57_fu_1781_p1 = tmp_55_fu_1771_p5;
assign p_cast58_fu_1796_p1 = tmp_56_fu_1786_p5;
assign p_cast59_fu_1811_p1 = tmp_57_fu_1801_p5;
assign p_cast60_fu_1829_p1 = tmp_58_fu_1816_p7;
assign p_cast61_fu_1844_p1 = tmp_59_fu_1834_p5;
assign p_cast62_fu_1859_p1 = tmp_60_fu_1849_p5;
assign p_cast63_fu_1893_p1 = empty_159_fu_1888_p2;
assign p_cast64_fu_1910_p1 = empty_161_fu_1905_p2;
assign p_cast65_fu_1927_p1 = empty_163_fu_1922_p2;
assign p_cast66_fu_1944_p1 = empty_165_fu_1939_p2;
assign p_cast67_fu_1961_p1 = empty_167_fu_1956_p2;
assign p_cast68_fu_1978_p1 = empty_169_fu_1973_p2;
assign p_cast69_fu_1995_p1 = empty_171_fu_1990_p2;
assign p_cast7_fu_837_p1 = tmp_2_fu_830_p3;
assign p_cast8_fu_861_p1 = tmp_5_fu_851_p4;
assign p_cast9_fu_900_p1 = tmp_8_fu_891_p4;
assign p_shl_fu_1015_p3 = {{trunc_ln16_fu_994_p1}, {6'd0}};
assign prod_address0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_address0;
assign prod_address1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_address1;
assign prod_ce0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_ce0;
assign prod_ce1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_ce1;
assign prod_d0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_d0;
assign prod_d1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_d1;
assign prod_we0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_we0;
assign prod_we1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_we1;
assign shl_ln_fu_1864_p3 = {{tmp_3_reg_2395}, {9'd448}};
assign tmp_10_fu_971_p6 = {{{{{tmp_1_reg_2324}, {tmp_7_fu_941_p4}}, {1'd1}}, {tmp_79_fu_964_p3}}, {1'd1}};
assign tmp_11_fu_1002_p4 = {{{tmp_1_reg_2324}, {tmp_7_reg_2441}}, {3'd6}};
assign tmp_12_fu_1061_p3 = {{tmp_1_reg_2324}, {7'd64}};
assign tmp_13_fu_1078_p3 = {{tmp_1_reg_2324}, {7'd65}};
assign tmp_14_fu_1095_p3 = {{tmp_1_reg_2324}, {7'd66}};
assign tmp_15_fu_1112_p3 = {{tmp_1_reg_2324}, {7'd67}};
assign tmp_16_fu_1129_p3 = {{tmp_1_reg_2324}, {7'd68}};
assign tmp_17_fu_1146_p3 = {{tmp_1_reg_2324}, {7'd69}};
assign tmp_18_fu_1163_p3 = {{tmp_1_reg_2324}, {7'd70}};
assign tmp_19_fu_1180_p3 = {{tmp_1_reg_2324}, {7'd71}};
assign tmp_1_fu_820_p4 = {{kk_reg_695[5:1]}};
assign tmp_21_fu_1197_p4 = {{{tmp_20_reg_2508}, {1'd1}}, {jj_1_reg_2265}};
assign tmp_22_fu_1210_p5 = {{{{tmp_20_reg_2508}, {1'd1}}, {tmp_4_reg_2346}}, {1'd1}};
assign tmp_23_fu_1225_p5 = {{{{tmp_20_reg_2508}, {1'd1}}, {tmp_6_reg_2374}}, {2'd2}};
assign tmp_24_fu_1240_p5 = {{{{tmp_20_reg_2508}, {1'd1}}, {tmp_6_reg_2374}}, {2'd3}};
assign tmp_25_fu_1255_p5 = {{{{tmp_20_reg_2508}, {1'd1}}, {tmp_7_reg_2441}}, {3'd4}};
assign tmp_26_fu_1270_p7 = {{{{{{tmp_20_reg_2508}, {1'd1}}, {tmp_7_reg_2441}}, {1'd1}}, {tmp_79_reg_2464}}, {1'd1}};
assign tmp_27_fu_1288_p5 = {{{{tmp_20_reg_2508}, {1'd1}}, {tmp_7_reg_2441}}, {3'd6}};
assign tmp_28_fu_1303_p5 = {{{{tmp_20_reg_2508}, {1'd1}}, {tmp_7_reg_2441}}, {3'd7}};
assign tmp_29_fu_1318_p3 = {{tmp_20_reg_2508}, {8'd192}};
assign tmp_2_fu_830_p3 = {{tmp_1_fu_820_p4}, {jj_fu_170}};
assign tmp_30_fu_1335_p3 = {{tmp_20_reg_2508}, {8'd193}};
assign tmp_31_fu_1352_p3 = {{tmp_20_reg_2508}, {8'd194}};
assign tmp_32_fu_1369_p3 = {{tmp_20_reg_2508}, {8'd195}};
assign tmp_33_fu_1386_p3 = {{tmp_20_reg_2508}, {8'd196}};
assign tmp_34_fu_1403_p3 = {{tmp_20_reg_2508}, {8'd197}};
assign tmp_35_fu_1420_p3 = {{tmp_20_reg_2508}, {8'd198}};
assign tmp_36_fu_1437_p3 = {{tmp_20_reg_2508}, {8'd199}};
assign tmp_37_fu_1454_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {jj_1_reg_2265}};
assign tmp_38_fu_1468_p6 = {{{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {tmp_4_reg_2346}}, {1'd1}};
assign tmp_39_fu_1484_p6 = {{{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {tmp_6_reg_2374}}, {2'd2}};
assign tmp_3_fu_919_p4 = {{kk_reg_695[5:3]}};
assign tmp_40_fu_1500_p6 = {{{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {tmp_6_reg_2374}}, {2'd3}};
assign tmp_41_fu_1516_p6 = {{{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {tmp_7_reg_2441}}, {3'd4}};
assign tmp_42_fu_1532_p8 = {{{{{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {tmp_7_reg_2441}}, {1'd1}}, {tmp_79_reg_2464}}, {1'd1}};
assign tmp_43_fu_1551_p6 = {{{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {tmp_7_reg_2441}}, {3'd6}};
assign tmp_44_fu_1567_p6 = {{{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {tmp_7_reg_2441}}, {3'd7}};
assign tmp_45_fu_1583_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd64}};
assign tmp_46_fu_1603_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd65}};
assign tmp_47_fu_1623_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd66}};
assign tmp_48_fu_1643_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd67}};
assign tmp_49_fu_1663_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd68}};
assign tmp_4_fu_842_p4 = {{jj_fu_170[6:1]}};
assign tmp_50_fu_1683_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd69}};
assign tmp_51_fu_1703_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd70}};
assign tmp_52_fu_1723_p5 = {{{{tmp_3_reg_2395}, {1'd1}}, {tmp_80_reg_2528}}, {7'd71}};
assign tmp_53_fu_1743_p4 = {{{tmp_3_reg_2395}, {2'd3}}, {jj_1_reg_2265}};
assign tmp_54_fu_1756_p5 = {{{{tmp_3_reg_2395}, {2'd3}}, {tmp_4_reg_2346}}, {1'd1}};
assign tmp_55_fu_1771_p5 = {{{{tmp_3_reg_2395}, {2'd3}}, {tmp_6_reg_2374}}, {2'd2}};
assign tmp_56_fu_1786_p5 = {{{{tmp_3_reg_2395}, {2'd3}}, {tmp_6_reg_2374}}, {2'd3}};
assign tmp_57_fu_1801_p5 = {{{{tmp_3_reg_2395}, {2'd3}}, {tmp_7_reg_2441}}, {3'd4}};
assign tmp_58_fu_1816_p7 = {{{{{{tmp_3_reg_2395}, {2'd3}}, {tmp_7_reg_2441}}, {1'd1}}, {tmp_79_reg_2464}}, {1'd1}};
assign tmp_59_fu_1834_p5 = {{{{tmp_3_reg_2395}, {2'd3}}, {tmp_7_reg_2441}}, {3'd6}};
assign tmp_5_fu_851_p4 = {{{tmp_1_fu_820_p4}, {tmp_4_fu_842_p4}}, {1'd1}};
assign tmp_60_fu_1849_p5 = {{{{tmp_3_reg_2395}, {2'd3}}, {tmp_7_reg_2441}}, {3'd7}};
assign tmp_61_fu_1881_p3 = {{tmp_3_reg_2395}, {9'd449}};
assign tmp_62_fu_1898_p3 = {{tmp_3_reg_2395}, {9'd450}};
assign tmp_63_fu_1915_p3 = {{tmp_3_reg_2395}, {9'd451}};
assign tmp_64_fu_1932_p3 = {{tmp_3_reg_2395}, {9'd452}};
assign tmp_65_fu_1949_p3 = {{tmp_3_reg_2395}, {9'd453}};
assign tmp_66_fu_1966_p3 = {{tmp_3_reg_2395}, {9'd454}};
assign tmp_67_fu_1983_p3 = {{tmp_3_reg_2395}, {9'd455}};
assign tmp_6_fu_882_p4 = {{jj_1_reg_2265[6:2]}};
assign tmp_75_fu_796_p3 = jj_fu_170[32'd6];
assign tmp_77_fu_812_p3 = kk_reg_695[32'd6];
assign tmp_79_fu_964_p3 = jj_1_reg_2265[32'd1];
assign tmp_7_fu_941_p4 = {{jj_1_reg_2265[6:3]}};
assign tmp_8_fu_891_p4 = {{{tmp_1_reg_2324}, {tmp_6_fu_882_p4}}, {2'd2}};
assign tmp_9_fu_950_p4 = {{{tmp_1_reg_2324}, {tmp_7_fu_941_p4}}, {3'd4}};
assign tmp_cast_fu_1029_p1 = tmp_reg_2477;
assign tmp_fu_989_p2 = (jj_1_reg_2265 + zext_ln20_fu_937_p1);
assign tmp_s_fu_905_p4 = {{{tmp_1_reg_2324}, {tmp_6_fu_882_p4}}, {2'd3}};
assign trunc_ln11_fu_808_p1 = jj_fu_170[5:0];
assign trunc_ln16_fu_994_p1 = kk_reg_695[5:0];
assign zext_ln15_fu_804_p1 = jj_fu_170;
assign zext_ln20_fu_937_p1 = or_ln_fu_929_p3;
always @ (posedge ap_clk) begin
    zext_ln15_reg_2280[11:7] <= 5'b00000;
end
endmodule 