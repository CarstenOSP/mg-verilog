module bbgemm_bbgemm_Pipeline_loopi_loopk (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,indvars_iv145_udiv,m1_1_address0,m1_1_ce0,m1_1_q0,m1_5_address0,m1_5_ce0,m1_5_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_6_address0,m1_6_ce0,m1_6_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m1_7_address0,m1_7_ce0,m1_7_q0,m1_0_address0,m1_0_ce0,m1_0_q0,m1_4_address0,m1_4_ce0,m1_4_q0,indvars_iv147_udiv,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,m2_4_address0,m2_4_ce0,m2_4_q0,m2_4_address1,m2_4_ce1,m2_4_q1,m2_5_address0,m2_5_ce0,m2_5_q0,m2_5_address1,m2_5_ce1,m2_5_q1,m2_6_address0,m2_6_ce0,m2_6_q0,m2_6_address1,m2_6_ce1,m2_6_q1,m2_7_address0,m2_7_ce0,m2_7_q0,m2_7_address1,m2_7_ce1,m2_7_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0,prod_4_address0,prod_4_ce0,prod_4_we0,prod_4_d0,prod_4_q0,prod_5_address0,prod_5_ce0,prod_5_we0,prod_5_d0,prod_5_q0,prod_6_address0,prod_6_ce0,prod_6_we0,prod_6_d0,prod_6_q0,prod_7_address0,prod_7_ce0,prod_7_we0,prod_7_d0,prod_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 35'd1;
parameter    ap_ST_fsm_pp0_stage1 = 35'd2;
parameter    ap_ST_fsm_pp0_stage2 = 35'd4;
parameter    ap_ST_fsm_pp0_stage3 = 35'd8;
parameter    ap_ST_fsm_pp0_stage4 = 35'd16;
parameter    ap_ST_fsm_pp0_stage5 = 35'd32;
parameter    ap_ST_fsm_pp0_stage6 = 35'd64;
parameter    ap_ST_fsm_pp0_stage7 = 35'd128;
parameter    ap_ST_fsm_pp0_stage8 = 35'd256;
parameter    ap_ST_fsm_pp0_stage9 = 35'd512;
parameter    ap_ST_fsm_pp0_stage10 = 35'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 35'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 35'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 35'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 35'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 35'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 35'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 35'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 35'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 35'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 35'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 35'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 35'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 35'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 35'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 35'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 35'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 35'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 35'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 35'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 35'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 35'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 35'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 35'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 35'd17179869184;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] indvars_iv145_udiv;
output  [8:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [8:0] m1_5_address0;
output   m1_5_ce0;
input  [63:0] m1_5_q0;
output  [8:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [8:0] m1_6_address0;
output   m1_6_ce0;
input  [63:0] m1_6_q0;
output  [8:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [8:0] m1_7_address0;
output   m1_7_ce0;
input  [63:0] m1_7_q0;
output  [8:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [8:0] m1_4_address0;
output   m1_4_ce0;
input  [63:0] m1_4_q0;
input  [2:0] indvars_iv147_udiv;
output  [8:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [8:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [8:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [8:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [8:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [8:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [8:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [8:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
output  [8:0] m2_4_address0;
output   m2_4_ce0;
input  [63:0] m2_4_q0;
output  [8:0] m2_4_address1;
output   m2_4_ce1;
input  [63:0] m2_4_q1;
output  [8:0] m2_5_address0;
output   m2_5_ce0;
input  [63:0] m2_5_q0;
output  [8:0] m2_5_address1;
output   m2_5_ce1;
input  [63:0] m2_5_q1;
output  [8:0] m2_6_address0;
output   m2_6_ce0;
input  [63:0] m2_6_q0;
output  [8:0] m2_6_address1;
output   m2_6_ce1;
input  [63:0] m2_6_q1;
output  [8:0] m2_7_address0;
output   m2_7_ce0;
input  [63:0] m2_7_q0;
output  [8:0] m2_7_address1;
output   m2_7_ce1;
input  [63:0] m2_7_q1;
output  [8:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [8:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [8:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [8:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
output  [8:0] prod_4_address0;
output   prod_4_ce0;
output   prod_4_we0;
output  [63:0] prod_4_d0;
input  [63:0] prod_4_q0;
output  [8:0] prod_5_address0;
output   prod_5_ce0;
output   prod_5_we0;
output  [63:0] prod_5_d0;
input  [63:0] prod_5_q0;
output  [8:0] prod_6_address0;
output   prod_6_ce0;
output   prod_6_we0;
output  [63:0] prod_6_d0;
input  [63:0] prod_6_q0;
output  [8:0] prod_7_address0;
output   prod_7_ce0;
output   prod_7_we0;
output  [63:0] prod_7_d0;
input  [63:0] prod_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [34:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [0:0] icmp_ln17_reg_1499;
reg    ap_condition_exit_pp0_iter0_stage14;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_subdone;
wire   [63:0] grp_fu_703_p2;
reg   [63:0] reg_707;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] reg_712;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire    ap_block_pp0_stage34_11001;
reg   [63:0] reg_717;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_722;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_727;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_732;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_737;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_742;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_699_p2;
reg   [63:0] reg_747;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_752;
reg   [63:0] reg_757;
reg   [63:0] reg_762;
reg   [63:0] reg_767;
reg   [63:0] reg_772;
reg   [63:0] reg_777;
reg   [63:0] reg_782;
wire   [0:0] icmp_ln17_fu_805_p2;
wire   [0:0] tmp_fu_820_p3;
reg   [0:0] tmp_reg_1503;
wire   [3:0] select_ln11_fu_828_p3;
reg   [3:0] select_ln11_reg_1508;
wire   [0:0] first_iter_0_fu_836_p2;
reg   [0:0] first_iter_0_reg_1516;
wire   [5:0] empty_fu_923_p1;
reg   [5:0] empty_reg_1600;
reg   [63:0] m2_0_load_reg_1645;
reg   [63:0] m2_1_load_reg_1650;
reg   [63:0] m2_2_load_reg_1655;
reg   [63:0] m2_3_load_reg_1660;
reg   [63:0] m2_4_load_reg_1665;
reg   [63:0] m2_5_load_reg_1670;
reg   [63:0] m2_6_load_reg_1675;
reg   [63:0] m2_7_load_reg_1680;
reg   [63:0] m2_0_load_1_reg_1685;
reg   [63:0] m2_1_load_1_reg_1690;
reg   [63:0] m2_2_load_1_reg_1695;
reg   [63:0] m2_3_load_1_reg_1700;
reg   [63:0] m2_4_load_1_reg_1705;
reg   [63:0] m2_5_load_1_reg_1710;
reg   [63:0] m2_6_load_1_reg_1715;
reg   [63:0] m2_7_load_1_reg_1720;
wire   [63:0] select_ln21_fu_1012_p3;
reg   [63:0] select_ln21_reg_1805;
wire   [63:0] select_ln21_1_fu_1020_p3;
reg   [63:0] select_ln21_1_reg_1810;
wire   [63:0] select_ln21_2_fu_1028_p3;
reg   [63:0] select_ln21_2_reg_1815;
reg   [63:0] m2_0_load_2_reg_1820;
reg   [63:0] m2_1_load_2_reg_1825;
reg   [63:0] m2_2_load_2_reg_1830;
reg   [63:0] m2_3_load_2_reg_1835;
reg   [63:0] m2_4_load_2_reg_1840;
reg   [63:0] m2_5_load_2_reg_1845;
reg   [63:0] m2_6_load_2_reg_1850;
reg   [63:0] m2_7_load_2_reg_1855;
wire   [63:0] select_ln21_3_fu_1036_p3;
reg   [63:0] select_ln21_3_reg_1860;
reg   [63:0] m2_0_load_3_reg_1865;
reg   [63:0] m2_1_load_3_reg_1870;
reg   [63:0] m2_2_load_3_reg_1875;
reg   [63:0] m2_3_load_3_reg_1880;
reg   [63:0] m2_4_load_3_reg_1885;
reg   [63:0] m2_5_load_3_reg_1890;
reg   [63:0] m2_6_load_3_reg_1895;
reg   [63:0] m2_7_load_3_reg_1900;
wire   [63:0] temp_x_fu_1044_p1;
reg   [63:0] temp_x_reg_1905;
wire   [63:0] bitcast_ln23_fu_1048_p1;
wire   [63:0] bitcast_ln23_1_fu_1052_p1;
wire   [63:0] bitcast_ln23_2_fu_1056_p1;
wire   [63:0] bitcast_ln23_3_fu_1060_p1;
wire   [63:0] bitcast_ln23_4_fu_1064_p1;
reg   [8:0] prod_0_addr_reg_1935;
reg   [8:0] prod_1_addr_reg_1940;
reg   [8:0] prod_2_addr_reg_1945;
reg   [8:0] prod_2_addr_reg_1945_pp0_iter1_reg;
reg   [8:0] prod_3_addr_reg_1950;
reg   [8:0] prod_3_addr_reg_1950_pp0_iter1_reg;
reg   [8:0] prod_4_addr_reg_1955;
reg   [8:0] prod_4_addr_reg_1955_pp0_iter1_reg;
reg   [8:0] prod_5_addr_reg_1960;
reg   [8:0] prod_5_addr_reg_1960_pp0_iter1_reg;
reg   [8:0] prod_6_addr_reg_1965;
reg   [8:0] prod_6_addr_reg_1965_pp0_iter1_reg;
reg   [8:0] prod_7_addr_reg_1970;
reg   [8:0] prod_7_addr_reg_1970_pp0_iter1_reg;
wire   [63:0] bitcast_ln23_5_fu_1086_p1;
wire   [63:0] bitcast_ln23_6_fu_1099_p1;
wire   [63:0] bitcast_ln23_7_fu_1116_p1;
wire   [63:0] temp_x_1_fu_1133_p1;
reg   [63:0] temp_x_1_reg_2000;
wire   [63:0] bitcast_ln23_8_fu_1137_p1;
wire   [63:0] bitcast_ln23_9_fu_1154_p1;
wire   [63:0] bitcast_ln23_10_fu_1171_p1;
wire   [63:0] bitcast_ln23_11_fu_1188_p1;
wire   [63:0] bitcast_ln23_12_fu_1205_p1;
wire   [63:0] bitcast_ln23_13_fu_1222_p1;
wire   [63:0] bitcast_ln23_14_fu_1230_p1;
wire   [63:0] bitcast_ln23_15_fu_1234_p1;
wire   [63:0] temp_x_2_fu_1238_p1;
reg   [63:0] temp_x_2_reg_2075;
wire   [63:0] bitcast_ln23_16_fu_1242_p1;
wire   [63:0] bitcast_ln23_17_fu_1246_p1;
wire   [63:0] bitcast_ln23_18_fu_1250_p1;
wire   [63:0] bitcast_ln23_19_fu_1254_p1;
wire   [63:0] bitcast_ln23_20_fu_1258_p1;
wire   [63:0] bitcast_ln23_21_fu_1262_p1;
wire   [63:0] bitcast_ln23_22_fu_1266_p1;
wire   [63:0] bitcast_ln23_23_fu_1270_p1;
wire   [63:0] temp_x_3_fu_1274_p1;
reg   [63:0] temp_x_3_reg_2120;
wire   [63:0] bitcast_ln23_24_fu_1278_p1;
wire   [63:0] bitcast_ln23_25_fu_1282_p1;
wire   [63:0] bitcast_ln23_26_fu_1286_p1;
wire   [63:0] bitcast_ln23_27_fu_1290_p1;
wire   [63:0] bitcast_ln23_28_fu_1294_p1;
wire   [63:0] bitcast_ln23_29_fu_1298_p1;
wire   [63:0] bitcast_ln23_30_fu_1302_p1;
wire   [63:0] bitcast_ln23_31_fu_1306_p1;
reg   [0:0] tmp_4_reg_2165;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln23_fu_856_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln23_1_fu_890_p1;
wire   [63:0] p_cast3_fu_934_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_2_fu_968_p1;
wire   [63:0] zext_ln23_3_fu_990_p1;
wire   [63:0] p_cast_fu_1074_p1;
wire    ap_block_pp0_stage8;
reg   [3:0] k_fu_114;
wire   [3:0] add_ln18_fu_1310_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [6:0] i_fu_118;
wire   [6:0] select_ln17_fu_916_p3;
reg   [7:0] indvar_flatten_fu_122;
wire   [7:0] add_ln17_fu_811_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [63:0] add26_3166_fu_126;
wire   [63:0] bitcast_ln24_fu_1090_p1;
wire    ap_block_pp0_stage10;
reg   [63:0] add26_3_1167_fu_130;
wire   [63:0] bitcast_ln24_1_fu_1103_p1;
wire    ap_block_pp0_stage11;
reg   [63:0] add26_3_2168_fu_134;
wire   [63:0] bitcast_ln24_2_fu_1120_p1;
wire    ap_block_pp0_stage12;
reg   [63:0] add26_3_3169_fu_138;
wire   [63:0] bitcast_ln24_3_fu_1141_p1;
wire    ap_block_pp0_stage13;
reg   [63:0] add26_3_4170_fu_142;
wire   [63:0] bitcast_ln24_4_fu_1158_p1;
wire    ap_block_pp0_stage14;
reg   [63:0] add26_3_5171_fu_146;
wire   [63:0] bitcast_ln24_5_fu_1175_p1;
wire    ap_block_pp0_stage15;
reg   [63:0] add26_3_6172_fu_150;
wire   [63:0] bitcast_ln24_6_fu_1192_p1;
wire    ap_block_pp0_stage16;
reg   [63:0] add26_3_7173_fu_154;
wire   [63:0] bitcast_ln24_7_fu_1209_p1;
wire    ap_block_pp0_stage17;
reg    m2_0_ce1_local;
reg   [8:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [8:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [8:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [8:0] m2_1_address0_local;
reg    m2_2_ce1_local;
reg   [8:0] m2_2_address1_local;
reg    m2_2_ce0_local;
reg   [8:0] m2_2_address0_local;
reg    m2_3_ce1_local;
reg   [8:0] m2_3_address1_local;
reg    m2_3_ce0_local;
reg   [8:0] m2_3_address0_local;
reg    m2_4_ce1_local;
reg   [8:0] m2_4_address1_local;
reg    m2_4_ce0_local;
reg   [8:0] m2_4_address0_local;
reg    m2_5_ce1_local;
reg   [8:0] m2_5_address1_local;
reg    m2_5_ce0_local;
reg   [8:0] m2_5_address0_local;
reg    m2_6_ce1_local;
reg   [8:0] m2_6_address1_local;
reg    m2_6_ce0_local;
reg   [8:0] m2_6_address0_local;
reg    m2_7_ce1_local;
reg   [8:0] m2_7_address1_local;
reg    m2_7_ce0_local;
reg   [8:0] m2_7_address0_local;
reg    m1_1_ce0_local;
reg    m1_5_ce0_local;
reg    m1_2_ce0_local;
reg    m1_6_ce0_local;
reg    m1_3_ce0_local;
reg    m1_7_ce0_local;
reg    m1_0_ce0_local;
reg    m1_4_ce0_local;
reg    prod_0_ce0_local;
reg   [8:0] prod_0_address0_local;
reg    prod_0_we0_local;
wire   [63:0] bitcast_ln24_8_fu_1333_p1;
wire    ap_block_pp0_stage7;
reg    prod_1_ce0_local;
wire    ap_block_pp0_stage9;
reg    prod_1_we0_local;
wire   [63:0] bitcast_ln24_9_fu_1343_p1;
reg    prod_2_ce0_local;
reg   [8:0] prod_2_address0_local;
reg    prod_2_we0_local;
wire   [63:0] bitcast_ln24_10_fu_1353_p1;
reg    prod_3_ce0_local;
reg   [8:0] prod_3_address0_local;
reg    prod_3_we0_local;
wire   [63:0] bitcast_ln24_11_fu_1363_p1;
reg    prod_4_ce0_local;
reg   [8:0] prod_4_address0_local;
reg    prod_4_we0_local;
wire   [63:0] bitcast_ln24_12_fu_1373_p1;
reg    prod_5_ce0_local;
reg   [8:0] prod_5_address0_local;
reg    prod_5_we0_local;
wire   [63:0] bitcast_ln24_13_fu_1383_p1;
reg    prod_6_ce0_local;
reg   [8:0] prod_6_address0_local;
reg    prod_6_we0_local;
wire   [63:0] bitcast_ln24_14_fu_1393_p1;
reg    prod_7_ce0_local;
reg   [8:0] prod_7_address0_local;
reg    prod_7_we0_local;
wire   [63:0] bitcast_ln24_15_fu_1403_p1;
reg   [63:0] grp_fu_699_p0;
reg   [63:0] grp_fu_699_p1;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage27;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage29;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage32;
wire    ap_block_pp0_stage33;
wire    ap_block_pp0_stage34;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
reg   [63:0] grp_fu_703_p0;
reg   [63:0] grp_fu_703_p1;
wire   [2:0] trunc_ln20_fu_842_p1;
wire   [8:0] add_ln_fu_846_p4;
wire   [1:0] tmp_5_fu_868_p4;
wire   [8:0] add_ln23_1_fu_878_p5;
wire   [6:0] add_ln17_1_fu_910_p2;
wire   [8:0] tmp_3_fu_927_p3;
wire   [0:0] tmp_2_fu_946_p3;
wire   [0:0] trunc_ln23_fu_953_p1;
wire   [8:0] add_ln23_2_fu_956_p6;
wire   [8:0] add_ln23_3_fu_980_p5;
wire   [0:0] icmp_ln21_fu_1007_p2;
wire   [8:0] tmp_1_fu_1068_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [34:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 35'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_114 = 4'd0;
#0 i_fu_118 = 7'd0;
#0 indvar_flatten_fu_122 = 8'd0;
#0 add26_3166_fu_126 = 64'd0;
#0 add26_3_1167_fu_130 = 64'd0;
#0 add26_3_2168_fu_134 = 64'd0;
#0 add26_3_3169_fu_138 = 64'd0;
#0 add26_3_4170_fu_142 = 64'd0;
#0 add26_3_5171_fu_146 = 64'd0;
#0 add26_3_6172_fu_150 = 64'd0;
#0 add26_3_7173_fu_154 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_699_p0),.din1(grp_fu_699_p1),.ce(1'b1),.dout(grp_fu_699_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_703_p0),.din1(grp_fu_703_p1),.ce(1'b1),.dout(grp_fu_703_p2));
bbgemm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage14),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage14)) begin
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
        if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage34_subdone) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add26_3166_fu_126 <= bitcast_ln24_fu_1090_p1;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add26_3166_fu_126 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add26_3_1167_fu_130 <= bitcast_ln24_1_fu_1103_p1;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add26_3_1167_fu_130 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add26_3_2168_fu_134 <= bitcast_ln24_2_fu_1120_p1;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add26_3_2168_fu_134 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add26_3_3169_fu_138 <= bitcast_ln24_3_fu_1141_p1;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add26_3_3169_fu_138 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add26_3_4170_fu_142 <= bitcast_ln24_4_fu_1158_p1;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add26_3_4170_fu_142 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add26_3_5171_fu_146 <= bitcast_ln24_5_fu_1175_p1;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add26_3_5171_fu_146 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add26_3_6172_fu_150 <= bitcast_ln24_6_fu_1192_p1;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add26_3_6172_fu_150 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1499 == 1'd0) & (first_iter_0_reg_1516 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add26_3_7173_fu_154 <= bitcast_ln24_7_fu_1209_p1;
    end else if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add26_3_7173_fu_154 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_118 <= 7'd0;
    end else if (((icmp_ln17_reg_1499 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_118 <= select_ln17_fu_916_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln17_fu_805_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_122 <= add_ln17_fu_811_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_122 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        k_fu_114 <= 4'd0;
    end else if (((icmp_ln17_reg_1499 == 1'd0) & (1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        k_fu_114 <= add_ln18_fu_1310_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_1600 <= empty_fu_923_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        first_iter_0_reg_1516 <= first_iter_0_fu_836_p2;
        icmp_ln17_reg_1499 <= icmp_ln17_fu_805_p2;
        select_ln11_reg_1508 <= select_ln11_fu_828_p3;
        tmp_reg_1503 <= ap_sig_allocacmp_k_load[32'd3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_0_load_1_reg_1685 <= m2_0_q0;
        m2_0_load_reg_1645 <= m2_0_q1;
        m2_1_load_1_reg_1690 <= m2_1_q0;
        m2_1_load_reg_1650 <= m2_1_q1;
        m2_2_load_1_reg_1695 <= m2_2_q0;
        m2_2_load_reg_1655 <= m2_2_q1;
        m2_3_load_1_reg_1700 <= m2_3_q0;
        m2_3_load_reg_1660 <= m2_3_q1;
        m2_4_load_1_reg_1705 <= m2_4_q0;
        m2_4_load_reg_1665 <= m2_4_q1;
        m2_5_load_1_reg_1710 <= m2_5_q0;
        m2_5_load_reg_1670 <= m2_5_q1;
        m2_6_load_1_reg_1715 <= m2_6_q0;
        m2_6_load_reg_1675 <= m2_6_q1;
        m2_7_load_1_reg_1720 <= m2_7_q0;
        m2_7_load_reg_1680 <= m2_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m2_0_load_2_reg_1820 <= m2_0_q1;
        m2_0_load_3_reg_1865 <= m2_0_q0;
        m2_1_load_2_reg_1825 <= m2_1_q1;
        m2_1_load_3_reg_1870 <= m2_1_q0;
        m2_2_load_2_reg_1830 <= m2_2_q1;
        m2_2_load_3_reg_1875 <= m2_2_q0;
        m2_3_load_2_reg_1835 <= m2_3_q1;
        m2_3_load_3_reg_1880 <= m2_3_q0;
        m2_4_load_2_reg_1840 <= m2_4_q1;
        m2_4_load_3_reg_1885 <= m2_4_q0;
        m2_5_load_2_reg_1845 <= m2_5_q1;
        m2_5_load_3_reg_1890 <= m2_5_q0;
        m2_6_load_2_reg_1850 <= m2_6_q1;
        m2_6_load_3_reg_1895 <= m2_6_q0;
        m2_7_load_2_reg_1855 <= m2_7_q1;
        m2_7_load_3_reg_1900 <= m2_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_addr_reg_1935 <= p_cast_fu_1074_p1;
        prod_1_addr_reg_1940 <= p_cast_fu_1074_p1;
        prod_2_addr_reg_1945 <= p_cast_fu_1074_p1;
        prod_2_addr_reg_1945_pp0_iter1_reg <= prod_2_addr_reg_1945;
        prod_3_addr_reg_1950 <= p_cast_fu_1074_p1;
        prod_3_addr_reg_1950_pp0_iter1_reg <= prod_3_addr_reg_1950;
        prod_4_addr_reg_1955 <= p_cast_fu_1074_p1;
        prod_4_addr_reg_1955_pp0_iter1_reg <= prod_4_addr_reg_1955;
        prod_5_addr_reg_1960 <= p_cast_fu_1074_p1;
        prod_5_addr_reg_1960_pp0_iter1_reg <= prod_5_addr_reg_1960;
        prod_6_addr_reg_1965 <= p_cast_fu_1074_p1;
        prod_6_addr_reg_1965_pp0_iter1_reg <= prod_6_addr_reg_1965;
        prod_7_addr_reg_1970 <= p_cast_fu_1074_p1;
        prod_7_addr_reg_1970_pp0_iter1_reg <= prod_7_addr_reg_1970;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_707 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_712 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_717 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_722 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_727 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_732 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_737 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_742 <= grp_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_747 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_752 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_757 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_762 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        reg_767 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_772 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        reg_777 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        reg_782 <= grp_fu_699_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln21_1_reg_1810 <= select_ln21_1_fu_1020_p3;
        select_ln21_2_reg_1815 <= select_ln21_2_fu_1028_p3;
        select_ln21_3_reg_1860 <= select_ln21_3_fu_1036_p3;
        select_ln21_reg_1805 <= select_ln21_fu_1012_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        temp_x_1_reg_2000 <= temp_x_1_fu_1133_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        temp_x_2_reg_2075 <= temp_x_2_fu_1238_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        temp_x_3_reg_2120 <= temp_x_3_fu_1274_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_x_reg_1905 <= temp_x_fu_1044_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage34_11001) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        tmp_4_reg_2165 <= add_ln18_fu_1310_p2[32'd3];
    end
end
always @ (*) begin
    if (((icmp_ln17_reg_1499 == 1'd1) & (1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
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
    if (((1'b0 == ap_block_pp0_stage34_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_k_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_114;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_699_p0 = reg_782;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_699_p0 = reg_777;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_699_p0 = reg_772;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_699_p0 = reg_767;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_699_p0 = reg_762;
    end else if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_699_p0 = reg_757;
    end else if ((((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_699_p0 = reg_752;
    end else if ((((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_699_p0 = reg_747;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_699_p0 = add26_3_7173_fu_154;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_699_p0 = add26_3_6172_fu_150;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_699_p0 = add26_3_5171_fu_146;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_699_p0 = add26_3_4170_fu_142;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_699_p0 = add26_3_3169_fu_138;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_699_p0 = add26_3_2168_fu_134;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_699_p0 = add26_3_1167_fu_130;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_699_p0 = add26_3166_fu_126;
    end else begin
        grp_fu_699_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_699_p1 = reg_742;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_699_p1 = reg_737;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_699_p1 = reg_732;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_699_p1 = reg_727;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_699_p1 = reg_722;
    end else if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_699_p1 = reg_717;
    end else if ((((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_699_p1 = reg_712;
    end else if ((((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_699_p1 = reg_707;
    end else begin
        grp_fu_699_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        grp_fu_703_p0 = temp_x_3_reg_2120;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_703_p0 = temp_x_3_fu_1274_p1;
    end else if ((((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_703_p0 = temp_x_2_reg_2075;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_703_p0 = temp_x_2_fu_1238_p1;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_703_p0 = temp_x_1_reg_2000;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_703_p0 = temp_x_1_fu_1133_p1;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_703_p0 = temp_x_reg_1905;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_703_p0 = temp_x_fu_1044_p1;
    end else begin
        grp_fu_703_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage34) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
            grp_fu_703_p1 = bitcast_ln23_31_fu_1306_p1;
        end else if (((1'b0 == ap_block_pp0_stage33) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
            grp_fu_703_p1 = bitcast_ln23_30_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage32) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            grp_fu_703_p1 = bitcast_ln23_29_fu_1298_p1;
        end else if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_fu_703_p1 = bitcast_ln23_28_fu_1294_p1;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            grp_fu_703_p1 = bitcast_ln23_27_fu_1290_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            grp_fu_703_p1 = bitcast_ln23_26_fu_1286_p1;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            grp_fu_703_p1 = bitcast_ln23_25_fu_1282_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            grp_fu_703_p1 = bitcast_ln23_24_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            grp_fu_703_p1 = bitcast_ln23_23_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            grp_fu_703_p1 = bitcast_ln23_22_fu_1266_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            grp_fu_703_p1 = bitcast_ln23_21_fu_1262_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_703_p1 = bitcast_ln23_20_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_703_p1 = bitcast_ln23_19_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_703_p1 = bitcast_ln23_18_fu_1250_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_703_p1 = bitcast_ln23_17_fu_1246_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_703_p1 = bitcast_ln23_16_fu_1242_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_703_p1 = bitcast_ln23_15_fu_1234_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_703_p1 = bitcast_ln23_14_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_703_p1 = bitcast_ln23_13_fu_1222_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_703_p1 = bitcast_ln23_12_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_703_p1 = bitcast_ln23_11_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_703_p1 = bitcast_ln23_10_fu_1171_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_703_p1 = bitcast_ln23_9_fu_1154_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_703_p1 = bitcast_ln23_8_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_703_p1 = bitcast_ln23_7_fu_1116_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_703_p1 = bitcast_ln23_6_fu_1099_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_703_p1 = bitcast_ln23_5_fu_1086_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_703_p1 = bitcast_ln23_4_fu_1064_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_703_p1 = bitcast_ln23_3_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_703_p1 = bitcast_ln23_2_fu_1056_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_703_p1 = bitcast_ln23_1_fu_1052_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_703_p1 = bitcast_ln23_fu_1048_p1;
        end else begin
            grp_fu_703_p1 = 'bx;
        end
    end else begin
        grp_fu_703_p1 = 'bx;
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
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_2_ce0_local = 1'b1;
    end else begin
        m1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_3_ce0_local = 1'b1;
    end else begin
        m1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_4_ce0_local = 1'b1;
    end else begin
        m1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_5_ce0_local = 1'b1;
    end else begin
        m1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_6_ce0_local = 1'b1;
    end else begin
        m1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_7_ce0_local = 1'b1;
    end else begin
        m1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_0_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_0_address0_local = 'bx;
        end
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_0_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_0_address1_local = 'bx;
        end
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_1_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_1_address0_local = 'bx;
        end
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_1_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_1_address1_local = 'bx;
        end
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_2_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_2_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_2_address0_local = 'bx;
        end
    end else begin
        m2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_2_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_2_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_2_address1_local = 'bx;
        end
    end else begin
        m2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_2_ce1_local = 1'b1;
    end else begin
        m2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_3_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_3_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_3_address0_local = 'bx;
        end
    end else begin
        m2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_3_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_3_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_3_address1_local = 'bx;
        end
    end else begin
        m2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_3_ce1_local = 1'b1;
    end else begin
        m2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_4_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_4_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_4_address0_local = 'bx;
        end
    end else begin
        m2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_4_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_4_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_4_address1_local = 'bx;
        end
    end else begin
        m2_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_4_ce0_local = 1'b1;
    end else begin
        m2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_4_ce1_local = 1'b1;
    end else begin
        m2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_5_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_5_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_5_address0_local = 'bx;
        end
    end else begin
        m2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_5_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_5_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_5_address1_local = 'bx;
        end
    end else begin
        m2_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_5_ce0_local = 1'b1;
    end else begin
        m2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_5_ce1_local = 1'b1;
    end else begin
        m2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_6_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_6_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_6_address0_local = 'bx;
        end
    end else begin
        m2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_6_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_6_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_6_address1_local = 'bx;
        end
    end else begin
        m2_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_6_ce0_local = 1'b1;
    end else begin
        m2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_6_ce1_local = 1'b1;
    end else begin
        m2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_7_address0_local = zext_ln23_3_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_7_address0_local = zext_ln23_1_fu_890_p1;
        end else begin
            m2_7_address0_local = 'bx;
        end
    end else begin
        m2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_7_address1_local = zext_ln23_2_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_7_address1_local = zext_ln23_fu_856_p1;
        end else begin
            m2_7_address1_local = 'bx;
        end
    end else begin
        m2_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_7_ce0_local = 1'b1;
    end else begin
        m2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m2_7_ce1_local = 1'b1;
    end else begin
        m2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_address0_local = prod_0_addr_reg_1935;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_address0_local = p_cast_fu_1074_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_2_address0_local = prod_2_addr_reg_1945_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_2_address0_local = prod_2_addr_reg_1945;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_3_address0_local = prod_3_addr_reg_1950_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_3_address0_local = prod_3_addr_reg_1950;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_4_address0_local = prod_4_addr_reg_1955_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_4_address0_local = prod_4_addr_reg_1955;
    end else begin
        prod_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_4_ce0_local = 1'b1;
    end else begin
        prod_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_4_we0_local = 1'b1;
    end else begin
        prod_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_5_address0_local = prod_5_addr_reg_1960_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_5_address0_local = prod_5_addr_reg_1960;
    end else begin
        prod_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        prod_5_ce0_local = 1'b1;
    end else begin
        prod_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_5_we0_local = 1'b1;
    end else begin
        prod_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_6_address0_local = prod_6_addr_reg_1965_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_6_address0_local = prod_6_addr_reg_1965;
    end else begin
        prod_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        prod_6_ce0_local = 1'b1;
    end else begin
        prod_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_6_we0_local = 1'b1;
    end else begin
        prod_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_7_address0_local = prod_7_addr_reg_1970_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        prod_7_address0_local = prod_7_addr_reg_1970;
    end else begin
        prod_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        prod_7_ce0_local = 1'b1;
    end else begin
        prod_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_4_reg_2165 == 1'd1))) begin
        prod_7_we0_local = 1'b1;
    end else begin
        prod_7_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage14)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln17_1_fu_910_p2 = (i_fu_118 + 7'd1);
assign add_ln17_fu_811_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln18_fu_1310_p2 = (select_ln11_reg_1508 + 4'd4);
assign add_ln23_1_fu_878_p5 = {{{{indvars_iv145_udiv}, {tmp_5_fu_868_p4}}, {1'd1}}, {indvars_iv147_udiv}};
assign add_ln23_2_fu_956_p6 = {{{{{indvars_iv145_udiv}, {tmp_2_fu_946_p3}}, {1'd1}}, {trunc_ln23_fu_953_p1}}, {indvars_iv147_udiv}};
assign add_ln23_3_fu_980_p5 = {{{{indvars_iv145_udiv}, {tmp_2_fu_946_p3}}, {2'd3}}, {indvars_iv147_udiv}};
assign add_ln_fu_846_p4 = {{{indvars_iv145_udiv}, {trunc_ln20_fu_842_p1}}, {indvars_iv147_udiv}};
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage14;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_10_fu_1171_p1 = m2_2_load_1_reg_1695;
assign bitcast_ln23_11_fu_1188_p1 = m2_3_load_1_reg_1700;
assign bitcast_ln23_12_fu_1205_p1 = m2_4_load_1_reg_1705;
assign bitcast_ln23_13_fu_1222_p1 = m2_5_load_1_reg_1710;
assign bitcast_ln23_14_fu_1230_p1 = m2_6_load_1_reg_1715;
assign bitcast_ln23_15_fu_1234_p1 = m2_7_load_1_reg_1720;
assign bitcast_ln23_16_fu_1242_p1 = m2_0_load_2_reg_1820;
assign bitcast_ln23_17_fu_1246_p1 = m2_1_load_2_reg_1825;
assign bitcast_ln23_18_fu_1250_p1 = m2_2_load_2_reg_1830;
assign bitcast_ln23_19_fu_1254_p1 = m2_3_load_2_reg_1835;
assign bitcast_ln23_1_fu_1052_p1 = m2_1_load_reg_1650;
assign bitcast_ln23_20_fu_1258_p1 = m2_4_load_2_reg_1840;
assign bitcast_ln23_21_fu_1262_p1 = m2_5_load_2_reg_1845;
assign bitcast_ln23_22_fu_1266_p1 = m2_6_load_2_reg_1850;
assign bitcast_ln23_23_fu_1270_p1 = m2_7_load_2_reg_1855;
assign bitcast_ln23_24_fu_1278_p1 = m2_0_load_3_reg_1865;
assign bitcast_ln23_25_fu_1282_p1 = m2_1_load_3_reg_1870;
assign bitcast_ln23_26_fu_1286_p1 = m2_2_load_3_reg_1875;
assign bitcast_ln23_27_fu_1290_p1 = m2_3_load_3_reg_1880;
assign bitcast_ln23_28_fu_1294_p1 = m2_4_load_3_reg_1885;
assign bitcast_ln23_29_fu_1298_p1 = m2_5_load_3_reg_1890;
assign bitcast_ln23_2_fu_1056_p1 = m2_2_load_reg_1655;
assign bitcast_ln23_30_fu_1302_p1 = m2_6_load_3_reg_1895;
assign bitcast_ln23_31_fu_1306_p1 = m2_7_load_3_reg_1900;
assign bitcast_ln23_3_fu_1060_p1 = m2_3_load_reg_1660;
assign bitcast_ln23_4_fu_1064_p1 = m2_4_load_reg_1665;
assign bitcast_ln23_5_fu_1086_p1 = m2_5_load_reg_1670;
assign bitcast_ln23_6_fu_1099_p1 = m2_6_load_reg_1675;
assign bitcast_ln23_7_fu_1116_p1 = m2_7_load_reg_1680;
assign bitcast_ln23_8_fu_1137_p1 = m2_0_load_1_reg_1685;
assign bitcast_ln23_9_fu_1154_p1 = m2_1_load_1_reg_1690;
assign bitcast_ln23_fu_1048_p1 = m2_0_load_reg_1645;
assign bitcast_ln24_10_fu_1353_p1 = reg_747;
assign bitcast_ln24_11_fu_1363_p1 = reg_747;
assign bitcast_ln24_12_fu_1373_p1 = reg_747;
assign bitcast_ln24_13_fu_1383_p1 = reg_747;
assign bitcast_ln24_14_fu_1393_p1 = reg_747;
assign bitcast_ln24_15_fu_1403_p1 = reg_747;
assign bitcast_ln24_1_fu_1103_p1 = prod_1_q0;
assign bitcast_ln24_2_fu_1120_p1 = prod_2_q0;
assign bitcast_ln24_3_fu_1141_p1 = prod_3_q0;
assign bitcast_ln24_4_fu_1158_p1 = prod_4_q0;
assign bitcast_ln24_5_fu_1175_p1 = prod_5_q0;
assign bitcast_ln24_6_fu_1192_p1 = prod_6_q0;
assign bitcast_ln24_7_fu_1209_p1 = prod_7_q0;
assign bitcast_ln24_8_fu_1333_p1 = reg_747;
assign bitcast_ln24_9_fu_1343_p1 = reg_747;
assign bitcast_ln24_fu_1090_p1 = prod_0_q0;
assign empty_fu_923_p1 = select_ln17_fu_916_p3[5:0];
assign first_iter_0_fu_836_p2 = ((select_ln11_fu_828_p3 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_805_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd128) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_1007_p2 = ((select_ln11_reg_1508 == 4'd4) ? 1'b1 : 1'b0);
assign m1_0_address0 = p_cast3_fu_934_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = p_cast3_fu_934_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = p_cast3_fu_934_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = p_cast3_fu_934_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m1_4_address0 = p_cast3_fu_934_p1;
assign m1_4_ce0 = m1_4_ce0_local;
assign m1_5_address0 = p_cast3_fu_934_p1;
assign m1_5_ce0 = m1_5_ce0_local;
assign m1_6_address0 = p_cast3_fu_934_p1;
assign m1_6_ce0 = m1_6_ce0_local;
assign m1_7_address0 = p_cast3_fu_934_p1;
assign m1_7_ce0 = m1_7_ce0_local;
assign m2_0_address0 = m2_0_address0_local;
assign m2_0_address1 = m2_0_address1_local;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = m2_1_address0_local;
assign m2_1_address1 = m2_1_address1_local;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign m2_2_address0 = m2_2_address0_local;
assign m2_2_address1 = m2_2_address1_local;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_2_ce1 = m2_2_ce1_local;
assign m2_3_address0 = m2_3_address0_local;
assign m2_3_address1 = m2_3_address1_local;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_3_ce1 = m2_3_ce1_local;
assign m2_4_address0 = m2_4_address0_local;
assign m2_4_address1 = m2_4_address1_local;
assign m2_4_ce0 = m2_4_ce0_local;
assign m2_4_ce1 = m2_4_ce1_local;
assign m2_5_address0 = m2_5_address0_local;
assign m2_5_address1 = m2_5_address1_local;
assign m2_5_ce0 = m2_5_ce0_local;
assign m2_5_ce1 = m2_5_ce1_local;
assign m2_6_address0 = m2_6_address0_local;
assign m2_6_address1 = m2_6_address1_local;
assign m2_6_ce0 = m2_6_ce0_local;
assign m2_6_ce1 = m2_6_ce1_local;
assign m2_7_address0 = m2_7_address0_local;
assign m2_7_address1 = m2_7_address1_local;
assign m2_7_ce0 = m2_7_ce0_local;
assign m2_7_ce1 = m2_7_ce1_local;
assign p_cast3_fu_934_p1 = tmp_3_fu_927_p3;
assign p_cast_fu_1074_p1 = tmp_1_fu_1068_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_8_fu_1333_p1;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_addr_reg_1940;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_9_fu_1343_p1;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln24_10_fu_1353_p1;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln24_11_fu_1363_p1;
assign prod_3_we0 = prod_3_we0_local;
assign prod_4_address0 = prod_4_address0_local;
assign prod_4_ce0 = prod_4_ce0_local;
assign prod_4_d0 = bitcast_ln24_12_fu_1373_p1;
assign prod_4_we0 = prod_4_we0_local;
assign prod_5_address0 = prod_5_address0_local;
assign prod_5_ce0 = prod_5_ce0_local;
assign prod_5_d0 = bitcast_ln24_13_fu_1383_p1;
assign prod_5_we0 = prod_5_we0_local;
assign prod_6_address0 = prod_6_address0_local;
assign prod_6_ce0 = prod_6_ce0_local;
assign prod_6_d0 = bitcast_ln24_14_fu_1393_p1;
assign prod_6_we0 = prod_6_we0_local;
assign prod_7_address0 = prod_7_address0_local;
assign prod_7_ce0 = prod_7_ce0_local;
assign prod_7_d0 = bitcast_ln24_15_fu_1403_p1;
assign prod_7_we0 = prod_7_we0_local;
assign select_ln11_fu_828_p3 = ((tmp_fu_820_p3[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k_load);
assign select_ln17_fu_916_p3 = ((tmp_reg_1503[0:0] == 1'b1) ? add_ln17_1_fu_910_p2 : i_fu_118);
assign select_ln21_1_fu_1020_p3 = ((icmp_ln21_fu_1007_p2[0:0] == 1'b1) ? m1_5_q0 : m1_1_q0);
assign select_ln21_2_fu_1028_p3 = ((icmp_ln21_fu_1007_p2[0:0] == 1'b1) ? m1_6_q0 : m1_2_q0);
assign select_ln21_3_fu_1036_p3 = ((icmp_ln21_fu_1007_p2[0:0] == 1'b1) ? m1_7_q0 : m1_3_q0);
assign select_ln21_fu_1012_p3 = ((icmp_ln21_fu_1007_p2[0:0] == 1'b1) ? m1_4_q0 : m1_0_q0);
assign temp_x_1_fu_1133_p1 = select_ln21_1_reg_1810;
assign temp_x_2_fu_1238_p1 = select_ln21_2_reg_1815;
assign temp_x_3_fu_1274_p1 = select_ln21_3_reg_1860;
assign temp_x_fu_1044_p1 = select_ln21_reg_1805;
assign tmp_1_fu_1068_p3 = {{empty_reg_1600}, {indvars_iv147_udiv}};
assign tmp_2_fu_946_p3 = select_ln11_reg_1508[32'd2];
assign tmp_3_fu_927_p3 = {{empty_fu_923_p1}, {indvars_iv145_udiv}};
assign tmp_5_fu_868_p4 = {{select_ln11_fu_828_p3[2:1]}};
assign tmp_fu_820_p3 = ap_sig_allocacmp_k_load[32'd3];
assign trunc_ln20_fu_842_p1 = select_ln11_fu_828_p3[2:0];
assign trunc_ln23_fu_953_p1 = select_ln11_reg_1508[0:0];
assign zext_ln23_1_fu_890_p1 = add_ln23_1_fu_878_p5;
assign zext_ln23_2_fu_968_p1 = add_ln23_2_fu_956_p6;
assign zext_ln23_3_fu_990_p1 = add_ln23_3_fu_980_p5;
assign zext_ln23_fu_856_p1 = add_ln_fu_846_p4;
endmodule 