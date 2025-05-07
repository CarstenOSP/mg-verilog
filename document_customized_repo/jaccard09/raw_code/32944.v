module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
output   DATA_x_3_we1;
output  [63:0] DATA_x_3_d1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
output   DATA_x_2_we1;
output  [63:0] DATA_x_2_d1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [6:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_2156;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_1110_p15;
reg   [63:0] reg_1172;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_1141_p15;
reg   [63:0] reg_1178;
reg   [6:0] tid_2_reg_2147;
reg   [6:0] tid_2_reg_2147_pp0_iter1_reg;
reg   [6:0] tid_2_reg_2147_pp0_iter2_reg;
reg   [6:0] tid_2_reg_2147_pp0_iter3_reg;
reg   [6:0] tid_2_reg_2147_pp0_iter4_reg;
wire   [2:0] tmp_71_fu_1200_p4;
reg   [2:0] tmp_71_reg_2160;
wire   [8:0] offset_fu_1214_p3;
reg   [8:0] offset_reg_2165;
reg   [8:0] offset_reg_2165_pp0_iter1_reg;
reg   [8:0] offset_reg_2165_pp0_iter2_reg;
reg   [8:0] offset_reg_2165_pp0_iter3_reg;
wire   [8:0] offset_4_fu_1237_p4;
reg   [8:0] offset_4_reg_2172;
reg   [8:0] offset_4_reg_2172_pp0_iter1_reg;
reg   [8:0] offset_4_reg_2172_pp0_iter2_reg;
reg   [8:0] offset_4_reg_2172_pp0_iter3_reg;
wire   [9:0] zext_ln172_fu_1262_p1;
reg   [9:0] zext_ln172_reg_2179;
wire   [9:0] zext_ln172_21_fu_1265_p1;
reg   [9:0] zext_ln172_21_reg_2185;
reg   [6:0] tmp_72_reg_2193;
wire   [2:0] trunc_ln172_fu_1287_p1;
reg   [2:0] trunc_ln172_reg_2198;
reg   [7:0] tmp_73_reg_2210;
reg   [7:0] tmp_74_reg_2215;
reg   [7:0] tmp_75_reg_2220;
reg   [7:0] tmp_76_reg_2225;
reg   [7:0] tmp_77_reg_2230;
reg   [7:0] tmp_78_reg_2415;
reg   [7:0] tmp_79_reg_2420;
reg   [6:0] tmp_81_reg_2425;
wire   [2:0] trunc_ln172_4_fu_1427_p1;
reg   [2:0] trunc_ln172_4_reg_2430;
reg   [7:0] tmp_82_reg_2440;
reg   [7:0] tmp_83_reg_2445;
reg   [7:0] tmp_84_reg_2450;
wire   [63:0] tmp_s_fu_1458_p15;
reg   [63:0] tmp_s_reg_2455;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_21_fu_1489_p15;
reg   [63:0] tmp_21_reg_2460;
wire   [63:0] tmp_22_fu_1520_p15;
reg   [63:0] tmp_22_reg_2465;
wire   [63:0] tmp_23_fu_1551_p15;
reg   [63:0] tmp_23_reg_2470;
wire   [63:0] tmp_24_fu_1582_p15;
reg   [63:0] tmp_24_reg_2475;
wire   [63:0] tmp_25_fu_1613_p15;
reg   [63:0] tmp_25_reg_2480;
reg   [7:0] tmp_85_reg_2635;
reg   [7:0] tmp_86_reg_2640;
reg   [7:0] tmp_87_reg_2645;
reg   [7:0] tmp_88_reg_2650;
wire   [63:0] zext_ln314_fu_1733_p1;
reg   [63:0] zext_ln314_reg_2655;
wire   [63:0] zext_ln315_2_fu_1748_p1;
reg   [63:0] zext_ln315_2_reg_2660;
wire   [63:0] tmp_26_fu_1755_p15;
reg   [63:0] tmp_26_reg_2665;
wire   [63:0] tmp_27_fu_1786_p15;
reg   [63:0] tmp_27_reg_2670;
reg   [4:0] tmp_29_reg_2675;
wire   [63:0] tmp_32_fu_1835_p15;
reg   [63:0] tmp_32_reg_2711;
wire   [63:0] zext_ln314_1_fu_1909_p1;
reg   [63:0] zext_ln314_1_reg_2836;
wire   [63:0] zext_ln315_3_fu_1921_p1;
reg   [63:0] zext_ln315_3_reg_2843;
wire   [63:0] tmp_33_fu_1927_p15;
reg   [63:0] tmp_33_reg_2849;
wire   [63:0] tmp_35_fu_1958_p15;
reg   [63:0] tmp_35_reg_2854;
wire   [63:0] tmp_36_fu_1989_p15;
reg   [63:0] tmp_36_reg_2859;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_14_fu_1336_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_1345_p1;
wire   [63:0] zext_ln316_fu_1354_p1;
wire   [63:0] zext_ln317_fu_1363_p1;
wire   [63:0] zext_ln318_fu_1372_p1;
wire   [63:0] zext_ln319_fu_1381_p1;
wire   [63:0] zext_ln320_fu_1644_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln321_fu_1653_p1;
wire   [63:0] zext_ln172_15_fu_1662_p1;
wire   [63:0] zext_ln315_1_fu_1671_p1;
wire   [63:0] zext_ln317_1_fu_1680_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln316_1_fu_1826_p1;
wire   [63:0] zext_ln318_1_fu_1866_p1;
wire   [63:0] zext_ln319_1_fu_1875_p1;
wire   [63:0] zext_ln320_1_fu_1884_p1;
wire   [63:0] zext_ln321_1_fu_1893_p1;
reg   [6:0] tid_fu_120;
wire   [6:0] add_ln309_fu_1252_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_we1_local;
reg   [63:0] DATA_x_2_d1_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_we0_local;
reg   [63:0] DATA_x_2_d0_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_we1_local;
reg   [63:0] DATA_x_3_d1_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_we0_local;
reg   [63:0] DATA_x_3_d0_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
wire   [63:0] grp_fu_1110_p13;
wire   [63:0] grp_fu_1141_p13;
wire   [5:0] trunc_ln312_fu_1210_p1;
wire   [8:0] grp_fu_1222_p0;
wire   [3:0] grp_fu_1222_p1;
wire   [4:0] tmp_80_fu_1228_p4;
wire   [8:0] grp_fu_1246_p0;
wire   [3:0] grp_fu_1246_p1;
wire   [8:0] mul_ln172_fu_1271_p0;
wire   [10:0] mul_ln172_fu_1271_p1;
wire   [18:0] mul_ln172_fu_1271_p2;
wire   [2:0] grp_fu_1222_p2;
wire   [20:0] tmp_73_fu_1291_p1;
wire  signed [20:0] grp_fu_2020_p3;
wire   [20:0] tmp_74_fu_1300_p1;
wire  signed [20:0] grp_fu_2029_p3;
wire   [20:0] tmp_75_fu_1309_p1;
wire  signed [20:0] grp_fu_2038_p3;
wire   [20:0] tmp_76_fu_1318_p1;
wire  signed [20:0] grp_fu_2047_p3;
wire   [20:0] tmp_77_fu_1327_p1;
wire  signed [20:0] grp_fu_2056_p3;
wire   [20:0] tmp_78_fu_1390_p1;
wire  signed [20:0] grp_fu_2065_p3;
wire   [20:0] tmp_79_fu_1399_p1;
wire  signed [20:0] grp_fu_2073_p3;
wire   [8:0] mul_ln172_4_fu_1411_p0;
wire   [10:0] mul_ln172_4_fu_1411_p1;
wire   [18:0] mul_ln172_4_fu_1411_p2;
wire   [2:0] grp_fu_1246_p2;
wire   [20:0] tmp_82_fu_1431_p1;
wire  signed [20:0] grp_fu_2081_p3;
wire   [20:0] tmp_83_fu_1440_p1;
wire  signed [20:0] grp_fu_2090_p3;
wire   [20:0] tmp_84_fu_1449_p1;
wire  signed [20:0] grp_fu_2099_p3;
wire   [63:0] tmp_s_fu_1458_p13;
wire   [63:0] tmp_21_fu_1489_p13;
wire   [63:0] tmp_22_fu_1520_p13;
wire   [63:0] tmp_23_fu_1551_p13;
wire   [63:0] tmp_24_fu_1582_p13;
wire   [63:0] tmp_25_fu_1613_p13;
wire   [20:0] tmp_85_fu_1689_p1;
wire  signed [20:0] grp_fu_2108_p3;
wire   [20:0] tmp_86_fu_1698_p1;
wire  signed [20:0] grp_fu_2116_p3;
wire   [20:0] tmp_87_fu_1707_p1;
wire  signed [20:0] grp_fu_2124_p3;
wire   [20:0] tmp_88_fu_1716_p1;
wire  signed [20:0] grp_fu_2132_p3;
wire   [6:0] shl_ln314_fu_1728_p2;
wire   [5:0] trunc_ln314_fu_1725_p1;
wire   [6:0] or_ln_fu_1740_p3;
wire   [63:0] tmp_26_fu_1755_p13;
wire   [63:0] tmp_27_fu_1786_p13;
wire   [63:0] tmp_32_fu_1835_p13;
wire   [6:0] or_ln2_fu_1902_p3;
wire   [6:0] or_ln315_1_fu_1914_p3;
wire   [63:0] tmp_33_fu_1927_p13;
wire   [63:0] tmp_35_fu_1958_p13;
wire   [63:0] tmp_36_fu_1989_p13;
wire   [8:0] grp_fu_2020_p0;
wire   [5:0] grp_fu_2020_p1;
wire   [10:0] grp_fu_2020_p2;
wire   [8:0] grp_fu_2029_p0;
wire   [3:0] grp_fu_2029_p1;
wire   [10:0] grp_fu_2029_p2;
wire   [8:0] grp_fu_2038_p0;
wire   [5:0] grp_fu_2038_p1;
wire   [10:0] grp_fu_2038_p2;
wire   [8:0] grp_fu_2047_p0;
wire   [4:0] grp_fu_2047_p1;
wire   [10:0] grp_fu_2047_p2;
wire   [8:0] grp_fu_2056_p0;
wire   [5:0] grp_fu_2056_p1;
wire   [10:0] grp_fu_2056_p2;
wire   [8:0] grp_fu_2065_p0;
wire   [4:0] grp_fu_2065_p1;
wire   [10:0] grp_fu_2065_p2;
wire   [8:0] grp_fu_2073_p0;
wire   [5:0] grp_fu_2073_p1;
wire   [10:0] grp_fu_2073_p2;
wire   [8:0] grp_fu_2081_p0;
wire   [5:0] grp_fu_2081_p1;
wire   [10:0] grp_fu_2081_p2;
wire   [8:0] grp_fu_2090_p0;
wire   [3:0] grp_fu_2090_p1;
wire   [10:0] grp_fu_2090_p2;
wire   [8:0] grp_fu_2099_p0;
wire   [5:0] grp_fu_2099_p1;
wire   [10:0] grp_fu_2099_p2;
wire   [8:0] grp_fu_2108_p0;
wire   [4:0] grp_fu_2108_p1;
wire   [10:0] grp_fu_2108_p2;
wire   [8:0] grp_fu_2116_p0;
wire   [5:0] grp_fu_2116_p1;
wire   [10:0] grp_fu_2116_p2;
wire   [8:0] grp_fu_2124_p0;
wire   [4:0] grp_fu_2124_p1;
wire   [10:0] grp_fu_2124_p2;
wire   [8:0] grp_fu_2132_p0;
wire   [5:0] grp_fu_2132_p1;
wire   [10:0] grp_fu_2132_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_4_fu_1411_p00;
wire   [18:0] mul_ln172_fu_1271_p00;
wire   [2:0] grp_fu_1110_p1;
wire   [2:0] grp_fu_1110_p3;
wire   [2:0] grp_fu_1110_p5;
wire   [2:0] grp_fu_1110_p7;
wire  signed [2:0] grp_fu_1110_p9;
wire  signed [2:0] grp_fu_1110_p11;
wire  signed [2:0] grp_fu_1141_p1;
wire  signed [2:0] grp_fu_1141_p3;
wire   [2:0] grp_fu_1141_p5;
wire   [2:0] grp_fu_1141_p7;
wire   [2:0] grp_fu_1141_p9;
wire   [2:0] grp_fu_1141_p11;
wire   [2:0] tmp_s_fu_1458_p1;
wire   [2:0] tmp_s_fu_1458_p3;
wire   [2:0] tmp_s_fu_1458_p5;
wire   [2:0] tmp_s_fu_1458_p7;
wire  signed [2:0] tmp_s_fu_1458_p9;
wire  signed [2:0] tmp_s_fu_1458_p11;
wire  signed [2:0] tmp_21_fu_1489_p1;
wire  signed [2:0] tmp_21_fu_1489_p3;
wire   [2:0] tmp_21_fu_1489_p5;
wire   [2:0] tmp_21_fu_1489_p7;
wire   [2:0] tmp_21_fu_1489_p9;
wire   [2:0] tmp_21_fu_1489_p11;
wire  signed [2:0] tmp_22_fu_1520_p1;
wire  signed [2:0] tmp_22_fu_1520_p3;
wire   [2:0] tmp_22_fu_1520_p5;
wire   [2:0] tmp_22_fu_1520_p7;
wire   [2:0] tmp_22_fu_1520_p9;
wire   [2:0] tmp_22_fu_1520_p11;
wire   [2:0] tmp_23_fu_1551_p1;
wire   [2:0] tmp_23_fu_1551_p3;
wire  signed [2:0] tmp_23_fu_1551_p5;
wire  signed [2:0] tmp_23_fu_1551_p7;
wire   [2:0] tmp_23_fu_1551_p9;
wire   [2:0] tmp_23_fu_1551_p11;
wire   [2:0] tmp_24_fu_1582_p1;
wire   [2:0] tmp_24_fu_1582_p3;
wire  signed [2:0] tmp_24_fu_1582_p5;
wire  signed [2:0] tmp_24_fu_1582_p7;
wire   [2:0] tmp_24_fu_1582_p9;
wire   [2:0] tmp_24_fu_1582_p11;
wire   [2:0] tmp_25_fu_1613_p1;
wire   [2:0] tmp_25_fu_1613_p3;
wire   [2:0] tmp_25_fu_1613_p5;
wire   [2:0] tmp_25_fu_1613_p7;
wire  signed [2:0] tmp_25_fu_1613_p9;
wire  signed [2:0] tmp_25_fu_1613_p11;
wire   [2:0] tmp_26_fu_1755_p1;
wire   [2:0] tmp_26_fu_1755_p3;
wire   [2:0] tmp_26_fu_1755_p5;
wire   [2:0] tmp_26_fu_1755_p7;
wire  signed [2:0] tmp_26_fu_1755_p9;
wire  signed [2:0] tmp_26_fu_1755_p11;
wire  signed [2:0] tmp_27_fu_1786_p1;
wire  signed [2:0] tmp_27_fu_1786_p3;
wire   [2:0] tmp_27_fu_1786_p5;
wire   [2:0] tmp_27_fu_1786_p7;
wire   [2:0] tmp_27_fu_1786_p9;
wire   [2:0] tmp_27_fu_1786_p11;
wire   [2:0] tmp_32_fu_1835_p1;
wire   [2:0] tmp_32_fu_1835_p3;
wire  signed [2:0] tmp_32_fu_1835_p5;
wire  signed [2:0] tmp_32_fu_1835_p7;
wire   [2:0] tmp_32_fu_1835_p9;
wire   [2:0] tmp_32_fu_1835_p11;
wire   [2:0] tmp_33_fu_1927_p1;
wire   [2:0] tmp_33_fu_1927_p3;
wire  signed [2:0] tmp_33_fu_1927_p5;
wire  signed [2:0] tmp_33_fu_1927_p7;
wire   [2:0] tmp_33_fu_1927_p9;
wire   [2:0] tmp_33_fu_1927_p11;
wire   [2:0] tmp_35_fu_1958_p1;
wire   [2:0] tmp_35_fu_1958_p3;
wire   [2:0] tmp_35_fu_1958_p5;
wire   [2:0] tmp_35_fu_1958_p7;
wire  signed [2:0] tmp_35_fu_1958_p9;
wire  signed [2:0] tmp_35_fu_1958_p11;
wire  signed [2:0] tmp_36_fu_1989_p1;
wire  signed [2:0] tmp_36_fu_1989_p3;
wire   [2:0] tmp_36_fu_1989_p5;
wire   [2:0] tmp_36_fu_1989_p7;
wire   [2:0] tmp_36_fu_1989_p9;
wire   [2:0] tmp_36_fu_1989_p11;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_120 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U463(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_1110_p13),.sel(trunc_ln172_4_reg_2430),.dout(grp_fu_1110_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U464(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_1141_p13),.sel(trunc_ln172_4_reg_2430),.dout(grp_fu_1141_p15));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U465(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1222_p0),.din1(grp_fu_1222_p1),.ce(1'b1),.dout(grp_fu_1222_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U466(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1246_p0),.din1(grp_fu_1246_p1),.ce(1'b1),.dout(grp_fu_1246_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U467(.din0(mul_ln172_fu_1271_p0),.din1(mul_ln172_fu_1271_p1),.dout(mul_ln172_fu_1271_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U468(.din0(mul_ln172_4_fu_1411_p0),.din1(mul_ln172_4_fu_1411_p1),.dout(mul_ln172_4_fu_1411_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U469(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_s_fu_1458_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_s_fu_1458_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U470(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_21_fu_1489_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_21_fu_1489_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U471(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_22_fu_1520_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_22_fu_1520_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U472(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_23_fu_1551_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_23_fu_1551_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U473(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_24_fu_1582_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_24_fu_1582_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U474(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_25_fu_1613_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_25_fu_1613_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U475(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_26_fu_1755_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_26_fu_1755_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U476(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_27_fu_1786_p13),.sel(trunc_ln172_reg_2198),.dout(tmp_27_fu_1786_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U477(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_32_fu_1835_p13),.sel(trunc_ln172_4_reg_2430),.dout(tmp_32_fu_1835_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U478(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_33_fu_1927_p13),.sel(trunc_ln172_4_reg_2430),.dout(tmp_33_fu_1927_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U479(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_35_fu_1958_p13),.sel(trunc_ln172_4_reg_2430),.dout(tmp_35_fu_1958_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U480(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_36_fu_1989_p13),.sel(trunc_ln172_4_reg_2430),.dout(tmp_36_fu_1989_p15));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U481(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2020_p0),.din1(grp_fu_2020_p1),.din2(grp_fu_2020_p2),.ce(1'b1),.dout(grp_fu_2020_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U482(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2029_p0),.din1(grp_fu_2029_p1),.din2(grp_fu_2029_p2),.ce(1'b1),.dout(grp_fu_2029_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U483(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2038_p0),.din1(grp_fu_2038_p1),.din2(grp_fu_2038_p2),.ce(1'b1),.dout(grp_fu_2038_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U484(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2047_p0),.din1(grp_fu_2047_p1),.din2(grp_fu_2047_p2),.ce(1'b1),.dout(grp_fu_2047_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U485(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2056_p0),.din1(grp_fu_2056_p1),.din2(grp_fu_2056_p2),.ce(1'b1),.dout(grp_fu_2056_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U486(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2065_p0),.din1(grp_fu_2065_p1),.din2(grp_fu_2065_p2),.ce(1'b1),.dout(grp_fu_2065_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U487(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2073_p0),.din1(grp_fu_2073_p1),.din2(grp_fu_2073_p2),.ce(1'b1),.dout(grp_fu_2073_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U488(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2081_p0),.din1(grp_fu_2081_p1),.din2(grp_fu_2081_p2),.ce(1'b1),.dout(grp_fu_2081_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U489(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2090_p0),.din1(grp_fu_2090_p1),.din2(grp_fu_2090_p2),.ce(1'b1),.dout(grp_fu_2090_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U490(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2099_p0),.din1(grp_fu_2099_p1),.din2(grp_fu_2099_p2),.ce(1'b1),.dout(grp_fu_2099_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U491(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2108_p0),.din1(grp_fu_2108_p1),.din2(grp_fu_2108_p2),.ce(1'b1),.dout(grp_fu_2108_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U492(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2116_p0),.din1(grp_fu_2116_p1),.din2(grp_fu_2116_p2),.ce(1'b1),.dout(grp_fu_2116_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U493(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2124_p0),.din1(grp_fu_2124_p1),.din2(grp_fu_2124_p2),.ce(1'b1),.dout(grp_fu_2124_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U494(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2132_p0),.din1(grp_fu_2132_p1),.din2(grp_fu_2132_p2),.ce(1'b1),.dout(grp_fu_2132_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_120 <= 7'd0;
    end else if (((tmp_reg_2156 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tid_fu_120 <= add_ln309_fu_1252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        tmp_21_reg_2460 <= tmp_21_fu_1489_p15;
        tmp_22_reg_2465 <= tmp_22_fu_1520_p15;
        tmp_23_reg_2470 <= tmp_23_fu_1551_p15;
        tmp_24_reg_2475 <= tmp_24_fu_1582_p15;
        tmp_25_reg_2480 <= tmp_25_fu_1613_p15;
        tmp_85_reg_2635 <= {{tmp_85_fu_1689_p1[20:13]}};
        tmp_86_reg_2640 <= {{tmp_86_fu_1698_p1[20:13]}};
        tmp_87_reg_2645 <= {{tmp_87_fu_1707_p1[20:13]}};
        tmp_88_reg_2650 <= {{tmp_88_fu_1716_p1[20:13]}};
        tmp_s_reg_2455 <= tmp_s_fu_1458_p15;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_4_reg_2172[8 : 1] <= offset_4_fu_1237_p4[8 : 1];
        offset_4_reg_2172_pp0_iter1_reg[8 : 1] <= offset_4_reg_2172[8 : 1];
        offset_4_reg_2172_pp0_iter2_reg[8 : 1] <= offset_4_reg_2172_pp0_iter1_reg[8 : 1];
        offset_4_reg_2172_pp0_iter3_reg[8 : 1] <= offset_4_reg_2172_pp0_iter2_reg[8 : 1];
        tmp_33_reg_2849 <= tmp_33_fu_1927_p15;
        tmp_35_reg_2854 <= tmp_35_fu_1958_p15;
        tmp_36_reg_2859 <= tmp_36_fu_1989_p15;
        tmp_78_reg_2415 <= {{tmp_78_fu_1390_p1[20:13]}};
        tmp_79_reg_2420 <= {{tmp_79_fu_1399_p1[20:13]}};
        tmp_81_reg_2425 <= {{mul_ln172_4_fu_1411_p2[18:12]}};
        tmp_82_reg_2440 <= {{tmp_82_fu_1431_p1[20:13]}};
        tmp_83_reg_2445 <= {{tmp_83_fu_1440_p1[20:13]}};
        tmp_84_reg_2450 <= {{tmp_84_fu_1449_p1[20:13]}};
        trunc_ln172_4_reg_2430 <= trunc_ln172_4_fu_1427_p1;
        zext_ln172_21_reg_2185[8 : 1] <= zext_ln172_21_fu_1265_p1[8 : 1];
        zext_ln314_1_reg_2836[6 : 2] <= zext_ln314_1_fu_1909_p1[6 : 2];
        zext_ln315_3_reg_2843[6 : 2] <= zext_ln315_3_fu_1921_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_2165 <= offset_fu_1214_p3;
        offset_reg_2165_pp0_iter1_reg <= offset_reg_2165;
        offset_reg_2165_pp0_iter2_reg <= offset_reg_2165_pp0_iter1_reg;
        offset_reg_2165_pp0_iter3_reg <= offset_reg_2165_pp0_iter2_reg;
        tid_2_reg_2147 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_2147_pp0_iter1_reg <= tid_2_reg_2147;
        tid_2_reg_2147_pp0_iter2_reg <= tid_2_reg_2147_pp0_iter1_reg;
        tid_2_reg_2147_pp0_iter3_reg <= tid_2_reg_2147_pp0_iter2_reg;
        tid_2_reg_2147_pp0_iter4_reg <= tid_2_reg_2147_pp0_iter3_reg;
        tmp_26_reg_2665 <= tmp_26_fu_1755_p15;
        tmp_27_reg_2670 <= tmp_27_fu_1786_p15;
        tmp_29_reg_2675 <= {{tid_2_reg_2147_pp0_iter4_reg[5:1]}};
        tmp_32_reg_2711 <= tmp_32_fu_1835_p15;
        tmp_71_reg_2160 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_72_reg_2193 <= {{mul_ln172_fu_1271_p2[18:12]}};
        tmp_73_reg_2210 <= {{tmp_73_fu_1291_p1[20:13]}};
        tmp_74_reg_2215 <= {{tmp_74_fu_1300_p1[20:13]}};
        tmp_75_reg_2220 <= {{tmp_75_fu_1309_p1[20:13]}};
        tmp_76_reg_2225 <= {{tmp_76_fu_1318_p1[20:13]}};
        tmp_77_reg_2230 <= {{tmp_77_fu_1327_p1[20:13]}};
        tmp_reg_2156 <= ap_sig_allocacmp_tid_2[32'd6];
        trunc_ln172_reg_2198 <= trunc_ln172_fu_1287_p1;
        zext_ln172_reg_2179[8 : 0] <= zext_ln172_fu_1262_p1[8 : 0];
        zext_ln314_reg_2655[6 : 1] <= zext_ln314_fu_1733_p1[6 : 1];
        zext_ln315_2_reg_2660[6 : 1] <= zext_ln315_2_fu_1748_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1172 <= grp_fu_1110_p15;
        reg_1178 <= grp_fu_1141_p15;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln315_3_fu_1921_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln315_2_fu_1748_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln314_1_reg_2836;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln314_fu_1733_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_d0_local = tmp_32_reg_2711;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_d0_local = tmp_23_reg_2470;
        end else begin
            DATA_x_1_d0_local = 'bx;
        end
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_d1_local = reg_1178;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_d1_local = tmp_22_reg_2465;
        end else begin
            DATA_x_1_d1_local = 'bx;
        end
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_address0_local = zext_ln315_3_reg_2843;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln315_2_fu_1748_p1;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_address1_local = zext_ln314_1_reg_2836;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln314_fu_1733_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_d0_local = reg_1172;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_d0_local = tmp_25_reg_2480;
        end else begin
            DATA_x_2_d0_local = 'bx;
        end
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_d1_local = tmp_33_reg_2849;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_d1_local = tmp_24_reg_2475;
        end else begin
            DATA_x_2_d1_local = 'bx;
        end
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address0_local = zext_ln315_3_reg_2843;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln315_2_reg_2660;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address1_local = zext_ln314_1_reg_2836;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln314_reg_2655;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_d0_local = tmp_36_reg_2859;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_d0_local = tmp_27_reg_2670;
        end else begin
            DATA_x_3_d0_local = 'bx;
        end
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_d1_local = tmp_35_reg_2854;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_d1_local = tmp_26_reg_2665;
        end else begin
            DATA_x_3_d1_local = 'bx;
        end
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln315_3_fu_1921_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln315_2_fu_1748_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln314_1_fu_1909_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln314_fu_1733_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_d0_local = reg_1178;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_d0_local = tmp_21_reg_2460;
        end else begin
            DATA_x_d0_local = 'bx;
        end
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_d1_local = reg_1172;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_d1_local = tmp_s_reg_2455;
        end else begin
            DATA_x_d1_local = 'bx;
        end
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2156 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_1_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_1_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln321_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln320_fu_1644_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln317_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln315_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_14_fu_1336_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln319_1_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln316_1_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln317_1_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln315_1_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_15_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln319_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln318_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln316_fu_1354_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_1_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_1_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln321_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln320_fu_1644_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln317_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln315_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_14_fu_1336_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln319_1_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln316_1_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln317_1_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln315_1_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_15_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln319_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln318_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln316_fu_1354_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_1_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_1_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln321_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln320_fu_1644_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln317_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln315_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_14_fu_1336_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln319_1_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln316_1_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln317_1_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln315_1_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln172_15_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln319_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln318_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln316_fu_1354_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_1_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_1_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln321_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln320_fu_1644_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln317_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln315_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_14_fu_1336_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln319_1_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln316_1_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln317_1_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln315_1_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln172_15_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln319_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln318_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln316_fu_1354_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_1_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_1_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln321_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln320_fu_1644_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln317_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln315_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_14_fu_1336_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln319_1_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln316_1_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln317_1_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln315_1_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln172_15_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln319_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln318_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln316_fu_1354_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_1_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_1_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln321_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln320_fu_1644_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln317_fu_1363_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln315_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_14_fu_1336_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln319_1_fu_1875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln316_1_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln317_1_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln315_1_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_15_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln319_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln318_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln316_fu_1354_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2198 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_4_reg_2430 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1252_p2 = (tid_2_reg_2147 + 7'd2);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_1110_p13 = 'bx;
assign grp_fu_1141_p13 = 'bx;
assign grp_fu_1222_p0 = {{tmp_71_fu_1200_p4}, {trunc_ln312_fu_1210_p1}};
assign grp_fu_1222_p1 = 9'd6;
assign grp_fu_1246_p0 = {{{tmp_71_reg_2160}, {tmp_80_fu_1228_p4}}, {1'd1}};
assign grp_fu_1246_p1 = 9'd6;
assign grp_fu_2020_p0 = zext_ln172_fu_1262_p1;
assign grp_fu_2020_p1 = 10'd32;
assign grp_fu_2020_p2 = 21'd1366;
assign grp_fu_2029_p0 = zext_ln172_fu_1262_p1;
assign grp_fu_2029_p1 = 10'd8;
assign grp_fu_2029_p2 = 21'd1366;
assign grp_fu_2038_p0 = zext_ln172_fu_1262_p1;
assign grp_fu_2038_p1 = 10'd40;
assign grp_fu_2038_p2 = 21'd1366;
assign grp_fu_2047_p0 = zext_ln172_fu_1262_p1;
assign grp_fu_2047_p1 = 10'd16;
assign grp_fu_2047_p2 = 21'd1366;
assign grp_fu_2056_p0 = zext_ln172_fu_1262_p1;
assign grp_fu_2056_p1 = 10'd48;
assign grp_fu_2056_p2 = 21'd1366;
assign grp_fu_2065_p0 = zext_ln172_reg_2179;
assign grp_fu_2065_p1 = 10'd24;
assign grp_fu_2065_p2 = 21'd1366;
assign grp_fu_2073_p0 = zext_ln172_reg_2179;
assign grp_fu_2073_p1 = 10'd56;
assign grp_fu_2073_p2 = 21'd1366;
assign grp_fu_2081_p0 = zext_ln172_21_fu_1265_p1;
assign grp_fu_2081_p1 = 10'd32;
assign grp_fu_2081_p2 = 21'd1366;
assign grp_fu_2090_p0 = zext_ln172_21_fu_1265_p1;
assign grp_fu_2090_p1 = 10'd8;
assign grp_fu_2090_p2 = 21'd1366;
assign grp_fu_2099_p0 = zext_ln172_21_fu_1265_p1;
assign grp_fu_2099_p1 = 10'd40;
assign grp_fu_2099_p2 = 21'd1366;
assign grp_fu_2108_p0 = zext_ln172_21_reg_2185;
assign grp_fu_2108_p1 = 10'd16;
assign grp_fu_2108_p2 = 21'd1366;
assign grp_fu_2116_p0 = zext_ln172_21_reg_2185;
assign grp_fu_2116_p1 = 10'd48;
assign grp_fu_2116_p2 = 21'd1366;
assign grp_fu_2124_p0 = zext_ln172_21_reg_2185;
assign grp_fu_2124_p1 = 10'd24;
assign grp_fu_2124_p2 = 21'd1366;
assign grp_fu_2132_p0 = zext_ln172_21_reg_2185;
assign grp_fu_2132_p1 = 10'd56;
assign grp_fu_2132_p2 = 21'd1366;
assign mul_ln172_4_fu_1411_p0 = mul_ln172_4_fu_1411_p00;
assign mul_ln172_4_fu_1411_p00 = offset_4_reg_2172_pp0_iter3_reg;
assign mul_ln172_4_fu_1411_p1 = 19'd683;
assign mul_ln172_fu_1271_p0 = mul_ln172_fu_1271_p00;
assign mul_ln172_fu_1271_p00 = offset_reg_2165_pp0_iter3_reg;
assign mul_ln172_fu_1271_p1 = 19'd683;
assign offset_4_fu_1237_p4 = {{{tmp_71_reg_2160}, {tmp_80_fu_1228_p4}}, {1'd1}};
assign offset_fu_1214_p3 = {{tmp_71_fu_1200_p4}, {trunc_ln312_fu_1210_p1}};
assign or_ln2_fu_1902_p3 = {{tmp_29_reg_2675}, {2'd2}};
assign or_ln315_1_fu_1914_p3 = {{tmp_29_reg_2675}, {2'd3}};
assign or_ln_fu_1740_p3 = {{trunc_ln314_fu_1725_p1}, {1'd1}};
assign shl_ln314_fu_1728_p2 = tid_2_reg_2147_pp0_iter4_reg << 7'd1;
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_21_fu_1489_p13 = 'bx;
assign tmp_22_fu_1520_p13 = 'bx;
assign tmp_23_fu_1551_p13 = 'bx;
assign tmp_24_fu_1582_p13 = 'bx;
assign tmp_25_fu_1613_p13 = 'bx;
assign tmp_26_fu_1755_p13 = 'bx;
assign tmp_27_fu_1786_p13 = 'bx;
assign tmp_32_fu_1835_p13 = 'bx;
assign tmp_33_fu_1927_p13 = 'bx;
assign tmp_35_fu_1958_p13 = 'bx;
assign tmp_36_fu_1989_p13 = 'bx;
assign tmp_71_fu_1200_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_73_fu_1291_p1 = grp_fu_2020_p3;
assign tmp_74_fu_1300_p1 = grp_fu_2029_p3;
assign tmp_75_fu_1309_p1 = grp_fu_2038_p3;
assign tmp_76_fu_1318_p1 = grp_fu_2047_p3;
assign tmp_77_fu_1327_p1 = grp_fu_2056_p3;
assign tmp_78_fu_1390_p1 = grp_fu_2065_p3;
assign tmp_79_fu_1399_p1 = grp_fu_2073_p3;
assign tmp_80_fu_1228_p4 = {{tid_2_reg_2147[5:1]}};
assign tmp_82_fu_1431_p1 = grp_fu_2081_p3;
assign tmp_83_fu_1440_p1 = grp_fu_2090_p3;
assign tmp_84_fu_1449_p1 = grp_fu_2099_p3;
assign tmp_85_fu_1689_p1 = grp_fu_2108_p3;
assign tmp_86_fu_1698_p1 = grp_fu_2116_p3;
assign tmp_87_fu_1707_p1 = grp_fu_2124_p3;
assign tmp_88_fu_1716_p1 = grp_fu_2132_p3;
assign tmp_s_fu_1458_p13 = 'bx;
assign trunc_ln172_4_fu_1427_p1 = grp_fu_1246_p2[2:0];
assign trunc_ln172_fu_1287_p1 = grp_fu_1222_p2[2:0];
assign trunc_ln312_fu_1210_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_1725_p1 = tid_2_reg_2147_pp0_iter4_reg[5:0];
assign zext_ln172_14_fu_1336_p1 = tmp_72_reg_2193;
assign zext_ln172_15_fu_1662_p1 = tmp_81_reg_2425;
assign zext_ln172_21_fu_1265_p1 = offset_4_reg_2172_pp0_iter2_reg;
assign zext_ln172_fu_1262_p1 = offset_reg_2165_pp0_iter2_reg;
assign zext_ln314_1_fu_1909_p1 = or_ln2_fu_1902_p3;
assign zext_ln314_fu_1733_p1 = shl_ln314_fu_1728_p2;
assign zext_ln315_1_fu_1671_p1 = tmp_82_reg_2440;
assign zext_ln315_2_fu_1748_p1 = or_ln_fu_1740_p3;
assign zext_ln315_3_fu_1921_p1 = or_ln315_1_fu_1914_p3;
assign zext_ln315_fu_1345_p1 = tmp_73_reg_2210;
assign zext_ln316_1_fu_1826_p1 = tmp_83_reg_2445;
assign zext_ln316_fu_1354_p1 = tmp_74_reg_2215;
assign zext_ln317_1_fu_1680_p1 = tmp_84_reg_2450;
assign zext_ln317_fu_1363_p1 = tmp_75_reg_2220;
assign zext_ln318_1_fu_1866_p1 = tmp_85_reg_2635;
assign zext_ln318_fu_1372_p1 = tmp_76_reg_2225;
assign zext_ln319_1_fu_1875_p1 = tmp_86_reg_2640;
assign zext_ln319_fu_1381_p1 = tmp_77_reg_2230;
assign zext_ln320_1_fu_1884_p1 = tmp_87_reg_2645;
assign zext_ln320_fu_1644_p1 = tmp_78_reg_2415;
assign zext_ln321_1_fu_1893_p1 = tmp_88_reg_2650;
assign zext_ln321_fu_1653_p1 = tmp_79_reg_2420;
always @ (posedge ap_clk) begin
    offset_4_reg_2172[0] <= 1'b1;
    offset_4_reg_2172_pp0_iter1_reg[0] <= 1'b1;
    offset_4_reg_2172_pp0_iter2_reg[0] <= 1'b1;
    offset_4_reg_2172_pp0_iter3_reg[0] <= 1'b1;
    zext_ln172_reg_2179[9] <= 1'b0;
    zext_ln172_21_reg_2185[0] <= 1'b1;
    zext_ln172_21_reg_2185[9] <= 1'b0;
    zext_ln314_reg_2655[0] <= 1'b0;
    zext_ln314_reg_2655[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln315_2_reg_2660[0] <= 1'b1;
    zext_ln315_2_reg_2660[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln314_1_reg_2836[1:0] <= 2'b10;
    zext_ln314_1_reg_2836[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln315_3_reg_2843[1:0] <= 2'b11;
    zext_ln315_3_reg_2843[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 