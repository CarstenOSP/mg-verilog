
module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [6:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_2530;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_2521;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_2521_pp0_iter1_reg;
reg   [6:0] tid_reg_2521_pp0_iter2_reg;
reg   [6:0] tid_reg_2521_pp0_iter3_reg;
reg   [6:0] tid_reg_2521_pp0_iter4_reg;
reg   [6:0] tid_reg_2521_pp0_iter5_reg;
reg   [6:0] tid_reg_2521_pp0_iter6_reg;
reg   [6:0] tid_reg_2521_pp0_iter7_reg;
reg   [0:0] tmp_reg_2530_pp0_iter1_reg;
reg   [0:0] tmp_reg_2530_pp0_iter2_reg;
reg   [0:0] tmp_reg_2530_pp0_iter3_reg;
reg   [0:0] tmp_reg_2530_pp0_iter4_reg;
reg   [0:0] tmp_reg_2530_pp0_iter5_reg;
reg   [0:0] tmp_reg_2530_pp0_iter6_reg;
wire   [8:0] zext_ln114_fu_1285_p1;
reg   [8:0] zext_ln114_reg_2534;
wire   [8:0] offset_fu_1305_p2;
reg   [8:0] offset_reg_2539;
reg   [8:0] offset_reg_2539_pp0_iter1_reg;
reg   [8:0] offset_reg_2539_pp0_iter2_reg;
reg   [8:0] offset_reg_2539_pp0_iter3_reg;
reg   [8:0] offset_reg_2539_pp0_iter4_reg;
reg   [8:0] offset_reg_2539_pp0_iter5_reg;
wire   [8:0] offset_2_fu_1338_p2;
reg   [8:0] offset_2_reg_2551;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_2_reg_2551_pp0_iter1_reg;
reg   [8:0] offset_2_reg_2551_pp0_iter2_reg;
reg   [8:0] offset_2_reg_2551_pp0_iter3_reg;
reg   [8:0] offset_2_reg_2551_pp0_iter4_reg;
reg   [8:0] offset_2_reg_2551_pp0_iter5_reg;
wire   [8:0] add_ln194_fu_1362_p2;
reg   [8:0] add_ln194_reg_2563;
wire   [8:0] add_ln195_fu_1367_p2;
reg   [8:0] add_ln195_reg_2568;
wire   [8:0] add_ln196_fu_1372_p2;
reg   [8:0] add_ln196_reg_2573;
wire   [8:0] add_ln197_fu_1377_p2;
reg   [8:0] add_ln197_reg_2578;
wire   [8:0] add_ln199_fu_1382_p2;
reg   [8:0] add_ln199_reg_2583;
reg   [6:0] tmp_231_reg_2588;
reg   [6:0] tmp_232_reg_2593;
reg   [6:0] tmp_233_reg_2598;
reg   [6:0] tmp_234_reg_2603;
reg   [6:0] tmp_235_reg_2608;
reg   [6:0] tmp_237_reg_2613;
wire   [8:0] add_ln194_1_fu_1504_p2;
reg   [8:0] add_ln194_1_reg_2618;
wire   [8:0] add_ln195_1_fu_1509_p2;
reg   [8:0] add_ln195_1_reg_2623;
wire   [8:0] add_ln196_1_fu_1514_p2;
reg   [8:0] add_ln196_1_reg_2628;
wire   [8:0] add_ln197_1_fu_1519_p2;
reg   [8:0] add_ln197_1_reg_2633;
wire   [8:0] add_ln199_1_fu_1524_p2;
reg   [8:0] add_ln199_1_reg_2638;
wire   [2:0] trunc_ln172_fu_1529_p1;
reg   [2:0] trunc_ln172_reg_2643;
reg   [7:0] tmp_236_reg_2655;
reg   [7:0] tmp_238_reg_2660;
reg   [6:0] tmp_239_reg_2665;
reg   [6:0] tmp_240_reg_2670;
reg   [6:0] tmp_241_reg_2675;
reg   [6:0] tmp_242_reg_2680;
reg   [6:0] tmp_243_reg_2685;
reg   [6:0] tmp_245_reg_2690;
wire   [2:0] trunc_ln172_2_fu_1745_p1;
reg   [2:0] trunc_ln172_2_reg_2975;
reg   [7:0] tmp_244_reg_2987;
reg   [7:0] tmp_246_reg_2992;
wire   [63:0] tmp_s_fu_1767_p17;
reg   [63:0] tmp_s_reg_2997;
wire   [63:0] tmp_24_fu_1802_p17;
reg   [63:0] tmp_24_reg_3002;
wire   [63:0] tmp_25_fu_1837_p17;
reg   [63:0] tmp_25_reg_3007;
wire   [63:0] tmp_26_fu_1872_p17;
reg   [63:0] tmp_26_reg_3012;
wire   [63:0] tmp_27_fu_1907_p17;
reg   [63:0] tmp_27_reg_3017;
wire   [63:0] tmp_28_fu_1942_p17;
reg   [63:0] tmp_28_reg_3022;
wire   [63:0] tmp_29_fu_1977_p17;
reg   [63:0] tmp_29_reg_3027;
wire   [63:0] tmp_30_fu_2012_p17;
reg   [63:0] tmp_30_reg_3032;
wire   [63:0] tmp_31_fu_2159_p17;
reg   [63:0] tmp_31_reg_3317;
reg   [4:0] tmp_89_reg_3322;
wire   [63:0] tmp_32_fu_2203_p17;
reg   [63:0] tmp_32_reg_3328;
wire   [63:0] tmp_33_fu_2238_p17;
reg   [63:0] tmp_33_reg_3333;
wire   [63:0] tmp_34_fu_2273_p17;
reg   [63:0] tmp_34_reg_3338;
wire   [63:0] tmp_35_fu_2308_p17;
reg   [63:0] tmp_35_reg_3343;
wire   [63:0] tmp_36_fu_2343_p17;
reg   [63:0] tmp_36_reg_3348;
wire   [63:0] tmp_37_fu_2378_p17;
reg   [63:0] tmp_37_reg_3353;
wire   [63:0] tmp_38_fu_2413_p17;
reg   [63:0] tmp_38_reg_3358;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_2_fu_1665_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_fu_1675_p1;
wire   [63:0] zext_ln195_fu_1685_p1;
wire   [63:0] zext_ln196_fu_1695_p1;
wire   [63:0] zext_ln197_fu_1705_p1;
wire   [63:0] zext_ln198_fu_1715_p1;
wire   [63:0] zext_ln199_fu_1725_p1;
wire   [63:0] zext_ln200_fu_1735_p1;
wire   [63:0] zext_ln172_3_fu_2047_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_2057_p1;
wire   [63:0] zext_ln195_1_fu_2067_p1;
wire   [63:0] zext_ln196_1_fu_2077_p1;
wire   [63:0] zext_ln197_1_fu_2087_p1;
wire   [63:0] zext_ln198_1_fu_2097_p1;
wire   [63:0] zext_ln199_1_fu_2107_p1;
wire   [63:0] zext_ln200_1_fu_2117_p1;
wire   [63:0] zext_ln193_fu_2135_p1;
wire   [63:0] zext_ln194_2_fu_2151_p1;
wire   [63:0] zext_ln193_1_fu_2455_p1;
wire   [63:0] zext_ln194_3_fu_2470_p1;
reg   [6:0] tid_2_fu_132;
wire   [6:0] add_ln188_fu_1349_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
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
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    smem_6_ce1_local;
reg   [6:0] smem_6_address1_local;
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
wire   [2:0] hi_fu_1275_p4;
wire   [2:0] trunc_ln191_fu_1289_p1;
wire   [8:0] mul_ln_fu_1293_p5;
wire   [8:0] grp_fu_1311_p0;
wire   [3:0] grp_fu_1311_p1;
wire   [1:0] tmp_88_fu_1317_p4;
wire   [8:0] mul_ln191_1_fu_1326_p5;
wire   [8:0] grp_fu_1343_p0;
wire   [3:0] grp_fu_1343_p1;
wire   [8:0] mul_ln172_fu_1393_p0;
wire   [10:0] mul_ln172_fu_1393_p1;
wire   [18:0] mul_ln172_fu_1393_p2;
wire   [8:0] mul_ln194_fu_1412_p0;
wire   [10:0] mul_ln194_fu_1412_p1;
wire   [18:0] mul_ln194_fu_1412_p2;
wire   [8:0] mul_ln195_fu_1431_p0;
wire   [10:0] mul_ln195_fu_1431_p1;
wire   [18:0] mul_ln195_fu_1431_p2;
wire   [8:0] mul_ln196_fu_1450_p0;
wire   [10:0] mul_ln196_fu_1450_p1;
wire   [18:0] mul_ln196_fu_1450_p2;
wire   [8:0] mul_ln197_fu_1469_p0;
wire   [10:0] mul_ln197_fu_1469_p1;
wire   [18:0] mul_ln197_fu_1469_p2;
wire   [8:0] mul_ln199_fu_1488_p0;
wire   [10:0] mul_ln199_fu_1488_p1;
wire   [18:0] mul_ln199_fu_1488_p2;
wire   [2:0] grp_fu_1311_p2;
wire   [20:0] tmp_236_fu_1533_p1;
wire  signed [20:0] grp_fu_2478_p3;
wire   [20:0] tmp_238_fu_1542_p1;
wire  signed [20:0] grp_fu_2487_p3;
wire   [8:0] mul_ln172_2_fu_1554_p0;
wire   [10:0] mul_ln172_2_fu_1554_p1;
wire   [18:0] mul_ln172_2_fu_1554_p2;
wire   [8:0] mul_ln194_1_fu_1573_p0;
wire   [10:0] mul_ln194_1_fu_1573_p1;
wire   [18:0] mul_ln194_1_fu_1573_p2;
wire   [8:0] mul_ln195_1_fu_1592_p0;
wire   [10:0] mul_ln195_1_fu_1592_p1;
wire   [18:0] mul_ln195_1_fu_1592_p2;
wire   [8:0] mul_ln196_1_fu_1611_p0;
wire   [10:0] mul_ln196_1_fu_1611_p1;
wire   [18:0] mul_ln196_1_fu_1611_p2;
wire   [8:0] mul_ln197_1_fu_1630_p0;
wire   [10:0] mul_ln197_1_fu_1630_p1;
wire   [18:0] mul_ln197_1_fu_1630_p2;
wire   [8:0] mul_ln199_1_fu_1649_p0;
wire   [10:0] mul_ln199_1_fu_1649_p1;
wire   [18:0] mul_ln199_1_fu_1649_p2;
wire   [2:0] grp_fu_1343_p2;
wire   [20:0] tmp_244_fu_1749_p1;
wire  signed [20:0] grp_fu_2496_p3;
wire   [20:0] tmp_246_fu_1758_p1;
wire  signed [20:0] grp_fu_2505_p3;
wire   [63:0] tmp_s_fu_1767_p15;
wire   [63:0] tmp_24_fu_1802_p15;
wire   [63:0] tmp_25_fu_1837_p15;
wire   [63:0] tmp_26_fu_1872_p15;
wire   [63:0] tmp_27_fu_1907_p15;
wire   [63:0] tmp_28_fu_1942_p15;
wire   [63:0] tmp_29_fu_1977_p15;
wire   [63:0] tmp_30_fu_2012_p15;
wire   [6:0] shl_ln193_fu_2130_p2;
wire   [5:0] trunc_ln193_fu_2127_p1;
wire   [6:0] or_ln7_fu_2143_p3;
wire   [63:0] tmp_31_fu_2159_p15;
wire   [63:0] tmp_32_fu_2203_p15;
wire   [63:0] tmp_33_fu_2238_p15;
wire   [63:0] tmp_34_fu_2273_p15;
wire   [63:0] tmp_35_fu_2308_p15;
wire   [63:0] tmp_36_fu_2343_p15;
wire   [63:0] tmp_37_fu_2378_p15;
wire   [63:0] tmp_38_fu_2413_p15;
wire   [6:0] or_ln9_fu_2448_p3;
wire   [6:0] or_ln194_1_fu_2463_p3;
wire   [8:0] grp_fu_2478_p0;
wire   [9:0] zext_ln172_fu_1359_p1;
wire   [5:0] grp_fu_2478_p1;
wire   [10:0] grp_fu_2478_p2;
wire   [8:0] grp_fu_2487_p0;
wire   [5:0] grp_fu_2487_p1;
wire   [10:0] grp_fu_2487_p2;
wire   [8:0] grp_fu_2496_p0;
wire   [9:0] zext_ln172_11_fu_1387_p1;
wire   [5:0] grp_fu_2496_p1;
wire   [10:0] grp_fu_2496_p2;
wire   [8:0] grp_fu_2505_p0;
wire   [5:0] grp_fu_2505_p1;
wire   [10:0] grp_fu_2505_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_2_fu_1554_p00;
wire   [18:0] mul_ln172_fu_1393_p00;
wire   [18:0] mul_ln194_1_fu_1573_p00;
wire   [18:0] mul_ln194_fu_1412_p00;
wire   [18:0] mul_ln195_1_fu_1592_p00;
wire   [18:0] mul_ln195_fu_1431_p00;
wire   [18:0] mul_ln196_1_fu_1611_p00;
wire   [18:0] mul_ln196_fu_1450_p00;
wire   [18:0] mul_ln197_1_fu_1630_p00;
wire   [18:0] mul_ln197_fu_1469_p00;
wire   [18:0] mul_ln199_1_fu_1649_p00;
wire   [18:0] mul_ln199_fu_1488_p00;
wire   [2:0] tmp_s_fu_1767_p1;
wire   [2:0] tmp_s_fu_1767_p3;
wire   [2:0] tmp_s_fu_1767_p5;
wire   [2:0] tmp_s_fu_1767_p7;
wire  signed [2:0] tmp_s_fu_1767_p9;
wire  signed [2:0] tmp_s_fu_1767_p11;
wire  signed [2:0] tmp_s_fu_1767_p13;
wire   [2:0] tmp_24_fu_1802_p1;
wire  signed [2:0] tmp_24_fu_1802_p3;
wire  signed [2:0] tmp_24_fu_1802_p5;
wire  signed [2:0] tmp_24_fu_1802_p7;
wire   [2:0] tmp_24_fu_1802_p9;
wire   [2:0] tmp_24_fu_1802_p11;
wire   [2:0] tmp_24_fu_1802_p13;
wire  signed [2:0] tmp_25_fu_1837_p1;
wire   [2:0] tmp_25_fu_1837_p3;
wire   [2:0] tmp_25_fu_1837_p5;
wire   [2:0] tmp_25_fu_1837_p7;
wire   [2:0] tmp_25_fu_1837_p9;
wire  signed [2:0] tmp_25_fu_1837_p11;
wire  signed [2:0] tmp_25_fu_1837_p13;
wire   [2:0] tmp_26_fu_1872_p1;
wire   [2:0] tmp_26_fu_1872_p3;
wire  signed [2:0] tmp_26_fu_1872_p5;
wire  signed [2:0] tmp_26_fu_1872_p7;
wire  signed [2:0] tmp_26_fu_1872_p9;
wire   [2:0] tmp_26_fu_1872_p11;
wire   [2:0] tmp_26_fu_1872_p13;
wire  signed [2:0] tmp_27_fu_1907_p1;
wire  signed [2:0] tmp_27_fu_1907_p3;
wire   [2:0] tmp_27_fu_1907_p5;
wire   [2:0] tmp_27_fu_1907_p7;
wire   [2:0] tmp_27_fu_1907_p9;
wire   [2:0] tmp_27_fu_1907_p11;
wire  signed [2:0] tmp_27_fu_1907_p13;
wire   [2:0] tmp_28_fu_1942_p1;
wire   [2:0] tmp_28_fu_1942_p3;
wire   [2:0] tmp_28_fu_1942_p5;
wire  signed [2:0] tmp_28_fu_1942_p7;
wire  signed [2:0] tmp_28_fu_1942_p9;
wire  signed [2:0] tmp_28_fu_1942_p11;
wire   [2:0] tmp_28_fu_1942_p13;
wire  signed [2:0] tmp_29_fu_1977_p1;
wire  signed [2:0] tmp_29_fu_1977_p3;
wire  signed [2:0] tmp_29_fu_1977_p5;
wire   [2:0] tmp_29_fu_1977_p7;
wire   [2:0] tmp_29_fu_1977_p9;
wire   [2:0] tmp_29_fu_1977_p11;
wire   [2:0] tmp_29_fu_1977_p13;
wire   [2:0] tmp_30_fu_2012_p1;
wire   [2:0] tmp_30_fu_2012_p3;
wire   [2:0] tmp_30_fu_2012_p5;
wire   [2:0] tmp_30_fu_2012_p7;
wire  signed [2:0] tmp_30_fu_2012_p9;
wire  signed [2:0] tmp_30_fu_2012_p11;
wire  signed [2:0] tmp_30_fu_2012_p13;
wire   [2:0] tmp_31_fu_2159_p1;
wire   [2:0] tmp_31_fu_2159_p3;
wire   [2:0] tmp_31_fu_2159_p5;
wire   [2:0] tmp_31_fu_2159_p7;
wire  signed [2:0] tmp_31_fu_2159_p9;
wire  signed [2:0] tmp_31_fu_2159_p11;
wire  signed [2:0] tmp_31_fu_2159_p13;
wire   [2:0] tmp_32_fu_2203_p1;
wire  signed [2:0] tmp_32_fu_2203_p3;
wire  signed [2:0] tmp_32_fu_2203_p5;
wire  signed [2:0] tmp_32_fu_2203_p7;
wire   [2:0] tmp_32_fu_2203_p9;
wire   [2:0] tmp_32_fu_2203_p11;
wire   [2:0] tmp_32_fu_2203_p13;
wire  signed [2:0] tmp_33_fu_2238_p1;
wire   [2:0] tmp_33_fu_2238_p3;
wire   [2:0] tmp_33_fu_2238_p5;
wire   [2:0] tmp_33_fu_2238_p7;
wire   [2:0] tmp_33_fu_2238_p9;
wire  signed [2:0] tmp_33_fu_2238_p11;
wire  signed [2:0] tmp_33_fu_2238_p13;
wire   [2:0] tmp_34_fu_2273_p1;
wire   [2:0] tmp_34_fu_2273_p3;
wire  signed [2:0] tmp_34_fu_2273_p5;
wire  signed [2:0] tmp_34_fu_2273_p7;
wire  signed [2:0] tmp_34_fu_2273_p9;
wire   [2:0] tmp_34_fu_2273_p11;
wire   [2:0] tmp_34_fu_2273_p13;
wire  signed [2:0] tmp_35_fu_2308_p1;
wire  signed [2:0] tmp_35_fu_2308_p3;
wire   [2:0] tmp_35_fu_2308_p5;
wire   [2:0] tmp_35_fu_2308_p7;
wire   [2:0] tmp_35_fu_2308_p9;
wire   [2:0] tmp_35_fu_2308_p11;
wire  signed [2:0] tmp_35_fu_2308_p13;
wire   [2:0] tmp_36_fu_2343_p1;
wire   [2:0] tmp_36_fu_2343_p3;
wire   [2:0] tmp_36_fu_2343_p5;
wire  signed [2:0] tmp_36_fu_2343_p7;
wire  signed [2:0] tmp_36_fu_2343_p9;
wire  signed [2:0] tmp_36_fu_2343_p11;
wire   [2:0] tmp_36_fu_2343_p13;
wire  signed [2:0] tmp_37_fu_2378_p1;
wire  signed [2:0] tmp_37_fu_2378_p3;
wire  signed [2:0] tmp_37_fu_2378_p5;
wire   [2:0] tmp_37_fu_2378_p7;
wire   [2:0] tmp_37_fu_2378_p9;
wire   [2:0] tmp_37_fu_2378_p11;
wire   [2:0] tmp_37_fu_2378_p13;
wire   [2:0] tmp_38_fu_2413_p1;
wire   [2:0] tmp_38_fu_2413_p3;
wire   [2:0] tmp_38_fu_2413_p5;
wire   [2:0] tmp_38_fu_2413_p7;
wire  signed [2:0] tmp_38_fu_2413_p9;
wire  signed [2:0] tmp_38_fu_2413_p11;
wire  signed [2:0] tmp_38_fu_2413_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1311_p0),.din1(grp_fu_1311_p1),.ce(1'b1),.dout(grp_fu_1311_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1343_p0),.din1(grp_fu_1343_p1),.ce(1'b1),.dout(grp_fu_1343_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U202(.din0(mul_ln172_fu_1393_p0),.din1(mul_ln172_fu_1393_p1),.dout(mul_ln172_fu_1393_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U203(.din0(mul_ln194_fu_1412_p0),.din1(mul_ln194_fu_1412_p1),.dout(mul_ln194_fu_1412_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U204(.din0(mul_ln195_fu_1431_p0),.din1(mul_ln195_fu_1431_p1),.dout(mul_ln195_fu_1431_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U205(.din0(mul_ln196_fu_1450_p0),.din1(mul_ln196_fu_1450_p1),.dout(mul_ln196_fu_1450_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U206(.din0(mul_ln197_fu_1469_p0),.din1(mul_ln197_fu_1469_p1),.dout(mul_ln197_fu_1469_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U207(.din0(mul_ln199_fu_1488_p0),.din1(mul_ln199_fu_1488_p1),.dout(mul_ln199_fu_1488_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U208(.din0(mul_ln172_2_fu_1554_p0),.din1(mul_ln172_2_fu_1554_p1),.dout(mul_ln172_2_fu_1554_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U209(.din0(mul_ln194_1_fu_1573_p0),.din1(mul_ln194_1_fu_1573_p1),.dout(mul_ln194_1_fu_1573_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U210(.din0(mul_ln195_1_fu_1592_p0),.din1(mul_ln195_1_fu_1592_p1),.dout(mul_ln195_1_fu_1592_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U211(.din0(mul_ln196_1_fu_1611_p0),.din1(mul_ln196_1_fu_1611_p1),.dout(mul_ln196_1_fu_1611_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U212(.din0(mul_ln197_1_fu_1630_p0),.din1(mul_ln197_1_fu_1630_p1),.dout(mul_ln197_1_fu_1630_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U213(.din0(mul_ln199_1_fu_1649_p0),.din1(mul_ln199_1_fu_1649_p1),.dout(mul_ln199_1_fu_1649_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U214(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_s_fu_1767_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_s_fu_1767_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U215(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_24_fu_1802_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_24_fu_1802_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U216(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_25_fu_1837_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_25_fu_1837_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U217(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_26_fu_1872_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_26_fu_1872_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U218(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_27_fu_1907_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_27_fu_1907_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U219(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_28_fu_1942_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_28_fu_1942_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U220(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_29_fu_1977_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_29_fu_1977_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U221(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_30_fu_2012_p15),.sel(trunc_ln172_reg_2643),.dout(tmp_30_fu_2012_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U222(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_31_fu_2159_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_31_fu_2159_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U223(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_32_fu_2203_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_32_fu_2203_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U224(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_33_fu_2238_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_33_fu_2238_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U225(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_34_fu_2273_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_34_fu_2273_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U226(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_35_fu_2308_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_35_fu_2308_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U227(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_36_fu_2343_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_36_fu_2343_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U228(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_37_fu_2378_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_37_fu_2378_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U229(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_38_fu_2413_p15),.sel(trunc_ln172_2_reg_2975),.dout(tmp_38_fu_2413_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U230(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2478_p0),.din1(grp_fu_2478_p1),.din2(grp_fu_2478_p2),.ce(1'b1),.dout(grp_fu_2478_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U231(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2487_p0),.din1(grp_fu_2487_p1),.din2(grp_fu_2487_p2),.ce(1'b1),.dout(grp_fu_2487_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U232(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2496_p0),.din1(grp_fu_2496_p1),.din2(grp_fu_2496_p2),.ce(1'b1),.dout(grp_fu_2496_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U233(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2505_p0),.din1(grp_fu_2505_p1),.din2(grp_fu_2505_p2),.ce(1'b1),.dout(grp_fu_2505_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_132 <= 7'd0;
    end else if (((tmp_reg_2530 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_2_fu_132 <= add_ln188_fu_1349_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_1_reg_2618 <= add_ln194_1_fu_1504_p2;
        add_ln195_1_reg_2623 <= add_ln195_1_fu_1509_p2;
        add_ln196_1_reg_2628 <= add_ln196_1_fu_1514_p2;
        add_ln197_1_reg_2633 <= add_ln197_1_fu_1519_p2;
        add_ln199_1_reg_2638 <= add_ln199_1_fu_1524_p2;
        offset_2_reg_2551 <= offset_2_fu_1338_p2;
        offset_2_reg_2551_pp0_iter1_reg <= offset_2_reg_2551;
        offset_2_reg_2551_pp0_iter2_reg <= offset_2_reg_2551_pp0_iter1_reg;
        offset_2_reg_2551_pp0_iter3_reg <= offset_2_reg_2551_pp0_iter2_reg;
        offset_2_reg_2551_pp0_iter4_reg <= offset_2_reg_2551_pp0_iter3_reg;
        offset_2_reg_2551_pp0_iter5_reg <= offset_2_reg_2551_pp0_iter4_reg;
        tmp_231_reg_2588 <= {{mul_ln172_fu_1393_p2[18:12]}};
        tmp_232_reg_2593 <= {{mul_ln194_fu_1412_p2[18:12]}};
        tmp_233_reg_2598 <= {{mul_ln195_fu_1431_p2[18:12]}};
        tmp_234_reg_2603 <= {{mul_ln196_fu_1450_p2[18:12]}};
        tmp_235_reg_2608 <= {{mul_ln197_fu_1469_p2[18:12]}};
        tmp_237_reg_2613 <= {{mul_ln199_fu_1488_p2[18:12]}};
        tmp_244_reg_2987 <= {{tmp_244_fu_1749_p1[20:13]}};
        tmp_246_reg_2992 <= {{tmp_246_fu_1758_p1[20:13]}};
        tmp_31_reg_3317 <= tmp_31_fu_2159_p17;
        tmp_32_reg_3328 <= tmp_32_fu_2203_p17;
        tmp_33_reg_3333 <= tmp_33_fu_2238_p17;
        tmp_34_reg_3338 <= tmp_34_fu_2273_p17;
        tmp_35_reg_3343 <= tmp_35_fu_2308_p17;
        tmp_36_reg_3348 <= tmp_36_fu_2343_p17;
        tmp_37_reg_3353 <= tmp_37_fu_2378_p17;
        tmp_38_reg_3358 <= tmp_38_fu_2413_p17;
        tmp_89_reg_3322 <= {{tid_reg_2521_pp0_iter7_reg[5:1]}};
        trunc_ln172_2_reg_2975 <= trunc_ln172_2_fu_1745_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_reg_2563 <= add_ln194_fu_1362_p2;
        add_ln195_reg_2568 <= add_ln195_fu_1367_p2;
        add_ln196_reg_2573 <= add_ln196_fu_1372_p2;
        add_ln197_reg_2578 <= add_ln197_fu_1377_p2;
        add_ln199_reg_2583 <= add_ln199_fu_1382_p2;
        offset_reg_2539 <= offset_fu_1305_p2;
        offset_reg_2539_pp0_iter1_reg <= offset_reg_2539;
        offset_reg_2539_pp0_iter2_reg <= offset_reg_2539_pp0_iter1_reg;
        offset_reg_2539_pp0_iter3_reg <= offset_reg_2539_pp0_iter2_reg;
        offset_reg_2539_pp0_iter4_reg <= offset_reg_2539_pp0_iter3_reg;
        offset_reg_2539_pp0_iter5_reg <= offset_reg_2539_pp0_iter4_reg;
        tid_reg_2521 <= ap_sig_allocacmp_tid;
        tid_reg_2521_pp0_iter1_reg <= tid_reg_2521;
        tid_reg_2521_pp0_iter2_reg <= tid_reg_2521_pp0_iter1_reg;
        tid_reg_2521_pp0_iter3_reg <= tid_reg_2521_pp0_iter2_reg;
        tid_reg_2521_pp0_iter4_reg <= tid_reg_2521_pp0_iter3_reg;
        tid_reg_2521_pp0_iter5_reg <= tid_reg_2521_pp0_iter4_reg;
        tid_reg_2521_pp0_iter6_reg <= tid_reg_2521_pp0_iter5_reg;
        tid_reg_2521_pp0_iter7_reg <= tid_reg_2521_pp0_iter6_reg;
        tmp_236_reg_2655 <= {{tmp_236_fu_1533_p1[20:13]}};
        tmp_238_reg_2660 <= {{tmp_238_fu_1542_p1[20:13]}};
        tmp_239_reg_2665 <= {{mul_ln172_2_fu_1554_p2[18:12]}};
        tmp_240_reg_2670 <= {{mul_ln194_1_fu_1573_p2[18:12]}};
        tmp_241_reg_2675 <= {{mul_ln195_1_fu_1592_p2[18:12]}};
        tmp_242_reg_2680 <= {{mul_ln196_1_fu_1611_p2[18:12]}};
        tmp_243_reg_2685 <= {{mul_ln197_1_fu_1630_p2[18:12]}};
        tmp_245_reg_2690 <= {{mul_ln199_1_fu_1649_p2[18:12]}};
        tmp_24_reg_3002 <= tmp_24_fu_1802_p17;
        tmp_25_reg_3007 <= tmp_25_fu_1837_p17;
        tmp_26_reg_3012 <= tmp_26_fu_1872_p17;
        tmp_27_reg_3017 <= tmp_27_fu_1907_p17;
        tmp_28_reg_3022 <= tmp_28_fu_1942_p17;
        tmp_29_reg_3027 <= tmp_29_fu_1977_p17;
        tmp_30_reg_3032 <= tmp_30_fu_2012_p17;
        tmp_reg_2530 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_2530_pp0_iter1_reg <= tmp_reg_2530;
        tmp_reg_2530_pp0_iter2_reg <= tmp_reg_2530_pp0_iter1_reg;
        tmp_reg_2530_pp0_iter3_reg <= tmp_reg_2530_pp0_iter2_reg;
        tmp_reg_2530_pp0_iter4_reg <= tmp_reg_2530_pp0_iter3_reg;
        tmp_reg_2530_pp0_iter5_reg <= tmp_reg_2530_pp0_iter4_reg;
        tmp_reg_2530_pp0_iter6_reg <= tmp_reg_2530_pp0_iter5_reg;
        tmp_s_reg_2997 <= tmp_s_fu_1767_p17;
        trunc_ln172_reg_2643 <= trunc_ln172_fu_1529_p1;
        zext_ln114_reg_2534[2 : 0] <= zext_ln114_fu_1285_p1[2 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln194_3_fu_2470_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln194_2_fu_2151_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln193_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln193_fu_2135_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_34_reg_3338;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_26_reg_3012;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_33_reg_3333;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_25_reg_3007;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln194_3_fu_2470_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln194_2_fu_2151_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln193_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln193_fu_2135_p1;
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_36_reg_3348;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_28_reg_3022;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_35_reg_3343;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = tmp_27_reg_3017;
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln194_3_fu_2470_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln194_2_fu_2151_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln193_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln193_fu_2135_p1;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_38_reg_3358;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_30_reg_3032;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = tmp_37_reg_3353;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_29_reg_3027;
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln194_3_fu_2470_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln194_2_fu_2151_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln193_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln193_fu_2135_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_32_reg_3328;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_24_reg_3002;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_31_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_s_reg_2997;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2530 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_2530_pp0_iter6_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln200_1_fu_2117_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln199_1_fu_2107_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln198_1_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln197_1_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln196_1_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln195_1_fu_2067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln194_1_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_2_fu_1665_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_3_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln200_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln199_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln198_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln197_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln196_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln195_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln194_fu_1675_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln200_1_fu_2117_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln199_1_fu_2107_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln198_1_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln197_1_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln196_1_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln195_1_fu_2067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln194_1_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_2_fu_1665_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_3_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln200_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln199_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln198_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln197_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln196_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln195_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln194_fu_1675_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln200_1_fu_2117_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln199_1_fu_2107_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln198_1_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln197_1_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln196_1_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln195_1_fu_2067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln194_1_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_2_fu_1665_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_3_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln200_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln199_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln198_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln197_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln196_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln195_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln194_fu_1675_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln200_1_fu_2117_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln199_1_fu_2107_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln198_1_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln197_1_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln196_1_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln195_1_fu_2067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln194_1_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_2_fu_1665_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_3_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln200_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln199_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln198_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln197_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln196_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln195_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln194_fu_1675_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln200_1_fu_2117_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln199_1_fu_2107_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln198_1_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln197_1_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln196_1_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln195_1_fu_2067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln194_1_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_2_fu_1665_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln172_3_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln200_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln199_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln198_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln197_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln196_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln195_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln194_fu_1675_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln200_1_fu_2117_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln199_1_fu_2107_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln198_1_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln197_1_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln196_1_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln195_1_fu_2067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln194_1_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_2_fu_1665_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln172_3_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln200_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln199_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln198_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln197_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln196_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln195_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln194_fu_1675_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln200_1_fu_2117_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln199_1_fu_2107_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln198_1_fu_2097_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln197_1_fu_2087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln196_1_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln195_1_fu_2067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln194_1_fu_2057_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_2_fu_1665_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_3_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln200_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln199_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln198_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln197_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln196_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln195_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln194_fu_1675_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln172_2_reg_2975 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7== 1'b1) & (trunc_ln172_2_reg_2975 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_2643 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter7_stage0) & (ap_idle_pp0_0to6 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
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
assign add_ln188_fu_1349_p2 = (tid_reg_2521 + 7'd2);
assign add_ln194_1_fu_1504_p2 = (offset_2_reg_2551_pp0_iter4_reg + 9'd32);
assign add_ln194_fu_1362_p2 = (offset_reg_2539_pp0_iter4_reg + 9'd32);
assign add_ln195_1_fu_1509_p2 = (offset_2_reg_2551_pp0_iter4_reg + 9'd8);
assign add_ln195_fu_1367_p2 = (offset_reg_2539_pp0_iter4_reg + 9'd8);
assign add_ln196_1_fu_1514_p2 = (offset_2_reg_2551_pp0_iter4_reg + 9'd40);
assign add_ln196_fu_1372_p2 = (offset_reg_2539_pp0_iter4_reg + 9'd40);
assign add_ln197_1_fu_1519_p2 = (offset_2_reg_2551_pp0_iter4_reg + 9'd16);
assign add_ln197_fu_1377_p2 = (offset_reg_2539_pp0_iter4_reg + 9'd16);
assign add_ln199_1_fu_1524_p2 = (offset_2_reg_2551_pp0_iter4_reg + 9'd24);
assign add_ln199_fu_1382_p2 = (offset_reg_2539_pp0_iter4_reg + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1311_p0 = (mul_ln_fu_1293_p5 + zext_ln114_fu_1285_p1);
assign grp_fu_1311_p1 = 9'd7;
assign grp_fu_1343_p0 = (mul_ln191_1_fu_1326_p5 + zext_ln114_reg_2534);
assign grp_fu_1343_p1 = 9'd7;
assign grp_fu_2478_p0 = zext_ln172_fu_1359_p1;
assign grp_fu_2478_p1 = 10'd48;
assign grp_fu_2478_p2 = 21'd1171;
assign grp_fu_2487_p0 = zext_ln172_fu_1359_p1;
assign grp_fu_2487_p1 = 10'd56;
assign grp_fu_2487_p2 = 21'd1171;
assign grp_fu_2496_p0 = zext_ln172_11_fu_1387_p1;
assign grp_fu_2496_p1 = 10'd48;
assign grp_fu_2496_p2 = 21'd1171;
assign grp_fu_2505_p0 = zext_ln172_11_fu_1387_p1;
assign grp_fu_2505_p1 = 10'd56;
assign grp_fu_2505_p2 = 21'd1171;
assign hi_fu_1275_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln172_2_fu_1554_p0 = mul_ln172_2_fu_1554_p00;
assign mul_ln172_2_fu_1554_p00 = offset_2_reg_2551_pp0_iter5_reg;
assign mul_ln172_2_fu_1554_p1 = 19'd586;
assign mul_ln172_fu_1393_p0 = mul_ln172_fu_1393_p00;
assign mul_ln172_fu_1393_p00 = offset_reg_2539_pp0_iter5_reg;
assign mul_ln172_fu_1393_p1 = 19'd586;
assign mul_ln191_1_fu_1326_p5 = {{{{tmp_88_fu_1317_p4}, {3'd4}}, {tmp_88_fu_1317_p4}}, {2'd2}};
assign mul_ln194_1_fu_1573_p0 = mul_ln194_1_fu_1573_p00;
assign mul_ln194_1_fu_1573_p00 = add_ln194_1_reg_2618;
assign mul_ln194_1_fu_1573_p1 = 19'd586;
assign mul_ln194_fu_1412_p0 = mul_ln194_fu_1412_p00;
assign mul_ln194_fu_1412_p00 = add_ln194_reg_2563;
assign mul_ln194_fu_1412_p1 = 19'd586;
assign mul_ln195_1_fu_1592_p0 = mul_ln195_1_fu_1592_p00;
assign mul_ln195_1_fu_1592_p00 = add_ln195_1_reg_2623;
assign mul_ln195_1_fu_1592_p1 = 19'd586;
assign mul_ln195_fu_1431_p0 = mul_ln195_fu_1431_p00;
assign mul_ln195_fu_1431_p00 = add_ln195_reg_2568;
assign mul_ln195_fu_1431_p1 = 19'd586;
assign mul_ln196_1_fu_1611_p0 = mul_ln196_1_fu_1611_p00;
assign mul_ln196_1_fu_1611_p00 = add_ln196_1_reg_2628;
assign mul_ln196_1_fu_1611_p1 = 19'd586;
assign mul_ln196_fu_1450_p0 = mul_ln196_fu_1450_p00;
assign mul_ln196_fu_1450_p00 = add_ln196_reg_2573;
assign mul_ln196_fu_1450_p1 = 19'd586;
assign mul_ln197_1_fu_1630_p0 = mul_ln197_1_fu_1630_p00;
assign mul_ln197_1_fu_1630_p00 = add_ln197_1_reg_2633;
assign mul_ln197_1_fu_1630_p1 = 19'd586;
assign mul_ln197_fu_1469_p0 = mul_ln197_fu_1469_p00;
assign mul_ln197_fu_1469_p00 = add_ln197_reg_2578;
assign mul_ln197_fu_1469_p1 = 19'd586;
assign mul_ln199_1_fu_1649_p0 = mul_ln199_1_fu_1649_p00;
assign mul_ln199_1_fu_1649_p00 = add_ln199_1_reg_2638;
assign mul_ln199_1_fu_1649_p1 = 19'd586;
assign mul_ln199_fu_1488_p0 = mul_ln199_fu_1488_p00;
assign mul_ln199_fu_1488_p00 = add_ln199_reg_2583;
assign mul_ln199_fu_1488_p1 = 19'd586;
assign mul_ln_fu_1293_p5 = {{{{trunc_ln191_fu_1289_p1}, {2'd0}}, {trunc_ln191_fu_1289_p1}}, {1'd0}};
assign offset_2_fu_1338_p2 = (mul_ln191_1_fu_1326_p5 + zext_ln114_reg_2534);
assign offset_fu_1305_p2 = (mul_ln_fu_1293_p5 + zext_ln114_fu_1285_p1);
assign or_ln194_1_fu_2463_p3 = {{tmp_89_reg_3322}, {2'd3}};
assign or_ln7_fu_2143_p3 = {{trunc_ln193_fu_2127_p1}, {1'd1}};
assign or_ln9_fu_2448_p3 = {{tmp_89_reg_3322}, {2'd2}};
assign shl_ln193_fu_2130_p2 = tid_reg_2521_pp0_iter7_reg << 7'd1;
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_236_fu_1533_p1 = grp_fu_2478_p3;
assign tmp_238_fu_1542_p1 = grp_fu_2487_p3;
assign tmp_244_fu_1749_p1 = grp_fu_2496_p3;
assign tmp_246_fu_1758_p1 = grp_fu_2505_p3;
assign tmp_24_fu_1802_p15 = 'bx;
assign tmp_25_fu_1837_p15 = 'bx;
assign tmp_26_fu_1872_p15 = 'bx;
assign tmp_27_fu_1907_p15 = 'bx;
assign tmp_28_fu_1942_p15 = 'bx;
assign tmp_29_fu_1977_p15 = 'bx;
assign tmp_30_fu_2012_p15 = 'bx;
assign tmp_31_fu_2159_p15 = 'bx;
assign tmp_32_fu_2203_p15 = 'bx;
assign tmp_33_fu_2238_p15 = 'bx;
assign tmp_34_fu_2273_p15 = 'bx;
assign tmp_35_fu_2308_p15 = 'bx;
assign tmp_36_fu_2343_p15 = 'bx;
assign tmp_37_fu_2378_p15 = 'bx;
assign tmp_38_fu_2413_p15 = 'bx;
assign tmp_88_fu_1317_p4 = {{tid_reg_2521[2:1]}};
assign tmp_s_fu_1767_p15 = 'bx;
assign trunc_ln172_2_fu_1745_p1 = grp_fu_1343_p2[2:0];
assign trunc_ln172_fu_1529_p1 = grp_fu_1311_p2[2:0];
assign trunc_ln191_fu_1289_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_2127_p1 = tid_reg_2521_pp0_iter7_reg[5:0];
assign zext_ln114_fu_1285_p1 = hi_fu_1275_p4;
assign zext_ln172_11_fu_1387_p1 = offset_2_reg_2551_pp0_iter4_reg;
assign zext_ln172_2_fu_1665_p1 = tmp_231_reg_2588;
assign zext_ln172_3_fu_2047_p1 = tmp_239_reg_2665;
assign zext_ln172_fu_1359_p1 = offset_reg_2539_pp0_iter4_reg;
assign zext_ln193_1_fu_2455_p1 = or_ln9_fu_2448_p3;
assign zext_ln193_fu_2135_p1 = shl_ln193_fu_2130_p2;
assign zext_ln194_1_fu_2057_p1 = tmp_240_reg_2670;
assign zext_ln194_2_fu_2151_p1 = or_ln7_fu_2143_p3;
assign zext_ln194_3_fu_2470_p1 = or_ln194_1_fu_2463_p3;
assign zext_ln194_fu_1675_p1 = tmp_232_reg_2593;
assign zext_ln195_1_fu_2067_p1 = tmp_241_reg_2675;
assign zext_ln195_fu_1685_p1 = tmp_233_reg_2598;
assign zext_ln196_1_fu_2077_p1 = tmp_242_reg_2680;
assign zext_ln196_fu_1695_p1 = tmp_234_reg_2603;
assign zext_ln197_1_fu_2087_p1 = tmp_243_reg_2685;
assign zext_ln197_fu_1705_p1 = tmp_235_reg_2608;
assign zext_ln198_1_fu_2097_p1 = tmp_244_reg_2987;
assign zext_ln198_fu_1715_p1 = tmp_236_reg_2655;
assign zext_ln199_1_fu_2107_p1 = tmp_245_reg_2690;
assign zext_ln199_fu_1725_p1 = tmp_237_reg_2613;
assign zext_ln200_1_fu_2117_p1 = tmp_246_reg_2992;
assign zext_ln200_fu_1735_p1 = tmp_238_reg_2660;
always @ (posedge ap_clk) begin
    zext_ln114_reg_2534[8:3] <= 6'b000000;
end
endmodule 
