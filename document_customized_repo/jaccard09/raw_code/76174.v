module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,p_udiv,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,p_udiv1,p_udiv3,p_udiv5,p_udiv7,C_load,C_load_1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [10:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [10:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [10:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [10:0] p_udiv;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [10:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [10:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [10:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [10:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [10:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [10:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [10:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [10:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
input  [10:0] p_udiv1;
input  [10:0] p_udiv3;
input  [10:0] p_udiv5;
input  [10:0] p_udiv7;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] icmp_ln38_fu_1559_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_1293_p19;
reg   [31:0] reg_1488;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire  signed [31:0] grp_fu_1215_p19;
reg   [31:0] reg_1492;
wire   [31:0] grp_fu_1332_p19;
reg   [31:0] reg_1496;
wire  signed [31:0] grp_fu_1254_p19;
reg   [31:0] reg_1500;
wire   [31:0] grp_fu_1371_p19;
reg   [31:0] reg_1504;
wire   [31:0] grp_fu_1168_p2;
reg   [31:0] reg_1508;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] k_1_reg_2053;
wire   [2:0] trunc_ln16_fu_1520_p1;
reg   [2:0] trunc_ln16_reg_2059;
reg   [2:0] trunc_ln16_reg_2059_pp0_iter1_reg;
reg   [2:0] trunc_ln16_reg_2059_pp0_iter2_reg;
reg   [2:0] trunc_ln16_reg_2059_pp0_iter3_reg;
wire   [13:0] trunc_ln16_1_fu_1524_p1;
reg   [13:0] trunc_ln16_1_reg_2074;
reg   [10:0] trunc_ln1_reg_2079;
wire   [63:0] zext_ln39_fu_1542_p1;
reg   [63:0] zext_ln39_reg_2088;
reg   [63:0] zext_ln39_reg_2088_pp0_iter1_reg;
reg   [63:0] zext_ln39_reg_2088_pp0_iter2_reg;
reg   [0:0] icmp_ln38_reg_2156;
reg   [0:0] icmp_ln38_reg_2156_pp0_iter1_reg;
reg   [0:0] icmp_ln38_reg_2156_pp0_iter2_reg;
reg   [10:0] trunc_ln2_reg_2160;
wire  signed [31:0] grp_fu_1176_p19;
reg  signed [31:0] sum0_reg_2169;
reg  signed [31:0] sum0_1_reg_2255;
wire   [31:0] tmp_5_fu_1612_p19;
reg   [31:0] tmp_5_reg_2262;
reg  signed [31:0] sum0_2_reg_2267;
reg  signed [31:0] sum0_2_reg_2267_pp0_iter2_reg;
wire   [63:0] zext_ln44_fu_1655_p1;
reg   [63:0] zext_ln44_reg_2274;
reg   [63:0] zext_ln44_reg_2274_pp0_iter2_reg;
reg   [63:0] zext_ln44_reg_2274_pp0_iter3_reg;
reg   [31:0] tmp_2_reg_2446;
wire  signed [31:0] grp_fu_1410_p19;
reg  signed [31:0] sum0_3_reg_2451;
wire   [10:0] add_ln41_1_fu_1741_p2;
reg   [10:0] add_ln41_1_reg_2497;
wire   [31:0] grp_fu_1449_p19;
reg   [31:0] tmp_14_reg_2502;
wire   [31:0] tmp_16_fu_1761_p19;
reg   [31:0] tmp_16_reg_2547;
reg   [31:0] tmp_reg_2552;
wire   [31:0] add_ln48_3_fu_1804_p2;
reg   [31:0] add_ln48_3_reg_2557;
wire   [31:0] grp_fu_1164_p2;
reg   [31:0] mul_ln48_reg_2562;
reg   [31:0] mul_ln48_reg_2562_pp0_iter2_reg;
wire   [31:0] add_ln48_9_fu_1815_p2;
reg   [31:0] add_ln48_9_reg_2567;
reg   [31:0] mul_ln48_2_reg_2572;
reg   [31:0] mul_ln48_2_reg_2572_pp0_iter2_reg;
wire   [31:0] add_ln48_15_fu_1826_p2;
reg   [31:0] add_ln48_15_reg_2577;
wire   [31:0] grp_fu_1172_p2;
reg   [31:0] mul_ln48_4_reg_2582;
reg   [31:0] mul_ln48_4_reg_2582_pp0_iter2_reg;
reg   [31:0] tmp_12_reg_2587;
reg   [31:0] tmp_15_reg_2632;
wire  signed [31:0] add_ln48_4_fu_1853_p2;
reg  signed [31:0] add_ln48_4_reg_2637;
wire  signed [31:0] add_ln48_10_fu_1869_p2;
reg  signed [31:0] add_ln48_10_reg_2642;
wire  signed [31:0] add_ln48_16_fu_1885_p2;
reg  signed [31:0] add_ln48_16_reg_2647;
wire   [31:0] tmp_13_fu_1890_p19;
reg   [31:0] tmp_13_reg_2652;
wire   [31:0] add_ln48_21_fu_1933_p2;
reg   [31:0] add_ln48_21_reg_2657;
reg   [31:0] mul_ln48_6_reg_2662;
reg   [31:0] mul_ln48_6_reg_2662_pp0_iter3_reg;
wire  signed [31:0] add_ln48_22_fu_1947_p2;
reg  signed [31:0] add_ln48_22_reg_2667;
reg   [31:0] mul_ln48_3_reg_2672;
reg   [31:0] mul_ln48_5_reg_2677;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
reg    ap_condition_exit_pp0_iter3_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_fu_1584_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln43_fu_1600_p1;
wire   [63:0] zext_ln42_1_fu_1671_p1;
wire   [63:0] zext_ln40_fu_1697_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln41_fu_1713_p1;
wire   [63:0] zext_ln40_1_fu_1729_p1;
wire   [63:0] zext_ln43_1_fu_1749_p1;
wire   [63:0] zext_ln41_1_fu_1832_p1;
wire   [10:0] sol_6_addr_gep_fu_907_p3;
wire   [10:0] sol_5_addr_gep_fu_928_p3;
wire   [10:0] sol_4_addr_gep_fu_949_p3;
wire   [10:0] sol_3_addr_gep_fu_970_p3;
wire   [10:0] sol_2_addr_gep_fu_991_p3;
wire   [10:0] sol_1_addr_gep_fu_1012_p3;
wire   [10:0] sol_7_addr_gep_fu_1020_p3;
wire   [10:0] sol_0_addr_gep_fu_1028_p3;
wire   [10:0] sol_6_addr_3_gep_fu_1036_p3;
wire   [10:0] sol_5_addr_3_gep_fu_1052_p3;
wire   [10:0] sol_4_addr_3_gep_fu_1068_p3;
wire   [10:0] sol_3_addr_3_gep_fu_1084_p3;
wire   [10:0] sol_2_addr_3_gep_fu_1100_p3;
wire   [10:0] sol_7_addr_2_gep_fu_1116_p3;
wire   [10:0] sol_0_addr_2_gep_fu_1132_p3;
wire   [10:0] sol_1_addr_2_gep_fu_1148_p3;
reg   [63:0] k_fu_110;
wire   [63:0] add_ln44_3_fu_1683_p2;
wire    ap_loop_init;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [10:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [10:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [10:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [10:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [10:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [10:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [10:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [10:0] orig_7_address0_local;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
wire   [31:0] add_ln48_5_fu_1952_p2;
reg    sol_6_ce0_local;
reg   [10:0] sol_6_address0_local;
wire   [31:0] add_ln48_11_fu_1965_p2;
wire   [31:0] add_ln48_17_fu_1977_p2;
wire   [31:0] add_ln48_23_fu_1989_p2;
reg    sol_7_we0_local;
reg   [31:0] sol_7_d0_local;
reg    sol_7_ce0_local;
reg   [10:0] sol_7_address0_local;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
reg    sol_5_ce0_local;
reg   [10:0] sol_5_address0_local;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
reg    sol_4_ce0_local;
reg   [10:0] sol_4_address0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg   [10:0] sol_3_address0_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
reg    sol_2_ce0_local;
reg   [10:0] sol_2_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
reg    sol_1_ce0_local;
reg   [10:0] sol_1_address0_local;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
reg    sol_0_ce0_local;
reg   [10:0] sol_0_address0_local;
reg  signed [31:0] grp_fu_1164_p0;
reg  signed [31:0] grp_fu_1164_p1;
reg  signed [31:0] grp_fu_1168_p0;
reg  signed [31:0] grp_fu_1168_p1;
reg  signed [31:0] grp_fu_1172_p0;
reg  signed [31:0] grp_fu_1172_p1;
wire   [31:0] grp_fu_1176_p17;
reg   [2:0] grp_fu_1176_p18;
wire   [31:0] grp_fu_1215_p17;
reg   [2:0] grp_fu_1215_p18;
wire   [31:0] grp_fu_1254_p17;
reg   [2:0] grp_fu_1254_p18;
wire   [31:0] grp_fu_1293_p17;
reg   [2:0] grp_fu_1293_p18;
wire   [31:0] grp_fu_1332_p17;
reg   [2:0] grp_fu_1332_p18;
wire   [31:0] grp_fu_1371_p17;
reg   [2:0] grp_fu_1371_p18;
wire   [31:0] grp_fu_1410_p17;
reg   [2:0] grp_fu_1410_p18;
wire   [31:0] grp_fu_1449_p17;
reg   [2:0] grp_fu_1449_p18;
wire   [10:0] add_ln39_fu_1538_p2;
wire   [63:0] add_ln44_fu_1554_p2;
wire   [13:0] add_ln44_1_fu_1565_p2;
wire   [10:0] add_ln42_fu_1580_p2;
wire   [10:0] add_ln43_fu_1596_p2;
wire   [31:0] tmp_5_fu_1612_p17;
wire   [10:0] add_ln44_2_fu_1651_p2;
wire   [10:0] add_ln42_1_fu_1667_p2;
wire   [10:0] add_ln40_fu_1693_p2;
wire   [10:0] add_ln41_fu_1709_p2;
wire   [10:0] add_ln40_1_fu_1725_p2;
wire   [10:0] add_ln43_1_fu_1745_p2;
wire   [31:0] tmp_16_fu_1761_p17;
wire   [31:0] add_ln48_2_fu_1800_p2;
wire   [31:0] add_ln48_8_fu_1810_p2;
wire   [31:0] add_ln48_14_fu_1821_p2;
wire   [31:0] add_ln48_fu_1843_p2;
wire   [31:0] add_ln48_1_fu_1847_p2;
wire   [31:0] add_ln48_6_fu_1858_p2;
wire   [31:0] add_ln48_7_fu_1863_p2;
wire   [31:0] add_ln48_12_fu_1874_p2;
wire   [31:0] add_ln48_13_fu_1879_p2;
wire   [31:0] tmp_13_fu_1890_p17;
wire   [31:0] add_ln48_20_fu_1929_p2;
wire   [31:0] add_ln48_18_fu_1938_p2;
wire   [31:0] add_ln48_19_fu_1942_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1439;
reg    ap_condition_1444;
reg    ap_condition_1447;
reg    ap_condition_1452;
reg    ap_condition_1455;
reg    ap_condition_1459;
reg    ap_condition_1462;
reg    ap_condition_1466;
reg    ap_condition_1469;
reg    ap_condition_1473;
reg    ap_condition_1476;
reg    ap_condition_1480;
reg    ap_condition_1483;
reg    ap_condition_1487;
reg    ap_condition_1490;
reg    ap_condition_1494;
reg    ap_condition_1497;
reg    ap_condition_1501;
reg    ap_condition_1504;
reg    ap_condition_1508;
reg    ap_condition_1511;
reg    ap_condition_1515;
reg    ap_condition_1518;
reg    ap_condition_1522;
reg    ap_condition_1525;
reg    ap_condition_1529;
reg    ap_condition_1532;
reg    ap_condition_1536;
reg    ap_condition_1539;
reg    ap_condition_1543;
reg    ap_condition_1546;
reg    ap_condition_1550;
reg    ap_condition_1554;
reg    ap_condition_1558;
reg    ap_condition_1563;
reg    ap_condition_1567;
reg    ap_condition_1571;
reg    ap_condition_1575;
reg    ap_condition_1579;
reg    ap_condition_1583;
reg    ap_condition_1587;
reg    ap_condition_1591;
reg    ap_condition_1595;
reg    ap_condition_1599;
reg    ap_condition_1603;
reg    ap_condition_1607;
reg    ap_condition_1611;
reg    ap_condition_1615;
wire   [2:0] grp_fu_1176_p1;
wire   [2:0] grp_fu_1176_p3;
wire   [2:0] grp_fu_1176_p5;
wire   [2:0] grp_fu_1176_p7;
wire  signed [2:0] grp_fu_1176_p9;
wire  signed [2:0] grp_fu_1176_p11;
wire  signed [2:0] grp_fu_1176_p13;
wire  signed [2:0] grp_fu_1176_p15;
wire  signed [2:0] grp_fu_1215_p1;
wire   [2:0] grp_fu_1215_p3;
wire   [2:0] grp_fu_1215_p5;
wire   [2:0] grp_fu_1215_p7;
wire   [2:0] grp_fu_1215_p9;
wire  signed [2:0] grp_fu_1215_p11;
wire  signed [2:0] grp_fu_1215_p13;
wire  signed [2:0] grp_fu_1215_p15;
wire  signed [2:0] grp_fu_1254_p1;
wire  signed [2:0] grp_fu_1254_p3;
wire   [2:0] grp_fu_1254_p5;
wire   [2:0] grp_fu_1254_p7;
wire   [2:0] grp_fu_1254_p9;
wire   [2:0] grp_fu_1254_p11;
wire  signed [2:0] grp_fu_1254_p13;
wire  signed [2:0] grp_fu_1254_p15;
wire   [2:0] grp_fu_1293_p1;
wire   [2:0] grp_fu_1293_p3;
wire   [2:0] grp_fu_1293_p5;
wire   [2:0] grp_fu_1293_p7;
wire  signed [2:0] grp_fu_1293_p9;
wire  signed [2:0] grp_fu_1293_p11;
wire  signed [2:0] grp_fu_1293_p13;
wire  signed [2:0] grp_fu_1293_p15;
wire  signed [2:0] grp_fu_1332_p1;
wire   [2:0] grp_fu_1332_p3;
wire   [2:0] grp_fu_1332_p5;
wire   [2:0] grp_fu_1332_p7;
wire   [2:0] grp_fu_1332_p9;
wire  signed [2:0] grp_fu_1332_p11;
wire  signed [2:0] grp_fu_1332_p13;
wire  signed [2:0] grp_fu_1332_p15;
wire  signed [2:0] grp_fu_1371_p1;
wire  signed [2:0] grp_fu_1371_p3;
wire   [2:0] grp_fu_1371_p5;
wire   [2:0] grp_fu_1371_p7;
wire   [2:0] grp_fu_1371_p9;
wire   [2:0] grp_fu_1371_p11;
wire  signed [2:0] grp_fu_1371_p13;
wire  signed [2:0] grp_fu_1371_p15;
wire  signed [2:0] grp_fu_1410_p1;
wire  signed [2:0] grp_fu_1410_p3;
wire  signed [2:0] grp_fu_1410_p5;
wire   [2:0] grp_fu_1410_p7;
wire   [2:0] grp_fu_1410_p9;
wire   [2:0] grp_fu_1410_p11;
wire   [2:0] grp_fu_1410_p13;
wire  signed [2:0] grp_fu_1410_p15;
wire  signed [2:0] grp_fu_1449_p1;
wire  signed [2:0] grp_fu_1449_p3;
wire  signed [2:0] grp_fu_1449_p5;
wire   [2:0] grp_fu_1449_p7;
wire   [2:0] grp_fu_1449_p9;
wire   [2:0] grp_fu_1449_p11;
wire   [2:0] grp_fu_1449_p13;
wire  signed [2:0] grp_fu_1449_p15;
wire   [2:0] tmp_5_fu_1612_p1;
wire   [2:0] tmp_5_fu_1612_p3;
wire   [2:0] tmp_5_fu_1612_p5;
wire  signed [2:0] tmp_5_fu_1612_p7;
wire  signed [2:0] tmp_5_fu_1612_p9;
wire  signed [2:0] tmp_5_fu_1612_p11;
wire  signed [2:0] tmp_5_fu_1612_p13;
wire   [2:0] tmp_5_fu_1612_p15;
wire  signed [2:0] tmp_16_fu_1761_p1;
wire  signed [2:0] tmp_16_fu_1761_p3;
wire  signed [2:0] tmp_16_fu_1761_p5;
wire  signed [2:0] tmp_16_fu_1761_p7;
wire   [2:0] tmp_16_fu_1761_p9;
wire   [2:0] tmp_16_fu_1761_p11;
wire   [2:0] tmp_16_fu_1761_p13;
wire   [2:0] tmp_16_fu_1761_p15;
wire  signed [2:0] tmp_13_fu_1890_p1;
wire  signed [2:0] tmp_13_fu_1890_p3;
wire  signed [2:0] tmp_13_fu_1890_p5;
wire   [2:0] tmp_13_fu_1890_p7;
wire   [2:0] tmp_13_fu_1890_p9;
wire   [2:0] tmp_13_fu_1890_p11;
wire   [2:0] tmp_13_fu_1890_p13;
wire  signed [2:0] tmp_13_fu_1890_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_110 = 64'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1164_p0),.din1(grp_fu_1164_p1),.ce(1'b1),.dout(grp_fu_1164_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1168_p0),.din1(grp_fu_1168_p1),.ce(1'b1),.dout(grp_fu_1168_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1172_p0),.din1(grp_fu_1172_p1),.ce(1'b1),.dout(grp_fu_1172_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U4(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(grp_fu_1176_p17),.sel(grp_fu_1176_p18),.dout(grp_fu_1176_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U5(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(grp_fu_1215_p17),.sel(grp_fu_1215_p18),.dout(grp_fu_1215_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U6(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(grp_fu_1254_p17),.sel(grp_fu_1254_p18),.dout(grp_fu_1254_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U7(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1293_p17),.sel(grp_fu_1293_p18),.dout(grp_fu_1293_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U8(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1332_p17),.sel(grp_fu_1332_p18),.dout(grp_fu_1332_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U9(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1371_p17),.sel(grp_fu_1371_p18),.dout(grp_fu_1371_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 32 ),.CASE1( 3'h6 ),.din1_WIDTH( 32 ),.CASE2( 3'h7 ),.din2_WIDTH( 32 ),.CASE3( 3'h0 ),.din3_WIDTH( 32 ),.CASE4( 3'h1 ),.din4_WIDTH( 32 ),.CASE5( 3'h2 ),.din5_WIDTH( 32 ),.CASE6( 3'h3 ),.din6_WIDTH( 32 ),.CASE7( 3'h4 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U10(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(grp_fu_1410_p17),.sel(grp_fu_1410_p18),.dout(grp_fu_1410_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 32 ),.CASE1( 3'h6 ),.din1_WIDTH( 32 ),.CASE2( 3'h7 ),.din2_WIDTH( 32 ),.CASE3( 3'h0 ),.din3_WIDTH( 32 ),.CASE4( 3'h1 ),.din4_WIDTH( 32 ),.CASE5( 3'h2 ),.din5_WIDTH( 32 ),.CASE6( 3'h3 ),.din6_WIDTH( 32 ),.CASE7( 3'h4 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U11(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1449_p17),.sel(grp_fu_1449_p18),.dout(grp_fu_1449_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U12(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_5_fu_1612_p17),.sel(trunc_ln16_reg_2059),.dout(tmp_5_fu_1612_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 32 ),.CASE1( 3'h5 ),.din1_WIDTH( 32 ),.CASE2( 3'h6 ),.din2_WIDTH( 32 ),.CASE3( 3'h7 ),.din3_WIDTH( 32 ),.CASE4( 3'h0 ),.din4_WIDTH( 32 ),.CASE5( 3'h1 ),.din5_WIDTH( 32 ),.CASE6( 3'h2 ),.din6_WIDTH( 32 ),.CASE7( 3'h3 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U13(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_16_fu_1761_p17),.sel(trunc_ln16_reg_2059),.dout(tmp_16_fu_1761_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 32 ),.CASE1( 3'h6 ),.din1_WIDTH( 32 ),.CASE2( 3'h7 ),.din2_WIDTH( 32 ),.CASE3( 3'h0 ),.din3_WIDTH( 32 ),.CASE4( 3'h1 ),.din4_WIDTH( 32 ),.CASE5( 3'h2 ),.din5_WIDTH( 32 ),.CASE6( 3'h3 ),.din6_WIDTH( 32 ),.CASE7( 3'h4 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U14(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(tmp_13_fu_1890_p17),.sel(trunc_ln16_reg_2059_pp0_iter1_reg),.dout(tmp_13_fu_1890_p19));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter3_stage1)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_110 <= 64'd1;
        end else if (((icmp_ln38_reg_2156 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            k_fu_110 <= add_ln44_3_fu_1683_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln41_1_reg_2497 <= add_ln41_1_fu_1741_p2;
        add_ln48_22_reg_2667 <= add_ln48_22_fu_1947_p2;
        k_1_reg_2053 <= k_fu_110;
        tmp_16_reg_2547 <= tmp_16_fu_1761_p19;
        trunc_ln16_1_reg_2074 <= trunc_ln16_1_fu_1524_p1;
        trunc_ln16_reg_2059 <= trunc_ln16_fu_1520_p1;
        trunc_ln16_reg_2059_pp0_iter1_reg <= trunc_ln16_reg_2059;
        trunc_ln16_reg_2059_pp0_iter2_reg <= trunc_ln16_reg_2059_pp0_iter1_reg;
        trunc_ln16_reg_2059_pp0_iter3_reg <= trunc_ln16_reg_2059_pp0_iter2_reg;
        trunc_ln1_reg_2079 <= {{k_fu_110[13:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_10_reg_2642 <= add_ln48_10_fu_1869_p2;
        add_ln48_16_reg_2647 <= add_ln48_16_fu_1885_p2;
        add_ln48_21_reg_2657 <= add_ln48_21_fu_1933_p2;
        add_ln48_4_reg_2637 <= add_ln48_4_fu_1853_p2;
        mul_ln48_6_reg_2662_pp0_iter3_reg <= mul_ln48_6_reg_2662;
        sum0_2_reg_2267_pp0_iter2_reg <= sum0_2_reg_2267;
        tmp_13_reg_2652 <= tmp_13_fu_1890_p19;
        tmp_5_reg_2262 <= tmp_5_fu_1612_p19;
        zext_ln44_reg_2274[10 : 0] <= zext_ln44_fu_1655_p1[10 : 0];
        zext_ln44_reg_2274_pp0_iter2_reg[10 : 0] <= zext_ln44_reg_2274[10 : 0];
        zext_ln44_reg_2274_pp0_iter3_reg[10 : 0] <= zext_ln44_reg_2274_pp0_iter2_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_15_reg_2577 <= add_ln48_15_fu_1826_p2;
        add_ln48_3_reg_2557 <= add_ln48_3_fu_1804_p2;
        add_ln48_9_reg_2567 <= add_ln48_9_fu_1815_p2;
        icmp_ln38_reg_2156 <= icmp_ln38_fu_1559_p2;
        icmp_ln38_reg_2156_pp0_iter1_reg <= icmp_ln38_reg_2156;
        icmp_ln38_reg_2156_pp0_iter2_reg <= icmp_ln38_reg_2156_pp0_iter1_reg;
        mul_ln48_2_reg_2572_pp0_iter2_reg <= mul_ln48_2_reg_2572;
        mul_ln48_4_reg_2582_pp0_iter2_reg <= mul_ln48_4_reg_2582;
        mul_ln48_reg_2562_pp0_iter2_reg <= mul_ln48_reg_2562;
        trunc_ln2_reg_2160 <= {{add_ln44_1_fu_1565_p2[13:3]}};
        zext_ln39_reg_2088[10 : 0] <= zext_ln39_fu_1542_p1[10 : 0];
        zext_ln39_reg_2088_pp0_iter1_reg[10 : 0] <= zext_ln39_reg_2088[10 : 0];
        zext_ln39_reg_2088_pp0_iter2_reg[10 : 0] <= zext_ln39_reg_2088_pp0_iter1_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_2_reg_2572 <= grp_fu_1168_p2;
        mul_ln48_4_reg_2582 <= grp_fu_1172_p2;
        mul_ln48_reg_2562 <= grp_fu_1164_p2;
        tmp_12_reg_2587 <= grp_fu_1410_p19;
        tmp_15_reg_2632 <= grp_fu_1449_p19;
        tmp_reg_2552 <= grp_fu_1176_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_3_reg_2672 <= grp_fu_1172_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_5_reg_2677 <= grp_fu_1164_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_6_reg_2662 <= grp_fu_1164_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1488 <= grp_fu_1293_p19;
        reg_1492 <= grp_fu_1215_p19;
        reg_1496 <= grp_fu_1332_p19;
        reg_1500 <= grp_fu_1254_p19;
        reg_1504 <= grp_fu_1371_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1508 <= grp_fu_1168_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum0_1_reg_2255 <= grp_fu_1215_p19;
        sum0_2_reg_2267 <= grp_fu_1254_p19;
        sum0_reg_2169 <= grp_fu_1176_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_3_reg_2451 <= grp_fu_1410_p19;
        tmp_14_reg_2502 <= grp_fu_1449_p19;
        tmp_2_reg_2446 <= grp_fu_1176_p19;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_1559_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1164_p0 = C_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1164_p0 = C_load;
    end else begin
        grp_fu_1164_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1164_p1 = add_ln48_16_reg_2647;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1164_p1 = sum0_3_reg_2451;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1164_p1 = sum0_reg_2169;
    end else begin
        grp_fu_1164_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1168_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1168_p0 = C_load;
    end else begin
        grp_fu_1168_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1168_p1 = add_ln48_22_reg_2667;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1168_p1 = add_ln48_4_reg_2637;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1168_p1 = sum0_1_reg_2255;
    end else begin
        grp_fu_1168_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1172_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1172_p0 = C_load;
    end else begin
        grp_fu_1172_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1172_p1 = add_ln48_10_reg_2642;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1172_p1 = sum0_2_reg_2267;
    end else begin
        grp_fu_1172_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1176_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1176_p18 = trunc_ln16_reg_2059;
    end else begin
        grp_fu_1176_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1215_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1215_p18 = trunc_ln16_reg_2059;
    end else begin
        grp_fu_1215_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1254_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1254_p18 = trunc_ln16_reg_2059;
    end else begin
        grp_fu_1254_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1293_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1293_p18 = trunc_ln16_reg_2059;
        end else begin
            grp_fu_1293_p18 = 'bx;
        end
    end else begin
        grp_fu_1293_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1332_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1332_p18 = trunc_ln16_reg_2059;
        end else begin
            grp_fu_1332_p18 = 'bx;
        end
    end else begin
        grp_fu_1332_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1371_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1371_p18 = trunc_ln16_reg_2059;
        end else begin
            grp_fu_1371_p18 = 'bx;
        end
    end else begin
        grp_fu_1371_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1410_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1410_p18 = trunc_ln16_reg_2059;
        end else begin
            grp_fu_1410_p18 = 'bx;
        end
    end else begin
        grp_fu_1410_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1449_p18 = trunc_ln16_reg_2059_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1449_p18 = trunc_ln16_reg_2059;
        end else begin
            grp_fu_1449_p18 = 'bx;
        end
    end else begin
        grp_fu_1449_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1452)) begin
            orig_0_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1447)) begin
            orig_0_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1444)) begin
            orig_0_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1439)) begin
            orig_0_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6)))))) begin
        orig_0_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5))))) begin
        orig_0_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6)))))) begin
        orig_0_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6))))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6))))))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6))))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6))))))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            orig_1_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            orig_1_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1459)) begin
            orig_1_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1455)) begin
            orig_1_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7)))))) begin
        orig_1_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5))))) begin
        orig_1_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7)))))) begin
        orig_1_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7))))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7))))))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7))))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7))))))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1480)) begin
            orig_2_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            orig_2_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1473)) begin
            orig_2_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1469)) begin
            orig_2_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0))))) begin
        orig_2_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6))))) begin
        orig_2_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0))))) begin
        orig_2_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0)))))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0)))))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1494)) begin
            orig_3_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1490)) begin
            orig_3_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1487)) begin
            orig_3_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1483)) begin
            orig_3_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1))))) begin
        orig_3_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7))))) begin
        orig_3_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1))))) begin
        orig_3_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1)))))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1)))))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1508)) begin
            orig_4_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1504)) begin
            orig_4_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1501)) begin
            orig_4_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1497)) begin
            orig_4_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_4_address0_local = 'bx;
        end
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2))))) begin
        orig_4_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0))))) begin
        orig_4_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2))))) begin
        orig_4_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2)))))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2)))))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_5_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1522)) begin
            orig_5_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1518)) begin
            orig_5_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1515)) begin
            orig_5_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1511)) begin
            orig_5_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_5_address0_local = 'bx;
        end
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3))))) begin
        orig_5_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1))))) begin
        orig_5_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3))))) begin
        orig_5_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3)))))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3)))))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_6_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1536)) begin
            orig_6_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1532)) begin
            orig_6_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1529)) begin
            orig_6_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1525)) begin
            orig_6_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_6_address0_local = 'bx;
        end
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4))))) begin
        orig_6_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2))))) begin
        orig_6_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4))))) begin
        orig_6_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)))))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)))))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_7_address0_local = zext_ln41_1_fu_1832_p1;
        end else if ((1'b1 == ap_condition_1550)) begin
            orig_7_address0_local = zext_ln43_1_fu_1749_p1;
        end else if ((1'b1 == ap_condition_1546)) begin
            orig_7_address0_local = zext_ln41_fu_1713_p1;
        end else if ((1'b1 == ap_condition_1543)) begin
            orig_7_address0_local = zext_ln42_1_fu_1671_p1;
        end else if ((1'b1 == ap_condition_1539)) begin
            orig_7_address0_local = zext_ln43_fu_1600_p1;
        end else begin
            orig_7_address0_local = 'bx;
        end
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address1_local = zext_ln40_1_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5))))) begin
        orig_7_address1_local = zext_ln40_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3))))) begin
        orig_7_address1_local = zext_ln44_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5))))) begin
        orig_7_address1_local = zext_ln42_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln39_fu_1542_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5)))))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3)))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5)))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5)))))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1567)) begin
            sol_0_address0_local = sol_0_addr_2_gep_fu_1132_p3;
        end else if ((1'b1 == ap_condition_1563)) begin
            sol_0_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1558)) begin
            sol_0_address0_local = sol_0_addr_gep_fu_1028_p3;
        end else if ((1'b1 == ap_condition_1554)) begin
            sol_0_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1567)) begin
            sol_0_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1563)) begin
            sol_0_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1558)) begin
            sol_0_d0_local = add_ln48_11_fu_1965_p2;
        end else if ((1'b1 == ap_condition_1554)) begin
            sol_0_d0_local = add_ln48_5_fu_1952_p2;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1575)) begin
            sol_1_address0_local = sol_1_addr_2_gep_fu_1148_p3;
        end else if ((1'b1 == ap_condition_1567)) begin
            sol_1_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1554)) begin
            sol_1_address0_local = sol_1_addr_gep_fu_1012_p3;
        end else if ((1'b1 == ap_condition_1571)) begin
            sol_1_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1575)) begin
            sol_1_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1567)) begin
            sol_1_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1554)) begin
            sol_1_d0_local = add_ln48_11_fu_1965_p2;
        end else if ((1'b1 == ap_condition_1571)) begin
            sol_1_d0_local = add_ln48_5_fu_1952_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1575)) begin
            sol_2_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1583)) begin
            sol_2_address0_local = sol_2_addr_3_gep_fu_1100_p3;
        end else if ((1'b1 == ap_condition_1571)) begin
            sol_2_address0_local = sol_2_addr_gep_fu_991_p3;
        end else if ((1'b1 == ap_condition_1579)) begin
            sol_2_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1575)) begin
            sol_2_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1583)) begin
            sol_2_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1571)) begin
            sol_2_d0_local = add_ln48_11_fu_1965_p2;
        end else if ((1'b1 == ap_condition_1579)) begin
            sol_2_d0_local = add_ln48_5_fu_1952_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1583)) begin
            sol_3_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1591)) begin
            sol_3_address0_local = sol_3_addr_3_gep_fu_1084_p3;
        end else if ((1'b1 == ap_condition_1579)) begin
            sol_3_address0_local = sol_3_addr_gep_fu_970_p3;
        end else if ((1'b1 == ap_condition_1587)) begin
            sol_3_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1583)) begin
            sol_3_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1591)) begin
            sol_3_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1579)) begin
            sol_3_d0_local = add_ln48_11_fu_1965_p2;
        end else if ((1'b1 == ap_condition_1587)) begin
            sol_3_d0_local = add_ln48_5_fu_1952_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1591)) begin
            sol_4_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1599)) begin
            sol_4_address0_local = sol_4_addr_3_gep_fu_1068_p3;
        end else if ((1'b1 == ap_condition_1587)) begin
            sol_4_address0_local = sol_4_addr_gep_fu_949_p3;
        end else if ((1'b1 == ap_condition_1595)) begin
            sol_4_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_4_address0_local = 'bx;
        end
    end else begin
        sol_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1591)) begin
            sol_4_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1599)) begin
            sol_4_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1587)) begin
            sol_4_d0_local = add_ln48_11_fu_1965_p2;
        end else if ((1'b1 == ap_condition_1595)) begin
            sol_4_d0_local = add_ln48_5_fu_1952_p2;
        end else begin
            sol_4_d0_local = 'bx;
        end
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1599)) begin
            sol_5_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1607)) begin
            sol_5_address0_local = sol_5_addr_3_gep_fu_1052_p3;
        end else if ((1'b1 == ap_condition_1595)) begin
            sol_5_address0_local = sol_5_addr_gep_fu_928_p3;
        end else if ((1'b1 == ap_condition_1603)) begin
            sol_5_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_5_address0_local = 'bx;
        end
    end else begin
        sol_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1599)) begin
            sol_5_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1607)) begin
            sol_5_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1595)) begin
            sol_5_d0_local = add_ln48_11_fu_1965_p2;
        end else if ((1'b1 == ap_condition_1603)) begin
            sol_5_d0_local = add_ln48_5_fu_1952_p2;
        end else begin
            sol_5_d0_local = 'bx;
        end
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1607)) begin
            sol_6_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1615)) begin
            sol_6_address0_local = sol_6_addr_3_gep_fu_1036_p3;
        end else if ((1'b1 == ap_condition_1603)) begin
            sol_6_address0_local = sol_6_addr_gep_fu_907_p3;
        end else if ((1'b1 == ap_condition_1611)) begin
            sol_6_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_6_address0_local = 'bx;
        end
    end else begin
        sol_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1607)) begin
            sol_6_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1615)) begin
            sol_6_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1603)) begin
            sol_6_d0_local = add_ln48_11_fu_1965_p2;
        end else if ((1'b1 == ap_condition_1611)) begin
            sol_6_d0_local = add_ln48_5_fu_1952_p2;
        end else begin
            sol_6_d0_local = 'bx;
        end
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1563)) begin
            sol_7_address0_local = sol_7_addr_2_gep_fu_1116_p3;
        end else if ((1'b1 == ap_condition_1615)) begin
            sol_7_address0_local = zext_ln44_reg_2274_pp0_iter3_reg;
        end else if ((1'b1 == ap_condition_1558)) begin
            sol_7_address0_local = sol_7_addr_gep_fu_1020_p3;
        end else if ((1'b1 == ap_condition_1611)) begin
            sol_7_address0_local = zext_ln39_reg_2088_pp0_iter2_reg;
        end else begin
            sol_7_address0_local = 'bx;
        end
    end else begin
        sol_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1563)) begin
            sol_7_d0_local = add_ln48_17_fu_1977_p2;
        end else if ((1'b1 == ap_condition_1615)) begin
            sol_7_d0_local = add_ln48_23_fu_1989_p2;
        end else if ((1'b1 == ap_condition_1558)) begin
            sol_7_d0_local = add_ln48_5_fu_1952_p2;
        end else if ((1'b1 == ap_condition_1611)) begin
            sol_7_d0_local = add_ln48_11_fu_1965_p2;
        end else begin
            sol_7_d0_local = 'bx;
        end
    end else begin
        sol_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln39_fu_1538_p2 = (trunc_ln1_reg_2079 + p_udiv);
assign add_ln40_1_fu_1725_p2 = (trunc_ln2_reg_2160 + p_udiv1);
assign add_ln40_fu_1693_p2 = (trunc_ln1_reg_2079 + p_udiv1);
assign add_ln41_1_fu_1741_p2 = (trunc_ln2_reg_2160 + p_udiv3);
assign add_ln41_fu_1709_p2 = (trunc_ln1_reg_2079 + p_udiv3);
assign add_ln42_1_fu_1667_p2 = (trunc_ln2_reg_2160 + p_udiv5);
assign add_ln42_fu_1580_p2 = (trunc_ln1_reg_2079 + p_udiv5);
assign add_ln43_1_fu_1745_p2 = (trunc_ln2_reg_2160 + p_udiv7);
assign add_ln43_fu_1596_p2 = (trunc_ln1_reg_2079 + p_udiv7);
assign add_ln44_1_fu_1565_p2 = (trunc_ln16_1_reg_2074 + 14'd3);
assign add_ln44_2_fu_1651_p2 = (trunc_ln2_reg_2160 + p_udiv);
assign add_ln44_3_fu_1683_p2 = (k_1_reg_2053 + 64'd4);
assign add_ln44_fu_1554_p2 = (k_1_reg_2053 + 64'd2);
assign add_ln48_10_fu_1869_p2 = (add_ln48_9_reg_2567 + add_ln48_7_fu_1863_p2);
assign add_ln48_11_fu_1965_p2 = (mul_ln48_3_reg_2672 + mul_ln48_2_reg_2572_pp0_iter2_reg);
assign add_ln48_12_fu_1874_p2 = ($signed(sum0_1_reg_2255) + $signed(reg_1504));
assign add_ln48_13_fu_1879_p2 = (add_ln48_12_fu_1874_p2 + reg_1500);
assign add_ln48_14_fu_1821_p2 = ($signed(reg_1504) + $signed(sum0_3_reg_2451));
assign add_ln48_15_fu_1826_p2 = (add_ln48_14_fu_1821_p2 + reg_1500);
assign add_ln48_16_fu_1885_p2 = (add_ln48_15_reg_2577 + add_ln48_13_fu_1879_p2);
assign add_ln48_17_fu_1977_p2 = (mul_ln48_5_reg_2677 + mul_ln48_4_reg_2582_pp0_iter2_reg);
assign add_ln48_18_fu_1938_p2 = ($signed(sum0_2_reg_2267_pp0_iter2_reg) + $signed(tmp_13_reg_2652));
assign add_ln48_19_fu_1942_p2 = (add_ln48_18_fu_1938_p2 + tmp_12_reg_2587);
assign add_ln48_1_fu_1847_p2 = (add_ln48_fu_1843_p2 + reg_1488);
assign add_ln48_20_fu_1929_p2 = (tmp_15_reg_2632 + tmp_16_reg_2547);
assign add_ln48_21_fu_1933_p2 = (add_ln48_20_fu_1929_p2 + tmp_14_reg_2502);
assign add_ln48_22_fu_1947_p2 = (add_ln48_21_reg_2657 + add_ln48_19_fu_1942_p2);
assign add_ln48_23_fu_1989_p2 = (reg_1508 + mul_ln48_6_reg_2662_pp0_iter3_reg);
assign add_ln48_2_fu_1800_p2 = ($signed(sum0_1_reg_2255) + $signed(tmp_5_reg_2262));
assign add_ln48_3_fu_1804_p2 = (add_ln48_2_fu_1800_p2 + reg_1488);
assign add_ln48_4_fu_1853_p2 = (add_ln48_3_reg_2557 + add_ln48_1_fu_1847_p2);
assign add_ln48_5_fu_1952_p2 = (reg_1508 + mul_ln48_reg_2562_pp0_iter2_reg);
assign add_ln48_6_fu_1858_p2 = ($signed(sum0_reg_2169) + $signed(reg_1496));
assign add_ln48_7_fu_1863_p2 = (add_ln48_6_fu_1858_p2 + reg_1492);
assign add_ln48_8_fu_1810_p2 = ($signed(reg_1496) + $signed(sum0_2_reg_2267));
assign add_ln48_9_fu_1815_p2 = (add_ln48_8_fu_1810_p2 + reg_1492);
assign add_ln48_fu_1843_p2 = (tmp_reg_2552 + tmp_2_reg_2446);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1439 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6)))));
end
always @ (*) begin
    ap_condition_1444 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1447 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd7) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6)))));
end
always @ (*) begin
    ap_condition_1452 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1455 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7)))));
