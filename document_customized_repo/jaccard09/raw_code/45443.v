module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_0_address1,m1_0_ce1,m1_0_q1,m1_1_address0,m1_1_ce0,m1_1_q0,m1_1_address1,m1_1_ce1,m1_1_q1,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_0_address1,prod_0_ce1,prod_0_we1,prod_0_d1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_1_address1,prod_1_ce1,prod_1_we1,prod_1_d1,prod_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 37'd1;
parameter    ap_ST_fsm_pp0_stage1 = 37'd2;
parameter    ap_ST_fsm_pp0_stage2 = 37'd4;
parameter    ap_ST_fsm_pp0_stage3 = 37'd8;
parameter    ap_ST_fsm_pp0_stage4 = 37'd16;
parameter    ap_ST_fsm_pp0_stage5 = 37'd32;
parameter    ap_ST_fsm_pp0_stage6 = 37'd64;
parameter    ap_ST_fsm_pp0_stage7 = 37'd128;
parameter    ap_ST_fsm_pp0_stage8 = 37'd256;
parameter    ap_ST_fsm_pp0_stage9 = 37'd512;
parameter    ap_ST_fsm_pp0_stage10 = 37'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 37'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 37'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 37'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 37'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 37'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 37'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 37'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 37'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 37'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 37'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 37'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 37'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 37'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 37'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 37'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 37'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 37'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 37'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 37'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 37'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 37'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 37'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 37'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 37'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 37'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 37'd68719476736;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [10:0] m1_0_address1;
output   m1_0_ce1;
input  [63:0] m1_0_q1;
output  [10:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [10:0] m1_1_address1;
output   m1_1_ce1;
input  [63:0] m1_1_q1;
output  [10:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [10:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [10:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [10:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [10:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [10:0] prod_0_address1;
output   prod_0_ce1;
output   prod_0_we1;
output  [63:0] prod_0_d1;
input  [63:0] prod_0_q1;
output  [10:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [10:0] prod_1_address1;
output   prod_1_ce1;
output   prod_1_we1;
output  [63:0] prod_1_d1;
input  [63:0] prod_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [36:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage36;
wire    ap_block_pp0_stage36_subdone;
wire   [0:0] icmp_ln15_fu_1724_p2;
reg    ap_condition_exit_pp0_iter0_stage36;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1647_reg_576;
reg   [63:0] reg_623;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_627;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_631;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_636;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_641;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_645;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_619_p2;
reg   [63:0] reg_650;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] reg_656;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_662;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
reg   [63:0] reg_668;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] reg_674;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_678;
reg   [63:0] reg_682;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_688;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_692;
reg   [63:0] reg_696;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_701;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_706;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_712;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_718;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_11001;
reg   [63:0] reg_723;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage35;
wire    ap_block_pp0_stage35_11001;
reg   [63:0] reg_728;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage36_11001;
wire   [63:0] grp_fu_607_p2;
reg   [63:0] reg_733;
wire   [63:0] grp_fu_611_p2;
reg   [63:0] reg_738;
reg   [63:0] reg_743;
reg   [63:0] reg_748;
wire   [63:0] grp_fu_615_p2;
reg   [63:0] reg_753;
reg   [63:0] reg_758;
reg   [63:0] reg_763;
reg   [63:0] reg_768;
wire   [6:0] select_ln11_fu_816_p3;
reg   [6:0] select_ln11_reg_1841;
wire   [0:0] and_ln11_fu_836_p2;
reg   [0:0] and_ln11_reg_1847;
wire   [0:0] empty_fu_842_p2;
reg   [0:0] empty_reg_1852;
wire   [0:0] icmp_ln18_mid211_fu_848_p2;
reg   [0:0] icmp_ln18_mid211_reg_1859;
wire   [4:0] indvars_iv147_udiv_fu_919_p4;
reg   [4:0] indvars_iv147_udiv_reg_1865;
wire   [5:0] empty_8_fu_943_p1;
reg   [5:0] empty_8_reg_1873;
wire   [3:0] tmp_3_fu_947_p4;
reg   [3:0] tmp_3_reg_1881;
reg   [2:0] tmp_7_reg_1889;
reg   [0:0] tmp_2_reg_1902;
wire   [1:0] lshr_ln_fu_975_p4;
reg   [1:0] lshr_ln_reg_1911;
wire   [2:0] tmp_9_fu_1037_p4;
reg   [2:0] tmp_9_reg_1926;
reg   [0:0] tmp_12_reg_1974;
wire   [0:0] trunc_ln23_fu_1123_p1;
reg   [0:0] trunc_ln23_reg_1986;
reg   [0:0] tmp_13_reg_1999;
reg   [63:0] m1_0_load_reg_2004;
reg   [63:0] m1_1_load_reg_2029;
reg   [63:0] m1_0_load_1_reg_2034;
wire   [63:0] temp_x_3_fu_1208_p1;
reg   [63:0] temp_x_3_reg_2039;
wire   [63:0] temp_x_fu_1212_p1;
reg   [63:0] temp_x_reg_2044;
wire   [63:0] bitcast_ln23_fu_1216_p1;
reg   [63:0] m2_1_load_3_reg_2054;
wire   [63:0] bitcast_ln23_1_fu_1253_p1;
reg   [63:0] m2_0_load_4_reg_2084;
reg   [63:0] m2_0_load_5_reg_2089;
reg   [63:0] m2_1_load_5_reg_2094;
wire   [63:0] bitcast_ln23_2_fu_1293_p1;
reg   [63:0] m2_1_load_6_reg_2124;
reg   [63:0] m2_0_load_7_reg_2129;
reg   [63:0] m2_1_load_7_reg_2134;
wire   [63:0] bitcast_ln23_3_fu_1332_p1;
reg   [63:0] m2_0_load_8_reg_2164;
reg   [63:0] m2_0_load_9_reg_2169;
reg   [63:0] m2_1_load_9_reg_2174;
wire   [63:0] bitcast_ln23_4_fu_1374_p1;
reg   [63:0] m2_1_load_10_reg_2204;
reg   [63:0] m2_0_load_11_reg_2209;
reg   [63:0] m2_1_load_11_reg_2214;
wire   [63:0] bitcast_ln23_5_fu_1411_p1;
reg   [63:0] m2_0_load_12_reg_2244;
reg   [63:0] m2_0_load_13_reg_2249;
reg   [63:0] m2_1_load_13_reg_2254;
wire   [63:0] bitcast_ln23_6_fu_1451_p1;
reg   [63:0] m2_1_load_14_reg_2284;
reg   [63:0] m2_0_load_15_reg_2289;
reg   [63:0] m2_1_load_15_reg_2294;
wire   [63:0] bitcast_ln23_7_fu_1456_p1;
wire   [63:0] temp_x_1_fu_1460_p1;
reg   [63:0] temp_x_1_reg_2304;
wire   [63:0] bitcast_ln23_8_fu_1464_p1;
reg   [10:0] prod_0_addr_reg_2314;
reg   [10:0] prod_1_addr_reg_2320;
reg   [10:0] prod_0_addr_1_reg_2326;
reg   [10:0] prod_1_addr_1_reg_2332;
wire   [63:0] bitcast_ln23_9_fu_1494_p1;
reg   [10:0] prod_0_addr_2_reg_2343;
reg   [10:0] prod_1_addr_2_reg_2349;
reg   [10:0] prod_0_addr_3_reg_2355;
reg   [10:0] prod_1_addr_3_reg_2361;
wire   [63:0] bitcast_ln23_10_fu_1528_p1;
wire   [63:0] bitcast_ln24_fu_1532_p1;
wire   [63:0] bitcast_ln24_2_fu_1537_p1;
wire   [63:0] bitcast_ln23_11_fu_1542_p1;
wire   [63:0] bitcast_ln24_1_fu_1546_p1;
wire   [63:0] bitcast_ln24_3_fu_1551_p1;
wire   [63:0] bitcast_ln24_4_fu_1556_p1;
wire   [63:0] bitcast_ln23_12_fu_1561_p1;
wire   [63:0] bitcast_ln24_5_fu_1566_p1;
wire   [63:0] bitcast_ln24_6_fu_1571_p1;
wire   [63:0] bitcast_ln23_13_fu_1576_p1;
wire   [63:0] bitcast_ln24_7_fu_1580_p1;
wire   [63:0] bitcast_ln23_14_fu_1585_p1;
wire   [63:0] bitcast_ln23_15_fu_1589_p1;
wire   [63:0] temp_x_2_fu_1593_p1;
reg   [63:0] temp_x_2_reg_2437;
wire   [63:0] bitcast_ln23_16_fu_1597_p1;
wire   [63:0] bitcast_ln23_17_fu_1601_p1;
wire   [63:0] bitcast_ln23_18_fu_1606_p1;
wire   [63:0] bitcast_ln23_19_fu_1610_p1;
wire   [63:0] bitcast_ln23_20_fu_1614_p1;
wire   [63:0] bitcast_ln23_21_fu_1619_p1;
wire   [63:0] bitcast_ln23_22_fu_1623_p1;
wire   [63:0] bitcast_ln23_23_fu_1627_p1;
wire   [63:0] bitcast_ln23_24_fu_1631_p1;
wire   [63:0] bitcast_ln23_25_fu_1635_p1;
wire   [63:0] bitcast_ln23_26_fu_1640_p1;
wire   [63:0] bitcast_ln23_27_fu_1644_p1;
wire   [63:0] bitcast_ln23_28_fu_1648_p1;
wire   [63:0] bitcast_ln23_29_fu_1653_p1;
wire   [63:0] bitcast_ln23_30_fu_1657_p1;
wire   [63:0] bitcast_ln23_31_fu_1661_p1;
wire   [0:0] xor_ln18_fu_1707_p2;
reg   [0:0] xor_ln18_reg_2522;
wire   [0:0] icmp_ln17_fu_1712_p2;
reg   [0:0] icmp_ln17_reg_2527;
wire   [0:0] icmp_ln16_fu_1718_p2;
reg   [0:0] icmp_ln16_reg_2532;
reg   [0:0] icmp_ln15_reg_2537;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage12_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1647_phi_fu_579_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1746_phi_fu_590_p4;
reg   [0:0] ap_phi_mux_icmp_ln1845_phi_fu_600_p4;
wire   [63:0] zext_ln21_fu_1031_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_1057_p1;
wire   [63:0] zext_ln23_1_fu_1079_p1;
wire   [63:0] zext_ln21_1_fu_1109_p1;
wire   [63:0] zext_ln23_2_fu_1186_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln23_3_fu_1202_p1;
wire   [63:0] zext_ln23_4_fu_1230_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln23_5_fu_1247_p1;
wire   [63:0] zext_ln23_6_fu_1270_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln23_7_fu_1287_p1;
wire   [63:0] zext_ln23_9_fu_1308_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln23_10_fu_1326_p1;
wire   [63:0] zext_ln23_11_fu_1350_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln23_12_fu_1368_p1;
wire   [63:0] zext_ln23_13_fu_1388_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln23_14_fu_1405_p1;
wire   [63:0] zext_ln23_15_fu_1428_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln23_16_fu_1445_p1;
wire   [63:0] p_cast_fu_1474_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] p_cast4_fu_1488_p1;
wire   [63:0] p_cast5_fu_1508_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] p_cast6_fu_1522_p1;
reg   [12:0] indvar_flatten3538_fu_142;
wire   [12:0] add_ln15_1_fu_1701_p2;
wire    ap_block_pp0_stage36;
reg   [6:0] jj39_fu_146;
wire   [6:0] jj_fu_866_p3;
reg   [11:0] indvar_flatten1240_fu_150;
wire   [11:0] select_ln16_1_fu_1693_p3;
reg   [6:0] kk41_fu_154;
wire   [6:0] kk_fu_893_p3;
reg   [6:0] ap_sig_allocacmp_kk41_load;
reg   [8:0] indvar_flatten42_fu_158;
wire   [8:0] select_ln17_1_fu_1680_p3;
reg   [6:0] i43_fu_162;
wire   [6:0] i_fu_912_p3;
reg   [3:0] k44_fu_166;
wire   [3:0] k_fu_1127_p2;
reg   [6:0] add_ln1548_fu_170;
wire   [6:0] add_ln15_fu_1141_p2;
reg    m1_0_ce1_local;
reg    m1_0_ce0_local;
reg    m2_0_ce1_local;
reg   [10:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [10:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [10:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [10:0] m2_1_address0_local;
reg    m1_1_ce1_local;
reg    m1_1_ce0_local;
reg    prod_0_ce1_local;
reg   [10:0] prod_0_address1_local;
reg    prod_0_ce0_local;
reg   [10:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg   [63:0] prod_0_d0_local;
wire   [63:0] bitcast_ln24_8_fu_1745_p1;
wire    ap_block_pp0_stage9;
reg    prod_0_we1_local;
reg   [63:0] prod_0_d1_local;
wire   [63:0] bitcast_ln24_10_fu_1755_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln24_12_fu_1760_p1;
wire   [63:0] bitcast_ln24_14_fu_1775_p1;
wire    ap_block_pp0_stage11;
reg    prod_1_ce1_local;
reg   [10:0] prod_1_address1_local;
reg    prod_1_ce0_local;
reg   [10:0] prod_1_address0_local;
wire    ap_block_pp0_stage14;
reg    prod_1_we0_local;
reg   [63:0] prod_1_d0_local;
wire   [63:0] bitcast_ln24_9_fu_1750_p1;
reg    prod_1_we1_local;
reg   [63:0] prod_1_d1_local;
wire   [63:0] bitcast_ln24_11_fu_1765_p1;
wire   [63:0] bitcast_ln24_13_fu_1770_p1;
wire   [63:0] bitcast_ln24_15_fu_1780_p1;
reg   [63:0] grp_fu_607_p0;
reg   [63:0] grp_fu_607_p1;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage32;
wire    ap_block_pp0_stage33;
reg   [63:0] grp_fu_611_p0;
reg   [63:0] grp_fu_611_p1;
reg   [63:0] grp_fu_615_p0;
reg   [63:0] grp_fu_615_p1;
reg   [63:0] grp_fu_619_p0;
reg   [63:0] grp_fu_619_p1;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage27;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage29;
wire    ap_block_pp0_stage34;
wire   [0:0] xor_ln11_fu_830_p2;
wire   [0:0] or_ln11_fu_824_p2;
wire   [6:0] add_ln16_fu_874_p2;
wire   [6:0] i_mid26_fu_879_p3;
wire   [3:0] k_mid27_fu_886_p3;
wire   [6:0] add_ln17_fu_899_p2;
wire   [3:0] k_mid2_fu_905_p3;
wire   [2:0] zext_ln21_2_fu_985_p1;
wire   [3:0] tmp_8_fu_997_p4;
wire   [3:0] tmp_5_fu_989_p3;
wire   [0:0] tmp_10_fu_1013_p3;
wire   [3:0] or_ln21_fu_1007_p2;
wire   [10:0] add_ln21_1_fu_1021_p4;
wire   [5:0] indvars_iv147_udiv_cast_fu_929_p1;
wire   [10:0] add_ln_fu_1047_p4;
wire   [4:0] zext_ln23_8_fu_1063_p1;
wire   [10:0] or_ln_fu_1067_p5;
wire   [2:0] tmp_fu_933_p4;
wire   [3:0] tmp_11_fu_1085_p3;
wire   [3:0] or_ln21_1_fu_1093_p2;
wire   [10:0] add_ln21_2_fu_1099_p4;
wire   [3:0] zext_ln23_17_fu_1172_p1;
wire   [10:0] or_ln23_s_fu_1175_p6;
wire   [10:0] or_ln23_1_fu_1192_p5;
wire   [10:0] add_ln23_4_fu_1221_p5;
wire   [10:0] or_ln23_2_fu_1236_p6;
wire   [10:0] or_ln23_3_fu_1258_p7;
wire   [10:0] or_ln23_4_fu_1276_p6;
wire   [10:0] add_ln23_8_fu_1298_p6;
wire   [10:0] or_ln23_5_fu_1314_p7;
wire   [10:0] or_ln23_6_fu_1337_p8;
wire   [10:0] or_ln23_7_fu_1356_p7;
wire   [10:0] add_ln23_1_fu_1379_p5;
wire   [10:0] or_ln23_8_fu_1394_p6;
wire   [10:0] or_ln23_9_fu_1416_p7;
wire   [10:0] or_ln23_10_fu_1434_p6;
wire   [10:0] tmp_1_fu_1468_p3;
wire   [10:0] tmp_6_fu_1480_p4;
wire   [10:0] tmp_s_fu_1499_p5;
wire   [10:0] tmp_4_fu_1514_p4;
wire   [8:0] add_ln17_1_fu_1674_p2;
wire   [11:0] add_ln16_1_fu_1687_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage12;
reg    ap_idle_pp0_0to0;
reg   [36:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1968;
reg    ap_condition_1972;
reg    ap_condition_2009;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 37'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten3538_fu_142 = 13'd0;
#0 jj39_fu_146 = 7'd0;
#0 indvar_flatten1240_fu_150 = 12'd0;
#0 kk41_fu_154 = 7'd0;
#0 indvar_flatten42_fu_158 = 9'd0;
#0 i43_fu_162 = 7'd0;
#0 k44_fu_166 = 4'd0;
#0 add_ln1548_fu_170 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_607_p0),.din1(grp_fu_607_p1),.ce(1'b1),.dout(grp_fu_607_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_611_p0),.din1(grp_fu_611_p1),.ce(1'b1),.dout(grp_fu_611_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_615_p0),.din1(grp_fu_615_p1),.ce(1'b1),.dout(grp_fu_615_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_619_p0),.din1(grp_fu_619_p1),.ce(1'b1),.dout(grp_fu_619_p2));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage36),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage36_subdone) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            add_ln1548_fu_170 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1548_fu_170 <= add_ln15_fu_1141_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage12) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage36_11001) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            i43_fu_162 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i43_fu_162 <= i_fu_912_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_2009)) begin
            icmp_ln1647_reg_576 <= icmp_ln16_reg_2532;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln1647_reg_576 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            indvar_flatten1240_fu_150 <= 12'd0;
        end else if (((1'b0 == ap_block_pp0_stage36_11001) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
            indvar_flatten1240_fu_150 <= select_ln16_1_fu_1693_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            indvar_flatten3538_fu_142 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage36_11001) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
            indvar_flatten3538_fu_142 <= add_ln15_1_fu_1701_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            indvar_flatten42_fu_158 <= 9'd0;
        end else if (((1'b0 == ap_block_pp0_stage36_11001) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
            indvar_flatten42_fu_158 <= select_ln17_1_fu_1680_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            jj39_fu_146 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj39_fu_146 <= jj_fu_866_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            k44_fu_166 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k44_fu_166 <= k_fu_1127_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1968)) begin
            kk41_fu_154 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            kk41_fu_154 <= kk_fu_893_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_631 <= m2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_631 <= m2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_636 <= m2_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_636 <= m2_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_645 <= m2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_645 <= m2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln11_reg_1847 <= and_ln11_fu_836_p2;
        empty_reg_1852 <= empty_fu_842_p2;
        icmp_ln18_mid211_reg_1859 <= icmp_ln18_mid211_fu_848_p2;
        select_ln11_reg_1841 <= select_ln11_fu_816_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_8_reg_1873 <= empty_8_fu_943_p1;
        indvars_iv147_udiv_reg_1865 <= {{jj_fu_866_p3[5:1]}};
        lshr_ln_reg_1911 <= {{k_mid2_fu_905_p3[2:1]}};
        tmp_12_reg_1974 <= k_mid2_fu_905_p3[32'd2];
        tmp_13_reg_1999 <= k_fu_1127_p2[32'd3];
        tmp_2_reg_1902 <= jj_fu_866_p3[32'd1];
        tmp_3_reg_1881 <= {{jj_fu_866_p3[5:2]}};
        tmp_7_reg_1889 <= {{jj_fu_866_p3[5:3]}};
        tmp_9_reg_1926 <= {{kk_fu_893_p3[5:3]}};
        trunc_ln23_reg_1986 <= trunc_ln23_fu_1123_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage36_11001) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        icmp_ln15_reg_2537 <= icmp_ln15_fu_1724_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        icmp_ln16_reg_2532 <= icmp_ln16_fu_1718_p2;
        icmp_ln17_reg_2527 <= icmp_ln17_fu_1712_p2;
        xor_ln18_reg_2522 <= xor_ln18_fu_1707_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_0_load_1_reg_2034 <= m1_0_q0;
        m1_0_load_reg_2004 <= m1_0_q1;
        m1_1_load_reg_2029 <= m1_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        m2_0_load_11_reg_2209 <= m2_0_q0;
        m2_1_load_10_reg_2204 <= m2_1_q1;
        m2_1_load_11_reg_2214 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        m2_0_load_12_reg_2244 <= m2_0_q1;
        m2_0_load_13_reg_2249 <= m2_0_q0;
        m2_1_load_13_reg_2254 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        m2_0_load_15_reg_2289 <= m2_0_q0;
        m2_1_load_14_reg_2284 <= m2_1_q1;
        m2_1_load_15_reg_2294 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        m2_0_load_4_reg_2084 <= m2_0_q1;
        m2_0_load_5_reg_2089 <= m2_0_q0;
        m2_1_load_5_reg_2094 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        m2_0_load_7_reg_2129 <= m2_0_q0;
        m2_1_load_6_reg_2124 <= m2_1_q1;
        m2_1_load_7_reg_2134 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        m2_0_load_8_reg_2164 <= m2_0_q1;
        m2_0_load_9_reg_2169 <= m2_0_q0;
        m2_1_load_9_reg_2174 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_1_load_3_reg_2054 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_0_addr_1_reg_2326[10 : 1] <= p_cast4_fu_1488_p1[10 : 1];
        prod_0_addr_reg_2314 <= p_cast_fu_1474_p1;
        prod_1_addr_1_reg_2332[10 : 1] <= p_cast4_fu_1488_p1[10 : 1];
        prod_1_addr_reg_2320 <= p_cast_fu_1474_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_0_addr_2_reg_2343[0] <= p_cast5_fu_1508_p1[0];
prod_0_addr_2_reg_2343[10 : 2] <= p_cast5_fu_1508_p1[10 : 2];
        prod_0_addr_3_reg_2355[10 : 2] <= p_cast6_fu_1522_p1[10 : 2];
        prod_1_addr_2_reg_2349[0] <= p_cast5_fu_1508_p1[0];
prod_1_addr_2_reg_2349[10 : 2] <= p_cast5_fu_1508_p1[10 : 2];
        prod_1_addr_3_reg_2361[10 : 2] <= p_cast6_fu_1522_p1[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_623 <= m2_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_627 <= m2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_641 <= m2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_650 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_656 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_662 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_668 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_674 <= prod_0_q1;
        reg_678 <= prod_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_682 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_688 <= prod_1_q1;
        reg_692 <= prod_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_696 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_701 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_706 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_712 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_718 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_723 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_728 <= grp_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_733 <= grp_fu_607_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_738 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        reg_743 <= grp_fu_607_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_748 <= grp_fu_611_p2;
        reg_753 <= grp_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_758 <= grp_fu_607_p2;
        reg_763 <= grp_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_768 <= grp_fu_607_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        temp_x_1_reg_2304 <= temp_x_1_fu_1460_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        temp_x_2_reg_2437 <= temp_x_2_fu_1593_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_x_3_reg_2039 <= temp_x_3_fu_1208_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_x_reg_2044 <= temp_x_fu_1212_p1;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_1724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage36_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        ap_condition_exit_pp0_iter0_stage36 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage36 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_2537 == 1'd1) & (1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter1_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1972)) begin
            ap_phi_mux_icmp_ln1647_phi_fu_579_p4 = icmp_ln16_reg_2532;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1647_phi_fu_579_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1647_phi_fu_579_p4 = icmp_ln16_reg_2532;
        end
    end else begin
        ap_phi_mux_icmp_ln1647_phi_fu_579_p4 = icmp_ln16_reg_2532;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1972)) begin
            ap_phi_mux_icmp_ln1746_phi_fu_590_p4 = icmp_ln17_reg_2527;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1746_phi_fu_590_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1746_phi_fu_590_p4 = icmp_ln17_reg_2527;
        end
    end else begin
        ap_phi_mux_icmp_ln1746_phi_fu_590_p4 = icmp_ln17_reg_2527;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1972)) begin
            ap_phi_mux_icmp_ln1845_phi_fu_600_p4 = xor_ln18_reg_2522;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1845_phi_fu_600_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1845_phi_fu_600_p4 = xor_ln18_reg_2522;
        end
    end else begin
        ap_phi_mux_icmp_ln1845_phi_fu_600_p4 = xor_ln18_reg_2522;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage36_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk41_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk41_load = kk41_fu_154;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_607_p0 = reg_768;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_607_p0 = reg_758;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_607_p0 = reg_743;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_607_p0 = reg_733;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_607_p0 = bitcast_ln24_7_fu_1580_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_607_p0 = bitcast_ln24_5_fu_1566_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_607_p0 = bitcast_ln24_1_fu_1546_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_607_p0 = bitcast_ln24_fu_1532_p1;
    end else begin
        grp_fu_607_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)))) begin
        grp_fu_607_p1 = reg_662;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_607_p1 = reg_682;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_607_p1 = reg_668;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_607_p1 = reg_718;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_607_p1 = reg_712;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_607_p1 = reg_706;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_607_p1 = reg_696;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_607_p1 = reg_656;
    end else if ((((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_607_p1 = reg_650;
    end else begin
        grp_fu_607_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_611_p0 = reg_763;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_611_p0 = reg_748;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_611_p0 = reg_738;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_611_p0 = bitcast_ln24_6_fu_1571_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_611_p0 = bitcast_ln24_3_fu_1551_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_611_p0 = bitcast_ln24_2_fu_1537_p1;
    end else begin
        grp_fu_611_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_611_p1 = reg_656;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_611_p1 = reg_706;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_611_p1 = reg_728;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_611_p1 = reg_723;
    end else if ((((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_611_p1 = reg_701;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_611_p1 = reg_668;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_611_p1 = reg_662;
    end else begin
        grp_fu_611_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_615_p0 = reg_753;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_615_p0 = bitcast_ln24_4_fu_1556_p1;
    end else begin
        grp_fu_615_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_615_p1 = reg_712;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_615_p1 = reg_650;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_615_p1 = reg_682;
    end else begin
        grp_fu_615_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        grp_fu_619_p0 = temp_x_3_reg_2039;
    end else if ((((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_619_p0 = temp_x_2_reg_2437;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_619_p0 = temp_x_2_fu_1593_p1;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_619_p0 = temp_x_1_reg_2304;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_619_p0 = temp_x_1_fu_1460_p1;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_619_p0 = temp_x_reg_2044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_619_p0 = temp_x_fu_1212_p1;
    end else begin
        grp_fu_619_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage34) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
            grp_fu_619_p1 = bitcast_ln23_31_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage33) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
            grp_fu_619_p1 = bitcast_ln23_30_fu_1657_p1;
        end else if (((1'b0 == ap_block_pp0_stage32) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            grp_fu_619_p1 = bitcast_ln23_29_fu_1653_p1;
        end else if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_fu_619_p1 = bitcast_ln23_28_fu_1648_p1;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            grp_fu_619_p1 = bitcast_ln23_27_fu_1644_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            grp_fu_619_p1 = bitcast_ln23_26_fu_1640_p1;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            grp_fu_619_p1 = bitcast_ln23_25_fu_1635_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            grp_fu_619_p1 = bitcast_ln23_24_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            grp_fu_619_p1 = bitcast_ln23_23_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            grp_fu_619_p1 = bitcast_ln23_22_fu_1623_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            grp_fu_619_p1 = bitcast_ln23_21_fu_1619_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_619_p1 = bitcast_ln23_20_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_619_p1 = bitcast_ln23_19_fu_1610_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_619_p1 = bitcast_ln23_18_fu_1606_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_619_p1 = bitcast_ln23_17_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_619_p1 = bitcast_ln23_16_fu_1597_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_619_p1 = bitcast_ln23_15_fu_1589_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_619_p1 = bitcast_ln23_14_fu_1585_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_619_p1 = bitcast_ln23_13_fu_1576_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_619_p1 = bitcast_ln23_12_fu_1561_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_619_p1 = bitcast_ln23_11_fu_1542_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_619_p1 = bitcast_ln23_10_fu_1528_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_619_p1 = bitcast_ln23_9_fu_1494_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_619_p1 = bitcast_ln23_8_fu_1464_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_619_p1 = bitcast_ln23_7_fu_1456_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_619_p1 = bitcast_ln23_6_fu_1451_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_619_p1 = bitcast_ln23_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_619_p1 = bitcast_ln23_4_fu_1374_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_619_p1 = bitcast_ln23_3_fu_1332_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_619_p1 = bitcast_ln23_2_fu_1293_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_619_p1 = bitcast_ln23_1_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_619_p1 = bitcast_ln23_fu_1216_p1;
        end else begin
            grp_fu_619_p1 = 'bx;
        end
    end else begin
        grp_fu_619_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_0_ce0_local = 1'b1;
    end else begin
        m1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_0_ce1_local = 1'b1;
    end else begin
        m1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_1_ce1_local = 1'b1;
    end else begin
        m1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            m2_0_address0_local = zext_ln23_16_fu_1445_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_0_address0_local = zext_ln23_14_fu_1405_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_0_address0_local = zext_ln23_12_fu_1368_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_0_address0_local = zext_ln23_10_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_0_address0_local = zext_ln23_7_fu_1287_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_0_address0_local = zext_ln23_5_fu_1247_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address0_local = zext_ln23_3_fu_1202_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address0_local = zext_ln23_1_fu_1079_p1;
        end else begin
            m2_0_address0_local = 'bx;
        end
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            m2_0_address1_local = zext_ln23_15_fu_1428_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_0_address1_local = zext_ln23_13_fu_1388_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_0_address1_local = zext_ln23_11_fu_1350_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_0_address1_local = zext_ln23_9_fu_1308_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_0_address1_local = zext_ln23_6_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_0_address1_local = zext_ln23_4_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address1_local = zext_ln23_2_fu_1186_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address1_local = zext_ln23_fu_1057_p1;
        end else begin
            m2_0_address1_local = 'bx;
        end
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            m2_1_address0_local = zext_ln23_16_fu_1445_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_1_address0_local = zext_ln23_14_fu_1405_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_1_address0_local = zext_ln23_12_fu_1368_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_1_address0_local = zext_ln23_10_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_1_address0_local = zext_ln23_7_fu_1287_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_1_address0_local = zext_ln23_5_fu_1247_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address0_local = zext_ln23_3_fu_1202_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address0_local = zext_ln23_1_fu_1079_p1;
        end else begin
            m2_1_address0_local = 'bx;
        end
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            m2_1_address1_local = zext_ln23_15_fu_1428_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_1_address1_local = zext_ln23_13_fu_1388_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_1_address1_local = zext_ln23_11_fu_1350_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_1_address1_local = zext_ln23_9_fu_1308_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_1_address1_local = zext_ln23_6_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_1_address1_local = zext_ln23_4_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address1_local = zext_ln23_2_fu_1186_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address1_local = zext_ln23_fu_1057_p1;
        end else begin
            m2_1_address1_local = 'bx;
        end
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_0_address0_local = prod_0_addr_2_reg_2343;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_0_address0_local = prod_0_addr_reg_2314;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_0_address0_local = p_cast6_fu_1522_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_0_address0_local = p_cast4_fu_1488_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_0_address1_local = prod_0_addr_3_reg_2355;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_0_address1_local = prod_0_addr_1_reg_2326;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_0_address1_local = p_cast5_fu_1508_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_0_address1_local = p_cast_fu_1474_p1;
    end else begin
        prod_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_0_ce1_local = 1'b1;
    end else begin
        prod_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_0_d0_local = bitcast_ln24_12_fu_1760_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            prod_0_d0_local = bitcast_ln24_8_fu_1745_p1;
        end else begin
            prod_0_d0_local = 'bx;
        end
    end else begin
        prod_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_0_d1_local = bitcast_ln24_14_fu_1775_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_0_d1_local = bitcast_ln24_10_fu_1755_p1;
        end else begin
            prod_0_d1_local = 'bx;
        end
    end else begin
        prod_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_0_we1_local = 1'b1;
    end else begin
        prod_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_1_address0_local = prod_1_addr_2_reg_2349;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_1_address0_local = prod_1_addr_reg_2320;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_1_address0_local = prod_1_addr_3_reg_2361;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_1_address0_local = prod_1_addr_1_reg_2332;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_1_address1_local = prod_1_addr_3_reg_2361;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_1_address1_local = prod_1_addr_1_reg_2332;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_1_address1_local = prod_1_addr_2_reg_2349;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_1_address1_local = prod_1_addr_reg_2320;
    end else begin
        prod_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_1_ce1_local = 1'b1;
    end else begin
        prod_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_1_d0_local = bitcast_ln24_13_fu_1770_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_1_d0_local = bitcast_ln24_9_fu_1750_p1;
        end else begin
            prod_1_d0_local = 'bx;
        end
    end else begin
        prod_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            prod_1_d1_local = bitcast_ln24_15_fu_1780_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_1_d1_local = bitcast_ln24_11_fu_1765_p1;
        end else begin
            prod_1_d1_local = 'bx;
        end
    end else begin
        prod_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_1_we1_local = 1'b1;
    end else begin
        prod_1_we1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage12) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_1701_p2 = (indvar_flatten3538_fu_142 + 13'd1);
assign add_ln15_fu_1141_p2 = (jj_fu_866_p3 + 7'd8);
assign add_ln16_1_fu_1687_p2 = (indvar_flatten1240_fu_150 + 12'd1);
assign add_ln16_fu_874_p2 = (select_ln11_reg_1841 + 7'd8);
assign add_ln17_1_fu_1674_p2 = (indvar_flatten42_fu_158 + 9'd1);
assign add_ln17_fu_899_p2 = (i_mid26_fu_879_p3 + 7'd1);
assign add_ln21_1_fu_1021_p4 = {{{empty_8_fu_943_p1}, {tmp_10_fu_1013_p3}}, {or_ln21_fu_1007_p2}};
assign add_ln21_2_fu_1099_p4 = {{{empty_8_fu_943_p1}, {tmp_10_fu_1013_p3}}, {or_ln21_1_fu_1093_p2}};
assign add_ln23_1_fu_1379_p5 = {{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {2'd3}}, {indvars_iv147_udiv_reg_1865}};
assign add_ln23_4_fu_1221_p5 = {{{{tmp_9_reg_1926}, {lshr_ln_reg_1911}}, {1'd1}}, {indvars_iv147_udiv_reg_1865}};
assign add_ln23_8_fu_1298_p6 = {{{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {1'd1}}, {trunc_ln23_reg_1986}}, {indvars_iv147_udiv_reg_1865}};
assign add_ln_fu_1047_p4 = {{{tmp_9_fu_1037_p4}, {lshr_ln_fu_975_p4}}, {indvars_iv147_udiv_cast_fu_929_p1}};
assign and_ln11_fu_836_p2 = (xor_ln11_fu_830_p2 & ap_phi_mux_icmp_ln1746_phi_fu_590_p4);
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
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
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
    ap_condition_1968 = ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1972 = ((icmp_ln15_reg_2537 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_2009 = ((icmp_ln15_reg_2537 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage36;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_10_fu_1528_p1 = m2_0_load_5_reg_2089;
assign bitcast_ln23_11_fu_1542_p1 = m2_1_load_5_reg_2094;
assign bitcast_ln23_12_fu_1561_p1 = reg_631;
assign bitcast_ln23_13_fu_1576_p1 = m2_1_load_6_reg_2124;
assign bitcast_ln23_14_fu_1585_p1 = m2_0_load_7_reg_2129;
assign bitcast_ln23_15_fu_1589_p1 = m2_1_load_7_reg_2134;
assign bitcast_ln23_16_fu_1597_p1 = m2_0_load_8_reg_2164;
assign bitcast_ln23_17_fu_1601_p1 = reg_636;
assign bitcast_ln23_18_fu_1606_p1 = m2_0_load_9_reg_2169;
assign bitcast_ln23_19_fu_1610_p1 = m2_1_load_9_reg_2174;
assign bitcast_ln23_1_fu_1253_p1 = reg_627;
assign bitcast_ln23_20_fu_1614_p1 = reg_623;
assign bitcast_ln23_21_fu_1619_p1 = m2_1_load_10_reg_2204;
assign bitcast_ln23_22_fu_1623_p1 = m2_0_load_11_reg_2209;
assign bitcast_ln23_23_fu_1627_p1 = m2_1_load_11_reg_2214;
assign bitcast_ln23_24_fu_1631_p1 = m2_0_load_12_reg_2244;
assign bitcast_ln23_25_fu_1635_p1 = reg_641;
assign bitcast_ln23_26_fu_1640_p1 = m2_0_load_13_reg_2249;
assign bitcast_ln23_27_fu_1644_p1 = m2_1_load_13_reg_2254;
assign bitcast_ln23_28_fu_1648_p1 = reg_645;
assign bitcast_ln23_29_fu_1653_p1 = m2_1_load_14_reg_2284;
assign bitcast_ln23_2_fu_1293_p1 = reg_631;
assign bitcast_ln23_30_fu_1657_p1 = m2_0_load_15_reg_2289;
assign bitcast_ln23_31_fu_1661_p1 = m2_1_load_15_reg_2294;
assign bitcast_ln23_3_fu_1332_p1 = reg_636;
assign bitcast_ln23_4_fu_1374_p1 = reg_623;
assign bitcast_ln23_5_fu_1411_p1 = reg_641;
assign bitcast_ln23_6_fu_1451_p1 = reg_645;
assign bitcast_ln23_7_fu_1456_p1 = m2_1_load_3_reg_2054;
assign bitcast_ln23_8_fu_1464_p1 = m2_0_load_4_reg_2084;
assign bitcast_ln23_9_fu_1494_p1 = reg_627;
assign bitcast_ln23_fu_1216_p1 = reg_623;
assign bitcast_ln24_10_fu_1755_p1 = reg_738;
assign bitcast_ln24_11_fu_1765_p1 = reg_748;
assign bitcast_ln24_12_fu_1760_p1 = reg_753;
assign bitcast_ln24_13_fu_1770_p1 = reg_733;
assign bitcast_ln24_14_fu_1775_p1 = reg_738;
assign bitcast_ln24_15_fu_1780_p1 = reg_733;
assign bitcast_ln24_1_fu_1546_p1 = reg_688;
assign bitcast_ln24_2_fu_1537_p1 = reg_678;
assign bitcast_ln24_3_fu_1551_p1 = reg_692;
assign bitcast_ln24_4_fu_1556_p1 = reg_674;
assign bitcast_ln24_5_fu_1566_p1 = reg_688;
assign bitcast_ln24_6_fu_1571_p1 = reg_678;
assign bitcast_ln24_7_fu_1580_p1 = reg_692;
assign bitcast_ln24_8_fu_1745_p1 = reg_733;
assign bitcast_ln24_9_fu_1750_p1 = reg_733;
assign bitcast_ln24_fu_1532_p1 = reg_674;
assign empty_8_fu_943_p1 = i_fu_912_p3[5:0];
assign empty_fu_842_p2 = (ap_phi_mux_icmp_ln1647_phi_fu_579_p4 | and_ln11_fu_836_p2);
assign i_fu_912_p3 = ((icmp_ln18_mid211_reg_1859[0:0] == 1'b1) ? i_mid26_fu_879_p3 : add_ln17_fu_899_p2);
assign i_mid26_fu_879_p3 = ((empty_reg_1852[0:0] == 1'b1) ? 7'd0 : i43_fu_162);
assign icmp_ln15_fu_1724_p2 = ((indvar_flatten3538_fu_142 == 13'd8191) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1718_p2 = ((select_ln16_1_fu_1693_p3 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_1712_p2 = ((select_ln17_1_fu_1680_p3 == 9'd128) ? 1'b1 : 1'b0);
assign icmp_ln18_mid211_fu_848_p2 = (or_ln11_fu_824_p2 | and_ln11_fu_836_p2);
assign indvars_iv147_udiv_cast_fu_929_p1 = indvars_iv147_udiv_fu_919_p4;
assign indvars_iv147_udiv_fu_919_p4 = {{jj_fu_866_p3[5:1]}};
assign jj_fu_866_p3 = ((icmp_ln1647_reg_576[0:0] == 1'b1) ? add_ln1548_fu_170 : jj39_fu_146);
assign k_fu_1127_p2 = (k_mid2_fu_905_p3 + 4'd4);
assign k_mid27_fu_886_p3 = ((empty_reg_1852[0:0] == 1'b1) ? 4'd0 : k44_fu_166);
assign k_mid2_fu_905_p3 = ((icmp_ln18_mid211_reg_1859[0:0] == 1'b1) ? k_mid27_fu_886_p3 : 4'd0);
assign kk_fu_893_p3 = ((and_ln11_reg_1847[0:0] == 1'b1) ? add_ln16_fu_874_p2 : select_ln11_reg_1841);
assign lshr_ln_fu_975_p4 = {{k_mid2_fu_905_p3[2:1]}};
assign m1_0_address0 = zext_ln21_1_fu_1109_p1;
assign m1_0_address1 = zext_ln21_fu_1031_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_0_ce1 = m1_0_ce1_local;
assign m1_1_address0 = zext_ln21_1_fu_1109_p1;
assign m1_1_address1 = zext_ln21_fu_1031_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_1_ce1 = m1_1_ce1_local;
assign m2_0_address0 = m2_0_address0_local;
assign m2_0_address1 = m2_0_address1_local;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = m2_1_address0_local;
assign m2_1_address1 = m2_1_address1_local;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign or_ln11_fu_824_p2 = (ap_phi_mux_icmp_ln1845_phi_fu_600_p4 | ap_phi_mux_icmp_ln1647_phi_fu_579_p4);
assign or_ln21_1_fu_1093_p2 = (tmp_5_fu_989_p3 | tmp_11_fu_1085_p3);
assign or_ln21_fu_1007_p2 = (tmp_8_fu_997_p4 | tmp_5_fu_989_p3);
assign or_ln23_10_fu_1434_p6 = {{{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {2'd3}}, {tmp_7_reg_1889}}, {2'd3}};
assign or_ln23_1_fu_1192_p5 = {{{{tmp_9_reg_1926}, {lshr_ln_reg_1911}}, {zext_ln23_17_fu_1172_p1}}, {2'd3}};
assign or_ln23_2_fu_1236_p6 = {{{{{tmp_9_reg_1926}, {lshr_ln_reg_1911}}, {1'd1}}, {tmp_3_reg_1881}}, {1'd1}};
assign or_ln23_3_fu_1258_p7 = {{{{{{tmp_9_reg_1926}, {lshr_ln_reg_1911}}, {1'd1}}, {tmp_7_reg_1889}}, {1'd1}}, {tmp_2_reg_1902}};
assign or_ln23_4_fu_1276_p6 = {{{{{tmp_9_reg_1926}, {lshr_ln_reg_1911}}, {1'd1}}, {tmp_7_reg_1889}}, {2'd3}};
assign or_ln23_5_fu_1314_p7 = {{{{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {1'd1}}, {trunc_ln23_reg_1986}}, {tmp_3_reg_1881}}, {1'd1}};
assign or_ln23_6_fu_1337_p8 = {{{{{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {1'd1}}, {trunc_ln23_reg_1986}}, {tmp_7_reg_1889}}, {1'd1}}, {tmp_2_reg_1902}};
assign or_ln23_7_fu_1356_p7 = {{{{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {1'd1}}, {trunc_ln23_reg_1986}}, {tmp_7_reg_1889}}, {2'd3}};
assign or_ln23_8_fu_1394_p6 = {{{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {2'd3}}, {tmp_3_reg_1881}}, {1'd1}};
assign or_ln23_9_fu_1416_p7 = {{{{{{tmp_9_reg_1926}, {tmp_12_reg_1974}}, {2'd3}}, {tmp_7_reg_1889}}, {1'd1}}, {tmp_2_reg_1902}};
assign or_ln23_s_fu_1175_p6 = {{{{{tmp_9_reg_1926}, {lshr_ln_reg_1911}}, {zext_ln23_17_fu_1172_p1}}, {1'd1}}, {tmp_2_reg_1902}};
assign or_ln_fu_1067_p5 = {{{{tmp_9_fu_1037_p4}, {lshr_ln_fu_975_p4}}, {zext_ln23_8_fu_1063_p1}}, {1'd1}};
assign p_cast4_fu_1488_p1 = tmp_6_fu_1480_p4;
assign p_cast5_fu_1508_p1 = tmp_s_fu_1499_p5;
assign p_cast6_fu_1522_p1 = tmp_4_fu_1514_p4;
assign p_cast_fu_1474_p1 = tmp_1_fu_1468_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_address1 = prod_0_address1_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_ce1 = prod_0_ce1_local;
assign prod_0_d0 = prod_0_d0_local;
assign prod_0_d1 = prod_0_d1_local;
assign prod_0_we0 = prod_0_we0_local;
assign prod_0_we1 = prod_0_we1_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_address1 = prod_1_address1_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_ce1 = prod_1_ce1_local;
assign prod_1_d0 = prod_1_d0_local;
assign prod_1_d1 = prod_1_d1_local;
assign prod_1_we0 = prod_1_we0_local;
assign prod_1_we1 = prod_1_we1_local;
assign select_ln11_fu_816_p3 = ((ap_phi_mux_icmp_ln1647_phi_fu_579_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk41_load);
assign select_ln16_1_fu_1693_p3 = ((icmp_ln1647_reg_576[0:0] == 1'b1) ? 12'd1 : add_ln16_1_fu_1687_p2);
assign select_ln17_1_fu_1680_p3 = ((empty_reg_1852[0:0] == 1'b1) ? 9'd1 : add_ln17_1_fu_1674_p2);
assign temp_x_1_fu_1460_p1 = m1_1_load_reg_2029;
assign temp_x_2_fu_1593_p1 = m1_0_load_1_reg_2034;
assign temp_x_3_fu_1208_p1 = m1_1_q0;
assign temp_x_fu_1212_p1 = m1_0_load_reg_2004;
assign tmp_10_fu_1013_p3 = kk_fu_893_p3[32'd5];
assign tmp_11_fu_1085_p3 = {{tmp_fu_933_p4}, {1'd1}};
assign tmp_1_fu_1468_p3 = {{empty_8_reg_1873}, {indvars_iv147_udiv_reg_1865}};
assign tmp_3_fu_947_p4 = {{jj_fu_866_p3[5:2]}};
assign tmp_4_fu_1514_p4 = {{{empty_8_reg_1873}, {tmp_7_reg_1889}}, {2'd3}};
assign tmp_5_fu_989_p3 = {{1'd0}, {zext_ln21_2_fu_985_p1}};
assign tmp_6_fu_1480_p4 = {{{empty_8_reg_1873}, {tmp_3_reg_1881}}, {1'd1}};
assign tmp_8_fu_997_p4 = {{kk_fu_893_p3[4:1]}};
assign tmp_9_fu_1037_p4 = {{kk_fu_893_p3[5:3]}};
assign tmp_fu_933_p4 = {{kk_fu_893_p3[4:2]}};
assign tmp_s_fu_1499_p5 = {{{{empty_8_reg_1873}, {tmp_7_reg_1889}}, {1'd1}}, {tmp_2_reg_1902}};
assign trunc_ln23_fu_1123_p1 = k_mid2_fu_905_p3[0:0];
assign xor_ln11_fu_830_p2 = (ap_phi_mux_icmp_ln1647_phi_fu_579_p4 ^ 1'd1);
assign xor_ln18_fu_1707_p2 = (tmp_13_reg_1999 ^ 1'd1);
assign zext_ln21_1_fu_1109_p1 = add_ln21_2_fu_1099_p4;
assign zext_ln21_2_fu_985_p1 = lshr_ln_fu_975_p4;
assign zext_ln21_fu_1031_p1 = add_ln21_1_fu_1021_p4;
assign zext_ln23_10_fu_1326_p1 = or_ln23_5_fu_1314_p7;
assign zext_ln23_11_fu_1350_p1 = or_ln23_6_fu_1337_p8;
assign zext_ln23_12_fu_1368_p1 = or_ln23_7_fu_1356_p7;
assign zext_ln23_13_fu_1388_p1 = add_ln23_1_fu_1379_p5;
assign zext_ln23_14_fu_1405_p1 = or_ln23_8_fu_1394_p6;
assign zext_ln23_15_fu_1428_p1 = or_ln23_9_fu_1416_p7;
assign zext_ln23_16_fu_1445_p1 = or_ln23_10_fu_1434_p6;
assign zext_ln23_17_fu_1172_p1 = tmp_7_reg_1889;
assign zext_ln23_1_fu_1079_p1 = or_ln_fu_1067_p5;
assign zext_ln23_2_fu_1186_p1 = or_ln23_s_fu_1175_p6;
assign zext_ln23_3_fu_1202_p1 = or_ln23_1_fu_1192_p5;
assign zext_ln23_4_fu_1230_p1 = add_ln23_4_fu_1221_p5;
assign zext_ln23_5_fu_1247_p1 = or_ln23_2_fu_1236_p6;
assign zext_ln23_6_fu_1270_p1 = or_ln23_3_fu_1258_p7;
assign zext_ln23_7_fu_1287_p1 = or_ln23_4_fu_1276_p6;
assign zext_ln23_8_fu_1063_p1 = tmp_3_fu_947_p4;
assign zext_ln23_9_fu_1308_p1 = add_ln23_8_fu_1298_p6;
assign zext_ln23_fu_1057_p1 = add_ln_fu_1047_p4;
always @ (posedge ap_clk) begin
    prod_0_addr_1_reg_2326[0] <= 1'b1;
    prod_1_addr_1_reg_2332[0] <= 1'b1;
    prod_0_addr_2_reg_2343[1] <= 1'b1;
    prod_1_addr_2_reg_2349[1] <= 1'b1;
    prod_0_addr_3_reg_2355[1:0] <= 2'b11;
    prod_1_addr_3_reg_2361[1:0] <= 2'b11;
end
endmodule 