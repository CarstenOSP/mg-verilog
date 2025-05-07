module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,q_in,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_13_out,q_in_13_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] empty;
input  [63:0] q_in;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [6:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [6:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
input  [63:0] tmp_end;
output  [10:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [10:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [63:0] q_in_13_out;
output   q_in_13_out_ap_vld;
reg ap_idle;
reg q_in_13_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [0:0] icmp_ln39_reg_1754;
reg    ap_condition_exit_pp0_iter0_stage28;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] q_in_3_reg_551;
reg   [63:0] q_in_5_reg_563;
reg   [63:0] q_in_7_reg_577;
reg   [63:0] q_in_9_reg_591;
reg   [63:0] q_in_11_reg_605;
reg   [63:0] q_in_13_reg_619;
reg   [63:0] q_in_15_reg_633;
reg   [7:0] reg_666;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_670;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_688_p1;
reg   [63:0] zext_ln18_cast_reg_1610;
reg   [63:0] e_1_reg_1615;
reg   [7:0] level_addr_reg_1627;
wire   [0:0] trunc_ln11_fu_710_p1;
reg   [0:0] trunc_ln11_reg_1632;
wire   [0:0] icmp_ln40_fu_730_p2;
reg   [0:0] icmp_ln40_reg_1644;
wire   [7:0] tmp_dst_fu_743_p3;
reg   [7:0] tmp_dst_reg_1658;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln40_1_fu_771_p2;
reg   [0:0] icmp_ln40_1_reg_1665;
wire   [0:0] icmp_ln40_2_fu_797_p2;
reg   [0:0] icmp_ln40_2_reg_1679;
reg   [7:0] level_addr_1_reg_1693;
wire   [7:0] tmp_dst_1_fu_817_p3;
reg   [7:0] tmp_dst_1_reg_1698;
wire   [7:0] tmp_dst_2_fu_832_p3;
reg   [7:0] tmp_dst_2_reg_1705;
wire   [0:0] icmp_ln40_3_fu_860_p2;
reg   [0:0] icmp_ln40_3_reg_1712;
wire   [0:0] icmp_ln40_4_fu_886_p2;
reg   [0:0] icmp_ln40_4_reg_1726;
reg   [10:0] lshr_ln16_6_reg_1740;
wire   [0:0] icmp_ln40_5_fu_906_p2;
reg   [0:0] icmp_ln40_5_reg_1745;
reg   [10:0] lshr_ln3_reg_1749;
wire   [0:0] icmp_ln39_fu_944_p2;
wire   [0:0] icmp_ln40_6_fu_950_p2;
reg   [0:0] icmp_ln40_6_reg_1758;
reg   [10:0] lshr_ln16_7_reg_1762;
wire   [0:0] icmp_ln40_7_fu_970_p2;
reg   [0:0] icmp_ln40_7_reg_1767;
reg   [0:0] icmp_ln40_7_reg_1767_pp0_iter1_reg;
reg   [63:0] q_in_18_reg_1771;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] grp_fu_660_p2;
reg   [0:0] icmp_ln44_reg_1778;
wire   [0:0] icmp_ln48_fu_989_p2;
reg   [0:0] icmp_ln48_reg_1782;
wire   [7:0] tmp_dst_3_fu_1003_p3;
reg   [7:0] tmp_dst_3_reg_1787;
wire   [7:0] tmp_dst_4_fu_1018_p3;
reg   [7:0] tmp_dst_4_reg_1794;
wire   [63:0] zext_ln16_1_fu_1077_p1;
wire   [7:0] tmp_dst_5_fu_1089_p3;
reg   [7:0] tmp_dst_5_reg_1829;
wire   [7:0] tmp_dst_6_fu_1104_p3;
reg   [7:0] tmp_dst_6_reg_1836;
reg   [3:0] level_counts_addr_reg_1853;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] trunc_ln51_fu_1121_p1;
reg   [7:0] trunc_ln51_reg_1858;
wire   [7:0] tmp_dst_7_fu_1133_p3;
reg   [7:0] tmp_dst_7_reg_1864;
reg   [7:0] level_addr_2_reg_1871;
reg   [0:0] icmp_ln44_1_reg_1876;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln48_1_fu_1144_p2;
reg   [0:0] icmp_ln48_1_reg_1880;
wire   [63:0] zext_ln16_3_fu_1187_p1;
reg   [3:0] level_counts_addr_1_reg_1893;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [7:0] trunc_ln51_1_fu_1196_p1;
reg   [7:0] trunc_ln51_1_reg_1898;
reg   [7:0] level_addr_3_reg_1904;
reg   [0:0] icmp_ln44_2_reg_1909;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] icmp_ln48_2_fu_1204_p2;
reg   [0:0] icmp_ln48_2_reg_1913;
wire   [63:0] zext_ln16_5_fu_1247_p1;
reg   [3:0] level_counts_addr_2_reg_1926;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [7:0] trunc_ln51_2_fu_1256_p1;
reg   [7:0] trunc_ln51_2_reg_1931;
reg   [7:0] level_addr_4_reg_1937;
reg   [0:0] icmp_ln44_3_reg_1942;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [0:0] icmp_ln48_3_fu_1264_p2;
reg   [0:0] icmp_ln48_3_reg_1946;
wire   [63:0] zext_ln16_7_fu_1307_p1;
reg   [3:0] level_counts_addr_3_reg_1959;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [7:0] trunc_ln51_3_fu_1316_p1;
reg   [7:0] trunc_ln51_3_reg_1964;
reg   [7:0] level_addr_5_reg_1970;
reg   [0:0] icmp_ln44_4_reg_1975;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [0:0] icmp_ln48_4_fu_1324_p2;
reg   [0:0] icmp_ln48_4_reg_1979;
wire   [63:0] zext_ln16_9_fu_1367_p1;
reg   [3:0] level_counts_addr_4_reg_1992;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [7:0] trunc_ln51_4_fu_1376_p1;
reg   [7:0] trunc_ln51_4_reg_1997;
reg   [7:0] level_addr_6_reg_2003;
reg   [0:0] icmp_ln44_5_reg_2008;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [0:0] icmp_ln48_5_fu_1384_p2;
reg   [0:0] icmp_ln48_5_reg_2012;
wire   [63:0] zext_ln16_11_fu_1427_p1;
reg   [3:0] level_counts_addr_5_reg_2025;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] trunc_ln51_5_fu_1436_p1;
reg   [7:0] trunc_ln51_5_reg_2030;
reg   [7:0] level_addr_7_reg_2036;
reg   [0:0] icmp_ln44_6_reg_2041;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] icmp_ln48_6_fu_1444_p2;
reg   [0:0] icmp_ln48_6_reg_2045;
wire   [63:0] zext_ln16_12_fu_1487_p1;
reg   [3:0] level_counts_addr_6_reg_2058;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] trunc_ln51_6_fu_1496_p1;
reg   [7:0] trunc_ln51_6_reg_2063;
reg   [7:0] level_addr_8_reg_2069;
reg   [0:0] icmp_ln44_7_reg_2074;
wire   [0:0] trunc_ln48_7_fu_1523_p1;
reg   [0:0] trunc_ln48_7_reg_2078;
reg   [6:0] lshr_ln48_7_reg_2082;
wire   [63:0] zext_ln16_14_fu_1542_p1;
reg   [3:0] level_counts_addr_7_reg_2092;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_551;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_5_reg_563;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_7_reg_577;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_9_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_11_reg_605;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_13_reg_619;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_15_reg_633;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_17_reg_647;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_17_reg_647;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_724_p1;
wire   [63:0] zext_ln16_2_fu_765_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_4_fu_791_p1;
wire   [63:0] zext_ln41_fu_805_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_6_fu_854_p1;
wire   [63:0] zext_ln16_8_fu_880_p1;
wire   [63:0] zext_ln16_10_fu_1025_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln39_fu_1030_p1;
wire   [63:0] zext_ln48_fu_1065_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln16_13_fu_1111_p1;
wire   [63:0] zext_ln47_fu_1116_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln41_1_fu_1140_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln48_1_fu_1176_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln47_1_fu_1191_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln41_2_fu_1200_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln48_2_fu_1236_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln47_2_fu_1251_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln41_3_fu_1260_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln48_3_fu_1296_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln47_3_fu_1311_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln41_4_fu_1320_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln48_4_fu_1356_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln47_4_fu_1371_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln41_5_fu_1380_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln48_5_fu_1416_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] zext_ln47_5_fu_1431_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] zext_ln41_6_fu_1440_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] zext_ln48_6_fu_1476_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] zext_ln47_6_fu_1491_p1;
wire    ap_block_pp0_stage30;
wire   [63:0] zext_ln41_7_fu_1500_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] zext_ln48_7_fu_1556_p1;
wire   [63:0] zext_ln47_7_fu_1566_p1;
wire    ap_block_pp0_stage28;
reg   [63:0] e_fu_94;
wire   [63:0] e_9_fu_1546_p2;
wire    ap_loop_init;
reg   [31:0] i_fu_98;
wire   [31:0] i_4_fu_975_p2;
reg   [63:0] q_in_1_fu_102;
reg    edges_0_ce0_local;
reg   [10:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [10:0] edges_1_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] grp_fu_674_p2;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage0;
reg    queue_we0_local;
wire   [0:0] trunc_ln48_fu_1051_p1;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [6:0] queue_address0_local;
wire   [0:0] trunc_ln48_1_fu_1162_p1;
wire   [0:0] trunc_ln48_2_fu_1222_p1;
wire   [0:0] trunc_ln48_3_fu_1282_p1;
wire   [0:0] trunc_ln48_4_fu_1342_p1;
wire   [0:0] trunc_ln48_5_fu_1402_p1;
wire   [0:0] trunc_ln48_6_fu_1462_p1;
reg    queue_1_we0_local;
reg   [7:0] queue_1_d0_local;
reg    queue_1_ce0_local;
reg   [6:0] queue_1_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] grp_fu_681_p2;
wire   [10:0] lshr_ln16_1_fu_714_p4;
wire   [7:0] trunc_ln41_fu_735_p1;
wire   [7:0] trunc_ln41_1_fu_739_p1;
wire   [63:0] e_2_fu_750_p2;
wire   [10:0] lshr_ln16_2_fu_755_p4;
wire   [63:0] e_3_fu_776_p2;
wire   [10:0] lshr_ln16_3_fu_781_p4;
wire   [7:0] trunc_ln41_2_fu_809_p1;
wire   [7:0] trunc_ln41_3_fu_813_p1;
wire   [7:0] trunc_ln41_4_fu_824_p1;
wire   [7:0] trunc_ln41_5_fu_828_p1;
wire   [63:0] e_4_fu_839_p2;
wire   [10:0] lshr_ln16_4_fu_844_p4;
wire   [63:0] e_5_fu_865_p2;
wire   [10:0] lshr_ln16_5_fu_870_p4;
wire   [63:0] e_6_fu_891_p2;
wire   [63:0] e_7_fu_911_p2;
wire   [28:0] tmp_s_fu_926_p4;
wire   [31:0] i_1_fu_936_p3;
wire   [63:0] e_8_fu_955_p2;
wire   [7:0] trunc_ln41_6_fu_995_p1;
wire   [7:0] trunc_ln41_7_fu_999_p1;
wire   [7:0] trunc_ln41_8_fu_1010_p1;
wire   [7:0] trunc_ln41_9_fu_1014_p1;
wire   [7:0] trunc_ln11_1_fu_1035_p1;
wire   [7:0] add_ln48_fu_1038_p2;
wire   [7:0] select_ln48_fu_1044_p3;
wire   [6:0] lshr_ln2_fu_1055_p4;
wire   [7:0] q_in_19_fu_1071_p2;
wire   [7:0] trunc_ln41_10_fu_1081_p1;
wire   [7:0] trunc_ln41_11_fu_1085_p1;
wire   [7:0] trunc_ln41_12_fu_1096_p1;
wire   [7:0] trunc_ln41_13_fu_1100_p1;
wire   [7:0] trunc_ln41_14_fu_1125_p1;
wire   [7:0] trunc_ln41_15_fu_1129_p1;
wire   [7:0] add_ln48_2_fu_1150_p2;
wire   [7:0] select_ln48_1_fu_1155_p3;
wire   [6:0] lshr_ln48_1_fu_1166_p4;
wire   [7:0] q_in_20_fu_1182_p2;
wire   [7:0] add_ln48_4_fu_1210_p2;
wire   [7:0] select_ln48_2_fu_1215_p3;
wire   [6:0] lshr_ln48_2_fu_1226_p4;
wire   [7:0] q_in_21_fu_1242_p2;
wire   [7:0] add_ln48_6_fu_1270_p2;
wire   [7:0] select_ln48_3_fu_1275_p3;
wire   [6:0] lshr_ln48_3_fu_1286_p4;
wire   [7:0] q_in_22_fu_1302_p2;
wire   [7:0] add_ln48_8_fu_1330_p2;
wire   [7:0] select_ln48_4_fu_1335_p3;
wire   [6:0] lshr_ln48_4_fu_1346_p4;
wire   [7:0] q_in_23_fu_1362_p2;
wire   [7:0] add_ln48_10_fu_1390_p2;
wire   [7:0] select_ln48_5_fu_1395_p3;
wire   [6:0] lshr_ln48_5_fu_1406_p4;
wire   [7:0] q_in_24_fu_1422_p2;
wire   [7:0] add_ln48_12_fu_1450_p2;
wire   [7:0] select_ln48_6_fu_1455_p3;
wire   [6:0] lshr_ln48_6_fu_1466_p4;
wire   [7:0] q_in_25_fu_1482_p2;
wire   [0:0] icmp_ln48_7_fu_1504_p2;
wire   [7:0] add_ln48_14_fu_1510_p2;
wire   [7:0] select_ln48_7_fu_1515_p3;
wire   [7:0] q_in_26_fu_1537_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
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
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1998;
reg    ap_condition_2002;
reg    ap_condition_2007;
reg    ap_condition_2012;
reg    ap_condition_2016;
reg    ap_condition_2021;
reg    ap_condition_2027;
reg    ap_condition_2031;
reg    ap_condition_2036;
reg    ap_condition_2041;
reg    ap_condition_2045;
reg    ap_condition_2050;
reg    ap_condition_2055;
reg    ap_condition_2059;
reg    ap_condition_2064;
reg    ap_condition_2069;
reg    ap_condition_2073;
reg    ap_condition_2078;
reg    ap_condition_2085;
reg    ap_condition_2090;
reg    ap_condition_2095;
reg    ap_condition_2100;
reg    ap_condition_2105;
reg    ap_condition_2111;
reg    ap_condition_2116;
reg    ap_condition_2120;
reg    ap_condition_2124;
reg    ap_condition_2128;
reg    ap_condition_2132;
reg    ap_condition_2136;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_fu_94 = 64'd0;
#0 i_fu_98 = 32'd0;
#0 q_in_1_fu_102 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage28),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage28)) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2007)) begin
            ap_phi_reg_pp0_iter0_q_in_11_reg_605 <= q_in_9_reg_591;
        end else if ((1'b1 == ap_condition_2002)) begin
            ap_phi_reg_pp0_iter0_q_in_11_reg_605 <= ap_phi_reg_pp0_iter0_q_in_9_reg_591;
        end else if ((1'b1 == ap_condition_1998)) begin
            ap_phi_reg_pp0_iter0_q_in_11_reg_605 <= zext_ln16_9_fu_1367_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2021)) begin
            ap_phi_reg_pp0_iter0_q_in_13_reg_619 <= q_in_11_reg_605;
        end else if ((1'b1 == ap_condition_2016)) begin
            ap_phi_reg_pp0_iter0_q_in_13_reg_619 <= ap_phi_reg_pp0_iter0_q_in_11_reg_605;
        end else if ((1'b1 == ap_condition_2012)) begin
            ap_phi_reg_pp0_iter0_q_in_13_reg_619 <= zext_ln16_11_fu_1427_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1754 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_2036)) begin
            ap_phi_reg_pp0_iter0_q_in_15_reg_633 <= q_in_13_reg_619;
        end else if ((1'b1 == ap_condition_2031)) begin
            ap_phi_reg_pp0_iter0_q_in_15_reg_633 <= ap_phi_reg_pp0_iter0_q_in_13_reg_619;
        end else if ((1'b1 == ap_condition_2027)) begin
            ap_phi_reg_pp0_iter0_q_in_15_reg_633 <= zext_ln16_12_fu_1487_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_reg_1644 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1644 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_551 <= q_in_1_fu_102;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1778 == 1'd1) & (icmp_ln40_reg_1644 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_551 <= zext_ln16_1_fu_1077_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2050)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_563 <= q_in_3_reg_551;
        end else if ((1'b1 == ap_condition_2045)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_563 <= ap_phi_reg_pp0_iter0_q_in_3_reg_551;
        end else if ((1'b1 == ap_condition_2041)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_563 <= zext_ln16_3_fu_1187_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2064)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_577 <= q_in_5_reg_563;
        end else if ((1'b1 == ap_condition_2059)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_577 <= ap_phi_reg_pp0_iter0_q_in_5_reg_563;
        end else if ((1'b1 == ap_condition_2055)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_577 <= zext_ln16_5_fu_1247_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2078)) begin
            ap_phi_reg_pp0_iter0_q_in_9_reg_591 <= q_in_7_reg_577;
        end else if ((1'b1 == ap_condition_2073)) begin
            ap_phi_reg_pp0_iter0_q_in_9_reg_591 <= ap_phi_reg_pp0_iter0_q_in_7_reg_577;
        end else if ((1'b1 == ap_condition_2069)) begin
            ap_phi_reg_pp0_iter0_q_in_9_reg_591 <= zext_ln16_7_fu_1307_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_7_reg_1767 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_q_in_17_reg_647 <= q_in_15_reg_633;
    end else if (((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_660_p2 == 1'd1) & (icmp_ln40_7_reg_1767 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_q_in_17_reg_647 <= zext_ln16_14_fu_1542_p1;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter1_q_in_17_reg_647 <= ap_phi_reg_pp0_iter0_q_in_17_reg_647;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_fu_94 <= empty;
        end else if (((icmp_ln39_reg_1754 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_fu_94 <= e_9_fu_1546_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_98 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln39_fu_944_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        i_fu_98 <= i_4_fu_975_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        q_in_1_fu_102 <= q_in;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        q_in_1_fu_102 <= ap_phi_reg_pp0_iter1_q_in_17_reg_647;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_7_reg_1767 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        ap_phi_reg_pp0_iter0_q_in_17_reg_647 <= ap_phi_reg_pp0_iter0_q_in_15_reg_633;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_1615 <= e_fu_94;
        icmp_ln40_reg_1644 <= icmp_ln40_fu_730_p2;
        level_addr_reg_1627 <= zext_ln18_cast_reg_1610;
        trunc_ln11_reg_1632 <= trunc_ln11_fu_710_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln39_reg_1754 <= icmp_ln39_fu_944_p2;
        icmp_ln40_3_reg_1712 <= icmp_ln40_3_fu_860_p2;
        icmp_ln40_4_reg_1726 <= icmp_ln40_4_fu_886_p2;
        icmp_ln40_5_reg_1745 <= icmp_ln40_5_fu_906_p2;
        icmp_ln40_6_reg_1758 <= icmp_ln40_6_fu_950_p2;
        icmp_ln40_7_reg_1767 <= icmp_ln40_7_fu_970_p2;
        icmp_ln40_7_reg_1767_pp0_iter1_reg <= icmp_ln40_7_reg_1767;
        level_addr_1_reg_1693 <= zext_ln41_fu_805_p1;
        lshr_ln16_6_reg_1740 <= {{e_6_fu_891_p2[11:1]}};
        lshr_ln16_7_reg_1762 <= {{e_8_fu_955_p2[11:1]}};
        lshr_ln3_reg_1749 <= {{e_7_fu_911_p2[11:1]}};
        tmp_dst_1_reg_1698 <= tmp_dst_1_fu_817_p3;
        tmp_dst_2_reg_1705 <= tmp_dst_2_fu_832_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln40_1_reg_1665 <= icmp_ln40_1_fu_771_p2;
        icmp_ln40_2_reg_1679 <= icmp_ln40_2_fu_797_p2;
        level_counts_addr_7_reg_2092 <= zext_ln47_7_fu_1566_p1;
        tmp_dst_reg_1658 <= tmp_dst_fu_743_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln44_1_reg_1876 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln44_2_reg_1909 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln44_3_reg_1942 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        icmp_ln44_4_reg_1975 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        icmp_ln44_5_reg_2008 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        icmp_ln44_6_reg_2041 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_7_reg_2074 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln44_reg_1778 <= grp_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln48_1_reg_1880 <= icmp_ln48_1_fu_1144_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln48_2_reg_1913 <= icmp_ln48_2_fu_1204_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln48_3_reg_1946 <= icmp_ln48_3_fu_1264_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        icmp_ln48_4_reg_1979 <= icmp_ln48_4_fu_1324_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        icmp_ln48_5_reg_2012 <= icmp_ln48_5_fu_1384_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        icmp_ln48_6_reg_2045 <= icmp_ln48_6_fu_1444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln48_reg_1782 <= icmp_ln48_fu_989_p2;
        q_in_18_reg_1771 <= q_in_1_fu_102;
        tmp_dst_3_reg_1787 <= tmp_dst_3_fu_1003_p3;
        tmp_dst_4_reg_1794 <= tmp_dst_4_fu_1018_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_addr_2_reg_1871 <= zext_ln41_1_fu_1140_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_addr_3_reg_1904 <= zext_ln41_2_fu_1200_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_addr_4_reg_1937 <= zext_ln41_3_fu_1260_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        level_addr_5_reg_1970 <= zext_ln41_4_fu_1320_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        level_addr_6_reg_2003 <= zext_ln41_5_fu_1380_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        level_addr_7_reg_2036 <= zext_ln41_6_fu_1440_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        level_addr_8_reg_2069 <= zext_ln41_7_fu_1500_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_counts_addr_1_reg_1893 <= zext_ln47_1_fu_1191_p1;
        trunc_ln51_1_reg_1898 <= trunc_ln51_1_fu_1196_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_counts_addr_2_reg_1926 <= zext_ln47_2_fu_1251_p1;
        trunc_ln51_2_reg_1931 <= trunc_ln51_2_fu_1256_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        level_counts_addr_3_reg_1959 <= zext_ln47_3_fu_1311_p1;
        trunc_ln51_3_reg_1964 <= trunc_ln51_3_fu_1316_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        level_counts_addr_4_reg_1992 <= zext_ln47_4_fu_1371_p1;
        trunc_ln51_4_reg_1997 <= trunc_ln51_4_fu_1376_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        level_counts_addr_5_reg_2025 <= zext_ln47_5_fu_1431_p1;
        trunc_ln51_5_reg_2030 <= trunc_ln51_5_fu_1436_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        level_counts_addr_6_reg_2058 <= zext_ln47_6_fu_1491_p1;
        trunc_ln51_6_reg_2063 <= trunc_ln51_6_fu_1496_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_addr_reg_1853 <= zext_ln47_fu_1116_p1;
        tmp_dst_7_reg_1864 <= tmp_dst_7_fu_1133_p3;
        trunc_ln51_reg_1858 <= trunc_ln51_fu_1121_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_7_reg_2082 <= {{select_ln48_7_fu_1515_p3[7:1]}};
        trunc_ln48_7_reg_2078 <= trunc_ln48_7_fu_1523_p1;
        zext_ln18_cast_reg_1610[7 : 0] <= zext_ln18_cast_fu_688_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        q_in_11_reg_605 <= ap_phi_reg_pp0_iter0_q_in_11_reg_605;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        q_in_13_reg_619 <= ap_phi_reg_pp0_iter0_q_in_13_reg_619;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        q_in_15_reg_633 <= ap_phi_reg_pp0_iter0_q_in_15_reg_633;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        q_in_3_reg_551 <= ap_phi_reg_pp0_iter0_q_in_3_reg_551;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        q_in_5_reg_563 <= ap_phi_reg_pp0_iter0_q_in_5_reg_563;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        q_in_7_reg_577 <= ap_phi_reg_pp0_iter0_q_in_7_reg_577;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        q_in_9_reg_591 <= ap_phi_reg_pp0_iter0_q_in_9_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_666 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_670 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_dst_5_reg_1829 <= tmp_dst_5_fu_1089_p3;
        tmp_dst_6_reg_1836 <= tmp_dst_6_fu_1104_p3;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_1754 == 1'd0) & (1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_condition_exit_pp0_iter0_stage28 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage28 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
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
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_0_address0_local = zext_ln16_13_fu_1111_p1;
        end else if ((1'b1 == ap_condition_2111)) begin
            edges_0_address0_local = zext_ln39_fu_1030_p1;
        end else if ((1'b1 == ap_condition_2105)) begin
            edges_0_address0_local = zext_ln16_10_fu_1025_p1;
        end else if ((1'b1 == ap_condition_2100)) begin
            edges_0_address0_local = zext_ln16_8_fu_880_p1;
        end else if ((1'b1 == ap_condition_2095)) begin
            edges_0_address0_local = zext_ln16_6_fu_854_p1;
        end else if ((1'b1 == ap_condition_2090)) begin
            edges_0_address0_local = zext_ln16_4_fu_791_p1;
        end else if ((1'b1 == ap_condition_2085)) begin
            edges_0_address0_local = zext_ln16_2_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln16_fu_724_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1758 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1745 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_797_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_771_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_fu_886_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_fu_860_p2 == 1'd1) & (trunc_ln11_reg_1632== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_1_address0_local = zext_ln16_13_fu_1111_p1;
        end else if ((1'b1 == ap_condition_2136)) begin
            edges_1_address0_local = zext_ln39_fu_1030_p1;
        end else if ((1'b1 == ap_condition_2132)) begin
            edges_1_address0_local = zext_ln16_10_fu_1025_p1;
        end else if ((1'b1 == ap_condition_2128)) begin
            edges_1_address0_local = zext_ln16_8_fu_880_p1;
        end else if ((1'b1 == ap_condition_2124)) begin
            edges_1_address0_local = zext_ln16_6_fu_854_p1;
        end else if ((1'b1 == ap_condition_2120)) begin
            edges_1_address0_local = zext_ln16_4_fu_791_p1;
        end else if ((1'b1 == ap_condition_2116)) begin
            edges_1_address0_local = zext_ln16_2_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln16_fu_724_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1758 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1745 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_797_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_771_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_fu_886_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_fu_860_p2 == 1'd1) & (trunc_ln11_reg_1632== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_8_reg_2069;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        level_address0_local = zext_ln41_7_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        level_address0_local = level_addr_7_reg_2036;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        level_address0_local = zext_ln41_6_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        level_address0_local = level_addr_6_reg_2003;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        level_address0_local = zext_ln41_5_fu_1380_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        level_address0_local = level_addr_5_reg_1970;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        level_address0_local = zext_ln41_4_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        level_address0_local = level_addr_4_reg_1937;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_address0_local = zext_ln41_3_fu_1260_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_address0_local = level_addr_3_reg_1904;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = zext_ln41_2_fu_1200_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_address0_local = level_addr_2_reg_1871;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_address0_local = zext_ln41_1_fu_1140_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = level_addr_1_reg_1693;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        level_address0_local = level_addr_reg_1627;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_805_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        level_counts_address0_local = level_counts_addr_7_reg_2092;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_7_fu_1566_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_6_reg_2058;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        level_counts_address0_local = zext_ln47_6_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        level_counts_address0_local = level_counts_addr_5_reg_2025;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        level_counts_address0_local = zext_ln47_5_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        level_counts_address0_local = level_counts_addr_4_reg_1992;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        level_counts_address0_local = zext_ln47_4_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        level_counts_address0_local = level_counts_addr_3_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        level_counts_address0_local = zext_ln47_3_fu_1311_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        level_counts_address0_local = level_counts_addr_2_reg_1926;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_counts_address0_local = zext_ln47_2_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        level_counts_address0_local = level_counts_addr_1_reg_1893;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_counts_address0_local = zext_ln47_1_fu_1191_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_counts_address0_local = level_counts_addr_reg_1853;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_address0_local = zext_ln47_fu_1116_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln44_6_reg_2041 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_6_reg_1758 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage28_11001) & (icmp_ln44_5_reg_2008 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1745 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage24_11001) & (icmp_ln44_4_reg_1975 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_reg_1726 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage20_11001) & (icmp_ln44_3_reg_1942 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_reg_1712 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1909 == 1'd1) & (icmp_ln40_2_reg_1679 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1876 == 1'd1) & (icmp_ln40_1_reg_1665== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1778 == 1'd1) & (icmp_ln40_reg_1644 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln44_7_reg_2074 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_7_reg_1767_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage30_11001) & (icmp_ln44_6_reg_2041 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1758 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage26_11001) & (icmp_ln44_5_reg_2008 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1745 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage22_11001) & (icmp_ln44_4_reg_1975 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_reg_1726 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (icmp_ln44_3_reg_1942 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_reg_1712 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1909 == 1'd1) & (icmp_ln40_2_reg_1679 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1876 == 1'd1) &(icmp_ln40_1_reg_1665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1778 == 1'd1) & (icmp_ln40_reg_1644 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln44_7_reg_2074 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_7_reg_1767 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_1754 == 1'd0) & (1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        q_in_13_out_ap_vld = 1'b1;
    end else begin
        q_in_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_address0_local = zext_ln48_7_fu_1556_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        queue_1_address0_local = zext_ln48_6_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        queue_1_address0_local = zext_ln48_5_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        queue_1_address0_local = zext_ln48_4_fu_1356_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        queue_1_address0_local = zext_ln48_3_fu_1296_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_1_address0_local = zext_ln48_2_fu_1236_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_1_address0_local = zext_ln48_1_fu_1176_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_address0_local = zext_ln48_fu_1065_p1;
    end else begin
        queue_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_d0_local = tmp_dst_7_reg_1864;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        queue_1_d0_local = tmp_dst_6_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        queue_1_d0_local = tmp_dst_5_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        queue_1_d0_local = tmp_dst_4_reg_1794;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        queue_1_d0_local = tmp_dst_3_reg_1787;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_1_d0_local = tmp_dst_2_reg_1705;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_1_d0_local = tmp_dst_1_reg_1698;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_d0_local = tmp_dst_reg_1658;
    end else begin
        queue_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage29_11001) & (icmp_ln44_6_reg_2041 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1758 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (trunc_ln48_6_fu_1462_p1 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_7_reg_2078 == 1'd1) & (icmp_ln44_7_reg_2074 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_7_reg_1767 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (icmp_ln44_5_reg_2008 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1745 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage25) & (trunc_ln48_5_fu_1402_p1 == 1'd1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (icmp_ln44_4_reg_1975 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_reg_1726 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (trunc_ln48_4_fu_1342_p1 == 1'd1)) | ((1'b0 == ap_block_pp0_stage17_11001) & (icmp_ln44_3_reg_1942 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_reg_1712 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage17) & (trunc_ln48_3_fu_1282_p1 == 1'd1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1909 == 1'd1) & (icmp_ln40_2_reg_1679 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (trunc_ln48_2_fu_1222_p1 == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1876 == 1'd1) & (icmp_ln40_1_reg_1665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln48_1_fu_1162_p1 == 1'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1778 == 1'd1) & (icmp_ln40_reg_1644 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln48_fu_1051_p1 == 1'd1)))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_address0_local = zext_ln48_7_fu_1556_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        queue_address0_local = zext_ln48_6_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        queue_address0_local = zext_ln48_5_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        queue_address0_local = zext_ln48_4_fu_1356_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        queue_address0_local = zext_ln48_3_fu_1296_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_address0_local = zext_ln48_2_fu_1236_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_address0_local = zext_ln48_1_fu_1176_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_address0_local = zext_ln48_fu_1065_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_d0_local = tmp_dst_7_reg_1864;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        queue_d0_local = tmp_dst_6_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        queue_d0_local = tmp_dst_5_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        queue_d0_local = tmp_dst_4_reg_1794;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        queue_d0_local = tmp_dst_3_reg_1787;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_d0_local = tmp_dst_2_reg_1705;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_d0_local = tmp_dst_1_reg_1698;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_d0_local = tmp_dst_reg_1658;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage29_11001) & (icmp_ln44_6_reg_2041 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1758 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (trunc_ln48_6_fu_1462_p1 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_7_reg_2078 == 1'd0) & (icmp_ln44_7_reg_2074 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_7_reg_1767 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (icmp_ln44_5_reg_2008 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1745 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage25) & (trunc_ln48_5_fu_1402_p1 == 1'd0)) | ((1'b0 == ap_block_pp0_stage21_11001) & (icmp_ln44_4_reg_1975 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_reg_1726 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (trunc_ln48_4_fu_1342_p1 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (icmp_ln44_3_reg_1942 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_reg_1712 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage17) & (trunc_ln48_3_fu_1282_p1 == 1'd0)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1909 == 1'd1) & (icmp_ln40_2_reg_1679 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (trunc_ln48_2_fu_1222_p1 == 1'd0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1876 == 1'd1) & (icmp_ln40_1_reg_1665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln48_1_fu_1162_p1 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1778 == 1'd1) & (icmp_ln40_reg_1644 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln48_fu_1051_p1 == 1'd0)))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage28)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln48_10_fu_1390_p2 = ($signed(trunc_ln51_4_reg_1997) + $signed(8'd255));
assign add_ln48_12_fu_1450_p2 = ($signed(trunc_ln51_5_reg_2030) + $signed(8'd255));
assign add_ln48_14_fu_1510_p2 = ($signed(trunc_ln51_6_reg_2063) + $signed(8'd255));
assign add_ln48_2_fu_1150_p2 = ($signed(trunc_ln51_reg_1858) + $signed(8'd255));
assign add_ln48_4_fu_1210_p2 = ($signed(trunc_ln51_1_reg_1898) + $signed(8'd255));
assign add_ln48_6_fu_1270_p2 = ($signed(trunc_ln51_2_reg_1931) + $signed(8'd255));
assign add_ln48_8_fu_1330_p2 = ($signed(trunc_ln51_3_reg_1964) + $signed(8'd255));
assign add_ln48_fu_1038_p2 = ($signed(trunc_ln11_1_fu_1035_p1) + $signed(8'd255));
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
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_1998 = ((1'b0 == ap_block_pp0_stage21_11001) & (icmp_ln44_4_reg_1975 == 1'd1) & (icmp_ln40_4_reg_1726 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21));
end
always @ (*) begin
    ap_condition_2002 = ((1'b0 == ap_block_pp0_stage18_11001) & (icmp_ln40_4_reg_1726 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage18));
end
always @ (*) begin
    ap_condition_2007 = ((1'b0 == ap_block_pp0_stage20_11001) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_4_reg_1726 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20));
end
always @ (*) begin
    ap_condition_2012 = ((1'b0 == ap_block_pp0_stage25_11001) & (icmp_ln44_5_reg_2008 == 1'd1) & (icmp_ln40_5_reg_1745 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage25));
end
always @ (*) begin
    ap_condition_2016 = ((1'b0 == ap_block_pp0_stage22_11001) & (icmp_ln40_5_reg_1745 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage22));
end
always @ (*) begin
    ap_condition_2021 = ((1'b0 == ap_block_pp0_stage24_11001) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_5_reg_1745 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage24));
end
always @ (*) begin
    ap_condition_2027 = ((1'b0 == ap_block_pp0_stage29_11001) & (icmp_ln44_6_reg_2041 == 1'd1) & (icmp_ln40_6_reg_1758 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage29));
end
always @ (*) begin
    ap_condition_2031 = ((1'b0 == ap_block_pp0_stage26_11001) & (icmp_ln40_6_reg_1758 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage26));
end
always @ (*) begin
    ap_condition_2036 = ((1'b0 == ap_block_pp0_stage28_11001) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_6_reg_1758 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage28));
end
always @ (*) begin
    ap_condition_2041 = ((1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln44_1_reg_1876 == 1'd1) & (icmp_ln40_1_reg_1665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_2045 = ((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln40_1_reg_1665 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6));
end
always @ (*) begin
    ap_condition_2050 = ((1'b0 == ap_block_pp0_stage8_11001) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_1_reg_1665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_2055 = ((1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln44_2_reg_1909 == 1'd1) & (icmp_ln40_2_reg_1679 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13));
end
always @ (*) begin
    ap_condition_2059 = ((1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln40_2_reg_1679 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10));
end
always @ (*) begin
    ap_condition_2064 = ((1'b0 == ap_block_pp0_stage12_11001) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_2_reg_1679 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12));
end
always @ (*) begin
    ap_condition_2069 = ((1'b0 == ap_block_pp0_stage17_11001) & (icmp_ln44_3_reg_1942 == 1'd1) & (icmp_ln40_3_reg_1712 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17));
end
always @ (*) begin
    ap_condition_2073 = ((1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln40_3_reg_1712 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage14));
end
always @ (*) begin
    ap_condition_2078 = ((1'b0 == ap_block_pp0_stage16_11001) & (grp_fu_660_p2 == 1'd0) & (icmp_ln40_3_reg_1712 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16));
end
always @ (*) begin
    ap_condition_2085 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_771_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2090 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_797_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2095 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln40_3_fu_860_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2100 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln40_4_fu_886_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2105 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln40_5_reg_1745 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2111 = ((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln40_6_reg_1758 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2116 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_771_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2120 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_797_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2124 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln40_3_fu_860_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2128 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln40_4_fu_886_p2 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2132 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln40_5_reg_1745 == 1'd1) & (trunc_ln11_reg_1632 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2136 = ((icmp_ln39_reg_1754 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln40_6_reg_1758 == 1'd1) & (trunc_ln11_reg_1632 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage28;
assign ap_ready = ap_ready_sig;
assign e_2_fu_750_p2 = (e_1_reg_1615 + 64'd1);
assign e_3_fu_776_p2 = (e_1_reg_1615 + 64'd2);
assign e_4_fu_839_p2 = (e_1_reg_1615 + 64'd3);
assign e_5_fu_865_p2 = (e_1_reg_1615 + 64'd4);
assign e_6_fu_891_p2 = (e_1_reg_1615 + 64'd5);
assign e_7_fu_911_p2 = (e_1_reg_1615 + 64'd6);
assign e_8_fu_955_p2 = (e_1_reg_1615 + 64'd7);
assign e_9_fu_1546_p2 = (e_1_reg_1615 + 64'd8);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign grp_fu_660_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_674_p2 = (reg_666 + 8'd1);
assign grp_fu_681_p2 = (reg_670 + 64'd1);
assign i_1_fu_936_p3 = {{tmp_s_fu_926_p4}, {3'd6}};
assign i_4_fu_975_p2 = (i_fu_98 + 32'd8);
assign icmp_ln39_fu_944_p2 = (($signed(i_1_fu_936_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_771_p2 = ((e_2_fu_750_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_797_p2 = ((e_3_fu_776_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_860_p2 = ((e_4_fu_839_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_4_fu_886_p2 = ((e_5_fu_865_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_5_fu_906_p2 = ((e_6_fu_891_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_6_fu_950_p2 = ((e_7_fu_911_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_7_fu_970_p2 = ((e_8_fu_955_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_730_p2 = ((e_fu_94 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_1144_p2 = ((q_in_3_reg_551 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_1204_p2 = ((q_in_5_reg_563 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_1264_p2 = ((q_in_7_reg_577 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_4_fu_1324_p2 = ((q_in_9_reg_591 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_5_fu_1384_p2 = ((q_in_11_reg_605 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_6_fu_1444_p2 = ((q_in_13_reg_619 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_7_fu_1504_p2 = ((q_in_15_reg_633 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_989_p2 = ((q_in_1_fu_102 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = grp_fu_681_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = grp_fu_674_p2;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_714_p4 = {{e_fu_94[11:1]}};
assign lshr_ln16_2_fu_755_p4 = {{e_2_fu_750_p2[11:1]}};
assign lshr_ln16_3_fu_781_p4 = {{e_3_fu_776_p2[11:1]}};
assign lshr_ln16_4_fu_844_p4 = {{e_4_fu_839_p2[11:1]}};
assign lshr_ln16_5_fu_870_p4 = {{e_5_fu_865_p2[11:1]}};
assign lshr_ln2_fu_1055_p4 = {{select_ln48_fu_1044_p3[7:1]}};
assign lshr_ln48_1_fu_1166_p4 = {{select_ln48_1_fu_1155_p3[7:1]}};
assign lshr_ln48_2_fu_1226_p4 = {{select_ln48_2_fu_1215_p3[7:1]}};
assign lshr_ln48_3_fu_1286_p4 = {{select_ln48_3_fu_1275_p3[7:1]}};
assign lshr_ln48_4_fu_1346_p4 = {{select_ln48_4_fu_1335_p3[7:1]}};
assign lshr_ln48_5_fu_1406_p4 = {{select_ln48_5_fu_1395_p3[7:1]}};
assign lshr_ln48_6_fu_1466_p4 = {{select_ln48_6_fu_1455_p3[7:1]}};
assign q_in_13_out = q_in_13_reg_619;
assign q_in_19_fu_1071_p2 = (trunc_ln11_1_fu_1035_p1 + 8'd1);
assign q_in_20_fu_1182_p2 = (trunc_ln51_reg_1858 + 8'd1);
assign q_in_21_fu_1242_p2 = (trunc_ln51_1_reg_1898 + 8'd1);
assign q_in_22_fu_1302_p2 = (trunc_ln51_2_reg_1931 + 8'd1);
assign q_in_23_fu_1362_p2 = (trunc_ln51_3_reg_1964 + 8'd1);
assign q_in_24_fu_1422_p2 = (trunc_ln51_4_reg_1997 + 8'd1);
assign q_in_25_fu_1482_p2 = (trunc_ln51_5_reg_2030 + 8'd1);
assign q_in_26_fu_1537_p2 = (trunc_ln51_6_reg_2063 + 8'd1);
assign queue_1_address0 = queue_1_address0_local;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = queue_1_d0_local;
assign queue_1_we0 = queue_1_we0_local;
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_1155_p3 = ((icmp_ln48_1_reg_1880[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_1150_p2);
assign select_ln48_2_fu_1215_p3 = ((icmp_ln48_2_reg_1913[0:0] == 1'b1) ? 8'd255 : add_ln48_4_fu_1210_p2);
assign select_ln48_3_fu_1275_p3 = ((icmp_ln48_3_reg_1946[0:0] == 1'b1) ? 8'd255 : add_ln48_6_fu_1270_p2);
assign select_ln48_4_fu_1335_p3 = ((icmp_ln48_4_reg_1979[0:0] == 1'b1) ? 8'd255 : add_ln48_8_fu_1330_p2);
assign select_ln48_5_fu_1395_p3 = ((icmp_ln48_5_reg_2012[0:0] == 1'b1) ? 8'd255 : add_ln48_10_fu_1390_p2);
assign select_ln48_6_fu_1455_p3 = ((icmp_ln48_6_reg_2045[0:0] == 1'b1) ? 8'd255 : add_ln48_12_fu_1450_p2);
assign select_ln48_7_fu_1515_p3 = ((icmp_ln48_7_fu_1504_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_14_fu_1510_p2);
assign select_ln48_fu_1044_p3 = ((icmp_ln48_reg_1782[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_1038_p2);
assign tmp_dst_1_fu_817_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_2_fu_809_p1 : trunc_ln41_3_fu_813_p1);
assign tmp_dst_2_fu_832_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_4_fu_824_p1 : trunc_ln41_5_fu_828_p1);
assign tmp_dst_3_fu_1003_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_6_fu_995_p1 : trunc_ln41_7_fu_999_p1);
assign tmp_dst_4_fu_1018_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_8_fu_1010_p1 : trunc_ln41_9_fu_1014_p1);
assign tmp_dst_5_fu_1089_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_10_fu_1081_p1 : trunc_ln41_11_fu_1085_p1);
assign tmp_dst_6_fu_1104_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_12_fu_1096_p1 : trunc_ln41_13_fu_1100_p1);
assign tmp_dst_7_fu_1133_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_14_fu_1125_p1 : trunc_ln41_15_fu_1129_p1);
assign tmp_dst_fu_743_p3 = ((trunc_ln11_reg_1632[0:0] == 1'b1) ? trunc_ln41_fu_735_p1 : trunc_ln41_1_fu_739_p1);
assign tmp_s_fu_926_p4 = {{i_fu_98[31:3]}};
assign trunc_ln11_1_fu_1035_p1 = q_in_18_reg_1771[7:0];
assign trunc_ln11_fu_710_p1 = e_fu_94[0:0];
assign trunc_ln41_10_fu_1081_p1 = edges_0_q0[7:0];
assign trunc_ln41_11_fu_1085_p1 = edges_1_q0[7:0];
assign trunc_ln41_12_fu_1096_p1 = edges_1_q0[7:0];
assign trunc_ln41_13_fu_1100_p1 = edges_0_q0[7:0];
assign trunc_ln41_14_fu_1125_p1 = edges_0_q0[7:0];
assign trunc_ln41_15_fu_1129_p1 = edges_1_q0[7:0];
assign trunc_ln41_1_fu_739_p1 = edges_0_q0[7:0];
assign trunc_ln41_2_fu_809_p1 = edges_0_q0[7:0];
assign trunc_ln41_3_fu_813_p1 = edges_1_q0[7:0];
assign trunc_ln41_4_fu_824_p1 = edges_1_q0[7:0];
assign trunc_ln41_5_fu_828_p1 = edges_0_q0[7:0];
assign trunc_ln41_6_fu_995_p1 = edges_0_q0[7:0];
assign trunc_ln41_7_fu_999_p1 = edges_1_q0[7:0];
assign trunc_ln41_8_fu_1010_p1 = edges_1_q0[7:0];
assign trunc_ln41_9_fu_1014_p1 = edges_0_q0[7:0];
assign trunc_ln41_fu_735_p1 = edges_1_q0[7:0];
assign trunc_ln48_1_fu_1162_p1 = select_ln48_1_fu_1155_p3[0:0];
assign trunc_ln48_2_fu_1222_p1 = select_ln48_2_fu_1215_p3[0:0];
assign trunc_ln48_3_fu_1282_p1 = select_ln48_3_fu_1275_p3[0:0];
assign trunc_ln48_4_fu_1342_p1 = select_ln48_4_fu_1335_p3[0:0];
assign trunc_ln48_5_fu_1402_p1 = select_ln48_5_fu_1395_p3[0:0];
assign trunc_ln48_6_fu_1462_p1 = select_ln48_6_fu_1455_p3[0:0];
assign trunc_ln48_7_fu_1523_p1 = select_ln48_7_fu_1515_p3[0:0];
assign trunc_ln48_fu_1051_p1 = select_ln48_fu_1044_p3[0:0];
assign trunc_ln51_1_fu_1196_p1 = ap_phi_reg_pp0_iter0_q_in_5_reg_563[7:0];
assign trunc_ln51_2_fu_1256_p1 = ap_phi_reg_pp0_iter0_q_in_7_reg_577[7:0];
assign trunc_ln51_3_fu_1316_p1 = ap_phi_reg_pp0_iter0_q_in_9_reg_591[7:0];
assign trunc_ln51_4_fu_1376_p1 = ap_phi_reg_pp0_iter0_q_in_11_reg_605[7:0];
assign trunc_ln51_5_fu_1436_p1 = ap_phi_reg_pp0_iter0_q_in_13_reg_619[7:0];
assign trunc_ln51_6_fu_1496_p1 = ap_phi_reg_pp0_iter0_q_in_15_reg_633[7:0];
assign trunc_ln51_fu_1121_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_551[7:0];
assign zext_ln16_10_fu_1025_p1 = lshr_ln16_6_reg_1740;
assign zext_ln16_11_fu_1427_p1 = q_in_24_fu_1422_p2;
assign zext_ln16_12_fu_1487_p1 = q_in_25_fu_1482_p2;
assign zext_ln16_13_fu_1111_p1 = lshr_ln16_7_reg_1762;
assign zext_ln16_14_fu_1542_p1 = q_in_26_fu_1537_p2;
assign zext_ln16_1_fu_1077_p1 = q_in_19_fu_1071_p2;
assign zext_ln16_2_fu_765_p1 = lshr_ln16_2_fu_755_p4;
assign zext_ln16_3_fu_1187_p1 = q_in_20_fu_1182_p2;
assign zext_ln16_4_fu_791_p1 = lshr_ln16_3_fu_781_p4;
assign zext_ln16_5_fu_1247_p1 = q_in_21_fu_1242_p2;
assign zext_ln16_6_fu_854_p1 = lshr_ln16_4_fu_844_p4;
assign zext_ln16_7_fu_1307_p1 = q_in_22_fu_1302_p2;
assign zext_ln16_8_fu_880_p1 = lshr_ln16_5_fu_870_p4;
assign zext_ln16_9_fu_1367_p1 = q_in_23_fu_1362_p2;
assign zext_ln16_fu_724_p1 = lshr_ln16_1_fu_714_p4;
assign zext_ln18_cast_fu_688_p1 = zext_ln18;
assign zext_ln39_fu_1030_p1 = lshr_ln3_reg_1749;
assign zext_ln41_1_fu_1140_p1 = tmp_dst_1_reg_1698;
assign zext_ln41_2_fu_1200_p1 = tmp_dst_2_reg_1705;
assign zext_ln41_3_fu_1260_p1 = tmp_dst_3_reg_1787;
assign zext_ln41_4_fu_1320_p1 = tmp_dst_4_reg_1794;
assign zext_ln41_5_fu_1380_p1 = tmp_dst_5_reg_1829;
assign zext_ln41_6_fu_1440_p1 = tmp_dst_6_reg_1836;
assign zext_ln41_7_fu_1500_p1 = tmp_dst_7_reg_1864;
assign zext_ln41_fu_805_p1 = tmp_dst_reg_1658;
assign zext_ln47_1_fu_1191_p1 = grp_fu_674_p2;
assign zext_ln47_2_fu_1251_p1 = grp_fu_674_p2;
assign zext_ln47_3_fu_1311_p1 = grp_fu_674_p2;
assign zext_ln47_4_fu_1371_p1 = grp_fu_674_p2;
assign zext_ln47_5_fu_1431_p1 = grp_fu_674_p2;
assign zext_ln47_6_fu_1491_p1 = grp_fu_674_p2;
assign zext_ln47_7_fu_1566_p1 = grp_fu_674_p2;
assign zext_ln47_fu_1116_p1 = grp_fu_674_p2;
assign zext_ln48_1_fu_1176_p1 = lshr_ln48_1_fu_1166_p4;
assign zext_ln48_2_fu_1236_p1 = lshr_ln48_2_fu_1226_p4;
assign zext_ln48_3_fu_1296_p1 = lshr_ln48_3_fu_1286_p4;
assign zext_ln48_4_fu_1356_p1 = lshr_ln48_4_fu_1346_p4;
assign zext_ln48_5_fu_1416_p1 = lshr_ln48_5_fu_1406_p4;
assign zext_ln48_6_fu_1476_p1 = lshr_ln48_6_fu_1466_p4;
assign zext_ln48_7_fu_1556_p1 = lshr_ln48_7_reg_2082;
assign zext_ln48_fu_1065_p1 = lshr_ln2_fu_1055_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_1610[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 