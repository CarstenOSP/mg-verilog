module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_702_p_din0,grp_fu_702_p_din1,grp_fu_702_p_opcode,grp_fu_702_p_dout0,grp_fu_702_p_ce); 
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
output  [12:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_702_p_din0;
output  [63:0] grp_fu_702_p_din1;
output  [1:0] grp_fu_702_p_opcode;
input  [63:0] grp_fu_702_p_dout0;
output   grp_fu_702_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_reg_2803;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1032;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1036;
reg   [63:0] reg_1040;
reg   [63:0] reg_1044;
reg   [63:0] reg_1048;
reg   [63:0] reg_1053;
wire   [11:0] zext_ln13_cast_fu_1058_p1;
reg   [11:0] zext_ln13_cast_reg_2762;
reg   [6:0] s_1_reg_2789;
wire   [4:0] lshr_ln9_fu_1083_p4;
reg   [4:0] lshr_ln9_reg_2807;
wire   [3:0] tmp_cast_fu_1093_p4;
reg   [3:0] tmp_cast_reg_2817;
wire   [63:0] bitcast_ln14_fu_1206_p1;
wire   [63:0] bitcast_ln14_1_fu_1211_p1;
wire   [63:0] bitcast_ln14_2_fu_1216_p1;
wire   [63:0] bitcast_ln14_3_fu_1221_p1;
wire   [2:0] tmp_140_fu_1226_p4;
reg   [2:0] tmp_140_reg_2881;
wire   [0:0] tmp_4_fu_1248_p3;
reg   [0:0] tmp_4_reg_2891;
reg   [0:0] tmp_4_reg_2891_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_4_fu_1308_p1;
wire   [63:0] bitcast_ln14_5_fu_1313_p1;
wire   [63:0] bitcast_ln14_6_fu_1318_p1;
wire   [63:0] bitcast_ln14_7_fu_1323_p1;
wire   [63:0] bitcast_ln14_8_fu_1386_p1;
wire   [63:0] bitcast_ln14_9_fu_1391_p1;
wire   [63:0] bitcast_ln14_10_fu_1396_p1;
wire   [63:0] bitcast_ln14_11_fu_1401_p1;
wire   [1:0] tmp_150_fu_1406_p4;
reg   [1:0] tmp_150_reg_2985;
wire   [1:0] tmp_s_fu_1428_p4;
reg   [1:0] tmp_s_reg_3005;
reg   [1:0] tmp_s_reg_3005_pp0_iter1_reg;
wire   [0:0] tmp_5_fu_1437_p3;
reg   [0:0] tmp_5_reg_3018;
reg   [0:0] tmp_5_reg_3018_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_12_fu_1499_p1;
wire   [63:0] bitcast_ln14_13_fu_1504_p1;
wire   [63:0] bitcast_ln14_14_fu_1509_p1;
wire   [63:0] bitcast_ln14_15_fu_1514_p1;
wire   [63:0] bitcast_ln14_16_fu_1589_p1;
wire   [63:0] bitcast_ln14_17_fu_1594_p1;
wire   [63:0] bitcast_ln14_18_fu_1599_p1;
wire   [63:0] bitcast_ln14_19_fu_1604_p1;
wire   [63:0] bitcast_ln14_20_fu_1669_p1;
wire   [63:0] bitcast_ln14_21_fu_1674_p1;
wire   [63:0] bitcast_ln14_22_fu_1679_p1;
wire   [63:0] bitcast_ln14_23_fu_1684_p1;
wire   [63:0] bitcast_ln14_24_fu_1747_p1;
wire   [63:0] bitcast_ln14_25_fu_1752_p1;
wire   [63:0] bitcast_ln14_26_fu_1757_p1;
wire   [63:0] bitcast_ln14_27_fu_1762_p1;
wire   [0:0] tmp_6_fu_1767_p3;
reg   [0:0] tmp_6_reg_3188;
reg   [0:0] tmp_6_reg_3188_pp0_iter1_reg;
wire   [2:0] tmp_152_fu_1787_p4;
reg   [2:0] tmp_152_reg_3228;
wire   [1:0] tmp_153_fu_1796_p4;
reg   [1:0] tmp_153_reg_3238;
wire   [63:0] bitcast_ln14_28_fu_1860_p1;
wire   [63:0] bitcast_ln14_29_fu_1865_p1;
wire   [63:0] bitcast_ln14_30_fu_1870_p1;
wire   [63:0] bitcast_ln14_31_fu_1875_p1;
wire   [63:0] bitcast_ln14_32_fu_1955_p1;
wire   [63:0] bitcast_ln14_33_fu_1960_p1;
wire   [63:0] bitcast_ln14_34_fu_1965_p1;
wire   [63:0] bitcast_ln14_35_fu_1970_p1;
wire   [0:0] tmp_7_fu_1975_p3;
reg   [0:0] tmp_7_reg_3322;
wire   [63:0] bitcast_ln14_36_fu_2071_p1;
wire   [63:0] bitcast_ln14_37_fu_2076_p1;
wire   [63:0] bitcast_ln14_38_fu_2081_p1;
wire   [63:0] bitcast_ln14_39_fu_2086_p1;
wire   [63:0] bitcast_ln14_40_fu_2175_p1;
wire   [63:0] bitcast_ln14_41_fu_2180_p1;
wire   [63:0] bitcast_ln14_42_fu_2185_p1;
wire   [63:0] bitcast_ln14_43_fu_2190_p1;
wire   [63:0] bitcast_ln14_44_fu_2269_p1;
wire   [63:0] bitcast_ln14_45_fu_2274_p1;
wire   [63:0] bitcast_ln14_46_fu_2279_p1;
wire   [63:0] bitcast_ln14_47_fu_2284_p1;
wire   [63:0] bitcast_ln14_48_fu_2373_p1;
wire   [63:0] bitcast_ln14_49_fu_2378_p1;
wire   [63:0] bitcast_ln14_50_fu_2383_p1;
wire   [63:0] bitcast_ln14_51_fu_2388_p1;
wire   [63:0] bitcast_ln14_52_fu_2469_p1;
wire   [63:0] bitcast_ln14_53_fu_2474_p1;
wire   [63:0] bitcast_ln14_54_fu_2479_p1;
wire   [63:0] bitcast_ln14_55_fu_2484_p1;
wire   [63:0] bitcast_ln14_56_fu_2571_p1;
wire   [63:0] bitcast_ln14_57_fu_2576_p1;
wire   [63:0] bitcast_ln14_58_fu_2581_p1;
wire   [63:0] bitcast_ln14_59_fu_2586_p1;
wire   [63:0] bitcast_ln14_60_fu_2604_p1;
wire   [63:0] bitcast_ln14_61_fu_2609_p1;
wire   [63:0] bitcast_ln14_62_fu_2614_p1;
wire   [63:0] bitcast_ln14_63_fu_2619_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln13_1_fu_1078_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1111_p1;
wire   [63:0] zext_ln14_1_fu_1124_p1;
wire   [63:0] zext_ln14_2_fu_1143_p1;
wire   [63:0] zext_ln14_3_fu_1155_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_1172_p1;
wire   [63:0] zext_ln14_8_fu_1184_p1;
wire   [63:0] zext_ln14_6_fu_1201_p1;
wire   [63:0] zext_ln14_10_fu_1243_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_1264_p1;
wire   [63:0] zext_ln14_15_fu_1281_p1;
wire   [63:0] zext_ln14_9_fu_1303_p1;
wire   [63:0] zext_ln14_17_fu_1335_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1352_p1;
wire   [63:0] zext_ln14_22_fu_1364_p1;
wire   [63:0] zext_ln14_13_fu_1381_p1;
wire   [63:0] zext_ln14_24_fu_1423_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1455_p1;
wire   [63:0] zext_ln14_29_fu_1472_p1;
wire   [63:0] zext_ln14_16_fu_1494_p1;
wire   [63:0] zext_ln14_31_fu_1529_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1549_p1;
wire   [63:0] zext_ln14_36_fu_1564_p1;
wire   [63:0] zext_ln14_20_fu_1584_p1;
wire   [63:0] zext_ln14_38_fu_1616_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1629_p1;
wire   [63:0] zext_ln14_43_fu_1644_p1;
wire   [63:0] zext_ln14_23_fu_1664_p1;
wire   [63:0] zext_ln14_45_fu_1696_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1713_p1;
wire   [63:0] zext_ln14_50_fu_1725_p1;
wire   [63:0] zext_ln14_27_fu_1742_p1;
wire   [63:0] zext_ln14_52_fu_1782_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_28_fu_1816_p1;
wire   [63:0] zext_ln14_56_fu_1833_p1;
wire   [63:0] zext_ln14_30_fu_1855_p1;
wire   [63:0] zext_ln14_57_fu_1890_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_32_fu_1910_p1;
wire   [63:0] zext_ln14_59_fu_1925_p1;
wire   [63:0] zext_ln14_34_fu_1945_p1;
wire   [63:0] zext_ln9_fu_1950_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_60_fu_1993_p1;
wire   [63:0] zext_ln14_35_fu_2010_p1;
wire   [63:0] zext_ln14_62_fu_2029_p1;
wire   [63:0] zext_ln14_37_fu_2053_p1;
wire   [63:0] zext_ln14_5_fu_2065_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_63_fu_2101_p1;
wire   [63:0] zext_ln14_39_fu_2121_p1;
wire   [63:0] zext_ln14_65_fu_2136_p1;
wire   [63:0] zext_ln14_41_fu_2156_p1;
wire   [63:0] zext_ln14_12_fu_2169_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_66_fu_2202_p1;
wire   [63:0] zext_ln14_42_fu_2216_p1;
wire   [63:0] zext_ln14_68_fu_2231_p1;
wire   [63:0] zext_ln14_44_fu_2251_p1;
wire   [63:0] zext_ln14_19_fu_2263_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_69_fu_2299_p1;
wire   [63:0] zext_ln14_46_fu_2319_p1;
wire   [63:0] zext_ln14_71_fu_2334_p1;
wire   [63:0] zext_ln14_48_fu_2354_p1;
wire   [63:0] zext_ln14_26_fu_2367_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_72_fu_2400_p1;
wire   [63:0] zext_ln14_49_fu_2413_p1;
wire   [63:0] zext_ln14_74_fu_2428_p1;
wire   [63:0] zext_ln14_51_fu_2448_p1;
wire   [63:0] zext_ln14_33_fu_2463_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_75_fu_2496_p1;
wire   [63:0] zext_ln14_53_fu_2513_p1;
wire   [63:0] zext_ln14_77_fu_2525_p1;
wire   [63:0] zext_ln14_55_fu_2542_p1;
wire   [63:0] zext_ln14_40_fu_2565_p1;
wire   [63:0] zext_ln14_47_fu_2598_p1;
wire   [63:0] zext_ln14_54_fu_2632_p1;
wire   [63:0] zext_ln14_58_fu_2648_p1;
wire   [63:0] zext_ln14_61_fu_2665_p1;
wire   [63:0] zext_ln14_64_fu_2681_p1;
wire   [63:0] zext_ln14_67_fu_2695_p1;
wire   [63:0] zext_ln14_70_fu_2711_p1;
wire   [63:0] zext_ln14_73_fu_2725_p1;
wire   [63:0] zext_ln14_76_fu_2738_p1;
reg   [6:0] s_fu_212;
wire   [6:0] add_ln13_fu_2547_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg   [63:0] grp_fu_1024_p0;
reg   [63:0] grp_fu_1024_p1;
reg   [63:0] grp_fu_1028_p0;
reg   [63:0] grp_fu_1028_p1;
wire   [11:0] or_ln_fu_1103_p3;
wire   [5:0] or_ln1_fu_1116_p3;
wire   [11:0] shl_ln_fu_1129_p3;
wire   [11:0] add_ln14_fu_1137_p2;
wire   [5:0] or_ln13_1_fu_1148_p3;
wire   [11:0] shl_ln14_1_fu_1160_p3;
wire   [11:0] add_ln14_1_fu_1167_p2;
wire   [5:0] or_ln13_2_fu_1177_p3;
wire   [11:0] shl_ln14_2_fu_1189_p3;
wire   [11:0] add_ln14_2_fu_1196_p2;
wire   [5:0] or_ln13_3_fu_1235_p3;
wire   [11:0] or_ln14_3_fu_1255_p4;
wire   [5:0] or_ln13_4_fu_1269_p5;
wire   [11:0] shl_ln14_3_fu_1286_p5;
wire   [11:0] add_ln14_3_fu_1298_p2;
wire   [5:0] or_ln13_5_fu_1328_p3;
wire   [11:0] shl_ln14_4_fu_1340_p3;
wire   [11:0] add_ln14_4_fu_1347_p2;
wire   [5:0] or_ln13_6_fu_1357_p3;
wire   [11:0] shl_ln14_5_fu_1369_p3;
wire   [11:0] add_ln14_5_fu_1376_p2;
wire   [5:0] or_ln13_7_fu_1415_p3;
wire   [11:0] or_ln14_6_fu_1444_p5;
wire   [5:0] or_ln13_8_fu_1460_p5;
wire   [11:0] shl_ln14_6_fu_1477_p5;
wire   [11:0] add_ln14_6_fu_1489_p2;
wire   [5:0] or_ln13_9_fu_1519_p5;
wire   [11:0] shl_ln14_7_fu_1534_p5;
wire   [11:0] add_ln14_7_fu_1544_p2;
wire   [5:0] or_ln13_s_fu_1554_p5;
wire   [11:0] shl_ln14_8_fu_1569_p5;
wire   [11:0] add_ln14_8_fu_1579_p2;
wire   [5:0] or_ln13_10_fu_1609_p3;
wire   [11:0] or_ln14_9_fu_1621_p4;
wire   [5:0] or_ln13_11_fu_1634_p5;
wire   [11:0] shl_ln14_9_fu_1649_p5;
wire   [11:0] add_ln14_9_fu_1659_p2;
wire   [5:0] or_ln13_12_fu_1689_p3;
wire   [11:0] shl_ln14_s_fu_1701_p3;
wire   [11:0] add_ln14_10_fu_1708_p2;
wire   [5:0] or_ln13_13_fu_1718_p3;
wire   [11:0] shl_ln14_10_fu_1730_p3;
wire   [11:0] add_ln14_11_fu_1737_p2;
wire   [5:0] or_ln13_14_fu_1774_p3;
wire   [11:0] or_ln14_s_fu_1805_p5;
wire   [5:0] or_ln13_15_fu_1821_p5;
wire   [11:0] shl_ln14_11_fu_1838_p5;
wire   [11:0] add_ln14_12_fu_1850_p2;
wire   [5:0] or_ln13_16_fu_1880_p5;
wire   [11:0] shl_ln14_12_fu_1895_p5;
wire   [11:0] add_ln14_13_fu_1905_p2;
wire   [5:0] or_ln13_17_fu_1915_p5;
wire   [11:0] shl_ln14_13_fu_1930_p5;
wire   [11:0] add_ln14_14_fu_1940_p2;
wire   [5:0] or_ln13_18_fu_1982_p5;
wire   [11:0] or_ln14_12_fu_1998_p6;
wire   [5:0] or_ln13_19_fu_2015_p7;
wire   [11:0] shl_ln14_14_fu_2034_p7;
wire   [11:0] add_ln14_15_fu_2048_p2;
wire   [4:0] or_ln14_1_fu_2058_p3;
wire   [5:0] or_ln13_20_fu_2091_p5;
wire   [11:0] shl_ln14_15_fu_2106_p5;
wire   [11:0] add_ln14_16_fu_2116_p2;
wire   [5:0] or_ln13_21_fu_2126_p5;
wire   [11:0] shl_ln14_16_fu_2141_p5;
wire   [11:0] add_ln14_17_fu_2151_p2;
wire   [4:0] or_ln14_2_fu_2161_p4;
wire   [5:0] or_ln13_22_fu_2195_p3;
wire   [11:0] or_ln14_15_fu_2207_p5;
wire   [5:0] or_ln13_23_fu_2221_p5;
wire   [11:0] shl_ln14_17_fu_2236_p5;
wire   [11:0] add_ln14_18_fu_2246_p2;
wire   [4:0] or_ln14_4_fu_2256_p3;
wire   [5:0] or_ln13_24_fu_2289_p5;
wire   [11:0] shl_ln14_18_fu_2304_p5;
wire   [11:0] add_ln14_19_fu_2314_p2;
wire   [5:0] or_ln13_25_fu_2324_p5;
wire   [11:0] shl_ln14_19_fu_2339_p5;
wire   [11:0] add_ln14_20_fu_2349_p2;
wire   [4:0] or_ln14_5_fu_2359_p4;
wire   [5:0] or_ln13_26_fu_2393_p3;
wire   [11:0] or_ln14_18_fu_2405_p4;
wire   [5:0] or_ln13_27_fu_2418_p5;
wire   [11:0] shl_ln14_20_fu_2433_p5;
wire   [11:0] add_ln14_21_fu_2443_p2;
wire   [4:0] or_ln14_7_fu_2453_p5;
wire   [5:0] or_ln13_28_fu_2489_p3;
wire   [11:0] shl_ln14_21_fu_2501_p3;
wire   [11:0] add_ln14_22_fu_2508_p2;
wire   [5:0] or_ln13_29_fu_2518_p3;
wire   [11:0] shl_ln14_22_fu_2530_p3;
wire   [11:0] add_ln14_23_fu_2537_p2;
wire   [4:0] or_ln14_8_fu_2557_p4;
wire   [4:0] or_ln14_10_fu_2591_p3;
wire   [4:0] or_ln14_11_fu_2624_p4;
wire   [4:0] or_ln14_13_fu_2638_p5;
wire   [4:0] or_ln14_14_fu_2654_p6;
wire   [4:0] or_ln14_16_fu_2671_p5;
wire   [4:0] or_ln14_17_fu_2687_p4;
wire   [4:0] or_ln14_19_fu_2701_p5;
wire   [4:0] or_ln14_20_fu_2717_p4;
wire   [4:0] or_ln14_21_fu_2731_p3;
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
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_212 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
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
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_212 <= 7'd0;
    end else if (((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_212 <= add_ln13_fu_2547_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln9_reg_2807 <= {{ap_sig_allocacmp_s_1[5:1]}};
        s_1_reg_2789 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_2817 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_2803 <= ap_sig_allocacmp_s_1[32'd6];
        zext_ln13_cast_reg_2762[7 : 0] <= zext_ln13_cast_fu_1058_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1032 <= init_q1;
        reg_1036 <= emission_q1;
        reg_1040 <= init_q0;
        reg_1044 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1048 <= grp_fu_300_p_dout0;
        reg_1053 <= grp_fu_702_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_140_reg_2881 <= {{s_1_reg_2789[5:3]}};
        tmp_4_reg_2891 <= s_1_reg_2789[32'd1];
        tmp_4_reg_2891_pp0_iter1_reg <= tmp_4_reg_2891;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_150_reg_2985 <= {{s_1_reg_2789[5:4]}};
        tmp_5_reg_3018 <= s_1_reg_2789[32'd2];
        tmp_5_reg_3018_pp0_iter1_reg <= tmp_5_reg_3018;
        tmp_s_reg_3005 <= {{s_1_reg_2789[2:1]}};
        tmp_s_reg_3005_pp0_iter1_reg <= tmp_s_reg_3005;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_152_reg_3228 <= {{s_1_reg_2789[3:1]}};
        tmp_153_reg_3238 <= {{s_1_reg_2789[3:2]}};
        tmp_6_reg_3188 <= s_1_reg_2789[32'd5];
        tmp_6_reg_3188_pp0_iter1_reg <= tmp_6_reg_3188;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_7_reg_3322 <= s_1_reg_2789[32'd3];
    end
end
always @ (*) begin
    if (((tmp_reg_2803 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_212;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address0_local = zext_ln14_55_fu_2542_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address0_local = zext_ln14_51_fu_2448_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address0_local = zext_ln14_48_fu_2354_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address0_local = zext_ln14_44_fu_2251_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address0_local = zext_ln14_41_fu_2156_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address0_local = zext_ln14_37_fu_2053_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address0_local = zext_ln14_34_fu_1945_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address0_local = zext_ln14_30_fu_1855_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1742_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1664_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1584_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1494_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1381_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_1303_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_1143_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address1_local = zext_ln14_53_fu_2513_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address1_local = zext_ln14_49_fu_2413_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address1_local = zext_ln14_46_fu_2319_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address1_local = zext_ln14_42_fu_2216_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address1_local = zext_ln14_39_fu_2121_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address1_local = zext_ln14_35_fu_2010_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address1_local = zext_ln14_32_fu_1910_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address1_local = zext_ln14_28_fu_1816_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_1713_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1629_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1549_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1455_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_1264_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_1172_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_1111_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1024_p0 = bitcast_ln14_60_fu_2604_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1024_p0 = bitcast_ln14_56_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1024_p0 = bitcast_ln14_52_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1024_p0 = bitcast_ln14_48_fu_2373_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1024_p0 = bitcast_ln14_44_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1024_p0 = bitcast_ln14_40_fu_2175_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1024_p0 = bitcast_ln14_36_fu_2071_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1024_p0 = bitcast_ln14_32_fu_1955_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1024_p0 = bitcast_ln14_28_fu_1860_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1024_p0 = bitcast_ln14_24_fu_1747_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1024_p0 = bitcast_ln14_20_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1024_p0 = bitcast_ln14_16_fu_1589_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1024_p0 = bitcast_ln14_12_fu_1499_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1024_p0 = bitcast_ln14_8_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1024_p0 = bitcast_ln14_4_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1024_p0 = bitcast_ln14_fu_1206_p1;
    end else begin
        grp_fu_1024_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1024_p1 = bitcast_ln14_61_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1024_p1 = bitcast_ln14_57_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1024_p1 = bitcast_ln14_53_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1024_p1 = bitcast_ln14_49_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1024_p1 = bitcast_ln14_45_fu_2274_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1024_p1 = bitcast_ln14_41_fu_2180_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1024_p1 = bitcast_ln14_37_fu_2076_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1024_p1 = bitcast_ln14_33_fu_1960_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1024_p1 = bitcast_ln14_29_fu_1865_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1024_p1 = bitcast_ln14_25_fu_1752_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1024_p1 = bitcast_ln14_21_fu_1674_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1024_p1 = bitcast_ln14_17_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1024_p1 = bitcast_ln14_13_fu_1504_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1024_p1 = bitcast_ln14_9_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1024_p1 = bitcast_ln14_5_fu_1313_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1024_p1 = bitcast_ln14_1_fu_1211_p1;
    end else begin
        grp_fu_1024_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1028_p0 = bitcast_ln14_62_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1028_p0 = bitcast_ln14_58_fu_2581_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1028_p0 = bitcast_ln14_54_fu_2479_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1028_p0 = bitcast_ln14_50_fu_2383_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1028_p0 = bitcast_ln14_46_fu_2279_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1028_p0 = bitcast_ln14_42_fu_2185_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1028_p0 = bitcast_ln14_38_fu_2081_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1028_p0 = bitcast_ln14_34_fu_1965_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1028_p0 = bitcast_ln14_30_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1028_p0 = bitcast_ln14_26_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1028_p0 = bitcast_ln14_22_fu_1679_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1028_p0 = bitcast_ln14_18_fu_1599_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1028_p0 = bitcast_ln14_14_fu_1509_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1028_p0 = bitcast_ln14_10_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1028_p0 = bitcast_ln14_6_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1028_p0 = bitcast_ln14_2_fu_1216_p1;
    end else begin
        grp_fu_1028_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1028_p1 = bitcast_ln14_63_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1028_p1 = bitcast_ln14_59_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1028_p1 = bitcast_ln14_55_fu_2484_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1028_p1 = bitcast_ln14_51_fu_2388_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1028_p1 = bitcast_ln14_47_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1028_p1 = bitcast_ln14_43_fu_2190_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1028_p1 = bitcast_ln14_39_fu_2086_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1028_p1 = bitcast_ln14_35_fu_1970_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1028_p1 = bitcast_ln14_31_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1028_p1 = bitcast_ln14_27_fu_1762_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1028_p1 = bitcast_ln14_23_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1028_p1 = bitcast_ln14_19_fu_1604_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1028_p1 = bitcast_ln14_15_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1028_p1 = bitcast_ln14_11_fu_1401_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1028_p1 = bitcast_ln14_7_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1028_p1 = bitcast_ln14_3_fu_1221_p1;
    end else begin
        grp_fu_1028_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address0_local = zext_ln14_77_fu_2525_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address0_local = zext_ln14_74_fu_2428_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address0_local = zext_ln14_71_fu_2334_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address0_local = zext_ln14_68_fu_2231_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address0_local = zext_ln14_65_fu_2136_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address0_local = zext_ln14_62_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address0_local = zext_ln14_59_fu_1925_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address0_local = zext_ln14_56_fu_1833_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_50_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_43_fu_1644_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_36_fu_1564_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_29_fu_1472_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_22_fu_1364_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_15_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_8_fu_1184_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_1124_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address1_local = zext_ln14_75_fu_2496_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address1_local = zext_ln14_72_fu_2400_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address1_local = zext_ln14_69_fu_2299_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address1_local = zext_ln14_66_fu_2202_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address1_local = zext_ln14_63_fu_2101_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address1_local = zext_ln14_60_fu_1993_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address1_local = zext_ln14_57_fu_1890_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address1_local = zext_ln14_52_fu_1782_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_45_fu_1696_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_38_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_31_fu_1529_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_24_fu_1423_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_17_fu_1335_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_10_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_1078_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_1_address0_local = zext_ln14_76_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_1_address0_local = zext_ln14_73_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_1_address0_local = zext_ln14_70_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_67_fu_2695_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_1_address0_local = zext_ln14_64_fu_2681_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_61_fu_2665_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_address0_local = zext_ln14_58_fu_2648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln14_54_fu_2632_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_address0_local = zext_ln14_47_fu_2598_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_40_fu_2565_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_1_address0_local = zext_ln14_33_fu_2463_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_1_address0_local = zext_ln14_26_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_1_address0_local = zext_ln14_19_fu_2263_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_1_address0_local = zext_ln14_12_fu_2169_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_1_address0_local = zext_ln14_5_fu_2065_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_1_address0_local = zext_ln9_fu_1950_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_address0_local = zext_ln14_76_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_address0_local = zext_ln14_73_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_70_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_67_fu_2695_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_64_fu_2681_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_61_fu_2665_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_58_fu_2648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_54_fu_2632_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_47_fu_2598_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_40_fu_2565_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_address0_local = zext_ln14_33_fu_2463_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address0_local = zext_ln14_26_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_address0_local = zext_ln14_19_fu_2263_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_address0_local = zext_ln14_12_fu_2169_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_address0_local = zext_ln14_5_fu_2065_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address0_local = zext_ln9_fu_1950_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2803 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
assign add_ln13_fu_2547_p2 = (s_1_reg_2789 + 7'd32);
assign add_ln14_10_fu_1708_p2 = (shl_ln14_s_fu_1701_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_11_fu_1737_p2 = (shl_ln14_10_fu_1730_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_12_fu_1850_p2 = (shl_ln14_11_fu_1838_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_13_fu_1905_p2 = (shl_ln14_12_fu_1895_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_14_fu_1940_p2 = (shl_ln14_13_fu_1930_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_15_fu_2048_p2 = (shl_ln14_14_fu_2034_p7 + zext_ln13_cast_reg_2762);
assign add_ln14_16_fu_2116_p2 = (shl_ln14_15_fu_2106_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_17_fu_2151_p2 = (shl_ln14_16_fu_2141_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_18_fu_2246_p2 = (shl_ln14_17_fu_2236_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_19_fu_2314_p2 = (shl_ln14_18_fu_2304_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_1_fu_1167_p2 = (shl_ln14_1_fu_1160_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_20_fu_2349_p2 = (shl_ln14_19_fu_2339_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_21_fu_2443_p2 = (shl_ln14_20_fu_2433_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_22_fu_2508_p2 = (shl_ln14_21_fu_2501_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_23_fu_2537_p2 = (shl_ln14_22_fu_2530_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_2_fu_1196_p2 = (shl_ln14_2_fu_1189_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_3_fu_1298_p2 = (shl_ln14_3_fu_1286_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_4_fu_1347_p2 = (shl_ln14_4_fu_1340_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_5_fu_1376_p2 = (shl_ln14_5_fu_1369_p3 + zext_ln13_cast_reg_2762);
assign add_ln14_6_fu_1489_p2 = (shl_ln14_6_fu_1477_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_7_fu_1544_p2 = (shl_ln14_7_fu_1534_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_8_fu_1579_p2 = (shl_ln14_8_fu_1569_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_9_fu_1659_p2 = (shl_ln14_9_fu_1649_p5 + zext_ln13_cast_reg_2762);
assign add_ln14_fu_1137_p2 = (shl_ln_fu_1129_p3 + zext_ln13_cast_fu_1058_p1);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_1396_p1 = reg_1040;
assign bitcast_ln14_11_fu_1401_p1 = reg_1044;
assign bitcast_ln14_12_fu_1499_p1 = reg_1032;
assign bitcast_ln14_13_fu_1504_p1 = reg_1036;
assign bitcast_ln14_14_fu_1509_p1 = reg_1040;
assign bitcast_ln14_15_fu_1514_p1 = reg_1044;
assign bitcast_ln14_16_fu_1589_p1 = reg_1032;
assign bitcast_ln14_17_fu_1594_p1 = reg_1036;
assign bitcast_ln14_18_fu_1599_p1 = reg_1040;
assign bitcast_ln14_19_fu_1604_p1 = reg_1044;
assign bitcast_ln14_1_fu_1211_p1 = reg_1036;
assign bitcast_ln14_20_fu_1669_p1 = reg_1032;
assign bitcast_ln14_21_fu_1674_p1 = reg_1036;
assign bitcast_ln14_22_fu_1679_p1 = reg_1040;
assign bitcast_ln14_23_fu_1684_p1 = reg_1044;
assign bitcast_ln14_24_fu_1747_p1 = reg_1032;
assign bitcast_ln14_25_fu_1752_p1 = reg_1036;
assign bitcast_ln14_26_fu_1757_p1 = reg_1040;
assign bitcast_ln14_27_fu_1762_p1 = reg_1044;
assign bitcast_ln14_28_fu_1860_p1 = reg_1032;
assign bitcast_ln14_29_fu_1865_p1 = reg_1036;
assign bitcast_ln14_2_fu_1216_p1 = reg_1040;
assign bitcast_ln14_30_fu_1870_p1 = reg_1040;
assign bitcast_ln14_31_fu_1875_p1 = reg_1044;
assign bitcast_ln14_32_fu_1955_p1 = reg_1032;
assign bitcast_ln14_33_fu_1960_p1 = reg_1036;
assign bitcast_ln14_34_fu_1965_p1 = reg_1040;
assign bitcast_ln14_35_fu_1970_p1 = reg_1044;
assign bitcast_ln14_36_fu_2071_p1 = reg_1032;
assign bitcast_ln14_37_fu_2076_p1 = reg_1036;
assign bitcast_ln14_38_fu_2081_p1 = reg_1040;
assign bitcast_ln14_39_fu_2086_p1 = reg_1044;
assign bitcast_ln14_3_fu_1221_p1 = reg_1044;
assign bitcast_ln14_40_fu_2175_p1 = reg_1032;
assign bitcast_ln14_41_fu_2180_p1 = reg_1036;
assign bitcast_ln14_42_fu_2185_p1 = reg_1040;
assign bitcast_ln14_43_fu_2190_p1 = reg_1044;
assign bitcast_ln14_44_fu_2269_p1 = reg_1032;
assign bitcast_ln14_45_fu_2274_p1 = reg_1036;
assign bitcast_ln14_46_fu_2279_p1 = reg_1040;
assign bitcast_ln14_47_fu_2284_p1 = reg_1044;
assign bitcast_ln14_48_fu_2373_p1 = reg_1032;
assign bitcast_ln14_49_fu_2378_p1 = reg_1036;
assign bitcast_ln14_4_fu_1308_p1 = reg_1032;
assign bitcast_ln14_50_fu_2383_p1 = reg_1040;
assign bitcast_ln14_51_fu_2388_p1 = reg_1044;
assign bitcast_ln14_52_fu_2469_p1 = reg_1032;
assign bitcast_ln14_53_fu_2474_p1 = reg_1036;
assign bitcast_ln14_54_fu_2479_p1 = reg_1040;
assign bitcast_ln14_55_fu_2484_p1 = reg_1044;
assign bitcast_ln14_56_fu_2571_p1 = reg_1032;
assign bitcast_ln14_57_fu_2576_p1 = reg_1036;
assign bitcast_ln14_58_fu_2581_p1 = reg_1040;
assign bitcast_ln14_59_fu_2586_p1 = reg_1044;
assign bitcast_ln14_5_fu_1313_p1 = reg_1036;
assign bitcast_ln14_60_fu_2604_p1 = reg_1032;
assign bitcast_ln14_61_fu_2609_p1 = reg_1036;
assign bitcast_ln14_62_fu_2614_p1 = reg_1040;
assign bitcast_ln14_63_fu_2619_p1 = reg_1044;
assign bitcast_ln14_6_fu_1318_p1 = reg_1040;
assign bitcast_ln14_7_fu_1323_p1 = reg_1044;
assign bitcast_ln14_8_fu_1386_p1 = reg_1032;
assign bitcast_ln14_9_fu_1391_p1 = reg_1036;
assign bitcast_ln14_fu_1206_p1 = reg_1032;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_1024_p0;
assign grp_fu_300_p_din1 = grp_fu_1024_p1;
assign grp_fu_300_p_opcode = 2'd0;
assign grp_fu_702_p_ce = 1'b1;
assign grp_fu_702_p_din0 = grp_fu_1028_p0;
assign grp_fu_702_p_din1 = grp_fu_1028_p1;
assign grp_fu_702_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1053;
assign llike_1_we0 = llike_1_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1048;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1083_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln13_10_fu_1609_p3 = {{tmp_150_reg_2985}, {4'd12}};
assign or_ln13_11_fu_1634_p5 = {{{{tmp_150_reg_2985}, {2'd3}}, {tmp_4_reg_2891}}, {1'd1}};
assign or_ln13_12_fu_1689_p3 = {{tmp_150_reg_2985}, {4'd14}};
assign or_ln13_13_fu_1718_p3 = {{tmp_150_reg_2985}, {4'd15}};
assign or_ln13_14_fu_1774_p3 = {{tmp_6_fu_1767_p3}, {5'd16}};
assign or_ln13_15_fu_1821_p5 = {{{{tmp_6_fu_1767_p3}, {1'd1}}, {tmp_152_fu_1787_p4}}, {1'd1}};
assign or_ln13_16_fu_1880_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_153_reg_3238}}, {2'd2}};
assign or_ln13_17_fu_1915_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_153_reg_3238}}, {2'd3}};
assign or_ln13_18_fu_1982_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_fu_1975_p3}}, {3'd4}};
assign or_ln13_19_fu_2015_p7 = {{{{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_fu_1975_p3}}, {1'd1}}, {tmp_4_reg_2891}}, {1'd1}};
assign or_ln13_1_fu_1148_p3 = {{tmp_cast_reg_2817}, {2'd2}};
assign or_ln13_20_fu_2091_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_reg_3322}}, {3'd6}};
assign or_ln13_21_fu_2126_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_reg_3322}}, {3'd7}};
assign or_ln13_22_fu_2195_p3 = {{tmp_6_reg_3188}, {5'd24}};
assign or_ln13_23_fu_2221_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_s_reg_3005}}, {1'd1}};
assign or_ln13_24_fu_2289_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_5_reg_3018}}, {2'd2}};
assign or_ln13_25_fu_2324_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_5_reg_3018}}, {2'd3}};
assign or_ln13_26_fu_2393_p3 = {{tmp_6_reg_3188}, {5'd28}};
assign or_ln13_27_fu_2418_p5 = {{{{tmp_6_reg_3188}, {3'd7}}, {tmp_4_reg_2891}}, {1'd1}};
assign or_ln13_28_fu_2489_p3 = {{tmp_6_reg_3188}, {5'd30}};
assign or_ln13_29_fu_2518_p3 = {{tmp_6_reg_3188}, {5'd31}};
assign or_ln13_2_fu_1177_p3 = {{tmp_cast_reg_2817}, {2'd3}};
assign or_ln13_3_fu_1235_p3 = {{tmp_140_fu_1226_p4}, {3'd4}};
assign or_ln13_4_fu_1269_p5 = {{{{tmp_140_fu_1226_p4}, {1'd1}}, {tmp_4_fu_1248_p3}}, {1'd1}};
assign or_ln13_5_fu_1328_p3 = {{tmp_140_reg_2881}, {3'd6}};
assign or_ln13_6_fu_1357_p3 = {{tmp_140_reg_2881}, {3'd7}};
assign or_ln13_7_fu_1415_p3 = {{tmp_150_fu_1406_p4}, {4'd8}};
assign or_ln13_8_fu_1460_p5 = {{{{tmp_150_fu_1406_p4}, {1'd1}}, {tmp_s_fu_1428_p4}}, {1'd1}};
assign or_ln13_9_fu_1519_p5 = {{{{tmp_150_reg_2985}, {1'd1}}, {tmp_5_reg_3018}}, {2'd2}};
assign or_ln13_s_fu_1554_p5 = {{{{tmp_150_reg_2985}, {1'd1}}, {tmp_5_reg_3018}}, {2'd3}};
assign or_ln14_10_fu_2591_p3 = {{tmp_150_reg_2985}, {3'd7}};
assign or_ln14_11_fu_2624_p4 = {{{tmp_6_reg_3188}, {1'd1}}, {tmp_152_reg_3228}};
assign or_ln14_12_fu_1998_p6 = {{{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_fu_1975_p3}}, {1'd1}}, {obs_load}};
assign or_ln14_13_fu_2638_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_153_reg_3238}}, {1'd1}};
assign or_ln14_14_fu_2654_p6 = {{{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_reg_3322}}, {1'd1}}, {tmp_4_reg_2891_pp0_iter1_reg}};
assign or_ln14_15_fu_2207_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_5_reg_3018}}, {obs_load}};
assign or_ln14_16_fu_2671_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_reg_3322}}, {2'd3}};
assign or_ln14_17_fu_2687_p4 = {{{tmp_6_reg_3188}, {2'd3}}, {tmp_s_reg_3005_pp0_iter1_reg}};
assign or_ln14_18_fu_2405_p4 = {{{tmp_6_reg_3188}, {3'd7}}, {obs_load}};
assign or_ln14_19_fu_2701_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_5_reg_3018_pp0_iter1_reg}}, {1'd1}};
assign or_ln14_1_fu_2058_p3 = {{tmp_cast_reg_2817}, {1'd1}};
assign or_ln14_20_fu_2717_p4 = {{{tmp_6_reg_3188}, {3'd7}}, {tmp_4_reg_2891_pp0_iter1_reg}};
assign or_ln14_21_fu_2731_p3 = {{tmp_6_reg_3188_pp0_iter1_reg}, {4'd15}};
assign or_ln14_2_fu_2161_p4 = {{{tmp_140_reg_2881}, {1'd1}}, {tmp_4_reg_2891}};
assign or_ln14_3_fu_1255_p4 = {{{tmp_140_fu_1226_p4}, {1'd1}}, {obs_load}};
assign or_ln14_4_fu_2256_p3 = {{tmp_140_reg_2881}, {2'd3}};
assign or_ln14_5_fu_2359_p4 = {{{tmp_150_reg_2985}, {1'd1}}, {tmp_s_reg_3005}};
assign or_ln14_6_fu_1444_p5 = {{{{tmp_150_fu_1406_p4}, {1'd1}}, {tmp_5_fu_1437_p3}}, {obs_load}};
assign or_ln14_7_fu_2453_p5 = {{{{tmp_150_reg_2985}, {1'd1}}, {tmp_5_reg_3018}}, {1'd1}};
assign or_ln14_8_fu_2557_p4 = {{{tmp_150_reg_2985}, {2'd3}}, {tmp_4_reg_2891}};
assign or_ln14_9_fu_1621_p4 = {{{tmp_150_reg_2985}, {2'd3}}, {obs_load}};
assign or_ln14_s_fu_1805_p5 = {{{{tmp_6_fu_1767_p3}, {1'd1}}, {tmp_153_fu_1796_p4}}, {obs_load}};
assign or_ln1_fu_1116_p3 = {{lshr_ln9_fu_1083_p4}, {1'd1}};
assign or_ln_fu_1103_p3 = {{tmp_cast_fu_1093_p4}, {obs_load}};
assign shl_ln14_10_fu_1730_p3 = {{tmp_150_reg_2985}, {10'd960}};
assign shl_ln14_11_fu_1838_p5 = {{{{tmp_6_fu_1767_p3}, {1'd1}}, {tmp_152_fu_1787_p4}}, {7'd64}};
assign shl_ln14_12_fu_1895_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_153_reg_3238}}, {8'd128}};
assign shl_ln14_13_fu_1930_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_153_reg_3238}}, {8'd192}};
assign shl_ln14_14_fu_2034_p7 = {{{{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_fu_1975_p3}}, {1'd1}}, {tmp_4_reg_2891}}, {7'd64}};
assign shl_ln14_15_fu_2106_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_reg_3322}}, {9'd384}};
assign shl_ln14_16_fu_2141_p5 = {{{{tmp_6_reg_3188}, {1'd1}}, {tmp_7_reg_3322}}, {9'd448}};
assign shl_ln14_17_fu_2236_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_s_reg_3005}}, {7'd64}};
assign shl_ln14_18_fu_2304_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_5_reg_3018}}, {8'd128}};
assign shl_ln14_19_fu_2339_p5 = {{{{tmp_6_reg_3188}, {2'd3}}, {tmp_5_reg_3018}}, {8'd192}};
assign shl_ln14_1_fu_1160_p3 = {{tmp_cast_reg_2817}, {8'd128}};
assign shl_ln14_20_fu_2433_p5 = {{{{tmp_6_reg_3188}, {3'd7}}, {tmp_4_reg_2891}}, {7'd64}};
assign shl_ln14_21_fu_2501_p3 = {{tmp_6_reg_3188}, {11'd1920}};
assign shl_ln14_22_fu_2530_p3 = {{tmp_6_reg_3188}, {11'd1984}};
assign shl_ln14_2_fu_1189_p3 = {{tmp_cast_reg_2817}, {8'd192}};
assign shl_ln14_3_fu_1286_p5 = {{{{tmp_140_fu_1226_p4}, {1'd1}}, {tmp_4_fu_1248_p3}}, {7'd64}};
assign shl_ln14_4_fu_1340_p3 = {{tmp_140_reg_2881}, {9'd384}};
assign shl_ln14_5_fu_1369_p3 = {{tmp_140_reg_2881}, {9'd448}};
assign shl_ln14_6_fu_1477_p5 = {{{{tmp_150_fu_1406_p4}, {1'd1}}, {tmp_s_fu_1428_p4}}, {7'd64}};
assign shl_ln14_7_fu_1534_p5 = {{{{tmp_150_reg_2985}, {1'd1}}, {tmp_5_reg_3018}}, {8'd128}};
assign shl_ln14_8_fu_1569_p5 = {{{{tmp_150_reg_2985}, {1'd1}}, {tmp_5_reg_3018}}, {8'd192}};
assign shl_ln14_9_fu_1649_p5 = {{{{tmp_150_reg_2985}, {2'd3}}, {tmp_4_reg_2891}}, {7'd64}};
assign shl_ln14_s_fu_1701_p3 = {{tmp_150_reg_2985}, {10'd896}};
assign shl_ln_fu_1129_p3 = {{lshr_ln9_fu_1083_p4}, {7'd64}};
assign tmp_140_fu_1226_p4 = {{s_1_reg_2789[5:3]}};
assign tmp_150_fu_1406_p4 = {{s_1_reg_2789[5:4]}};
assign tmp_152_fu_1787_p4 = {{s_1_reg_2789[3:1]}};
assign tmp_153_fu_1796_p4 = {{s_1_reg_2789[3:2]}};
assign tmp_4_fu_1248_p3 = s_1_reg_2789[32'd1];
assign tmp_5_fu_1437_p3 = s_1_reg_2789[32'd2];
assign tmp_6_fu_1767_p3 = s_1_reg_2789[32'd5];
assign tmp_7_fu_1975_p3 = s_1_reg_2789[32'd3];
assign tmp_cast_fu_1093_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_1428_p4 = {{s_1_reg_2789[2:1]}};
assign zext_ln13_1_fu_1078_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_1058_p1 = zext_ln13;
assign zext_ln14_10_fu_1243_p1 = or_ln13_3_fu_1235_p3;
assign zext_ln14_11_fu_1352_p1 = add_ln14_4_fu_1347_p2;
assign zext_ln14_12_fu_2169_p1 = or_ln14_2_fu_2161_p4;
assign zext_ln14_13_fu_1381_p1 = add_ln14_5_fu_1376_p2;
assign zext_ln14_14_fu_1455_p1 = or_ln14_6_fu_1444_p5;
assign zext_ln14_15_fu_1281_p1 = or_ln13_4_fu_1269_p5;
assign zext_ln14_16_fu_1494_p1 = add_ln14_6_fu_1489_p2;
assign zext_ln14_17_fu_1335_p1 = or_ln13_5_fu_1328_p3;
assign zext_ln14_18_fu_1549_p1 = add_ln14_7_fu_1544_p2;
assign zext_ln14_19_fu_2263_p1 = or_ln14_4_fu_2256_p3;
assign zext_ln14_1_fu_1124_p1 = or_ln1_fu_1116_p3;
assign zext_ln14_20_fu_1584_p1 = add_ln14_8_fu_1579_p2;
assign zext_ln14_21_fu_1629_p1 = or_ln14_9_fu_1621_p4;
assign zext_ln14_22_fu_1364_p1 = or_ln13_6_fu_1357_p3;
assign zext_ln14_23_fu_1664_p1 = add_ln14_9_fu_1659_p2;
assign zext_ln14_24_fu_1423_p1 = or_ln13_7_fu_1415_p3;
assign zext_ln14_25_fu_1713_p1 = add_ln14_10_fu_1708_p2;
assign zext_ln14_26_fu_2367_p1 = or_ln14_5_fu_2359_p4;
assign zext_ln14_27_fu_1742_p1 = add_ln14_11_fu_1737_p2;
assign zext_ln14_28_fu_1816_p1 = or_ln14_s_fu_1805_p5;
assign zext_ln14_29_fu_1472_p1 = or_ln13_8_fu_1460_p5;
assign zext_ln14_2_fu_1143_p1 = add_ln14_fu_1137_p2;
assign zext_ln14_30_fu_1855_p1 = add_ln14_12_fu_1850_p2;
assign zext_ln14_31_fu_1529_p1 = or_ln13_9_fu_1519_p5;
assign zext_ln14_32_fu_1910_p1 = add_ln14_13_fu_1905_p2;
assign zext_ln14_33_fu_2463_p1 = or_ln14_7_fu_2453_p5;
assign zext_ln14_34_fu_1945_p1 = add_ln14_14_fu_1940_p2;
assign zext_ln14_35_fu_2010_p1 = or_ln14_12_fu_1998_p6;
assign zext_ln14_36_fu_1564_p1 = or_ln13_s_fu_1554_p5;
assign zext_ln14_37_fu_2053_p1 = add_ln14_15_fu_2048_p2;
assign zext_ln14_38_fu_1616_p1 = or_ln13_10_fu_1609_p3;
assign zext_ln14_39_fu_2121_p1 = add_ln14_16_fu_2116_p2;
assign zext_ln14_3_fu_1155_p1 = or_ln13_1_fu_1148_p3;
assign zext_ln14_40_fu_2565_p1 = or_ln14_8_fu_2557_p4;
assign zext_ln14_41_fu_2156_p1 = add_ln14_17_fu_2151_p2;
assign zext_ln14_42_fu_2216_p1 = or_ln14_15_fu_2207_p5;
assign zext_ln14_43_fu_1644_p1 = or_ln13_11_fu_1634_p5;
assign zext_ln14_44_fu_2251_p1 = add_ln14_18_fu_2246_p2;
assign zext_ln14_45_fu_1696_p1 = or_ln13_12_fu_1689_p3;
assign zext_ln14_46_fu_2319_p1 = add_ln14_19_fu_2314_p2;
assign zext_ln14_47_fu_2598_p1 = or_ln14_10_fu_2591_p3;
assign zext_ln14_48_fu_2354_p1 = add_ln14_20_fu_2349_p2;
assign zext_ln14_49_fu_2413_p1 = or_ln14_18_fu_2405_p4;
assign zext_ln14_4_fu_1172_p1 = add_ln14_1_fu_1167_p2;
assign zext_ln14_50_fu_1725_p1 = or_ln13_13_fu_1718_p3;
assign zext_ln14_51_fu_2448_p1 = add_ln14_21_fu_2443_p2;
assign zext_ln14_52_fu_1782_p1 = or_ln13_14_fu_1774_p3;
assign zext_ln14_53_fu_2513_p1 = add_ln14_22_fu_2508_p2;
assign zext_ln14_54_fu_2632_p1 = or_ln14_11_fu_2624_p4;
assign zext_ln14_55_fu_2542_p1 = add_ln14_23_fu_2537_p2;
assign zext_ln14_56_fu_1833_p1 = or_ln13_15_fu_1821_p5;
assign zext_ln14_57_fu_1890_p1 = or_ln13_16_fu_1880_p5;
assign zext_ln14_58_fu_2648_p1 = or_ln14_13_fu_2638_p5;
assign zext_ln14_59_fu_1925_p1 = or_ln13_17_fu_1915_p5;
assign zext_ln14_5_fu_2065_p1 = or_ln14_1_fu_2058_p3;
assign zext_ln14_60_fu_1993_p1 = or_ln13_18_fu_1982_p5;
assign zext_ln14_61_fu_2665_p1 = or_ln14_14_fu_2654_p6;
assign zext_ln14_62_fu_2029_p1 = or_ln13_19_fu_2015_p7;
assign zext_ln14_63_fu_2101_p1 = or_ln13_20_fu_2091_p5;
assign zext_ln14_64_fu_2681_p1 = or_ln14_16_fu_2671_p5;
assign zext_ln14_65_fu_2136_p1 = or_ln13_21_fu_2126_p5;
assign zext_ln14_66_fu_2202_p1 = or_ln13_22_fu_2195_p3;
assign zext_ln14_67_fu_2695_p1 = or_ln14_17_fu_2687_p4;
assign zext_ln14_68_fu_2231_p1 = or_ln13_23_fu_2221_p5;
assign zext_ln14_69_fu_2299_p1 = or_ln13_24_fu_2289_p5;
assign zext_ln14_6_fu_1201_p1 = add_ln14_2_fu_1196_p2;
assign zext_ln14_70_fu_2711_p1 = or_ln14_19_fu_2701_p5;
assign zext_ln14_71_fu_2334_p1 = or_ln13_25_fu_2324_p5;
assign zext_ln14_72_fu_2400_p1 = or_ln13_26_fu_2393_p3;
assign zext_ln14_73_fu_2725_p1 = or_ln14_20_fu_2717_p4;
assign zext_ln14_74_fu_2428_p1 = or_ln13_27_fu_2418_p5;
assign zext_ln14_75_fu_2496_p1 = or_ln13_28_fu_2489_p3;
assign zext_ln14_76_fu_2738_p1 = or_ln14_21_fu_2731_p3;
assign zext_ln14_77_fu_2525_p1 = or_ln13_29_fu_2518_p3;
assign zext_ln14_7_fu_1264_p1 = or_ln14_3_fu_1255_p4;
assign zext_ln14_8_fu_1184_p1 = or_ln13_2_fu_1177_p3;
assign zext_ln14_9_fu_1303_p1 = add_ln14_3_fu_1298_p2;
assign zext_ln14_fu_1111_p1 = or_ln_fu_1103_p3;
assign zext_ln9_fu_1950_p1 = lshr_ln9_reg_2807;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_2762[11:8] <= 4'b0000;
end
endmodule 