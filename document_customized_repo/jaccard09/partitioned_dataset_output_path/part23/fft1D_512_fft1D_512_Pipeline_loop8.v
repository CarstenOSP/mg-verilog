
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1);  
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
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [6:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [6:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [6:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [6:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [6:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [6:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [6:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [6:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [6:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [6:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [6:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_2468;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_2460;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_2460_pp0_iter1_reg;
reg   [6:0] tid_2_reg_2460_pp0_iter2_reg;
reg   [6:0] tid_2_reg_2460_pp0_iter3_reg;
reg   [0:0] tmp_reg_2468_pp0_iter1_reg;
reg   [0:0] tmp_reg_2468_pp0_iter2_reg;
reg   [0:0] tmp_reg_2468_pp0_iter3_reg;
wire   [2:0] tmp_19_fu_1249_p4;
reg   [2:0] tmp_19_reg_2472;
wire   [8:0] offset_fu_1263_p3;
reg   [8:0] offset_reg_2477;
reg   [8:0] offset_reg_2477_pp0_iter1_reg;
reg   [8:0] offset_reg_2477_pp0_iter2_reg;
wire   [8:0] offset_1_fu_1286_p4;
reg   [8:0] offset_1_reg_2484;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_1_reg_2484_pp0_iter1_reg;
reg   [8:0] offset_1_reg_2484_pp0_iter2_reg;
reg   [7:0] tmp_21_reg_2491;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] tmp_22_reg_2496;
reg   [7:0] tmp_23_reg_2501;
reg   [7:0] tmp_24_reg_2506;
reg   [7:0] tmp_25_reg_2511;
reg   [7:0] tmp_26_reg_2516;
reg   [7:0] tmp_28_reg_2521;
reg   [6:0] tmp_20_reg_2526;
wire   [2:0] trunc_ln172_fu_1399_p1;
reg   [2:0] trunc_ln172_reg_2531;
reg   [7:0] tmp_34_reg_2543;
reg   [7:0] tmp_36_reg_2548;
reg   [7:0] tmp_38_reg_2553;
reg   [7:0] tmp_40_reg_2558;
reg   [7:0] tmp_42_reg_2563;
reg   [7:0] tmp_46_reg_2568;
reg   [7:0] tmp_47_reg_2573;
reg   [6:0] tmp_31_reg_2858;
wire   [2:0] trunc_ln172_1_fu_1565_p1;
reg   [2:0] trunc_ln172_1_reg_2863;
wire   [63:0] tmp_s_fu_1569_p17;
reg   [63:0] tmp_s_reg_2875;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_14_fu_1604_p17;
reg   [63:0] tmp_14_reg_2880;
wire   [63:0] tmp_15_fu_1639_p17;
reg   [63:0] tmp_15_reg_2885;
wire   [63:0] tmp_16_fu_1674_p17;
reg   [63:0] tmp_16_reg_2890;
wire   [63:0] tmp_17_fu_1709_p17;
reg   [63:0] tmp_17_reg_2895;
wire   [63:0] tmp_18_fu_1744_p17;
reg   [63:0] tmp_18_reg_2900;
wire   [63:0] tmp_27_fu_1779_p17;
reg   [63:0] tmp_27_reg_2905;
wire   [63:0] tmp_29_fu_1814_p17;
reg   [63:0] tmp_29_reg_2910;
wire   [5:0] trunc_ln314_fu_1929_p1;
reg   [5:0] trunc_ln314_reg_3195;
wire   [63:0] tmp_32_fu_1960_p17;
reg   [63:0] tmp_32_reg_3201;
reg   [4:0] tmp_33_reg_3206;
wire   [63:0] tmp_35_fu_2004_p17;
reg   [63:0] tmp_35_reg_3214;
wire   [63:0] tmp_37_fu_2039_p17;
reg   [63:0] tmp_37_reg_3219;
wire   [63:0] tmp_39_fu_2074_p17;
reg   [63:0] tmp_39_reg_3224;
wire   [63:0] tmp_41_fu_2109_p17;
reg   [63:0] tmp_41_reg_3229;
wire   [63:0] tmp_43_fu_2144_p17;
reg   [63:0] tmp_43_reg_3234;
wire   [63:0] tmp_44_fu_2179_p17;
reg   [63:0] tmp_44_reg_3239;
wire   [63:0] tmp_45_fu_2214_p17;
reg   [63:0] tmp_45_reg_3244;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_5_fu_1466_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_1476_p1;
wire   [63:0] zext_ln316_fu_1486_p1;
wire   [63:0] zext_ln317_fu_1496_p1;
wire   [63:0] zext_ln318_fu_1506_p1;
wire   [63:0] zext_ln319_fu_1516_p1;
wire   [63:0] zext_ln320_fu_1526_p1;
wire   [63:0] zext_ln321_fu_1536_p1;
wire   [63:0] zext_ln172_6_fu_1849_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln315_1_fu_1859_p1;
wire   [63:0] zext_ln316_1_fu_1869_p1;
wire   [63:0] zext_ln317_1_fu_1879_p1;
wire   [63:0] zext_ln318_1_fu_1889_p1;
wire   [63:0] zext_ln319_1_fu_1899_p1;
wire   [63:0] zext_ln320_1_fu_1909_p1;
wire   [63:0] zext_ln321_1_fu_1919_p1;
wire   [63:0] zext_ln314_fu_1940_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_2_fu_1954_p1;
wire   [63:0] zext_ln318_2_fu_2256_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_2_fu_2269_p1;
wire   [63:0] zext_ln314_1_fu_2282_p1;
wire   [63:0] zext_ln315_3_fu_2295_p1;
wire   [63:0] zext_ln318_3_fu_2308_p1;
wire   [63:0] zext_ln319_3_fu_2321_p1;
reg   [6:0] tid_fu_124;
wire   [6:0] add_ln309_fu_1301_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_7_ce1_local;
reg   [6:0] smem_7_address1_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg   [6:0] smem_8_address1_local;
reg    smem_8_ce0_local;
reg   [6:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg   [6:0] smem_9_address1_local;
reg    smem_9_ce0_local;
reg   [6:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg   [6:0] smem_10_address1_local;
reg    smem_10_ce0_local;
reg   [6:0] smem_10_address0_local;
reg    smem_11_ce1_local;
reg   [6:0] smem_11_address1_local;
reg    smem_11_ce0_local;
reg   [6:0] smem_11_address0_local;
reg    smem_12_ce1_local;
reg   [6:0] smem_12_address1_local;
reg    smem_12_ce0_local;
reg   [6:0] smem_12_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [5:0] trunc_ln312_fu_1259_p1;
wire   [8:0] grp_fu_1271_p0;
wire   [3:0] grp_fu_1271_p1;
wire   [4:0] tmp_30_fu_1277_p4;
wire   [8:0] grp_fu_1295_p0;
wire   [3:0] grp_fu_1295_p1;
wire   [20:0] tmp_21_fu_1317_p1;
wire  signed [20:0] grp_fu_2327_p3;
wire   [20:0] tmp_22_fu_1326_p1;
wire  signed [20:0] grp_fu_2336_p3;
wire   [20:0] tmp_23_fu_1335_p1;
wire  signed [20:0] grp_fu_2345_p3;
wire   [20:0] tmp_24_fu_1344_p1;
wire  signed [20:0] grp_fu_2354_p3;
wire   [20:0] tmp_25_fu_1353_p1;
wire  signed [20:0] grp_fu_2363_p3;
wire   [20:0] tmp_26_fu_1362_p1;
wire  signed [20:0] grp_fu_2372_p3;
wire   [20:0] tmp_28_fu_1371_p1;
wire  signed [20:0] grp_fu_2381_p3;
wire   [8:0] mul_ln172_fu_1383_p0;
wire   [10:0] mul_ln172_fu_1383_p1;
wire   [18:0] mul_ln172_fu_1383_p2;
wire   [2:0] grp_fu_1271_p2;
wire   [20:0] tmp_34_fu_1403_p1;
wire  signed [20:0] grp_fu_2390_p3;
wire   [20:0] tmp_36_fu_1412_p1;
wire  signed [20:0] grp_fu_2399_p3;
wire   [20:0] tmp_38_fu_1421_p1;
wire  signed [20:0] grp_fu_2408_p3;
wire   [20:0] tmp_40_fu_1430_p1;
wire  signed [20:0] grp_fu_2417_p3;
wire   [20:0] tmp_42_fu_1439_p1;
wire  signed [20:0] grp_fu_2426_p3;
wire   [20:0] tmp_46_fu_1448_p1;
wire  signed [20:0] grp_fu_2435_p3;
wire   [20:0] tmp_47_fu_1457_p1;
wire  signed [20:0] grp_fu_2444_p3;
wire   [8:0] mul_ln172_1_fu_1549_p0;
wire   [10:0] mul_ln172_1_fu_1549_p1;
wire   [18:0] mul_ln172_1_fu_1549_p2;
wire   [2:0] grp_fu_1295_p2;
wire   [63:0] tmp_s_fu_1569_p15;
wire   [63:0] tmp_14_fu_1604_p15;
wire   [63:0] tmp_15_fu_1639_p15;
wire   [63:0] tmp_16_fu_1674_p15;
wire   [63:0] tmp_17_fu_1709_p15;
wire   [63:0] tmp_18_fu_1744_p15;
wire   [63:0] tmp_27_fu_1779_p15;
wire   [63:0] tmp_29_fu_1814_p15;
wire   [7:0] shl_ln7_fu_1932_p3;
wire   [7:0] or_ln_fu_1946_p3;
wire   [63:0] tmp_32_fu_1960_p15;
wire   [63:0] tmp_35_fu_2004_p15;
wire   [63:0] tmp_37_fu_2039_p15;
wire   [63:0] tmp_39_fu_2074_p15;
wire   [63:0] tmp_41_fu_2109_p15;
wire   [63:0] tmp_43_fu_2144_p15;
wire   [63:0] tmp_44_fu_2179_p15;
wire   [63:0] tmp_45_fu_2214_p15;
wire   [7:0] or_ln3_fu_2249_p3;
wire   [7:0] or_ln4_fu_2262_p3;
wire   [7:0] shl_ln314_1_fu_2275_p3;
wire   [7:0] or_ln315_1_fu_2288_p3;
wire   [7:0] or_ln318_1_fu_2301_p3;
wire   [7:0] or_ln319_1_fu_2314_p3;
wire   [8:0] grp_fu_2327_p0;
wire   [9:0] zext_ln172_fu_1311_p1;
wire   [5:0] grp_fu_2327_p1;
wire   [10:0] grp_fu_2327_p2;
wire   [8:0] grp_fu_2336_p0;
wire   [3:0] grp_fu_2336_p1;
wire   [10:0] grp_fu_2336_p2;
wire   [8:0] grp_fu_2345_p0;
wire   [5:0] grp_fu_2345_p1;
wire   [10:0] grp_fu_2345_p2;
wire   [8:0] grp_fu_2354_p0;
wire   [4:0] grp_fu_2354_p1;
wire   [10:0] grp_fu_2354_p2;
wire   [8:0] grp_fu_2363_p0;
wire   [5:0] grp_fu_2363_p1;
wire   [10:0] grp_fu_2363_p2;
wire   [8:0] grp_fu_2372_p0;
wire   [4:0] grp_fu_2372_p1;
wire   [10:0] grp_fu_2372_p2;
wire   [8:0] grp_fu_2381_p0;
wire   [5:0] grp_fu_2381_p1;
wire   [10:0] grp_fu_2381_p2;
wire   [8:0] grp_fu_2390_p0;
wire   [9:0] zext_ln172_8_fu_1314_p1;
wire   [5:0] grp_fu_2390_p1;
wire   [10:0] grp_fu_2390_p2;
wire   [8:0] grp_fu_2399_p0;
wire   [3:0] grp_fu_2399_p1;
wire   [10:0] grp_fu_2399_p2;
wire   [8:0] grp_fu_2408_p0;
wire   [5:0] grp_fu_2408_p1;
wire   [10:0] grp_fu_2408_p2;
wire   [8:0] grp_fu_2417_p0;
wire   [4:0] grp_fu_2417_p1;
wire   [10:0] grp_fu_2417_p2;
wire   [8:0] grp_fu_2426_p0;
wire   [5:0] grp_fu_2426_p1;
wire   [10:0] grp_fu_2426_p2;
wire   [8:0] grp_fu_2435_p0;
wire   [4:0] grp_fu_2435_p1;
wire   [10:0] grp_fu_2435_p2;
wire   [8:0] grp_fu_2444_p0;
wire   [5:0] grp_fu_2444_p1;
wire   [10:0] grp_fu_2444_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_1_fu_1549_p00;
wire   [18:0] mul_ln172_fu_1383_p00;
reg    ap_condition_1446;
reg    ap_condition_1450;
reg    ap_condition_1454;
reg    ap_condition_1458;
reg    ap_condition_1462;
reg    ap_condition_1466;
reg    ap_condition_1470;
reg    ap_condition_1476;
reg    ap_condition_1480;
reg    ap_condition_1484;
reg    ap_condition_1488;
reg    ap_condition_1492;
reg    ap_condition_1496;
reg    ap_condition_1500;
wire   [2:0] tmp_s_fu_1569_p1;
wire   [2:0] tmp_s_fu_1569_p3;
wire   [2:0] tmp_s_fu_1569_p5;
wire   [2:0] tmp_s_fu_1569_p7;
wire  signed [2:0] tmp_s_fu_1569_p9;
wire  signed [2:0] tmp_s_fu_1569_p11;
wire  signed [2:0] tmp_s_fu_1569_p13;
wire   [2:0] tmp_14_fu_1604_p1;
wire  signed [2:0] tmp_14_fu_1604_p3;
wire  signed [2:0] tmp_14_fu_1604_p5;
wire  signed [2:0] tmp_14_fu_1604_p7;
wire   [2:0] tmp_14_fu_1604_p9;
wire   [2:0] tmp_14_fu_1604_p11;
wire   [2:0] tmp_14_fu_1604_p13;
wire  signed [2:0] tmp_15_fu_1639_p1;
wire   [2:0] tmp_15_fu_1639_p3;
wire   [2:0] tmp_15_fu_1639_p5;
wire   [2:0] tmp_15_fu_1639_p7;
wire   [2:0] tmp_15_fu_1639_p9;
wire  signed [2:0] tmp_15_fu_1639_p11;
wire  signed [2:0] tmp_15_fu_1639_p13;
wire   [2:0] tmp_16_fu_1674_p1;
wire   [2:0] tmp_16_fu_1674_p3;
wire  signed [2:0] tmp_16_fu_1674_p5;
wire  signed [2:0] tmp_16_fu_1674_p7;
wire  signed [2:0] tmp_16_fu_1674_p9;
wire   [2:0] tmp_16_fu_1674_p11;
wire   [2:0] tmp_16_fu_1674_p13;
wire  signed [2:0] tmp_17_fu_1709_p1;
wire  signed [2:0] tmp_17_fu_1709_p3;
wire   [2:0] tmp_17_fu_1709_p5;
wire   [2:0] tmp_17_fu_1709_p7;
wire   [2:0] tmp_17_fu_1709_p9;
wire   [2:0] tmp_17_fu_1709_p11;
wire  signed [2:0] tmp_17_fu_1709_p13;
wire   [2:0] tmp_18_fu_1744_p1;
wire   [2:0] tmp_18_fu_1744_p3;
wire   [2:0] tmp_18_fu_1744_p5;
wire  signed [2:0] tmp_18_fu_1744_p7;
wire  signed [2:0] tmp_18_fu_1744_p9;
wire  signed [2:0] tmp_18_fu_1744_p11;
wire   [2:0] tmp_18_fu_1744_p13;
wire  signed [2:0] tmp_27_fu_1779_p1;
wire  signed [2:0] tmp_27_fu_1779_p3;
wire  signed [2:0] tmp_27_fu_1779_p5;
wire   [2:0] tmp_27_fu_1779_p7;
wire   [2:0] tmp_27_fu_1779_p9;
wire   [2:0] tmp_27_fu_1779_p11;
wire   [2:0] tmp_27_fu_1779_p13;
wire   [2:0] tmp_29_fu_1814_p1;
wire   [2:0] tmp_29_fu_1814_p3;
wire   [2:0] tmp_29_fu_1814_p5;
wire   [2:0] tmp_29_fu_1814_p7;
wire  signed [2:0] tmp_29_fu_1814_p9;
wire  signed [2:0] tmp_29_fu_1814_p11;
wire  signed [2:0] tmp_29_fu_1814_p13;
wire   [2:0] tmp_32_fu_1960_p1;
wire   [2:0] tmp_32_fu_1960_p3;
wire   [2:0] tmp_32_fu_1960_p5;
wire   [2:0] tmp_32_fu_1960_p7;
wire  signed [2:0] tmp_32_fu_1960_p9;
wire  signed [2:0] tmp_32_fu_1960_p11;
wire  signed [2:0] tmp_32_fu_1960_p13;
wire   [2:0] tmp_35_fu_2004_p1;
wire  signed [2:0] tmp_35_fu_2004_p3;
wire  signed [2:0] tmp_35_fu_2004_p5;
wire  signed [2:0] tmp_35_fu_2004_p7;
wire   [2:0] tmp_35_fu_2004_p9;
wire   [2:0] tmp_35_fu_2004_p11;
wire   [2:0] tmp_35_fu_2004_p13;
wire  signed [2:0] tmp_37_fu_2039_p1;
wire   [2:0] tmp_37_fu_2039_p3;
wire   [2:0] tmp_37_fu_2039_p5;
wire   [2:0] tmp_37_fu_2039_p7;
wire   [2:0] tmp_37_fu_2039_p9;
wire  signed [2:0] tmp_37_fu_2039_p11;
wire  signed [2:0] tmp_37_fu_2039_p13;
wire   [2:0] tmp_39_fu_2074_p1;
wire   [2:0] tmp_39_fu_2074_p3;
wire  signed [2:0] tmp_39_fu_2074_p5;
wire  signed [2:0] tmp_39_fu_2074_p7;
wire  signed [2:0] tmp_39_fu_2074_p9;
wire   [2:0] tmp_39_fu_2074_p11;
wire   [2:0] tmp_39_fu_2074_p13;
wire  signed [2:0] tmp_41_fu_2109_p1;
wire  signed [2:0] tmp_41_fu_2109_p3;
wire   [2:0] tmp_41_fu_2109_p5;
wire   [2:0] tmp_41_fu_2109_p7;
wire   [2:0] tmp_41_fu_2109_p9;
wire   [2:0] tmp_41_fu_2109_p11;
wire  signed [2:0] tmp_41_fu_2109_p13;
wire   [2:0] tmp_43_fu_2144_p1;
wire   [2:0] tmp_43_fu_2144_p3;
wire   [2:0] tmp_43_fu_2144_p5;
wire  signed [2:0] tmp_43_fu_2144_p7;
wire  signed [2:0] tmp_43_fu_2144_p9;
wire  signed [2:0] tmp_43_fu_2144_p11;
wire   [2:0] tmp_43_fu_2144_p13;
wire  signed [2:0] tmp_44_fu_2179_p1;
wire  signed [2:0] tmp_44_fu_2179_p3;
wire  signed [2:0] tmp_44_fu_2179_p5;
wire   [2:0] tmp_44_fu_2179_p7;
wire   [2:0] tmp_44_fu_2179_p9;
wire   [2:0] tmp_44_fu_2179_p11;
wire   [2:0] tmp_44_fu_2179_p13;
wire   [2:0] tmp_45_fu_2214_p1;
wire   [2:0] tmp_45_fu_2214_p3;
wire   [2:0] tmp_45_fu_2214_p5;
wire   [2:0] tmp_45_fu_2214_p7;
wire  signed [2:0] tmp_45_fu_2214_p9;
wire  signed [2:0] tmp_45_fu_2214_p11;
wire  signed [2:0] tmp_45_fu_2214_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_124 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U195(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1271_p0),.din1(grp_fu_1271_p1),.ce(1'b1),.dout(grp_fu_1271_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1295_p0),.din1(grp_fu_1295_p1),.ce(1'b1),.dout(grp_fu_1295_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U197(.din0(mul_ln172_fu_1383_p0),.din1(mul_ln172_fu_1383_p1),.dout(mul_ln172_fu_1383_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U198(.din0(mul_ln172_1_fu_1549_p0),.din1(mul_ln172_1_fu_1549_p1),.dout(mul_ln172_1_fu_1549_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U199(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_s_fu_1569_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_s_fu_1569_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U200(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_14_fu_1604_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_14_fu_1604_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U201(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_15_fu_1639_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_15_fu_1639_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U202(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_16_fu_1674_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_16_fu_1674_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U203(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_17_fu_1709_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_17_fu_1709_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U204(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_18_fu_1744_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_18_fu_1744_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U205(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_27_fu_1779_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_27_fu_1779_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U206(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_29_fu_1814_p15),.sel(trunc_ln172_reg_2531),.dout(tmp_29_fu_1814_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U207(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_32_fu_1960_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_32_fu_1960_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U208(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_35_fu_2004_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_35_fu_2004_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U209(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_37_fu_2039_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_37_fu_2039_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U210(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_39_fu_2074_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_39_fu_2074_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U211(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_41_fu_2109_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_41_fu_2109_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U212(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_43_fu_2144_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_43_fu_2144_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U213(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_44_fu_2179_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_44_fu_2179_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U214(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_45_fu_2214_p15),.sel(trunc_ln172_1_reg_2863),.dout(tmp_45_fu_2214_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U215(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2327_p0),.din1(grp_fu_2327_p1),.din2(grp_fu_2327_p2),.ce(1'b1),.dout(grp_fu_2327_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U216(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2336_p0),.din1(grp_fu_2336_p1),.din2(grp_fu_2336_p2),.ce(1'b1),.dout(grp_fu_2336_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U217(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2345_p0),.din1(grp_fu_2345_p1),.din2(grp_fu_2345_p2),.ce(1'b1),.dout(grp_fu_2345_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U218(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2354_p0),.din1(grp_fu_2354_p1),.din2(grp_fu_2354_p2),.ce(1'b1),.dout(grp_fu_2354_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U219(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2363_p0),.din1(grp_fu_2363_p1),.din2(grp_fu_2363_p2),.ce(1'b1),.dout(grp_fu_2363_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U220(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2372_p0),.din1(grp_fu_2372_p1),.din2(grp_fu_2372_p2),.ce(1'b1),.dout(grp_fu_2372_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U221(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2381_p0),.din1(grp_fu_2381_p1),.din2(grp_fu_2381_p2),.ce(1'b1),.dout(grp_fu_2381_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U222(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2390_p0),.din1(grp_fu_2390_p1),.din2(grp_fu_2390_p2),.ce(1'b1),.dout(grp_fu_2390_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U223(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2399_p0),.din1(grp_fu_2399_p1),.din2(grp_fu_2399_p2),.ce(1'b1),.dout(grp_fu_2399_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U224(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2408_p0),.din1(grp_fu_2408_p1),.din2(grp_fu_2408_p2),.ce(1'b1),.dout(grp_fu_2408_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2417_p0),.din1(grp_fu_2417_p1),.din2(grp_fu_2417_p2),.ce(1'b1),.dout(grp_fu_2417_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U226(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2426_p0),.din1(grp_fu_2426_p1),.din2(grp_fu_2426_p2),.ce(1'b1),.dout(grp_fu_2426_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U227(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2435_p0),.din1(grp_fu_2435_p1),.din2(grp_fu_2435_p2),.ce(1'b1),.dout(grp_fu_2435_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U228(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2444_p0),.din1(grp_fu_2444_p1),.din2(grp_fu_2444_p2),.ce(1'b1),.dout(grp_fu_2444_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_124 <= 7'd0;
    end else if (((tmp_reg_2468 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_124 <= add_ln309_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_1_reg_2484[8 : 1] <= offset_1_fu_1286_p4[8 : 1];
        offset_1_reg_2484_pp0_iter1_reg[8 : 1] <= offset_1_reg_2484[8 : 1];
        offset_1_reg_2484_pp0_iter2_reg[8 : 1] <= offset_1_reg_2484_pp0_iter1_reg[8 : 1];
        tmp_31_reg_2858 <= {{mul_ln172_1_fu_1549_p2[18:12]}};
        trunc_ln172_1_reg_2863 <= trunc_ln172_1_fu_1565_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_2477 <= offset_fu_1263_p3;
        offset_reg_2477_pp0_iter1_reg <= offset_reg_2477;
        offset_reg_2477_pp0_iter2_reg <= offset_reg_2477_pp0_iter1_reg;
        tid_2_reg_2460 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_2460_pp0_iter1_reg <= tid_2_reg_2460;
        tid_2_reg_2460_pp0_iter2_reg <= tid_2_reg_2460_pp0_iter1_reg;
        tid_2_reg_2460_pp0_iter3_reg <= tid_2_reg_2460_pp0_iter2_reg;
        tmp_19_reg_2472 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_20_reg_2526 <= {{mul_ln172_fu_1383_p2[18:12]}};
        tmp_34_reg_2543 <= {{tmp_34_fu_1403_p1[20:13]}};
        tmp_36_reg_2548 <= {{tmp_36_fu_1412_p1[20:13]}};
        tmp_38_reg_2553 <= {{tmp_38_fu_1421_p1[20:13]}};
        tmp_40_reg_2558 <= {{tmp_40_fu_1430_p1[20:13]}};
        tmp_42_reg_2563 <= {{tmp_42_fu_1439_p1[20:13]}};
        tmp_46_reg_2568 <= {{tmp_46_fu_1448_p1[20:13]}};
        tmp_47_reg_2573 <= {{tmp_47_fu_1457_p1[20:13]}};
        tmp_reg_2468 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_2468_pp0_iter1_reg <= tmp_reg_2468;
        tmp_reg_2468_pp0_iter2_reg <= tmp_reg_2468_pp0_iter1_reg;
        tmp_reg_2468_pp0_iter3_reg <= tmp_reg_2468_pp0_iter2_reg;
        trunc_ln172_reg_2531 <= trunc_ln172_fu_1399_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_14_reg_2880 <= tmp_14_fu_1604_p17;
        tmp_15_reg_2885 <= tmp_15_fu_1639_p17;
        tmp_16_reg_2890 <= tmp_16_fu_1674_p17;
        tmp_17_reg_2895 <= tmp_17_fu_1709_p17;
        tmp_18_reg_2900 <= tmp_18_fu_1744_p17;
        tmp_27_reg_2905 <= tmp_27_fu_1779_p17;
        tmp_29_reg_2910 <= tmp_29_fu_1814_p17;
        tmp_s_reg_2875 <= tmp_s_fu_1569_p17;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_21_reg_2491 <= {{tmp_21_fu_1317_p1[20:13]}};
        tmp_22_reg_2496 <= {{tmp_22_fu_1326_p1[20:13]}};
        tmp_23_reg_2501 <= {{tmp_23_fu_1335_p1[20:13]}};
        tmp_24_reg_2506 <= {{tmp_24_fu_1344_p1[20:13]}};
        tmp_25_reg_2511 <= {{tmp_25_fu_1353_p1[20:13]}};
        tmp_26_reg_2516 <= {{tmp_26_fu_1362_p1[20:13]}};
        tmp_28_reg_2521 <= {{tmp_28_fu_1371_p1[20:13]}};
        tmp_32_reg_3201 <= tmp_32_fu_1960_p17;
        tmp_33_reg_3206 <= {{tid_2_reg_2460_pp0_iter3_reg[5:1]}};
        tmp_35_reg_3214 <= tmp_35_fu_2004_p17;
        tmp_37_reg_3219 <= tmp_37_fu_2039_p17;
        tmp_39_reg_3224 <= tmp_39_fu_2074_p17;
        tmp_41_reg_3229 <= tmp_41_fu_2109_p17;
        tmp_43_reg_3234 <= tmp_43_fu_2144_p17;
        tmp_44_reg_3239 <= tmp_44_fu_2179_p17;
        tmp_45_reg_3244 <= tmp_45_fu_2214_p17;
        trunc_ln314_reg_3195 <= trunc_ln314_fu_1929_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln319_3_fu_2321_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_3_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_2_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_2_fu_1954_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln318_3_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_2_fu_2256_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_fu_1940_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_45_reg_3244;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_39_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_29_reg_2910;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_16_reg_2890;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_44_reg_3239;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_37_reg_3219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_27_reg_2905;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_15_reg_2885;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln319_3_fu_2321_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_3_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_2_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_2_fu_1954_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln318_3_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_1_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_2_fu_2256_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_fu_1940_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_43_reg_3234;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_35_reg_3214;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_18_reg_2900;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_14_reg_2880;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_41_reg_3229;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_32_reg_3201;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_17_reg_2895;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_s_reg_2875;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2468 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_2468_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
        ap_sig_allocacmp_tid_2 = tid_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_10_address0_local = zext_ln172_6_fu_1849_p1;
        end else if ((1'b1 == ap_condition_1470)) begin
            smem_10_address0_local = zext_ln321_fu_1536_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            smem_10_address0_local = zext_ln320_fu_1526_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            smem_10_address0_local = zext_ln319_fu_1516_p1;
        end else if ((1'b1 == ap_condition_1458)) begin
            smem_10_address0_local = zext_ln318_fu_1506_p1;
        end else if ((1'b1 == ap_condition_1454)) begin
            smem_10_address0_local = zext_ln317_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1450)) begin
            smem_10_address0_local = zext_ln316_fu_1486_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            smem_10_address0_local = zext_ln315_fu_1476_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1500)) begin
            smem_10_address1_local = zext_ln321_1_fu_1919_p1;
        end else if ((1'b1 == ap_condition_1496)) begin
            smem_10_address1_local = zext_ln320_1_fu_1909_p1;
        end else if ((1'b1 == ap_condition_1492)) begin
            smem_10_address1_local = zext_ln319_1_fu_1899_p1;
        end else if ((1'b1 == ap_condition_1488)) begin
            smem_10_address1_local = zext_ln318_1_fu_1889_p1;
        end else if ((1'b1 == ap_condition_1484)) begin
            smem_10_address1_local = zext_ln317_1_fu_1879_p1;
        end else if ((1'b1 == ap_condition_1480)) begin
            smem_10_address1_local = zext_ln316_1_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            smem_10_address1_local = zext_ln315_1_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_10_address1_local = zext_ln172_5_fu_1466_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_11_address0_local = zext_ln172_6_fu_1849_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            smem_11_address0_local = zext_ln321_fu_1536_p1;
        end else if ((1'b1 == ap_condition_1458)) begin
            smem_11_address0_local = zext_ln320_fu_1526_p1;
        end else if ((1'b1 == ap_condition_1454)) begin
            smem_11_address0_local = zext_ln319_fu_1516_p1;
        end else if ((1'b1 == ap_condition_1450)) begin
            smem_11_address0_local = zext_ln318_fu_1506_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            smem_11_address0_local = zext_ln317_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1470)) begin
            smem_11_address0_local = zext_ln316_fu_1486_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            smem_11_address0_local = zext_ln315_fu_1476_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1492)) begin
            smem_11_address1_local = zext_ln321_1_fu_1919_p1;
        end else if ((1'b1 == ap_condition_1488)) begin
            smem_11_address1_local = zext_ln320_1_fu_1909_p1;
        end else if ((1'b1 == ap_condition_1484)) begin
            smem_11_address1_local = zext_ln319_1_fu_1899_p1;
        end else if ((1'b1 == ap_condition_1480)) begin
            smem_11_address1_local = zext_ln318_1_fu_1889_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            smem_11_address1_local = zext_ln317_1_fu_1879_p1;
        end else if ((1'b1 == ap_condition_1500)) begin
            smem_11_address1_local = zext_ln316_1_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1496)) begin
            smem_11_address1_local = zext_ln315_1_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_11_address1_local = zext_ln172_5_fu_1466_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_12_address0_local = zext_ln172_6_fu_1849_p1;
        end else if ((1'b1 == ap_condition_1454)) begin
            smem_12_address0_local = zext_ln321_fu_1536_p1;
        end else if ((1'b1 == ap_condition_1450)) begin
            smem_12_address0_local = zext_ln320_fu_1526_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            smem_12_address0_local = zext_ln319_fu_1516_p1;
        end else if ((1'b1 == ap_condition_1470)) begin
            smem_12_address0_local = zext_ln318_fu_1506_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            smem_12_address0_local = zext_ln317_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            smem_12_address0_local = zext_ln316_fu_1486_p1;
        end else if ((1'b1 == ap_condition_1458)) begin
            smem_12_address0_local = zext_ln315_fu_1476_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1484)) begin
            smem_12_address1_local = zext_ln321_1_fu_1919_p1;
        end else if ((1'b1 == ap_condition_1480)) begin
            smem_12_address1_local = zext_ln320_1_fu_1909_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            smem_12_address1_local = zext_ln319_1_fu_1899_p1;
        end else if ((1'b1 == ap_condition_1500)) begin
            smem_12_address1_local = zext_ln318_1_fu_1889_p1;
        end else if ((1'b1 == ap_condition_1496)) begin
            smem_12_address1_local = zext_ln317_1_fu_1879_p1;
        end else if ((1'b1 == ap_condition_1492)) begin
            smem_12_address1_local = zext_ln316_1_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1488)) begin
            smem_12_address1_local = zext_ln315_1_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_12_address1_local = zext_ln172_5_fu_1466_p1;
        end else begin
            smem_12_address1_local = 'bx;
        end
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_7_address0_local = zext_ln172_6_fu_1849_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            smem_7_address0_local = zext_ln321_fu_1536_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            smem_7_address0_local = zext_ln320_fu_1526_p1;
        end else if ((1'b1 == ap_condition_1458)) begin
            smem_7_address0_local = zext_ln319_fu_1516_p1;
        end else if ((1'b1 == ap_condition_1454)) begin
            smem_7_address0_local = zext_ln318_fu_1506_p1;
        end else if ((1'b1 == ap_condition_1450)) begin
            smem_7_address0_local = zext_ln317_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            smem_7_address0_local = zext_ln316_fu_1486_p1;
        end else if ((1'b1 == ap_condition_1470)) begin
            smem_7_address0_local = zext_ln315_fu_1476_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1496)) begin
            smem_7_address1_local = zext_ln321_1_fu_1919_p1;
        end else if ((1'b1 == ap_condition_1492)) begin
            smem_7_address1_local = zext_ln320_1_fu_1909_p1;
        end else if ((1'b1 == ap_condition_1488)) begin
            smem_7_address1_local = zext_ln319_1_fu_1899_p1;
        end else if ((1'b1 == ap_condition_1484)) begin
            smem_7_address1_local = zext_ln318_1_fu_1889_p1;
        end else if ((1'b1 == ap_condition_1480)) begin
            smem_7_address1_local = zext_ln317_1_fu_1879_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            smem_7_address1_local = zext_ln316_1_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1500)) begin
            smem_7_address1_local = zext_ln315_1_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_7_address1_local = zext_ln172_5_fu_1466_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_8_address0_local = zext_ln172_6_fu_1849_p1;
        end else if ((1'b1 == ap_condition_1458)) begin
            smem_8_address0_local = zext_ln321_fu_1536_p1;
        end else if ((1'b1 == ap_condition_1454)) begin
            smem_8_address0_local = zext_ln320_fu_1526_p1;
        end else if ((1'b1 == ap_condition_1450)) begin
            smem_8_address0_local = zext_ln319_fu_1516_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            smem_8_address0_local = zext_ln318_fu_1506_p1;
        end else if ((1'b1 == ap_condition_1470)) begin
            smem_8_address0_local = zext_ln317_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            smem_8_address0_local = zext_ln316_fu_1486_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            smem_8_address0_local = zext_ln315_fu_1476_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1488)) begin
            smem_8_address1_local = zext_ln321_1_fu_1919_p1;
        end else if ((1'b1 == ap_condition_1484)) begin
            smem_8_address1_local = zext_ln320_1_fu_1909_p1;
        end else if ((1'b1 == ap_condition_1480)) begin
            smem_8_address1_local = zext_ln319_1_fu_1899_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            smem_8_address1_local = zext_ln318_1_fu_1889_p1;
        end else if ((1'b1 == ap_condition_1500)) begin
            smem_8_address1_local = zext_ln317_1_fu_1879_p1;
        end else if ((1'b1 == ap_condition_1496)) begin
            smem_8_address1_local = zext_ln316_1_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1492)) begin
            smem_8_address1_local = zext_ln315_1_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_8_address1_local = zext_ln172_5_fu_1466_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_9_address0_local = zext_ln172_6_fu_1849_p1;
        end else if ((1'b1 == ap_condition_1450)) begin
            smem_9_address0_local = zext_ln321_fu_1536_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            smem_9_address0_local = zext_ln320_fu_1526_p1;
        end else if ((1'b1 == ap_condition_1470)) begin
            smem_9_address0_local = zext_ln319_fu_1516_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            smem_9_address0_local = zext_ln318_fu_1506_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            smem_9_address0_local = zext_ln317_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1458)) begin
            smem_9_address0_local = zext_ln316_fu_1486_p1;
        end else if ((1'b1 == ap_condition_1454)) begin
            smem_9_address0_local = zext_ln315_fu_1476_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1480)) begin
            smem_9_address1_local = zext_ln321_1_fu_1919_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            smem_9_address1_local = zext_ln320_1_fu_1909_p1;
        end else if ((1'b1 == ap_condition_1500)) begin
            smem_9_address1_local = zext_ln319_1_fu_1899_p1;
        end else if ((1'b1 == ap_condition_1496)) begin
            smem_9_address1_local = zext_ln318_1_fu_1889_p1;
        end else if ((1'b1 == ap_condition_1492)) begin
            smem_9_address1_local = zext_ln317_1_fu_1879_p1;
        end else if ((1'b1 == ap_condition_1488)) begin
            smem_9_address1_local = zext_ln316_1_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1484)) begin
            smem_9_address1_local = zext_ln315_1_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_9_address1_local = zext_ln172_5_fu_1466_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln172_6_fu_1849_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            smem_address0_local = zext_ln321_fu_1536_p1;
        end else if ((1'b1 == ap_condition_1470)) begin
            smem_address0_local = zext_ln320_fu_1526_p1;
        end else if ((1'b1 == ap_condition_1466)) begin
            smem_address0_local = zext_ln319_fu_1516_p1;
        end else if ((1'b1 == ap_condition_1462)) begin
            smem_address0_local = zext_ln318_fu_1506_p1;
        end else if ((1'b1 == ap_condition_1458)) begin
            smem_address0_local = zext_ln317_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1454)) begin
            smem_address0_local = zext_ln316_fu_1486_p1;
        end else if ((1'b1 == ap_condition_1450)) begin
            smem_address0_local = zext_ln315_fu_1476_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1476)) begin
            smem_address1_local = zext_ln321_1_fu_1919_p1;
        end else if ((1'b1 == ap_condition_1500)) begin
            smem_address1_local = zext_ln320_1_fu_1909_p1;
        end else if ((1'b1 == ap_condition_1496)) begin
            smem_address1_local = zext_ln319_1_fu_1899_p1;
        end else if ((1'b1 == ap_condition_1492)) begin
            smem_address1_local = zext_ln318_1_fu_1889_p1;
        end else if ((1'b1 == ap_condition_1488)) begin
            smem_address1_local = zext_ln317_1_fu_1879_p1;
        end else if ((1'b1 == ap_condition_1484)) begin
            smem_address1_local = zext_ln316_1_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1480)) begin
            smem_address1_local = zext_ln315_1_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln172_5_fu_1466_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3== 1'b1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_2863 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
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
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1301_p2 = (tid_2_reg_2460 + 7'd2);
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
    ap_condition_1446 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2531 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1450 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2531 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1454 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2531 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1458 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2531 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1462 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2531 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1466 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2531 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1470 = ((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_reg_2531 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1476 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_2863 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1480 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_2863 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1484 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_2863 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1488 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_2863 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1492 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_2863 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1496 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_2863 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1500 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_2863 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_1271_p0 = {{tmp_19_fu_1249_p4}, {trunc_ln312_fu_1259_p1}};
assign grp_fu_1271_p1 = 9'd7;
assign grp_fu_1295_p0 = {{{tmp_19_reg_2472}, {tmp_30_fu_1277_p4}}, {1'd1}};
assign grp_fu_1295_p1 = 9'd7;
assign grp_fu_2327_p0 = zext_ln172_fu_1311_p1;
assign grp_fu_2327_p1 = 10'd32;
assign grp_fu_2327_p2 = 21'd1171;
assign grp_fu_2336_p0 = zext_ln172_fu_1311_p1;
assign grp_fu_2336_p1 = 10'd8;
assign grp_fu_2336_p2 = 21'd1171;
assign grp_fu_2345_p0 = zext_ln172_fu_1311_p1;
assign grp_fu_2345_p1 = 10'd40;
assign grp_fu_2345_p2 = 21'd1171;
assign grp_fu_2354_p0 = zext_ln172_fu_1311_p1;
assign grp_fu_2354_p1 = 10'd16;
assign grp_fu_2354_p2 = 21'd1171;
assign grp_fu_2363_p0 = zext_ln172_fu_1311_p1;
assign grp_fu_2363_p1 = 10'd48;
assign grp_fu_2363_p2 = 21'd1171;
assign grp_fu_2372_p0 = zext_ln172_fu_1311_p1;
assign grp_fu_2372_p1 = 10'd24;
assign grp_fu_2372_p2 = 21'd1171;
assign grp_fu_2381_p0 = zext_ln172_fu_1311_p1;
assign grp_fu_2381_p1 = 10'd56;
assign grp_fu_2381_p2 = 21'd1171;
assign grp_fu_2390_p0 = zext_ln172_8_fu_1314_p1;
assign grp_fu_2390_p1 = 10'd32;
assign grp_fu_2390_p2 = 21'd1171;
assign grp_fu_2399_p0 = zext_ln172_8_fu_1314_p1;
assign grp_fu_2399_p1 = 10'd8;
assign grp_fu_2399_p2 = 21'd1171;
assign grp_fu_2408_p0 = zext_ln172_8_fu_1314_p1;
assign grp_fu_2408_p1 = 10'd40;
assign grp_fu_2408_p2 = 21'd1171;
assign grp_fu_2417_p0 = zext_ln172_8_fu_1314_p1;
assign grp_fu_2417_p1 = 10'd16;
assign grp_fu_2417_p2 = 21'd1171;
assign grp_fu_2426_p0 = zext_ln172_8_fu_1314_p1;
assign grp_fu_2426_p1 = 10'd48;
assign grp_fu_2426_p2 = 21'd1171;
assign grp_fu_2435_p0 = zext_ln172_8_fu_1314_p1;
assign grp_fu_2435_p1 = 10'd24;
assign grp_fu_2435_p2 = 21'd1171;
assign grp_fu_2444_p0 = zext_ln172_8_fu_1314_p1;
assign grp_fu_2444_p1 = 10'd56;
assign grp_fu_2444_p2 = 21'd1171;
assign mul_ln172_1_fu_1549_p0 = mul_ln172_1_fu_1549_p00;
assign mul_ln172_1_fu_1549_p00 = offset_1_reg_2484_pp0_iter2_reg;
assign mul_ln172_1_fu_1549_p1 = 19'd586;
assign mul_ln172_fu_1383_p0 = mul_ln172_fu_1383_p00;
assign mul_ln172_fu_1383_p00 = offset_reg_2477_pp0_iter2_reg;
assign mul_ln172_fu_1383_p1 = 19'd586;
assign offset_1_fu_1286_p4 = {{{tmp_19_reg_2472}, {tmp_30_fu_1277_p4}}, {1'd1}};
assign offset_fu_1263_p3 = {{tmp_19_fu_1249_p4}, {trunc_ln312_fu_1259_p1}};
assign or_ln315_1_fu_2288_p3 = {{tmp_33_reg_3206}, {3'd6}};
assign or_ln318_1_fu_2301_p3 = {{tmp_33_reg_3206}, {3'd5}};
assign or_ln319_1_fu_2314_p3 = {{tmp_33_reg_3206}, {3'd7}};
assign or_ln3_fu_2249_p3 = {{trunc_ln314_reg_3195}, {2'd1}};
assign or_ln4_fu_2262_p3 = {{trunc_ln314_reg_3195}, {2'd3}};
assign or_ln_fu_1946_p3 = {{trunc_ln314_fu_1929_p1}, {2'd2}};
assign shl_ln314_1_fu_2275_p3 = {{tmp_33_reg_3206}, {3'd4}};
assign shl_ln7_fu_1932_p3 = {{trunc_ln314_fu_1929_p1}, {2'd0}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = smem_12_address1_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_14_fu_1604_p15 = 'bx;
assign tmp_15_fu_1639_p15 = 'bx;
assign tmp_16_fu_1674_p15 = 'bx;
assign tmp_17_fu_1709_p15 = 'bx;
assign tmp_18_fu_1744_p15 = 'bx;
assign tmp_19_fu_1249_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_21_fu_1317_p1 = grp_fu_2327_p3;
assign tmp_22_fu_1326_p1 = grp_fu_2336_p3;
assign tmp_23_fu_1335_p1 = grp_fu_2345_p3;
assign tmp_24_fu_1344_p1 = grp_fu_2354_p3;
assign tmp_25_fu_1353_p1 = grp_fu_2363_p3;
assign tmp_26_fu_1362_p1 = grp_fu_2372_p3;
assign tmp_27_fu_1779_p15 = 'bx;
assign tmp_28_fu_1371_p1 = grp_fu_2381_p3;
assign tmp_29_fu_1814_p15 = 'bx;
assign tmp_30_fu_1277_p4 = {{tid_2_reg_2460[5:1]}};
assign tmp_32_fu_1960_p15 = 'bx;
assign tmp_34_fu_1403_p1 = grp_fu_2390_p3;
assign tmp_35_fu_2004_p15 = 'bx;
assign tmp_36_fu_1412_p1 = grp_fu_2399_p3;
assign tmp_37_fu_2039_p15 = 'bx;
assign tmp_38_fu_1421_p1 = grp_fu_2408_p3;
assign tmp_39_fu_2074_p15 = 'bx;
assign tmp_40_fu_1430_p1 = grp_fu_2417_p3;
assign tmp_41_fu_2109_p15 = 'bx;
assign tmp_42_fu_1439_p1 = grp_fu_2426_p3;
assign tmp_43_fu_2144_p15 = 'bx;
assign tmp_44_fu_2179_p15 = 'bx;
assign tmp_45_fu_2214_p15 = 'bx;
assign tmp_46_fu_1448_p1 = grp_fu_2435_p3;
assign tmp_47_fu_1457_p1 = grp_fu_2444_p3;
assign tmp_s_fu_1569_p15 = 'bx;
assign trunc_ln172_1_fu_1565_p1 = grp_fu_1295_p2[2:0];
assign trunc_ln172_fu_1399_p1 = grp_fu_1271_p2[2:0];
assign trunc_ln312_fu_1259_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_1929_p1 = tid_2_reg_2460_pp0_iter3_reg[5:0];
assign zext_ln172_5_fu_1466_p1 = tmp_20_reg_2526;
assign zext_ln172_6_fu_1849_p1 = tmp_31_reg_2858;
assign zext_ln172_8_fu_1314_p1 = offset_1_reg_2484_pp0_iter1_reg;
assign zext_ln172_fu_1311_p1 = offset_reg_2477_pp0_iter1_reg;
assign zext_ln314_1_fu_2282_p1 = shl_ln314_1_fu_2275_p3;
assign zext_ln314_fu_1940_p1 = shl_ln7_fu_1932_p3;
assign zext_ln315_1_fu_1859_p1 = tmp_34_reg_2543;
assign zext_ln315_2_fu_1954_p1 = or_ln_fu_1946_p3;
assign zext_ln315_3_fu_2295_p1 = or_ln315_1_fu_2288_p3;
assign zext_ln315_fu_1476_p1 = tmp_21_reg_2491;
assign zext_ln316_1_fu_1869_p1 = tmp_36_reg_2548;
assign zext_ln316_fu_1486_p1 = tmp_22_reg_2496;
assign zext_ln317_1_fu_1879_p1 = tmp_38_reg_2553;
assign zext_ln317_fu_1496_p1 = tmp_23_reg_2501;
assign zext_ln318_1_fu_1889_p1 = tmp_40_reg_2558;
assign zext_ln318_2_fu_2256_p1 = or_ln3_fu_2249_p3;
assign zext_ln318_3_fu_2308_p1 = or_ln318_1_fu_2301_p3;
assign zext_ln318_fu_1506_p1 = tmp_24_reg_2506;
assign zext_ln319_1_fu_1899_p1 = tmp_42_reg_2563;
assign zext_ln319_2_fu_2269_p1 = or_ln4_fu_2262_p3;
assign zext_ln319_3_fu_2321_p1 = or_ln319_1_fu_2314_p3;
assign zext_ln319_fu_1516_p1 = tmp_25_reg_2511;
assign zext_ln320_1_fu_1909_p1 = tmp_46_reg_2568;
assign zext_ln320_fu_1526_p1 = tmp_26_reg_2516;
assign zext_ln321_1_fu_1919_p1 = tmp_47_reg_2573;
assign zext_ln321_fu_1536_p1 = tmp_28_reg_2521;
always @ (posedge ap_clk) begin
    offset_1_reg_2484[0] <= 1'b1;
    offset_1_reg_2484_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_2484_pp0_iter2_reg[0] <= 1'b1;
end
endmodule 
