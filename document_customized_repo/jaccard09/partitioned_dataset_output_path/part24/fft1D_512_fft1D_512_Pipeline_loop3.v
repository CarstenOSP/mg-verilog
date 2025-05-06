
module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_we0,DATA_x_15_d0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_we0,DATA_x_14_d0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_we0,DATA_x_13_d0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_we0,DATA_x_12_d0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_we0,DATA_x_11_d0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_we0,DATA_x_10_d0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_we0,DATA_x_9_d0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_we0,DATA_x_8_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
output   DATA_x_15_we0;
output  [63:0] DATA_x_15_d0;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
output   DATA_x_14_we0;
output  [63:0] DATA_x_14_d0;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
output   DATA_x_13_we0;
output  [63:0] DATA_x_13_d0;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
output   DATA_x_12_we0;
output  [63:0] DATA_x_12_d0;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
output   DATA_x_11_we0;
output  [63:0] DATA_x_11_d0;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
output   DATA_x_10_we0;
output  [63:0] DATA_x_10_d0;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
output   DATA_x_9_we0;
output  [63:0] DATA_x_9_d0;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
output   DATA_x_8_we0;
output  [63:0] DATA_x_8_d0;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [5:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [5:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_2173_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] offset_fu_2211_p2;
reg   [8:0] offset_reg_3876;
reg   [8:0] offset_reg_3876_pp0_iter1_reg;
reg   [8:0] offset_reg_3876_pp0_iter2_reg;
reg   [8:0] offset_reg_3876_pp0_iter3_reg;
reg   [8:0] offset_reg_3876_pp0_iter4_reg;
reg   [8:0] offset_reg_3876_pp0_iter5_reg;
reg   [8:0] offset_reg_3876_pp0_iter6_reg;
reg   [8:0] offset_reg_3876_pp0_iter7_reg;
reg   [8:0] offset_reg_3876_pp0_iter8_reg;
reg   [8:0] offset_reg_3876_pp0_iter9_reg;
reg   [8:0] offset_reg_3876_pp0_iter10_reg;
reg   [4:0] lshr_ln2_reg_3888;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter1_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter2_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter3_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter4_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter5_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter6_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter7_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter8_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter9_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter10_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter11_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter12_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter13_reg;
reg   [4:0] lshr_ln2_reg_3888_pp0_iter14_reg;
wire   [8:0] offset_10_fu_2255_p2;
reg   [8:0] offset_10_reg_3893;
reg   [8:0] offset_10_reg_3893_pp0_iter1_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter2_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter3_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter4_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter5_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter6_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter7_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter8_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter9_reg;
reg   [8:0] offset_10_reg_3893_pp0_iter10_reg;
reg   [5:0] tmp_151_reg_3905;
reg   [5:0] tmp_151_reg_3905_pp0_iter12_reg;
wire   [8:0] add_ln194_fu_2303_p2;
reg   [8:0] add_ln194_reg_3910;
wire   [8:0] add_ln195_fu_2308_p2;
reg   [8:0] add_ln195_reg_3915;
wire   [8:0] add_ln196_fu_2313_p2;
reg   [8:0] add_ln196_reg_3920;
wire   [8:0] add_ln197_fu_2318_p2;
reg   [8:0] add_ln197_reg_3925;
wire   [8:0] add_ln199_fu_2323_p2;
reg   [8:0] add_ln199_reg_3930;
reg   [5:0] tmp_159_reg_3935;
reg   [5:0] tmp_159_reg_3935_pp0_iter12_reg;
wire   [8:0] add_ln194_1_fu_2347_p2;
reg   [8:0] add_ln194_1_reg_3940;
wire   [8:0] add_ln195_1_fu_2352_p2;
reg   [8:0] add_ln195_1_reg_3945;
wire   [8:0] add_ln196_1_fu_2357_p2;
reg   [8:0] add_ln196_1_reg_3950;
wire   [8:0] add_ln197_1_fu_2362_p2;
reg   [8:0] add_ln197_1_reg_3955;
wire   [8:0] add_ln199_1_fu_2367_p2;
reg   [8:0] add_ln199_1_reg_3960;
wire   [3:0] trunc_ln172_fu_2372_p1;
reg   [3:0] trunc_ln172_reg_3965;
reg   [3:0] trunc_ln172_reg_3965_pp0_iter13_reg;
reg   [5:0] tmp_152_reg_3977;
reg   [5:0] tmp_153_reg_3982;
reg   [5:0] tmp_154_reg_3987;
reg   [5:0] tmp_155_reg_3992;
reg   [5:0] tmp_157_reg_3997;
wire   [3:0] trunc_ln172_11_fu_2471_p1;
reg   [3:0] trunc_ln172_11_reg_4002;
reg   [3:0] trunc_ln172_11_reg_4002_pp0_iter13_reg;
reg   [5:0] tmp_160_reg_4014;
reg   [5:0] tmp_161_reg_4019;
reg   [5:0] tmp_162_reg_4024;
reg   [5:0] tmp_163_reg_4029;
reg   [5:0] tmp_165_reg_4034;
wire   [63:0] tmp_s_fu_2866_p29;
reg   [63:0] tmp_s_reg_5079;
wire   [63:0] tmp_19_fu_2925_p29;
reg   [63:0] tmp_19_reg_5084;
wire   [63:0] tmp_20_fu_2984_p29;
reg   [63:0] tmp_20_reg_5089;
wire   [63:0] tmp_21_fu_3043_p29;
reg   [63:0] tmp_21_reg_5094;
wire   [63:0] tmp_22_fu_3102_p29;
reg   [63:0] tmp_22_reg_5099;
wire   [63:0] tmp_23_fu_3161_p29;
reg   [63:0] tmp_23_reg_5104;
wire   [63:0] tmp_24_fu_3220_p29;
reg   [63:0] tmp_24_reg_5109;
wire   [63:0] tmp_25_fu_3279_p29;
reg   [63:0] tmp_25_reg_5114;
wire   [63:0] tmp_26_fu_3338_p29;
reg   [63:0] tmp_26_reg_5119;
wire   [63:0] tmp_27_fu_3397_p29;
reg   [63:0] tmp_27_reg_5124;
wire   [63:0] tmp_28_fu_3456_p29;
reg   [63:0] tmp_28_reg_5129;
wire   [63:0] tmp_29_fu_3515_p29;
reg   [63:0] tmp_29_reg_5134;
wire   [63:0] tmp_30_fu_3574_p29;
reg   [63:0] tmp_30_reg_5139;
wire   [63:0] tmp_31_fu_3633_p29;
reg   [63:0] tmp_31_reg_5144;
wire   [63:0] tmp_32_fu_3692_p29;
reg   [63:0] tmp_32_reg_5149;
wire   [63:0] tmp_33_fu_3751_p29;
reg   [63:0] tmp_33_reg_5154;
wire   [63:0] zext_ln172_2_fu_2570_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_fu_2586_p1;
wire   [63:0] zext_ln195_fu_2602_p1;
wire   [63:0] zext_ln196_fu_2618_p1;
wire   [63:0] zext_ln197_fu_2634_p1;
wire   [63:0] zext_ln198_fu_2659_p1;
wire   [63:0] zext_ln199_fu_2676_p1;
wire   [63:0] zext_ln200_fu_2701_p1;
wire   [63:0] zext_ln172_3_fu_2718_p1;
wire   [63:0] zext_ln194_1_fu_2734_p1;
wire   [63:0] zext_ln195_1_fu_2750_p1;
wire   [63:0] zext_ln196_1_fu_2766_p1;
wire   [63:0] zext_ln197_1_fu_2782_p1;
wire   [63:0] zext_ln198_1_fu_2807_p1;
wire   [63:0] zext_ln199_1_fu_2824_p1;
wire   [63:0] zext_ln200_1_fu_2849_p1;
wire   [63:0] zext_ln193_fu_3810_p1;
reg   [6:0] tid_2_fu_172;
wire   [6:0] add_ln188_fu_2267_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce1_local;
reg   [5:0] smem_address1_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [5:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [5:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [5:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [5:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_5_ce1_local;
reg   [5:0] smem_5_address1_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_6_ce1_local;
reg   [5:0] smem_6_address1_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_7_ce1_local;
reg   [5:0] smem_7_address1_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg   [5:0] smem_8_address1_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg   [5:0] smem_9_address1_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_11_ce1_local;
reg   [5:0] smem_11_address1_local;
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_12_ce1_local;
reg   [5:0] smem_12_address1_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_8_we0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_12_we0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_9_we0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_13_we0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_10_we0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_14_we0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_11_we0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_15_we0_local;
reg    DATA_x_15_ce0_local;
wire   [2:0] hi_fu_2181_p4;
wire   [2:0] trunc_ln191_fu_2195_p1;
wire   [8:0] mul_ln_fu_2199_p5;
wire   [8:0] zext_ln114_fu_2191_p1;
wire   [8:0] grp_fu_2217_p0;
wire   [4:0] grp_fu_2217_p1;
wire   [1:0] tmp_52_fu_2233_p4;
wire   [8:0] mul_ln191_1_fu_2243_p5;
wire   [8:0] grp_fu_2261_p0;
wire   [4:0] grp_fu_2261_p1;
wire   [8:0] mul_ln172_2_fu_2287_p0;
wire   [10:0] mul_ln172_2_fu_2287_p1;
wire   [18:0] mul_ln172_2_fu_2287_p2;
wire   [8:0] mul_ln172_3_fu_2331_p0;
wire   [10:0] mul_ln172_3_fu_2331_p1;
wire   [18:0] mul_ln172_3_fu_2331_p2;
wire   [3:0] grp_fu_2217_p2;
wire   [8:0] mul_ln194_fu_2379_p0;
wire   [10:0] mul_ln194_fu_2379_p1;
wire   [18:0] mul_ln194_fu_2379_p2;
wire   [8:0] mul_ln195_fu_2398_p0;
wire   [10:0] mul_ln195_fu_2398_p1;
wire   [18:0] mul_ln195_fu_2398_p2;
wire   [8:0] mul_ln196_fu_2417_p0;
wire   [10:0] mul_ln196_fu_2417_p1;
wire   [18:0] mul_ln196_fu_2417_p2;
wire   [8:0] mul_ln197_fu_2436_p0;
wire   [10:0] mul_ln197_fu_2436_p1;
wire   [18:0] mul_ln197_fu_2436_p2;
wire   [8:0] mul_ln199_fu_2455_p0;
wire   [10:0] mul_ln199_fu_2455_p1;
wire   [18:0] mul_ln199_fu_2455_p2;
wire   [3:0] grp_fu_2261_p2;
wire   [8:0] mul_ln194_1_fu_2478_p0;
wire   [10:0] mul_ln194_1_fu_2478_p1;
wire   [18:0] mul_ln194_1_fu_2478_p2;
wire   [8:0] mul_ln195_1_fu_2497_p0;
wire   [10:0] mul_ln195_1_fu_2497_p1;
wire   [18:0] mul_ln195_1_fu_2497_p2;
wire   [8:0] mul_ln196_1_fu_2516_p0;
wire   [10:0] mul_ln196_1_fu_2516_p1;
wire   [18:0] mul_ln196_1_fu_2516_p2;
wire   [8:0] mul_ln197_1_fu_2535_p0;
wire   [10:0] mul_ln197_1_fu_2535_p1;
wire   [18:0] mul_ln197_1_fu_2535_p2;
wire   [8:0] mul_ln199_1_fu_2554_p0;
wire   [10:0] mul_ln199_1_fu_2554_p1;
wire   [18:0] mul_ln199_1_fu_2554_p2;
wire   [20:0] tmp_156_fu_2650_p1;
wire  signed [20:0] grp_fu_3829_p3;
wire   [6:0] tmp_156_fu_2650_p4;
wire   [20:0] tmp_158_fu_2692_p1;
wire  signed [20:0] grp_fu_3838_p3;
wire   [6:0] tmp_158_fu_2692_p4;
wire   [20:0] tmp_164_fu_2798_p1;
wire  signed [20:0] grp_fu_3847_p3;
wire   [6:0] tmp_164_fu_2798_p4;
wire   [20:0] tmp_166_fu_2840_p1;
wire  signed [20:0] grp_fu_3856_p3;
wire   [6:0] tmp_166_fu_2840_p4;
wire   [63:0] tmp_s_fu_2866_p27;
wire   [63:0] tmp_19_fu_2925_p27;
wire   [63:0] tmp_20_fu_2984_p27;
wire   [63:0] tmp_21_fu_3043_p27;
wire   [63:0] tmp_22_fu_3102_p27;
wire   [63:0] tmp_23_fu_3161_p27;
wire   [63:0] tmp_24_fu_3220_p27;
wire   [63:0] tmp_25_fu_3279_p27;
wire   [63:0] tmp_26_fu_3338_p27;
wire   [63:0] tmp_27_fu_3397_p27;
wire   [63:0] tmp_28_fu_3456_p27;
wire   [63:0] tmp_29_fu_3515_p27;
wire   [63:0] tmp_30_fu_3574_p27;
wire   [63:0] tmp_31_fu_3633_p27;
wire   [63:0] tmp_32_fu_3692_p27;
wire   [63:0] tmp_33_fu_3751_p27;
wire   [8:0] grp_fu_3829_p0;
wire   [9:0] zext_ln172_26_fu_2278_p1;
wire   [5:0] grp_fu_3829_p1;
wire   [10:0] grp_fu_3829_p2;
wire   [8:0] grp_fu_3838_p0;
wire   [5:0] grp_fu_3838_p1;
wire   [10:0] grp_fu_3838_p2;
wire   [8:0] grp_fu_3847_p0;
wire   [9:0] zext_ln172_27_fu_2281_p1;
wire   [5:0] grp_fu_3847_p1;
wire   [10:0] grp_fu_3847_p2;
wire   [8:0] grp_fu_3856_p0;
wire   [5:0] grp_fu_3856_p1;
wire   [10:0] grp_fu_3856_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_2_fu_2287_p00;
wire   [18:0] mul_ln172_3_fu_2331_p00;
wire   [18:0] mul_ln194_1_fu_2478_p00;
wire   [18:0] mul_ln194_fu_2379_p00;
wire   [18:0] mul_ln195_1_fu_2497_p00;
wire   [18:0] mul_ln195_fu_2398_p00;
wire   [18:0] mul_ln196_1_fu_2516_p00;
wire   [18:0] mul_ln196_fu_2417_p00;
wire   [18:0] mul_ln197_1_fu_2535_p00;
wire   [18:0] mul_ln197_fu_2436_p00;
wire   [18:0] mul_ln199_1_fu_2554_p00;
wire   [18:0] mul_ln199_fu_2455_p00;
wire   [3:0] tmp_s_fu_2866_p1;
wire   [3:0] tmp_s_fu_2866_p3;
wire   [3:0] tmp_s_fu_2866_p5;
wire   [3:0] tmp_s_fu_2866_p7;
wire   [3:0] tmp_s_fu_2866_p9;
wire   [3:0] tmp_s_fu_2866_p11;
wire   [3:0] tmp_s_fu_2866_p13;
wire   [3:0] tmp_s_fu_2866_p15;
wire  signed [3:0] tmp_s_fu_2866_p17;
wire  signed [3:0] tmp_s_fu_2866_p19;
wire  signed [3:0] tmp_s_fu_2866_p21;
wire  signed [3:0] tmp_s_fu_2866_p23;
wire  signed [3:0] tmp_s_fu_2866_p25;
wire   [3:0] tmp_19_fu_2925_p1;
wire  signed [3:0] tmp_19_fu_2925_p3;
wire  signed [3:0] tmp_19_fu_2925_p5;
wire  signed [3:0] tmp_19_fu_2925_p7;
wire  signed [3:0] tmp_19_fu_2925_p9;
wire  signed [3:0] tmp_19_fu_2925_p11;
wire   [3:0] tmp_19_fu_2925_p13;
wire   [3:0] tmp_19_fu_2925_p15;
wire   [3:0] tmp_19_fu_2925_p17;
wire   [3:0] tmp_19_fu_2925_p19;
wire   [3:0] tmp_19_fu_2925_p21;
wire   [3:0] tmp_19_fu_2925_p23;
wire   [3:0] tmp_19_fu_2925_p25;
wire   [3:0] tmp_20_fu_2984_p1;
wire   [3:0] tmp_20_fu_2984_p3;
wire   [3:0] tmp_20_fu_2984_p5;
wire  signed [3:0] tmp_20_fu_2984_p7;
wire  signed [3:0] tmp_20_fu_2984_p9;
wire  signed [3:0] tmp_20_fu_2984_p11;
wire  signed [3:0] tmp_20_fu_2984_p13;
wire  signed [3:0] tmp_20_fu_2984_p15;
wire   [3:0] tmp_20_fu_2984_p17;
wire   [3:0] tmp_20_fu_2984_p19;
wire   [3:0] tmp_20_fu_2984_p21;
wire   [3:0] tmp_20_fu_2984_p23;
wire   [3:0] tmp_20_fu_2984_p25;
wire  signed [3:0] tmp_21_fu_3043_p1;
wire   [3:0] tmp_21_fu_3043_p3;
wire   [3:0] tmp_21_fu_3043_p5;
wire   [3:0] tmp_21_fu_3043_p7;
wire   [3:0] tmp_21_fu_3043_p9;
wire   [3:0] tmp_21_fu_3043_p11;
wire   [3:0] tmp_21_fu_3043_p13;
wire   [3:0] tmp_21_fu_3043_p15;
wire   [3:0] tmp_21_fu_3043_p17;
wire  signed [3:0] tmp_21_fu_3043_p19;
wire  signed [3:0] tmp_21_fu_3043_p21;
wire  signed [3:0] tmp_21_fu_3043_p23;
wire  signed [3:0] tmp_21_fu_3043_p25;
wire  signed [3:0] tmp_22_fu_3102_p1;
wire  signed [3:0] tmp_22_fu_3102_p3;
wire  signed [3:0] tmp_22_fu_3102_p5;
wire   [3:0] tmp_22_fu_3102_p7;
wire   [3:0] tmp_22_fu_3102_p9;
wire   [3:0] tmp_22_fu_3102_p11;
wire   [3:0] tmp_22_fu_3102_p13;
wire   [3:0] tmp_22_fu_3102_p15;
wire   [3:0] tmp_22_fu_3102_p17;
wire   [3:0] tmp_22_fu_3102_p19;
wire   [3:0] tmp_22_fu_3102_p21;
wire  signed [3:0] tmp_22_fu_3102_p23;
wire  signed [3:0] tmp_22_fu_3102_p25;
wire   [3:0] tmp_23_fu_3161_p1;
wire   [3:0] tmp_23_fu_3161_p3;
wire   [3:0] tmp_23_fu_3161_p5;
wire   [3:0] tmp_23_fu_3161_p7;
wire  signed [3:0] tmp_23_fu_3161_p9;
wire  signed [3:0] tmp_23_fu_3161_p11;
wire  signed [3:0] tmp_23_fu_3161_p13;
wire  signed [3:0] tmp_23_fu_3161_p15;
wire  signed [3:0] tmp_23_fu_3161_p17;
wire   [3:0] tmp_23_fu_3161_p19;
wire   [3:0] tmp_23_fu_3161_p21;
wire   [3:0] tmp_23_fu_3161_p23;
wire   [3:0] tmp_23_fu_3161_p25;
wire   [3:0] tmp_24_fu_3220_p1;
wire   [3:0] tmp_24_fu_3220_p3;
wire   [3:0] tmp_24_fu_3220_p5;
wire   [3:0] tmp_24_fu_3220_p7;
wire   [3:0] tmp_24_fu_3220_p9;
wire   [3:0] tmp_24_fu_3220_p11;
wire  signed [3:0] tmp_24_fu_3220_p13;
wire  signed [3:0] tmp_24_fu_3220_p15;
wire  signed [3:0] tmp_24_fu_3220_p17;
wire  signed [3:0] tmp_24_fu_3220_p19;
wire  signed [3:0] tmp_24_fu_3220_p21;
wire   [3:0] tmp_24_fu_3220_p23;
wire   [3:0] tmp_24_fu_3220_p25;
wire  signed [3:0] tmp_25_fu_3279_p1;
wire  signed [3:0] tmp_25_fu_3279_p3;
wire  signed [3:0] tmp_25_fu_3279_p5;
wire  signed [3:0] tmp_25_fu_3279_p7;
wire   [3:0] tmp_25_fu_3279_p9;
wire   [3:0] tmp_25_fu_3279_p11;
wire   [3:0] tmp_25_fu_3279_p13;
wire   [3:0] tmp_25_fu_3279_p15;
wire   [3:0] tmp_25_fu_3279_p17;
wire   [3:0] tmp_25_fu_3279_p19;
wire   [3:0] tmp_25_fu_3279_p21;
wire   [3:0] tmp_25_fu_3279_p23;
wire  signed [3:0] tmp_25_fu_3279_p25;
wire   [3:0] tmp_26_fu_3338_p1;
wire   [3:0] tmp_26_fu_3338_p3;
wire   [3:0] tmp_26_fu_3338_p5;
wire   [3:0] tmp_26_fu_3338_p7;
wire   [3:0] tmp_26_fu_3338_p9;
wire   [3:0] tmp_26_fu_3338_p11;
wire   [3:0] tmp_26_fu_3338_p13;
wire   [3:0] tmp_26_fu_3338_p15;
wire  signed [3:0] tmp_26_fu_3338_p17;
wire  signed [3:0] tmp_26_fu_3338_p19;
wire  signed [3:0] tmp_26_fu_3338_p21;
wire  signed [3:0] tmp_26_fu_3338_p23;
wire  signed [3:0] tmp_26_fu_3338_p25;
wire   [3:0] tmp_27_fu_3397_p1;
wire  signed [3:0] tmp_27_fu_3397_p3;
wire  signed [3:0] tmp_27_fu_3397_p5;
wire  signed [3:0] tmp_27_fu_3397_p7;
wire  signed [3:0] tmp_27_fu_3397_p9;
wire  signed [3:0] tmp_27_fu_3397_p11;
wire   [3:0] tmp_27_fu_3397_p13;
wire   [3:0] tmp_27_fu_3397_p15;
wire   [3:0] tmp_27_fu_3397_p17;
wire   [3:0] tmp_27_fu_3397_p19;
wire   [3:0] tmp_27_fu_3397_p21;
wire   [3:0] tmp_27_fu_3397_p23;
wire   [3:0] tmp_27_fu_3397_p25;
wire   [3:0] tmp_28_fu_3456_p1;
wire   [3:0] tmp_28_fu_3456_p3;
wire   [3:0] tmp_28_fu_3456_p5;
wire  signed [3:0] tmp_28_fu_3456_p7;
wire  signed [3:0] tmp_28_fu_3456_p9;
wire  signed [3:0] tmp_28_fu_3456_p11;
wire  signed [3:0] tmp_28_fu_3456_p13;
wire  signed [3:0] tmp_28_fu_3456_p15;
wire   [3:0] tmp_28_fu_3456_p17;
wire   [3:0] tmp_28_fu_3456_p19;
wire   [3:0] tmp_28_fu_3456_p21;
wire   [3:0] tmp_28_fu_3456_p23;
wire   [3:0] tmp_28_fu_3456_p25;
wire  signed [3:0] tmp_29_fu_3515_p1;
wire   [3:0] tmp_29_fu_3515_p3;
wire   [3:0] tmp_29_fu_3515_p5;
wire   [3:0] tmp_29_fu_3515_p7;
wire   [3:0] tmp_29_fu_3515_p9;
wire   [3:0] tmp_29_fu_3515_p11;
wire   [3:0] tmp_29_fu_3515_p13;
wire   [3:0] tmp_29_fu_3515_p15;
wire   [3:0] tmp_29_fu_3515_p17;
wire  signed [3:0] tmp_29_fu_3515_p19;
wire  signed [3:0] tmp_29_fu_3515_p21;
wire  signed [3:0] tmp_29_fu_3515_p23;
wire  signed [3:0] tmp_29_fu_3515_p25;
wire  signed [3:0] tmp_30_fu_3574_p1;
wire  signed [3:0] tmp_30_fu_3574_p3;
wire  signed [3:0] tmp_30_fu_3574_p5;
wire   [3:0] tmp_30_fu_3574_p7;
wire   [3:0] tmp_30_fu_3574_p9;
wire   [3:0] tmp_30_fu_3574_p11;
wire   [3:0] tmp_30_fu_3574_p13;
wire   [3:0] tmp_30_fu_3574_p15;
wire   [3:0] tmp_30_fu_3574_p17;
wire   [3:0] tmp_30_fu_3574_p19;
wire   [3:0] tmp_30_fu_3574_p21;
wire  signed [3:0] tmp_30_fu_3574_p23;
wire  signed [3:0] tmp_30_fu_3574_p25;
wire   [3:0] tmp_31_fu_3633_p1;
wire   [3:0] tmp_31_fu_3633_p3;
wire   [3:0] tmp_31_fu_3633_p5;
wire   [3:0] tmp_31_fu_3633_p7;
wire  signed [3:0] tmp_31_fu_3633_p9;
wire  signed [3:0] tmp_31_fu_3633_p11;
wire  signed [3:0] tmp_31_fu_3633_p13;
wire  signed [3:0] tmp_31_fu_3633_p15;
wire  signed [3:0] tmp_31_fu_3633_p17;
wire   [3:0] tmp_31_fu_3633_p19;
wire   [3:0] tmp_31_fu_3633_p21;
wire   [3:0] tmp_31_fu_3633_p23;
wire   [3:0] tmp_31_fu_3633_p25;
wire   [3:0] tmp_32_fu_3692_p1;
wire   [3:0] tmp_32_fu_3692_p3;
wire   [3:0] tmp_32_fu_3692_p5;
wire   [3:0] tmp_32_fu_3692_p7;
wire   [3:0] tmp_32_fu_3692_p9;
wire   [3:0] tmp_32_fu_3692_p11;
wire  signed [3:0] tmp_32_fu_3692_p13;
wire  signed [3:0] tmp_32_fu_3692_p15;
wire  signed [3:0] tmp_32_fu_3692_p17;
wire  signed [3:0] tmp_32_fu_3692_p19;
wire  signed [3:0] tmp_32_fu_3692_p21;
wire   [3:0] tmp_32_fu_3692_p23;
wire   [3:0] tmp_32_fu_3692_p25;
wire  signed [3:0] tmp_33_fu_3751_p1;
wire  signed [3:0] tmp_33_fu_3751_p3;
wire  signed [3:0] tmp_33_fu_3751_p5;
wire  signed [3:0] tmp_33_fu_3751_p7;
wire   [3:0] tmp_33_fu_3751_p9;
wire   [3:0] tmp_33_fu_3751_p11;
wire   [3:0] tmp_33_fu_3751_p13;
wire   [3:0] tmp_33_fu_3751_p15;
wire   [3:0] tmp_33_fu_3751_p17;
wire   [3:0] tmp_33_fu_3751_p19;
wire   [3:0] tmp_33_fu_3751_p21;
wire   [3:0] tmp_33_fu_3751_p23;
wire  signed [3:0] tmp_33_fu_3751_p25;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 tid_2_fu_172 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U220(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2217_p0),.din1(grp_fu_2217_p1),.ce(1'b1),.dout(grp_fu_2217_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U221(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2261_p0),.din1(grp_fu_2261_p1),.ce(1'b1),.dout(grp_fu_2261_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U222(.din0(mul_ln172_2_fu_2287_p0),.din1(mul_ln172_2_fu_2287_p1),.dout(mul_ln172_2_fu_2287_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U223(.din0(mul_ln172_3_fu_2331_p0),.din1(mul_ln172_3_fu_2331_p1),.dout(mul_ln172_3_fu_2331_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U224(.din0(mul_ln194_fu_2379_p0),.din1(mul_ln194_fu_2379_p1),.dout(mul_ln194_fu_2379_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U225(.din0(mul_ln195_fu_2398_p0),.din1(mul_ln195_fu_2398_p1),.dout(mul_ln195_fu_2398_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U226(.din0(mul_ln196_fu_2417_p0),.din1(mul_ln196_fu_2417_p1),.dout(mul_ln196_fu_2417_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U227(.din0(mul_ln197_fu_2436_p0),.din1(mul_ln197_fu_2436_p1),.dout(mul_ln197_fu_2436_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U228(.din0(mul_ln199_fu_2455_p0),.din1(mul_ln199_fu_2455_p1),.dout(mul_ln199_fu_2455_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U229(.din0(mul_ln194_1_fu_2478_p0),.din1(mul_ln194_1_fu_2478_p1),.dout(mul_ln194_1_fu_2478_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U230(.din0(mul_ln195_1_fu_2497_p0),.din1(mul_ln195_1_fu_2497_p1),.dout(mul_ln195_1_fu_2497_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U231(.din0(mul_ln196_1_fu_2516_p0),.din1(mul_ln196_1_fu_2516_p1),.dout(mul_ln196_1_fu_2516_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U232(.din0(mul_ln197_1_fu_2535_p0),.din1(mul_ln197_1_fu_2535_p1),.dout(mul_ln197_1_fu_2535_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U233(.din0(mul_ln199_1_fu_2554_p0),.din1(mul_ln199_1_fu_2554_p1),.dout(mul_ln199_1_fu_2554_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U234(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_s_fu_2866_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_s_fu_2866_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U235(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_19_fu_2925_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_19_fu_2925_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U236(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_20_fu_2984_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_20_fu_2984_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U237(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_21_fu_3043_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_21_fu_3043_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U238(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_22_fu_3102_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_22_fu_3102_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U239(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_23_fu_3161_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_23_fu_3161_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U240(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_24_fu_3220_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_24_fu_3220_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U241(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_25_fu_3279_p27),.sel(trunc_ln172_reg_3965_pp0_iter13_reg),.dout(tmp_25_fu_3279_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U242(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_26_fu_3338_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_26_fu_3338_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U243(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_27_fu_3397_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_27_fu_3397_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U244(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_28_fu_3456_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_28_fu_3456_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U245(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_29_fu_3515_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_29_fu_3515_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U246(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_30_fu_3574_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_30_fu_3574_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U247(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_31_fu_3633_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_31_fu_3633_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U248(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_32_fu_3692_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_32_fu_3692_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U249(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_33_fu_3751_p27),.sel(trunc_ln172_11_reg_4002_pp0_iter13_reg),.dout(tmp_33_fu_3751_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U250(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3829_p0),.din1(grp_fu_3829_p1),.din2(grp_fu_3829_p2),.ce(1'b1),.dout(grp_fu_3829_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U251(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3838_p0),.din1(grp_fu_3838_p1),.din2(grp_fu_3838_p2),.ce(1'b1),.dout(grp_fu_3838_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U252(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3847_p0),.din1(grp_fu_3847_p1),.din2(grp_fu_3847_p2),.ce(1'b1),.dout(grp_fu_3847_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U253(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3856_p0),.din1(grp_fu_3856_p1),.din2(grp_fu_3856_p2),.ce(1'b1),.dout(grp_fu_3856_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_2173_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_2_fu_172 <= add_ln188_fu_2267_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_2_fu_172 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln194_1_reg_3940 <= add_ln194_1_fu_2347_p2;
        add_ln194_reg_3910 <= add_ln194_fu_2303_p2;
        add_ln195_1_reg_3945 <= add_ln195_1_fu_2352_p2;
        add_ln195_reg_3915 <= add_ln195_fu_2308_p2;
        add_ln196_1_reg_3950 <= add_ln196_1_fu_2357_p2;
        add_ln196_reg_3920 <= add_ln196_fu_2313_p2;
        add_ln197_1_reg_3955 <= add_ln197_1_fu_2362_p2;
        add_ln197_reg_3925 <= add_ln197_fu_2318_p2;
        add_ln199_1_reg_3960 <= add_ln199_1_fu_2367_p2;
        add_ln199_reg_3930 <= add_ln199_fu_2323_p2;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln2_reg_3888_pp0_iter10_reg <= lshr_ln2_reg_3888_pp0_iter9_reg;
        lshr_ln2_reg_3888_pp0_iter11_reg <= lshr_ln2_reg_3888_pp0_iter10_reg;
        lshr_ln2_reg_3888_pp0_iter12_reg <= lshr_ln2_reg_3888_pp0_iter11_reg;
        lshr_ln2_reg_3888_pp0_iter13_reg <= lshr_ln2_reg_3888_pp0_iter12_reg;
        lshr_ln2_reg_3888_pp0_iter14_reg <= lshr_ln2_reg_3888_pp0_iter13_reg;
        lshr_ln2_reg_3888_pp0_iter2_reg <= lshr_ln2_reg_3888_pp0_iter1_reg;
        lshr_ln2_reg_3888_pp0_iter3_reg <= lshr_ln2_reg_3888_pp0_iter2_reg;
        lshr_ln2_reg_3888_pp0_iter4_reg <= lshr_ln2_reg_3888_pp0_iter3_reg;
        lshr_ln2_reg_3888_pp0_iter5_reg <= lshr_ln2_reg_3888_pp0_iter4_reg;
        lshr_ln2_reg_3888_pp0_iter6_reg <= lshr_ln2_reg_3888_pp0_iter5_reg;
        lshr_ln2_reg_3888_pp0_iter7_reg <= lshr_ln2_reg_3888_pp0_iter6_reg;
        lshr_ln2_reg_3888_pp0_iter8_reg <= lshr_ln2_reg_3888_pp0_iter7_reg;
        lshr_ln2_reg_3888_pp0_iter9_reg <= lshr_ln2_reg_3888_pp0_iter8_reg;
        offset_10_reg_3893_pp0_iter10_reg <= offset_10_reg_3893_pp0_iter9_reg;
        offset_10_reg_3893_pp0_iter2_reg <= offset_10_reg_3893_pp0_iter1_reg;
        offset_10_reg_3893_pp0_iter3_reg <= offset_10_reg_3893_pp0_iter2_reg;
        offset_10_reg_3893_pp0_iter4_reg <= offset_10_reg_3893_pp0_iter3_reg;
        offset_10_reg_3893_pp0_iter5_reg <= offset_10_reg_3893_pp0_iter4_reg;
        offset_10_reg_3893_pp0_iter6_reg <= offset_10_reg_3893_pp0_iter5_reg;
        offset_10_reg_3893_pp0_iter7_reg <= offset_10_reg_3893_pp0_iter6_reg;
        offset_10_reg_3893_pp0_iter8_reg <= offset_10_reg_3893_pp0_iter7_reg;
        offset_10_reg_3893_pp0_iter9_reg <= offset_10_reg_3893_pp0_iter8_reg;
        offset_reg_3876_pp0_iter10_reg <= offset_reg_3876_pp0_iter9_reg;
        offset_reg_3876_pp0_iter2_reg <= offset_reg_3876_pp0_iter1_reg;
        offset_reg_3876_pp0_iter3_reg <= offset_reg_3876_pp0_iter2_reg;
        offset_reg_3876_pp0_iter4_reg <= offset_reg_3876_pp0_iter3_reg;
        offset_reg_3876_pp0_iter5_reg <= offset_reg_3876_pp0_iter4_reg;
        offset_reg_3876_pp0_iter6_reg <= offset_reg_3876_pp0_iter5_reg;
        offset_reg_3876_pp0_iter7_reg <= offset_reg_3876_pp0_iter6_reg;
        offset_reg_3876_pp0_iter8_reg <= offset_reg_3876_pp0_iter7_reg;
        offset_reg_3876_pp0_iter9_reg <= offset_reg_3876_pp0_iter8_reg;
        tmp_151_reg_3905 <= {{mul_ln172_2_fu_2287_p2[18:13]}};
        tmp_151_reg_3905_pp0_iter12_reg <= tmp_151_reg_3905;
        tmp_152_reg_3977 <= {{mul_ln194_fu_2379_p2[18:13]}};
        tmp_153_reg_3982 <= {{mul_ln195_fu_2398_p2[18:13]}};
        tmp_154_reg_3987 <= {{mul_ln196_fu_2417_p2[18:13]}};
        tmp_155_reg_3992 <= {{mul_ln197_fu_2436_p2[18:13]}};
        tmp_157_reg_3997 <= {{mul_ln199_fu_2455_p2[18:13]}};
        tmp_159_reg_3935 <= {{mul_ln172_3_fu_2331_p2[18:13]}};
        tmp_159_reg_3935_pp0_iter12_reg <= tmp_159_reg_3935;
        tmp_160_reg_4014 <= {{mul_ln194_1_fu_2478_p2[18:13]}};
        tmp_161_reg_4019 <= {{mul_ln195_1_fu_2497_p2[18:13]}};
        tmp_162_reg_4024 <= {{mul_ln196_1_fu_2516_p2[18:13]}};
        tmp_163_reg_4029 <= {{mul_ln197_1_fu_2535_p2[18:13]}};
        tmp_165_reg_4034 <= {{mul_ln199_1_fu_2554_p2[18:13]}};
        tmp_19_reg_5084 <= tmp_19_fu_2925_p29;
        tmp_20_reg_5089 <= tmp_20_fu_2984_p29;
        tmp_21_reg_5094 <= tmp_21_fu_3043_p29;
        tmp_22_reg_5099 <= tmp_22_fu_3102_p29;
        tmp_23_reg_5104 <= tmp_23_fu_3161_p29;
        tmp_24_reg_5109 <= tmp_24_fu_3220_p29;
        tmp_25_reg_5114 <= tmp_25_fu_3279_p29;
        tmp_26_reg_5119 <= tmp_26_fu_3338_p29;
        tmp_27_reg_5124 <= tmp_27_fu_3397_p29;
        tmp_28_reg_5129 <= tmp_28_fu_3456_p29;
        tmp_29_reg_5134 <= tmp_29_fu_3515_p29;
        tmp_30_reg_5139 <= tmp_30_fu_3574_p29;
        tmp_31_reg_5144 <= tmp_31_fu_3633_p29;
        tmp_32_reg_5149 <= tmp_32_fu_3692_p29;
        tmp_33_reg_5154 <= tmp_33_fu_3751_p29;
        tmp_s_reg_5079 <= tmp_s_fu_2866_p29;
        trunc_ln172_11_reg_4002 <= trunc_ln172_11_fu_2471_p1;
        trunc_ln172_11_reg_4002_pp0_iter13_reg <= trunc_ln172_11_reg_4002;
        trunc_ln172_reg_3965 <= trunc_ln172_fu_2372_p1;
        trunc_ln172_reg_3965_pp0_iter13_reg <= trunc_ln172_reg_3965;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln2_reg_3888 <= {{ap_sig_allocacmp_tid[5:1]}};
        lshr_ln2_reg_3888_pp0_iter1_reg <= lshr_ln2_reg_3888;
        offset_10_reg_3893 <= offset_10_fu_2255_p2;
        offset_10_reg_3893_pp0_iter1_reg <= offset_10_reg_3893;
        offset_reg_3876 <= offset_fu_2211_p2;
        offset_reg_3876_pp0_iter1_reg <= offset_reg_3876;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_10_we0_local = 1'b1;
    end else begin
        DATA_x_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_11_we0_local = 1'b1;
    end else begin
        DATA_x_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_12_we0_local = 1'b1;
    end else begin
        DATA_x_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_13_we0_local = 1'b1;
    end else begin
        DATA_x_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_14_we0_local = 1'b1;
    end else begin
        DATA_x_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_15_we0_local = 1'b1;
    end else begin
        DATA_x_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_8_we0_local = 1'b1;
    end else begin
        DATA_x_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_9_we0_local = 1'b1;
    end else begin
        DATA_x_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_2173_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_10_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_10_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_10_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_10_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_10_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_10_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_10_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_10_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_10_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_10_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_10_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_10_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_10_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_10_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_10_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_11_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_11_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_11_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_11_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_11_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_11_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_11_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_11_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_11_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_11_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_11_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_11_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_11_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_11_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_11_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_11_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_12_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_12_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_12_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_12_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_12_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_12_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_12_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_12_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_12_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_12_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_12_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_12_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_12_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_12_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_12_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_12_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_12_address1_local = 'bx;
        end
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_1_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_1_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_1_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_1_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_1_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_1_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_1_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_1_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_1_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_1_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_1_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_1_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_1_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_1_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_1_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_2_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_2_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_2_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_2_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_2_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_2_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_2_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_2_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_2_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_2_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_2_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_2_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_2_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_2_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_2_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_3_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_3_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_3_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_3_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_3_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_3_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_3_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_3_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_3_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_3_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_3_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_3_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_3_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_3_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_3_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_4_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_4_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_4_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_4_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_4_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_4_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_4_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_4_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_4_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_4_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_4_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_4_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_4_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_4_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_4_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_5_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_5_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_5_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_5_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_5_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_5_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_5_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_5_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_5_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_5_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_5_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_5_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_5_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_5_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_5_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_6_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_6_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_6_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_6_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_6_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_6_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_6_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_6_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_6_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_6_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_6_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_6_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_6_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_6_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_6_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_7_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_7_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_7_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_7_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_7_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_7_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_7_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_7_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_7_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_7_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_7_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_7_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_7_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_7_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_7_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_8_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_8_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_8_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_8_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_8_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_8_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_8_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_8_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_8_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_8_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_8_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_8_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_8_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_8_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_8_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_9_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd11)) begin
            smem_9_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_9_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd6)) begin
            smem_9_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd8)) begin
            smem_9_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd1)) begin
            smem_9_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd3)) begin
            smem_9_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_9_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd11)) begin
            smem_9_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_9_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd6)) begin
            smem_9_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd8)) begin
            smem_9_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd1)) begin
            smem_9_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd3)) begin
            smem_9_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_9_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_11_reg_4002 == 4'd9)) begin
            smem_address0_local = zext_ln200_1_fu_2849_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd2)) begin
            smem_address0_local = zext_ln199_1_fu_2824_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd4)) begin
            smem_address0_local = zext_ln198_1_fu_2807_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd10)) begin
            smem_address0_local = zext_ln197_1_fu_2782_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd12)) begin
            smem_address0_local = zext_ln196_1_fu_2766_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd5)) begin
            smem_address0_local = zext_ln195_1_fu_2750_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd7)) begin
            smem_address0_local = zext_ln194_1_fu_2734_p1;
        end else if ((trunc_ln172_11_reg_4002 == 4'd0)) begin
            smem_address0_local = zext_ln172_3_fu_2718_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3965 == 4'd9)) begin
            smem_address1_local = zext_ln200_fu_2701_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd2)) begin
            smem_address1_local = zext_ln199_fu_2676_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd4)) begin
            smem_address1_local = zext_ln198_fu_2659_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd10)) begin
            smem_address1_local = zext_ln197_fu_2634_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd12)) begin
            smem_address1_local = zext_ln196_fu_2618_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd5)) begin
            smem_address1_local = zext_ln195_fu_2602_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd7)) begin
            smem_address1_local = zext_ln194_fu_2586_p1;
        end else if ((trunc_ln172_reg_3965 == 4'd0)) begin
            smem_address1_local = zext_ln172_2_fu_2570_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_11_reg_4002 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3965 == 4'd0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_d0 = tmp_30_reg_5139;
assign DATA_x_10_we0 = DATA_x_10_we0_local;
assign DATA_x_11_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_d0 = tmp_32_reg_5149;
assign DATA_x_11_we0 = DATA_x_11_we0_local;
assign DATA_x_12_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_d0 = tmp_27_reg_5124;
assign DATA_x_12_we0 = DATA_x_12_we0_local;
assign DATA_x_13_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_d0 = tmp_29_reg_5134;
assign DATA_x_13_we0 = DATA_x_13_we0_local;
assign DATA_x_14_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_d0 = tmp_31_reg_5144;
assign DATA_x_14_we0 = DATA_x_14_we0_local;
assign DATA_x_15_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_d0 = tmp_33_reg_5154;
assign DATA_x_15_we0 = DATA_x_15_we0_local;
assign DATA_x_1_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = tmp_20_reg_5089;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = tmp_22_reg_5099;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = tmp_24_reg_5109;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = tmp_19_reg_5084;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = tmp_21_reg_5094;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = tmp_23_reg_5104;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = tmp_25_reg_5114;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_8_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_d0 = tmp_26_reg_5119;
assign DATA_x_8_we0 = DATA_x_8_we0_local;
assign DATA_x_9_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_d0 = tmp_28_reg_5129;
assign DATA_x_9_we0 = DATA_x_9_we0_local;
assign DATA_x_address0 = zext_ln193_fu_3810_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = tmp_s_reg_5079;
assign DATA_x_we0 = DATA_x_we0_local;
assign add_ln188_fu_2267_p2 = (ap_sig_allocacmp_tid + 7'd2);
assign add_ln194_1_fu_2347_p2 = (offset_10_reg_3893_pp0_iter10_reg + 9'd32);
assign add_ln194_fu_2303_p2 = (offset_reg_3876_pp0_iter10_reg + 9'd32);
assign add_ln195_1_fu_2352_p2 = (offset_10_reg_3893_pp0_iter10_reg + 9'd8);
assign add_ln195_fu_2308_p2 = (offset_reg_3876_pp0_iter10_reg + 9'd8);
assign add_ln196_1_fu_2357_p2 = (offset_10_reg_3893_pp0_iter10_reg + 9'd40);
assign add_ln196_fu_2313_p2 = (offset_reg_3876_pp0_iter10_reg + 9'd40);
assign add_ln197_1_fu_2362_p2 = (offset_10_reg_3893_pp0_iter10_reg + 9'd16);
assign add_ln197_fu_2318_p2 = (offset_reg_3876_pp0_iter10_reg + 9'd16);
assign add_ln199_1_fu_2367_p2 = (offset_10_reg_3893_pp0_iter10_reg + 9'd24);
assign add_ln199_fu_2323_p2 = (offset_reg_3876_pp0_iter10_reg + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_2217_p0 = (mul_ln_fu_2199_p5 + zext_ln114_fu_2191_p1);
assign grp_fu_2217_p1 = 9'd13;
assign grp_fu_2261_p0 = (mul_ln191_1_fu_2243_p5 + zext_ln114_fu_2191_p1);
assign grp_fu_2261_p1 = 9'd13;
assign grp_fu_3829_p0 = zext_ln172_26_fu_2278_p1;
assign grp_fu_3829_p1 = 10'd48;
assign grp_fu_3829_p2 = 21'd1261;
assign grp_fu_3838_p0 = zext_ln172_26_fu_2278_p1;
assign grp_fu_3838_p1 = 10'd56;
assign grp_fu_3838_p2 = 21'd1261;
assign grp_fu_3847_p0 = zext_ln172_27_fu_2281_p1;
assign grp_fu_3847_p1 = 10'd48;
assign grp_fu_3847_p2 = 21'd1261;
assign grp_fu_3856_p0 = zext_ln172_27_fu_2281_p1;
assign grp_fu_3856_p1 = 10'd56;
assign grp_fu_3856_p2 = 21'd1261;
assign hi_fu_2181_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln172_2_fu_2287_p0 = mul_ln172_2_fu_2287_p00;
assign mul_ln172_2_fu_2287_p00 = offset_reg_3876_pp0_iter10_reg;
assign mul_ln172_2_fu_2287_p1 = 19'd631;
assign mul_ln172_3_fu_2331_p0 = mul_ln172_3_fu_2331_p00;
assign mul_ln172_3_fu_2331_p00 = offset_10_reg_3893_pp0_iter10_reg;
assign mul_ln172_3_fu_2331_p1 = 19'd631;
assign mul_ln191_1_fu_2243_p5 = {{{{tmp_52_fu_2233_p4}, {3'd4}}, {tmp_52_fu_2233_p4}}, {2'd2}};
assign mul_ln194_1_fu_2478_p0 = mul_ln194_1_fu_2478_p00;
assign mul_ln194_1_fu_2478_p00 = add_ln194_1_reg_3940;
assign mul_ln194_1_fu_2478_p1 = 19'd631;
assign mul_ln194_fu_2379_p0 = mul_ln194_fu_2379_p00;
assign mul_ln194_fu_2379_p00 = add_ln194_reg_3910;
assign mul_ln194_fu_2379_p1 = 19'd631;
assign mul_ln195_1_fu_2497_p0 = mul_ln195_1_fu_2497_p00;
assign mul_ln195_1_fu_2497_p00 = add_ln195_1_reg_3945;
assign mul_ln195_1_fu_2497_p1 = 19'd631;
assign mul_ln195_fu_2398_p0 = mul_ln195_fu_2398_p00;
assign mul_ln195_fu_2398_p00 = add_ln195_reg_3915;
assign mul_ln195_fu_2398_p1 = 19'd631;
assign mul_ln196_1_fu_2516_p0 = mul_ln196_1_fu_2516_p00;
assign mul_ln196_1_fu_2516_p00 = add_ln196_1_reg_3950;
assign mul_ln196_1_fu_2516_p1 = 19'd631;
assign mul_ln196_fu_2417_p0 = mul_ln196_fu_2417_p00;
assign mul_ln196_fu_2417_p00 = add_ln196_reg_3920;
assign mul_ln196_fu_2417_p1 = 19'd631;
assign mul_ln197_1_fu_2535_p0 = mul_ln197_1_fu_2535_p00;
assign mul_ln197_1_fu_2535_p00 = add_ln197_1_reg_3955;
assign mul_ln197_1_fu_2535_p1 = 19'd631;
assign mul_ln197_fu_2436_p0 = mul_ln197_fu_2436_p00;
assign mul_ln197_fu_2436_p00 = add_ln197_reg_3925;
assign mul_ln197_fu_2436_p1 = 19'd631;
assign mul_ln199_1_fu_2554_p0 = mul_ln199_1_fu_2554_p00;
assign mul_ln199_1_fu_2554_p00 = add_ln199_1_reg_3960;
assign mul_ln199_1_fu_2554_p1 = 19'd631;
assign mul_ln199_fu_2455_p0 = mul_ln199_fu_2455_p00;
assign mul_ln199_fu_2455_p00 = add_ln199_reg_3930;
assign mul_ln199_fu_2455_p1 = 19'd631;
assign mul_ln_fu_2199_p5 = {{{{trunc_ln191_fu_2195_p1}, {2'd0}}, {trunc_ln191_fu_2195_p1}}, {1'd0}};
assign offset_10_fu_2255_p2 = (mul_ln191_1_fu_2243_p5 + zext_ln114_fu_2191_p1);
assign offset_fu_2211_p2 = (mul_ln_fu_2199_p5 + zext_ln114_fu_2191_p1);
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
assign tmp_156_fu_2650_p1 = grp_fu_3829_p3;
assign tmp_156_fu_2650_p4 = {{tmp_156_fu_2650_p1[20:14]}};
assign tmp_158_fu_2692_p1 = grp_fu_3838_p3;
assign tmp_158_fu_2692_p4 = {{tmp_158_fu_2692_p1[20:14]}};
assign tmp_164_fu_2798_p1 = grp_fu_3847_p3;
assign tmp_164_fu_2798_p4 = {{tmp_164_fu_2798_p1[20:14]}};
assign tmp_166_fu_2840_p1 = grp_fu_3856_p3;
assign tmp_166_fu_2840_p4 = {{tmp_166_fu_2840_p1[20:14]}};
assign tmp_19_fu_2925_p27 = 'bx;
assign tmp_20_fu_2984_p27 = 'bx;
assign tmp_21_fu_3043_p27 = 'bx;
assign tmp_22_fu_3102_p27 = 'bx;
assign tmp_23_fu_3161_p27 = 'bx;
assign tmp_24_fu_3220_p27 = 'bx;
assign tmp_25_fu_3279_p27 = 'bx;
assign tmp_26_fu_3338_p27 = 'bx;
assign tmp_27_fu_3397_p27 = 'bx;
assign tmp_28_fu_3456_p27 = 'bx;
assign tmp_29_fu_3515_p27 = 'bx;
assign tmp_30_fu_3574_p27 = 'bx;
assign tmp_31_fu_3633_p27 = 'bx;
assign tmp_32_fu_3692_p27 = 'bx;
assign tmp_33_fu_3751_p27 = 'bx;
assign tmp_52_fu_2233_p4 = {{ap_sig_allocacmp_tid[2:1]}};
assign tmp_fu_2173_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_2866_p27 = 'bx;
assign trunc_ln172_11_fu_2471_p1 = grp_fu_2261_p2[3:0];
assign trunc_ln172_fu_2372_p1 = grp_fu_2217_p2[3:0];
assign trunc_ln191_fu_2195_p1 = ap_sig_allocacmp_tid[2:0];
assign zext_ln114_fu_2191_p1 = hi_fu_2181_p4;
assign zext_ln172_26_fu_2278_p1 = offset_reg_3876_pp0_iter9_reg;
assign zext_ln172_27_fu_2281_p1 = offset_10_reg_3893_pp0_iter9_reg;
assign zext_ln172_2_fu_2570_p1 = tmp_151_reg_3905_pp0_iter12_reg;
assign zext_ln172_3_fu_2718_p1 = tmp_159_reg_3935_pp0_iter12_reg;
assign zext_ln193_fu_3810_p1 = lshr_ln2_reg_3888_pp0_iter14_reg;
assign zext_ln194_1_fu_2734_p1 = tmp_160_reg_4014;
assign zext_ln194_fu_2586_p1 = tmp_152_reg_3977;
assign zext_ln195_1_fu_2750_p1 = tmp_161_reg_4019;
assign zext_ln195_fu_2602_p1 = tmp_153_reg_3982;
assign zext_ln196_1_fu_2766_p1 = tmp_162_reg_4024;
assign zext_ln196_fu_2618_p1 = tmp_154_reg_3987;
assign zext_ln197_1_fu_2782_p1 = tmp_163_reg_4029;
assign zext_ln197_fu_2634_p1 = tmp_155_reg_3992;
assign zext_ln198_1_fu_2807_p1 = tmp_164_fu_2798_p4;
assign zext_ln198_fu_2659_p1 = tmp_156_fu_2650_p4;
assign zext_ln199_1_fu_2824_p1 = tmp_165_reg_4034;
assign zext_ln199_fu_2676_p1 = tmp_157_reg_3997;
assign zext_ln200_1_fu_2849_p1 = tmp_166_fu_2840_p4;
assign zext_ln200_fu_2701_p1 = tmp_158_fu_2692_p4;
endmodule 
