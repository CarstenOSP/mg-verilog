module backprop_update_weights_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,norm_84); 
parameter    ap_ST_fsm_pp0_stage0 = 48'd1;
parameter    ap_ST_fsm_pp0_stage1 = 48'd2;
parameter    ap_ST_fsm_pp0_stage2 = 48'd4;
parameter    ap_ST_fsm_pp0_stage3 = 48'd8;
parameter    ap_ST_fsm_pp0_stage4 = 48'd16;
parameter    ap_ST_fsm_pp0_stage5 = 48'd32;
parameter    ap_ST_fsm_pp0_stage6 = 48'd64;
parameter    ap_ST_fsm_pp0_stage7 = 48'd128;
parameter    ap_ST_fsm_pp0_stage8 = 48'd256;
parameter    ap_ST_fsm_pp0_stage9 = 48'd512;
parameter    ap_ST_fsm_pp0_stage10 = 48'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 48'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 48'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 48'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 48'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 48'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 48'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 48'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 48'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 48'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 48'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 48'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 48'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 48'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 48'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 48'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 48'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 48'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 48'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 48'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 48'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 48'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 48'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 48'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 48'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 48'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 48'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 48'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 48'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 48'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 48'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 48'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 48'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 48'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 48'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 48'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 48'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 48'd140737488355328;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
output   weights3_we1;
output  [63:0] weights3_d1;
input  [63:0] weights3_q1;
input  [63:0] norm_84;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_subdone;
reg   [0:0] tmp_reg_1688;
reg    ap_condition_exit_pp0_iter0_stage47;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_549;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_553;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_558;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_563;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_568;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_573;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_578;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_583;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_588;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] reg_593;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_598;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_603;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [63:0] grp_fu_545_p2;
reg   [63:0] reg_608;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_11001;
wire    ap_CS_fsm_pp0_stage35;
wire    ap_block_pp0_stage35_11001;
wire    ap_CS_fsm_pp0_stage36;
wire    ap_block_pp0_stage36_11001;
wire    ap_CS_fsm_pp0_stage37;
wire    ap_block_pp0_stage37_11001;
wire    ap_CS_fsm_pp0_stage38;
wire    ap_block_pp0_stage38_11001;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40_11001;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41_11001;
wire    ap_CS_fsm_pp0_stage42;
wire    ap_block_pp0_stage42_11001;
wire    ap_CS_fsm_pp0_stage43;
wire    ap_block_pp0_stage43_11001;
wire    ap_CS_fsm_pp0_stage44;
wire    ap_block_pp0_stage44_11001;
wire    ap_CS_fsm_pp0_stage45;
wire    ap_block_pp0_stage45_11001;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
reg   [63:0] reg_612;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_616;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
reg   [63:0] reg_620;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_624;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_628;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_4_reg_1683;
reg   [7:0] weights3_addr_reg_1692;
reg   [7:0] weights3_addr_reg_1692_pp0_iter1_reg;
reg   [7:0] weights3_addr_48_reg_1697;
reg   [7:0] weights3_addr_48_reg_1697_pp0_iter1_reg;
reg   [5:0] tmp_22_reg_1702;
reg   [4:0] tmp_24_reg_1708;
reg   [3:0] tmp_25_reg_1713;
reg   [0:0] tmp_14_reg_1719;
reg   [7:0] weights3_addr_49_reg_1724;
reg   [7:0] weights3_addr_49_reg_1724_pp0_iter1_reg;
wire   [7:0] tmp_23_fu_752_p3;
reg   [7:0] tmp_23_reg_1729;
reg   [7:0] weights3_addr_50_reg_1742;
reg   [7:0] weights3_addr_50_reg_1742_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_fu_764_p1;
reg   [7:0] weights3_addr_54_reg_1752;
reg   [7:0] weights3_addr_54_reg_1752_pp0_iter1_reg;
reg   [7:0] weights3_addr_58_reg_1757;
reg   [7:0] weights3_addr_58_reg_1757_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_2_fu_796_p1;
reg   [7:0] weights3_addr_51_reg_1767;
reg   [7:0] weights3_addr_51_reg_1767_pp0_iter1_reg;
wire   [7:0] tmp_26_fu_811_p3;
reg   [7:0] tmp_26_reg_1772;
reg   [7:0] weights3_addr_62_reg_1808;
reg   [7:0] weights3_addr_62_reg_1808_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_4_fu_823_p1;
reg   [7:0] weights3_addr_52_reg_1818;
reg   [7:0] weights3_addr_52_reg_1818_pp0_iter1_reg;
reg   [7:0] weights3_addr_53_reg_1823;
reg   [7:0] weights3_addr_53_reg_1823_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_6_fu_848_p1;
reg   [7:0] weights3_addr_55_reg_1833;
reg   [7:0] weights3_addr_55_reg_1833_pp0_iter1_reg;
reg   [7:0] weights3_addr_56_reg_1838;
reg   [7:0] weights3_addr_56_reg_1838_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_14_fu_873_p1;
reg   [7:0] weights3_addr_57_reg_1848;
reg   [7:0] weights3_addr_57_reg_1848_pp0_iter1_reg;
reg   [7:0] weights3_addr_59_reg_1853;
reg   [7:0] weights3_addr_59_reg_1853_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_22_fu_898_p1;
reg   [7:0] weights3_addr_60_reg_1863;
reg   [7:0] weights3_addr_60_reg_1863_pp0_iter1_reg;
reg   [7:0] weights3_addr_61_reg_1868;
reg   [7:0] weights3_addr_61_reg_1868_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_30_fu_923_p1;
reg   [7:0] weights3_addr_63_reg_1878;
reg   [7:0] weights3_addr_63_reg_1878_pp0_iter1_reg;
reg   [7:0] weights3_addr_64_reg_1883;
reg   [7:0] weights3_addr_64_reg_1883_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_8_fu_948_p1;
reg   [7:0] weights3_addr_65_reg_1893;
reg   [7:0] weights3_addr_65_reg_1893_pp0_iter1_reg;
reg   [7:0] weights3_addr_66_reg_1898;
reg   [7:0] weights3_addr_66_reg_1898_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_10_fu_973_p1;
reg   [7:0] weights3_addr_67_reg_1908;
reg   [7:0] weights3_addr_67_reg_1908_pp0_iter1_reg;
reg   [7:0] weights3_addr_68_reg_1913;
reg   [7:0] weights3_addr_68_reg_1913_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_12_fu_998_p1;
reg   [7:0] weights3_addr_69_reg_1923;
reg   [7:0] weights3_addr_69_reg_1923_pp0_iter1_reg;
reg   [7:0] weights3_addr_70_reg_1928;
reg   [7:0] weights3_addr_70_reg_1928_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_16_fu_1023_p1;
reg   [63:0] weights3_load_70_reg_1939;
reg   [7:0] weights3_addr_71_reg_1944;
reg   [7:0] weights3_addr_71_reg_1944_pp0_iter1_reg;
reg   [7:0] weights3_addr_72_reg_1949;
reg   [7:0] weights3_addr_72_reg_1949_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_18_fu_1048_p1;
reg   [63:0] weights3_load_72_reg_1960;
reg   [7:0] weights3_addr_73_reg_1965;
reg   [7:0] weights3_addr_73_reg_1965_pp0_iter1_reg;
reg   [7:0] weights3_addr_74_reg_1970;
reg   [7:0] weights3_addr_74_reg_1970_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_20_fu_1073_p1;
reg   [63:0] weights3_load_74_reg_1981;
reg   [7:0] weights3_addr_75_reg_1986;
reg   [7:0] weights3_addr_75_reg_1986_pp0_iter1_reg;
reg   [7:0] weights3_addr_76_reg_1991;
reg   [7:0] weights3_addr_76_reg_1991_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_24_fu_1098_p1;
reg   [63:0] weights3_load_76_reg_2002;
reg   [7:0] weights3_addr_77_reg_2007;
reg   [7:0] weights3_addr_77_reg_2007_pp0_iter1_reg;
reg   [7:0] weights3_addr_78_reg_2012;
reg   [7:0] weights3_addr_78_reg_2012_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_26_fu_1123_p1;
reg   [63:0] weights3_load_78_reg_2023;
reg   [7:0] weights3_addr_79_reg_2028;
reg   [7:0] weights3_addr_79_reg_2028_pp0_iter1_reg;
reg   [7:0] weights3_addr_80_reg_2033;
reg   [7:0] weights3_addr_80_reg_2033_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_28_fu_1148_p1;
reg   [63:0] weights3_load_80_reg_2044;
reg   [7:0] weights3_addr_81_reg_2049;
reg   [7:0] weights3_addr_81_reg_2049_pp0_iter1_reg;
reg   [7:0] weights3_addr_82_reg_2054;
reg   [7:0] weights3_addr_82_reg_2054_pp0_iter1_reg;
reg   [7:0] weights3_addr_82_reg_2054_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_32_fu_1173_p1;
reg   [63:0] weights3_load_82_reg_2064;
reg   [7:0] weights3_addr_83_reg_2069;
reg   [7:0] weights3_addr_83_reg_2069_pp0_iter1_reg;
reg   [7:0] weights3_addr_83_reg_2069_pp0_iter2_reg;
reg   [7:0] weights3_addr_84_reg_2075;
reg   [7:0] weights3_addr_84_reg_2075_pp0_iter1_reg;
reg   [7:0] weights3_addr_84_reg_2075_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_34_fu_1198_p1;
reg   [63:0] weights3_load_84_reg_2085;
reg   [7:0] weights3_addr_85_reg_2090;
reg   [7:0] weights3_addr_85_reg_2090_pp0_iter1_reg;
reg   [7:0] weights3_addr_85_reg_2090_pp0_iter2_reg;
reg   [7:0] weights3_addr_86_reg_2096;
reg   [7:0] weights3_addr_86_reg_2096_pp0_iter1_reg;
reg   [7:0] weights3_addr_86_reg_2096_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_36_fu_1223_p1;
reg   [63:0] weights3_load_86_reg_2106;
reg   [7:0] weights3_addr_87_reg_2111;
reg   [7:0] weights3_addr_87_reg_2111_pp0_iter1_reg;
reg   [7:0] weights3_addr_87_reg_2111_pp0_iter2_reg;
reg   [7:0] weights3_addr_88_reg_2117;
reg   [7:0] weights3_addr_88_reg_2117_pp0_iter1_reg;
reg   [7:0] weights3_addr_88_reg_2117_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_38_fu_1248_p1;
reg   [63:0] weights3_load_88_reg_2127;
reg   [7:0] weights3_addr_89_reg_2132;
reg   [7:0] weights3_addr_89_reg_2132_pp0_iter1_reg;
reg   [7:0] weights3_addr_89_reg_2132_pp0_iter2_reg;
reg   [7:0] weights3_addr_90_reg_2138;
reg   [7:0] weights3_addr_90_reg_2138_pp0_iter1_reg;
reg   [7:0] weights3_addr_90_reg_2138_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_40_fu_1273_p1;
reg   [63:0] weights3_load_90_reg_2148;
reg   [7:0] weights3_addr_91_reg_2153;
reg   [7:0] weights3_addr_91_reg_2153_pp0_iter1_reg;
reg   [7:0] weights3_addr_91_reg_2153_pp0_iter2_reg;
reg   [7:0] weights3_addr_92_reg_2159;
reg   [7:0] weights3_addr_92_reg_2159_pp0_iter1_reg;
reg   [7:0] weights3_addr_92_reg_2159_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_42_fu_1298_p1;
reg   [63:0] weights3_load_92_reg_2169;
reg   [7:0] weights3_addr_93_reg_2174;
reg   [7:0] weights3_addr_93_reg_2174_pp0_iter1_reg;
reg   [7:0] weights3_addr_93_reg_2174_pp0_iter2_reg;
reg   [7:0] weights3_addr_94_reg_2180;
reg   [7:0] weights3_addr_94_reg_2180_pp0_iter1_reg;
reg   [7:0] weights3_addr_94_reg_2180_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_44_fu_1323_p1;
reg   [63:0] weights3_load_94_reg_2190;
wire   [63:0] bitcast_ln194_46_fu_1328_p1;
wire   [63:0] bitcast_ln194_48_fu_1332_p1;
wire   [63:0] bitcast_ln194_50_fu_1337_p1;
wire   [63:0] bitcast_ln194_52_fu_1341_p1;
wire   [63:0] bitcast_ln194_54_fu_1346_p1;
wire   [63:0] bitcast_ln194_56_fu_1350_p1;
wire   [63:0] bitcast_ln194_58_fu_1355_p1;
wire   [63:0] bitcast_ln194_60_fu_1359_p1;
wire   [63:0] bitcast_ln194_62_fu_1364_p1;
wire   [63:0] bitcast_ln194_64_fu_1368_p1;
wire   [63:0] bitcast_ln194_66_fu_1373_p1;
wire   [63:0] bitcast_ln194_68_fu_1377_p1;
wire   [63:0] bitcast_ln194_70_fu_1382_p1;
wire   [63:0] bitcast_ln194_72_fu_1386_p1;
wire   [63:0] bitcast_ln194_74_fu_1391_p1;
wire   [63:0] bitcast_ln194_76_fu_1395_p1;
wire   [63:0] bitcast_ln194_78_fu_1400_p1;
wire   [63:0] bitcast_ln194_80_fu_1404_p1;
wire   [63:0] bitcast_ln194_82_fu_1409_p1;
wire   [63:0] bitcast_ln194_84_fu_1413_p1;
wire   [63:0] bitcast_ln194_86_fu_1418_p1;
wire   [63:0] bitcast_ln194_88_fu_1422_p1;
wire   [63:0] bitcast_ln194_90_fu_1427_p1;
wire    ap_block_pp0_stage47_11001;
wire   [63:0] bitcast_ln194_92_fu_1441_p1;
wire   [63:0] bitcast_ln194_94_fu_1446_p1;
reg   [63:0] div213_5_reg_2320;
reg   [63:0] div213_1_1_reg_2325;
reg   [63:0] div213_1_2_reg_2330;
reg   [63:0] div213_2_reg_2335;
reg   [63:0] div213_2_2_reg_2340;
reg   [63:0] div213_3_reg_2345;
reg   [63:0] div213_11_2_reg_2350;
reg   [63:0] div213_12_reg_2355;
reg   [63:0] div213_12_1_reg_2360;
reg   [63:0] div213_12_2_reg_2365;
reg   [63:0] div213_13_reg_2370;
reg   [63:0] div213_13_1_reg_2375;
reg   [63:0] div213_13_2_reg_2380;
reg   [63:0] div213_14_reg_2385;
reg   [63:0] div213_14_1_reg_2390;
reg   [63:0] div213_14_2_reg_2395;
reg   [63:0] div213_15_reg_2400;
reg   [63:0] div213_15_1_reg_2405;
reg   [63:0] div213_15_2_reg_2410;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_674_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_697_p1;
wire   [63:0] zext_ln194_2_fu_747_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_3_fu_759_p1;
wire   [63:0] zext_ln194_7_fu_776_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_11_fu_791_p1;
wire   [63:0] zext_ln194_4_fu_806_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_15_fu_818_p1;
wire   [63:0] zext_ln194_5_fu_833_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_6_fu_843_p1;
wire   [63:0] zext_ln194_8_fu_858_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_9_fu_868_p1;
wire   [63:0] zext_ln194_10_fu_883_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln194_12_fu_893_p1;
wire   [63:0] zext_ln194_13_fu_908_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln194_14_fu_918_p1;
wire   [63:0] zext_ln194_16_fu_933_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln194_17_fu_943_p1;
wire   [63:0] zext_ln194_18_fu_958_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln194_19_fu_968_p1;
wire   [63:0] zext_ln194_20_fu_983_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln194_21_fu_993_p1;
wire   [63:0] zext_ln194_22_fu_1008_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln194_23_fu_1018_p1;
wire   [63:0] zext_ln194_24_fu_1033_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln194_25_fu_1043_p1;
wire   [63:0] zext_ln194_26_fu_1058_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln194_27_fu_1068_p1;
wire   [63:0] zext_ln194_28_fu_1083_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln194_29_fu_1093_p1;
wire   [63:0] zext_ln194_30_fu_1108_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln194_31_fu_1118_p1;
wire   [63:0] zext_ln194_32_fu_1133_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln194_33_fu_1143_p1;
wire   [63:0] zext_ln194_34_fu_1158_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln194_35_fu_1168_p1;
wire   [63:0] zext_ln194_36_fu_1183_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln194_37_fu_1193_p1;
wire   [63:0] zext_ln194_38_fu_1208_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln194_39_fu_1218_p1;
wire   [63:0] zext_ln194_40_fu_1233_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln194_41_fu_1243_p1;
wire   [63:0] zext_ln194_42_fu_1258_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln194_43_fu_1268_p1;
wire   [63:0] zext_ln194_44_fu_1283_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln194_45_fu_1293_p1;
wire   [63:0] zext_ln194_46_fu_1308_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln194_47_fu_1318_p1;
reg   [6:0] i_fu_142;
wire   [6:0] add_ln192_fu_1431_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    weights3_we1_local;
reg   [63:0] weights3_d1_local;
wire   [63:0] bitcast_ln194_1_fu_1450_p1;
wire    ap_block_pp0_stage24;
reg    weights3_we0_local;
reg   [63:0] weights3_d0_local;
wire   [63:0] bitcast_ln194_3_fu_1455_p1;
wire   [63:0] bitcast_ln194_5_fu_1460_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln194_7_fu_1465_p1;
wire   [63:0] bitcast_ln194_15_fu_1470_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] bitcast_ln194_23_fu_1475_p1;
wire   [63:0] bitcast_ln194_9_fu_1480_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln194_31_fu_1484_p1;
wire   [63:0] bitcast_ln194_11_fu_1488_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] bitcast_ln194_13_fu_1492_p1;
wire   [63:0] bitcast_ln194_17_fu_1496_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln194_19_fu_1500_p1;
wire   [63:0] bitcast_ln194_21_fu_1504_p1;
wire    ap_block_pp0_stage30;
wire   [63:0] bitcast_ln194_25_fu_1509_p1;
wire   [63:0] bitcast_ln194_27_fu_1514_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln194_29_fu_1519_p1;
wire   [63:0] bitcast_ln194_33_fu_1524_p1;
wire    ap_block_pp0_stage32;
wire   [63:0] bitcast_ln194_35_fu_1529_p1;
wire   [63:0] bitcast_ln194_37_fu_1534_p1;
wire    ap_block_pp0_stage33;
wire   [63:0] bitcast_ln194_39_fu_1539_p1;
wire   [63:0] bitcast_ln194_41_fu_1544_p1;
wire    ap_block_pp0_stage34;
wire   [63:0] bitcast_ln194_43_fu_1549_p1;
wire   [63:0] bitcast_ln194_45_fu_1554_p1;
wire    ap_block_pp0_stage35;
wire   [63:0] bitcast_ln194_47_fu_1559_p1;
wire    ap_block_pp0_stage36;
wire   [63:0] bitcast_ln194_49_fu_1564_p1;
wire    ap_block_pp0_stage37;
wire   [63:0] bitcast_ln194_51_fu_1569_p1;
wire    ap_block_pp0_stage38;
wire   [63:0] bitcast_ln194_53_fu_1574_p1;
wire    ap_block_pp0_stage39;
wire   [63:0] bitcast_ln194_55_fu_1579_p1;
wire    ap_block_pp0_stage40;
wire   [63:0] bitcast_ln194_57_fu_1584_p1;
wire    ap_block_pp0_stage41;
wire   [63:0] bitcast_ln194_59_fu_1589_p1;
wire    ap_block_pp0_stage42;
wire   [63:0] bitcast_ln194_61_fu_1594_p1;
wire    ap_block_pp0_stage43;
wire   [63:0] bitcast_ln194_63_fu_1599_p1;
wire    ap_block_pp0_stage44;
wire   [63:0] bitcast_ln194_65_fu_1604_p1;
wire    ap_block_pp0_stage45;
wire   [63:0] bitcast_ln194_67_fu_1609_p1;
wire    ap_block_pp0_stage46;
wire   [63:0] bitcast_ln194_69_fu_1614_p1;
wire    ap_block_pp0_stage47;
wire   [63:0] bitcast_ln194_71_fu_1619_p1;
wire   [63:0] bitcast_ln194_73_fu_1623_p1;
wire   [63:0] bitcast_ln194_75_fu_1627_p1;
wire   [63:0] bitcast_ln194_77_fu_1631_p1;
wire   [63:0] bitcast_ln194_79_fu_1635_p1;
wire   [63:0] bitcast_ln194_81_fu_1639_p1;
wire   [63:0] bitcast_ln194_83_fu_1643_p1;
wire   [63:0] bitcast_ln194_85_fu_1647_p1;
wire   [63:0] bitcast_ln194_87_fu_1651_p1;
wire   [63:0] bitcast_ln194_89_fu_1655_p1;
wire   [63:0] bitcast_ln194_91_fu_1659_p1;
wire   [63:0] bitcast_ln194_93_fu_1663_p1;
wire   [63:0] bitcast_ln194_95_fu_1667_p1;
reg   [63:0] grp_fu_545_p0;
wire   [5:0] empty_fu_652_p1;
wire   [7:0] p_shl_fu_656_p3;
wire   [7:0] zext_ln21_fu_648_p1;
wire   [7:0] empty_54_fu_664_p2;
wire   [6:0] tmp_s_fu_679_p4;
wire   [7:0] or_ln6_fu_689_p3;
wire   [8:0] zext_ln194_48_fu_670_p1;
wire   [7:0] or_ln194_1_fu_740_p3;
wire   [7:0] or_ln194_2_fu_769_p3;
wire   [7:0] or_ln194_3_fu_781_p5;
wire   [7:0] add_ln194_fu_801_p2;
wire   [7:0] add_ln194_1_fu_828_p2;
wire   [7:0] empty_55_fu_838_p2;
wire   [7:0] add_ln194_2_fu_853_p2;
wire   [7:0] empty_56_fu_863_p2;
wire   [7:0] add_ln194_3_fu_878_p2;
wire   [7:0] empty_57_fu_888_p2;
wire   [7:0] add_ln194_4_fu_903_p2;
wire   [7:0] add_ln194_5_fu_913_p2;
wire   [7:0] add_ln194_6_fu_928_p2;
wire   [7:0] add_ln194_7_fu_938_p2;
wire   [7:0] empty_58_fu_953_p2;
wire   [7:0] add_ln194_8_fu_963_p2;
wire   [7:0] add_ln194_9_fu_978_p2;
wire   [7:0] empty_59_fu_988_p2;
wire   [7:0] add_ln194_10_fu_1003_p2;
wire   [7:0] add_ln194_11_fu_1013_p2;
wire   [7:0] empty_60_fu_1028_p2;
wire   [7:0] add_ln194_12_fu_1038_p2;
wire   [7:0] add_ln194_13_fu_1053_p2;
wire   [7:0] empty_61_fu_1063_p2;
wire   [7:0] add_ln194_14_fu_1078_p2;
wire   [7:0] add_ln194_15_fu_1088_p2;
wire   [7:0] empty_62_fu_1103_p2;
wire   [7:0] add_ln194_16_fu_1113_p2;
wire   [7:0] add_ln194_17_fu_1128_p2;
wire   [7:0] empty_63_fu_1138_p2;
wire   [7:0] add_ln194_18_fu_1153_p2;
wire   [7:0] add_ln194_19_fu_1163_p2;
wire   [7:0] empty_64_fu_1178_p2;
wire   [7:0] add_ln194_20_fu_1188_p2;
wire   [7:0] add_ln194_21_fu_1203_p2;
wire   [7:0] empty_65_fu_1213_p2;
wire   [7:0] add_ln194_22_fu_1228_p2;
wire   [7:0] add_ln194_23_fu_1238_p2;
wire   [7:0] empty_66_fu_1253_p2;
wire   [7:0] add_ln194_24_fu_1263_p2;
wire   [7:0] add_ln194_25_fu_1278_p2;
wire   [7:0] empty_67_fu_1288_p2;
wire   [7:0] add_ln194_26_fu_1303_p2;
wire   [7:0] add_ln194_27_fu_1313_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [47:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
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
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 48'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_142 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U523(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_545_p0),.din1(norm_84),.ce(1'b1),.dout(grp_fu_545_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage47),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage47)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage47_subdone) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage47_subdone) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_142 <= 7'd0;
    end else if (((tmp_reg_1688 == 1'd0) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        i_fu_142 <= add_ln192_fu_1431_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_553 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_553 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_558 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_558 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_563 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_563 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_568 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_568 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_573 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_573 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            reg_578 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_578 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            reg_583 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_583 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            reg_588 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_588 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            reg_593 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_593 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            reg_598 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            reg_598 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            reg_603 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_603 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage47_11001) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        div213_11_2_reg_2350 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_12_1_reg_2360 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_12_2_reg_2365 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div213_12_reg_2355 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_13_1_reg_2375 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_13_2_reg_2380 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_13_reg_2370 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div213_14_1_reg_2390 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div213_14_2_reg_2395 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div213_14_reg_2385 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div213_15_1_reg_2405 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_15_2_reg_2410 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div213_15_reg_2400 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        div213_1_1_reg_2325 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        div213_1_2_reg_2330 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        div213_2_2_reg_2340 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        div213_2_reg_2335 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        div213_3_reg_2345 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        div213_5_reg_2320 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_reg_1683 <= ap_sig_allocacmp_i_4;
        tmp_14_reg_1719 <= zext_ln194_48_fu_670_p1[32'd2];
        tmp_22_reg_1702 <= {{empty_54_fu_664_p2[7:2]}};
        tmp_24_reg_1708 <= {{empty_54_fu_664_p2[7:3]}};
        tmp_25_reg_1713 <= {{empty_54_fu_664_p2[7:4]}};
        tmp_reg_1688 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_addr_48_reg_1697[7 : 1] <= zext_ln194_1_fu_697_p1[7 : 1];
        weights3_addr_48_reg_1697_pp0_iter1_reg[7 : 1] <= weights3_addr_48_reg_1697[7 : 1];
        weights3_addr_reg_1692 <= zext_ln194_fu_674_p1;
        weights3_addr_reg_1692_pp0_iter1_reg <= weights3_addr_reg_1692;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_549 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_608 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_612 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_616 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_620 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_624 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_628 <= grp_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_23_reg_1729[7 : 2] <= tmp_23_fu_752_p3[7 : 2];
        weights3_addr_49_reg_1724[7 : 2] <= zext_ln194_2_fu_747_p1[7 : 2];
        weights3_addr_49_reg_1724_pp0_iter1_reg[7 : 2] <= weights3_addr_49_reg_1724[7 : 2];
        weights3_addr_50_reg_1742[7 : 2] <= zext_ln194_3_fu_759_p1[7 : 2];
        weights3_addr_50_reg_1742_pp0_iter1_reg[7 : 2] <= weights3_addr_50_reg_1742[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_26_reg_1772[7 : 4] <= tmp_26_fu_811_p3[7 : 4];
        weights3_addr_51_reg_1767[7 : 2] <= zext_ln194_4_fu_806_p1[7 : 2];
        weights3_addr_51_reg_1767_pp0_iter1_reg[7 : 2] <= weights3_addr_51_reg_1767[7 : 2];
        weights3_addr_62_reg_1808[7 : 4] <= zext_ln194_15_fu_818_p1[7 : 4];
        weights3_addr_62_reg_1808_pp0_iter1_reg[7 : 4] <= weights3_addr_62_reg_1808[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_addr_52_reg_1818[7 : 2] <= zext_ln194_5_fu_833_p1[7 : 2];
        weights3_addr_52_reg_1818_pp0_iter1_reg[7 : 2] <= weights3_addr_52_reg_1818[7 : 2];
        weights3_addr_53_reg_1823[7 : 2] <= zext_ln194_6_fu_843_p1[7 : 2];
        weights3_addr_53_reg_1823_pp0_iter1_reg[7 : 2] <= weights3_addr_53_reg_1823[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_addr_54_reg_1752[7 : 3] <= zext_ln194_7_fu_776_p1[7 : 3];
        weights3_addr_54_reg_1752_pp0_iter1_reg[7 : 3] <= weights3_addr_54_reg_1752[7 : 3];
        weights3_addr_58_reg_1757[2] <= zext_ln194_11_fu_791_p1[2];
weights3_addr_58_reg_1757[7 : 4] <= zext_ln194_11_fu_791_p1[7 : 4];
        weights3_addr_58_reg_1757_pp0_iter1_reg[2] <= weights3_addr_58_reg_1757[2];
weights3_addr_58_reg_1757_pp0_iter1_reg[7 : 4] <= weights3_addr_58_reg_1757[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_addr_55_reg_1833[7 : 2] <= zext_ln194_8_fu_858_p1[7 : 2];
        weights3_addr_55_reg_1833_pp0_iter1_reg[7 : 2] <= weights3_addr_55_reg_1833[7 : 2];
        weights3_addr_56_reg_1838[7 : 2] <= zext_ln194_9_fu_868_p1[7 : 2];
        weights3_addr_56_reg_1838_pp0_iter1_reg[7 : 2] <= weights3_addr_56_reg_1838[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_addr_57_reg_1848[7 : 2] <= zext_ln194_10_fu_883_p1[7 : 2];
        weights3_addr_57_reg_1848_pp0_iter1_reg[7 : 2] <= weights3_addr_57_reg_1848[7 : 2];
        weights3_addr_59_reg_1853[7 : 2] <= zext_ln194_12_fu_893_p1[7 : 2];
        weights3_addr_59_reg_1853_pp0_iter1_reg[7 : 2] <= weights3_addr_59_reg_1853[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_addr_60_reg_1863[7 : 2] <= zext_ln194_13_fu_908_p1[7 : 2];
        weights3_addr_60_reg_1863_pp0_iter1_reg[7 : 2] <= weights3_addr_60_reg_1863[7 : 2];
        weights3_addr_61_reg_1868[7 : 2] <= zext_ln194_14_fu_918_p1[7 : 2];
        weights3_addr_61_reg_1868_pp0_iter1_reg[7 : 2] <= weights3_addr_61_reg_1868[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_addr_63_reg_1878[7 : 4] <= zext_ln194_16_fu_933_p1[7 : 4];
        weights3_addr_63_reg_1878_pp0_iter1_reg[7 : 4] <= weights3_addr_63_reg_1878[7 : 4];
        weights3_addr_64_reg_1883[7 : 4] <= zext_ln194_17_fu_943_p1[7 : 4];
        weights3_addr_64_reg_1883_pp0_iter1_reg[7 : 4] <= weights3_addr_64_reg_1883[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_addr_65_reg_1893[7 : 4] <= zext_ln194_18_fu_958_p1[7 : 4];
        weights3_addr_65_reg_1893_pp0_iter1_reg[7 : 4] <= weights3_addr_65_reg_1893[7 : 4];
        weights3_addr_66_reg_1898[7 : 4] <= zext_ln194_19_fu_968_p1[7 : 4];
        weights3_addr_66_reg_1898_pp0_iter1_reg[7 : 4] <= weights3_addr_66_reg_1898[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_addr_67_reg_1908[7 : 4] <= zext_ln194_20_fu_983_p1[7 : 4];
        weights3_addr_67_reg_1908_pp0_iter1_reg[7 : 4] <= weights3_addr_67_reg_1908[7 : 4];
        weights3_addr_68_reg_1913[7 : 4] <= zext_ln194_21_fu_993_p1[7 : 4];
        weights3_addr_68_reg_1913_pp0_iter1_reg[7 : 4] <= weights3_addr_68_reg_1913[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_addr_69_reg_1923[7 : 4] <= zext_ln194_22_fu_1008_p1[7 : 4];
        weights3_addr_69_reg_1923_pp0_iter1_reg[7 : 4] <= weights3_addr_69_reg_1923[7 : 4];
        weights3_addr_70_reg_1928[7 : 4] <= zext_ln194_23_fu_1018_p1[7 : 4];
        weights3_addr_70_reg_1928_pp0_iter1_reg[7 : 4] <= weights3_addr_70_reg_1928[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_addr_71_reg_1944[7 : 4] <= zext_ln194_24_fu_1033_p1[7 : 4];
        weights3_addr_71_reg_1944_pp0_iter1_reg[7 : 4] <= weights3_addr_71_reg_1944[7 : 4];
        weights3_addr_72_reg_1949[7 : 4] <= zext_ln194_25_fu_1043_p1[7 : 4];
        weights3_addr_72_reg_1949_pp0_iter1_reg[7 : 4] <= weights3_addr_72_reg_1949[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_addr_73_reg_1965[7 : 4] <= zext_ln194_26_fu_1058_p1[7 : 4];
        weights3_addr_73_reg_1965_pp0_iter1_reg[7 : 4] <= weights3_addr_73_reg_1965[7 : 4];
        weights3_addr_74_reg_1970[7 : 4] <= zext_ln194_27_fu_1068_p1[7 : 4];
        weights3_addr_74_reg_1970_pp0_iter1_reg[7 : 4] <= weights3_addr_74_reg_1970[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_addr_75_reg_1986[7 : 4] <= zext_ln194_28_fu_1083_p1[7 : 4];
        weights3_addr_75_reg_1986_pp0_iter1_reg[7 : 4] <= weights3_addr_75_reg_1986[7 : 4];
        weights3_addr_76_reg_1991[7 : 4] <= zext_ln194_29_fu_1093_p1[7 : 4];
        weights3_addr_76_reg_1991_pp0_iter1_reg[7 : 4] <= weights3_addr_76_reg_1991[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_addr_77_reg_2007[7 : 4] <= zext_ln194_30_fu_1108_p1[7 : 4];
        weights3_addr_77_reg_2007_pp0_iter1_reg[7 : 4] <= weights3_addr_77_reg_2007[7 : 4];
        weights3_addr_78_reg_2012[7 : 4] <= zext_ln194_31_fu_1118_p1[7 : 4];
        weights3_addr_78_reg_2012_pp0_iter1_reg[7 : 4] <= weights3_addr_78_reg_2012[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_addr_79_reg_2028[7 : 4] <= zext_ln194_32_fu_1133_p1[7 : 4];
        weights3_addr_79_reg_2028_pp0_iter1_reg[7 : 4] <= weights3_addr_79_reg_2028[7 : 4];
        weights3_addr_80_reg_2033[7 : 4] <= zext_ln194_33_fu_1143_p1[7 : 4];
        weights3_addr_80_reg_2033_pp0_iter1_reg[7 : 4] <= weights3_addr_80_reg_2033[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_addr_81_reg_2049[7 : 4] <= zext_ln194_34_fu_1158_p1[7 : 4];
        weights3_addr_81_reg_2049_pp0_iter1_reg[7 : 4] <= weights3_addr_81_reg_2049[7 : 4];
        weights3_addr_82_reg_2054[7 : 4] <= zext_ln194_35_fu_1168_p1[7 : 4];
        weights3_addr_82_reg_2054_pp0_iter1_reg[7 : 4] <= weights3_addr_82_reg_2054[7 : 4];
        weights3_addr_82_reg_2054_pp0_iter2_reg[7 : 4] <= weights3_addr_82_reg_2054_pp0_iter1_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_addr_83_reg_2069[7 : 4] <= zext_ln194_36_fu_1183_p1[7 : 4];
        weights3_addr_83_reg_2069_pp0_iter1_reg[7 : 4] <= weights3_addr_83_reg_2069[7 : 4];
        weights3_addr_83_reg_2069_pp0_iter2_reg[7 : 4] <= weights3_addr_83_reg_2069_pp0_iter1_reg[7 : 4];
        weights3_addr_84_reg_2075[7 : 4] <= zext_ln194_37_fu_1193_p1[7 : 4];
        weights3_addr_84_reg_2075_pp0_iter1_reg[7 : 4] <= weights3_addr_84_reg_2075[7 : 4];
        weights3_addr_84_reg_2075_pp0_iter2_reg[7 : 4] <= weights3_addr_84_reg_2075_pp0_iter1_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_addr_85_reg_2090[7 : 4] <= zext_ln194_38_fu_1208_p1[7 : 4];
        weights3_addr_85_reg_2090_pp0_iter1_reg[7 : 4] <= weights3_addr_85_reg_2090[7 : 4];
        weights3_addr_85_reg_2090_pp0_iter2_reg[7 : 4] <= weights3_addr_85_reg_2090_pp0_iter1_reg[7 : 4];
        weights3_addr_86_reg_2096[7 : 4] <= zext_ln194_39_fu_1218_p1[7 : 4];
        weights3_addr_86_reg_2096_pp0_iter1_reg[7 : 4] <= weights3_addr_86_reg_2096[7 : 4];
        weights3_addr_86_reg_2096_pp0_iter2_reg[7 : 4] <= weights3_addr_86_reg_2096_pp0_iter1_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_addr_87_reg_2111[7 : 4] <= zext_ln194_40_fu_1233_p1[7 : 4];
        weights3_addr_87_reg_2111_pp0_iter1_reg[7 : 4] <= weights3_addr_87_reg_2111[7 : 4];
        weights3_addr_87_reg_2111_pp0_iter2_reg[7 : 4] <= weights3_addr_87_reg_2111_pp0_iter1_reg[7 : 4];
        weights3_addr_88_reg_2117[7 : 4] <= zext_ln194_41_fu_1243_p1[7 : 4];
        weights3_addr_88_reg_2117_pp0_iter1_reg[7 : 4] <= weights3_addr_88_reg_2117[7 : 4];
        weights3_addr_88_reg_2117_pp0_iter2_reg[7 : 4] <= weights3_addr_88_reg_2117_pp0_iter1_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_addr_89_reg_2132[7 : 4] <= zext_ln194_42_fu_1258_p1[7 : 4];
        weights3_addr_89_reg_2132_pp0_iter1_reg[7 : 4] <= weights3_addr_89_reg_2132[7 : 4];
        weights3_addr_89_reg_2132_pp0_iter2_reg[7 : 4] <= weights3_addr_89_reg_2132_pp0_iter1_reg[7 : 4];
        weights3_addr_90_reg_2138[7 : 4] <= zext_ln194_43_fu_1268_p1[7 : 4];
        weights3_addr_90_reg_2138_pp0_iter1_reg[7 : 4] <= weights3_addr_90_reg_2138[7 : 4];
        weights3_addr_90_reg_2138_pp0_iter2_reg[7 : 4] <= weights3_addr_90_reg_2138_pp0_iter1_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_addr_91_reg_2153[7 : 4] <= zext_ln194_44_fu_1283_p1[7 : 4];
        weights3_addr_91_reg_2153_pp0_iter1_reg[7 : 4] <= weights3_addr_91_reg_2153[7 : 4];
        weights3_addr_91_reg_2153_pp0_iter2_reg[7 : 4] <= weights3_addr_91_reg_2153_pp0_iter1_reg[7 : 4];
        weights3_addr_92_reg_2159[7 : 4] <= zext_ln194_45_fu_1293_p1[7 : 4];
        weights3_addr_92_reg_2159_pp0_iter1_reg[7 : 4] <= weights3_addr_92_reg_2159[7 : 4];
        weights3_addr_92_reg_2159_pp0_iter2_reg[7 : 4] <= weights3_addr_92_reg_2159_pp0_iter1_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_addr_93_reg_2174[7 : 4] <= zext_ln194_46_fu_1308_p1[7 : 4];
        weights3_addr_93_reg_2174_pp0_iter1_reg[7 : 4] <= weights3_addr_93_reg_2174[7 : 4];
        weights3_addr_93_reg_2174_pp0_iter2_reg[7 : 4] <= weights3_addr_93_reg_2174_pp0_iter1_reg[7 : 4];
        weights3_addr_94_reg_2180[7 : 4] <= zext_ln194_47_fu_1318_p1[7 : 4];
        weights3_addr_94_reg_2180_pp0_iter1_reg[7 : 4] <= weights3_addr_94_reg_2180[7 : 4];
        weights3_addr_94_reg_2180_pp0_iter2_reg[7 : 4] <= weights3_addr_94_reg_2180_pp0_iter1_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_load_70_reg_1939 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_load_72_reg_1960 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_load_74_reg_1981 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_load_76_reg_2002 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_load_78_reg_2023 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_load_80_reg_2044 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_load_82_reg_2064 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_load_84_reg_2085 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_load_86_reg_2106 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_load_88_reg_2127 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_load_90_reg_2148 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_load_92_reg_2169 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_load_94_reg_2190 <= weights3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_1688 == 1'd1) & (1'b0 == ap_block_pp0_stage47_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_condition_exit_pp0_iter0_stage47 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage47 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_545_p0 = bitcast_ln194_94_fu_1446_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_545_p0 = bitcast_ln194_92_fu_1441_p1;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        grp_fu_545_p0 = bitcast_ln194_90_fu_1427_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        grp_fu_545_p0 = bitcast_ln194_88_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        grp_fu_545_p0 = bitcast_ln194_86_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        grp_fu_545_p0 = bitcast_ln194_84_fu_1413_p1;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        grp_fu_545_p0 = bitcast_ln194_82_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        grp_fu_545_p0 = bitcast_ln194_80_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        grp_fu_545_p0 = bitcast_ln194_78_fu_1400_p1;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        grp_fu_545_p0 = bitcast_ln194_76_fu_1395_p1;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        grp_fu_545_p0 = bitcast_ln194_74_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        grp_fu_545_p0 = bitcast_ln194_72_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        grp_fu_545_p0 = bitcast_ln194_70_fu_1382_p1;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        grp_fu_545_p0 = bitcast_ln194_68_fu_1377_p1;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        grp_fu_545_p0 = bitcast_ln194_66_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        grp_fu_545_p0 = bitcast_ln194_64_fu_1368_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        grp_fu_545_p0 = bitcast_ln194_62_fu_1364_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_545_p0 = bitcast_ln194_60_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_545_p0 = bitcast_ln194_58_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_545_p0 = bitcast_ln194_56_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_545_p0 = bitcast_ln194_54_fu_1346_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_545_p0 = bitcast_ln194_52_fu_1341_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_545_p0 = bitcast_ln194_50_fu_1337_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_545_p0 = bitcast_ln194_48_fu_1332_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_545_p0 = bitcast_ln194_46_fu_1328_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_545_p0 = bitcast_ln194_44_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_545_p0 = bitcast_ln194_42_fu_1298_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_545_p0 = bitcast_ln194_40_fu_1273_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_545_p0 = bitcast_ln194_38_fu_1248_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_545_p0 = bitcast_ln194_36_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_545_p0 = bitcast_ln194_34_fu_1198_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_545_p0 = bitcast_ln194_32_fu_1173_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_545_p0 = bitcast_ln194_28_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_545_p0 = bitcast_ln194_26_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_545_p0 = bitcast_ln194_24_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_545_p0 = bitcast_ln194_20_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_545_p0 = bitcast_ln194_18_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_545_p0 = bitcast_ln194_16_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_545_p0 = bitcast_ln194_12_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_545_p0 = bitcast_ln194_10_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_545_p0 = bitcast_ln194_8_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_545_p0 = bitcast_ln194_30_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_545_p0 = bitcast_ln194_22_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_545_p0 = bitcast_ln194_14_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_545_p0 = bitcast_ln194_6_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_545_p0 = bitcast_ln194_4_fu_823_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_545_p0 = bitcast_ln194_2_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_545_p0 = bitcast_ln194_fu_764_p1;
    end else begin
        grp_fu_545_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_address0_local = weights3_addr_94_reg_2180_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_address0_local = weights3_addr_93_reg_2174_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_address0_local = weights3_addr_92_reg_2159_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_address0_local = weights3_addr_91_reg_2153_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_address0_local = weights3_addr_90_reg_2138_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_address0_local = weights3_addr_89_reg_2132_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_address0_local = weights3_addr_88_reg_2117_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_address0_local = weights3_addr_87_reg_2111_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_address0_local = weights3_addr_86_reg_2096_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_address0_local = weights3_addr_85_reg_2090_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_address0_local = weights3_addr_84_reg_2075_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_address0_local = weights3_addr_83_reg_2069_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_address0_local = weights3_addr_82_reg_2054_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_address0_local = weights3_addr_68_reg_1913_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_address0_local = weights3_addr_66_reg_1898_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_address0_local = weights3_addr_64_reg_1883_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_address0_local = weights3_addr_61_reg_1868_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_address0_local = weights3_addr_59_reg_1853_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_address0_local = weights3_addr_56_reg_1838_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_address0_local = weights3_addr_53_reg_1823_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_address0_local = weights3_addr_62_reg_1808_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_address0_local = weights3_addr_58_reg_1757_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_address0_local = weights3_addr_50_reg_1742_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_address0_local = weights3_addr_48_reg_1697_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_address0_local = zext_ln194_47_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_address0_local = zext_ln194_45_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_address0_local = zext_ln194_43_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_address0_local = zext_ln194_41_fu_1243_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_address0_local = zext_ln194_39_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_address0_local = zext_ln194_37_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_address0_local = zext_ln194_35_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_address0_local = zext_ln194_33_fu_1143_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_address0_local = zext_ln194_31_fu_1118_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_address0_local = zext_ln194_29_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_address0_local = zext_ln194_27_fu_1068_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_address0_local = zext_ln194_25_fu_1043_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_address0_local = zext_ln194_23_fu_1018_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_address0_local = zext_ln194_21_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_address0_local = zext_ln194_19_fu_968_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_address0_local = zext_ln194_17_fu_943_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_address0_local = zext_ln194_14_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_address0_local = zext_ln194_12_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address0_local = zext_ln194_9_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address0_local = zext_ln194_6_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address0_local = zext_ln194_15_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address0_local = zext_ln194_11_fu_791_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address0_local = zext_ln194_3_fu_759_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address0_local = zext_ln194_1_fu_697_p1;
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_address1_local = weights3_addr_81_reg_2049_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_address1_local = weights3_addr_80_reg_2033_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_address1_local = weights3_addr_79_reg_2028_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_address1_local = weights3_addr_78_reg_2012_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_address1_local = weights3_addr_77_reg_2007_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_address1_local = weights3_addr_76_reg_1991_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_address1_local = weights3_addr_75_reg_1986_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_address1_local = weights3_addr_74_reg_1970_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_address1_local = weights3_addr_73_reg_1965_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_address1_local = weights3_addr_72_reg_1949_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_address1_local = weights3_addr_71_reg_1944_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_address1_local = weights3_addr_70_reg_1928_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_address1_local = weights3_addr_69_reg_1923_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_address1_local = weights3_addr_67_reg_1908_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_address1_local = weights3_addr_65_reg_1893_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_address1_local = weights3_addr_63_reg_1878_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_address1_local = weights3_addr_60_reg_1863_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_address1_local = weights3_addr_57_reg_1848_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_address1_local = weights3_addr_55_reg_1833_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_address1_local = weights3_addr_52_reg_1818_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_address1_local = weights3_addr_51_reg_1767_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_address1_local = weights3_addr_54_reg_1752_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_address1_local = weights3_addr_49_reg_1724_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_address1_local = weights3_addr_reg_1692_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_address1_local = zext_ln194_46_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_address1_local = zext_ln194_44_fu_1283_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_address1_local = zext_ln194_42_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_address1_local = zext_ln194_40_fu_1233_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_address1_local = zext_ln194_38_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_address1_local = zext_ln194_36_fu_1183_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_address1_local = zext_ln194_34_fu_1158_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_address1_local = zext_ln194_32_fu_1133_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_address1_local = zext_ln194_30_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_address1_local = zext_ln194_28_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_address1_local = zext_ln194_26_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_address1_local = zext_ln194_24_fu_1033_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_address1_local = zext_ln194_22_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_address1_local = zext_ln194_20_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_address1_local = zext_ln194_18_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_address1_local = zext_ln194_16_fu_933_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_address1_local = zext_ln194_13_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_address1_local = zext_ln194_10_fu_883_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address1_local = zext_ln194_8_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address1_local = zext_ln194_5_fu_833_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address1_local = zext_ln194_4_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address1_local = zext_ln194_7_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address1_local = zext_ln194_2_fu_747_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address1_local = zext_ln194_fu_674_p1;
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))| ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))| ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_d0_local = bitcast_ln194_95_fu_1667_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_d0_local = bitcast_ln194_93_fu_1663_p1;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_d0_local = bitcast_ln194_91_fu_1659_p1;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_d0_local = bitcast_ln194_89_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_d0_local = bitcast_ln194_87_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_d0_local = bitcast_ln194_85_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_d0_local = bitcast_ln194_83_fu_1643_p1;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_d0_local = bitcast_ln194_81_fu_1639_p1;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_d0_local = bitcast_ln194_79_fu_1635_p1;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_d0_local = bitcast_ln194_77_fu_1631_p1;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_d0_local = bitcast_ln194_75_fu_1627_p1;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_d0_local = bitcast_ln194_73_fu_1623_p1;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_d0_local = bitcast_ln194_71_fu_1619_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_d0_local = bitcast_ln194_43_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_d0_local = bitcast_ln194_39_fu_1539_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_d0_local = bitcast_ln194_35_fu_1529_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_d0_local = bitcast_ln194_29_fu_1519_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_d0_local = bitcast_ln194_25_fu_1509_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_d0_local = bitcast_ln194_19_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_d0_local = bitcast_ln194_13_fu_1492_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_d0_local = bitcast_ln194_31_fu_1484_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_d0_local = bitcast_ln194_23_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_d0_local = bitcast_ln194_7_fu_1465_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_d0_local = bitcast_ln194_3_fu_1455_p1;
    end else begin
        weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage47) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            weights3_d1_local = bitcast_ln194_69_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage46) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
            weights3_d1_local = bitcast_ln194_67_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage45) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
            weights3_d1_local = bitcast_ln194_65_fu_1604_p1;
        end else if (((1'b0 == ap_block_pp0_stage44) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
            weights3_d1_local = bitcast_ln194_63_fu_1599_p1;
        end else if (((1'b0 == ap_block_pp0_stage43) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
            weights3_d1_local = bitcast_ln194_61_fu_1594_p1;
        end else if (((1'b0 == ap_block_pp0_stage42) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
            weights3_d1_local = bitcast_ln194_59_fu_1589_p1;
        end else if (((1'b0 == ap_block_pp0_stage41) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
            weights3_d1_local = bitcast_ln194_57_fu_1584_p1;
        end else if (((1'b0 == ap_block_pp0_stage40) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
            weights3_d1_local = bitcast_ln194_55_fu_1579_p1;
        end else if (((1'b0 == ap_block_pp0_stage39) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
            weights3_d1_local = bitcast_ln194_53_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage38) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
            weights3_d1_local = bitcast_ln194_51_fu_1569_p1;
        end else if (((1'b0 == ap_block_pp0_stage37) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
            weights3_d1_local = bitcast_ln194_49_fu_1564_p1;
        end else if (((1'b0 == ap_block_pp0_stage36) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
            weights3_d1_local = bitcast_ln194_47_fu_1559_p1;
        end else if (((1'b0 == ap_block_pp0_stage35) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
            weights3_d1_local = bitcast_ln194_45_fu_1554_p1;
        end else if (((1'b0 == ap_block_pp0_stage34) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
            weights3_d1_local = bitcast_ln194_41_fu_1544_p1;
        end else if (((1'b0 == ap_block_pp0_stage33) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
            weights3_d1_local = bitcast_ln194_37_fu_1534_p1;
        end else if (((1'b0 == ap_block_pp0_stage32) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            weights3_d1_local = bitcast_ln194_33_fu_1524_p1;
        end else if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            weights3_d1_local = bitcast_ln194_27_fu_1514_p1;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            weights3_d1_local = bitcast_ln194_21_fu_1504_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            weights3_d1_local = bitcast_ln194_17_fu_1496_p1;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            weights3_d1_local = bitcast_ln194_11_fu_1488_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            weights3_d1_local = bitcast_ln194_9_fu_1480_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            weights3_d1_local = bitcast_ln194_15_fu_1470_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            weights3_d1_local = bitcast_ln194_5_fu_1460_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights3_d1_local = bitcast_ln194_1_fu_1450_p1;
        end else begin
            weights3_d1_local = 'bx;
        end
    end else begin
        weights3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_we1_local = 1'b1;
    end else begin
        weights3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_1431_p2 = (i_4_reg_1683 + 7'd16);
assign add_ln194_10_fu_1003_p2 = (tmp_26_reg_1772 + 8'd7);
assign add_ln194_11_fu_1013_p2 = (tmp_26_reg_1772 + 8'd8);
assign add_ln194_12_fu_1038_p2 = (tmp_26_reg_1772 + 8'd10);
assign add_ln194_13_fu_1053_p2 = (tmp_26_reg_1772 + 8'd11);
assign add_ln194_14_fu_1078_p2 = (tmp_26_reg_1772 + 8'd13);
assign add_ln194_15_fu_1088_p2 = (tmp_26_reg_1772 + 8'd14);
assign add_ln194_16_fu_1113_p2 = (tmp_26_reg_1772 + 8'd16);
assign add_ln194_17_fu_1128_p2 = (tmp_26_reg_1772 + 8'd17);
assign add_ln194_18_fu_1153_p2 = (tmp_26_reg_1772 + 8'd19);
assign add_ln194_19_fu_1163_p2 = (tmp_26_reg_1772 + 8'd20);
assign add_ln194_1_fu_828_p2 = (tmp_23_reg_1729 + 8'd2);
assign add_ln194_20_fu_1188_p2 = (tmp_26_reg_1772 + 8'd22);
assign add_ln194_21_fu_1203_p2 = (tmp_26_reg_1772 + 8'd23);
assign add_ln194_22_fu_1228_p2 = (tmp_26_reg_1772 + 8'd25);
assign add_ln194_23_fu_1238_p2 = (tmp_26_reg_1772 + 8'd26);
assign add_ln194_24_fu_1263_p2 = (tmp_26_reg_1772 + 8'd28);
assign add_ln194_25_fu_1278_p2 = (tmp_26_reg_1772 + 8'd29);
assign add_ln194_26_fu_1303_p2 = (tmp_26_reg_1772 + 8'd31);
assign add_ln194_27_fu_1313_p2 = (tmp_26_reg_1772 + 8'd32);
assign add_ln194_2_fu_853_p2 = (tmp_23_reg_1729 + 8'd5);
assign add_ln194_3_fu_878_p2 = (tmp_23_reg_1729 + 8'd7);
assign add_ln194_4_fu_903_p2 = (tmp_23_reg_1729 + 8'd10);
assign add_ln194_5_fu_913_p2 = (tmp_23_reg_1729 + 8'd11);
assign add_ln194_6_fu_928_p2 = (tmp_26_reg_1772 + 8'd1);
assign add_ln194_7_fu_938_p2 = (tmp_26_reg_1772 + 8'd2);
assign add_ln194_8_fu_963_p2 = (tmp_26_reg_1772 + 8'd4);
assign add_ln194_9_fu_978_p2 = (tmp_26_reg_1772 + 8'd5);
assign add_ln194_fu_801_p2 = (tmp_23_reg_1729 + 8'd1);
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
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_pp0_stage35 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage36 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_pp0_stage37 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_pp0_stage38 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_pp0_stage42 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_pp0_stage43 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_pp0_stage44 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_pp0_stage45 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
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
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage47;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_973_p1 = reg_558;
assign bitcast_ln194_11_fu_1488_p1 = div213_1_2_reg_2330;
assign bitcast_ln194_12_fu_998_p1 = reg_573;
assign bitcast_ln194_13_fu_1492_p1 = div213_2_reg_2335;
assign bitcast_ln194_14_fu_873_p1 = reg_553;
assign bitcast_ln194_15_fu_1470_p1 = reg_624;
assign bitcast_ln194_16_fu_1023_p1 = reg_553;
assign bitcast_ln194_17_fu_1496_p1 = div213_2_2_reg_2340;
assign bitcast_ln194_18_fu_1048_p1 = reg_578;
assign bitcast_ln194_19_fu_1500_p1 = div213_3_reg_2345;
assign bitcast_ln194_1_fu_1450_p1 = reg_608;
assign bitcast_ln194_20_fu_1073_p1 = reg_563;
assign bitcast_ln194_21_fu_1504_p1 = reg_608;
assign bitcast_ln194_22_fu_898_p1 = reg_563;
assign bitcast_ln194_23_fu_1475_p1 = reg_628;
assign bitcast_ln194_24_fu_1098_p1 = reg_583;
assign bitcast_ln194_25_fu_1509_p1 = reg_612;
assign bitcast_ln194_26_fu_1123_p1 = reg_568;
assign bitcast_ln194_27_fu_1514_p1 = reg_616;
assign bitcast_ln194_28_fu_1148_p1 = reg_588;
assign bitcast_ln194_29_fu_1519_p1 = reg_620;
assign bitcast_ln194_2_fu_796_p1 = reg_553;
assign bitcast_ln194_30_fu_923_p1 = reg_568;
assign bitcast_ln194_31_fu_1484_p1 = div213_5_reg_2320;
assign bitcast_ln194_32_fu_1173_p1 = reg_549;
assign bitcast_ln194_33_fu_1524_p1 = reg_624;
assign bitcast_ln194_34_fu_1198_p1 = reg_593;
assign bitcast_ln194_35_fu_1529_p1 = reg_628;
assign bitcast_ln194_36_fu_1223_p1 = reg_558;
assign bitcast_ln194_37_fu_1534_p1 = reg_608;
assign bitcast_ln194_38_fu_1248_p1 = reg_598;
assign bitcast_ln194_39_fu_1539_p1 = reg_612;
assign bitcast_ln194_3_fu_1455_p1 = reg_612;
assign bitcast_ln194_40_fu_1273_p1 = reg_573;
assign bitcast_ln194_41_fu_1544_p1 = reg_616;
assign bitcast_ln194_42_fu_1298_p1 = reg_603;
assign bitcast_ln194_43_fu_1549_p1 = reg_608;
assign bitcast_ln194_44_fu_1323_p1 = reg_553;
assign bitcast_ln194_45_fu_1554_p1 = reg_608;
assign bitcast_ln194_46_fu_1328_p1 = weights3_load_70_reg_1939;
assign bitcast_ln194_47_fu_1559_p1 = reg_608;
assign bitcast_ln194_48_fu_1332_p1 = reg_578;
assign bitcast_ln194_49_fu_1564_p1 = reg_608;
assign bitcast_ln194_4_fu_823_p1 = reg_549;
assign bitcast_ln194_50_fu_1337_p1 = weights3_load_72_reg_1960;
assign bitcast_ln194_51_fu_1569_p1 = reg_608;
assign bitcast_ln194_52_fu_1341_p1 = reg_563;
assign bitcast_ln194_53_fu_1574_p1 = reg_608;
assign bitcast_ln194_54_fu_1346_p1 = weights3_load_74_reg_1981;
assign bitcast_ln194_55_fu_1579_p1 = reg_608;
assign bitcast_ln194_56_fu_1350_p1 = reg_583;
assign bitcast_ln194_57_fu_1584_p1 = reg_608;
assign bitcast_ln194_58_fu_1355_p1 = weights3_load_76_reg_2002;
assign bitcast_ln194_59_fu_1589_p1 = reg_608;
assign bitcast_ln194_5_fu_1460_p1 = reg_616;
assign bitcast_ln194_60_fu_1359_p1 = reg_568;
assign bitcast_ln194_61_fu_1594_p1 = reg_608;
assign bitcast_ln194_62_fu_1364_p1 = weights3_load_78_reg_2023;
assign bitcast_ln194_63_fu_1599_p1 = reg_608;
assign bitcast_ln194_64_fu_1368_p1 = reg_588;
assign bitcast_ln194_65_fu_1604_p1 = reg_608;
assign bitcast_ln194_66_fu_1373_p1 = weights3_load_80_reg_2044;
assign bitcast_ln194_67_fu_1609_p1 = reg_608;
assign bitcast_ln194_68_fu_1377_p1 = reg_549;
assign bitcast_ln194_69_fu_1614_p1 = reg_608;
assign bitcast_ln194_6_fu_848_p1 = reg_558;
assign bitcast_ln194_70_fu_1382_p1 = weights3_load_82_reg_2064;
assign bitcast_ln194_71_fu_1619_p1 = div213_11_2_reg_2350;
assign bitcast_ln194_72_fu_1386_p1 = reg_593;
assign bitcast_ln194_73_fu_1623_p1 = div213_12_reg_2355;
assign bitcast_ln194_74_fu_1391_p1 = weights3_load_84_reg_2085;
assign bitcast_ln194_75_fu_1627_p1 = div213_12_1_reg_2360;
assign bitcast_ln194_76_fu_1395_p1 = reg_558;
assign bitcast_ln194_77_fu_1631_p1 = div213_12_2_reg_2365;
assign bitcast_ln194_78_fu_1400_p1 = weights3_load_86_reg_2106;
assign bitcast_ln194_79_fu_1635_p1 = div213_13_reg_2370;
assign bitcast_ln194_7_fu_1465_p1 = reg_620;
assign bitcast_ln194_80_fu_1404_p1 = reg_598;
assign bitcast_ln194_81_fu_1639_p1 = div213_13_1_reg_2375;
assign bitcast_ln194_82_fu_1409_p1 = weights3_load_88_reg_2127;
assign bitcast_ln194_83_fu_1643_p1 = div213_13_2_reg_2380;
assign bitcast_ln194_84_fu_1413_p1 = reg_573;
assign bitcast_ln194_85_fu_1647_p1 = div213_14_reg_2385;
assign bitcast_ln194_86_fu_1418_p1 = weights3_load_90_reg_2148;
assign bitcast_ln194_87_fu_1651_p1 = div213_14_1_reg_2390;
assign bitcast_ln194_88_fu_1422_p1 = reg_603;
assign bitcast_ln194_89_fu_1655_p1 = div213_14_2_reg_2395;
assign bitcast_ln194_8_fu_948_p1 = reg_549;
assign bitcast_ln194_90_fu_1427_p1 = weights3_load_92_reg_2169;
assign bitcast_ln194_91_fu_1659_p1 = div213_15_reg_2400;
assign bitcast_ln194_92_fu_1441_p1 = reg_553;
assign bitcast_ln194_93_fu_1663_p1 = div213_15_1_reg_2405;
assign bitcast_ln194_94_fu_1446_p1 = weights3_load_94_reg_2190;
assign bitcast_ln194_95_fu_1667_p1 = div213_15_2_reg_2410;
assign bitcast_ln194_9_fu_1480_p1 = div213_1_1_reg_2325;
assign bitcast_ln194_fu_764_p1 = reg_549;
assign empty_54_fu_664_p2 = (p_shl_fu_656_p3 - zext_ln21_fu_648_p1);
assign empty_55_fu_838_p2 = (tmp_23_reg_1729 + 8'd3);
assign empty_56_fu_863_p2 = (tmp_23_reg_1729 + 8'd6);
assign empty_57_fu_888_p2 = (tmp_23_reg_1729 + 8'd9);
assign empty_58_fu_953_p2 = (tmp_26_reg_1772 + 8'd3);
assign empty_59_fu_988_p2 = (tmp_26_reg_1772 + 8'd6);
assign empty_60_fu_1028_p2 = (tmp_26_reg_1772 + 8'd9);
assign empty_61_fu_1063_p2 = (tmp_26_reg_1772 + 8'd12);
assign empty_62_fu_1103_p2 = (tmp_26_reg_1772 + 8'd15);
assign empty_63_fu_1138_p2 = (tmp_26_reg_1772 + 8'd18);
assign empty_64_fu_1178_p2 = (tmp_26_reg_1772 + 8'd21);
assign empty_65_fu_1213_p2 = (tmp_26_reg_1772 + 8'd24);
assign empty_66_fu_1253_p2 = (tmp_26_reg_1772 + 8'd27);
assign empty_67_fu_1288_p2 = (tmp_26_reg_1772 + 8'd30);
assign empty_fu_652_p1 = ap_sig_allocacmp_i_4[5:0];
assign or_ln194_1_fu_740_p3 = {{tmp_22_reg_1702}, {2'd2}};
assign or_ln194_2_fu_769_p3 = {{tmp_24_reg_1708}, {3'd7}};
assign or_ln194_3_fu_781_p5 = {{{{tmp_25_reg_1713}, {1'd1}}, {tmp_14_reg_1719}}, {2'd3}};
assign or_ln6_fu_689_p3 = {{tmp_s_fu_679_p4}, {1'd1}};
assign p_shl_fu_656_p3 = {{empty_fu_652_p1}, {2'd0}};
assign tmp_23_fu_752_p3 = {{tmp_22_reg_1702}, {2'd3}};
assign tmp_26_fu_811_p3 = {{tmp_25_reg_1713}, {4'd15}};
assign tmp_s_fu_679_p4 = {{empty_54_fu_664_p2[7:1]}};
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign weights3_d0 = weights3_d0_local;
assign weights3_d1 = weights3_d1_local;
assign weights3_we0 = weights3_we0_local;
assign weights3_we1 = weights3_we1_local;
assign zext_ln194_10_fu_883_p1 = add_ln194_3_fu_878_p2;
assign zext_ln194_11_fu_791_p1 = or_ln194_3_fu_781_p5;
assign zext_ln194_12_fu_893_p1 = empty_57_fu_888_p2;
assign zext_ln194_13_fu_908_p1 = add_ln194_4_fu_903_p2;
assign zext_ln194_14_fu_918_p1 = add_ln194_5_fu_913_p2;
assign zext_ln194_15_fu_818_p1 = tmp_26_fu_811_p3;
assign zext_ln194_16_fu_933_p1 = add_ln194_6_fu_928_p2;
assign zext_ln194_17_fu_943_p1 = add_ln194_7_fu_938_p2;
assign zext_ln194_18_fu_958_p1 = empty_58_fu_953_p2;
assign zext_ln194_19_fu_968_p1 = add_ln194_8_fu_963_p2;
assign zext_ln194_1_fu_697_p1 = or_ln6_fu_689_p3;
assign zext_ln194_20_fu_983_p1 = add_ln194_9_fu_978_p2;
assign zext_ln194_21_fu_993_p1 = empty_59_fu_988_p2;
assign zext_ln194_22_fu_1008_p1 = add_ln194_10_fu_1003_p2;
assign zext_ln194_23_fu_1018_p1 = add_ln194_11_fu_1013_p2;
assign zext_ln194_24_fu_1033_p1 = empty_60_fu_1028_p2;
assign zext_ln194_25_fu_1043_p1 = add_ln194_12_fu_1038_p2;
assign zext_ln194_26_fu_1058_p1 = add_ln194_13_fu_1053_p2;
assign zext_ln194_27_fu_1068_p1 = empty_61_fu_1063_p2;
assign zext_ln194_28_fu_1083_p1 = add_ln194_14_fu_1078_p2;
assign zext_ln194_29_fu_1093_p1 = add_ln194_15_fu_1088_p2;
assign zext_ln194_2_fu_747_p1 = or_ln194_1_fu_740_p3;
assign zext_ln194_30_fu_1108_p1 = empty_62_fu_1103_p2;
assign zext_ln194_31_fu_1118_p1 = add_ln194_16_fu_1113_p2;
assign zext_ln194_32_fu_1133_p1 = add_ln194_17_fu_1128_p2;
assign zext_ln194_33_fu_1143_p1 = empty_63_fu_1138_p2;
assign zext_ln194_34_fu_1158_p1 = add_ln194_18_fu_1153_p2;
assign zext_ln194_35_fu_1168_p1 = add_ln194_19_fu_1163_p2;
assign zext_ln194_36_fu_1183_p1 = empty_64_fu_1178_p2;
assign zext_ln194_37_fu_1193_p1 = add_ln194_20_fu_1188_p2;
assign zext_ln194_38_fu_1208_p1 = add_ln194_21_fu_1203_p2;
assign zext_ln194_39_fu_1218_p1 = empty_65_fu_1213_p2;
assign zext_ln194_3_fu_759_p1 = tmp_23_fu_752_p3;
assign zext_ln194_40_fu_1233_p1 = add_ln194_22_fu_1228_p2;
assign zext_ln194_41_fu_1243_p1 = add_ln194_23_fu_1238_p2;
assign zext_ln194_42_fu_1258_p1 = empty_66_fu_1253_p2;
assign zext_ln194_43_fu_1268_p1 = add_ln194_24_fu_1263_p2;
assign zext_ln194_44_fu_1283_p1 = add_ln194_25_fu_1278_p2;
assign zext_ln194_45_fu_1293_p1 = empty_67_fu_1288_p2;
assign zext_ln194_46_fu_1308_p1 = add_ln194_26_fu_1303_p2;
assign zext_ln194_47_fu_1318_p1 = add_ln194_27_fu_1313_p2;
assign zext_ln194_48_fu_670_p1 = empty_54_fu_664_p2;
assign zext_ln194_4_fu_806_p1 = add_ln194_fu_801_p2;
assign zext_ln194_5_fu_833_p1 = add_ln194_1_fu_828_p2;
assign zext_ln194_6_fu_843_p1 = empty_55_fu_838_p2;
assign zext_ln194_7_fu_776_p1 = or_ln194_2_fu_769_p3;
assign zext_ln194_8_fu_858_p1 = add_ln194_2_fu_853_p2;
assign zext_ln194_9_fu_868_p1 = empty_56_fu_863_p2;
assign zext_ln194_fu_674_p1 = empty_54_fu_664_p2;
assign zext_ln21_fu_648_p1 = ap_sig_allocacmp_i_4;
always @ (posedge ap_clk) begin
    weights3_addr_48_reg_1697[0] <= 1'b1;
    weights3_addr_48_reg_1697_pp0_iter1_reg[0] <= 1'b1;
    weights3_addr_49_reg_1724[1:0] <= 2'b10;
    weights3_addr_49_reg_1724_pp0_iter1_reg[1:0] <= 2'b10;
    tmp_23_reg_1729[1:0] <= 2'b11;
    weights3_addr_50_reg_1742[1:0] <= 2'b11;
    weights3_addr_50_reg_1742_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_54_reg_1752[2:0] <= 3'b111;
    weights3_addr_54_reg_1752_pp0_iter1_reg[2:0] <= 3'b111;
    weights3_addr_58_reg_1757[1:0] <= 2'b11;
    weights3_addr_58_reg_1757[3] <= 1'b1;
    weights3_addr_58_reg_1757_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_58_reg_1757_pp0_iter1_reg[3] <= 1'b1;
    weights3_addr_51_reg_1767[1:0] <= 2'b00;
    weights3_addr_51_reg_1767_pp0_iter1_reg[1:0] <= 2'b00;
    tmp_26_reg_1772[3:0] <= 4'b1111;
    weights3_addr_62_reg_1808[3:0] <= 4'b1111;
    weights3_addr_62_reg_1808_pp0_iter1_reg[3:0] <= 4'b1111;
    weights3_addr_52_reg_1818[1:0] <= 2'b01;
    weights3_addr_52_reg_1818_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_53_reg_1823[1:0] <= 2'b10;
    weights3_addr_53_reg_1823_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_55_reg_1833[1:0] <= 2'b00;
    weights3_addr_55_reg_1833_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_56_reg_1838[1:0] <= 2'b01;
    weights3_addr_56_reg_1838_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_57_reg_1848[1:0] <= 2'b10;
    weights3_addr_57_reg_1848_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_59_reg_1853[1:0] <= 2'b00;
    weights3_addr_59_reg_1853_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_60_reg_1863[1:0] <= 2'b01;
    weights3_addr_60_reg_1863_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_61_reg_1868[1:0] <= 2'b10;
    weights3_addr_61_reg_1868_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_63_reg_1878[3:0] <= 4'b0000;
    weights3_addr_63_reg_1878_pp0_iter1_reg[3:0] <= 4'b0000;
    weights3_addr_64_reg_1883[3:0] <= 4'b0001;
    weights3_addr_64_reg_1883_pp0_iter1_reg[3:0] <= 4'b0001;
    weights3_addr_65_reg_1893[3:0] <= 4'b0010;
    weights3_addr_65_reg_1893_pp0_iter1_reg[3:0] <= 4'b0010;
    weights3_addr_66_reg_1898[3:0] <= 4'b0011;
    weights3_addr_66_reg_1898_pp0_iter1_reg[3:0] <= 4'b0011;
    weights3_addr_67_reg_1908[3:0] <= 4'b0100;
    weights3_addr_67_reg_1908_pp0_iter1_reg[3:0] <= 4'b0100;
    weights3_addr_68_reg_1913[3:0] <= 4'b0101;
    weights3_addr_68_reg_1913_pp0_iter1_reg[3:0] <= 4'b0101;
    weights3_addr_69_reg_1923[3:0] <= 4'b0110;
    weights3_addr_69_reg_1923_pp0_iter1_reg[3:0] <= 4'b0110;
    weights3_addr_70_reg_1928[3:0] <= 4'b0111;
    weights3_addr_70_reg_1928_pp0_iter1_reg[3:0] <= 4'b0111;
    weights3_addr_71_reg_1944[3:0] <= 4'b1000;
    weights3_addr_71_reg_1944_pp0_iter1_reg[3:0] <= 4'b1000;
    weights3_addr_72_reg_1949[3:0] <= 4'b1001;
    weights3_addr_72_reg_1949_pp0_iter1_reg[3:0] <= 4'b1001;
    weights3_addr_73_reg_1965[3:0] <= 4'b1010;
    weights3_addr_73_reg_1965_pp0_iter1_reg[3:0] <= 4'b1010;
    weights3_addr_74_reg_1970[3:0] <= 4'b1011;
    weights3_addr_74_reg_1970_pp0_iter1_reg[3:0] <= 4'b1011;
    weights3_addr_75_reg_1986[3:0] <= 4'b1100;
    weights3_addr_75_reg_1986_pp0_iter1_reg[3:0] <= 4'b1100;
    weights3_addr_76_reg_1991[3:0] <= 4'b1101;
    weights3_addr_76_reg_1991_pp0_iter1_reg[3:0] <= 4'b1101;
    weights3_addr_77_reg_2007[3:0] <= 4'b1110;
    weights3_addr_77_reg_2007_pp0_iter1_reg[3:0] <= 4'b1110;
    weights3_addr_78_reg_2012[3:0] <= 4'b1111;
    weights3_addr_78_reg_2012_pp0_iter1_reg[3:0] <= 4'b1111;
    weights3_addr_79_reg_2028[3:0] <= 4'b0000;
    weights3_addr_79_reg_2028_pp0_iter1_reg[3:0] <= 4'b0000;
    weights3_addr_80_reg_2033[3:0] <= 4'b0001;
    weights3_addr_80_reg_2033_pp0_iter1_reg[3:0] <= 4'b0001;
    weights3_addr_81_reg_2049[3:0] <= 4'b0010;
    weights3_addr_81_reg_2049_pp0_iter1_reg[3:0] <= 4'b0010;
    weights3_addr_82_reg_2054[3:0] <= 4'b0011;
    weights3_addr_82_reg_2054_pp0_iter1_reg[3:0] <= 4'b0011;
    weights3_addr_82_reg_2054_pp0_iter2_reg[3:0] <= 4'b0011;
    weights3_addr_83_reg_2069[3:0] <= 4'b0100;
    weights3_addr_83_reg_2069_pp0_iter1_reg[3:0] <= 4'b0100;
    weights3_addr_83_reg_2069_pp0_iter2_reg[3:0] <= 4'b0100;
    weights3_addr_84_reg_2075[3:0] <= 4'b0101;
    weights3_addr_84_reg_2075_pp0_iter1_reg[3:0] <= 4'b0101;
    weights3_addr_84_reg_2075_pp0_iter2_reg[3:0] <= 4'b0101;
    weights3_addr_85_reg_2090[3:0] <= 4'b0110;
    weights3_addr_85_reg_2090_pp0_iter1_reg[3:0] <= 4'b0110;
    weights3_addr_85_reg_2090_pp0_iter2_reg[3:0] <= 4'b0110;
    weights3_addr_86_reg_2096[3:0] <= 4'b0111;
    weights3_addr_86_reg_2096_pp0_iter1_reg[3:0] <= 4'b0111;
    weights3_addr_86_reg_2096_pp0_iter2_reg[3:0] <= 4'b0111;
    weights3_addr_87_reg_2111[3:0] <= 4'b1000;
    weights3_addr_87_reg_2111_pp0_iter1_reg[3:0] <= 4'b1000;
    weights3_addr_87_reg_2111_pp0_iter2_reg[3:0] <= 4'b1000;
    weights3_addr_88_reg_2117[3:0] <= 4'b1001;
    weights3_addr_88_reg_2117_pp0_iter1_reg[3:0] <= 4'b1001;
    weights3_addr_88_reg_2117_pp0_iter2_reg[3:0] <= 4'b1001;
    weights3_addr_89_reg_2132[3:0] <= 4'b1010;
    weights3_addr_89_reg_2132_pp0_iter1_reg[3:0] <= 4'b1010;
    weights3_addr_89_reg_2132_pp0_iter2_reg[3:0] <= 4'b1010;
    weights3_addr_90_reg_2138[3:0] <= 4'b1011;
    weights3_addr_90_reg_2138_pp0_iter1_reg[3:0] <= 4'b1011;
    weights3_addr_90_reg_2138_pp0_iter2_reg[3:0] <= 4'b1011;
    weights3_addr_91_reg_2153[3:0] <= 4'b1100;
    weights3_addr_91_reg_2153_pp0_iter1_reg[3:0] <= 4'b1100;
    weights3_addr_91_reg_2153_pp0_iter2_reg[3:0] <= 4'b1100;
    weights3_addr_92_reg_2159[3:0] <= 4'b1101;
    weights3_addr_92_reg_2159_pp0_iter1_reg[3:0] <= 4'b1101;
    weights3_addr_92_reg_2159_pp0_iter2_reg[3:0] <= 4'b1101;
    weights3_addr_93_reg_2174[3:0] <= 4'b1110;
    weights3_addr_93_reg_2174_pp0_iter1_reg[3:0] <= 4'b1110;
    weights3_addr_93_reg_2174_pp0_iter2_reg[3:0] <= 4'b1110;
    weights3_addr_94_reg_2180[3:0] <= 4'b1111;
    weights3_addr_94_reg_2180_pp0_iter1_reg[3:0] <= 4'b1111;
    weights3_addr_94_reg_2180_pp0_iter2_reg[3:0] <= 4'b1111;
end
endmodule 