end
always @ (*) begin
    ap_condition_1459 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1462 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln16_reg_2059 == 3'd0) | ((trunc_ln16_reg_2059 == 3'd1) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7)))));
end
always @ (*) begin
    ap_condition_1466 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1469 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0))));
end
always @ (*) begin
    ap_condition_1473 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1476 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd2) | (trunc_ln16_reg_2059 == 3'd1)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0))));
end
always @ (*) begin
    ap_condition_1480 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1483 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1))));
end
always @ (*) begin
    ap_condition_1487 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1490 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd3) | (trunc_ln16_reg_2059 == 3'd2)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1))));
end
always @ (*) begin
    ap_condition_1494 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1497 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2))));
end
always @ (*) begin
    ap_condition_1501 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1504 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd3)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2))));
end
always @ (*) begin
    ap_condition_1508 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1511 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3))));
end
always @ (*) begin
    ap_condition_1515 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1518 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd4) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3))));
end
always @ (*) begin
    ap_condition_1522 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1525 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4))));
end
always @ (*) begin
    ap_condition_1529 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1532 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd6) | (trunc_ln16_reg_2059 == 3'd5)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4))));
end
always @ (*) begin
    ap_condition_1536 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1539 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5))));
end
always @ (*) begin
    ap_condition_1543 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1546 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((trunc_ln16_reg_2059 == 3'd7) | (trunc_ln16_reg_2059 == 3'd6)) | ((icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd5))));
