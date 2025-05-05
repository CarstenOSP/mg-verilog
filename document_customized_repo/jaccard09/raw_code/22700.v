module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_434_p_din0,grp_fu_434_p_din1,grp_fu_434_p_opcode,grp_fu_434_p_dout0,grp_fu_434_p_ce,grp_fu_848_p_din0,grp_fu_848_p_din1,grp_fu_848_p_opcode,grp_fu_848_p_dout0,grp_fu_848_p_ce); 
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
output  [10:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
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
output  [63:0] grp_fu_434_p_din0;
output  [63:0] grp_fu_434_p_din1;
output  [1:0] grp_fu_434_p_opcode;
input  [63:0] grp_fu_434_p_dout0;
output   grp_fu_434_p_ce;
output  [63:0] grp_fu_848_p_din0;
output  [63:0] grp_fu_848_p_din1;
output  [1:0] grp_fu_848_p_opcode;
input  [63:0] grp_fu_848_p_dout0;
output   grp_fu_848_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_reg_2650;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1050;
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
reg   [63:0] reg_1054;
reg   [63:0] reg_1058;
reg   [63:0] reg_1062;
reg   [63:0] reg_1066;
reg   [63:0] reg_1074;
wire   [11:0] zext_ln13_cast_fu_1082_p1;
reg   [11:0] zext_ln13_cast_reg_2609;
reg   [6:0] s_1_reg_2636;
wire   [3:0] tmp_cast_fu_1107_p4;
reg   [3:0] tmp_cast_reg_2659;
wire   [2:0] lshr_ln9_fu_1230_p4;
reg   [2:0] lshr_ln9_reg_2702;
wire   [63:0] bitcast_ln14_fu_1239_p1;
wire   [63:0] bitcast_ln14_1_fu_1244_p1;
wire   [63:0] bitcast_ln14_2_fu_1249_p1;
wire   [63:0] bitcast_ln14_3_fu_1254_p1;
wire   [0:0] tmp_4_fu_1286_p3;
reg   [0:0] tmp_4_reg_2741;
wire   [63:0] bitcast_ln14_4_fu_1332_p1;
wire   [63:0] bitcast_ln14_5_fu_1337_p1;
wire   [63:0] bitcast_ln14_6_fu_1342_p1;
wire   [63:0] bitcast_ln14_7_fu_1347_p1;
wire   [63:0] bitcast_ln14_8_fu_1410_p1;
wire   [63:0] bitcast_ln14_9_fu_1415_p1;
wire   [63:0] bitcast_ln14_10_fu_1420_p1;
wire   [63:0] bitcast_ln14_11_fu_1425_p1;
wire   [1:0] tmp_176_fu_1430_p4;
reg   [1:0] tmp_176_reg_2821;
wire   [0:0] tmp_5_fu_1452_p3;
reg   [0:0] tmp_5_reg_2843;
wire   [1:0] tmp_177_fu_1475_p4;
reg   [1:0] tmp_177_reg_2861;
wire   [63:0] bitcast_ln14_12_fu_1523_p1;
wire   [63:0] bitcast_ln14_13_fu_1528_p1;
wire   [63:0] bitcast_ln14_14_fu_1533_p1;
wire   [63:0] bitcast_ln14_15_fu_1538_p1;
wire   [63:0] bitcast_ln14_16_fu_1613_p1;
wire   [63:0] bitcast_ln14_17_fu_1618_p1;
wire   [63:0] bitcast_ln14_18_fu_1623_p1;
wire   [63:0] bitcast_ln14_19_fu_1628_p1;
wire   [63:0] bitcast_ln14_20_fu_1693_p1;
wire   [63:0] bitcast_ln14_21_fu_1698_p1;
wire   [63:0] bitcast_ln14_22_fu_1703_p1;
wire   [63:0] bitcast_ln14_23_fu_1708_p1;
wire   [63:0] bitcast_ln14_24_fu_1771_p1;
wire   [63:0] bitcast_ln14_25_fu_1776_p1;
wire   [63:0] bitcast_ln14_26_fu_1781_p1;
wire   [63:0] bitcast_ln14_27_fu_1786_p1;
wire   [0:0] tmp_6_fu_1791_p3;
reg   [0:0] tmp_6_reg_3017;
wire   [1:0] tmp_178_fu_1811_p4;
reg   [1:0] tmp_178_reg_3056;
wire   [63:0] bitcast_ln14_28_fu_1884_p1;
wire   [63:0] bitcast_ln14_29_fu_1889_p1;
wire   [63:0] bitcast_ln14_30_fu_1894_p1;
wire   [63:0] bitcast_ln14_31_fu_1899_p1;
wire   [63:0] zext_ln9_fu_1974_p1;
reg   [63:0] zext_ln9_reg_3119;
wire   [0:0] tmp_7_fu_1979_p3;
reg   [0:0] tmp_7_reg_3129;
wire   [63:0] bitcast_ln14_32_fu_1986_p1;
wire   [63:0] bitcast_ln14_33_fu_1991_p1;
wire   [63:0] bitcast_ln14_34_fu_1996_p1;
wire   [63:0] bitcast_ln14_35_fu_2001_p1;
wire   [63:0] bitcast_ln14_36_fu_2082_p1;
wire   [63:0] bitcast_ln14_37_fu_2087_p1;
wire   [63:0] bitcast_ln14_38_fu_2092_p1;
wire   [63:0] bitcast_ln14_39_fu_2097_p1;
wire   [63:0] bitcast_ln14_40_fu_2172_p1;
wire   [63:0] bitcast_ln14_41_fu_2177_p1;
wire   [63:0] bitcast_ln14_42_fu_2182_p1;
wire   [63:0] bitcast_ln14_43_fu_2187_p1;
wire   [63:0] bitcast_ln14_44_fu_2253_p1;
wire   [63:0] bitcast_ln14_45_fu_2258_p1;
wire   [63:0] bitcast_ln14_46_fu_2263_p1;
wire   [63:0] bitcast_ln14_47_fu_2268_p1;
wire   [63:0] zext_ln14_19_fu_2350_p1;
reg   [63:0] zext_ln14_19_reg_3298;
wire   [63:0] bitcast_ln14_48_fu_2356_p1;
wire   [63:0] bitcast_ln14_49_fu_2361_p1;
wire   [63:0] bitcast_ln14_50_fu_2366_p1;
wire   [63:0] bitcast_ln14_51_fu_2371_p1;
wire   [63:0] bitcast_ln14_52_fu_2436_p1;
wire   [63:0] bitcast_ln14_53_fu_2441_p1;
wire   [63:0] bitcast_ln14_54_fu_2446_p1;
wire   [63:0] bitcast_ln14_55_fu_2451_p1;
wire   [63:0] bitcast_ln14_56_fu_2524_p1;
wire   [63:0] bitcast_ln14_57_fu_2529_p1;
wire   [63:0] bitcast_ln14_58_fu_2534_p1;
wire   [63:0] bitcast_ln14_59_fu_2539_p1;
wire   [63:0] bitcast_ln14_60_fu_2544_p1;
wire   [63:0] bitcast_ln14_61_fu_2549_p1;
wire   [63:0] bitcast_ln14_62_fu_2554_p1;
wire   [63:0] bitcast_ln14_63_fu_2559_p1;
wire   [63:0] zext_ln14_40_fu_2572_p1;
reg   [63:0] zext_ln14_40_reg_3428;
wire   [63:0] zext_ln14_58_fu_2585_p1;
reg   [63:0] zext_ln14_58_reg_3438;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln13_1_fu_1102_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1125_p1;
wire   [63:0] zext_ln14_1_fu_1148_p1;
wire   [63:0] zext_ln14_2_fu_1167_p1;
wire   [63:0] zext_ln14_3_fu_1179_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_1196_p1;
wire   [63:0] zext_ln14_5_fu_1208_p1;
wire   [63:0] zext_ln14_6_fu_1225_p1;
wire   [63:0] zext_ln14_8_fu_1267_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_1281_p1;
wire   [63:0] zext_ln14_10_fu_1305_p1;
wire   [63:0] zext_ln14_9_fu_1327_p1;
wire   [63:0] zext_ln14_12_fu_1359_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1376_p1;
wire   [63:0] zext_ln14_15_fu_1388_p1;
wire   [63:0] zext_ln14_13_fu_1405_p1;
wire   [63:0] zext_ln14_17_fu_1447_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1470_p1;
wire   [63:0] zext_ln14_22_fu_1496_p1;
wire   [63:0] zext_ln14_16_fu_1518_p1;
wire   [63:0] zext_ln14_24_fu_1553_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1573_p1;
wire   [63:0] zext_ln14_26_fu_1588_p1;
wire   [63:0] zext_ln14_20_fu_1608_p1;
wire   [63:0] zext_ln14_29_fu_1640_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1653_p1;
wire   [63:0] zext_ln14_31_fu_1668_p1;
wire   [63:0] zext_ln14_23_fu_1688_p1;
wire   [63:0] zext_ln14_33_fu_1720_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1737_p1;
wire   [63:0] zext_ln14_36_fu_1749_p1;
wire   [63:0] zext_ln14_27_fu_1766_p1;
wire   [63:0] zext_ln14_38_fu_1806_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_28_fu_1831_p1;
wire   [63:0] zext_ln14_43_fu_1857_p1;
wire   [63:0] zext_ln14_30_fu_1879_p1;
wire   [63:0] zext_ln14_45_fu_1914_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_32_fu_1934_p1;
wire   [63:0] zext_ln14_47_fu_1949_p1;
wire   [63:0] zext_ln14_34_fu_1969_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_50_fu_2017_p1;
wire   [63:0] zext_ln14_35_fu_2034_p1;
wire   [63:0] zext_ln14_52_fu_2053_p1;
wire   [63:0] zext_ln14_37_fu_2077_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_54_fu_2112_p1;
wire   [63:0] zext_ln14_39_fu_2132_p1;
wire   [63:0] zext_ln14_56_fu_2147_p1;
wire   [63:0] zext_ln14_41_fu_2167_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_57_fu_2199_p1;
wire   [63:0] zext_ln14_42_fu_2213_p1;
wire   [63:0] zext_ln14_59_fu_2228_p1;
wire   [63:0] zext_ln14_44_fu_2248_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_60_fu_2283_p1;
wire   [63:0] zext_ln14_46_fu_2303_p1;
wire   [63:0] zext_ln14_61_fu_2318_p1;
wire   [63:0] zext_ln14_48_fu_2338_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_62_fu_2383_p1;
wire   [63:0] zext_ln14_49_fu_2396_p1;
wire   [63:0] zext_ln14_63_fu_2411_p1;
wire   [63:0] zext_ln14_51_fu_2431_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_64_fu_2463_p1;
wire   [63:0] zext_ln14_53_fu_2480_p1;
wire   [63:0] zext_ln14_65_fu_2492_p1;
wire   [63:0] zext_ln14_55_fu_2509_p1;
reg   [6:0] s_fu_200;
wire   [6:0] add_ln13_fu_2514_p2;
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
reg   [10:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [10:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [10:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [10:0] llike_3_address0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg   [10:0] llike_4_address0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg   [10:0] llike_5_address0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg   [10:0] llike_6_address0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg   [10:0] llike_7_address0_local;
reg   [63:0] grp_fu_1042_p0;
reg   [63:0] grp_fu_1042_p1;
reg   [63:0] grp_fu_1046_p0;
reg   [63:0] grp_fu_1046_p1;
wire   [11:0] or_ln_fu_1117_p3;
wire   [4:0] tmp_s_fu_1130_p4;
wire   [5:0] or_ln1_fu_1140_p3;
wire   [11:0] shl_ln_fu_1153_p3;
wire   [11:0] add_ln14_fu_1161_p2;
wire   [5:0] or_ln13_1_fu_1172_p3;
wire   [11:0] shl_ln14_1_fu_1184_p3;
wire   [11:0] add_ln14_1_fu_1191_p2;
wire   [5:0] or_ln13_2_fu_1201_p3;
wire   [11:0] shl_ln14_2_fu_1213_p3;
wire   [11:0] add_ln14_2_fu_1220_p2;
wire   [5:0] or_ln13_3_fu_1259_p3;
wire   [11:0] or_ln14_1_fu_1272_p4;
wire   [5:0] or_ln13_4_fu_1293_p5;
wire   [11:0] shl_ln14_3_fu_1310_p5;
wire   [11:0] add_ln14_3_fu_1322_p2;
wire   [5:0] or_ln13_5_fu_1352_p3;
wire   [11:0] shl_ln14_4_fu_1364_p3;
wire   [11:0] add_ln14_4_fu_1371_p2;
wire   [5:0] or_ln13_6_fu_1381_p3;
wire   [11:0] shl_ln14_5_fu_1393_p3;
wire   [11:0] add_ln14_5_fu_1400_p2;
wire   [5:0] or_ln13_7_fu_1439_p3;
wire   [11:0] or_ln14_3_fu_1459_p5;
wire   [5:0] or_ln13_8_fu_1484_p5;
wire   [11:0] shl_ln14_6_fu_1501_p5;
wire   [11:0] add_ln14_6_fu_1513_p2;
wire   [5:0] or_ln13_9_fu_1543_p5;
wire   [11:0] shl_ln14_7_fu_1558_p5;
wire   [11:0] add_ln14_7_fu_1568_p2;
wire   [5:0] or_ln13_s_fu_1578_p5;
wire   [11:0] shl_ln14_8_fu_1593_p5;
wire   [11:0] add_ln14_8_fu_1603_p2;
wire   [5:0] or_ln13_10_fu_1633_p3;
wire   [11:0] or_ln14_4_fu_1645_p4;
wire   [5:0] or_ln13_11_fu_1658_p5;
wire   [11:0] shl_ln14_9_fu_1673_p5;
wire   [11:0] add_ln14_9_fu_1683_p2;
wire   [5:0] or_ln13_12_fu_1713_p3;
wire   [11:0] shl_ln14_s_fu_1725_p3;
wire   [11:0] add_ln14_10_fu_1732_p2;
wire   [5:0] or_ln13_13_fu_1742_p3;
wire   [11:0] shl_ln14_10_fu_1754_p3;
wire   [11:0] add_ln14_11_fu_1761_p2;
wire   [5:0] or_ln13_14_fu_1798_p3;
wire   [11:0] or_ln14_6_fu_1820_p5;
wire   [2:0] tmp_179_fu_1836_p4;
wire   [5:0] or_ln13_15_fu_1845_p5;
wire   [11:0] shl_ln14_11_fu_1862_p5;
wire   [11:0] add_ln14_12_fu_1874_p2;
wire   [5:0] or_ln13_16_fu_1904_p5;
wire   [11:0] shl_ln14_12_fu_1919_p5;
wire   [11:0] add_ln14_13_fu_1929_p2;
wire   [5:0] or_ln13_17_fu_1939_p5;
wire   [11:0] shl_ln14_13_fu_1954_p5;
wire   [11:0] add_ln14_14_fu_1964_p2;
wire   [5:0] or_ln13_18_fu_2006_p5;
wire   [11:0] or_ln14_7_fu_2022_p6;
wire   [5:0] or_ln13_19_fu_2039_p7;
wire   [11:0] shl_ln14_14_fu_2058_p7;
wire   [11:0] add_ln14_15_fu_2072_p2;
wire   [5:0] or_ln13_20_fu_2102_p5;
wire   [11:0] shl_ln14_15_fu_2117_p5;
wire   [11:0] add_ln14_16_fu_2127_p2;
wire   [5:0] or_ln13_21_fu_2137_p5;
wire   [11:0] shl_ln14_16_fu_2152_p5;
wire   [11:0] add_ln14_17_fu_2162_p2;
wire   [5:0] or_ln13_22_fu_2192_p3;
wire   [11:0] or_ln14_9_fu_2204_p5;
wire   [5:0] or_ln13_23_fu_2218_p5;
wire   [11:0] shl_ln14_17_fu_2233_p5;
wire   [11:0] add_ln14_18_fu_2243_p2;
wire   [5:0] or_ln13_24_fu_2273_p5;
wire   [11:0] shl_ln14_18_fu_2288_p5;
wire   [11:0] add_ln14_19_fu_2298_p2;
wire   [5:0] or_ln13_25_fu_2308_p5;
wire   [11:0] shl_ln14_19_fu_2323_p5;
wire   [11:0] add_ln14_20_fu_2333_p2;
wire   [2:0] or_ln14_2_fu_2343_p3;
wire   [5:0] or_ln13_26_fu_2376_p3;
wire   [11:0] or_ln14_s_fu_2388_p4;
wire   [5:0] or_ln13_27_fu_2401_p5;
wire   [11:0] shl_ln14_20_fu_2416_p5;
wire   [11:0] add_ln14_21_fu_2426_p2;
wire   [5:0] or_ln13_28_fu_2456_p3;
wire   [11:0] shl_ln14_21_fu_2468_p3;
wire   [11:0] add_ln14_22_fu_2475_p2;
wire   [5:0] or_ln13_29_fu_2485_p3;
wire   [11:0] shl_ln14_22_fu_2497_p3;
wire   [11:0] add_ln14_23_fu_2504_p2;
wire   [2:0] or_ln14_5_fu_2564_p4;
wire   [2:0] or_ln14_8_fu_2578_p3;
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
#0 s_fu_200 = 7'd0;
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
        s_fu_200 <= 7'd0;
    end else if (((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_200 <= add_ln13_fu_2514_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln9_reg_2702 <= {{s_1_reg_2636[5:3]}};
        tmp_4_reg_2741 <= s_1_reg_2636[32'd1];
        zext_ln14_40_reg_3428[0] <= zext_ln14_40_fu_2572_p1[0];
zext_ln14_40_reg_3428[2] <= zext_ln14_40_fu_2572_p1[2];
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1050 <= init_q1;
        reg_1054 <= emission_q1;
        reg_1058 <= init_q0;
        reg_1062 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1066 <= grp_fu_434_p_dout0;
        reg_1074 <= grp_fu_848_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_1_reg_2636 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_2659 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_2650 <= ap_sig_allocacmp_s_1[32'd6];
        zext_ln13_cast_reg_2609[7 : 0] <= zext_ln13_cast_fu_1082_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_176_reg_2821 <= {{s_1_reg_2636[5:4]}};
        tmp_177_reg_2861 <= {{s_1_reg_2636[2:1]}};
        tmp_5_reg_2843 <= s_1_reg_2636[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_178_reg_3056 <= {{s_1_reg_2636[3:2]}};
        tmp_6_reg_3017 <= s_1_reg_2636[32'd5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_7_reg_3129 <= s_1_reg_2636[32'd3];
        zext_ln9_reg_3119[2 : 0] <= zext_ln9_fu_1974_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        zext_ln14_19_reg_3298[2 : 1] <= zext_ln14_19_fu_2350_p1[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln14_58_reg_3438[2] <= zext_ln14_58_fu_2585_p1[2];
    end
end
always @ (*) begin
    if (((tmp_reg_2650 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_200;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address0_local = zext_ln14_55_fu_2509_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address0_local = zext_ln14_51_fu_2431_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address0_local = zext_ln14_48_fu_2338_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address0_local = zext_ln14_44_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address0_local = zext_ln14_41_fu_2167_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address0_local = zext_ln14_37_fu_2077_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address0_local = zext_ln14_34_fu_1969_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address0_local = zext_ln14_30_fu_1879_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1766_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1688_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1518_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1405_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_1225_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_1167_p1;
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
            emission_address1_local = zext_ln14_53_fu_2480_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address1_local = zext_ln14_49_fu_2396_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address1_local = zext_ln14_46_fu_2303_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address1_local = zext_ln14_42_fu_2213_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address1_local = zext_ln14_39_fu_2132_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address1_local = zext_ln14_35_fu_2034_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address1_local = zext_ln14_32_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address1_local = zext_ln14_28_fu_1831_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1653_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1573_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1470_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1376_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_1196_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_1125_p1;
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
        grp_fu_1042_p0 = bitcast_ln14_60_fu_2544_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1042_p0 = bitcast_ln14_56_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1042_p0 = bitcast_ln14_52_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1042_p0 = bitcast_ln14_48_fu_2356_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1042_p0 = bitcast_ln14_44_fu_2253_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1042_p0 = bitcast_ln14_40_fu_2172_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1042_p0 = bitcast_ln14_36_fu_2082_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1042_p0 = bitcast_ln14_32_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1042_p0 = bitcast_ln14_28_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1042_p0 = bitcast_ln14_24_fu_1771_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1042_p0 = bitcast_ln14_20_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1042_p0 = bitcast_ln14_16_fu_1613_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1042_p0 = bitcast_ln14_12_fu_1523_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1042_p0 = bitcast_ln14_8_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1042_p0 = bitcast_ln14_4_fu_1332_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1042_p0 = bitcast_ln14_fu_1239_p1;
    end else begin
        grp_fu_1042_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1042_p1 = bitcast_ln14_61_fu_2549_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1042_p1 = bitcast_ln14_57_fu_2529_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1042_p1 = bitcast_ln14_53_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1042_p1 = bitcast_ln14_49_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1042_p1 = bitcast_ln14_45_fu_2258_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1042_p1 = bitcast_ln14_41_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1042_p1 = bitcast_ln14_37_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1042_p1 = bitcast_ln14_33_fu_1991_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1042_p1 = bitcast_ln14_29_fu_1889_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1042_p1 = bitcast_ln14_25_fu_1776_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1042_p1 = bitcast_ln14_21_fu_1698_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1042_p1 = bitcast_ln14_17_fu_1618_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1042_p1 = bitcast_ln14_13_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1042_p1 = bitcast_ln14_9_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1042_p1 = bitcast_ln14_5_fu_1337_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1042_p1 = bitcast_ln14_1_fu_1244_p1;
    end else begin
        grp_fu_1042_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1046_p0 = bitcast_ln14_62_fu_2554_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1046_p0 = bitcast_ln14_58_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1046_p0 = bitcast_ln14_54_fu_2446_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1046_p0 = bitcast_ln14_50_fu_2366_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1046_p0 = bitcast_ln14_46_fu_2263_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1046_p0 = bitcast_ln14_42_fu_2182_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1046_p0 = bitcast_ln14_38_fu_2092_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1046_p0 = bitcast_ln14_34_fu_1996_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1046_p0 = bitcast_ln14_30_fu_1894_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1046_p0 = bitcast_ln14_26_fu_1781_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1046_p0 = bitcast_ln14_22_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1046_p0 = bitcast_ln14_18_fu_1623_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1046_p0 = bitcast_ln14_14_fu_1533_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1046_p0 = bitcast_ln14_10_fu_1420_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1046_p0 = bitcast_ln14_6_fu_1342_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1046_p0 = bitcast_ln14_2_fu_1249_p1;
    end else begin
        grp_fu_1046_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1046_p1 = bitcast_ln14_63_fu_2559_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1046_p1 = bitcast_ln14_59_fu_2539_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1046_p1 = bitcast_ln14_55_fu_2451_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1046_p1 = bitcast_ln14_51_fu_2371_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1046_p1 = bitcast_ln14_47_fu_2268_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1046_p1 = bitcast_ln14_43_fu_2187_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1046_p1 = bitcast_ln14_39_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1046_p1 = bitcast_ln14_35_fu_2001_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1046_p1 = bitcast_ln14_31_fu_1899_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1046_p1 = bitcast_ln14_27_fu_1786_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1046_p1 = bitcast_ln14_23_fu_1708_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1046_p1 = bitcast_ln14_19_fu_1628_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1046_p1 = bitcast_ln14_15_fu_1538_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1046_p1 = bitcast_ln14_11_fu_1425_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1046_p1 = bitcast_ln14_7_fu_1347_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1046_p1 = bitcast_ln14_3_fu_1254_p1;
    end else begin
        grp_fu_1046_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address0_local = zext_ln14_65_fu_2492_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address0_local = zext_ln14_63_fu_2411_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address0_local = zext_ln14_61_fu_2318_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address0_local = zext_ln14_59_fu_2228_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address0_local = zext_ln14_56_fu_2147_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address0_local = zext_ln14_52_fu_2053_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address0_local = zext_ln14_47_fu_1949_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address0_local = zext_ln14_43_fu_1857_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_36_fu_1749_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_31_fu_1668_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_26_fu_1588_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_22_fu_1496_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_1388_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_1305_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_1208_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_1148_p1;
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
            init_address1_local = zext_ln14_64_fu_2463_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address1_local = zext_ln14_62_fu_2383_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address1_local = zext_ln14_60_fu_2283_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address1_local = zext_ln14_57_fu_2199_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address1_local = zext_ln14_54_fu_2112_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address1_local = zext_ln14_50_fu_2017_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address1_local = zext_ln14_45_fu_1914_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address1_local = zext_ln14_38_fu_1806_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_33_fu_1720_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_29_fu_1640_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_24_fu_1553_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_17_fu_1447_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_1359_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_1267_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_1179_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_1102_p1;
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
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_58_fu_2585_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln14_40_fu_2572_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_1_address0_local = zext_ln14_19_fu_2350_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_1_address0_local = zext_ln9_fu_1974_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_2_address0_local = zext_ln14_58_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln14_40_reg_3428;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_2_address0_local = zext_ln14_19_reg_3298;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_2_address0_local = zext_ln9_reg_3119;
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_3_address0_local = zext_ln14_58_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln14_40_reg_3428;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_3_address0_local = zext_ln14_19_reg_3298;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_3_address0_local = zext_ln9_reg_3119;
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_4_address0_local = zext_ln14_58_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_4_address0_local = zext_ln14_40_reg_3428;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_address0_local = zext_ln14_19_reg_3298;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_4_address0_local = zext_ln9_reg_3119;
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_5_address0_local = zext_ln14_58_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_5_address0_local = zext_ln14_40_reg_3428;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_address0_local = zext_ln14_19_reg_3298;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_5_address0_local = zext_ln9_reg_3119;
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_6_address0_local = zext_ln14_58_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_6_address0_local = zext_ln14_40_reg_3428;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_address0_local = zext_ln14_19_reg_3298;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_6_address0_local = zext_ln9_reg_3119;
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_7_address0_local = zext_ln14_58_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_7_address0_local = zext_ln14_40_reg_3428;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_address0_local = zext_ln14_19_reg_3298;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_7_address0_local = zext_ln9_reg_3119;
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_58_fu_2585_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_40_fu_2572_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_address0_local = zext_ln14_19_fu_2350_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_address0_local = zext_ln9_fu_1974_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2650 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln13_fu_2514_p2 = (s_1_reg_2636 + 7'd32);
assign add_ln14_10_fu_1732_p2 = (shl_ln14_s_fu_1725_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_11_fu_1761_p2 = (shl_ln14_10_fu_1754_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_12_fu_1874_p2 = (shl_ln14_11_fu_1862_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_13_fu_1929_p2 = (shl_ln14_12_fu_1919_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_14_fu_1964_p2 = (shl_ln14_13_fu_1954_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_15_fu_2072_p2 = (shl_ln14_14_fu_2058_p7 + zext_ln13_cast_reg_2609);
assign add_ln14_16_fu_2127_p2 = (shl_ln14_15_fu_2117_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_17_fu_2162_p2 = (shl_ln14_16_fu_2152_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_18_fu_2243_p2 = (shl_ln14_17_fu_2233_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_19_fu_2298_p2 = (shl_ln14_18_fu_2288_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_1_fu_1191_p2 = (shl_ln14_1_fu_1184_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_20_fu_2333_p2 = (shl_ln14_19_fu_2323_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_21_fu_2426_p2 = (shl_ln14_20_fu_2416_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_22_fu_2475_p2 = (shl_ln14_21_fu_2468_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_23_fu_2504_p2 = (shl_ln14_22_fu_2497_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_2_fu_1220_p2 = (shl_ln14_2_fu_1213_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_3_fu_1322_p2 = (shl_ln14_3_fu_1310_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_4_fu_1371_p2 = (shl_ln14_4_fu_1364_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_5_fu_1400_p2 = (shl_ln14_5_fu_1393_p3 + zext_ln13_cast_reg_2609);
assign add_ln14_6_fu_1513_p2 = (shl_ln14_6_fu_1501_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_7_fu_1568_p2 = (shl_ln14_7_fu_1558_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_8_fu_1603_p2 = (shl_ln14_8_fu_1593_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_9_fu_1683_p2 = (shl_ln14_9_fu_1673_p5 + zext_ln13_cast_reg_2609);
assign add_ln14_fu_1161_p2 = (shl_ln_fu_1153_p3 + zext_ln13_cast_fu_1082_p1);
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
assign bitcast_ln14_10_fu_1420_p1 = reg_1058;
assign bitcast_ln14_11_fu_1425_p1 = reg_1062;
assign bitcast_ln14_12_fu_1523_p1 = reg_1050;
assign bitcast_ln14_13_fu_1528_p1 = reg_1054;
assign bitcast_ln14_14_fu_1533_p1 = reg_1058;
assign bitcast_ln14_15_fu_1538_p1 = reg_1062;
assign bitcast_ln14_16_fu_1613_p1 = reg_1050;
assign bitcast_ln14_17_fu_1618_p1 = reg_1054;
assign bitcast_ln14_18_fu_1623_p1 = reg_1058;
assign bitcast_ln14_19_fu_1628_p1 = reg_1062;
assign bitcast_ln14_1_fu_1244_p1 = reg_1054;
assign bitcast_ln14_20_fu_1693_p1 = reg_1050;
assign bitcast_ln14_21_fu_1698_p1 = reg_1054;
assign bitcast_ln14_22_fu_1703_p1 = reg_1058;
assign bitcast_ln14_23_fu_1708_p1 = reg_1062;
assign bitcast_ln14_24_fu_1771_p1 = reg_1050;
assign bitcast_ln14_25_fu_1776_p1 = reg_1054;
assign bitcast_ln14_26_fu_1781_p1 = reg_1058;
assign bitcast_ln14_27_fu_1786_p1 = reg_1062;
assign bitcast_ln14_28_fu_1884_p1 = reg_1050;
assign bitcast_ln14_29_fu_1889_p1 = reg_1054;
assign bitcast_ln14_2_fu_1249_p1 = reg_1058;
assign bitcast_ln14_30_fu_1894_p1 = reg_1058;
assign bitcast_ln14_31_fu_1899_p1 = reg_1062;
assign bitcast_ln14_32_fu_1986_p1 = reg_1050;
assign bitcast_ln14_33_fu_1991_p1 = reg_1054;
assign bitcast_ln14_34_fu_1996_p1 = reg_1058;
assign bitcast_ln14_35_fu_2001_p1 = reg_1062;
assign bitcast_ln14_36_fu_2082_p1 = reg_1050;
assign bitcast_ln14_37_fu_2087_p1 = reg_1054;
assign bitcast_ln14_38_fu_2092_p1 = reg_1058;
assign bitcast_ln14_39_fu_2097_p1 = reg_1062;
assign bitcast_ln14_3_fu_1254_p1 = reg_1062;
assign bitcast_ln14_40_fu_2172_p1 = reg_1050;
assign bitcast_ln14_41_fu_2177_p1 = reg_1054;
assign bitcast_ln14_42_fu_2182_p1 = reg_1058;
assign bitcast_ln14_43_fu_2187_p1 = reg_1062;
assign bitcast_ln14_44_fu_2253_p1 = reg_1050;
assign bitcast_ln14_45_fu_2258_p1 = reg_1054;
assign bitcast_ln14_46_fu_2263_p1 = reg_1058;
assign bitcast_ln14_47_fu_2268_p1 = reg_1062;
assign bitcast_ln14_48_fu_2356_p1 = reg_1050;
assign bitcast_ln14_49_fu_2361_p1 = reg_1054;
assign bitcast_ln14_4_fu_1332_p1 = reg_1050;
assign bitcast_ln14_50_fu_2366_p1 = reg_1058;
assign bitcast_ln14_51_fu_2371_p1 = reg_1062;
assign bitcast_ln14_52_fu_2436_p1 = reg_1050;
assign bitcast_ln14_53_fu_2441_p1 = reg_1054;
assign bitcast_ln14_54_fu_2446_p1 = reg_1058;
assign bitcast_ln14_55_fu_2451_p1 = reg_1062;
assign bitcast_ln14_56_fu_2524_p1 = reg_1050;
assign bitcast_ln14_57_fu_2529_p1 = reg_1054;
assign bitcast_ln14_58_fu_2534_p1 = reg_1058;
assign bitcast_ln14_59_fu_2539_p1 = reg_1062;
assign bitcast_ln14_5_fu_1337_p1 = reg_1054;
assign bitcast_ln14_60_fu_2544_p1 = reg_1050;
assign bitcast_ln14_61_fu_2549_p1 = reg_1054;
assign bitcast_ln14_62_fu_2554_p1 = reg_1058;
assign bitcast_ln14_63_fu_2559_p1 = reg_1062;
assign bitcast_ln14_6_fu_1342_p1 = reg_1058;
assign bitcast_ln14_7_fu_1347_p1 = reg_1062;
assign bitcast_ln14_8_fu_1410_p1 = reg_1050;
assign bitcast_ln14_9_fu_1415_p1 = reg_1054;
assign bitcast_ln14_fu_1239_p1 = reg_1050;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_434_p_ce = 1'b1;
assign grp_fu_434_p_din0 = grp_fu_1042_p0;
assign grp_fu_434_p_din1 = grp_fu_1042_p1;
assign grp_fu_434_p_opcode = 2'd0;
assign grp_fu_848_p_ce = 1'b1;
assign grp_fu_848_p_din0 = grp_fu_1046_p0;
assign grp_fu_848_p_din1 = grp_fu_1046_p1;
assign grp_fu_848_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1074;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1066;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1074;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_1066;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_1074;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_1066;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_1074;
assign llike_7_we0 = llike_7_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1066;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1230_p4 = {{s_1_reg_2636[5:3]}};
assign or_ln13_10_fu_1633_p3 = {{tmp_176_reg_2821}, {4'd12}};
assign or_ln13_11_fu_1658_p5 = {{{{tmp_176_reg_2821}, {2'd3}}, {tmp_4_reg_2741}}, {1'd1}};
assign or_ln13_12_fu_1713_p3 = {{tmp_176_reg_2821}, {4'd14}};
assign or_ln13_13_fu_1742_p3 = {{tmp_176_reg_2821}, {4'd15}};
assign or_ln13_14_fu_1798_p3 = {{tmp_6_fu_1791_p3}, {5'd16}};
assign or_ln13_15_fu_1845_p5 = {{{{tmp_6_fu_1791_p3}, {1'd1}}, {tmp_179_fu_1836_p4}}, {1'd1}};
assign or_ln13_16_fu_1904_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_178_reg_3056}}, {2'd2}};
assign or_ln13_17_fu_1939_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_178_reg_3056}}, {2'd3}};
assign or_ln13_18_fu_2006_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_fu_1979_p3}}, {3'd4}};
assign or_ln13_19_fu_2039_p7 = {{{{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_fu_1979_p3}}, {1'd1}}, {tmp_4_reg_2741}}, {1'd1}};
assign or_ln13_1_fu_1172_p3 = {{tmp_cast_reg_2659}, {2'd2}};
assign or_ln13_20_fu_2102_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_reg_3129}}, {3'd6}};
assign or_ln13_21_fu_2137_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_reg_3129}}, {3'd7}};
assign or_ln13_22_fu_2192_p3 = {{tmp_6_reg_3017}, {5'd24}};
assign or_ln13_23_fu_2218_p5 = {{{{tmp_6_reg_3017}, {2'd3}}, {tmp_177_reg_2861}}, {1'd1}};
assign or_ln13_24_fu_2273_p5 = {{{{tmp_6_reg_3017}, {2'd3}}, {tmp_5_reg_2843}}, {2'd2}};
assign or_ln13_25_fu_2308_p5 = {{{{tmp_6_reg_3017}, {2'd3}}, {tmp_5_reg_2843}}, {2'd3}};
assign or_ln13_26_fu_2376_p3 = {{tmp_6_reg_3017}, {5'd28}};
assign or_ln13_27_fu_2401_p5 = {{{{tmp_6_reg_3017}, {3'd7}}, {tmp_4_reg_2741}}, {1'd1}};
assign or_ln13_28_fu_2456_p3 = {{tmp_6_reg_3017}, {5'd30}};
assign or_ln13_29_fu_2485_p3 = {{tmp_6_reg_3017}, {5'd31}};
assign or_ln13_2_fu_1201_p3 = {{tmp_cast_reg_2659}, {2'd3}};
assign or_ln13_3_fu_1259_p3 = {{lshr_ln9_fu_1230_p4}, {3'd4}};
assign or_ln13_4_fu_1293_p5 = {{{{lshr_ln9_fu_1230_p4}, {1'd1}}, {tmp_4_fu_1286_p3}}, {1'd1}};
assign or_ln13_5_fu_1352_p3 = {{lshr_ln9_reg_2702}, {3'd6}};
assign or_ln13_6_fu_1381_p3 = {{lshr_ln9_reg_2702}, {3'd7}};
assign or_ln13_7_fu_1439_p3 = {{tmp_176_fu_1430_p4}, {4'd8}};
assign or_ln13_8_fu_1484_p5 = {{{{tmp_176_fu_1430_p4}, {1'd1}}, {tmp_177_fu_1475_p4}}, {1'd1}};
assign or_ln13_9_fu_1543_p5 = {{{{tmp_176_reg_2821}, {1'd1}}, {tmp_5_reg_2843}}, {2'd2}};
assign or_ln13_s_fu_1578_p5 = {{{{tmp_176_reg_2821}, {1'd1}}, {tmp_5_reg_2843}}, {2'd3}};
assign or_ln14_1_fu_1272_p4 = {{{lshr_ln9_fu_1230_p4}, {1'd1}}, {obs_load}};
assign or_ln14_2_fu_2343_p3 = {{tmp_176_reg_2821}, {1'd1}};
assign or_ln14_3_fu_1459_p5 = {{{{tmp_176_fu_1430_p4}, {1'd1}}, {tmp_5_fu_1452_p3}}, {obs_load}};
assign or_ln14_4_fu_1645_p4 = {{{tmp_176_reg_2821}, {2'd3}}, {obs_load}};
assign or_ln14_5_fu_2564_p4 = {{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_reg_3129}};
assign or_ln14_6_fu_1820_p5 = {{{{tmp_6_fu_1791_p3}, {1'd1}}, {tmp_178_fu_1811_p4}}, {obs_load}};
assign or_ln14_7_fu_2022_p6 = {{{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_fu_1979_p3}}, {1'd1}}, {obs_load}};
assign or_ln14_8_fu_2578_p3 = {{tmp_6_reg_3017}, {2'd3}};
assign or_ln14_9_fu_2204_p5 = {{{{tmp_6_reg_3017}, {2'd3}}, {tmp_5_reg_2843}}, {obs_load}};
assign or_ln14_s_fu_2388_p4 = {{{tmp_6_reg_3017}, {3'd7}}, {obs_load}};
assign or_ln1_fu_1140_p3 = {{tmp_s_fu_1130_p4}, {1'd1}};
assign or_ln_fu_1117_p3 = {{tmp_cast_fu_1107_p4}, {obs_load}};
assign shl_ln14_10_fu_1754_p3 = {{tmp_176_reg_2821}, {10'd960}};
assign shl_ln14_11_fu_1862_p5 = {{{{tmp_6_fu_1791_p3}, {1'd1}}, {tmp_179_fu_1836_p4}}, {7'd64}};
assign shl_ln14_12_fu_1919_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_178_reg_3056}}, {8'd128}};
assign shl_ln14_13_fu_1954_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_178_reg_3056}}, {8'd192}};
assign shl_ln14_14_fu_2058_p7 = {{{{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_fu_1979_p3}}, {1'd1}}, {tmp_4_reg_2741}}, {7'd64}};
assign shl_ln14_15_fu_2117_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_reg_3129}}, {9'd384}};
assign shl_ln14_16_fu_2152_p5 = {{{{tmp_6_reg_3017}, {1'd1}}, {tmp_7_reg_3129}}, {9'd448}};
assign shl_ln14_17_fu_2233_p5 = {{{{tmp_6_reg_3017}, {2'd3}}, {tmp_177_reg_2861}}, {7'd64}};
assign shl_ln14_18_fu_2288_p5 = {{{{tmp_6_reg_3017}, {2'd3}}, {tmp_5_reg_2843}}, {8'd128}};
assign shl_ln14_19_fu_2323_p5 = {{{{tmp_6_reg_3017}, {2'd3}}, {tmp_5_reg_2843}}, {8'd192}};
assign shl_ln14_1_fu_1184_p3 = {{tmp_cast_reg_2659}, {8'd128}};
assign shl_ln14_20_fu_2416_p5 = {{{{tmp_6_reg_3017}, {3'd7}}, {tmp_4_reg_2741}}, {7'd64}};
assign shl_ln14_21_fu_2468_p3 = {{tmp_6_reg_3017}, {11'd1920}};
assign shl_ln14_22_fu_2497_p3 = {{tmp_6_reg_3017}, {11'd1984}};
assign shl_ln14_2_fu_1213_p3 = {{tmp_cast_reg_2659}, {8'd192}};
assign shl_ln14_3_fu_1310_p5 = {{{{lshr_ln9_fu_1230_p4}, {1'd1}}, {tmp_4_fu_1286_p3}}, {7'd64}};
assign shl_ln14_4_fu_1364_p3 = {{lshr_ln9_reg_2702}, {9'd384}};
assign shl_ln14_5_fu_1393_p3 = {{lshr_ln9_reg_2702}, {9'd448}};
assign shl_ln14_6_fu_1501_p5 = {{{{tmp_176_fu_1430_p4}, {1'd1}}, {tmp_177_fu_1475_p4}}, {7'd64}};
assign shl_ln14_7_fu_1558_p5 = {{{{tmp_176_reg_2821}, {1'd1}}, {tmp_5_reg_2843}}, {8'd128}};
assign shl_ln14_8_fu_1593_p5 = {{{{tmp_176_reg_2821}, {1'd1}}, {tmp_5_reg_2843}}, {8'd192}};
assign shl_ln14_9_fu_1673_p5 = {{{{tmp_176_reg_2821}, {2'd3}}, {tmp_4_reg_2741}}, {7'd64}};
assign shl_ln14_s_fu_1725_p3 = {{tmp_176_reg_2821}, {10'd896}};
assign shl_ln_fu_1153_p3 = {{tmp_s_fu_1130_p4}, {7'd64}};
assign tmp_176_fu_1430_p4 = {{s_1_reg_2636[5:4]}};
assign tmp_177_fu_1475_p4 = {{s_1_reg_2636[2:1]}};
assign tmp_178_fu_1811_p4 = {{s_1_reg_2636[3:2]}};
assign tmp_179_fu_1836_p4 = {{s_1_reg_2636[3:1]}};
assign tmp_4_fu_1286_p3 = s_1_reg_2636[32'd1];
assign tmp_5_fu_1452_p3 = s_1_reg_2636[32'd2];
assign tmp_6_fu_1791_p3 = s_1_reg_2636[32'd5];
assign tmp_7_fu_1979_p3 = s_1_reg_2636[32'd3];
assign tmp_cast_fu_1107_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_1130_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_1_fu_1102_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_1082_p1 = zext_ln13;
assign zext_ln14_10_fu_1305_p1 = or_ln13_4_fu_1293_p5;
assign zext_ln14_11_fu_1376_p1 = add_ln14_4_fu_1371_p2;
assign zext_ln14_12_fu_1359_p1 = or_ln13_5_fu_1352_p3;
assign zext_ln14_13_fu_1405_p1 = add_ln14_5_fu_1400_p2;
assign zext_ln14_14_fu_1470_p1 = or_ln14_3_fu_1459_p5;
assign zext_ln14_15_fu_1388_p1 = or_ln13_6_fu_1381_p3;
assign zext_ln14_16_fu_1518_p1 = add_ln14_6_fu_1513_p2;
assign zext_ln14_17_fu_1447_p1 = or_ln13_7_fu_1439_p3;
assign zext_ln14_18_fu_1573_p1 = add_ln14_7_fu_1568_p2;
assign zext_ln14_19_fu_2350_p1 = or_ln14_2_fu_2343_p3;
assign zext_ln14_1_fu_1148_p1 = or_ln1_fu_1140_p3;
assign zext_ln14_20_fu_1608_p1 = add_ln14_8_fu_1603_p2;
assign zext_ln14_21_fu_1653_p1 = or_ln14_4_fu_1645_p4;
assign zext_ln14_22_fu_1496_p1 = or_ln13_8_fu_1484_p5;
assign zext_ln14_23_fu_1688_p1 = add_ln14_9_fu_1683_p2;
assign zext_ln14_24_fu_1553_p1 = or_ln13_9_fu_1543_p5;
assign zext_ln14_25_fu_1737_p1 = add_ln14_10_fu_1732_p2;
assign zext_ln14_26_fu_1588_p1 = or_ln13_s_fu_1578_p5;
assign zext_ln14_27_fu_1766_p1 = add_ln14_11_fu_1761_p2;
assign zext_ln14_28_fu_1831_p1 = or_ln14_6_fu_1820_p5;
assign zext_ln14_29_fu_1640_p1 = or_ln13_10_fu_1633_p3;
assign zext_ln14_2_fu_1167_p1 = add_ln14_fu_1161_p2;
assign zext_ln14_30_fu_1879_p1 = add_ln14_12_fu_1874_p2;
assign zext_ln14_31_fu_1668_p1 = or_ln13_11_fu_1658_p5;
assign zext_ln14_32_fu_1934_p1 = add_ln14_13_fu_1929_p2;
assign zext_ln14_33_fu_1720_p1 = or_ln13_12_fu_1713_p3;
assign zext_ln14_34_fu_1969_p1 = add_ln14_14_fu_1964_p2;
assign zext_ln14_35_fu_2034_p1 = or_ln14_7_fu_2022_p6;
assign zext_ln14_36_fu_1749_p1 = or_ln13_13_fu_1742_p3;
assign zext_ln14_37_fu_2077_p1 = add_ln14_15_fu_2072_p2;
assign zext_ln14_38_fu_1806_p1 = or_ln13_14_fu_1798_p3;
assign zext_ln14_39_fu_2132_p1 = add_ln14_16_fu_2127_p2;
assign zext_ln14_3_fu_1179_p1 = or_ln13_1_fu_1172_p3;
assign zext_ln14_40_fu_2572_p1 = or_ln14_5_fu_2564_p4;
assign zext_ln14_41_fu_2167_p1 = add_ln14_17_fu_2162_p2;
assign zext_ln14_42_fu_2213_p1 = or_ln14_9_fu_2204_p5;
assign zext_ln14_43_fu_1857_p1 = or_ln13_15_fu_1845_p5;
assign zext_ln14_44_fu_2248_p1 = add_ln14_18_fu_2243_p2;
assign zext_ln14_45_fu_1914_p1 = or_ln13_16_fu_1904_p5;
assign zext_ln14_46_fu_2303_p1 = add_ln14_19_fu_2298_p2;
assign zext_ln14_47_fu_1949_p1 = or_ln13_17_fu_1939_p5;
assign zext_ln14_48_fu_2338_p1 = add_ln14_20_fu_2333_p2;
assign zext_ln14_49_fu_2396_p1 = or_ln14_s_fu_2388_p4;
assign zext_ln14_4_fu_1196_p1 = add_ln14_1_fu_1191_p2;
assign zext_ln14_50_fu_2017_p1 = or_ln13_18_fu_2006_p5;
assign zext_ln14_51_fu_2431_p1 = add_ln14_21_fu_2426_p2;
assign zext_ln14_52_fu_2053_p1 = or_ln13_19_fu_2039_p7;
assign zext_ln14_53_fu_2480_p1 = add_ln14_22_fu_2475_p2;
assign zext_ln14_54_fu_2112_p1 = or_ln13_20_fu_2102_p5;
assign zext_ln14_55_fu_2509_p1 = add_ln14_23_fu_2504_p2;
assign zext_ln14_56_fu_2147_p1 = or_ln13_21_fu_2137_p5;
assign zext_ln14_57_fu_2199_p1 = or_ln13_22_fu_2192_p3;
assign zext_ln14_58_fu_2585_p1 = or_ln14_8_fu_2578_p3;
assign zext_ln14_59_fu_2228_p1 = or_ln13_23_fu_2218_p5;
assign zext_ln14_5_fu_1208_p1 = or_ln13_2_fu_1201_p3;
assign zext_ln14_60_fu_2283_p1 = or_ln13_24_fu_2273_p5;
assign zext_ln14_61_fu_2318_p1 = or_ln13_25_fu_2308_p5;
assign zext_ln14_62_fu_2383_p1 = or_ln13_26_fu_2376_p3;
assign zext_ln14_63_fu_2411_p1 = or_ln13_27_fu_2401_p5;
assign zext_ln14_64_fu_2463_p1 = or_ln13_28_fu_2456_p3;
assign zext_ln14_65_fu_2492_p1 = or_ln13_29_fu_2485_p3;
assign zext_ln14_6_fu_1225_p1 = add_ln14_2_fu_1220_p2;
assign zext_ln14_7_fu_1281_p1 = or_ln14_1_fu_1272_p4;
assign zext_ln14_8_fu_1267_p1 = or_ln13_3_fu_1259_p3;
assign zext_ln14_9_fu_1327_p1 = add_ln14_3_fu_1322_p2;
assign zext_ln14_fu_1125_p1 = or_ln_fu_1117_p3;
assign zext_ln9_fu_1974_p1 = lshr_ln9_reg_2702;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_2609[11:8] <= 4'b0000;
    zext_ln9_reg_3119[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_3298[0] <= 1'b1;
    zext_ln14_19_reg_3298[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_40_reg_3428[1] <= 1'b1;
    zext_ln14_40_reg_3428[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_58_reg_3438[1:0] <= 2'b11;
    zext_ln14_58_reg_3438[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 