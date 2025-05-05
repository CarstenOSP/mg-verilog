module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_15_address0,W_15_ce0,W_15_we0,W_15_d0,W_15_address1,W_15_ce1,W_15_q1,W_14_address0,W_14_ce0,W_14_we0,W_14_d0,W_14_q0,W_13_address0,W_13_ce0,W_13_we0,W_13_d0,W_13_q0,W_12_address0,W_12_ce0,W_12_we0,W_12_d0,W_12_q0,W_11_address0,W_11_ce0,W_11_we0,W_11_d0,W_11_address1,W_11_ce1,W_11_q1,W_10_address0,W_10_ce0,W_10_we0,W_10_d0,W_10_q0,W_9_address0,W_9_ce0,W_9_we0,W_9_d0,W_9_q0,W_8_address0,W_8_ce0,W_8_we0,W_8_d0,W_8_q0,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_address1,W_7_ce1,W_7_q1,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_q0,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_q0,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_q0,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_address0,W_ce0,W_we0,W_d0,W_q0); 
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
output  [2:0] W_15_address0;
output   W_15_ce0;
output   W_15_we0;
output  [31:0] W_15_d0;
output  [2:0] W_15_address1;
output   W_15_ce1;
input  [31:0] W_15_q1;
output  [2:0] W_14_address0;
output   W_14_ce0;
output   W_14_we0;
output  [31:0] W_14_d0;
input  [31:0] W_14_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
output   W_13_we0;
output  [31:0] W_13_d0;
input  [31:0] W_13_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
output   W_12_we0;
output  [31:0] W_12_d0;
input  [31:0] W_12_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
output   W_11_we0;
output  [31:0] W_11_d0;
output  [2:0] W_11_address1;
output   W_11_ce1;
input  [31:0] W_11_q1;
output  [2:0] W_10_address0;
output   W_10_ce0;
output   W_10_we0;
output  [31:0] W_10_d0;
input  [31:0] W_10_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
output   W_9_we0;
output  [31:0] W_9_d0;
input  [31:0] W_9_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
output   W_8_we0;
output  [31:0] W_8_d0;
input  [31:0] W_8_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
output  [2:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [2:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
input  [31:0] W_6_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
input  [31:0] W_5_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
input  [31:0] W_4_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [2:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [2:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [2:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln106_reg_3251;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] i_2_reg_2914;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] trunc_ln6_fu_1400_p1;
reg   [3:0] trunc_ln6_reg_2920;
wire   [6:0] trunc_ln6_1_fu_1404_p1;
reg   [6:0] trunc_ln6_1_reg_2940;
reg   [2:0] lshr_ln_reg_2973;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_6_fu_1718_p11;
reg   [31:0] tmp_6_reg_3239;
reg   [2:0] lshr_ln2_reg_3246;
wire   [0:0] icmp_ln106_fu_1756_p2;
wire   [31:0] tmp_fu_1808_p11;
reg   [31:0] tmp_reg_3295;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_1_fu_1831_p11;
reg   [31:0] tmp_1_reg_3301;
wire   [31:0] tmp_2_fu_1854_p11;
reg   [31:0] tmp_2_reg_3307;
wire   [31:0] tmp_3_fu_1877_p11;
reg   [31:0] tmp_3_reg_3313;
wire   [31:0] xor_ln108_fu_1900_p2;
reg   [31:0] xor_ln108_reg_3318;
wire   [31:0] xor_ln108_2_fu_1912_p2;
reg   [31:0] xor_ln108_2_reg_3323;
wire   [31:0] tmp_4_fu_1918_p11;
reg   [31:0] tmp_4_reg_3332;
wire   [31:0] tmp_5_fu_1941_p11;
reg   [31:0] tmp_5_reg_3338;
wire   [31:0] tmp_7_fu_1964_p11;
reg   [31:0] tmp_7_reg_3344;
wire   [31:0] xor_ln108_3_fu_1987_p2;
reg   [31:0] xor_ln108_3_reg_3349;
wire   [31:0] xor_ln108_5_fu_1998_p2;
reg   [31:0] xor_ln108_5_reg_3354;
wire   [31:0] tmp_8_fu_2004_p11;
reg   [31:0] tmp_8_reg_3364;
wire   [31:0] tmp_9_fu_2027_p11;
reg   [31:0] tmp_9_reg_3371;
wire   [31:0] tmp_s_fu_2050_p11;
reg   [31:0] tmp_s_reg_3378;
wire   [31:0] tmp_10_fu_2073_p11;
reg   [31:0] tmp_10_reg_3385;
wire   [31:0] tmp_11_fu_2096_p11;
reg   [31:0] tmp_11_reg_3392;
wire   [31:0] xor_ln108_9_fu_2119_p2;
reg   [31:0] xor_ln108_9_reg_3398;
wire   [31:0] tmp_12_fu_2125_p11;
reg   [31:0] tmp_12_reg_3404;
wire   [31:0] tmp_13_fu_2148_p11;
reg   [31:0] tmp_13_reg_3410;
wire   [31:0] xor_ln108_8_fu_2232_p2;
reg   [31:0] xor_ln108_8_reg_3437;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] xor_ln108_11_fu_2245_p2;
reg   [31:0] xor_ln108_11_reg_3442;
wire   [31:0] xor_ln108_13_fu_2265_p2;
reg   [31:0] xor_ln108_13_reg_3447;
wire   [31:0] xor_ln108_15_fu_2302_p2;
reg   [31:0] xor_ln108_15_reg_3452;
wire   [31:0] xor_ln108_18_fu_2367_p2;
reg   [31:0] xor_ln108_18_reg_3457;
wire   [31:0] xor_ln108_23_fu_2396_p2;
reg   [31:0] xor_ln108_23_reg_3462;
wire   [31:0] xor_ln108_26_fu_2436_p2;
reg   [31:0] xor_ln108_26_reg_3470;
wire   [31:0] xor_ln108_29_fu_2451_p2;
reg   [31:0] xor_ln108_29_reg_3479;
wire   [31:0] xor_ln108_30_fu_2461_p2;
reg   [31:0] xor_ln108_30_reg_3484;
wire   [31:0] xor_ln108_35_fu_2476_p2;
reg   [31:0] xor_ln108_35_reg_3490;
wire   [31:0] xor_ln108_41_fu_2492_p2;
reg   [31:0] xor_ln108_41_reg_3498;
wire   [31:0] xor_ln108_47_fu_2509_p2;
reg   [31:0] xor_ln108_47_reg_3507;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln108_6_fu_1434_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln108_fu_1457_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln108_1_fu_1480_p1;
wire   [63:0] zext_ln108_2_fu_1503_p1;
wire   [63:0] zext_ln108_3_fu_1526_p1;
wire   [63:0] zext_ln108_4_fu_1549_p1;
wire   [63:0] zext_ln108_5_fu_1572_p1;
wire   [63:0] zext_ln108_7_fu_1595_p1;
wire   [63:0] zext_ln108_8_fu_1618_p1;
wire   [63:0] zext_ln108_9_fu_1641_p1;
wire   [63:0] zext_ln108_10_fu_1664_p1;
wire   [63:0] zext_ln108_11_fu_1687_p1;
wire   [63:0] zext_ln108_12_fu_1710_p1;
wire   [63:0] zext_ln108_13_fu_1777_p1;
wire   [63:0] zext_ln108_14_fu_1800_p1;
wire   [63:0] zext_ln108_16_fu_2186_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln99_fu_2204_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln106_fu_2254_p1;
wire   [63:0] zext_ln108_17_fu_2294_p1;
wire   [63:0] zext_ln108_18_fu_2336_p1;
wire   [63:0] zext_ln108_20_fu_2359_p1;
wire   [63:0] zext_ln108_15_fu_2530_p1;
wire   [63:0] zext_ln108_19_fu_2553_p1;
wire   [63:0] zext_ln108_21_fu_2576_p1;
wire   [63:0] zext_ln108_22_fu_2599_p1;
wire   [63:0] zext_ln108_23_fu_2622_p1;
wire   [63:0] zext_ln108_24_fu_2645_p1;
wire   [63:0] zext_ln108_25_fu_2668_p1;
wire   [63:0] zext_ln108_26_fu_2691_p1;
wire   [63:0] zext_ln108_27_fu_2704_p1;
wire   [63:0] zext_ln108_28_fu_2727_p1;
wire   [63:0] zext_ln108_29_fu_2750_p1;
wire   [63:0] zext_ln108_30_fu_2773_p1;
reg   [63:0] i_fu_140;
wire   [63:0] add_ln106_15_fu_2194_p2;
wire    ap_loop_init;
reg    W_3_ce1_local;
reg   [2:0] W_3_address1_local;
reg    W_3_we0_local;
reg   [31:0] W_3_d0_local;
reg    W_3_ce0_local;
reg   [2:0] W_3_address0_local;
reg    ap_predicate_pred633_state5;
reg    ap_predicate_pred490_state6;
reg    ap_predicate_pred488_state6;
wire   [31:0] xor_ln108_59_fu_2897_p2;
reg    ap_predicate_pred492_state6;
wire   [31:0] xor_ln108_38_fu_2804_p2;
reg    W_7_ce1_local;
reg   [2:0] W_7_address1_local;
reg    W_7_we0_local;
reg   [31:0] W_7_d0_local;
reg    W_7_ce0_local;
reg   [2:0] W_7_address0_local;
reg    ap_predicate_pred488_state5;
reg    ap_predicate_pred633_state6;
reg    W_11_ce1_local;
reg   [2:0] W_11_address1_local;
reg    W_11_we0_local;
reg   [31:0] W_11_d0_local;
reg    W_11_ce0_local;
reg   [2:0] W_11_address0_local;
reg    ap_predicate_pred490_state5;
reg    W_15_ce1_local;
reg   [2:0] W_15_address1_local;
reg    W_15_we0_local;
reg   [31:0] W_15_d0_local;
reg    W_15_ce0_local;
reg   [2:0] W_15_address0_local;
reg    ap_predicate_pred492_state5;
reg    W_1_ce0_local;
reg   [2:0] W_1_address0_local;
reg    W_1_we0_local;
reg   [31:0] W_1_d0_local;
wire   [31:0] xor_ln108_20_fu_2377_p2;
wire   [31:0] xor_ln108_53_fu_2859_p2;
reg    W_5_ce0_local;
reg   [2:0] W_5_address0_local;
reg    W_5_we0_local;
reg   [31:0] W_5_d0_local;
reg    W_9_ce0_local;
reg   [2:0] W_9_address0_local;
reg    W_9_we0_local;
reg   [31:0] W_9_d0_local;
reg    W_13_ce0_local;
reg   [2:0] W_13_address0_local;
reg    W_13_we0_local;
reg   [31:0] W_13_d0_local;
reg    W_ce0_local;
reg   [2:0] W_address0_local;
reg    W_we0_local;
reg   [31:0] W_d0_local;
wire   [31:0] xor_ln108_14_fu_2270_p2;
wire   [31:0] xor_ln108_50_fu_2840_p2;
wire   [31:0] xor_ln108_32_fu_2785_p2;
reg    W_4_ce0_local;
reg   [2:0] W_4_address0_local;
reg    W_4_we0_local;
reg   [31:0] W_4_d0_local;
reg    W_8_ce0_local;
reg   [2:0] W_8_address0_local;
reg    W_8_we0_local;
reg   [31:0] W_8_d0_local;
reg    W_12_ce0_local;
reg   [2:0] W_12_address0_local;
reg    W_12_we0_local;
reg   [31:0] W_12_d0_local;
reg    W_2_ce0_local;
reg   [2:0] W_2_address0_local;
reg    W_2_we0_local;
reg   [31:0] W_2_d0_local;
wire   [31:0] xor_ln108_17_fu_2311_p2;
wire   [31:0] xor_ln108_44_fu_2822_p2;
wire   [31:0] xor_ln108_56_fu_2877_p2;
reg    W_6_ce0_local;
reg   [2:0] W_6_address0_local;
reg    W_6_we0_local;
reg   [31:0] W_6_d0_local;
reg    W_10_ce0_local;
reg   [2:0] W_10_address0_local;
reg    W_10_we0_local;
reg   [31:0] W_10_d0_local;
reg    W_14_ce0_local;
reg   [2:0] W_14_address0_local;
reg    W_14_we0_local;
reg   [31:0] W_14_d0_local;
wire   [6:0] add_ln108_6_fu_1418_p2;
wire   [2:0] lshr_ln108_6_fu_1424_p4;
wire   [6:0] add_ln108_fu_1442_p2;
wire   [2:0] lshr_ln1_fu_1447_p4;
wire   [6:0] add_ln108_1_fu_1465_p2;
wire   [2:0] lshr_ln108_1_fu_1470_p4;
wire   [6:0] add_ln108_2_fu_1488_p2;
wire   [2:0] lshr_ln108_2_fu_1493_p4;
wire   [6:0] add_ln108_3_fu_1511_p2;
wire   [2:0] lshr_ln108_3_fu_1516_p4;
wire   [6:0] add_ln108_4_fu_1534_p2;
wire   [2:0] lshr_ln108_4_fu_1539_p4;
wire   [6:0] add_ln108_5_fu_1557_p2;
wire   [2:0] lshr_ln108_5_fu_1562_p4;
wire   [6:0] add_ln108_7_fu_1580_p2;
wire   [2:0] lshr_ln108_7_fu_1585_p4;
wire   [6:0] add_ln108_8_fu_1603_p2;
wire   [2:0] lshr_ln108_8_fu_1608_p4;
wire   [6:0] add_ln108_9_fu_1626_p2;
wire   [2:0] lshr_ln108_9_fu_1631_p4;
wire   [6:0] add_ln108_10_fu_1649_p2;
wire   [2:0] lshr_ln108_s_fu_1654_p4;
wire   [6:0] add_ln108_11_fu_1672_p2;
wire   [2:0] lshr_ln108_10_fu_1677_p4;
wire   [6:0] add_ln108_12_fu_1695_p2;
wire   [2:0] lshr_ln108_11_fu_1700_p4;
wire   [31:0] tmp_6_fu_1718_p9;
wire   [63:0] add_ln106_fu_1741_p2;
wire   [6:0] add_ln108_13_fu_1762_p2;
wire   [2:0] lshr_ln108_12_fu_1767_p4;
wire   [6:0] add_ln108_14_fu_1785_p2;
wire   [2:0] lshr_ln108_13_fu_1790_p4;
wire   [31:0] tmp_fu_1808_p9;
wire   [31:0] tmp_1_fu_1831_p9;
wire   [31:0] tmp_2_fu_1854_p9;
wire   [31:0] tmp_3_fu_1877_p9;
wire   [31:0] xor_ln108_1_fu_1906_p2;
wire   [31:0] tmp_4_fu_1918_p9;
wire   [31:0] tmp_5_fu_1941_p9;
wire   [31:0] tmp_7_fu_1964_p9;
wire   [31:0] xor_ln108_4_fu_1992_p2;
wire   [31:0] tmp_8_fu_2004_p9;
wire   [31:0] tmp_9_fu_2027_p9;
wire   [31:0] tmp_s_fu_2050_p9;
wire   [31:0] tmp_10_fu_2073_p9;
wire   [31:0] tmp_11_fu_2096_p9;
wire   [31:0] tmp_12_fu_2125_p9;
wire   [31:0] tmp_13_fu_2148_p9;
wire   [6:0] add_ln108_15_fu_2171_p2;
wire   [2:0] lshr_ln108_15_fu_2176_p4;
wire   [31:0] xor_ln108_6_fu_2223_p2;
wire   [31:0] xor_ln108_7_fu_2227_p2;
wire   [31:0] xor_ln108_10_fu_2241_p2;
wire   [31:0] xor_ln108_12_fu_2261_p2;
wire   [6:0] add_ln106_2_fu_2279_p2;
wire   [2:0] lshr_ln108_16_fu_2284_p4;
wire   [31:0] xor_ln108_16_fu_2307_p2;
wire   [6:0] add_ln106_3_fu_2321_p2;
wire   [2:0] lshr_ln108_17_fu_2326_p4;
wire   [6:0] add_ln106_5_fu_2344_p2;
wire   [2:0] lshr_ln108_19_fu_2349_p4;
wire   [31:0] xor_ln108_19_fu_2372_p2;
wire   [31:0] xor_ln108_22_fu_2391_p2;
wire   [31:0] xor_ln108_21_fu_2386_p2;
wire   [31:0] tmp_14_fu_2402_p9;
wire   [31:0] tmp_14_fu_2402_p11;
wire   [31:0] xor_ln108_24_fu_2425_p2;
wire   [31:0] xor_ln108_25_fu_2431_p2;
wire   [31:0] xor_ln108_28_fu_2446_p2;
wire   [31:0] xor_ln108_27_fu_2441_p2;
wire   [31:0] xor_ln108_33_fu_2466_p2;
wire   [31:0] xor_ln108_34_fu_2471_p2;
wire   [31:0] xor_ln108_40_fu_2487_p2;
wire   [31:0] xor_ln108_39_fu_2482_p2;
wire   [31:0] xor_ln108_45_fu_2504_p2;
wire   [31:0] xor_ln108_46_fu_2498_p2;
wire   [6:0] add_ln106_1_fu_2515_p2;
wire   [2:0] lshr_ln108_14_fu_2520_p4;
wire   [6:0] add_ln106_4_fu_2538_p2;
wire   [2:0] lshr_ln108_18_fu_2543_p4;
wire   [6:0] add_ln106_6_fu_2561_p2;
wire   [2:0] lshr_ln108_20_fu_2566_p4;
wire   [6:0] add_ln106_7_fu_2584_p2;
wire   [2:0] lshr_ln108_21_fu_2589_p4;
wire   [6:0] add_ln106_8_fu_2607_p2;
wire   [2:0] lshr_ln108_22_fu_2612_p4;
wire   [6:0] add_ln106_9_fu_2630_p2;
wire   [2:0] lshr_ln108_23_fu_2635_p4;
wire   [6:0] add_ln106_10_fu_2653_p2;
wire   [2:0] lshr_ln108_24_fu_2658_p4;
wire   [6:0] add_ln106_11_fu_2676_p2;
wire   [2:0] lshr_ln108_25_fu_2681_p4;
wire   [2:0] add_ln108_16_fu_2699_p2;
wire   [6:0] add_ln106_12_fu_2712_p2;
wire   [2:0] lshr_ln108_26_fu_2717_p4;
wire   [6:0] add_ln106_13_fu_2735_p2;
wire   [2:0] lshr_ln108_27_fu_2740_p4;
wire   [6:0] add_ln106_14_fu_2758_p2;
wire   [2:0] lshr_ln108_28_fu_2763_p4;
wire   [31:0] xor_ln108_31_fu_2781_p2;
wire   [31:0] xor_ln108_36_fu_2794_p2;
wire   [31:0] xor_ln108_37_fu_2799_p2;
wire   [31:0] xor_ln108_43_fu_2817_p2;
wire   [31:0] xor_ln108_42_fu_2813_p2;
wire   [31:0] xor_ln108_49_fu_2836_p2;
wire   [31:0] xor_ln108_48_fu_2832_p2;
wire   [31:0] xor_ln108_52_fu_2854_p2;
wire   [31:0] xor_ln108_51_fu_2850_p2;
wire   [31:0] xor_ln108_55_fu_2873_p2;
wire   [31:0] xor_ln108_54_fu_2869_p2;
wire   [31:0] xor_ln108_58_fu_2892_p2;
wire   [31:0] xor_ln108_57_fu_2887_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1727;
reg    ap_condition_1731;
reg    ap_condition_1735;
reg    ap_condition_1739;
reg    ap_condition_1743;
reg    ap_condition_1748;
reg    ap_condition_1751;
reg    ap_condition_1757;
reg    ap_condition_1761;
reg    ap_condition_1765;
reg    ap_condition_1768;
reg    ap_condition_1771;
reg    ap_condition_1775;
reg    ap_condition_1778;
reg    ap_condition_1781;
reg    ap_condition_1785;
wire   [3:0] tmp_6_fu_1718_p1;
wire   [3:0] tmp_6_fu_1718_p3;
wire  signed [3:0] tmp_6_fu_1718_p5;
wire  signed [3:0] tmp_6_fu_1718_p7;
wire   [3:0] tmp_fu_1808_p1;
wire  signed [3:0] tmp_fu_1808_p3;
wire  signed [3:0] tmp_fu_1808_p5;
wire   [3:0] tmp_fu_1808_p7;
wire  signed [3:0] tmp_1_fu_1831_p1;
wire  signed [3:0] tmp_1_fu_1831_p3;
wire   [3:0] tmp_1_fu_1831_p5;
wire   [3:0] tmp_1_fu_1831_p7;
wire   [3:0] tmp_2_fu_1854_p1;
wire   [3:0] tmp_2_fu_1854_p3;
wire  signed [3:0] tmp_2_fu_1854_p5;
wire  signed [3:0] tmp_2_fu_1854_p7;
wire   [3:0] tmp_3_fu_1877_p1;
wire   [3:0] tmp_3_fu_1877_p3;
wire  signed [3:0] tmp_3_fu_1877_p5;
wire  signed [3:0] tmp_3_fu_1877_p7;
wire   [3:0] tmp_4_fu_1918_p1;
wire  signed [3:0] tmp_4_fu_1918_p3;
wire  signed [3:0] tmp_4_fu_1918_p5;
wire   [3:0] tmp_4_fu_1918_p7;
wire  signed [3:0] tmp_5_fu_1941_p1;
wire  signed [3:0] tmp_5_fu_1941_p3;
wire   [3:0] tmp_5_fu_1941_p5;
wire   [3:0] tmp_5_fu_1941_p7;
wire   [3:0] tmp_7_fu_1964_p1;
wire   [3:0] tmp_7_fu_1964_p3;
wire  signed [3:0] tmp_7_fu_1964_p5;
wire  signed [3:0] tmp_7_fu_1964_p7;
wire   [3:0] tmp_8_fu_2004_p1;
wire  signed [3:0] tmp_8_fu_2004_p3;
wire  signed [3:0] tmp_8_fu_2004_p5;
wire   [3:0] tmp_8_fu_2004_p7;
wire  signed [3:0] tmp_9_fu_2027_p1;
wire  signed [3:0] tmp_9_fu_2027_p3;
wire   [3:0] tmp_9_fu_2027_p5;
wire   [3:0] tmp_9_fu_2027_p7;
wire  signed [3:0] tmp_s_fu_2050_p1;
wire   [3:0] tmp_s_fu_2050_p3;
wire   [3:0] tmp_s_fu_2050_p5;
wire  signed [3:0] tmp_s_fu_2050_p7;
wire  signed [3:0] tmp_10_fu_2073_p1;
wire  signed [3:0] tmp_10_fu_2073_p3;
wire   [3:0] tmp_10_fu_2073_p5;
wire   [3:0] tmp_10_fu_2073_p7;
wire  signed [3:0] tmp_11_fu_2096_p1;
wire   [3:0] tmp_11_fu_2096_p3;
wire   [3:0] tmp_11_fu_2096_p5;
wire  signed [3:0] tmp_11_fu_2096_p7;
wire   [3:0] tmp_12_fu_2125_p1;
wire  signed [3:0] tmp_12_fu_2125_p3;
wire  signed [3:0] tmp_12_fu_2125_p5;
wire   [3:0] tmp_12_fu_2125_p7;
wire  signed [3:0] tmp_13_fu_2148_p1;
wire   [3:0] tmp_13_fu_2148_p3;
wire   [3:0] tmp_13_fu_2148_p5;
wire  signed [3:0] tmp_13_fu_2148_p7;
wire  signed [3:0] tmp_14_fu_2402_p1;
wire   [3:0] tmp_14_fu_2402_p3;
wire   [3:0] tmp_14_fu_2402_p5;
wire  signed [3:0] tmp_14_fu_2402_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_140 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U6(.din0(W_3_q1),.din1(W_7_q1),.din2(W_11_q1),.din3(W_15_q1),.def(tmp_6_fu_1718_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_6_fu_1718_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h8 ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U7(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_fu_1808_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_fu_1808_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U8(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_1_fu_1831_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_1_fu_1831_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U9(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_2_fu_1854_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_2_fu_1854_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U10(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_3_fu_1877_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_3_fu_1877_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h8 ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U11(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_4_fu_1918_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_4_fu_1918_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U12(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_5_fu_1941_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_5_fu_1941_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U13(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_7_fu_1964_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_7_fu_1964_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h8 ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U14(.din0(W_3_q1),.din1(W_7_q1),.din2(W_11_q1),.din3(W_15_q1),.def(tmp_8_fu_2004_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_8_fu_2004_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U15(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_9_fu_2027_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_9_fu_2027_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U16(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_s_fu_2050_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_s_fu_2050_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U17(.din0(W_3_q1),.din1(W_7_q1),.din2(W_11_q1),.din3(W_15_q1),.def(tmp_10_fu_2073_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_10_fu_2073_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U18(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_11_fu_2096_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_11_fu_2096_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h8 ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U19(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_12_fu_2125_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_12_fu_2125_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U20(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_13_fu_2148_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_13_fu_2148_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U21(.din0(W_3_q1),.din1(W_7_q1),.din2(W_11_q1),.din3(W_15_q1),.def(tmp_14_fu_2402_p9),.sel(trunc_ln6_reg_2920),.dout(tmp_14_fu_2402_p11));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1)) | ((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_140 <= 64'd16;
    end else if (((icmp_ln106_reg_3251 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        i_fu_140 <= add_ln106_15_fu_2194_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred488_state5 <= ((icmp_ln106_reg_3251 == 1'd1) & (trunc_ln6_reg_2920 == 4'd0));
        ap_predicate_pred490_state5 <= ((icmp_ln106_reg_3251 == 1'd1) & (trunc_ln6_reg_2920 == 4'd4));
        ap_predicate_pred492_state5 <= ((icmp_ln106_reg_3251 == 1'd1) & (trunc_ln6_reg_2920 == 4'd8));
        ap_predicate_pred633_state5 <= (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (icmp_ln106_reg_3251 == 1'd1));
        tmp_10_reg_3385 <= tmp_10_fu_2073_p11;
        tmp_11_reg_3392 <= tmp_11_fu_2096_p11;
        tmp_12_reg_3404 <= tmp_12_fu_2125_p11;
        tmp_13_reg_3410 <= tmp_13_fu_2148_p11;
        tmp_1_reg_3301 <= tmp_1_fu_1831_p11;
        tmp_2_reg_3307 <= tmp_2_fu_1854_p11;
        tmp_3_reg_3313 <= tmp_3_fu_1877_p11;
        tmp_4_reg_3332 <= tmp_4_fu_1918_p11;
        tmp_5_reg_3338 <= tmp_5_fu_1941_p11;
        tmp_7_reg_3344 <= tmp_7_fu_1964_p11;
        tmp_8_reg_3364 <= tmp_8_fu_2004_p11;
        tmp_9_reg_3371 <= tmp_9_fu_2027_p11;
        tmp_reg_3295 <= tmp_fu_1808_p11;
        tmp_s_reg_3378 <= tmp_s_fu_2050_p11;
        xor_ln108_2_reg_3323 <= xor_ln108_2_fu_1912_p2;
        xor_ln108_3_reg_3349 <= xor_ln108_3_fu_1987_p2;
        xor_ln108_5_reg_3354 <= xor_ln108_5_fu_1998_p2;
        xor_ln108_9_reg_3398 <= xor_ln108_9_fu_2119_p2;
        xor_ln108_reg_3318 <= xor_ln108_fu_1900_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred488_state6 <= ((icmp_ln106_reg_3251 == 1'd1) & (trunc_ln6_reg_2920 == 4'd0));
        ap_predicate_pred490_state6 <= ((icmp_ln106_reg_3251 == 1'd1) & (trunc_ln6_reg_2920 == 4'd4));
        ap_predicate_pred492_state6 <= ((icmp_ln106_reg_3251 == 1'd1) & (trunc_ln6_reg_2920 == 4'd8));
        ap_predicate_pred633_state6 <= (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (icmp_ln106_reg_3251 == 1'd1));
        xor_ln108_11_reg_3442 <= xor_ln108_11_fu_2245_p2;
        xor_ln108_13_reg_3447 <= xor_ln108_13_fu_2265_p2;
        xor_ln108_15_reg_3452 <= xor_ln108_15_fu_2302_p2;
        xor_ln108_18_reg_3457 <= xor_ln108_18_fu_2367_p2;
        xor_ln108_23_reg_3462 <= xor_ln108_23_fu_2396_p2;
        xor_ln108_26_reg_3470 <= xor_ln108_26_fu_2436_p2;
        xor_ln108_29_reg_3479 <= xor_ln108_29_fu_2451_p2;
        xor_ln108_30_reg_3484 <= xor_ln108_30_fu_2461_p2;
        xor_ln108_35_reg_3490 <= xor_ln108_35_fu_2476_p2;
        xor_ln108_41_reg_3498 <= xor_ln108_41_fu_2492_p2;
        xor_ln108_47_reg_3507 <= xor_ln108_47_fu_2509_p2;
        xor_ln108_8_reg_3437 <= xor_ln108_8_fu_2232_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_reg_2914 <= i_fu_140;
        lshr_ln_reg_2973 <= {{i_fu_140[6:4]}};
        trunc_ln6_1_reg_2940 <= trunc_ln6_1_fu_1404_p1;
        trunc_ln6_reg_2920 <= trunc_ln6_fu_1400_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln106_reg_3251 <= icmp_ln106_fu_1756_p2;
        lshr_ln2_reg_3246 <= {{add_ln106_fu_1741_p2[6:4]}};
        tmp_6_reg_3239 <= tmp_6_fu_1718_p11;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_10_address0_local = zext_ln108_25_fu_2668_p1;
    end else if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_10_address0_local = zext_ln108_29_fu_2750_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_10_address0_local = zext_ln108_21_fu_2576_p1;
    end else if (((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_address0_local = zext_ln108_17_fu_2294_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_10_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_10_address0_local = zext_ln108_14_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_10_address0_local = zext_ln108_9_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_10_address0_local = zext_ln108_4_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_10_address0_local = zext_ln108_2_fu_1503_p1;
    end else begin
        W_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920== 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_10_d0_local = xor_ln108_44_fu_2822_p2;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_10_d0_local = xor_ln108_56_fu_2877_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_10_d0_local = xor_ln108_35_reg_3490;
        end else if ((1'b1 == ap_condition_1731)) begin
            W_10_d0_local = xor_ln108_17_fu_2311_p2;
        end else if ((1'b1 == ap_condition_1727)) begin
            W_10_d0_local = xor_ln108_8_fu_2232_p2;
        end else begin
            W_10_d0_local = 'bx;
        end
    end else begin
        W_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)))) begin
        W_10_we0_local = 1'b1;
    end else begin
        W_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_11_address0_local = zext_ln108_26_fu_2691_p1;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_11_address0_local = zext_ln108_30_fu_2773_p1;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_11_address0_local = zext_ln108_22_fu_2599_p1;
        end else if ((1'b1 == ap_condition_1731)) begin
            W_11_address0_local = zext_ln108_18_fu_2336_p1;
        end else if ((1'b1 == ap_condition_1727)) begin
            W_11_address0_local = zext_ln99_fu_2204_p1;
        end else begin
            W_11_address0_local = 'bx;
        end
    end else begin
        W_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_11_address1_local = zext_ln108_16_fu_2186_p1;
        end else if ((1'b1 == ap_condition_1751)) begin
            W_11_address1_local = zext_ln108_11_fu_1687_p1;
        end else if ((1'b1 == ap_condition_1748)) begin
            W_11_address1_local = zext_ln108_8_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_11_address1_local = zext_ln108_6_fu_1434_p1;
        end else begin
            W_11_address1_local = 'bx;
        end
    end else begin
        W_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_11_ce1_local = 1'b1;
    end else begin
        W_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_11_d0_local = xor_ln108_47_reg_3507;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_11_d0_local = xor_ln108_59_fu_2897_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_11_d0_local = xor_ln108_38_fu_2804_p2;
        end else if ((1'b1 == ap_condition_1731)) begin
            W_11_d0_local = xor_ln108_29_fu_2451_p2;
        end else if ((1'b1 == ap_condition_1727)) begin
            W_11_d0_local = xor_ln108_11_fu_2245_p2;
        end else begin
            W_11_d0_local = 'bx;
        end
    end else begin
        W_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)))) begin
        W_11_we0_local = 1'b1;
    end else begin
        W_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_12_address0_local = zext_ln108_27_fu_2704_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_12_address0_local = zext_ln108_23_fu_2622_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_12_address0_local = zext_ln108_19_fu_2553_p1;
    end else if (((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_address0_local = zext_ln106_fu_2254_p1;
    end else if ((~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_12_address0_local = zext_ln108_13_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_12_address0_local = zext_ln108_10_fu_1664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_12_address0_local = zext_ln108_3_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_12_address0_local = zext_ln108_1_fu_1480_p1;
    end else begin
        W_12_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_12_d0_local = xor_ln108_50_fu_2840_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_12_d0_local = xor_ln108_23_reg_3462;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_12_d0_local = xor_ln108_32_fu_2785_p2;
        end else if ((1'b1 == ap_condition_1761)) begin
            W_12_d0_local = xor_ln108_14_fu_2270_p2;
        end else if ((1'b1 == ap_condition_1757)) begin
            W_12_d0_local = xor_ln108_2_reg_3323;
        end else begin
            W_12_d0_local = 'bx;
        end
    end else begin
        W_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_12_we0_local = 1'b1;
    end else begin
        W_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_13_address0_local = zext_ln108_28_fu_2727_p1;
    end else if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_13_address0_local = zext_ln108_15_fu_2530_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_13_address0_local = zext_ln108_24_fu_2645_p1;
    end else if (((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_address0_local = zext_ln108_20_fu_2359_p1;
    end else if ((~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_13_address0_local = zext_ln108_12_fu_1710_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_13_address0_local = zext_ln108_7_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_13_address0_local = zext_ln108_5_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_13_address0_local = zext_ln108_fu_1457_p1;
    end else begin
        W_13_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 ==ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_13_d0_local = xor_ln108_53_fu_2859_p2;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_13_d0_local = xor_ln108_26_reg_3470;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_13_d0_local = xor_ln108_41_reg_3498;
        end else if ((1'b1 == ap_condition_1731)) begin
            W_13_d0_local = xor_ln108_20_fu_2377_p2;
        end else if ((1'b1 == ap_condition_1757)) begin
            W_13_d0_local = xor_ln108_5_reg_3354;
        end else begin
            W_13_d0_local = 'bx;
        end
    end else begin
        W_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_13_we0_local = 1'b1;
    end else begin
        W_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_14_address0_local = zext_ln108_29_fu_2750_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_14_address0_local = zext_ln108_25_fu_2668_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_14_address0_local = zext_ln108_21_fu_2576_p1;
    end else if (((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_address0_local = zext_ln108_17_fu_2294_p1;
    end else if ((~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_14_address0_local = zext_ln108_14_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_14_address0_local = zext_ln108_9_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_14_address0_local = zext_ln108_4_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_14_address0_local = zext_ln108_2_fu_1503_p1;
    end else begin
        W_14_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_14_d0_local = xor_ln108_56_fu_2877_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_14_d0_local = xor_ln108_44_fu_2822_p2;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_14_d0_local = xor_ln108_35_reg_3490;
        end else if ((1'b1 == ap_condition_1761)) begin
            W_14_d0_local = xor_ln108_17_fu_2311_p2;
        end else if ((1'b1 == ap_condition_1757)) begin
            W_14_d0_local = xor_ln108_8_fu_2232_p2;
        end else begin
            W_14_d0_local = 'bx;
        end
    end else begin
        W_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_14_we0_local = 1'b1;
    end else begin
        W_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_15_address0_local = zext_ln108_30_fu_2773_p1;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_15_address0_local = zext_ln108_26_fu_2691_p1;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_15_address0_local = zext_ln108_22_fu_2599_p1;
        end else if ((1'b1 == ap_condition_1761)) begin
            W_15_address0_local = zext_ln108_18_fu_2336_p1;
        end else if ((1'b1 == ap_condition_1757)) begin
            W_15_address0_local = zext_ln99_fu_2204_p1;
        end else begin
            W_15_address0_local = 'bx;
        end
    end else begin
        W_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_15_address1_local = zext_ln108_16_fu_2186_p1;
        end else if ((1'b1 == ap_condition_1768)) begin
            W_15_address1_local = zext_ln108_11_fu_1687_p1;
        end else if ((1'b1 == ap_condition_1751)) begin
            W_15_address1_local = zext_ln108_8_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_15_address1_local = zext_ln108_6_fu_1434_p1;
        end else begin
            W_15_address1_local = 'bx;
        end
    end else begin
        W_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_15_ce1_local = 1'b1;
    end else begin
        W_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_15_d0_local = xor_ln108_59_fu_2897_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_15_d0_local = xor_ln108_47_reg_3507;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_15_d0_local = xor_ln108_38_fu_2804_p2;
        end else if ((1'b1 == ap_condition_1761)) begin
            W_15_d0_local = xor_ln108_29_fu_2451_p2;
        end else if ((1'b1 == ap_condition_1757)) begin
            W_15_d0_local = xor_ln108_11_fu_2245_p2;
        end else begin
            W_15_d0_local = 'bx;
        end
    end else begin
        W_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_15_we0_local = 1'b1;
    end else begin
        W_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln108_15_fu_2530_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln108_28_fu_2727_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln108_24_fu_2645_p1;
    end else if (((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_address0_local = zext_ln108_20_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_1_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_1_address0_local = zext_ln108_12_fu_1710_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_1_address0_local = zext_ln108_7_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_1_address0_local = zext_ln108_5_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_1_address0_local = zext_ln108_fu_1457_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0== ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_1_d0_local = xor_ln108_26_reg_3470;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_1_d0_local = xor_ln108_53_fu_2859_p2;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_1_d0_local = xor_ln108_41_reg_3498;
        end else if ((1'b1 == ap_condition_1761)) begin
            W_1_d0_local = xor_ln108_20_fu_2377_p2;
        end else if ((1'b1 == ap_condition_1771)) begin
            W_1_d0_local = xor_ln108_5_reg_3354;
        end else begin
            W_1_d0_local = 'bx;
        end
    end else begin
        W_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_address0_local = zext_ln108_21_fu_2576_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_address0_local = zext_ln108_29_fu_2750_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_address0_local = zext_ln108_25_fu_2668_p1;
    end else if (((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_address0_local = zext_ln108_17_fu_2294_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_2_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_2_address0_local = zext_ln108_14_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_2_address0_local = zext_ln108_9_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_2_address0_local = zext_ln108_4_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_2_address0_local = zext_ln108_2_fu_1503_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920== 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1739)) begin
            W_2_d0_local = xor_ln108_35_reg_3490;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_2_d0_local = xor_ln108_56_fu_2877_p2;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_2_d0_local = xor_ln108_44_fu_2822_p2;
        end else if ((1'b1 == ap_condition_1775)) begin
            W_2_d0_local = xor_ln108_17_fu_2311_p2;
        end else if ((1'b1 == ap_condition_1771)) begin
            W_2_d0_local = xor_ln108_8_fu_2232_p2;
        end else begin
            W_2_d0_local = 'bx;
        end
    end else begin
        W_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1739)) begin
            W_3_address0_local = zext_ln108_22_fu_2599_p1;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_3_address0_local = zext_ln108_30_fu_2773_p1;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_3_address0_local = zext_ln108_26_fu_2691_p1;
        end else if ((1'b1 == ap_condition_1775)) begin
            W_3_address0_local = zext_ln108_18_fu_2336_p1;
        end else if ((1'b1 == ap_condition_1771)) begin
            W_3_address0_local = zext_ln99_fu_2204_p1;
        end else begin
            W_3_address0_local = 'bx;
        end
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_3_address1_local = zext_ln108_16_fu_2186_p1;
        end else if ((1'b1 == ap_condition_1778)) begin
            W_3_address1_local = zext_ln108_11_fu_1687_p1;
        end else if ((1'b1 == ap_condition_1768)) begin
            W_3_address1_local = zext_ln108_8_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_3_address1_local = zext_ln108_6_fu_1434_p1;
        end else begin
            W_3_address1_local = 'bx;
        end
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1739)) begin
            W_3_d0_local = xor_ln108_38_fu_2804_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_3_d0_local = xor_ln108_59_fu_2897_p2;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_3_d0_local = xor_ln108_47_reg_3507;
        end else if ((1'b1 == ap_condition_1775)) begin
            W_3_d0_local = xor_ln108_29_fu_2451_p2;
        end else if ((1'b1 == ap_condition_1771)) begin
            W_3_d0_local = xor_ln108_11_fu_2245_p2;
        end else begin
            W_3_d0_local = 'bx;
        end
    end else begin
        W_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_address0_local = zext_ln108_19_fu_2553_p1;
    end else if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_address0_local = zext_ln108_23_fu_2622_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_address0_local = zext_ln108_27_fu_2704_p1;
    end else if (((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_address0_local = zext_ln106_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_4_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_4_address0_local = zext_ln108_13_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_4_address0_local = zext_ln108_10_fu_1664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_4_address0_local = zext_ln108_3_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_4_address0_local = zext_ln108_1_fu_1480_p1;
    end else begin
        W_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920== 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_4_d0_local = xor_ln108_32_fu_2785_p2;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_4_d0_local = xor_ln108_23_reg_3462;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_4_d0_local = xor_ln108_50_fu_2840_p2;
        end else if ((1'b1 == ap_condition_1785)) begin
            W_4_d0_local = xor_ln108_14_fu_2270_p2;
        end else if ((1'b1 == ap_condition_1781)) begin
            W_4_d0_local = xor_ln108_2_reg_3323;
        end else begin
            W_4_d0_local = 'bx;
        end
    end else begin
        W_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_address0_local = zext_ln108_24_fu_2645_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_address0_local = zext_ln108_15_fu_2530_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_address0_local = zext_ln108_28_fu_2727_p1;
    end else if (((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_address0_local = zext_ln108_20_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_5_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_5_address0_local = zext_ln108_12_fu_1710_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_5_address0_local = zext_ln108_7_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_5_address0_local = zext_ln108_5_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_5_address0_local = zext_ln108_fu_1457_p1;
    end else begin
        W_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0== ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1739)) begin
            W_5_d0_local = xor_ln108_41_reg_3498;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_5_d0_local = xor_ln108_26_reg_3470;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_5_d0_local = xor_ln108_53_fu_2859_p2;
        end else if ((1'b1 == ap_condition_1775)) begin
            W_5_d0_local = xor_ln108_20_fu_2377_p2;
        end else if ((1'b1 == ap_condition_1781)) begin
            W_5_d0_local = xor_ln108_5_reg_3354;
        end else begin
            W_5_d0_local = 'bx;
        end
    end else begin
        W_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_address0_local = zext_ln108_21_fu_2576_p1;
    end else if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_address0_local = zext_ln108_25_fu_2668_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_address0_local = zext_ln108_29_fu_2750_p1;
    end else if (((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_address0_local = zext_ln108_17_fu_2294_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_6_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_6_address0_local = zext_ln108_14_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_6_address0_local = zext_ln108_9_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_6_address0_local = zext_ln108_4_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_6_address0_local = zext_ln108_2_fu_1503_p1;
    end else begin
        W_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920== 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_6_d0_local = xor_ln108_35_reg_3490;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_6_d0_local = xor_ln108_44_fu_2822_p2;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_6_d0_local = xor_ln108_56_fu_2877_p2;
        end else if ((1'b1 == ap_condition_1785)) begin
            W_6_d0_local = xor_ln108_17_fu_2311_p2;
        end else if ((1'b1 == ap_condition_1781)) begin
            W_6_d0_local = xor_ln108_8_fu_2232_p2;
        end else begin
            W_6_d0_local = 'bx;
        end
    end else begin
        W_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_7_address0_local = zext_ln108_22_fu_2599_p1;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_7_address0_local = zext_ln108_26_fu_2691_p1;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_7_address0_local = zext_ln108_30_fu_2773_p1;
        end else if ((1'b1 == ap_condition_1785)) begin
            W_7_address0_local = zext_ln108_18_fu_2336_p1;
        end else if ((1'b1 == ap_condition_1781)) begin
            W_7_address0_local = zext_ln99_fu_2204_p1;
        end else begin
            W_7_address0_local = 'bx;
        end
    end else begin
        W_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_7_address1_local = zext_ln108_16_fu_2186_p1;
        end else if ((1'b1 == ap_condition_1748)) begin
            W_7_address1_local = zext_ln108_11_fu_1687_p1;
        end else if ((1'b1 == ap_condition_1778)) begin
            W_7_address1_local = zext_ln108_8_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_7_address1_local = zext_ln108_6_fu_1434_p1;
        end else begin
            W_7_address1_local = 'bx;
        end
    end else begin
        W_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_7_d0_local = xor_ln108_38_fu_2804_p2;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_7_d0_local = xor_ln108_47_reg_3507;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_7_d0_local = xor_ln108_59_fu_2897_p2;
        end else if ((1'b1 == ap_condition_1785)) begin
            W_7_d0_local = xor_ln108_29_fu_2451_p2;
        end else if ((1'b1 == ap_condition_1781)) begin
            W_7_d0_local = xor_ln108_11_fu_2245_p2;
        end else begin
            W_7_d0_local = 'bx;
        end
    end else begin
        W_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_8_address0_local = zext_ln108_23_fu_2622_p1;
    end else if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_8_address0_local = zext_ln108_27_fu_2704_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_8_address0_local = zext_ln108_19_fu_2553_p1;
    end else if (((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_address0_local = zext_ln106_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_8_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_8_address0_local = zext_ln108_13_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_8_address0_local = zext_ln108_10_fu_1664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_8_address0_local = zext_ln108_3_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_8_address0_local = zext_ln108_1_fu_1480_p1;
    end else begin
        W_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920== 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_8_d0_local = xor_ln108_23_reg_3462;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_8_d0_local = xor_ln108_50_fu_2840_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_8_d0_local = xor_ln108_32_fu_2785_p2;
        end else if ((1'b1 == ap_condition_1731)) begin
            W_8_d0_local = xor_ln108_14_fu_2270_p2;
        end else if ((1'b1 == ap_condition_1727)) begin
            W_8_d0_local = xor_ln108_2_reg_3323;
        end else begin
            W_8_d0_local = 'bx;
        end
    end else begin
        W_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)))) begin
        W_8_we0_local = 1'b1;
    end else begin
        W_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_9_address0_local = zext_ln108_24_fu_2645_p1;
    end else if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_9_address0_local = zext_ln108_28_fu_2727_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_9_address0_local = zext_ln108_15_fu_2530_p1;
    end else if (((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_address0_local = zext_ln108_20_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_9_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_9_address0_local = zext_ln108_12_fu_1710_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_9_address0_local = zext_ln108_7_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_9_address0_local = zext_ln108_5_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_9_address0_local = zext_ln108_fu_1457_p1;
    end else begin
        W_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0== ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1743)) begin
            W_9_d0_local = xor_ln108_41_reg_3498;
        end else if ((1'b1 == ap_condition_1739)) begin
            W_9_d0_local = xor_ln108_53_fu_2859_p2;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_9_d0_local = xor_ln108_26_reg_3470;
        end else if ((1'b1 == ap_condition_1785)) begin
            W_9_d0_local = xor_ln108_20_fu_2377_p2;
        end else if ((1'b1 == ap_condition_1727)) begin
            W_9_d0_local = xor_ln108_5_reg_3354;
        end else begin
            W_9_d0_local = 'bx;
        end
    end else begin
        W_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8)))) begin
        W_9_we0_local = 1'b1;
    end else begin
        W_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln108_19_fu_2553_p1;
    end else if (((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln108_27_fu_2704_p1;
    end else if (((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln108_23_fu_2622_p1;
    end else if (((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_address0_local = zext_ln106_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_address0_local = zext_ln99_fu_2204_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4))) begin
        W_address0_local = zext_ln108_13_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12))) begin
        W_address0_local = zext_ln108_10_fu_1664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0))) begin
        W_address0_local = zext_ln108_3_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8))) begin
        W_address0_local = zext_ln108_1_fu_1480_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln106_fu_1756_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920== 4'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1739)) begin
            W_d0_local = xor_ln108_32_fu_2785_p2;
        end else if ((1'b1 == ap_condition_1735)) begin
            W_d0_local = xor_ln108_50_fu_2840_p2;
        end else if ((1'b1 == ap_condition_1765)) begin
            W_d0_local = xor_ln108_23_reg_3462;
        end else if ((1'b1 == ap_condition_1775)) begin
            W_d0_local = xor_ln108_14_fu_2270_p2;
        end else if ((1'b1 == ap_condition_1771)) begin
            W_d0_local = xor_ln108_2_reg_3323;
        end else begin
            W_d0_local = 'bx;
        end
    end else begin
        W_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0)))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_reg_3251 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_reg_3251 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
assign W_10_address0 = W_10_address0_local;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_d0 = W_10_d0_local;
assign W_10_we0 = W_10_we0_local;
assign W_11_address0 = W_11_address0_local;
assign W_11_address1 = W_11_address1_local;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_ce1 = W_11_ce1_local;
assign W_11_d0 = W_11_d0_local;
assign W_11_we0 = W_11_we0_local;
assign W_12_address0 = W_12_address0_local;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_d0 = W_12_d0_local;
assign W_12_we0 = W_12_we0_local;
assign W_13_address0 = W_13_address0_local;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_d0 = W_13_d0_local;
assign W_13_we0 = W_13_we0_local;
assign W_14_address0 = W_14_address0_local;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_d0 = W_14_d0_local;
assign W_14_we0 = W_14_we0_local;
assign W_15_address0 = W_15_address0_local;
assign W_15_address1 = W_15_address1_local;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_ce1 = W_15_ce1_local;
assign W_15_d0 = W_15_d0_local;
assign W_15_we0 = W_15_we0_local;
assign W_1_address0 = W_1_address0_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_d0 = W_1_d0_local;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_d0 = W_2_d0_local;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = W_3_address1_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = W_3_d0_local;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = W_4_address0_local;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_d0 = W_4_d0_local;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = W_5_address0_local;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_d0 = W_5_d0_local;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = W_6_address0_local;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_d0 = W_6_d0_local;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = W_7_address0_local;
assign W_7_address1 = W_7_address1_local;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d0 = W_7_d0_local;
assign W_7_we0 = W_7_we0_local;
assign W_8_address0 = W_8_address0_local;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_d0 = W_8_d0_local;
assign W_8_we0 = W_8_we0_local;
assign W_9_address0 = W_9_address0_local;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_d0 = W_9_d0_local;
assign W_9_we0 = W_9_we0_local;
assign W_address0 = W_address0_local;
assign W_ce0 = W_ce0_local;
assign W_d0 = W_d0_local;
assign W_we0 = W_we0_local;
assign add_ln106_10_fu_2653_p2 = (trunc_ln6_1_reg_2940 + 7'd14);
assign add_ln106_11_fu_2676_p2 = (trunc_ln6_1_reg_2940 + 7'd15);
assign add_ln106_12_fu_2712_p2 = (trunc_ln6_1_reg_2940 + 7'd17);
assign add_ln106_13_fu_2735_p2 = (trunc_ln6_1_reg_2940 + 7'd18);
assign add_ln106_14_fu_2758_p2 = (trunc_ln6_1_reg_2940 + 7'd19);
assign add_ln106_15_fu_2194_p2 = (i_2_reg_2914 + 64'd20);
assign add_ln106_1_fu_2515_p2 = (trunc_ln6_1_reg_2940 + 7'd5);
assign add_ln106_2_fu_2279_p2 = (trunc_ln6_1_reg_2940 + 7'd6);
assign add_ln106_3_fu_2321_p2 = (trunc_ln6_1_reg_2940 + 7'd7);
assign add_ln106_4_fu_2538_p2 = (trunc_ln6_1_reg_2940 + 7'd8);
assign add_ln106_5_fu_2344_p2 = (trunc_ln6_1_reg_2940 + 7'd9);
assign add_ln106_6_fu_2561_p2 = (trunc_ln6_1_reg_2940 + 7'd10);
assign add_ln106_7_fu_2584_p2 = (trunc_ln6_1_reg_2940 + 7'd11);
assign add_ln106_8_fu_2607_p2 = (trunc_ln6_1_reg_2940 + 7'd12);
assign add_ln106_9_fu_2630_p2 = (trunc_ln6_1_reg_2940 + 7'd13);
assign add_ln106_fu_1741_p2 = (i_2_reg_2914 + 64'd4);
assign add_ln108_10_fu_1649_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd116));
assign add_ln108_11_fu_1672_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd123));
assign add_ln108_12_fu_1695_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd117));
assign add_ln108_13_fu_1762_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd124));
assign add_ln108_14_fu_1785_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd118));
assign add_ln108_15_fu_2171_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd119));
assign add_ln108_16_fu_2699_p2 = (lshr_ln_reg_2973 + 3'd1);
assign add_ln108_1_fu_1465_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd120));
assign add_ln108_2_fu_1488_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd114));
assign add_ln108_3_fu_1511_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd112));
assign add_ln108_4_fu_1534_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd126));
assign add_ln108_5_fu_1557_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd121));
assign add_ln108_6_fu_1418_p2 = ($signed(trunc_ln6_1_fu_1404_p1) + $signed(7'd115));
assign add_ln108_7_fu_1580_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd113));
assign add_ln108_8_fu_1603_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd127));
assign add_ln108_9_fu_1626_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd122));
assign add_ln108_fu_1442_p2 = ($signed(trunc_ln6_1_reg_2940) + $signed(7'd125));
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
always @ (*) begin
    ap_condition_1727 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd8));
end
always @ (*) begin
    ap_condition_1731 = ((ap_predicate_pred490_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1735 = ((ap_predicate_pred488_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1739 = ((ap_predicate_pred492_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1743 = ((ap_predicate_pred633_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1748 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd12));
end
always @ (*) begin
    ap_condition_1751 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd0));
end
always @ (*) begin
    ap_condition_1757 = (~(trunc_ln6_reg_2920 == 4'd0) & ~(trunc_ln6_reg_2920 == 4'd8) & ~(trunc_ln6_reg_2920 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1761 = ((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1765 = ((ap_predicate_pred490_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1768 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd4));
end
always @ (*) begin
    ap_condition_1771 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd0));
end
always @ (*) begin
    ap_condition_1775 = ((ap_predicate_pred633_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1778 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln6_reg_2920 == 4'd8));
end
always @ (*) begin
    ap_condition_1781 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln6_reg_2920 == 4'd4));
end
always @ (*) begin
    ap_condition_1785 = ((ap_predicate_pred488_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_1756_p2 = (($signed(add_ln106_fu_1741_p2) < $signed(64'd80)) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_1677_p4 = {{add_ln108_11_fu_1672_p2[6:4]}};
assign lshr_ln108_11_fu_1700_p4 = {{add_ln108_12_fu_1695_p2[6:4]}};
assign lshr_ln108_12_fu_1767_p4 = {{add_ln108_13_fu_1762_p2[6:4]}};
assign lshr_ln108_13_fu_1790_p4 = {{add_ln108_14_fu_1785_p2[6:4]}};
assign lshr_ln108_14_fu_2520_p4 = {{add_ln106_1_fu_2515_p2[6:4]}};
assign lshr_ln108_15_fu_2176_p4 = {{add_ln108_15_fu_2171_p2[6:4]}};
assign lshr_ln108_16_fu_2284_p4 = {{add_ln106_2_fu_2279_p2[6:4]}};
assign lshr_ln108_17_fu_2326_p4 = {{add_ln106_3_fu_2321_p2[6:4]}};
assign lshr_ln108_18_fu_2543_p4 = {{add_ln106_4_fu_2538_p2[6:4]}};
assign lshr_ln108_19_fu_2349_p4 = {{add_ln106_5_fu_2344_p2[6:4]}};
assign lshr_ln108_1_fu_1470_p4 = {{add_ln108_1_fu_1465_p2[6:4]}};
assign lshr_ln108_20_fu_2566_p4 = {{add_ln106_6_fu_2561_p2[6:4]}};
assign lshr_ln108_21_fu_2589_p4 = {{add_ln106_7_fu_2584_p2[6:4]}};
assign lshr_ln108_22_fu_2612_p4 = {{add_ln106_8_fu_2607_p2[6:4]}};
assign lshr_ln108_23_fu_2635_p4 = {{add_ln106_9_fu_2630_p2[6:4]}};
assign lshr_ln108_24_fu_2658_p4 = {{add_ln106_10_fu_2653_p2[6:4]}};
assign lshr_ln108_25_fu_2681_p4 = {{add_ln106_11_fu_2676_p2[6:4]}};
assign lshr_ln108_26_fu_2717_p4 = {{add_ln106_12_fu_2712_p2[6:4]}};
assign lshr_ln108_27_fu_2740_p4 = {{add_ln106_13_fu_2735_p2[6:4]}};
assign lshr_ln108_28_fu_2763_p4 = {{add_ln106_14_fu_2758_p2[6:4]}};
assign lshr_ln108_2_fu_1493_p4 = {{add_ln108_2_fu_1488_p2[6:4]}};
assign lshr_ln108_3_fu_1516_p4 = {{add_ln108_3_fu_1511_p2[6:4]}};
assign lshr_ln108_4_fu_1539_p4 = {{add_ln108_4_fu_1534_p2[6:4]}};
assign lshr_ln108_5_fu_1562_p4 = {{add_ln108_5_fu_1557_p2[6:4]}};
assign lshr_ln108_6_fu_1424_p4 = {{add_ln108_6_fu_1418_p2[6:4]}};
assign lshr_ln108_7_fu_1585_p4 = {{add_ln108_7_fu_1580_p2[6:4]}};
assign lshr_ln108_8_fu_1608_p4 = {{add_ln108_8_fu_1603_p2[6:4]}};
assign lshr_ln108_9_fu_1631_p4 = {{add_ln108_9_fu_1626_p2[6:4]}};
assign lshr_ln108_s_fu_1654_p4 = {{add_ln108_10_fu_1649_p2[6:4]}};
assign lshr_ln1_fu_1447_p4 = {{add_ln108_fu_1442_p2[6:4]}};
assign tmp_10_fu_2073_p9 = 'bx;
assign tmp_11_fu_2096_p9 = 'bx;
assign tmp_12_fu_2125_p9 = 'bx;
assign tmp_13_fu_2148_p9 = 'bx;
assign tmp_14_fu_2402_p9 = 'bx;
assign tmp_1_fu_1831_p9 = 'bx;
assign tmp_2_fu_1854_p9 = 'bx;
assign tmp_3_fu_1877_p9 = 'bx;
assign tmp_4_fu_1918_p9 = 'bx;
assign tmp_5_fu_1941_p9 = 'bx;
assign tmp_6_fu_1718_p9 = 'bx;
assign tmp_7_fu_1964_p9 = 'bx;
assign tmp_8_fu_2004_p9 = 'bx;
assign tmp_9_fu_2027_p9 = 'bx;
assign tmp_fu_1808_p9 = 'bx;
assign tmp_s_fu_2050_p9 = 'bx;
assign trunc_ln6_1_fu_1404_p1 = i_fu_140[6:0];
assign trunc_ln6_fu_1400_p1 = i_fu_140[3:0];
assign xor_ln108_10_fu_2241_p2 = (xor_ln108_9_reg_3398 ^ tmp_6_reg_3239);
assign xor_ln108_11_fu_2245_p2 = (xor_ln108_10_fu_2241_p2 ^ tmp_10_reg_3385);
assign xor_ln108_12_fu_2261_p2 = (xor_ln108_5_reg_3354 ^ tmp_13_reg_3410);
assign xor_ln108_13_fu_2265_p2 = (xor_ln108_12_fu_2261_p2 ^ tmp_s_reg_3378);
assign xor_ln108_14_fu_2270_p2 = (xor_ln108_13_fu_2265_p2 ^ tmp_12_reg_3404);
assign xor_ln108_15_fu_2302_p2 = (xor_ln108_11_fu_2245_p2 ^ tmp_1_reg_3301);
assign xor_ln108_16_fu_2307_p2 = (tmp_4_reg_3332 ^ tmp_13_reg_3410);
assign xor_ln108_17_fu_2311_p2 = (xor_ln108_16_fu_2307_p2 ^ xor_ln108_15_fu_2302_p2);
assign xor_ln108_18_fu_2367_p2 = (xor_ln108_17_fu_2311_p2 ^ tmp_10_reg_3385);
assign xor_ln108_19_fu_2372_p2 = (xor_ln108_3_reg_3349 ^ xor_ln108_18_fu_2367_p2);
assign xor_ln108_1_fu_1906_p2 = (tmp_3_fu_1877_p11 ^ tmp_1_fu_1831_p11);
assign xor_ln108_20_fu_2377_p2 = (xor_ln108_19_fu_2372_p2 ^ tmp_7_reg_3344);
assign xor_ln108_21_fu_2386_p2 = (xor_ln108_12_fu_2261_p2 ^ tmp_4_reg_3332);
assign xor_ln108_22_fu_2391_p2 = (xor_ln108_20_fu_2377_p2 ^ tmp_s_reg_3378);
assign xor_ln108_23_fu_2396_p2 = (xor_ln108_22_fu_2391_p2 ^ xor_ln108_21_fu_2386_p2);
assign xor_ln108_24_fu_2425_p2 = (xor_ln108_8_fu_2232_p2 ^ tmp_14_fu_2402_p11);
assign xor_ln108_25_fu_2431_p2 = (xor_ln108_24_fu_2425_p2 ^ tmp_reg_3295);
assign xor_ln108_26_fu_2436_p2 = (xor_ln108_25_fu_2431_p2 ^ tmp_11_reg_3392);
assign xor_ln108_27_fu_2441_p2 = (xor_ln108_14_fu_2270_p2 ^ tmp_5_reg_3338);
assign xor_ln108_28_fu_2446_p2 = (tmp_8_reg_3364 ^ tmp_14_fu_2402_p11);
assign xor_ln108_29_fu_2451_p2 = (xor_ln108_28_fu_2446_p2 ^ xor_ln108_27_fu_2441_p2);
assign xor_ln108_2_fu_1912_p2 = (xor_ln108_fu_1900_p2 ^ xor_ln108_1_fu_1906_p2);
assign xor_ln108_30_fu_2461_p2 = (xor_ln108_26_fu_2436_p2 ^ tmp_9_reg_3371);
assign xor_ln108_31_fu_2781_p2 = (xor_ln108_reg_3318 ^ xor_ln108_30_reg_3484);
assign xor_ln108_32_fu_2785_p2 = (xor_ln108_31_fu_2781_p2 ^ tmp_3_reg_3313);
assign xor_ln108_33_fu_2466_p2 = (xor_ln108_29_fu_2451_p2 ^ tmp_12_reg_3404);
assign xor_ln108_34_fu_2471_p2 = (xor_ln108_33_fu_2466_p2 ^ tmp_2_reg_3307);
assign xor_ln108_35_fu_2476_p2 = (xor_ln108_6_fu_2223_p2 ^ xor_ln108_34_fu_2471_p2);
assign xor_ln108_36_fu_2794_p2 = (xor_ln108_32_fu_2785_p2 ^ tmp_reg_3295);
assign xor_ln108_37_fu_2799_p2 = (xor_ln108_36_fu_2794_p2 ^ tmp_6_reg_3239);
assign xor_ln108_38_fu_2804_p2 = (xor_ln108_9_reg_3398 ^ xor_ln108_37_fu_2799_p2);
assign xor_ln108_39_fu_2482_p2 = (xor_ln108_24_fu_2425_p2 ^ tmp_8_reg_3364);
assign xor_ln108_3_fu_1987_p2 = (tmp_6_reg_3239 ^ tmp_4_fu_1918_p11);
assign xor_ln108_40_fu_2487_p2 = (xor_ln108_35_fu_2476_p2 ^ tmp_11_reg_3392);
assign xor_ln108_41_fu_2492_p2 = (xor_ln108_40_fu_2487_p2 ^ xor_ln108_39_fu_2482_p2);
assign xor_ln108_42_fu_2813_p2 = (xor_ln108_2_reg_3323 ^ tmp_13_reg_3410);
assign xor_ln108_43_fu_2817_p2 = (xor_ln108_38_fu_2804_p2 ^ xor_ln108_15_reg_3452);
assign xor_ln108_44_fu_2822_p2 = (xor_ln108_43_fu_2817_p2 ^ xor_ln108_42_fu_2813_p2);
assign xor_ln108_45_fu_2504_p2 = (xor_ln108_5_reg_3354 ^ xor_ln108_23_fu_2396_p2);
assign xor_ln108_46_fu_2498_p2 = (xor_ln108_27_fu_2441_p2 ^ tmp_14_fu_2402_p11);
assign xor_ln108_47_fu_2509_p2 = (xor_ln108_46_fu_2498_p2 ^ xor_ln108_45_fu_2504_p2);
assign xor_ln108_48_fu_2832_p2 = (xor_ln108_30_reg_3484 ^ tmp_1_reg_3301);
assign xor_ln108_49_fu_2836_p2 = (xor_ln108_8_reg_3437 ^ xor_ln108_41_reg_3498);
assign xor_ln108_4_fu_1992_p2 = (tmp_7_fu_1964_p11 ^ tmp_5_fu_1941_p11);
assign xor_ln108_50_fu_2840_p2 = (xor_ln108_49_fu_2836_p2 ^ xor_ln108_48_fu_2832_p2);
assign xor_ln108_51_fu_2850_p2 = (xor_ln108_18_reg_3457 ^ tmp_5_reg_3338);
assign xor_ln108_52_fu_2854_p2 = (xor_ln108_44_fu_2822_p2 ^ xor_ln108_11_reg_3442);
assign xor_ln108_53_fu_2859_p2 = (xor_ln108_52_fu_2854_p2 ^ xor_ln108_51_fu_2850_p2);
assign xor_ln108_54_fu_2869_p2 = (xor_ln108_47_reg_3507 ^ tmp_9_reg_3371);
assign xor_ln108_55_fu_2873_p2 = (xor_ln108_29_reg_3479 ^ xor_ln108_13_reg_3447);
assign xor_ln108_56_fu_2877_p2 = (xor_ln108_55_fu_2873_p2 ^ xor_ln108_54_fu_2869_p2);
assign xor_ln108_57_fu_2887_p2 = (xor_ln108_36_fu_2794_p2 ^ tmp_10_reg_3385);
assign xor_ln108_58_fu_2892_p2 = (xor_ln108_50_fu_2840_p2 ^ xor_ln108_26_reg_3470);
assign xor_ln108_59_fu_2897_p2 = (xor_ln108_58_fu_2892_p2 ^ xor_ln108_57_fu_2887_p2);
assign xor_ln108_5_fu_1998_p2 = (xor_ln108_4_fu_1992_p2 ^ xor_ln108_3_fu_1987_p2);
assign xor_ln108_6_fu_2223_p2 = (tmp_s_reg_3378 ^ tmp_8_reg_3364);
assign xor_ln108_7_fu_2227_p2 = (xor_ln108_6_fu_2223_p2 ^ tmp_2_reg_3307);
assign xor_ln108_8_fu_2232_p2 = (xor_ln108_7_fu_2227_p2 ^ tmp_9_reg_3371);
assign xor_ln108_9_fu_2119_p2 = (xor_ln108_2_fu_1912_p2 ^ tmp_11_fu_2096_p11);
assign xor_ln108_fu_1900_p2 = (tmp_fu_1808_p11 ^ tmp_2_fu_1854_p11);
assign zext_ln106_fu_2254_p1 = lshr_ln2_reg_3246;
assign zext_ln108_10_fu_1664_p1 = lshr_ln108_s_fu_1654_p4;
assign zext_ln108_11_fu_1687_p1 = lshr_ln108_10_fu_1677_p4;
assign zext_ln108_12_fu_1710_p1 = lshr_ln108_11_fu_1700_p4;
assign zext_ln108_13_fu_1777_p1 = lshr_ln108_12_fu_1767_p4;
assign zext_ln108_14_fu_1800_p1 = lshr_ln108_13_fu_1790_p4;
assign zext_ln108_15_fu_2530_p1 = lshr_ln108_14_fu_2520_p4;
assign zext_ln108_16_fu_2186_p1 = lshr_ln108_15_fu_2176_p4;
assign zext_ln108_17_fu_2294_p1 = lshr_ln108_16_fu_2284_p4;
assign zext_ln108_18_fu_2336_p1 = lshr_ln108_17_fu_2326_p4;
assign zext_ln108_19_fu_2553_p1 = lshr_ln108_18_fu_2543_p4;
assign zext_ln108_1_fu_1480_p1 = lshr_ln108_1_fu_1470_p4;
assign zext_ln108_20_fu_2359_p1 = lshr_ln108_19_fu_2349_p4;
assign zext_ln108_21_fu_2576_p1 = lshr_ln108_20_fu_2566_p4;
assign zext_ln108_22_fu_2599_p1 = lshr_ln108_21_fu_2589_p4;
assign zext_ln108_23_fu_2622_p1 = lshr_ln108_22_fu_2612_p4;
assign zext_ln108_24_fu_2645_p1 = lshr_ln108_23_fu_2635_p4;
assign zext_ln108_25_fu_2668_p1 = lshr_ln108_24_fu_2658_p4;
assign zext_ln108_26_fu_2691_p1 = lshr_ln108_25_fu_2681_p4;
assign zext_ln108_27_fu_2704_p1 = add_ln108_16_fu_2699_p2;
assign zext_ln108_28_fu_2727_p1 = lshr_ln108_26_fu_2717_p4;
assign zext_ln108_29_fu_2750_p1 = lshr_ln108_27_fu_2740_p4;
assign zext_ln108_2_fu_1503_p1 = lshr_ln108_2_fu_1493_p4;
assign zext_ln108_30_fu_2773_p1 = lshr_ln108_28_fu_2763_p4;
assign zext_ln108_3_fu_1526_p1 = lshr_ln108_3_fu_1516_p4;
assign zext_ln108_4_fu_1549_p1 = lshr_ln108_4_fu_1539_p4;
assign zext_ln108_5_fu_1572_p1 = lshr_ln108_5_fu_1562_p4;
assign zext_ln108_6_fu_1434_p1 = lshr_ln108_6_fu_1424_p4;
assign zext_ln108_7_fu_1595_p1 = lshr_ln108_7_fu_1585_p4;
assign zext_ln108_8_fu_1618_p1 = lshr_ln108_8_fu_1608_p4;
assign zext_ln108_9_fu_1641_p1 = lshr_ln108_9_fu_1631_p4;
assign zext_ln108_fu_1457_p1 = lshr_ln1_fu_1447_p4;
assign zext_ln99_fu_2204_p1 = lshr_ln_reg_2973;
endmodule 