end
always @ (*) begin
    ap_condition_1550 = ((1'b0 == ap_block_pp0_stage1) & (icmp_ln38_reg_2156 == 1'd1) & (trunc_ln16_reg_2059 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1554 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1558 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1563 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1567 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1571 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1575 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1579 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1583 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1587 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1591 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1595 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1599 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1603 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1607 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1611 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln16_reg_2059_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1615 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln38_reg_2156_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_2059_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_1176_p17 = 'bx;
assign grp_fu_1215_p17 = 'bx;
assign grp_fu_1254_p17 = 'bx;
assign grp_fu_1293_p17 = 'bx;
assign grp_fu_1332_p17 = 'bx;
assign grp_fu_1371_p17 = 'bx;
assign grp_fu_1410_p17 = 'bx;
assign grp_fu_1449_p17 = 'bx;
assign icmp_ln38_fu_1559_p2 = (($signed(add_ln44_fu_1554_p2) < $signed(64'd15)) ? 1'b1 : 1'b0);
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign sol_0_addr_2_gep_fu_1132_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_0_addr_gep_fu_1028_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_addr_2_gep_fu_1148_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_1_addr_gep_fu_1012_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_addr_3_gep_fu_1100_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_2_addr_gep_fu_991_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_addr_3_gep_fu_1084_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_3_addr_gep_fu_970_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_addr_3_gep_fu_1068_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_4_addr_gep_fu_949_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_4_address0 = sol_4_address0_local;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = sol_4_d0_local;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_addr_3_gep_fu_1052_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_5_addr_gep_fu_928_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_5_address0 = sol_5_address0_local;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = sol_5_d0_local;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_addr_3_gep_fu_1036_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_6_addr_gep_fu_907_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_6_address0 = sol_6_address0_local;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_addr_2_gep_fu_1116_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_7_addr_gep_fu_1020_p3 = zext_ln39_reg_2088_pp0_iter2_reg;
assign sol_7_address0 = sol_7_address0_local;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = sol_7_d0_local;
assign sol_7_we0 = sol_7_we0_local;
assign tmp_13_fu_1890_p17 = 'bx;
assign tmp_16_fu_1761_p17 = 'bx;
assign tmp_5_fu_1612_p17 = 'bx;
assign trunc_ln16_1_fu_1524_p1 = k_fu_110[13:0];
assign trunc_ln16_fu_1520_p1 = k_fu_110[2:0];
assign zext_ln39_fu_1542_p1 = add_ln39_fu_1538_p2;
assign zext_ln40_1_fu_1729_p1 = add_ln40_1_fu_1725_p2;
assign zext_ln40_fu_1697_p1 = add_ln40_fu_1693_p2;
assign zext_ln41_1_fu_1832_p1 = add_ln41_1_reg_2497;
assign zext_ln41_fu_1713_p1 = add_ln41_fu_1709_p2;
assign zext_ln42_1_fu_1671_p1 = add_ln42_1_fu_1667_p2;
assign zext_ln42_fu_1584_p1 = add_ln42_fu_1580_p2;
assign zext_ln43_1_fu_1749_p1 = add_ln43_1_fu_1745_p2;
assign zext_ln43_fu_1600_p1 = add_ln43_fu_1596_p2;
assign zext_ln44_fu_1655_p1 = add_ln44_2_fu_1651_p2;
always @ (posedge ap_clk) begin
    zext_ln39_reg_2088[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_2088_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_2088_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2274[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2274_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2274_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 