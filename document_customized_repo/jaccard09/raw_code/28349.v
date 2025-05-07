module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_we1,DATA_x_7_d1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_we1,DATA_x_6_d1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_we1,DATA_x_5_d1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_we1,DATA_x_4_d1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
output   DATA_x_7_we1;
output  [63:0] DATA_x_7_d1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
output   DATA_x_6_we1;
output  [63:0] DATA_x_6_d1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
output   DATA_x_5_we1;
output  [63:0] DATA_x_5_d1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
output   DATA_x_4_we1;
output  [63:0] DATA_x_4_d1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
output   DATA_x_3_we1;
output  [63:0] DATA_x_3_d1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
output   DATA_x_2_we1;
output  [63:0] DATA_x_2_d1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [6:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [6:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_2124;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] grp_fu_1038_p3;
reg   [63:0] reg_1094;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_1045_p3;
reg   [63:0] reg_1100;
wire   [63:0] grp_fu_1052_p3;
reg   [63:0] reg_1106;
wire   [63:0] grp_fu_1059_p3;
reg   [63:0] reg_1112;
reg   [6:0] tid_2_reg_2113;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln172_fu_1164_p1;
reg   [9:0] zext_ln172_reg_2128;
wire   [9:0] zext_ln172_2_fu_1222_p1;
reg   [9:0] zext_ln172_2_reg_2158;
wire   [9:0] zext_ln172_3_fu_1268_p1;
reg   [9:0] zext_ln172_3_reg_2188;
wire   [9:0] zext_ln172_4_fu_1314_p1;
reg   [9:0] zext_ln172_4_reg_2218;
wire   [0:0] icmp_ln314_fu_1343_p2;
reg   [0:0] icmp_ln314_reg_2248;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln314_fu_1349_p3;
reg   [63:0] select_ln314_reg_2256;
wire   [63:0] select_ln315_fu_1357_p3;
reg   [63:0] select_ln315_reg_2261;
wire   [0:0] icmp_ln314_1_fu_1424_p2;
reg   [0:0] icmp_ln314_1_reg_2286;
wire   [63:0] select_ln314_1_fu_1430_p3;
reg   [63:0] select_ln314_1_reg_2294;
wire   [63:0] select_ln315_1_fu_1438_p3;
reg   [63:0] select_ln315_1_reg_2299;
wire   [0:0] icmp_ln314_2_fu_1503_p2;
reg   [0:0] icmp_ln314_2_reg_2324;
wire   [63:0] select_ln314_2_fu_1509_p3;
reg   [63:0] select_ln314_2_reg_2332;
wire   [63:0] select_ln315_2_fu_1517_p3;
reg   [63:0] select_ln315_2_reg_2337;
wire   [0:0] icmp_ln314_3_fu_1575_p2;
reg   [0:0] icmp_ln314_3_reg_2362;
wire   [63:0] select_ln314_3_fu_1581_p3;
reg   [63:0] select_ln314_3_reg_2370;
wire   [63:0] select_ln315_3_fu_1589_p3;
reg   [63:0] select_ln315_3_reg_2375;
wire   [63:0] zext_ln309_fu_1639_p1;
reg   [63:0] zext_ln309_reg_2400;
wire   [63:0] zext_ln311_fu_1703_p1;
reg   [63:0] zext_ln311_reg_2430;
wire   [63:0] grp_fu_1066_p3;
reg   [63:0] select_ln316_2_reg_2460;
wire   [63:0] grp_fu_1073_p3;
reg   [63:0] select_ln317_2_reg_2465;
wire   [63:0] grp_fu_1080_p3;
reg   [63:0] select_ln316_3_reg_2490;
wire   [63:0] grp_fu_1087_p3;
reg   [63:0] select_ln317_3_reg_2495;
wire   [63:0] zext_ln311_1_fu_1936_p1;
reg   [63:0] zext_ln311_1_reg_2560;
reg   [63:0] select_ln318_2_reg_2570;
reg   [63:0] select_ln319_2_reg_2575;
wire   [63:0] zext_ln311_2_fu_1992_p1;
reg   [63:0] zext_ln311_2_reg_2600;
reg   [63:0] select_ln318_3_reg_2610;
reg   [63:0] select_ln319_3_reg_2615;
wire   [63:0] select_ln320_fu_2050_p3;
reg   [63:0] select_ln320_reg_2640;
wire   [63:0] select_ln321_fu_2057_p3;
reg   [63:0] select_ln321_reg_2645;
wire   [63:0] select_ln320_1_fu_2064_p3;
reg   [63:0] select_ln320_1_reg_2650;
wire   [63:0] select_ln321_1_fu_2071_p3;
reg   [63:0] select_ln321_1_reg_2655;
wire   [63:0] select_ln320_2_fu_2078_p3;
reg   [63:0] select_ln320_2_reg_2660;
wire   [63:0] select_ln321_2_fu_2085_p3;
reg   [63:0] select_ln321_2_reg_2665;
wire   [63:0] select_ln320_3_fu_2092_p3;
reg   [63:0] select_ln320_3_reg_2670;
wire   [63:0] select_ln321_3_fu_2099_p3;
reg   [63:0] select_ln321_3_reg_2675;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_1_fu_1168_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_1196_p1;
wire   [63:0] zext_ln315_1_fu_1242_p1;
wire   [63:0] zext_ln315_2_fu_1288_p1;
wire   [63:0] zext_ln315_3_fu_1334_p1;
wire   [63:0] zext_ln316_fu_1380_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln317_fu_1401_p1;
wire   [63:0] zext_ln316_1_fu_1461_p1;
wire   [63:0] zext_ln317_1_fu_1482_p1;
wire   [63:0] zext_ln316_2_fu_1540_p1;
wire   [63:0] zext_ln317_2_fu_1561_p1;
wire   [63:0] zext_ln316_3_fu_1612_p1;
wire   [63:0] zext_ln317_3_fu_1633_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln318_fu_1659_p1;
wire   [63:0] zext_ln319_fu_1680_p1;
wire   [63:0] zext_ln318_1_fu_1724_p1;
wire   [63:0] zext_ln319_1_fu_1745_p1;
wire   [63:0] zext_ln318_2_fu_1766_p1;
wire   [63:0] zext_ln319_2_fu_1787_p1;
wire   [63:0] zext_ln318_3_fu_1808_p1;
wire   [63:0] zext_ln319_3_fu_1829_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln320_fu_1850_p1;
wire   [63:0] zext_ln321_fu_1871_p1;
wire   [63:0] zext_ln320_1_fu_1892_p1;
wire   [63:0] zext_ln321_1_fu_1913_p1;
wire   [63:0] zext_ln320_2_fu_1957_p1;
wire   [63:0] zext_ln321_2_fu_1978_p1;
wire   [63:0] zext_ln320_3_fu_2013_p1;
wire   [63:0] zext_ln321_3_fu_2034_p1;
reg   [6:0] tid_fu_122;
wire   [6:0] add_ln309_fu_2040_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_6_ce1_local;
reg   [6:0] smem_6_address1_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_7_ce1_local;
reg   [6:0] smem_7_address1_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [5:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [5:0] DATA_x_address0_local;
reg    DATA_x_4_we1_local;
reg   [63:0] DATA_x_4_d1_local;
reg    DATA_x_4_ce1_local;
reg   [5:0] DATA_x_4_address1_local;
reg    DATA_x_4_we0_local;
reg   [63:0] DATA_x_4_d0_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [5:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_5_we1_local;
reg   [63:0] DATA_x_5_d1_local;
reg    DATA_x_5_ce1_local;
reg   [5:0] DATA_x_5_address1_local;
reg    DATA_x_5_we0_local;
reg   [63:0] DATA_x_5_d0_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_2_we1_local;
reg   [63:0] DATA_x_2_d1_local;
reg    DATA_x_2_ce1_local;
reg   [5:0] DATA_x_2_address1_local;
reg    DATA_x_2_we0_local;
reg   [63:0] DATA_x_2_d0_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_6_we1_local;
reg   [63:0] DATA_x_6_d1_local;
reg    DATA_x_6_ce1_local;
reg   [5:0] DATA_x_6_address1_local;
reg    DATA_x_6_we0_local;
reg   [63:0] DATA_x_6_d0_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_3_we1_local;
reg   [63:0] DATA_x_3_d1_local;
reg    DATA_x_3_ce1_local;
reg   [5:0] DATA_x_3_address1_local;
reg    DATA_x_3_we0_local;
reg   [63:0] DATA_x_3_d0_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_7_we1_local;
reg   [63:0] DATA_x_7_d1_local;
reg    DATA_x_7_ce1_local;
reg   [5:0] DATA_x_7_address1_local;
reg    DATA_x_7_we0_local;
reg   [63:0] DATA_x_7_d0_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
wire   [2:0] tmp_23_fu_1134_p4;
wire   [5:0] trunc_ln312_fu_1152_p1;
wire   [8:0] offset_fu_1156_p3;
wire   [5:0] tmp_s_fu_1144_p3;
wire   [9:0] add_ln315_fu_1180_p2;
wire   [6:0] lshr_ln_fu_1186_p4;
wire   [4:0] tmp_25_fu_1202_p4;
wire   [8:0] offset_1_fu_1212_p4;
wire   [9:0] add_ln315_1_fu_1226_p2;
wire   [6:0] lshr_ln315_1_fu_1232_p4;
wire   [3:0] tmp_28_fu_1248_p4;
wire   [8:0] offset_2_fu_1258_p4;
wire   [9:0] add_ln315_2_fu_1272_p2;
wire   [6:0] lshr_ln315_2_fu_1278_p4;
wire   [3:0] tmp_29_fu_1294_p4;
wire   [8:0] offset_3_fu_1304_p4;
wire   [9:0] add_ln315_3_fu_1318_p2;
wire   [6:0] lshr_ln315_3_fu_1324_p4;
wire   [2:0] lo_fu_1340_p1;
wire   [9:0] add_ln316_fu_1365_p2;
wire   [6:0] lshr_ln1_fu_1370_p4;
wire   [9:0] add_ln317_fu_1386_p2;
wire   [6:0] lshr_ln2_fu_1391_p4;
wire   [1:0] tmp_24_fu_1407_p4;
wire   [2:0] lo_1_fu_1416_p3;
wire   [9:0] add_ln316_1_fu_1446_p2;
wire   [6:0] lshr_ln316_1_fu_1451_p4;
wire   [9:0] add_ln317_1_fu_1467_p2;
wire   [6:0] lshr_ln317_1_fu_1472_p4;
wire   [0:0] tmp_27_fu_1488_p3;
wire   [2:0] lo_2_fu_1495_p3;
wire   [9:0] add_ln316_2_fu_1525_p2;
wire   [6:0] lshr_ln316_2_fu_1530_p4;
wire   [9:0] add_ln317_2_fu_1546_p2;
wire   [6:0] lshr_ln317_2_fu_1551_p4;
wire   [2:0] lo_3_fu_1567_p3;
wire   [9:0] add_ln316_3_fu_1597_p2;
wire   [6:0] lshr_ln316_3_fu_1602_p4;
wire   [9:0] add_ln317_3_fu_1618_p2;
wire   [6:0] lshr_ln317_3_fu_1623_p4;
wire   [9:0] add_ln318_fu_1644_p2;
wire   [6:0] lshr_ln3_fu_1649_p4;
wire   [9:0] add_ln319_fu_1665_p2;
wire   [6:0] lshr_ln4_fu_1670_p4;
wire   [4:0] tmp_22_fu_1686_p4;
wire   [5:0] or_ln_fu_1695_p3;
wire   [9:0] add_ln318_1_fu_1709_p2;
wire   [6:0] lshr_ln318_1_fu_1714_p4;
wire   [9:0] add_ln319_1_fu_1730_p2;
wire   [6:0] lshr_ln319_1_fu_1735_p4;
wire   [9:0] add_ln318_2_fu_1751_p2;
wire   [6:0] lshr_ln318_2_fu_1756_p4;
wire   [9:0] add_ln319_2_fu_1772_p2;
wire   [6:0] lshr_ln319_2_fu_1777_p4;
wire   [9:0] add_ln318_3_fu_1793_p2;
wire   [6:0] lshr_ln318_3_fu_1798_p4;
wire   [9:0] add_ln319_3_fu_1814_p2;
wire   [6:0] lshr_ln319_3_fu_1819_p4;
wire   [9:0] add_ln320_fu_1835_p2;
wire   [6:0] lshr_ln5_fu_1840_p4;
wire   [9:0] add_ln321_fu_1856_p2;
wire   [6:0] lshr_ln6_fu_1861_p4;
wire   [9:0] add_ln320_1_fu_1877_p2;
wire   [6:0] lshr_ln320_1_fu_1882_p4;
wire   [9:0] add_ln321_1_fu_1898_p2;
wire   [6:0] lshr_ln321_1_fu_1903_p4;
wire   [3:0] tmp_26_fu_1919_p4;
wire   [5:0] or_ln309_1_fu_1928_p3;
wire   [9:0] add_ln320_2_fu_1942_p2;
wire   [6:0] lshr_ln320_2_fu_1947_p4;
wire   [9:0] add_ln321_2_fu_1963_p2;
wire   [6:0] lshr_ln321_2_fu_1968_p4;
wire   [5:0] or_ln309_2_fu_1984_p3;
wire   [9:0] add_ln320_3_fu_1998_p2;
wire   [6:0] lshr_ln320_3_fu_2003_p4;
wire   [9:0] add_ln321_3_fu_2019_p2;
wire   [6:0] lshr_ln321_3_fu_2024_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_122 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_122 <= 7'd0;
    end else if (((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_122 <= add_ln309_fu_2040_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln314_1_reg_2286 <= icmp_ln314_1_fu_1424_p2;
        icmp_ln314_2_reg_2324 <= icmp_ln314_2_fu_1503_p2;
        icmp_ln314_3_reg_2362 <= icmp_ln314_3_fu_1575_p2;
        icmp_ln314_reg_2248 <= icmp_ln314_fu_1343_p2;
        select_ln314_1_reg_2294 <= select_ln314_1_fu_1430_p3;
        select_ln314_2_reg_2332 <= select_ln314_2_fu_1509_p3;
        select_ln314_3_reg_2370 <= select_ln314_3_fu_1581_p3;
        select_ln314_reg_2256 <= select_ln314_fu_1349_p3;
        select_ln315_1_reg_2299 <= select_ln315_1_fu_1438_p3;
        select_ln315_2_reg_2337 <= select_ln315_2_fu_1517_p3;
        select_ln315_3_reg_2375 <= select_ln315_3_fu_1589_p3;
        select_ln315_reg_2261 <= select_ln315_fu_1357_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1094 <= grp_fu_1038_p3;
        reg_1100 <= grp_fu_1045_p3;
        reg_1106 <= grp_fu_1052_p3;
        reg_1112 <= grp_fu_1059_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln316_2_reg_2460 <= grp_fu_1066_p3;
        select_ln316_3_reg_2490 <= grp_fu_1080_p3;
        select_ln317_2_reg_2465 <= grp_fu_1073_p3;
        select_ln317_3_reg_2495 <= grp_fu_1087_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln318_2_reg_2570 <= grp_fu_1066_p3;
        select_ln318_3_reg_2610 <= grp_fu_1080_p3;
        select_ln319_2_reg_2575 <= grp_fu_1073_p3;
        select_ln319_3_reg_2615 <= grp_fu_1087_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln320_1_reg_2650 <= select_ln320_1_fu_2064_p3;
        select_ln320_2_reg_2660 <= select_ln320_2_fu_2078_p3;
        select_ln320_3_reg_2670 <= select_ln320_3_fu_2092_p3;
        select_ln320_reg_2640 <= select_ln320_fu_2050_p3;
        select_ln321_1_reg_2655 <= select_ln321_1_fu_2071_p3;
        select_ln321_2_reg_2665 <= select_ln321_2_fu_2085_p3;
        select_ln321_3_reg_2675 <= select_ln321_3_fu_2099_p3;
        select_ln321_reg_2645 <= select_ln321_fu_2057_p3;
        tid_2_reg_2113 <= ap_sig_allocacmp_tid_2;
        tmp_reg_2124 <= ap_sig_allocacmp_tid_2[32'd6];
        zext_ln172_2_reg_2158[8 : 1] <= zext_ln172_2_fu_1222_p1[8 : 1];
        zext_ln172_3_reg_2188[8 : 2] <= zext_ln172_3_fu_1268_p1[8 : 2];
        zext_ln172_4_reg_2218[8 : 2] <= zext_ln172_4_fu_1314_p1[8 : 2];
        zext_ln172_reg_2128[8 : 0] <= zext_ln172_fu_1164_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        zext_ln309_reg_2400[6 : 0] <= zext_ln309_fu_1639_p1[6 : 0];
        zext_ln311_reg_2430[5 : 1] <= zext_ln311_fu_1703_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln311_1_reg_2560[5 : 2] <= zext_ln311_1_fu_1936_p1[5 : 2];
        zext_ln311_2_reg_2600[5 : 2] <= zext_ln311_2_fu_1992_p1[5 : 2];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln311_2_reg_2600;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln311_reg_2430;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln311_1_reg_2560;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln309_reg_2400;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = select_ln316_3_reg_2490;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = reg_1106;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = select_ln316_2_reg_2460;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = reg_1094;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln311_2_reg_2600;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln311_reg_2430;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln311_1_reg_2560;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln309_reg_2400;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_d0_local = select_ln318_3_reg_2610;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_d0_local = reg_1106;
        end else begin
            DATA_x_2_d0_local = 'bx;
        end
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_d1_local = select_ln318_2_reg_2570;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_d1_local = reg_1094;
        end else begin
            DATA_x_2_d1_local = 'bx;
        end
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address0_local = zext_ln311_2_reg_2600;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln311_reg_2430;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address1_local = zext_ln311_1_reg_2560;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln309_reg_2400;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_d0_local = select_ln320_3_reg_2670;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_d0_local = select_ln320_1_reg_2650;
        end else begin
            DATA_x_3_d0_local = 'bx;
        end
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_d1_local = select_ln320_2_reg_2660;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_d1_local = select_ln320_reg_2640;
        end else begin
            DATA_x_3_d1_local = 'bx;
        end
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_4_address0_local = zext_ln311_2_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_4_address0_local = zext_ln311_fu_1703_p1;
        end else begin
            DATA_x_4_address0_local = 'bx;
        end
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_4_address1_local = zext_ln311_1_fu_1936_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_4_address1_local = zext_ln309_fu_1639_p1;
        end else begin
            DATA_x_4_address1_local = 'bx;
        end
    end else begin
        DATA_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_4_d0_local = select_ln315_3_reg_2375;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_4_d0_local = select_ln315_1_reg_2299;
        end else begin
            DATA_x_4_d0_local = 'bx;
        end
    end else begin
        DATA_x_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_4_d1_local = select_ln315_2_reg_2337;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_4_d1_local = select_ln315_reg_2261;
        end else begin
            DATA_x_4_d1_local = 'bx;
        end
    end else begin
        DATA_x_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_4_we1_local = 1'b1;
    end else begin
        DATA_x_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_address0_local = zext_ln311_2_reg_2600;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_address0_local = zext_ln311_reg_2430;
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_address1_local = zext_ln311_1_reg_2560;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_address1_local = zext_ln309_reg_2400;
    end else begin
        DATA_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_d0_local = select_ln317_3_reg_2495;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_d0_local = reg_1112;
    end else begin
        DATA_x_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_d1_local = select_ln317_2_reg_2465;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_d1_local = reg_1100;
    end else begin
        DATA_x_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_5_we1_local = 1'b1;
    end else begin
        DATA_x_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_address0_local = zext_ln311_2_reg_2600;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_address0_local = zext_ln311_reg_2430;
        end else begin
            DATA_x_6_address0_local = 'bx;
        end
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_address1_local = zext_ln311_1_reg_2560;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_address1_local = zext_ln309_reg_2400;
        end else begin
            DATA_x_6_address1_local = 'bx;
        end
    end else begin
        DATA_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_d0_local = select_ln319_3_reg_2615;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_d0_local = reg_1112;
        end else begin
            DATA_x_6_d0_local = 'bx;
        end
    end else begin
        DATA_x_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_d1_local = select_ln319_2_reg_2575;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_d1_local = reg_1100;
        end else begin
            DATA_x_6_d1_local = 'bx;
        end
    end else begin
        DATA_x_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_we1_local = 1'b1;
    end else begin
        DATA_x_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_7_address0_local = zext_ln311_2_reg_2600;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address0_local = zext_ln311_reg_2430;
        end else begin
            DATA_x_7_address0_local = 'bx;
        end
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_7_address1_local = zext_ln311_1_reg_2560;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address1_local = zext_ln309_reg_2400;
        end else begin
            DATA_x_7_address1_local = 'bx;
        end
    end else begin
        DATA_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_7_d0_local = select_ln321_3_reg_2675;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_d0_local = select_ln321_1_reg_2655;
        end else begin
            DATA_x_7_d0_local = 'bx;
        end
    end else begin
        DATA_x_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_7_d1_local = select_ln321_2_reg_2665;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_d1_local = select_ln321_reg_2645;
        end else begin
            DATA_x_7_d1_local = 'bx;
        end
    end else begin
        DATA_x_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_7_we1_local = 1'b1;
    end else begin
        DATA_x_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln311_2_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln311_fu_1703_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln311_1_fu_1936_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln309_fu_1639_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_d0_local = select_ln314_3_reg_2370;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_d0_local = select_ln314_1_reg_2294;
        end else begin
            DATA_x_d0_local = 'bx;
        end
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_d1_local = select_ln314_2_reg_2332;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_d1_local = select_ln314_reg_2256;
        end else begin
            DATA_x_d1_local = 'bx;
        end
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2124 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_122;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address0_local = zext_ln321_1_fu_1913_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address0_local = zext_ln319_1_fu_1745_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address0_local = zext_ln317_1_fu_1482_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address0_local = zext_ln315_1_fu_1242_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln320_1_fu_1892_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address1_local = zext_ln318_1_fu_1724_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln316_1_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address0_local = zext_ln321_2_fu_1978_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address0_local = zext_ln319_2_fu_1787_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address0_local = zext_ln317_2_fu_1561_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address0_local = zext_ln315_2_fu_1288_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address1_local = zext_ln320_2_fu_1957_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address1_local = zext_ln318_2_fu_1766_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address1_local = zext_ln316_2_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address0_local = zext_ln321_3_fu_2034_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address0_local = zext_ln319_3_fu_1829_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address0_local = zext_ln317_3_fu_1633_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address0_local = zext_ln315_3_fu_1334_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address1_local = zext_ln320_3_fu_2013_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address1_local = zext_ln318_3_fu_1808_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address1_local = zext_ln316_3_fu_1612_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_4_address0_local = zext_ln321_fu_1871_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_4_address0_local = zext_ln319_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_4_address0_local = zext_ln317_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_4_address0_local = zext_ln315_fu_1196_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_4_address1_local = zext_ln320_fu_1850_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_4_address1_local = zext_ln318_fu_1659_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_4_address1_local = zext_ln316_fu_1380_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_4_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_5_address0_local = zext_ln321_1_fu_1913_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_5_address0_local = zext_ln319_1_fu_1745_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_5_address0_local = zext_ln317_1_fu_1482_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_5_address0_local = zext_ln315_1_fu_1242_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_5_address1_local = zext_ln320_1_fu_1892_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_5_address1_local = zext_ln318_1_fu_1724_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_5_address1_local = zext_ln316_1_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_5_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_6_address0_local = zext_ln321_2_fu_1978_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_6_address0_local = zext_ln319_2_fu_1787_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_6_address0_local = zext_ln317_2_fu_1561_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_6_address0_local = zext_ln315_2_fu_1288_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_6_address1_local = zext_ln320_2_fu_1957_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_6_address1_local = zext_ln318_2_fu_1766_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_6_address1_local = zext_ln316_2_fu_1540_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_6_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_7_address0_local = zext_ln321_3_fu_2034_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_7_address0_local = zext_ln319_3_fu_1829_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_7_address0_local = zext_ln317_3_fu_1633_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_7_address0_local = zext_ln315_3_fu_1334_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_7_address1_local = zext_ln320_3_fu_2013_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_7_address1_local = zext_ln318_3_fu_1808_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_7_address1_local = zext_ln316_3_fu_1612_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_7_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address0_local = zext_ln321_fu_1871_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln319_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln317_fu_1401_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address0_local = zext_ln315_fu_1196_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln320_fu_1850_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address1_local = zext_ln318_fu_1659_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln316_fu_1380_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address1_local = zext_ln172_1_fu_1168_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = DATA_x_2_d0_local;
assign DATA_x_2_d1 = DATA_x_2_d1_local;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = DATA_x_3_d0_local;
assign DATA_x_3_d1 = DATA_x_3_d1_local;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_address1 = DATA_x_4_address1_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_4_d0 = DATA_x_4_d0_local;
assign DATA_x_4_d1 = DATA_x_4_d1_local;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_4_we1 = DATA_x_4_we1_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_address1 = DATA_x_5_address1_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_5_d0 = DATA_x_5_d0_local;
assign DATA_x_5_d1 = DATA_x_5_d1_local;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_5_we1 = DATA_x_5_we1_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_address1 = DATA_x_6_address1_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_6_d0 = DATA_x_6_d0_local;
assign DATA_x_6_d1 = DATA_x_6_d1_local;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_6_we1 = DATA_x_6_we1_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_address1 = DATA_x_7_address1_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_7_d0 = DATA_x_7_d0_local;
assign DATA_x_7_d1 = DATA_x_7_d1_local;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_7_we1 = DATA_x_7_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_2040_p2 = (tid_2_reg_2113 + 7'd4);
assign add_ln315_1_fu_1226_p2 = (zext_ln172_2_fu_1222_p1 + 10'd32);
assign add_ln315_2_fu_1272_p2 = (zext_ln172_3_fu_1268_p1 + 10'd32);
assign add_ln315_3_fu_1318_p2 = (zext_ln172_4_fu_1314_p1 + 10'd32);
assign add_ln315_fu_1180_p2 = (zext_ln172_fu_1164_p1 + 10'd32);
assign add_ln316_1_fu_1446_p2 = (zext_ln172_2_reg_2158 + 10'd8);
assign add_ln316_2_fu_1525_p2 = (zext_ln172_3_reg_2188 + 10'd8);
assign add_ln316_3_fu_1597_p2 = (zext_ln172_4_reg_2218 + 10'd8);
assign add_ln316_fu_1365_p2 = (zext_ln172_reg_2128 + 10'd8);
assign add_ln317_1_fu_1467_p2 = (zext_ln172_2_reg_2158 + 10'd40);
assign add_ln317_2_fu_1546_p2 = (zext_ln172_3_reg_2188 + 10'd40);
assign add_ln317_3_fu_1618_p2 = (zext_ln172_4_reg_2218 + 10'd40);
assign add_ln317_fu_1386_p2 = (zext_ln172_reg_2128 + 10'd40);
assign add_ln318_1_fu_1709_p2 = (zext_ln172_2_reg_2158 + 10'd16);
assign add_ln318_2_fu_1751_p2 = (zext_ln172_3_reg_2188 + 10'd16);
assign add_ln318_3_fu_1793_p2 = (zext_ln172_4_reg_2218 + 10'd16);
assign add_ln318_fu_1644_p2 = (zext_ln172_reg_2128 + 10'd16);
assign add_ln319_1_fu_1730_p2 = (zext_ln172_2_reg_2158 + 10'd48);
assign add_ln319_2_fu_1772_p2 = (zext_ln172_3_reg_2188 + 10'd48);
assign add_ln319_3_fu_1814_p2 = (zext_ln172_4_reg_2218 + 10'd48);
assign add_ln319_fu_1665_p2 = (zext_ln172_reg_2128 + 10'd48);
assign add_ln320_1_fu_1877_p2 = (zext_ln172_2_reg_2158 + 10'd24);
assign add_ln320_2_fu_1942_p2 = (zext_ln172_3_reg_2188 + 10'd24);
assign add_ln320_3_fu_1998_p2 = (zext_ln172_4_reg_2218 + 10'd24);
assign add_ln320_fu_1835_p2 = (zext_ln172_reg_2128 + 10'd24);
assign add_ln321_1_fu_1898_p2 = (zext_ln172_2_reg_2158 + 10'd56);
assign add_ln321_2_fu_1963_p2 = (zext_ln172_3_reg_2188 + 10'd56);
assign add_ln321_3_fu_2019_p2 = (zext_ln172_4_reg_2218 + 10'd56);
assign add_ln321_fu_1856_p2 = (zext_ln172_reg_2128 + 10'd56);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_1038_p3 = ((icmp_ln314_reg_2248[0:0] == 1'b1) ? smem_4_q1 : smem_q1);
assign grp_fu_1045_p3 = ((icmp_ln314_reg_2248[0:0] == 1'b1) ? smem_4_q0 : smem_q0);
assign grp_fu_1052_p3 = ((icmp_ln314_1_reg_2286[0:0] == 1'b1) ? smem_5_q1 : smem_1_q1);
assign grp_fu_1059_p3 = ((icmp_ln314_1_reg_2286[0:0] == 1'b1) ? smem_5_q0 : smem_1_q0);
assign grp_fu_1066_p3 = ((icmp_ln314_2_reg_2324[0:0] == 1'b1) ? smem_6_q1 : smem_2_q1);
assign grp_fu_1073_p3 = ((icmp_ln314_2_reg_2324[0:0] == 1'b1) ? smem_6_q0 : smem_2_q0);
assign grp_fu_1080_p3 = ((icmp_ln314_3_reg_2362[0:0] == 1'b1) ? smem_7_q1 : smem_3_q1);
assign grp_fu_1087_p3 = ((icmp_ln314_3_reg_2362[0:0] == 1'b1) ? smem_7_q0 : smem_3_q0);
assign icmp_ln314_1_fu_1424_p2 = ((lo_1_fu_1416_p3 == 3'd5) ? 1'b1 : 1'b0);
assign icmp_ln314_2_fu_1503_p2 = ((lo_2_fu_1495_p3 == 3'd6) ? 1'b1 : 1'b0);
assign icmp_ln314_3_fu_1575_p2 = ((lo_3_fu_1567_p3 == 3'd7) ? 1'b1 : 1'b0);
assign icmp_ln314_fu_1343_p2 = ((lo_fu_1340_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lo_1_fu_1416_p3 = {{tmp_24_fu_1407_p4}, {1'd1}};
assign lo_2_fu_1495_p3 = {{tmp_27_fu_1488_p3}, {2'd2}};
assign lo_3_fu_1567_p3 = {{tmp_27_fu_1488_p3}, {2'd3}};
assign lo_fu_1340_p1 = tid_2_reg_2113[2:0];
assign lshr_ln1_fu_1370_p4 = {{add_ln316_fu_1365_p2[9:3]}};
assign lshr_ln2_fu_1391_p4 = {{add_ln317_fu_1386_p2[9:3]}};
assign lshr_ln315_1_fu_1232_p4 = {{add_ln315_1_fu_1226_p2[9:3]}};
assign lshr_ln315_2_fu_1278_p4 = {{add_ln315_2_fu_1272_p2[9:3]}};
assign lshr_ln315_3_fu_1324_p4 = {{add_ln315_3_fu_1318_p2[9:3]}};
assign lshr_ln316_1_fu_1451_p4 = {{add_ln316_1_fu_1446_p2[9:3]}};
assign lshr_ln316_2_fu_1530_p4 = {{add_ln316_2_fu_1525_p2[9:3]}};
assign lshr_ln316_3_fu_1602_p4 = {{add_ln316_3_fu_1597_p2[9:3]}};
assign lshr_ln317_1_fu_1472_p4 = {{add_ln317_1_fu_1467_p2[9:3]}};
assign lshr_ln317_2_fu_1551_p4 = {{add_ln317_2_fu_1546_p2[9:3]}};
assign lshr_ln317_3_fu_1623_p4 = {{add_ln317_3_fu_1618_p2[9:3]}};
assign lshr_ln318_1_fu_1714_p4 = {{add_ln318_1_fu_1709_p2[9:3]}};
assign lshr_ln318_2_fu_1756_p4 = {{add_ln318_2_fu_1751_p2[9:3]}};
assign lshr_ln318_3_fu_1798_p4 = {{add_ln318_3_fu_1793_p2[9:3]}};
assign lshr_ln319_1_fu_1735_p4 = {{add_ln319_1_fu_1730_p2[9:3]}};
assign lshr_ln319_2_fu_1777_p4 = {{add_ln319_2_fu_1772_p2[9:3]}};
assign lshr_ln319_3_fu_1819_p4 = {{add_ln319_3_fu_1814_p2[9:3]}};
assign lshr_ln320_1_fu_1882_p4 = {{add_ln320_1_fu_1877_p2[9:3]}};
assign lshr_ln320_2_fu_1947_p4 = {{add_ln320_2_fu_1942_p2[9:3]}};
assign lshr_ln320_3_fu_2003_p4 = {{add_ln320_3_fu_1998_p2[9:3]}};
assign lshr_ln321_1_fu_1903_p4 = {{add_ln321_1_fu_1898_p2[9:3]}};
assign lshr_ln321_2_fu_1968_p4 = {{add_ln321_2_fu_1963_p2[9:3]}};
assign lshr_ln321_3_fu_2024_p4 = {{add_ln321_3_fu_2019_p2[9:3]}};
assign lshr_ln3_fu_1649_p4 = {{add_ln318_fu_1644_p2[9:3]}};
assign lshr_ln4_fu_1670_p4 = {{add_ln319_fu_1665_p2[9:3]}};
assign lshr_ln5_fu_1840_p4 = {{add_ln320_fu_1835_p2[9:3]}};
assign lshr_ln6_fu_1861_p4 = {{add_ln321_fu_1856_p2[9:3]}};
assign lshr_ln_fu_1186_p4 = {{add_ln315_fu_1180_p2[9:3]}};
assign offset_1_fu_1212_p4 = {{{tmp_23_fu_1134_p4}, {tmp_25_fu_1202_p4}}, {1'd1}};
assign offset_2_fu_1258_p4 = {{{tmp_23_fu_1134_p4}, {tmp_28_fu_1248_p4}}, {2'd2}};
assign offset_3_fu_1304_p4 = {{{tmp_23_fu_1134_p4}, {tmp_29_fu_1294_p4}}, {2'd3}};
assign offset_fu_1156_p3 = {{tmp_23_fu_1134_p4}, {trunc_ln312_fu_1152_p1}};
assign or_ln309_1_fu_1928_p3 = {{tmp_26_fu_1919_p4}, {2'd2}};
assign or_ln309_2_fu_1984_p3 = {{tmp_26_fu_1919_p4}, {2'd3}};
assign or_ln_fu_1695_p3 = {{tmp_22_fu_1686_p4}, {1'd1}};
assign select_ln314_1_fu_1430_p3 = ((icmp_ln314_1_fu_1424_p2[0:0] == 1'b1) ? smem_5_q1 : smem_1_q1);
assign select_ln314_2_fu_1509_p3 = ((icmp_ln314_2_fu_1503_p2[0:0] == 1'b1) ? smem_6_q1 : smem_2_q1);
assign select_ln314_3_fu_1581_p3 = ((icmp_ln314_3_fu_1575_p2[0:0] == 1'b1) ? smem_7_q1 : smem_3_q1);
assign select_ln314_fu_1349_p3 = ((icmp_ln314_fu_1343_p2[0:0] == 1'b1) ? smem_4_q1 : smem_q1);
assign select_ln315_1_fu_1438_p3 = ((icmp_ln314_1_fu_1424_p2[0:0] == 1'b1) ? smem_5_q0 : smem_1_q0);
assign select_ln315_2_fu_1517_p3 = ((icmp_ln314_2_fu_1503_p2[0:0] == 1'b1) ? smem_6_q0 : smem_2_q0);
assign select_ln315_3_fu_1589_p3 = ((icmp_ln314_3_fu_1575_p2[0:0] == 1'b1) ? smem_7_q0 : smem_3_q0);
assign select_ln315_fu_1357_p3 = ((icmp_ln314_fu_1343_p2[0:0] == 1'b1) ? smem_4_q0 : smem_q0);
assign select_ln320_1_fu_2064_p3 = ((icmp_ln314_1_reg_2286[0:0] == 1'b1) ? smem_5_q1 : smem_1_q1);
assign select_ln320_2_fu_2078_p3 = ((icmp_ln314_2_reg_2324[0:0] == 1'b1) ? smem_6_q1 : smem_2_q1);
assign select_ln320_3_fu_2092_p3 = ((icmp_ln314_3_reg_2362[0:0] == 1'b1) ? smem_7_q1 : smem_3_q1);
assign select_ln320_fu_2050_p3 = ((icmp_ln314_reg_2248[0:0] == 1'b1) ? smem_4_q1 : smem_q1);
assign select_ln321_1_fu_2071_p3 = ((icmp_ln314_1_reg_2286[0:0] == 1'b1) ? smem_5_q0 : smem_1_q0);
assign select_ln321_2_fu_2085_p3 = ((icmp_ln314_2_reg_2324[0:0] == 1'b1) ? smem_6_q0 : smem_2_q0);
assign select_ln321_3_fu_2099_p3 = ((icmp_ln314_3_reg_2362[0:0] == 1'b1) ? smem_7_q0 : smem_3_q0);
assign select_ln321_fu_2057_p3 = ((icmp_ln314_reg_2248[0:0] == 1'b1) ? smem_4_q0 : smem_q0);
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_22_fu_1686_p4 = {{tid_2_reg_2113[5:1]}};
assign tmp_23_fu_1134_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_24_fu_1407_p4 = {{tid_2_reg_2113[2:1]}};
assign tmp_25_fu_1202_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_26_fu_1919_p4 = {{tid_2_reg_2113[5:2]}};
assign tmp_27_fu_1488_p3 = tid_2_reg_2113[32'd2];
assign tmp_28_fu_1248_p4 = {{ap_sig_allocacmp_tid_2[5:2]}};
assign tmp_29_fu_1294_p4 = {{ap_sig_allocacmp_tid_2[5:2]}};
assign tmp_s_fu_1144_p3 = {{tmp_23_fu_1134_p4}, {tmp_23_fu_1134_p4}};
assign trunc_ln312_fu_1152_p1 = ap_sig_allocacmp_tid_2[5:0];
assign zext_ln172_1_fu_1168_p1 = tmp_s_fu_1144_p3;
assign zext_ln172_2_fu_1222_p1 = offset_1_fu_1212_p4;
assign zext_ln172_3_fu_1268_p1 = offset_2_fu_1258_p4;
assign zext_ln172_4_fu_1314_p1 = offset_3_fu_1304_p4;
assign zext_ln172_fu_1164_p1 = offset_fu_1156_p3;
assign zext_ln309_fu_1639_p1 = tid_2_reg_2113;
assign zext_ln311_1_fu_1936_p1 = or_ln309_1_fu_1928_p3;
assign zext_ln311_2_fu_1992_p1 = or_ln309_2_fu_1984_p3;
assign zext_ln311_fu_1703_p1 = or_ln_fu_1695_p3;
assign zext_ln315_1_fu_1242_p1 = lshr_ln315_1_fu_1232_p4;
assign zext_ln315_2_fu_1288_p1 = lshr_ln315_2_fu_1278_p4;
assign zext_ln315_3_fu_1334_p1 = lshr_ln315_3_fu_1324_p4;
assign zext_ln315_fu_1196_p1 = lshr_ln_fu_1186_p4;
assign zext_ln316_1_fu_1461_p1 = lshr_ln316_1_fu_1451_p4;
assign zext_ln316_2_fu_1540_p1 = lshr_ln316_2_fu_1530_p4;
assign zext_ln316_3_fu_1612_p1 = lshr_ln316_3_fu_1602_p4;
assign zext_ln316_fu_1380_p1 = lshr_ln1_fu_1370_p4;
assign zext_ln317_1_fu_1482_p1 = lshr_ln317_1_fu_1472_p4;
assign zext_ln317_2_fu_1561_p1 = lshr_ln317_2_fu_1551_p4;
assign zext_ln317_3_fu_1633_p1 = lshr_ln317_3_fu_1623_p4;
assign zext_ln317_fu_1401_p1 = lshr_ln2_fu_1391_p4;
assign zext_ln318_1_fu_1724_p1 = lshr_ln318_1_fu_1714_p4;
assign zext_ln318_2_fu_1766_p1 = lshr_ln318_2_fu_1756_p4;
assign zext_ln318_3_fu_1808_p1 = lshr_ln318_3_fu_1798_p4;
assign zext_ln318_fu_1659_p1 = lshr_ln3_fu_1649_p4;
assign zext_ln319_1_fu_1745_p1 = lshr_ln319_1_fu_1735_p4;
assign zext_ln319_2_fu_1787_p1 = lshr_ln319_2_fu_1777_p4;
assign zext_ln319_3_fu_1829_p1 = lshr_ln319_3_fu_1819_p4;
assign zext_ln319_fu_1680_p1 = lshr_ln4_fu_1670_p4;
assign zext_ln320_1_fu_1892_p1 = lshr_ln320_1_fu_1882_p4;
assign zext_ln320_2_fu_1957_p1 = lshr_ln320_2_fu_1947_p4;
assign zext_ln320_3_fu_2013_p1 = lshr_ln320_3_fu_2003_p4;
assign zext_ln320_fu_1850_p1 = lshr_ln5_fu_1840_p4;
assign zext_ln321_1_fu_1913_p1 = lshr_ln321_1_fu_1903_p4;
assign zext_ln321_2_fu_1978_p1 = lshr_ln321_2_fu_1968_p4;
assign zext_ln321_3_fu_2034_p1 = lshr_ln321_3_fu_2024_p4;
assign zext_ln321_fu_1871_p1 = lshr_ln6_fu_1861_p4;
always @ (posedge ap_clk) begin
    zext_ln172_reg_2128[9] <= 1'b0;
    zext_ln172_2_reg_2158[0] <= 1'b1;
    zext_ln172_2_reg_2158[9] <= 1'b0;
    zext_ln172_3_reg_2188[1:0] <= 2'b10;
    zext_ln172_3_reg_2188[9] <= 1'b0;
    zext_ln172_4_reg_2218[1:0] <= 2'b11;
    zext_ln172_4_reg_2218[9] <= 1'b0;
    zext_ln309_reg_2400[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln311_reg_2430[0] <= 1'b1;
    zext_ln311_reg_2430[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln311_1_reg_2560[1:0] <= 2'b10;
    zext_ln311_1_reg_2560[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln311_2_reg_2600[1:0] <= 2'b11;
    zext_ln311_2_reg_2600[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 