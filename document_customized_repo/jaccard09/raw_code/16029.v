module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0,prod_address1,prod_ce1,prod_we1,prod_d1,prod_q1); 
parameter    ap_ST_fsm_state1 = 37'd1;
parameter    ap_ST_fsm_state2 = 37'd2;
parameter    ap_ST_fsm_state3 = 37'd4;
parameter    ap_ST_fsm_state4 = 37'd8;
parameter    ap_ST_fsm_state5 = 37'd16;
parameter    ap_ST_fsm_state6 = 37'd32;
parameter    ap_ST_fsm_state7 = 37'd64;
parameter    ap_ST_fsm_state8 = 37'd128;
parameter    ap_ST_fsm_state9 = 37'd256;
parameter    ap_ST_fsm_state10 = 37'd512;
parameter    ap_ST_fsm_state11 = 37'd1024;
parameter    ap_ST_fsm_state12 = 37'd2048;
parameter    ap_ST_fsm_state13 = 37'd4096;
parameter    ap_ST_fsm_state14 = 37'd8192;
parameter    ap_ST_fsm_state15 = 37'd16384;
parameter    ap_ST_fsm_state16 = 37'd32768;
parameter    ap_ST_fsm_state17 = 37'd65536;
parameter    ap_ST_fsm_state18 = 37'd131072;
parameter    ap_ST_fsm_state19 = 37'd262144;
parameter    ap_ST_fsm_state20 = 37'd524288;
parameter    ap_ST_fsm_state21 = 37'd1048576;
parameter    ap_ST_fsm_state22 = 37'd2097152;
parameter    ap_ST_fsm_state23 = 37'd4194304;
parameter    ap_ST_fsm_state24 = 37'd8388608;
parameter    ap_ST_fsm_state25 = 37'd16777216;
parameter    ap_ST_fsm_state26 = 37'd33554432;
parameter    ap_ST_fsm_state27 = 37'd67108864;
parameter    ap_ST_fsm_state28 = 37'd134217728;
parameter    ap_ST_fsm_state29 = 37'd268435456;
parameter    ap_ST_fsm_state30 = 37'd536870912;
parameter    ap_ST_fsm_state31 = 37'd1073741824;
parameter    ap_ST_fsm_state32 = 37'd2147483648;
parameter    ap_ST_fsm_state33 = 37'd4294967296;
parameter    ap_ST_fsm_state34 = 37'd8589934592;
parameter    ap_ST_fsm_state35 = 37'd17179869184;
parameter    ap_ST_fsm_state36 = 37'd34359738368;
parameter    ap_ST_fsm_state37 = 37'd68719476736;
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
(* fsm_encoding = "none" *) reg   [36:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] jj_1_reg_2256;
wire    ap_CS_fsm_state2;
wire   [11:0] zext_ln15_fu_797_p1;
reg   [11:0] zext_ln15_reg_2270;
wire   [5:0] trunc_ln11_fu_801_p1;
reg   [5:0] trunc_ln11_reg_2306;
wire   [4:0] tmp_1_fu_813_p4;
reg   [4:0] tmp_1_reg_2314;
wire    ap_CS_fsm_state3;
wire   [5:0] tmp_4_fu_835_p4;
reg   [5:0] tmp_4_reg_2336;
wire   [6:0] add_ln16_fu_859_p2;
reg   [6:0] add_ln16_reg_2348;
reg   [63:0] m2_load_reg_2353;
wire    ap_CS_fsm_state4;
reg   [63:0] m2_load_1_reg_2358;
wire   [4:0] tmp_6_fu_875_p4;
reg   [4:0] tmp_6_reg_2363;
wire   [2:0] tmp_3_fu_912_p4;
reg   [2:0] tmp_3_reg_2383;
wire    ap_CS_fsm_state5;
reg   [63:0] m2_load_2_reg_2419;
reg   [63:0] m2_load_3_reg_2424;
wire   [3:0] tmp_7_fu_934_p4;
reg   [3:0] tmp_7_reg_2429;
wire   [0:0] tmp_69_fu_957_p3;
reg   [0:0] tmp_69_reg_2451;
wire   [6:0] tmp_fu_982_p2;
reg   [6:0] tmp_reg_2463;
wire   [5:0] trunc_ln11_1_fu_991_p1;
reg   [5:0] trunc_ln11_1_reg_2468;
wire    ap_CS_fsm_state6;
reg   [63:0] m2_load_4_reg_2473;
reg   [63:0] m2_load_5_reg_2478;
reg   [3:0] tmp_20_reg_2493;
reg   [0:0] tmp_70_reg_2513;
reg   [63:0] m2_load_6_reg_2533;
wire    ap_CS_fsm_state7;
reg   [63:0] m2_load_7_reg_2538;
reg   [63:0] m2_load_8_reg_2553;
wire    ap_CS_fsm_state8;
reg   [63:0] m2_load_9_reg_2558;
reg   [63:0] m2_load_10_reg_2573;
wire    ap_CS_fsm_state9;
reg   [63:0] m2_load_11_reg_2578;
reg   [63:0] m2_load_12_reg_2593;
wire    ap_CS_fsm_state10;
reg   [63:0] m2_load_13_reg_2598;
reg   [63:0] m2_load_14_reg_2613;
wire    ap_CS_fsm_state11;
reg   [63:0] m2_load_15_reg_2618;
reg   [63:0] m2_load_16_reg_2633;
wire    ap_CS_fsm_state12;
reg   [63:0] m2_load_17_reg_2638;
reg   [63:0] m2_load_18_reg_2653;
wire    ap_CS_fsm_state13;
reg   [63:0] m2_load_19_reg_2658;
reg   [63:0] m2_load_20_reg_2673;
wire    ap_CS_fsm_state14;
reg   [63:0] m2_load_21_reg_2678;
reg   [63:0] m2_load_22_reg_2693;
wire    ap_CS_fsm_state15;
reg   [63:0] m2_load_23_reg_2698;
reg   [63:0] m2_load_24_reg_2713;
wire    ap_CS_fsm_state16;
reg   [63:0] m2_load_25_reg_2718;
reg   [63:0] m2_load_26_reg_2733;
wire    ap_CS_fsm_state17;
reg   [63:0] m2_load_27_reg_2738;
reg   [63:0] m2_load_28_reg_2753;
wire    ap_CS_fsm_state18;
reg   [63:0] m2_load_29_reg_2758;
reg   [63:0] m2_load_30_reg_2773;
wire    ap_CS_fsm_state19;
reg   [63:0] m2_load_31_reg_2778;
reg   [63:0] m2_load_32_reg_2793;
wire    ap_CS_fsm_state20;
reg   [63:0] m2_load_33_reg_2798;
reg   [63:0] m2_load_34_reg_2813;
wire    ap_CS_fsm_state21;
reg   [63:0] m2_load_35_reg_2818;
reg   [63:0] m2_load_36_reg_2833;
wire    ap_CS_fsm_state22;
reg   [63:0] m2_load_37_reg_2838;
reg   [63:0] m2_load_38_reg_2853;
wire    ap_CS_fsm_state23;
reg   [63:0] m2_load_39_reg_2858;
reg   [63:0] m2_load_40_reg_2873;
wire    ap_CS_fsm_state24;
reg   [63:0] m2_load_41_reg_2878;
reg   [63:0] m2_load_42_reg_2893;
wire    ap_CS_fsm_state25;
reg   [63:0] m2_load_43_reg_2898;
reg   [63:0] m2_load_44_reg_2913;
wire    ap_CS_fsm_state26;
reg   [63:0] m2_load_45_reg_2918;
reg   [63:0] m2_load_46_reg_2933;
wire    ap_CS_fsm_state27;
reg   [63:0] m2_load_47_reg_2938;
reg   [63:0] m2_load_48_reg_2953;
wire    ap_CS_fsm_state28;
reg   [63:0] m2_load_49_reg_2958;
reg   [63:0] m2_load_50_reg_2973;
wire    ap_CS_fsm_state29;
reg   [63:0] m2_load_51_reg_2978;
reg   [63:0] m2_load_52_reg_2993;
wire    ap_CS_fsm_state30;
reg   [63:0] m2_load_53_reg_2998;
reg   [63:0] m2_load_54_reg_3013;
wire    ap_CS_fsm_state31;
reg   [63:0] m2_load_55_reg_3018;
reg   [63:0] m2_load_56_reg_3033;
wire    ap_CS_fsm_state32;
reg   [63:0] m2_load_57_reg_3038;
reg   [63:0] m2_load_58_reg_3053;
wire    ap_CS_fsm_state33;
reg   [63:0] m2_load_59_reg_3058;
reg   [63:0] m2_load_60_reg_3073;
wire    ap_CS_fsm_state34;
reg   [63:0] m2_load_61_reg_3078;
reg   [63:0] m2_load_62_reg_3093;
wire    ap_CS_fsm_state35;
reg   [63:0] m2_load_63_reg_3098;
wire   [63:0] empty_fu_1993_p1;
reg   [63:0] empty_reg_3103;
wire    ap_CS_fsm_state36;
wire   [63:0] empty_74_fu_1997_p1;
reg   [63:0] empty_74_reg_3108;
wire   [63:0] empty_75_fu_2001_p1;
reg   [63:0] empty_75_reg_3113;
wire   [63:0] empty_76_fu_2005_p1;
reg   [63:0] empty_76_reg_3118;
wire   [63:0] empty_77_fu_2009_p1;
reg   [63:0] empty_77_reg_3123;
wire   [63:0] empty_78_fu_2013_p1;
reg   [63:0] empty_78_reg_3128;
wire   [63:0] empty_79_fu_2017_p1;
reg   [63:0] empty_79_reg_3133;
wire   [63:0] empty_82_fu_2021_p1;
reg   [63:0] empty_82_reg_3138;
wire   [63:0] empty_84_fu_2025_p1;
reg   [63:0] empty_84_reg_3143;
wire   [63:0] empty_86_fu_2029_p1;
reg   [63:0] empty_86_reg_3148;
wire   [63:0] empty_88_fu_2033_p1;
reg   [63:0] empty_88_reg_3153;
wire   [63:0] empty_90_fu_2037_p1;
reg   [63:0] empty_90_reg_3158;
wire   [63:0] empty_92_fu_2041_p1;
reg   [63:0] empty_92_reg_3163;
wire   [63:0] empty_94_fu_2045_p1;
reg   [63:0] empty_94_reg_3168;
wire   [63:0] empty_96_fu_2049_p1;
reg   [63:0] empty_96_reg_3173;
wire   [63:0] empty_98_fu_2053_p1;
reg   [63:0] empty_98_reg_3178;
wire   [63:0] empty_99_fu_2057_p1;
reg   [63:0] empty_99_reg_3183;
wire   [63:0] empty_100_fu_2061_p1;
reg   [63:0] empty_100_reg_3188;
wire   [63:0] empty_101_fu_2065_p1;
reg   [63:0] empty_101_reg_3193;
wire   [63:0] empty_102_fu_2069_p1;
reg   [63:0] empty_102_reg_3198;
wire   [63:0] empty_103_fu_2073_p1;
reg   [63:0] empty_103_reg_3203;
wire   [63:0] empty_104_fu_2077_p1;
reg   [63:0] empty_104_reg_3208;
wire   [63:0] empty_105_fu_2081_p1;
reg   [63:0] empty_105_reg_3213;
wire   [63:0] empty_106_fu_2085_p1;
reg   [63:0] empty_106_reg_3218;
wire   [63:0] empty_108_fu_2089_p1;
reg   [63:0] empty_108_reg_3223;
wire   [63:0] empty_110_fu_2093_p1;
reg   [63:0] empty_110_reg_3228;
wire   [63:0] empty_112_fu_2097_p1;
reg   [63:0] empty_112_reg_3233;
wire   [63:0] empty_114_fu_2101_p1;
reg   [63:0] empty_114_reg_3238;
wire   [63:0] empty_116_fu_2105_p1;
reg   [63:0] empty_116_reg_3243;
wire   [63:0] empty_118_fu_2109_p1;
reg   [63:0] empty_118_reg_3248;
wire   [63:0] empty_120_fu_2113_p1;
reg   [63:0] empty_120_reg_3253;
wire   [63:0] empty_122_fu_2117_p1;
reg   [63:0] empty_122_reg_3258;
wire   [63:0] empty_123_fu_2121_p1;
reg   [63:0] empty_123_reg_3263;
wire   [63:0] empty_124_fu_2125_p1;
reg   [63:0] empty_124_reg_3268;
wire   [63:0] empty_125_fu_2129_p1;
reg   [63:0] empty_125_reg_3273;
wire   [63:0] empty_126_fu_2133_p1;
reg   [63:0] empty_126_reg_3278;
wire   [63:0] empty_127_fu_2137_p1;
reg   [63:0] empty_127_reg_3283;
wire   [63:0] empty_128_fu_2141_p1;
reg   [63:0] empty_128_reg_3288;
wire   [63:0] empty_129_fu_2145_p1;
reg   [63:0] empty_129_reg_3293;
wire   [63:0] empty_130_fu_2149_p1;
reg   [63:0] empty_130_reg_3298;
wire   [63:0] empty_132_fu_2153_p1;
reg   [63:0] empty_132_reg_3303;
wire   [63:0] empty_134_fu_2157_p1;
reg   [63:0] empty_134_reg_3308;
wire   [63:0] empty_136_fu_2161_p1;
reg   [63:0] empty_136_reg_3313;
wire   [63:0] empty_138_fu_2165_p1;
reg   [63:0] empty_138_reg_3318;
wire   [63:0] empty_140_fu_2169_p1;
reg   [63:0] empty_140_reg_3323;
wire   [63:0] empty_142_fu_2173_p1;
reg   [63:0] empty_142_reg_3328;
wire   [63:0] empty_144_fu_2177_p1;
reg   [63:0] empty_144_reg_3333;
wire   [63:0] empty_146_fu_2181_p1;
reg   [63:0] empty_146_reg_3338;
wire   [63:0] empty_147_fu_2185_p1;
reg   [63:0] empty_147_reg_3343;
wire   [63:0] empty_148_fu_2189_p1;
reg   [63:0] empty_148_reg_3348;
wire   [63:0] empty_149_fu_2193_p1;
reg   [63:0] empty_149_reg_3353;
wire   [63:0] empty_150_fu_2197_p1;
reg   [63:0] empty_150_reg_3358;
wire   [63:0] empty_151_fu_2201_p1;
reg   [63:0] empty_151_reg_3363;
wire   [63:0] empty_152_fu_2205_p1;
reg   [63:0] empty_152_reg_3368;
wire   [63:0] empty_153_fu_2209_p1;
reg   [63:0] empty_153_reg_3373;
wire   [63:0] empty_154_fu_2213_p1;
reg   [63:0] empty_154_reg_3378;
wire   [63:0] empty_155_fu_2217_p1;
reg   [63:0] empty_155_reg_3383;
wire   [63:0] empty_157_fu_2221_p1;
reg   [63:0] empty_157_reg_3388;
wire   [63:0] empty_159_fu_2225_p1;
reg   [63:0] empty_159_reg_3393;
wire   [63:0] empty_161_fu_2229_p1;
reg   [63:0] empty_161_reg_3398;
wire   [63:0] empty_163_fu_2233_p1;
reg   [63:0] empty_163_reg_3403;
wire   [63:0] empty_165_fu_2237_p1;
reg   [63:0] empty_165_reg_3408;
wire   [63:0] empty_167_fu_2241_p1;
reg   [63:0] empty_167_reg_3413;
wire   [63:0] empty_169_fu_2245_p1;
reg   [63:0] empty_169_reg_3418;
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
wire   [0:0] tmp_65_fu_789_p3;
wire    ap_CS_fsm_state37;
reg    grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg;
wire   [63:0] p_cast6_fu_830_p1;
wire   [0:0] tmp_67_fu_805_p3;
wire   [63:0] p_cast7_fu_854_p1;
wire   [63:0] p_cast8_fu_893_p1;
wire   [63:0] p_cast9_fu_907_p1;
wire   [63:0] p_cast10_fu_952_p1;
wire   [63:0] p_cast11_fu_977_p1;
wire   [63:0] p_cast12_fu_1003_p1;
wire   [63:0] p_cast13_fu_1031_p1;
wire   [63:0] p_cast14_fu_1066_p1;
wire   [63:0] p_cast15_fu_1083_p1;
wire   [63:0] p_cast16_fu_1100_p1;
wire   [63:0] p_cast17_fu_1117_p1;
wire   [63:0] p_cast18_fu_1134_p1;
wire   [63:0] p_cast19_fu_1151_p1;
wire   [63:0] p_cast20_fu_1168_p1;
wire   [63:0] p_cast21_fu_1185_p1;
wire   [63:0] p_cast22_fu_1198_p1;
wire   [63:0] p_cast23_fu_1213_p1;
wire   [63:0] p_cast24_fu_1228_p1;
wire   [63:0] p_cast25_fu_1243_p1;
wire   [63:0] p_cast26_fu_1258_p1;
wire   [63:0] p_cast27_fu_1276_p1;
wire   [63:0] p_cast28_fu_1291_p1;
wire   [63:0] p_cast29_fu_1306_p1;
wire   [63:0] p_cast30_fu_1323_p1;
wire   [63:0] p_cast31_fu_1340_p1;
wire   [63:0] p_cast32_fu_1357_p1;
wire   [63:0] p_cast33_fu_1374_p1;
wire   [63:0] p_cast34_fu_1391_p1;
wire   [63:0] p_cast35_fu_1408_p1;
wire   [63:0] p_cast36_fu_1425_p1;
wire   [63:0] p_cast37_fu_1442_p1;
wire   [63:0] p_cast38_fu_1456_p1;
wire   [63:0] p_cast39_fu_1472_p1;
wire   [63:0] p_cast40_fu_1488_p1;
wire   [63:0] p_cast41_fu_1504_p1;
wire   [63:0] p_cast42_fu_1520_p1;
wire   [63:0] p_cast43_fu_1539_p1;
wire   [63:0] p_cast44_fu_1555_p1;
wire   [63:0] p_cast45_fu_1571_p1;
wire   [63:0] p_cast46_fu_1591_p1;
wire   [63:0] p_cast47_fu_1611_p1;
wire   [63:0] p_cast48_fu_1631_p1;
wire   [63:0] p_cast49_fu_1651_p1;
wire   [63:0] p_cast50_fu_1671_p1;
wire   [63:0] p_cast51_fu_1691_p1;
wire   [63:0] p_cast52_fu_1711_p1;
wire   [63:0] p_cast53_fu_1731_p1;
wire   [63:0] p_cast54_fu_1744_p1;
wire   [63:0] p_cast55_fu_1759_p1;
wire   [63:0] p_cast56_fu_1774_p1;
wire   [63:0] p_cast57_fu_1789_p1;
wire   [63:0] p_cast58_fu_1804_p1;
wire   [63:0] p_cast59_fu_1822_p1;
wire   [63:0] p_cast60_fu_1837_p1;
wire   [63:0] p_cast61_fu_1852_p1;
wire   [63:0] add_ln23_cast_fu_1869_p1;
wire   [63:0] p_cast62_fu_1886_p1;
wire   [63:0] p_cast63_fu_1903_p1;
wire   [63:0] p_cast64_fu_1920_p1;
wire   [63:0] p_cast65_fu_1937_p1;
wire   [63:0] p_cast66_fu_1954_p1;
wire   [63:0] p_cast67_fu_1971_p1;
wire   [63:0] p_cast68_fu_1988_p1;
reg   [6:0] jj_fu_170;
wire   [6:0] add_ln15_fu_865_p2;
reg    m2_ce1_local;
reg   [11:0] m2_address1_local;
reg    m2_ce0_local;
reg   [11:0] m2_address0_local;
wire   [11:0] tmp_2_fu_823_p3;
wire   [11:0] tmp_5_fu_844_p4;
wire   [11:0] tmp_8_fu_884_p4;
wire   [11:0] tmp_s_fu_898_p4;
wire   [5:0] or_ln_fu_922_p3;
wire   [11:0] tmp_9_fu_943_p4;
wire   [11:0] tmp_10_fu_964_p6;
wire   [6:0] zext_ln20_fu_930_p1;
wire   [11:0] tmp_11_fu_995_p4;
wire   [11:0] p_shl_fu_1008_p3;
wire   [11:0] kk_cast4_fu_987_p1;
wire   [11:0] tmp_cast_fu_1022_p1;
wire   [11:0] empty_80_fu_1016_p2;
wire   [11:0] empty_81_fu_1025_p2;
wire   [11:0] tmp_12_fu_1054_p3;
wire   [11:0] empty_83_fu_1061_p2;
wire   [11:0] tmp_13_fu_1071_p3;
wire   [11:0] empty_85_fu_1078_p2;
wire   [11:0] tmp_14_fu_1088_p3;
wire   [11:0] empty_87_fu_1095_p2;
wire   [11:0] tmp_15_fu_1105_p3;
wire   [11:0] empty_89_fu_1112_p2;
wire   [11:0] tmp_16_fu_1122_p3;
wire   [11:0] empty_91_fu_1129_p2;
wire   [11:0] tmp_17_fu_1139_p3;
wire   [11:0] empty_93_fu_1146_p2;
wire   [11:0] tmp_18_fu_1156_p3;
wire   [11:0] empty_95_fu_1163_p2;
wire   [11:0] tmp_19_fu_1173_p3;
wire   [11:0] empty_97_fu_1180_p2;
wire   [11:0] tmp_21_fu_1190_p4;
wire   [11:0] tmp_22_fu_1203_p5;
wire   [11:0] tmp_23_fu_1218_p5;
wire   [11:0] tmp_24_fu_1233_p5;
wire   [11:0] tmp_25_fu_1248_p5;
wire   [11:0] tmp_26_fu_1263_p7;
wire   [11:0] tmp_27_fu_1281_p5;
wire   [11:0] tmp_28_fu_1296_p5;
wire   [11:0] tmp_29_fu_1311_p3;
wire   [11:0] empty_107_fu_1318_p2;
wire   [11:0] tmp_30_fu_1328_p3;
wire   [11:0] empty_109_fu_1335_p2;
wire   [11:0] tmp_31_fu_1345_p3;
wire   [11:0] empty_111_fu_1352_p2;
wire   [11:0] tmp_32_fu_1362_p3;
wire   [11:0] empty_113_fu_1369_p2;
wire   [11:0] tmp_33_fu_1379_p3;
wire   [11:0] empty_115_fu_1386_p2;
wire   [11:0] tmp_34_fu_1396_p3;
wire   [11:0] empty_117_fu_1403_p2;
wire   [11:0] tmp_35_fu_1413_p3;
wire   [11:0] empty_119_fu_1420_p2;
wire   [11:0] tmp_36_fu_1430_p3;
wire   [11:0] empty_121_fu_1437_p2;
wire   [11:0] tmp_37_fu_1447_p5;
wire   [11:0] tmp_38_fu_1461_p6;
wire   [11:0] tmp_39_fu_1477_p6;
wire   [11:0] tmp_40_fu_1493_p6;
wire   [11:0] tmp_41_fu_1509_p6;
wire   [11:0] tmp_42_fu_1525_p8;
wire   [11:0] tmp_43_fu_1544_p6;
wire   [11:0] tmp_44_fu_1560_p6;
wire   [11:0] tmp_45_fu_1576_p5;
wire   [11:0] empty_131_fu_1586_p2;
wire   [11:0] tmp_46_fu_1596_p5;
wire   [11:0] empty_133_fu_1606_p2;
wire   [11:0] tmp_47_fu_1616_p5;
wire   [11:0] empty_135_fu_1626_p2;
wire   [11:0] tmp_48_fu_1636_p5;
wire   [11:0] empty_137_fu_1646_p2;
wire   [11:0] tmp_49_fu_1656_p5;
wire   [11:0] empty_139_fu_1666_p2;
wire   [11:0] tmp_50_fu_1676_p5;
wire   [11:0] empty_141_fu_1686_p2;
wire   [11:0] tmp_51_fu_1696_p5;
wire   [11:0] empty_143_fu_1706_p2;
wire   [11:0] tmp_52_fu_1716_p5;
wire   [11:0] empty_145_fu_1726_p2;
wire   [11:0] tmp_53_fu_1736_p4;
wire   [11:0] tmp_54_fu_1749_p5;
wire   [11:0] tmp_55_fu_1764_p5;
wire   [11:0] tmp_56_fu_1779_p5;
wire   [11:0] tmp_57_fu_1794_p5;
wire   [11:0] tmp_58_fu_1809_p7;
wire   [11:0] tmp_59_fu_1827_p5;
wire   [11:0] tmp_60_fu_1842_p5;
wire   [11:0] shl_ln_fu_1857_p3;
wire   [11:0] add_ln23_fu_1864_p2;
wire   [11:0] tmp_61_fu_1874_p3;
wire   [11:0] empty_156_fu_1881_p2;
wire   [11:0] tmp_62_fu_1891_p3;
wire   [11:0] empty_158_fu_1898_p2;
wire   [11:0] tmp_63_fu_1908_p3;
wire   [11:0] empty_160_fu_1915_p2;
wire   [11:0] tmp_64_fu_1925_p3;
wire   [11:0] empty_162_fu_1932_p2;
wire   [11:0] tmp_66_fu_1942_p3;
wire   [11:0] empty_164_fu_1949_p2;
wire   [11:0] tmp_68_fu_1959_p3;
wire   [11:0] empty_166_fu_1966_p2;
wire   [11:0] tmp_71_fu_1976_p3;
wire   [11:0] empty_168_fu_1983_p2;
reg   [36:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state36_blk;
reg    ap_ST_fsm_state37_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 37'd1;
#0 grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg = 1'b0;
#0 jj_fu_170 = 7'd0;
end
bbgemm_bbgemm_Pipeline_loopi grp_bbgemm_Pipeline_loopi_fu_707(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_fu_707_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_fu_707_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_fu_707_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_fu_707_ap_ready),.kk_cast4(trunc_ln11_1_reg_2468),.m1_address0(grp_bbgemm_Pipeline_loopi_fu_707_m1_address0),.m1_ce0(grp_bbgemm_Pipeline_loopi_fu_707_m1_ce0),.m1_q0(m1_q0),.m1_address1(grp_bbgemm_Pipeline_loopi_fu_707_m1_address1),.m1_ce1(grp_bbgemm_Pipeline_loopi_fu_707_m1_ce1),.m1_q1(m1_q1),.empty_10(empty_reg_3103),.zext_ln15(trunc_ln11_reg_2306),.prod_address0(grp_bbgemm_Pipeline_loopi_fu_707_prod_address0),.prod_ce0(grp_bbgemm_Pipeline_loopi_fu_707_prod_ce0),.prod_we0(grp_bbgemm_Pipeline_loopi_fu_707_prod_we0),.prod_d0(grp_bbgemm_Pipeline_loopi_fu_707_prod_d0),.prod_q0(prod_q0),.prod_address1(grp_bbgemm_Pipeline_loopi_fu_707_prod_address1),.prod_ce1(grp_bbgemm_Pipeline_loopi_fu_707_prod_ce1),.prod_we1(grp_bbgemm_Pipeline_loopi_fu_707_prod_we1),.prod_d1(grp_bbgemm_Pipeline_loopi_fu_707_prod_d1),.prod_q1(prod_q1),.empty_11(empty_74_reg_3108),.empty_12(empty_75_reg_3113),.empty_13(empty_76_reg_3118),.empty_14(empty_77_reg_3123),.empty_15(empty_78_reg_3128),.empty_16(empty_79_reg_3133),.empty_17(empty_82_reg_3138),.empty_18(empty_84_reg_3143),.empty_19(empty_86_reg_3148),.empty_20(empty_88_reg_3153),.empty_21(empty_90_reg_3158),.empty_22(empty_92_reg_3163),.empty_23(empty_94_reg_3168),.empty_24(empty_96_reg_3173),.empty_25(empty_98_reg_3178),.empty_26(empty_99_reg_3183),.empty_27(empty_100_reg_3188),.empty_28(empty_101_reg_3193),.empty_29(empty_102_reg_3198),.empty_30(empty_103_reg_3203),.empty_31(empty_104_reg_3208),.empty_32(empty_105_reg_3213),.empty_33(empty_106_reg_3218),.empty_34(empty_108_reg_3223),.empty_35(empty_110_reg_3228),.empty_36(empty_112_reg_3233),.empty_37(empty_114_reg_3238),.empty_38(empty_116_reg_3243),.empty_39(empty_118_reg_3248),.empty_40(empty_120_reg_3253),.empty_41(empty_122_reg_3258),.empty_42(empty_123_reg_3263),.empty_43(empty_124_reg_3268),.empty_44(empty_125_reg_3273),.empty_45(empty_126_reg_3278),.empty_46(empty_127_reg_3283),.empty_47(empty_128_reg_3288),.empty_48(empty_129_reg_3293),.empty_49(empty_130_reg_3298),.empty_50(empty_132_reg_3303),.empty_51(empty_134_reg_3308),.empty_52(empty_136_reg_3313),.empty_53(empty_138_reg_3318),.empty_54(empty_140_reg_3323),.empty_55(empty_142_reg_3328),.empty_56(empty_144_reg_3333),.empty_57(empty_146_reg_3338),.empty_58(empty_147_reg_3343),.empty_59(empty_148_reg_3348),.empty_60(empty_149_reg_3353),.empty_61(empty_150_reg_3358),.empty_62(empty_151_reg_3363),.empty_63(empty_152_reg_3368),.empty_64(empty_153_reg_3373),.empty_65(empty_154_reg_3378),.empty_66(empty_155_reg_3383),.empty_67(empty_157_reg_3388),.empty_68(empty_159_reg_3393),.empty_69(empty_161_reg_3398),.empty_70(empty_163_reg_3403),.empty_71(empty_165_reg_3408),.empty_72(empty_167_reg_3413),.empty(empty_169_reg_3418));
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
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg <= 1'b1;
        end else if ((grp_bbgemm_Pipeline_loopi_fu_707_ap_ready == 1'b1)) begin
            grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        jj_fu_170 <= 7'd0;
    end else if (((tmp_67_fu_805_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_fu_170 <= add_ln15_fu_865_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_fu_707_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
        kk_reg_695 <= add_ln16_reg_2348;
    end else if (((tmp_65_fu_789_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kk_reg_695 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_2348 <= add_ln16_fu_859_p2;
        tmp_1_reg_2314 <= {{kk_reg_695[5:1]}};
        tmp_4_reg_2336 <= {{jj_fu_170[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        empty_100_reg_3188 <= empty_100_fu_2061_p1;
        empty_101_reg_3193 <= empty_101_fu_2065_p1;
        empty_102_reg_3198 <= empty_102_fu_2069_p1;
        empty_103_reg_3203 <= empty_103_fu_2073_p1;
        empty_104_reg_3208 <= empty_104_fu_2077_p1;
        empty_105_reg_3213 <= empty_105_fu_2081_p1;
        empty_106_reg_3218 <= empty_106_fu_2085_p1;
        empty_108_reg_3223 <= empty_108_fu_2089_p1;
        empty_110_reg_3228 <= empty_110_fu_2093_p1;
        empty_112_reg_3233 <= empty_112_fu_2097_p1;
        empty_114_reg_3238 <= empty_114_fu_2101_p1;
        empty_116_reg_3243 <= empty_116_fu_2105_p1;
        empty_118_reg_3248 <= empty_118_fu_2109_p1;
        empty_120_reg_3253 <= empty_120_fu_2113_p1;
        empty_122_reg_3258 <= empty_122_fu_2117_p1;
        empty_123_reg_3263 <= empty_123_fu_2121_p1;
        empty_124_reg_3268 <= empty_124_fu_2125_p1;
        empty_125_reg_3273 <= empty_125_fu_2129_p1;
        empty_126_reg_3278 <= empty_126_fu_2133_p1;
        empty_127_reg_3283 <= empty_127_fu_2137_p1;
        empty_128_reg_3288 <= empty_128_fu_2141_p1;
        empty_129_reg_3293 <= empty_129_fu_2145_p1;
        empty_130_reg_3298 <= empty_130_fu_2149_p1;
        empty_132_reg_3303 <= empty_132_fu_2153_p1;
        empty_134_reg_3308 <= empty_134_fu_2157_p1;
        empty_136_reg_3313 <= empty_136_fu_2161_p1;
        empty_138_reg_3318 <= empty_138_fu_2165_p1;
        empty_140_reg_3323 <= empty_140_fu_2169_p1;
        empty_142_reg_3328 <= empty_142_fu_2173_p1;
        empty_144_reg_3333 <= empty_144_fu_2177_p1;
        empty_146_reg_3338 <= empty_146_fu_2181_p1;
        empty_147_reg_3343 <= empty_147_fu_2185_p1;
        empty_148_reg_3348 <= empty_148_fu_2189_p1;
        empty_149_reg_3353 <= empty_149_fu_2193_p1;
        empty_150_reg_3358 <= empty_150_fu_2197_p1;
        empty_151_reg_3363 <= empty_151_fu_2201_p1;
        empty_152_reg_3368 <= empty_152_fu_2205_p1;
        empty_153_reg_3373 <= empty_153_fu_2209_p1;
        empty_154_reg_3378 <= empty_154_fu_2213_p1;
        empty_155_reg_3383 <= empty_155_fu_2217_p1;
        empty_157_reg_3388 <= empty_157_fu_2221_p1;
        empty_159_reg_3393 <= empty_159_fu_2225_p1;
        empty_161_reg_3398 <= empty_161_fu_2229_p1;
        empty_163_reg_3403 <= empty_163_fu_2233_p1;
        empty_165_reg_3408 <= empty_165_fu_2237_p1;
        empty_167_reg_3413 <= empty_167_fu_2241_p1;
        empty_169_reg_3418 <= empty_169_fu_2245_p1;
        empty_74_reg_3108 <= empty_74_fu_1997_p1;
        empty_75_reg_3113 <= empty_75_fu_2001_p1;
        empty_76_reg_3118 <= empty_76_fu_2005_p1;
        empty_77_reg_3123 <= empty_77_fu_2009_p1;
        empty_78_reg_3128 <= empty_78_fu_2013_p1;
        empty_79_reg_3133 <= empty_79_fu_2017_p1;
        empty_82_reg_3138 <= empty_82_fu_2021_p1;
        empty_84_reg_3143 <= empty_84_fu_2025_p1;
        empty_86_reg_3148 <= empty_86_fu_2029_p1;
        empty_88_reg_3153 <= empty_88_fu_2033_p1;
        empty_90_reg_3158 <= empty_90_fu_2037_p1;
        empty_92_reg_3163 <= empty_92_fu_2041_p1;
        empty_94_reg_3168 <= empty_94_fu_2045_p1;
        empty_96_reg_3173 <= empty_96_fu_2049_p1;
        empty_98_reg_3178 <= empty_98_fu_2053_p1;
        empty_99_reg_3183 <= empty_99_fu_2057_p1;
        empty_reg_3103 <= empty_fu_1993_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        jj_1_reg_2256 <= jj_fu_170;
        trunc_ln11_reg_2306 <= trunc_ln11_fu_801_p1;
        zext_ln15_reg_2270[6 : 0] <= zext_ln15_fu_797_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_load_10_reg_2573 <= m2_q1;
        m2_load_11_reg_2578 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_load_12_reg_2593 <= m2_q1;
        m2_load_13_reg_2598 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_load_14_reg_2613 <= m2_q1;
        m2_load_15_reg_2618 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_load_16_reg_2633 <= m2_q1;
        m2_load_17_reg_2638 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_load_18_reg_2653 <= m2_q1;
        m2_load_19_reg_2658 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_load_1_reg_2358 <= m2_q0;
        m2_load_reg_2353 <= m2_q1;
        tmp_6_reg_2363 <= {{jj_1_reg_2256[6:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_load_20_reg_2673 <= m2_q1;
        m2_load_21_reg_2678 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_load_22_reg_2693 <= m2_q1;
        m2_load_23_reg_2698 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_load_24_reg_2713 <= m2_q1;
        m2_load_25_reg_2718 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_load_26_reg_2733 <= m2_q1;
        m2_load_27_reg_2738 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_load_28_reg_2753 <= m2_q1;
        m2_load_29_reg_2758 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_load_2_reg_2419 <= m2_q1;
        m2_load_3_reg_2424 <= m2_q0;
        tmp_3_reg_2383 <= {{kk_reg_695[5:3]}};
        tmp_69_reg_2451 <= jj_1_reg_2256[32'd1];
        tmp_7_reg_2429 <= {{jj_1_reg_2256[6:3]}};
        tmp_reg_2463 <= tmp_fu_982_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        m2_load_30_reg_2773 <= m2_q1;
        m2_load_31_reg_2778 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        m2_load_32_reg_2793 <= m2_q1;
        m2_load_33_reg_2798 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        m2_load_34_reg_2813 <= m2_q1;
        m2_load_35_reg_2818 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        m2_load_36_reg_2833 <= m2_q1;
        m2_load_37_reg_2838 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        m2_load_38_reg_2853 <= m2_q1;
        m2_load_39_reg_2858 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        m2_load_40_reg_2873 <= m2_q1;
        m2_load_41_reg_2878 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        m2_load_42_reg_2893 <= m2_q1;
        m2_load_43_reg_2898 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        m2_load_44_reg_2913 <= m2_q1;
        m2_load_45_reg_2918 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        m2_load_46_reg_2933 <= m2_q1;
        m2_load_47_reg_2938 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        m2_load_48_reg_2953 <= m2_q1;
        m2_load_49_reg_2958 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_load_4_reg_2473 <= m2_q1;
        m2_load_5_reg_2478 <= m2_q0;
        tmp_20_reg_2493 <= {{kk_reg_695[5:2]}};
        tmp_70_reg_2513 <= kk_reg_695[32'd1];
        trunc_ln11_1_reg_2468 <= trunc_ln11_1_fu_991_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        m2_load_50_reg_2973 <= m2_q1;
        m2_load_51_reg_2978 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        m2_load_52_reg_2993 <= m2_q1;
        m2_load_53_reg_2998 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        m2_load_54_reg_3013 <= m2_q1;
        m2_load_55_reg_3018 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        m2_load_56_reg_3033 <= m2_q1;
        m2_load_57_reg_3038 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        m2_load_58_reg_3053 <= m2_q1;
        m2_load_59_reg_3058 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        m2_load_60_reg_3073 <= m2_q1;
        m2_load_61_reg_3078 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        m2_load_62_reg_3093 <= m2_q1;
        m2_load_63_reg_3098 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_load_6_reg_2533 <= m2_q1;
        m2_load_7_reg_2538 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_load_8_reg_2553 <= m2_q1;
        m2_load_9_reg_2558 <= m2_q0;
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
assign ap_ST_fsm_state36_blk = 1'b0;
always @ (*) begin
    if ((grp_bbgemm_Pipeline_loopi_fu_707_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
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
    if (((tmp_65_fu_789_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_65_fu_789_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        m2_address0_local = p_cast68_fu_1988_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        m2_address0_local = p_cast66_fu_1954_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        m2_address0_local = p_cast64_fu_1920_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        m2_address0_local = p_cast62_fu_1886_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        m2_address0_local = p_cast61_fu_1852_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        m2_address0_local = p_cast59_fu_1822_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        m2_address0_local = p_cast57_fu_1789_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        m2_address0_local = p_cast55_fu_1759_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        m2_address0_local = p_cast53_fu_1731_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        m2_address0_local = p_cast51_fu_1691_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        m2_address0_local = p_cast49_fu_1651_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        m2_address0_local = p_cast47_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        m2_address0_local = p_cast45_fu_1571_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        m2_address0_local = p_cast43_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        m2_address0_local = p_cast41_fu_1504_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        m2_address0_local = p_cast39_fu_1472_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_address0_local = p_cast37_fu_1442_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_address0_local = p_cast35_fu_1408_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_address0_local = p_cast33_fu_1374_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_address0_local = p_cast31_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_address0_local = p_cast29_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_address0_local = p_cast27_fu_1276_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_address0_local = p_cast25_fu_1243_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_address0_local = p_cast23_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_address0_local = p_cast21_fu_1185_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_address0_local = p_cast19_fu_1151_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_address0_local = p_cast17_fu_1117_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_address0_local = p_cast15_fu_1083_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_address0_local = p_cast13_fu_1031_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_address0_local = p_cast11_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_address0_local = p_cast9_fu_907_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_address0_local = p_cast7_fu_854_p1;
    end else begin
        m2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        m2_address1_local = p_cast67_fu_1971_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        m2_address1_local = p_cast65_fu_1937_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        m2_address1_local = p_cast63_fu_1903_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        m2_address1_local = add_ln23_cast_fu_1869_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        m2_address1_local = p_cast60_fu_1837_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        m2_address1_local = p_cast58_fu_1804_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        m2_address1_local = p_cast56_fu_1774_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        m2_address1_local = p_cast54_fu_1744_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        m2_address1_local = p_cast52_fu_1711_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        m2_address1_local = p_cast50_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        m2_address1_local = p_cast48_fu_1631_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        m2_address1_local = p_cast46_fu_1591_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        m2_address1_local = p_cast44_fu_1555_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        m2_address1_local = p_cast42_fu_1520_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        m2_address1_local = p_cast40_fu_1488_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        m2_address1_local = p_cast38_fu_1456_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        m2_address1_local = p_cast36_fu_1425_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        m2_address1_local = p_cast34_fu_1391_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m2_address1_local = p_cast32_fu_1357_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        m2_address1_local = p_cast30_fu_1323_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        m2_address1_local = p_cast28_fu_1291_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        m2_address1_local = p_cast26_fu_1258_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        m2_address1_local = p_cast24_fu_1228_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        m2_address1_local = p_cast22_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        m2_address1_local = p_cast20_fu_1168_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m2_address1_local = p_cast18_fu_1134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m2_address1_local = p_cast16_fu_1100_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m2_address1_local = p_cast14_fu_1066_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m2_address1_local = p_cast12_fu_1003_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m2_address1_local = p_cast10_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        m2_address1_local = p_cast8_fu_893_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        m2_address1_local = p_cast6_fu_830_p1;
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
            if (((tmp_65_fu_789_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_67_fu_805_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            if (((grp_bbgemm_Pipeline_loopi_fu_707_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_865_p2 = (jj_fu_170 + 7'd8);
assign add_ln16_fu_859_p2 = (kk_reg_695 + 7'd8);
assign add_ln23_cast_fu_1869_p1 = add_ln23_fu_1864_p2;
assign add_ln23_fu_1864_p2 = (shl_ln_fu_1857_p3 + zext_ln15_reg_2270);
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
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_100_fu_2061_p1 = m2_load_17_reg_2638;
assign empty_101_fu_2065_p1 = m2_load_18_reg_2653;
assign empty_102_fu_2069_p1 = m2_load_19_reg_2658;
assign empty_103_fu_2073_p1 = m2_load_20_reg_2673;
assign empty_104_fu_2077_p1 = m2_load_21_reg_2678;
assign empty_105_fu_2081_p1 = m2_load_22_reg_2693;
assign empty_106_fu_2085_p1 = m2_load_23_reg_2698;
assign empty_107_fu_1318_p2 = (tmp_29_fu_1311_p3 + zext_ln15_reg_2270);
assign empty_108_fu_2089_p1 = m2_load_24_reg_2713;
assign empty_109_fu_1335_p2 = (tmp_30_fu_1328_p3 + zext_ln15_reg_2270);
assign empty_110_fu_2093_p1 = m2_load_25_reg_2718;
assign empty_111_fu_1352_p2 = (tmp_31_fu_1345_p3 + zext_ln15_reg_2270);
assign empty_112_fu_2097_p1 = m2_load_26_reg_2733;
assign empty_113_fu_1369_p2 = (tmp_32_fu_1362_p3 + zext_ln15_reg_2270);
assign empty_114_fu_2101_p1 = m2_load_27_reg_2738;
assign empty_115_fu_1386_p2 = (tmp_33_fu_1379_p3 + zext_ln15_reg_2270);
assign empty_116_fu_2105_p1 = m2_load_28_reg_2753;
assign empty_117_fu_1403_p2 = (tmp_34_fu_1396_p3 + zext_ln15_reg_2270);
assign empty_118_fu_2109_p1 = m2_load_29_reg_2758;
assign empty_119_fu_1420_p2 = (tmp_35_fu_1413_p3 + zext_ln15_reg_2270);
assign empty_120_fu_2113_p1 = m2_load_30_reg_2773;
assign empty_121_fu_1437_p2 = (tmp_36_fu_1430_p3 + zext_ln15_reg_2270);
assign empty_122_fu_2117_p1 = m2_load_31_reg_2778;
assign empty_123_fu_2121_p1 = m2_load_32_reg_2793;
assign empty_124_fu_2125_p1 = m2_load_33_reg_2798;
assign empty_125_fu_2129_p1 = m2_load_34_reg_2813;
assign empty_126_fu_2133_p1 = m2_load_35_reg_2818;
assign empty_127_fu_2137_p1 = m2_load_36_reg_2833;
assign empty_128_fu_2141_p1 = m2_load_37_reg_2838;
assign empty_129_fu_2145_p1 = m2_load_38_reg_2853;
assign empty_130_fu_2149_p1 = m2_load_39_reg_2858;
assign empty_131_fu_1586_p2 = (tmp_45_fu_1576_p5 + zext_ln15_reg_2270);
assign empty_132_fu_2153_p1 = m2_load_40_reg_2873;
assign empty_133_fu_1606_p2 = (tmp_46_fu_1596_p5 + zext_ln15_reg_2270);
assign empty_134_fu_2157_p1 = m2_load_41_reg_2878;
assign empty_135_fu_1626_p2 = (tmp_47_fu_1616_p5 + zext_ln15_reg_2270);
assign empty_136_fu_2161_p1 = m2_load_42_reg_2893;
assign empty_137_fu_1646_p2 = (tmp_48_fu_1636_p5 + zext_ln15_reg_2270);
assign empty_138_fu_2165_p1 = m2_load_43_reg_2898;
assign empty_139_fu_1666_p2 = (tmp_49_fu_1656_p5 + zext_ln15_reg_2270);
assign empty_140_fu_2169_p1 = m2_load_44_reg_2913;
assign empty_141_fu_1686_p2 = (tmp_50_fu_1676_p5 + zext_ln15_reg_2270);
assign empty_142_fu_2173_p1 = m2_load_45_reg_2918;
assign empty_143_fu_1706_p2 = (tmp_51_fu_1696_p5 + zext_ln15_reg_2270);
assign empty_144_fu_2177_p1 = m2_load_46_reg_2933;
assign empty_145_fu_1726_p2 = (tmp_52_fu_1716_p5 + zext_ln15_reg_2270);
assign empty_146_fu_2181_p1 = m2_load_47_reg_2938;
assign empty_147_fu_2185_p1 = m2_load_48_reg_2953;
assign empty_148_fu_2189_p1 = m2_load_49_reg_2958;
assign empty_149_fu_2193_p1 = m2_load_50_reg_2973;
assign empty_150_fu_2197_p1 = m2_load_51_reg_2978;
assign empty_151_fu_2201_p1 = m2_load_52_reg_2993;
assign empty_152_fu_2205_p1 = m2_load_53_reg_2998;
assign empty_153_fu_2209_p1 = m2_load_54_reg_3013;
assign empty_154_fu_2213_p1 = m2_load_55_reg_3018;
assign empty_155_fu_2217_p1 = m2_load_56_reg_3033;
assign empty_156_fu_1881_p2 = (tmp_61_fu_1874_p3 + zext_ln15_reg_2270);
assign empty_157_fu_2221_p1 = m2_load_57_reg_3038;
assign empty_158_fu_1898_p2 = (tmp_62_fu_1891_p3 + zext_ln15_reg_2270);
assign empty_159_fu_2225_p1 = m2_load_58_reg_3053;
assign empty_160_fu_1915_p2 = (tmp_63_fu_1908_p3 + zext_ln15_reg_2270);
assign empty_161_fu_2229_p1 = m2_load_59_reg_3058;
assign empty_162_fu_1932_p2 = (tmp_64_fu_1925_p3 + zext_ln15_reg_2270);
assign empty_163_fu_2233_p1 = m2_load_60_reg_3073;
assign empty_164_fu_1949_p2 = (tmp_66_fu_1942_p3 + zext_ln15_reg_2270);
assign empty_165_fu_2237_p1 = m2_load_61_reg_3078;
assign empty_166_fu_1966_p2 = (tmp_68_fu_1959_p3 + zext_ln15_reg_2270);
assign empty_167_fu_2241_p1 = m2_load_62_reg_3093;
assign empty_168_fu_1983_p2 = (tmp_71_fu_1976_p3 + zext_ln15_reg_2270);
assign empty_169_fu_2245_p1 = m2_load_63_reg_3098;
assign empty_74_fu_1997_p1 = m2_load_1_reg_2358;
assign empty_75_fu_2001_p1 = m2_load_2_reg_2419;
assign empty_76_fu_2005_p1 = m2_load_3_reg_2424;
assign empty_77_fu_2009_p1 = m2_load_4_reg_2473;
assign empty_78_fu_2013_p1 = m2_load_5_reg_2478;
assign empty_79_fu_2017_p1 = m2_load_6_reg_2533;
assign empty_80_fu_1016_p2 = (p_shl_fu_1008_p3 - kk_cast4_fu_987_p1);
assign empty_81_fu_1025_p2 = (tmp_cast_fu_1022_p1 + empty_80_fu_1016_p2);
assign empty_82_fu_2021_p1 = m2_load_7_reg_2538;
assign empty_83_fu_1061_p2 = (tmp_12_fu_1054_p3 + zext_ln15_reg_2270);
assign empty_84_fu_2025_p1 = m2_load_8_reg_2553;
assign empty_85_fu_1078_p2 = (tmp_13_fu_1071_p3 + zext_ln15_reg_2270);
assign empty_86_fu_2029_p1 = m2_load_9_reg_2558;
assign empty_87_fu_1095_p2 = (tmp_14_fu_1088_p3 + zext_ln15_reg_2270);
assign empty_88_fu_2033_p1 = m2_load_10_reg_2573;
assign empty_89_fu_1112_p2 = (tmp_15_fu_1105_p3 + zext_ln15_reg_2270);
assign empty_90_fu_2037_p1 = m2_load_11_reg_2578;
assign empty_91_fu_1129_p2 = (tmp_16_fu_1122_p3 + zext_ln15_reg_2270);
assign empty_92_fu_2041_p1 = m2_load_12_reg_2593;
assign empty_93_fu_1146_p2 = (tmp_17_fu_1139_p3 + zext_ln15_reg_2270);
assign empty_94_fu_2045_p1 = m2_load_13_reg_2598;
assign empty_95_fu_1163_p2 = (tmp_18_fu_1156_p3 + zext_ln15_reg_2270);
assign empty_96_fu_2049_p1 = m2_load_14_reg_2613;
assign empty_97_fu_1180_p2 = (tmp_19_fu_1173_p3 + zext_ln15_reg_2270);
assign empty_98_fu_2053_p1 = m2_load_15_reg_2618;
assign empty_99_fu_2057_p1 = m2_load_16_reg_2633;
assign empty_fu_1993_p1 = m2_load_reg_2353;
assign grp_bbgemm_Pipeline_loopi_fu_707_ap_start = grp_bbgemm_Pipeline_loopi_fu_707_ap_start_reg;
assign kk_cast4_fu_987_p1 = kk_reg_695;
assign m1_address0 = grp_bbgemm_Pipeline_loopi_fu_707_m1_address0;
assign m1_address1 = grp_bbgemm_Pipeline_loopi_fu_707_m1_address1;
assign m1_ce0 = grp_bbgemm_Pipeline_loopi_fu_707_m1_ce0;
assign m1_ce1 = grp_bbgemm_Pipeline_loopi_fu_707_m1_ce1;
assign m2_address0 = m2_address0_local;
assign m2_address1 = m2_address1_local;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign or_ln_fu_922_p3 = {{tmp_3_fu_912_p4}, {3'd7}};
assign p_cast10_fu_952_p1 = tmp_9_fu_943_p4;
assign p_cast11_fu_977_p1 = tmp_10_fu_964_p6;
assign p_cast12_fu_1003_p1 = tmp_11_fu_995_p4;
assign p_cast13_fu_1031_p1 = empty_81_fu_1025_p2;
assign p_cast14_fu_1066_p1 = empty_83_fu_1061_p2;
assign p_cast15_fu_1083_p1 = empty_85_fu_1078_p2;
assign p_cast16_fu_1100_p1 = empty_87_fu_1095_p2;
assign p_cast17_fu_1117_p1 = empty_89_fu_1112_p2;
assign p_cast18_fu_1134_p1 = empty_91_fu_1129_p2;
assign p_cast19_fu_1151_p1 = empty_93_fu_1146_p2;
assign p_cast20_fu_1168_p1 = empty_95_fu_1163_p2;
assign p_cast21_fu_1185_p1 = empty_97_fu_1180_p2;
assign p_cast22_fu_1198_p1 = tmp_21_fu_1190_p4;
assign p_cast23_fu_1213_p1 = tmp_22_fu_1203_p5;
assign p_cast24_fu_1228_p1 = tmp_23_fu_1218_p5;
assign p_cast25_fu_1243_p1 = tmp_24_fu_1233_p5;
assign p_cast26_fu_1258_p1 = tmp_25_fu_1248_p5;
assign p_cast27_fu_1276_p1 = tmp_26_fu_1263_p7;
assign p_cast28_fu_1291_p1 = tmp_27_fu_1281_p5;
assign p_cast29_fu_1306_p1 = tmp_28_fu_1296_p5;
assign p_cast30_fu_1323_p1 = empty_107_fu_1318_p2;
assign p_cast31_fu_1340_p1 = empty_109_fu_1335_p2;
assign p_cast32_fu_1357_p1 = empty_111_fu_1352_p2;
assign p_cast33_fu_1374_p1 = empty_113_fu_1369_p2;
assign p_cast34_fu_1391_p1 = empty_115_fu_1386_p2;
assign p_cast35_fu_1408_p1 = empty_117_fu_1403_p2;
assign p_cast36_fu_1425_p1 = empty_119_fu_1420_p2;
assign p_cast37_fu_1442_p1 = empty_121_fu_1437_p2;
assign p_cast38_fu_1456_p1 = tmp_37_fu_1447_p5;
assign p_cast39_fu_1472_p1 = tmp_38_fu_1461_p6;
assign p_cast40_fu_1488_p1 = tmp_39_fu_1477_p6;
assign p_cast41_fu_1504_p1 = tmp_40_fu_1493_p6;
assign p_cast42_fu_1520_p1 = tmp_41_fu_1509_p6;
assign p_cast43_fu_1539_p1 = tmp_42_fu_1525_p8;
assign p_cast44_fu_1555_p1 = tmp_43_fu_1544_p6;
assign p_cast45_fu_1571_p1 = tmp_44_fu_1560_p6;
assign p_cast46_fu_1591_p1 = empty_131_fu_1586_p2;
assign p_cast47_fu_1611_p1 = empty_133_fu_1606_p2;
assign p_cast48_fu_1631_p1 = empty_135_fu_1626_p2;
assign p_cast49_fu_1651_p1 = empty_137_fu_1646_p2;
assign p_cast50_fu_1671_p1 = empty_139_fu_1666_p2;
assign p_cast51_fu_1691_p1 = empty_141_fu_1686_p2;
assign p_cast52_fu_1711_p1 = empty_143_fu_1706_p2;
assign p_cast53_fu_1731_p1 = empty_145_fu_1726_p2;
assign p_cast54_fu_1744_p1 = tmp_53_fu_1736_p4;
assign p_cast55_fu_1759_p1 = tmp_54_fu_1749_p5;
assign p_cast56_fu_1774_p1 = tmp_55_fu_1764_p5;
assign p_cast57_fu_1789_p1 = tmp_56_fu_1779_p5;
assign p_cast58_fu_1804_p1 = tmp_57_fu_1794_p5;
assign p_cast59_fu_1822_p1 = tmp_58_fu_1809_p7;
assign p_cast60_fu_1837_p1 = tmp_59_fu_1827_p5;
assign p_cast61_fu_1852_p1 = tmp_60_fu_1842_p5;
assign p_cast62_fu_1886_p1 = empty_156_fu_1881_p2;
assign p_cast63_fu_1903_p1 = empty_158_fu_1898_p2;
assign p_cast64_fu_1920_p1 = empty_160_fu_1915_p2;
assign p_cast65_fu_1937_p1 = empty_162_fu_1932_p2;
assign p_cast66_fu_1954_p1 = empty_164_fu_1949_p2;
assign p_cast67_fu_1971_p1 = empty_166_fu_1966_p2;
assign p_cast68_fu_1988_p1 = empty_168_fu_1983_p2;
assign p_cast6_fu_830_p1 = tmp_2_fu_823_p3;
assign p_cast7_fu_854_p1 = tmp_5_fu_844_p4;
assign p_cast8_fu_893_p1 = tmp_8_fu_884_p4;
assign p_cast9_fu_907_p1 = tmp_s_fu_898_p4;
assign p_shl_fu_1008_p3 = {{trunc_ln11_1_fu_991_p1}, {6'd0}};
assign prod_address0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_address0;
assign prod_address1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_address1;
assign prod_ce0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_ce0;
assign prod_ce1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_ce1;
assign prod_d0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_d0;
assign prod_d1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_d1;
assign prod_we0 = grp_bbgemm_Pipeline_loopi_fu_707_prod_we0;
assign prod_we1 = grp_bbgemm_Pipeline_loopi_fu_707_prod_we1;
assign shl_ln_fu_1857_p3 = {{tmp_3_reg_2383}, {9'd448}};
assign tmp_10_fu_964_p6 = {{{{{tmp_1_reg_2314}, {tmp_7_fu_934_p4}}, {1'd1}}, {tmp_69_fu_957_p3}}, {1'd1}};
assign tmp_11_fu_995_p4 = {{{tmp_1_reg_2314}, {tmp_7_reg_2429}}, {3'd6}};
assign tmp_12_fu_1054_p3 = {{tmp_1_reg_2314}, {7'd64}};
assign tmp_13_fu_1071_p3 = {{tmp_1_reg_2314}, {7'd65}};
assign tmp_14_fu_1088_p3 = {{tmp_1_reg_2314}, {7'd66}};
assign tmp_15_fu_1105_p3 = {{tmp_1_reg_2314}, {7'd67}};
assign tmp_16_fu_1122_p3 = {{tmp_1_reg_2314}, {7'd68}};
assign tmp_17_fu_1139_p3 = {{tmp_1_reg_2314}, {7'd69}};
assign tmp_18_fu_1156_p3 = {{tmp_1_reg_2314}, {7'd70}};
assign tmp_19_fu_1173_p3 = {{tmp_1_reg_2314}, {7'd71}};
assign tmp_1_fu_813_p4 = {{kk_reg_695[5:1]}};
assign tmp_21_fu_1190_p4 = {{{tmp_20_reg_2493}, {1'd1}}, {jj_1_reg_2256}};
assign tmp_22_fu_1203_p5 = {{{{tmp_20_reg_2493}, {1'd1}}, {tmp_4_reg_2336}}, {1'd1}};
assign tmp_23_fu_1218_p5 = {{{{tmp_20_reg_2493}, {1'd1}}, {tmp_6_reg_2363}}, {2'd2}};
assign tmp_24_fu_1233_p5 = {{{{tmp_20_reg_2493}, {1'd1}}, {tmp_6_reg_2363}}, {2'd3}};
assign tmp_25_fu_1248_p5 = {{{{tmp_20_reg_2493}, {1'd1}}, {tmp_7_reg_2429}}, {3'd4}};
assign tmp_26_fu_1263_p7 = {{{{{{tmp_20_reg_2493}, {1'd1}}, {tmp_7_reg_2429}}, {1'd1}}, {tmp_69_reg_2451}}, {1'd1}};
assign tmp_27_fu_1281_p5 = {{{{tmp_20_reg_2493}, {1'd1}}, {tmp_7_reg_2429}}, {3'd6}};
assign tmp_28_fu_1296_p5 = {{{{tmp_20_reg_2493}, {1'd1}}, {tmp_7_reg_2429}}, {3'd7}};
assign tmp_29_fu_1311_p3 = {{tmp_20_reg_2493}, {8'd192}};
assign tmp_2_fu_823_p3 = {{tmp_1_fu_813_p4}, {jj_fu_170}};
assign tmp_30_fu_1328_p3 = {{tmp_20_reg_2493}, {8'd193}};
assign tmp_31_fu_1345_p3 = {{tmp_20_reg_2493}, {8'd194}};
assign tmp_32_fu_1362_p3 = {{tmp_20_reg_2493}, {8'd195}};
assign tmp_33_fu_1379_p3 = {{tmp_20_reg_2493}, {8'd196}};
assign tmp_34_fu_1396_p3 = {{tmp_20_reg_2493}, {8'd197}};
assign tmp_35_fu_1413_p3 = {{tmp_20_reg_2493}, {8'd198}};
assign tmp_36_fu_1430_p3 = {{tmp_20_reg_2493}, {8'd199}};
assign tmp_37_fu_1447_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {jj_1_reg_2256}};
assign tmp_38_fu_1461_p6 = {{{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {tmp_4_reg_2336}}, {1'd1}};
assign tmp_39_fu_1477_p6 = {{{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {tmp_6_reg_2363}}, {2'd2}};
assign tmp_3_fu_912_p4 = {{kk_reg_695[5:3]}};
assign tmp_40_fu_1493_p6 = {{{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {tmp_6_reg_2363}}, {2'd3}};
assign tmp_41_fu_1509_p6 = {{{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {tmp_7_reg_2429}}, {3'd4}};
assign tmp_42_fu_1525_p8 = {{{{{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {tmp_7_reg_2429}}, {1'd1}}, {tmp_69_reg_2451}}, {1'd1}};
assign tmp_43_fu_1544_p6 = {{{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {tmp_7_reg_2429}}, {3'd6}};
assign tmp_44_fu_1560_p6 = {{{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {tmp_7_reg_2429}}, {3'd7}};
assign tmp_45_fu_1576_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd64}};
assign tmp_46_fu_1596_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd65}};
assign tmp_47_fu_1616_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd66}};
assign tmp_48_fu_1636_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd67}};
assign tmp_49_fu_1656_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd68}};
assign tmp_4_fu_835_p4 = {{jj_fu_170[6:1]}};
assign tmp_50_fu_1676_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd69}};
assign tmp_51_fu_1696_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd70}};
assign tmp_52_fu_1716_p5 = {{{{tmp_3_reg_2383}, {1'd1}}, {tmp_70_reg_2513}}, {7'd71}};
assign tmp_53_fu_1736_p4 = {{{tmp_3_reg_2383}, {2'd3}}, {jj_1_reg_2256}};
assign tmp_54_fu_1749_p5 = {{{{tmp_3_reg_2383}, {2'd3}}, {tmp_4_reg_2336}}, {1'd1}};
assign tmp_55_fu_1764_p5 = {{{{tmp_3_reg_2383}, {2'd3}}, {tmp_6_reg_2363}}, {2'd2}};
assign tmp_56_fu_1779_p5 = {{{{tmp_3_reg_2383}, {2'd3}}, {tmp_6_reg_2363}}, {2'd3}};
assign tmp_57_fu_1794_p5 = {{{{tmp_3_reg_2383}, {2'd3}}, {tmp_7_reg_2429}}, {3'd4}};
assign tmp_58_fu_1809_p7 = {{{{{{tmp_3_reg_2383}, {2'd3}}, {tmp_7_reg_2429}}, {1'd1}}, {tmp_69_reg_2451}}, {1'd1}};
assign tmp_59_fu_1827_p5 = {{{{tmp_3_reg_2383}, {2'd3}}, {tmp_7_reg_2429}}, {3'd6}};
assign tmp_5_fu_844_p4 = {{{tmp_1_fu_813_p4}, {tmp_4_fu_835_p4}}, {1'd1}};
assign tmp_60_fu_1842_p5 = {{{{tmp_3_reg_2383}, {2'd3}}, {tmp_7_reg_2429}}, {3'd7}};
assign tmp_61_fu_1874_p3 = {{tmp_3_reg_2383}, {9'd449}};
assign tmp_62_fu_1891_p3 = {{tmp_3_reg_2383}, {9'd450}};
assign tmp_63_fu_1908_p3 = {{tmp_3_reg_2383}, {9'd451}};
assign tmp_64_fu_1925_p3 = {{tmp_3_reg_2383}, {9'd452}};
assign tmp_65_fu_789_p3 = jj_fu_170[32'd6];
assign tmp_66_fu_1942_p3 = {{tmp_3_reg_2383}, {9'd453}};
assign tmp_67_fu_805_p3 = kk_reg_695[32'd6];
assign tmp_68_fu_1959_p3 = {{tmp_3_reg_2383}, {9'd454}};
assign tmp_69_fu_957_p3 = jj_1_reg_2256[32'd1];
assign tmp_6_fu_875_p4 = {{jj_1_reg_2256[6:2]}};
assign tmp_71_fu_1976_p3 = {{tmp_3_reg_2383}, {9'd455}};
assign tmp_7_fu_934_p4 = {{jj_1_reg_2256[6:3]}};
assign tmp_8_fu_884_p4 = {{{tmp_1_reg_2314}, {tmp_6_fu_875_p4}}, {2'd2}};
assign tmp_9_fu_943_p4 = {{{tmp_1_reg_2314}, {tmp_7_fu_934_p4}}, {3'd4}};
assign tmp_cast_fu_1022_p1 = tmp_reg_2463;
assign tmp_fu_982_p2 = (jj_1_reg_2256 + zext_ln20_fu_930_p1);
assign tmp_s_fu_898_p4 = {{{tmp_1_reg_2314}, {tmp_6_fu_875_p4}}, {2'd3}};
assign trunc_ln11_1_fu_991_p1 = kk_reg_695[5:0];
assign trunc_ln11_fu_801_p1 = jj_fu_170[5:0];
assign zext_ln15_fu_797_p1 = jj_fu_170;
assign zext_ln20_fu_930_p1 = or_ln_fu_922_p3;
always @ (posedge ap_clk) begin
    zext_ln15_reg_2270[11:7] <= 5'b00000;
end
endmodule 