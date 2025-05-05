module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,min_s_8_out,min_s_8_out_ap_vld,grp_fu_1046_p_din0,grp_fu_1046_p_din1,grp_fu_1046_p_opcode,grp_fu_1046_p_dout0,grp_fu_1046_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
output  [7:0] min_s_8_out;
output   min_s_8_out_ap_vld;
output  [63:0] grp_fu_1046_p_din0;
output  [63:0] grp_fu_1046_p_din1;
output  [4:0] grp_fu_1046_p_opcode;
input  [0:0] grp_fu_1046_p_dout0;
output   grp_fu_1046_p_ce;
reg ap_idle;
reg min_s_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_8_reg_2172;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_2062;
wire   [3:0] trunc_ln15_fu_529_p1;
reg   [3:0] trunc_ln15_reg_2074;
wire   [6:0] add_ln40_fu_571_p2;
reg   [6:0] add_ln40_reg_2166;
reg   [6:0] add_ln40_reg_2166_pp0_iter1_reg;
reg   [0:0] tmp_8_reg_2172_pp0_iter1_reg;
wire   [63:0] p_fu_585_p35;
reg   [63:0] p_reg_2176;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] p_39_fu_656_p35;
reg   [63:0] p_39_reg_2183;
wire   [63:0] p_40_fu_727_p35;
reg   [63:0] p_40_reg_2190;
wire   [63:0] p_41_fu_798_p35;
reg   [63:0] p_41_reg_2197;
wire   [63:0] p_42_fu_869_p35;
reg   [63:0] p_42_reg_2204;
wire   [63:0] p_43_fu_940_p35;
reg   [63:0] p_43_reg_2211;
wire   [63:0] p_44_fu_1011_p35;
reg   [63:0] p_44_reg_2218;
reg   [63:0] min_p_84_reg_2305;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] p_45_fu_1125_p35;
reg   [63:0] p_45_reg_2312;
wire   [0:0] and_ln42_1_fu_1272_p2;
reg   [0:0] and_ln42_1_reg_2319;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] min_p_86_fu_1278_p3;
reg   [63:0] min_p_86_reg_2325;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln42_3_fu_1360_p2;
reg   [0:0] and_ln42_3_reg_2332;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] min_p_88_fu_1379_p3;
reg   [63:0] min_p_88_reg_2338;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_16_fu_1394_p3;
reg   [7:0] min_s_16_reg_2345;
wire   [0:0] and_ln42_5_fu_1477_p2;
reg   [0:0] and_ln42_5_reg_2350;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_90_fu_1483_p3;
reg   [63:0] min_p_90_reg_2356;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln42_14_fu_1507_p2;
reg   [0:0] icmp_ln42_14_reg_2362;
wire   [0:0] icmp_ln42_15_fu_1513_p2;
reg   [0:0] icmp_ln42_15_reg_2367;
wire   [0:0] and_ln42_7_fu_1564_p2;
reg   [0:0] and_ln42_7_reg_2372;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] min_p_92_fu_1570_p3;
reg   [63:0] min_p_92_reg_2378;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] and_ln42_9_fu_1652_p2;
reg   [0:0] and_ln42_9_reg_2385;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] min_p_94_fu_1658_p3;
reg   [63:0] min_p_94_reg_2391;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] and_ln42_11_fu_1740_p2;
reg   [0:0] and_ln42_11_reg_2398;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] min_p_96_fu_1746_p3;
reg   [63:0] min_p_96_reg_2404;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [0:0] and_ln42_13_fu_1828_p2;
reg   [0:0] and_ln42_13_reg_2411;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] min_p_98_fu_1834_p3;
reg   [63:0] min_p_98_reg_2417;
wire    ap_block_pp0_stage16_11001;
wire   [7:0] min_s_21_fu_1922_p3;
reg   [7:0] min_s_21_reg_2424;
reg   [0:0] tmp_30_reg_2429;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_551_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_2_fu_1101_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_1_fu_142;
wire   [63:0] min_p_100_fu_2011_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_146;
wire   [7:0] min_s_22_fu_2024_p3;
wire    ap_block_pp0_stage6;
reg   [5:0] min_s_12_fu_150;
wire   [5:0] add_ln40_1_fu_1840_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    llike_ce0_local;
reg   [9:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [9:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [9:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [9:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [9:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [9:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [9:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [9:0] llike_7_address0_local;
reg    llike_8_ce0_local;
reg   [9:0] llike_8_address0_local;
reg    llike_9_ce0_local;
reg   [9:0] llike_9_address0_local;
reg    llike_10_ce0_local;
reg   [9:0] llike_10_address0_local;
reg    llike_11_ce0_local;
reg   [9:0] llike_11_address0_local;
reg    llike_12_ce0_local;
reg   [9:0] llike_12_address0_local;
reg    llike_13_ce0_local;
reg   [9:0] llike_13_address0_local;
reg    llike_14_ce0_local;
reg   [9:0] llike_14_address0_local;
reg    llike_15_ce0_local;
reg   [9:0] llike_15_address0_local;
reg   [63:0] grp_fu_503_p0;
reg   [63:0] grp_fu_503_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage16;
wire   [1:0] tmp_s_fu_533_p4;
wire   [9:0] tmp_235_cast_fu_543_p3;
wire   [6:0] zext_ln15_fu_525_p1;
wire   [63:0] p_fu_585_p33;
wire   [63:0] p_39_fu_656_p33;
wire   [63:0] p_40_fu_727_p33;
wire   [63:0] p_41_fu_798_p33;
wire   [63:0] p_42_fu_869_p33;
wire   [63:0] p_43_fu_940_p33;
wire   [63:0] p_44_fu_1011_p33;
wire   [2:0] lshr_ln9_1_fu_1082_p4;
wire   [9:0] zext_ln41_1_fu_1091_p1;
wire   [9:0] add_ln41_fu_1095_p2;
wire   [63:0] p_45_fu_1125_p33;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_1196_p1;
wire   [63:0] bitcast_ln42_1_fu_1213_p1;
wire   [10:0] tmp_fu_1199_p4;
wire   [51:0] trunc_ln42_fu_1209_p1;
wire   [0:0] icmp_ln42_1_fu_1236_p2;
wire   [0:0] icmp_ln42_fu_1230_p2;
wire   [10:0] tmp_1_fu_1216_p4;
wire   [51:0] trunc_ln42_1_fu_1226_p1;
wire   [0:0] icmp_ln42_3_fu_1254_p2;
wire   [0:0] icmp_ln42_2_fu_1248_p2;
wire   [0:0] or_ln42_fu_1242_p2;
wire   [0:0] and_ln42_fu_1266_p2;
wire   [0:0] or_ln42_1_fu_1260_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln42_2_fu_1284_p1;
wire   [63:0] bitcast_ln42_3_fu_1301_p1;
wire   [10:0] tmp_3_fu_1287_p4;
wire   [51:0] trunc_ln42_2_fu_1297_p1;
wire   [0:0] icmp_ln42_5_fu_1324_p2;
wire   [0:0] icmp_ln42_4_fu_1318_p2;
wire   [10:0] tmp_4_fu_1304_p4;
wire   [51:0] trunc_ln42_3_fu_1314_p1;
wire   [0:0] icmp_ln42_7_fu_1342_p2;
wire   [0:0] icmp_ln42_6_fu_1336_p2;
wire   [0:0] or_ln42_3_fu_1348_p2;
wire   [0:0] or_ln42_2_fu_1330_p2;
wire   [0:0] and_ln42_2_fu_1354_p2;
wire   [7:0] zext_ln42_fu_1369_p1;
wire   [5:0] add_ln42_fu_1385_p2;
wire   [7:0] zext_ln42_1_fu_1390_p1;
wire   [7:0] min_s_15_fu_1372_p3;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln42_4_fu_1401_p1;
wire   [63:0] bitcast_ln42_5_fu_1418_p1;
wire   [10:0] tmp_6_fu_1404_p4;
wire   [51:0] trunc_ln42_4_fu_1414_p1;
wire   [0:0] icmp_ln42_9_fu_1441_p2;
wire   [0:0] icmp_ln42_8_fu_1435_p2;
wire   [10:0] tmp_7_fu_1421_p4;
wire   [51:0] trunc_ln42_5_fu_1431_p1;
wire   [0:0] icmp_ln42_11_fu_1459_p2;
wire   [0:0] icmp_ln42_10_fu_1453_p2;
wire   [0:0] or_ln42_5_fu_1465_p2;
wire   [0:0] or_ln42_4_fu_1447_p2;
wire   [0:0] and_ln42_4_fu_1471_p2;
wire   [63:0] bitcast_ln42_7_fu_1489_p1;
wire   [10:0] tmp_17_fu_1493_p4;
wire   [51:0] trunc_ln42_7_fu_1503_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln42_6_fu_1519_p1;
wire   [10:0] tmp_16_fu_1522_p4;
wire   [51:0] trunc_ln42_6_fu_1532_p1;
wire   [0:0] icmp_ln42_13_fu_1542_p2;
wire   [0:0] icmp_ln42_12_fu_1536_p2;
wire   [0:0] or_ln42_7_fu_1554_p2;
wire   [0:0] or_ln42_6_fu_1548_p2;
wire   [0:0] and_ln42_6_fu_1558_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln42_8_fu_1576_p1;
wire   [63:0] bitcast_ln42_9_fu_1593_p1;
wire   [10:0] tmp_19_fu_1579_p4;
wire   [51:0] trunc_ln42_8_fu_1589_p1;
wire   [0:0] icmp_ln42_17_fu_1616_p2;
wire   [0:0] icmp_ln42_16_fu_1610_p2;
wire   [10:0] tmp_20_fu_1596_p4;
wire   [51:0] trunc_ln42_9_fu_1606_p1;
wire   [0:0] icmp_ln42_19_fu_1634_p2;
wire   [0:0] icmp_ln42_18_fu_1628_p2;
wire   [0:0] or_ln42_9_fu_1640_p2;
wire   [0:0] or_ln42_8_fu_1622_p2;
wire   [0:0] and_ln42_8_fu_1646_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln42_10_fu_1664_p1;
wire   [63:0] bitcast_ln42_11_fu_1681_p1;
wire   [10:0] tmp_22_fu_1667_p4;
wire   [51:0] trunc_ln42_10_fu_1677_p1;
wire   [0:0] icmp_ln42_21_fu_1704_p2;
wire   [0:0] icmp_ln42_20_fu_1698_p2;
wire   [10:0] tmp_23_fu_1684_p4;
wire   [51:0] trunc_ln42_11_fu_1694_p1;
wire   [0:0] icmp_ln42_23_fu_1722_p2;
wire   [0:0] icmp_ln42_22_fu_1716_p2;
wire   [0:0] or_ln42_11_fu_1728_p2;
wire   [0:0] or_ln42_10_fu_1710_p2;
wire   [0:0] and_ln42_10_fu_1734_p2;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln42_12_fu_1752_p1;
wire   [63:0] bitcast_ln42_13_fu_1769_p1;
wire   [10:0] tmp_25_fu_1755_p4;
wire   [51:0] trunc_ln42_12_fu_1765_p1;
wire   [0:0] icmp_ln42_25_fu_1792_p2;
wire   [0:0] icmp_ln42_24_fu_1786_p2;
wire   [10:0] tmp_26_fu_1772_p4;
wire   [51:0] trunc_ln42_13_fu_1782_p1;
wire   [0:0] icmp_ln42_27_fu_1810_p2;
wire   [0:0] icmp_ln42_26_fu_1804_p2;
wire   [0:0] or_ln42_13_fu_1816_p2;
wire   [0:0] or_ln42_12_fu_1798_p2;
wire   [0:0] and_ln42_12_fu_1822_p2;
wire   [5:0] add_ln42_1_fu_1850_p2;
wire   [7:0] zext_ln42_2_fu_1855_p1;
wire   [5:0] add_ln42_2_fu_1865_p2;
wire   [7:0] zext_ln42_3_fu_1870_p1;
wire   [7:0] min_s_17_fu_1859_p3;
wire   [5:0] add_ln42_3_fu_1881_p2;
wire   [7:0] zext_ln42_4_fu_1886_p1;
wire   [7:0] min_s_18_fu_1874_p3;
wire   [5:0] add_ln42_4_fu_1897_p2;
wire   [7:0] zext_ln42_5_fu_1902_p1;
wire   [7:0] min_s_19_fu_1890_p3;
wire   [5:0] add_ln42_5_fu_1913_p2;
wire   [7:0] zext_ln42_6_fu_1918_p1;
wire   [7:0] min_s_20_fu_1906_p3;
wire   [63:0] bitcast_ln42_14_fu_1930_p1;
wire   [63:0] bitcast_ln42_15_fu_1947_p1;
wire   [10:0] tmp_28_fu_1933_p4;
wire   [51:0] trunc_ln42_14_fu_1943_p1;
wire   [0:0] icmp_ln42_29_fu_1970_p2;
wire   [0:0] icmp_ln42_28_fu_1964_p2;
wire   [10:0] tmp_29_fu_1950_p4;
wire   [51:0] trunc_ln42_15_fu_1960_p1;
wire   [0:0] icmp_ln42_31_fu_1988_p2;
wire   [0:0] icmp_ln42_30_fu_1982_p2;
wire   [0:0] or_ln42_15_fu_1994_p2;
wire   [0:0] or_ln42_14_fu_1976_p2;
wire   [0:0] and_ln42_14_fu_2000_p2;
wire   [0:0] and_ln42_15_fu_2006_p2;
wire   [5:0] trunc_ln42_16_fu_2017_p1;
wire   [7:0] zext_ln42_7_fu_2020_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] p_fu_585_p1;
wire   [3:0] p_fu_585_p3;
wire   [3:0] p_fu_585_p5;
wire   [3:0] p_fu_585_p7;
wire   [3:0] p_fu_585_p9;
wire   [3:0] p_fu_585_p11;
wire   [3:0] p_fu_585_p13;
wire   [3:0] p_fu_585_p15;
wire  signed [3:0] p_fu_585_p17;
wire  signed [3:0] p_fu_585_p19;
wire  signed [3:0] p_fu_585_p21;
wire  signed [3:0] p_fu_585_p23;
wire  signed [3:0] p_fu_585_p25;
wire  signed [3:0] p_fu_585_p27;
wire  signed [3:0] p_fu_585_p29;
wire  signed [3:0] p_fu_585_p31;
wire  signed [3:0] p_39_fu_656_p1;
wire   [3:0] p_39_fu_656_p3;
wire   [3:0] p_39_fu_656_p5;
wire   [3:0] p_39_fu_656_p7;
wire   [3:0] p_39_fu_656_p9;
wire   [3:0] p_39_fu_656_p11;
wire   [3:0] p_39_fu_656_p13;
wire   [3:0] p_39_fu_656_p15;
wire   [3:0] p_39_fu_656_p17;
wire  signed [3:0] p_39_fu_656_p19;
wire  signed [3:0] p_39_fu_656_p21;
wire  signed [3:0] p_39_fu_656_p23;
wire  signed [3:0] p_39_fu_656_p25;
wire  signed [3:0] p_39_fu_656_p27;
wire  signed [3:0] p_39_fu_656_p29;
wire  signed [3:0] p_39_fu_656_p31;
wire  signed [3:0] p_40_fu_727_p1;
wire  signed [3:0] p_40_fu_727_p3;
wire   [3:0] p_40_fu_727_p5;
wire   [3:0] p_40_fu_727_p7;
wire   [3:0] p_40_fu_727_p9;
wire   [3:0] p_40_fu_727_p11;
wire   [3:0] p_40_fu_727_p13;
wire   [3:0] p_40_fu_727_p15;
wire   [3:0] p_40_fu_727_p17;
wire   [3:0] p_40_fu_727_p19;
wire  signed [3:0] p_40_fu_727_p21;
wire  signed [3:0] p_40_fu_727_p23;
wire  signed [3:0] p_40_fu_727_p25;
wire  signed [3:0] p_40_fu_727_p27;
wire  signed [3:0] p_40_fu_727_p29;
wire  signed [3:0] p_40_fu_727_p31;
wire  signed [3:0] p_41_fu_798_p1;
wire  signed [3:0] p_41_fu_798_p3;
wire  signed [3:0] p_41_fu_798_p5;
wire   [3:0] p_41_fu_798_p7;
wire   [3:0] p_41_fu_798_p9;
wire   [3:0] p_41_fu_798_p11;
wire   [3:0] p_41_fu_798_p13;
wire   [3:0] p_41_fu_798_p15;
wire   [3:0] p_41_fu_798_p17;
wire   [3:0] p_41_fu_798_p19;
wire   [3:0] p_41_fu_798_p21;
wire  signed [3:0] p_41_fu_798_p23;
wire  signed [3:0] p_41_fu_798_p25;
wire  signed [3:0] p_41_fu_798_p27;
wire  signed [3:0] p_41_fu_798_p29;
wire  signed [3:0] p_41_fu_798_p31;
wire  signed [3:0] p_42_fu_869_p1;
wire  signed [3:0] p_42_fu_869_p3;
wire  signed [3:0] p_42_fu_869_p5;
wire  signed [3:0] p_42_fu_869_p7;
wire   [3:0] p_42_fu_869_p9;
wire   [3:0] p_42_fu_869_p11;
wire   [3:0] p_42_fu_869_p13;
wire   [3:0] p_42_fu_869_p15;
wire   [3:0] p_42_fu_869_p17;
wire   [3:0] p_42_fu_869_p19;
wire   [3:0] p_42_fu_869_p21;
wire   [3:0] p_42_fu_869_p23;
wire  signed [3:0] p_42_fu_869_p25;
wire  signed [3:0] p_42_fu_869_p27;
wire  signed [3:0] p_42_fu_869_p29;
wire  signed [3:0] p_42_fu_869_p31;
wire  signed [3:0] p_43_fu_940_p1;
wire  signed [3:0] p_43_fu_940_p3;
wire  signed [3:0] p_43_fu_940_p5;
wire  signed [3:0] p_43_fu_940_p7;
wire  signed [3:0] p_43_fu_940_p9;
wire   [3:0] p_43_fu_940_p11;
wire   [3:0] p_43_fu_940_p13;
wire   [3:0] p_43_fu_940_p15;
wire   [3:0] p_43_fu_940_p17;
wire   [3:0] p_43_fu_940_p19;
wire   [3:0] p_43_fu_940_p21;
wire   [3:0] p_43_fu_940_p23;
wire   [3:0] p_43_fu_940_p25;
wire  signed [3:0] p_43_fu_940_p27;
wire  signed [3:0] p_43_fu_940_p29;
wire  signed [3:0] p_43_fu_940_p31;
wire  signed [3:0] p_44_fu_1011_p1;
wire  signed [3:0] p_44_fu_1011_p3;
wire  signed [3:0] p_44_fu_1011_p5;
wire  signed [3:0] p_44_fu_1011_p7;
wire  signed [3:0] p_44_fu_1011_p9;
wire  signed [3:0] p_44_fu_1011_p11;
wire   [3:0] p_44_fu_1011_p13;
wire   [3:0] p_44_fu_1011_p15;
wire   [3:0] p_44_fu_1011_p17;
wire   [3:0] p_44_fu_1011_p19;
wire   [3:0] p_44_fu_1011_p21;
wire   [3:0] p_44_fu_1011_p23;
wire   [3:0] p_44_fu_1011_p25;
wire   [3:0] p_44_fu_1011_p27;
wire  signed [3:0] p_44_fu_1011_p29;
wire  signed [3:0] p_44_fu_1011_p31;
wire  signed [3:0] p_45_fu_1125_p1;
wire  signed [3:0] p_45_fu_1125_p3;
wire  signed [3:0] p_45_fu_1125_p5;
wire  signed [3:0] p_45_fu_1125_p7;
wire  signed [3:0] p_45_fu_1125_p9;
wire  signed [3:0] p_45_fu_1125_p11;
wire  signed [3:0] p_45_fu_1125_p13;
wire   [3:0] p_45_fu_1125_p15;
wire   [3:0] p_45_fu_1125_p17;
wire   [3:0] p_45_fu_1125_p19;
wire   [3:0] p_45_fu_1125_p21;
wire   [3:0] p_45_fu_1125_p23;
wire   [3:0] p_45_fu_1125_p25;
wire   [3:0] p_45_fu_1125_p27;
wire   [3:0] p_45_fu_1125_p29;
wire  signed [3:0] p_45_fu_1125_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_142 = 64'd0;
#0 min_s_fu_146 = 8'd0;
#0 min_s_12_fu_150 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U50(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_fu_585_p33),.sel(trunc_ln15_reg_2074),.dout(p_fu_585_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U51(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_39_fu_656_p33),.sel(trunc_ln15_reg_2074),.dout(p_39_fu_656_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U52(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_40_fu_727_p33),.sel(trunc_ln15_reg_2074),.dout(p_40_fu_727_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U53(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_41_fu_798_p33),.sel(trunc_ln15_reg_2074),.dout(p_41_fu_798_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'hD ),.din1_WIDTH( 64 ),.CASE2( 4'hE ),.din2_WIDTH( 64 ),.CASE3( 4'hF ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.CASE13( 4'h9 ),.din13_WIDTH( 64 ),.CASE14( 4'hA ),.din14_WIDTH( 64 ),.CASE15( 4'hB ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U54(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_42_fu_869_p33),.sel(trunc_ln15_reg_2074),.dout(p_42_fu_869_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hB ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'hD ),.din2_WIDTH( 64 ),.CASE3( 4'hE ),.din3_WIDTH( 64 ),.CASE4( 4'hF ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.CASE11( 4'h6 ),.din11_WIDTH( 64 ),.CASE12( 4'h7 ),.din12_WIDTH( 64 ),.CASE13( 4'h8 ),.din13_WIDTH( 64 ),.CASE14( 4'h9 ),.din14_WIDTH( 64 ),.CASE15( 4'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U55(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_43_fu_940_p33),.sel(trunc_ln15_reg_2074),.dout(p_43_fu_940_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'hD ),.din3_WIDTH( 64 ),.CASE4( 4'hE ),.din4_WIDTH( 64 ),.CASE5( 4'hF ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.CASE13( 4'h7 ),.din13_WIDTH( 64 ),.CASE14( 4'h8 ),.din14_WIDTH( 64 ),.CASE15( 4'h9 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U56(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_44_fu_1011_p33),.sel(trunc_ln15_reg_2074),.dout(p_44_fu_1011_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'hD ),.din4_WIDTH( 64 ),.CASE5( 4'hE ),.din5_WIDTH( 64 ),.CASE6( 4'hF ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.CASE11( 4'h4 ),.din11_WIDTH( 64 ),.CASE12( 4'h5 ),.din12_WIDTH( 64 ),.CASE13( 4'h6 ),.din13_WIDTH( 64 ),.CASE14( 4'h7 ),.din14_WIDTH( 64 ),.CASE15( 4'h8 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U57(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_45_fu_1125_p33),.sel(trunc_ln15_reg_2074),.dout(p_45_fu_1125_p35));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_142 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_2172_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_142 <= min_p_100_fu_2011_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_12_fu_150 <= 6'd1;
    end else if (((tmp_8_reg_2172 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_12_fu_150 <= add_ln40_1_fu_1840_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_146 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_2172_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_146 <= min_s_22_fu_2024_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_reg_2166 <= add_ln40_fu_571_p2;
        add_ln40_reg_2166_pp0_iter1_reg <= add_ln40_reg_2166;
        s_reg_2062 <= ap_sig_allocacmp_s;
        tmp_8_reg_2172 <= add_ln40_fu_571_p2[32'd6];
        tmp_8_reg_2172_pp0_iter1_reg <= tmp_8_reg_2172;
        trunc_ln15_reg_2074 <= trunc_ln15_fu_529_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln42_11_reg_2398 <= and_ln42_11_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln42_13_reg_2411 <= and_ln42_13_fu_1828_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_2319 <= and_ln42_1_fu_1272_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln42_3_reg_2332 <= and_ln42_3_fu_1360_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln42_5_reg_2350 <= and_ln42_5_fu_1477_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        and_ln42_7_reg_2372 <= and_ln42_7_fu_1564_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln42_9_reg_2385 <= and_ln42_9_fu_1652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln42_14_reg_2362 <= icmp_ln42_14_fu_1507_p2;
        icmp_ln42_15_reg_2367 <= icmp_ln42_15_fu_1513_p2;
        min_p_90_reg_2356 <= min_p_90_fu_1483_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_84_reg_2305 <= min_p_1_fu_142;
        p_45_reg_2312 <= p_45_fu_1125_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_86_reg_2325 <= min_p_86_fu_1278_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        min_p_88_reg_2338 <= min_p_88_fu_1379_p3;
        min_s_16_reg_2345 <= min_s_16_fu_1394_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_92_reg_2378 <= min_p_92_fu_1570_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_94_reg_2391 <= min_p_94_fu_1658_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_96_reg_2404 <= min_p_96_fu_1746_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_98_reg_2417 <= min_p_98_fu_1834_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_21_reg_2424 <= min_s_21_fu_1922_p3;
        tmp_30_reg_2429 <= grp_fu_1046_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_39_reg_2183 <= p_39_fu_656_p35;
        p_40_reg_2190 <= p_40_fu_727_p35;
        p_41_reg_2197 <= p_41_fu_798_p35;
        p_42_reg_2204 <= p_42_fu_869_p35;
        p_43_reg_2211 <= p_43_fu_940_p35;
        p_44_reg_2218 <= p_44_fu_1011_p35;
        p_reg_2176 <= p_fu_585_p35;
    end
end
always @ (*) begin
    if (((tmp_8_reg_2172 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_2172 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_12_fu_150;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_503_p0 = p_45_reg_2312;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_503_p0 = p_44_reg_2218;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_503_p0 = p_43_reg_2211;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_503_p0 = p_42_reg_2204;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_503_p0 = p_41_reg_2197;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_503_p0 = p_40_reg_2190;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_503_p0 = p_39_reg_2183;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_503_p0 = p_reg_2176;
        end else begin
            grp_fu_503_p0 = 'bx;
        end
    end else begin
        grp_fu_503_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_503_p1 = min_p_98_fu_1834_p3;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_503_p1 = min_p_96_fu_1746_p3;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_503_p1 = min_p_94_fu_1658_p3;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_503_p1 = min_p_92_fu_1570_p3;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_503_p1 = min_p_90_fu_1483_p3;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_503_p1 = min_p_88_fu_1379_p3;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_503_p1 = min_p_86_fu_1278_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_503_p1 = min_p_1_fu_142;
        end else begin
            grp_fu_503_p1 = 'bx;
        end
    end else begin
        grp_fu_503_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_10_address0_local = 'bx;
        end
    end else begin
        llike_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_11_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_11_address0_local = 'bx;
        end
    end else begin
        llike_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_12_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_12_address0_local = 'bx;
        end
    end else begin
        llike_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_13_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_13_address0_local = 'bx;
        end
    end else begin
        llike_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_14_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_14_address0_local = 'bx;
        end
    end else begin
        llike_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_15_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_15_address0_local = 'bx;
        end
    end else begin
        llike_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_8_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_8_address0_local = 'bx;
        end
    end else begin
        llike_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_9_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_9_address0_local = 'bx;
        end
    end else begin
        llike_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln41_2_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln41_fu_551_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_8_reg_2172 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_8_out_ap_vld = 1'b1;
    end else begin
        min_s_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_1_fu_1840_p2 = (s_reg_2062 + 6'd8);
assign add_ln40_fu_571_p2 = (zext_ln15_fu_525_p1 + 7'd7);
assign add_ln41_fu_1095_p2 = ($signed(zext_ln41_1_fu_1091_p1) + $signed(10'd556));
assign add_ln42_1_fu_1850_p2 = (s_reg_2062 + 6'd2);
assign add_ln42_2_fu_1865_p2 = (s_reg_2062 + 6'd3);
assign add_ln42_3_fu_1881_p2 = (s_reg_2062 + 6'd4);
assign add_ln42_4_fu_1897_p2 = (s_reg_2062 + 6'd5);
assign add_ln42_5_fu_1913_p2 = (s_reg_2062 + 6'd6);
assign add_ln42_fu_1385_p2 = (s_reg_2062 + 6'd1);
assign and_ln42_10_fu_1734_p2 = (or_ln42_11_fu_1728_p2 & or_ln42_10_fu_1710_p2);
assign and_ln42_11_fu_1740_p2 = (grp_fu_1046_p_dout0 & and_ln42_10_fu_1734_p2);
assign and_ln42_12_fu_1822_p2 = (or_ln42_13_fu_1816_p2 & or_ln42_12_fu_1798_p2);
assign and_ln42_13_fu_1828_p2 = (grp_fu_1046_p_dout0 & and_ln42_12_fu_1822_p2);
assign and_ln42_14_fu_2000_p2 = (or_ln42_15_fu_1994_p2 & or_ln42_14_fu_1976_p2);
assign and_ln42_15_fu_2006_p2 = (tmp_30_reg_2429 & and_ln42_14_fu_2000_p2);
assign and_ln42_1_fu_1272_p2 = (or_ln42_1_fu_1260_p2 & and_ln42_fu_1266_p2);
assign and_ln42_2_fu_1354_p2 = (or_ln42_3_fu_1348_p2 & or_ln42_2_fu_1330_p2);
assign and_ln42_3_fu_1360_p2 = (grp_fu_1046_p_dout0 & and_ln42_2_fu_1354_p2);
assign and_ln42_4_fu_1471_p2 = (or_ln42_5_fu_1465_p2 & or_ln42_4_fu_1447_p2);
assign and_ln42_5_fu_1477_p2 = (grp_fu_1046_p_dout0 & and_ln42_4_fu_1471_p2);
assign and_ln42_6_fu_1558_p2 = (or_ln42_7_fu_1554_p2 & or_ln42_6_fu_1548_p2);
assign and_ln42_7_fu_1564_p2 = (grp_fu_1046_p_dout0 & and_ln42_6_fu_1558_p2);
assign and_ln42_8_fu_1646_p2 = (or_ln42_9_fu_1640_p2 & or_ln42_8_fu_1622_p2);
assign and_ln42_9_fu_1652_p2 = (grp_fu_1046_p_dout0 & and_ln42_8_fu_1646_p2);
assign and_ln42_fu_1266_p2 = (or_ln42_fu_1242_p2 & grp_fu_1046_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_10_fu_1664_p1 = p_43_reg_2211;
assign bitcast_ln42_11_fu_1681_p1 = min_p_94_reg_2391;
assign bitcast_ln42_12_fu_1752_p1 = p_44_reg_2218;
assign bitcast_ln42_13_fu_1769_p1 = min_p_96_reg_2404;
assign bitcast_ln42_14_fu_1930_p1 = p_45_reg_2312;
assign bitcast_ln42_15_fu_1947_p1 = min_p_98_reg_2417;
assign bitcast_ln42_1_fu_1213_p1 = min_p_84_reg_2305;
assign bitcast_ln42_2_fu_1284_p1 = p_39_reg_2183;
assign bitcast_ln42_3_fu_1301_p1 = min_p_86_reg_2325;
assign bitcast_ln42_4_fu_1401_p1 = p_40_reg_2190;
assign bitcast_ln42_5_fu_1418_p1 = min_p_88_reg_2338;
assign bitcast_ln42_6_fu_1519_p1 = p_41_reg_2197;
assign bitcast_ln42_7_fu_1489_p1 = min_p_90_fu_1483_p3;
assign bitcast_ln42_8_fu_1576_p1 = p_42_reg_2204;
assign bitcast_ln42_9_fu_1593_p1 = min_p_92_reg_2378;
assign bitcast_ln42_fu_1196_p1 = p_reg_2176;
assign grp_fu_1046_p_ce = 1'b1;
assign grp_fu_1046_p_din0 = grp_fu_503_p0;
assign grp_fu_1046_p_din1 = grp_fu_503_p1;
assign grp_fu_1046_p_opcode = 5'd4;
assign icmp_ln42_10_fu_1453_p2 = ((tmp_7_fu_1421_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_11_fu_1459_p2 = ((trunc_ln42_5_fu_1431_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_12_fu_1536_p2 = ((tmp_16_fu_1522_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_13_fu_1542_p2 = ((trunc_ln42_6_fu_1532_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_14_fu_1507_p2 = ((tmp_17_fu_1493_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_15_fu_1513_p2 = ((trunc_ln42_7_fu_1503_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_16_fu_1610_p2 = ((tmp_19_fu_1579_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_17_fu_1616_p2 = ((trunc_ln42_8_fu_1589_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_18_fu_1628_p2 = ((tmp_20_fu_1596_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_19_fu_1634_p2 = ((trunc_ln42_9_fu_1606_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_1236_p2 = ((trunc_ln42_fu_1209_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_20_fu_1698_p2 = ((tmp_22_fu_1667_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_21_fu_1704_p2 = ((trunc_ln42_10_fu_1677_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_22_fu_1716_p2 = ((tmp_23_fu_1684_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_23_fu_1722_p2 = ((trunc_ln42_11_fu_1694_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_24_fu_1786_p2 = ((tmp_25_fu_1755_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_25_fu_1792_p2 = ((trunc_ln42_12_fu_1765_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_26_fu_1804_p2 = ((tmp_26_fu_1772_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_27_fu_1810_p2 = ((trunc_ln42_13_fu_1782_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_28_fu_1964_p2 = ((tmp_28_fu_1933_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_29_fu_1970_p2 = ((trunc_ln42_14_fu_1943_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_1248_p2 = ((tmp_1_fu_1216_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_30_fu_1982_p2 = ((tmp_29_fu_1950_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_31_fu_1988_p2 = ((trunc_ln42_15_fu_1960_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_1254_p2 = ((trunc_ln42_1_fu_1226_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_1318_p2 = ((tmp_3_fu_1287_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_1324_p2 = ((trunc_ln42_2_fu_1297_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_1336_p2 = ((tmp_4_fu_1304_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_1342_p2 = ((trunc_ln42_3_fu_1314_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_8_fu_1435_p2 = ((tmp_6_fu_1404_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_9_fu_1441_p2 = ((trunc_ln42_4_fu_1414_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_1230_p2 = ((tmp_fu_1199_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = llike_10_address0_local;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = llike_11_address0_local;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = llike_12_address0_local;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = llike_13_address0_local;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = llike_14_address0_local;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = llike_15_address0_local;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = llike_8_address0_local;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = llike_9_address0_local;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_1_fu_1082_p4 = {{add_ln40_reg_2166[6:4]}};
assign min_p_100_fu_2011_p3 = ((and_ln42_15_fu_2006_p2[0:0] == 1'b1) ? p_45_reg_2312 : min_p_98_reg_2417);
assign min_p_86_fu_1278_p3 = ((and_ln42_1_reg_2319[0:0] == 1'b1) ? p_reg_2176 : min_p_84_reg_2305);
assign min_p_88_fu_1379_p3 = ((and_ln42_3_reg_2332[0:0] == 1'b1) ? p_39_reg_2183 : min_p_86_reg_2325);
assign min_p_90_fu_1483_p3 = ((and_ln42_5_reg_2350[0:0] == 1'b1) ? p_40_reg_2190 : min_p_88_reg_2338);
assign min_p_92_fu_1570_p3 = ((and_ln42_7_reg_2372[0:0] == 1'b1) ? p_41_reg_2197 : min_p_90_reg_2356);
assign min_p_94_fu_1658_p3 = ((and_ln42_9_reg_2385[0:0] == 1'b1) ? p_42_reg_2204 : min_p_92_reg_2378);
assign min_p_96_fu_1746_p3 = ((and_ln42_11_reg_2398[0:0] == 1'b1) ? p_43_reg_2211 : min_p_94_reg_2391);
assign min_p_98_fu_1834_p3 = ((and_ln42_13_reg_2411[0:0] == 1'b1) ? p_44_reg_2218 : min_p_96_reg_2404);
assign min_s_15_fu_1372_p3 = ((and_ln42_1_reg_2319[0:0] == 1'b1) ? zext_ln42_fu_1369_p1 : min_s_fu_146);
assign min_s_16_fu_1394_p3 = ((and_ln42_3_reg_2332[0:0] == 1'b1) ? zext_ln42_1_fu_1390_p1 : min_s_15_fu_1372_p3);
assign min_s_17_fu_1859_p3 = ((and_ln42_5_reg_2350[0:0] == 1'b1) ? zext_ln42_2_fu_1855_p1 : min_s_16_reg_2345);
assign min_s_18_fu_1874_p3 = ((and_ln42_7_reg_2372[0:0] == 1'b1) ? zext_ln42_3_fu_1870_p1 : min_s_17_fu_1859_p3);
assign min_s_19_fu_1890_p3 = ((and_ln42_9_reg_2385[0:0] == 1'b1) ? zext_ln42_4_fu_1886_p1 : min_s_18_fu_1874_p3);
assign min_s_20_fu_1906_p3 = ((and_ln42_11_reg_2398[0:0] == 1'b1) ? zext_ln42_5_fu_1902_p1 : min_s_19_fu_1890_p3);
assign min_s_21_fu_1922_p3 = ((and_ln42_13_reg_2411[0:0] == 1'b1) ? zext_ln42_6_fu_1918_p1 : min_s_20_fu_1906_p3);
assign min_s_22_fu_2024_p3 = ((and_ln42_15_fu_2006_p2[0:0] == 1'b1) ? zext_ln42_7_fu_2020_p1 : min_s_21_reg_2424);
assign min_s_8_out = ((and_ln42_13_reg_2411[0:0] == 1'b1) ? zext_ln42_6_fu_1918_p1 : min_s_20_fu_1906_p3);
assign or_ln42_10_fu_1710_p2 = (icmp_ln42_21_fu_1704_p2 | icmp_ln42_20_fu_1698_p2);
assign or_ln42_11_fu_1728_p2 = (icmp_ln42_23_fu_1722_p2 | icmp_ln42_22_fu_1716_p2);
assign or_ln42_12_fu_1798_p2 = (icmp_ln42_25_fu_1792_p2 | icmp_ln42_24_fu_1786_p2);
assign or_ln42_13_fu_1816_p2 = (icmp_ln42_27_fu_1810_p2 | icmp_ln42_26_fu_1804_p2);
assign or_ln42_14_fu_1976_p2 = (icmp_ln42_29_fu_1970_p2 | icmp_ln42_28_fu_1964_p2);
assign or_ln42_15_fu_1994_p2 = (icmp_ln42_31_fu_1988_p2 | icmp_ln42_30_fu_1982_p2);
assign or_ln42_1_fu_1260_p2 = (icmp_ln42_3_fu_1254_p2 | icmp_ln42_2_fu_1248_p2);
assign or_ln42_2_fu_1330_p2 = (icmp_ln42_5_fu_1324_p2 | icmp_ln42_4_fu_1318_p2);
assign or_ln42_3_fu_1348_p2 = (icmp_ln42_7_fu_1342_p2 | icmp_ln42_6_fu_1336_p2);
assign or_ln42_4_fu_1447_p2 = (icmp_ln42_9_fu_1441_p2 | icmp_ln42_8_fu_1435_p2);
assign or_ln42_5_fu_1465_p2 = (icmp_ln42_11_fu_1459_p2 | icmp_ln42_10_fu_1453_p2);
assign or_ln42_6_fu_1548_p2 = (icmp_ln42_13_fu_1542_p2 | icmp_ln42_12_fu_1536_p2);
assign or_ln42_7_fu_1554_p2 = (icmp_ln42_15_reg_2367 | icmp_ln42_14_reg_2362);
assign or_ln42_8_fu_1622_p2 = (icmp_ln42_17_fu_1616_p2 | icmp_ln42_16_fu_1610_p2);
assign or_ln42_9_fu_1640_p2 = (icmp_ln42_19_fu_1634_p2 | icmp_ln42_18_fu_1628_p2);
assign or_ln42_fu_1242_p2 = (icmp_ln42_fu_1230_p2 | icmp_ln42_1_fu_1236_p2);
assign p_39_fu_656_p33 = 'bx;
assign p_40_fu_727_p33 = 'bx;
assign p_41_fu_798_p33 = 'bx;
assign p_42_fu_869_p33 = 'bx;
assign p_43_fu_940_p33 = 'bx;
assign p_44_fu_1011_p33 = 'bx;
assign p_45_fu_1125_p33 = 'bx;
assign p_fu_585_p33 = 'bx;
assign tmp_16_fu_1522_p4 = {{bitcast_ln42_6_fu_1519_p1[62:52]}};
assign tmp_17_fu_1493_p4 = {{bitcast_ln42_7_fu_1489_p1[62:52]}};
assign tmp_19_fu_1579_p4 = {{bitcast_ln42_8_fu_1576_p1[62:52]}};
assign tmp_1_fu_1216_p4 = {{bitcast_ln42_1_fu_1213_p1[62:52]}};
assign tmp_20_fu_1596_p4 = {{bitcast_ln42_9_fu_1593_p1[62:52]}};
assign tmp_22_fu_1667_p4 = {{bitcast_ln42_10_fu_1664_p1[62:52]}};
assign tmp_235_cast_fu_543_p3 = {{8'd139}, {tmp_s_fu_533_p4}};
assign tmp_23_fu_1684_p4 = {{bitcast_ln42_11_fu_1681_p1[62:52]}};
assign tmp_25_fu_1755_p4 = {{bitcast_ln42_12_fu_1752_p1[62:52]}};
assign tmp_26_fu_1772_p4 = {{bitcast_ln42_13_fu_1769_p1[62:52]}};
assign tmp_28_fu_1933_p4 = {{bitcast_ln42_14_fu_1930_p1[62:52]}};
assign tmp_29_fu_1950_p4 = {{bitcast_ln42_15_fu_1947_p1[62:52]}};
assign tmp_3_fu_1287_p4 = {{bitcast_ln42_2_fu_1284_p1[62:52]}};
assign tmp_4_fu_1304_p4 = {{bitcast_ln42_3_fu_1301_p1[62:52]}};
assign tmp_6_fu_1404_p4 = {{bitcast_ln42_4_fu_1401_p1[62:52]}};
assign tmp_7_fu_1421_p4 = {{bitcast_ln42_5_fu_1418_p1[62:52]}};
assign tmp_fu_1199_p4 = {{bitcast_ln42_fu_1196_p1[62:52]}};
assign tmp_s_fu_533_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign trunc_ln15_fu_529_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln42_10_fu_1677_p1 = bitcast_ln42_10_fu_1664_p1[51:0];
assign trunc_ln42_11_fu_1694_p1 = bitcast_ln42_11_fu_1681_p1[51:0];
assign trunc_ln42_12_fu_1765_p1 = bitcast_ln42_12_fu_1752_p1[51:0];
assign trunc_ln42_13_fu_1782_p1 = bitcast_ln42_13_fu_1769_p1[51:0];
assign trunc_ln42_14_fu_1943_p1 = bitcast_ln42_14_fu_1930_p1[51:0];
assign trunc_ln42_15_fu_1960_p1 = bitcast_ln42_15_fu_1947_p1[51:0];
assign trunc_ln42_16_fu_2017_p1 = add_ln40_reg_2166_pp0_iter1_reg[5:0];
assign trunc_ln42_1_fu_1226_p1 = bitcast_ln42_1_fu_1213_p1[51:0];
assign trunc_ln42_2_fu_1297_p1 = bitcast_ln42_2_fu_1284_p1[51:0];
assign trunc_ln42_3_fu_1314_p1 = bitcast_ln42_3_fu_1301_p1[51:0];
assign trunc_ln42_4_fu_1414_p1 = bitcast_ln42_4_fu_1401_p1[51:0];
assign trunc_ln42_5_fu_1431_p1 = bitcast_ln42_5_fu_1418_p1[51:0];
assign trunc_ln42_6_fu_1532_p1 = bitcast_ln42_6_fu_1519_p1[51:0];
assign trunc_ln42_7_fu_1503_p1 = bitcast_ln42_7_fu_1489_p1[51:0];
assign trunc_ln42_8_fu_1589_p1 = bitcast_ln42_8_fu_1576_p1[51:0];
assign trunc_ln42_9_fu_1606_p1 = bitcast_ln42_9_fu_1593_p1[51:0];
assign trunc_ln42_fu_1209_p1 = bitcast_ln42_fu_1196_p1[51:0];
assign zext_ln15_fu_525_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_1091_p1 = lshr_ln9_1_fu_1082_p4;
assign zext_ln41_2_fu_1101_p1 = add_ln41_fu_1095_p2;
assign zext_ln41_fu_551_p1 = tmp_235_cast_fu_543_p3;
assign zext_ln42_1_fu_1390_p1 = add_ln42_fu_1385_p2;
assign zext_ln42_2_fu_1855_p1 = add_ln42_1_fu_1850_p2;
assign zext_ln42_3_fu_1870_p1 = add_ln42_2_fu_1865_p2;
assign zext_ln42_4_fu_1886_p1 = add_ln42_3_fu_1881_p2;
assign zext_ln42_5_fu_1902_p1 = add_ln42_4_fu_1897_p2;
assign zext_ln42_6_fu_1918_p1 = add_ln42_5_fu_1913_p2;
assign zext_ln42_7_fu_2020_p1 = trunc_ln42_16_fu_2017_p1;
assign zext_ln42_fu_1369_p1 = s_reg_2062;
endmodule 