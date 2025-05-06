
module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_we1,DATA_x_7_d1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_we1,DATA_x_6_d1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_we1,DATA_x_5_d1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_we1,DATA_x_4_d1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
wire   [0:0] tmp_fu_2153_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_3863;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_3863_pp0_iter1_reg;
reg   [6:0] tid_reg_3863_pp0_iter2_reg;
reg   [6:0] tid_reg_3863_pp0_iter3_reg;
reg   [6:0] tid_reg_3863_pp0_iter4_reg;
reg   [6:0] tid_reg_3863_pp0_iter5_reg;
reg   [6:0] tid_reg_3863_pp0_iter6_reg;
reg   [6:0] tid_reg_3863_pp0_iter7_reg;
reg   [6:0] tid_reg_3863_pp0_iter8_reg;
reg   [6:0] tid_reg_3863_pp0_iter9_reg;
reg   [6:0] tid_reg_3863_pp0_iter10_reg;
reg   [6:0] tid_reg_3863_pp0_iter11_reg;
reg   [6:0] tid_reg_3863_pp0_iter12_reg;
reg   [6:0] tid_reg_3863_pp0_iter13_reg;
reg   [6:0] tid_reg_3863_pp0_iter14_reg;
wire   [8:0] offset_fu_2191_p2;
reg   [8:0] offset_reg_3873;
reg   [8:0] offset_reg_3873_pp0_iter1_reg;
reg   [8:0] offset_reg_3873_pp0_iter2_reg;
reg   [8:0] offset_reg_3873_pp0_iter3_reg;
reg   [8:0] offset_reg_3873_pp0_iter4_reg;
reg   [8:0] offset_reg_3873_pp0_iter5_reg;
reg   [8:0] offset_reg_3873_pp0_iter6_reg;
reg   [8:0] offset_reg_3873_pp0_iter7_reg;
reg   [8:0] offset_reg_3873_pp0_iter8_reg;
reg   [8:0] offset_reg_3873_pp0_iter9_reg;
reg   [8:0] offset_reg_3873_pp0_iter10_reg;
wire   [8:0] offset_4_fu_2225_p2;
reg   [8:0] offset_4_reg_3885;
reg   [8:0] offset_4_reg_3885_pp0_iter1_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter2_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter3_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter4_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter5_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter6_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter7_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter8_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter9_reg;
reg   [8:0] offset_4_reg_3885_pp0_iter10_reg;
reg   [5:0] tmp_100_reg_3897;
reg   [5:0] tmp_100_reg_3897_pp0_iter12_reg;
wire   [8:0] add_ln194_fu_2273_p2;
reg   [8:0] add_ln194_reg_3902;
wire   [8:0] add_ln195_fu_2278_p2;
reg   [8:0] add_ln195_reg_3907;
wire   [8:0] add_ln196_fu_2283_p2;
reg   [8:0] add_ln196_reg_3912;
wire   [8:0] add_ln197_fu_2288_p2;
reg   [8:0] add_ln197_reg_3917;
wire   [8:0] add_ln199_fu_2293_p2;
reg   [8:0] add_ln199_reg_3922;
reg   [5:0] tmp_108_reg_3927;
reg   [5:0] tmp_108_reg_3927_pp0_iter12_reg;
wire   [8:0] add_ln194_1_fu_2317_p2;
reg   [8:0] add_ln194_1_reg_3932;
wire   [8:0] add_ln195_1_fu_2322_p2;
reg   [8:0] add_ln195_1_reg_3937;
wire   [8:0] add_ln196_1_fu_2327_p2;
reg   [8:0] add_ln196_1_reg_3942;
wire   [8:0] add_ln197_1_fu_2332_p2;
reg   [8:0] add_ln197_1_reg_3947;
wire   [8:0] add_ln199_1_fu_2337_p2;
reg   [8:0] add_ln199_1_reg_3952;
wire   [3:0] trunc_ln172_fu_2342_p1;
reg   [3:0] trunc_ln172_reg_3957;
reg   [3:0] trunc_ln172_reg_3957_pp0_iter13_reg;
reg   [5:0] tmp_101_reg_3969;
reg   [5:0] tmp_102_reg_3974;
reg   [5:0] tmp_103_reg_3979;
reg   [5:0] tmp_104_reg_3984;
reg   [5:0] tmp_106_reg_3989;
wire   [3:0] trunc_ln172_4_fu_2441_p1;
reg   [3:0] trunc_ln172_4_reg_3994;
reg   [3:0] trunc_ln172_4_reg_3994_pp0_iter13_reg;
reg   [5:0] tmp_109_reg_4006;
reg   [5:0] tmp_110_reg_4011;
reg   [5:0] tmp_111_reg_4016;
reg   [5:0] tmp_112_reg_4021;
reg   [5:0] tmp_114_reg_4026;
wire   [63:0] tmp_s_fu_2836_p29;
reg   [63:0] tmp_s_reg_5071;
wire   [63:0] tmp_19_fu_2895_p29;
reg   [63:0] tmp_19_reg_5076;
wire   [63:0] tmp_20_fu_2954_p29;
reg   [63:0] tmp_20_reg_5081;
wire   [63:0] tmp_21_fu_3013_p29;
reg   [63:0] tmp_21_reg_5086;
wire   [63:0] tmp_22_fu_3072_p29;
reg   [63:0] tmp_22_reg_5091;
wire   [63:0] tmp_23_fu_3131_p29;
reg   [63:0] tmp_23_reg_5096;
wire   [63:0] tmp_24_fu_3190_p29;
reg   [63:0] tmp_24_reg_5101;
wire   [63:0] tmp_25_fu_3249_p29;
reg   [63:0] tmp_25_reg_5106;
wire   [63:0] tmp_26_fu_3308_p29;
reg   [63:0] tmp_26_reg_5111;
wire   [63:0] tmp_27_fu_3367_p29;
reg   [63:0] tmp_27_reg_5116;
wire   [63:0] tmp_28_fu_3426_p29;
reg   [63:0] tmp_28_reg_5121;
wire   [63:0] tmp_29_fu_3485_p29;
reg   [63:0] tmp_29_reg_5126;
wire   [63:0] tmp_30_fu_3544_p29;
reg   [63:0] tmp_30_reg_5131;
wire   [63:0] tmp_31_fu_3603_p29;
reg   [63:0] tmp_31_reg_5136;
wire   [63:0] tmp_32_fu_3662_p29;
reg   [63:0] tmp_32_reg_5141;
wire   [63:0] tmp_33_fu_3721_p29;
reg   [63:0] tmp_33_reg_5146;
wire   [63:0] zext_ln172_2_fu_2540_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_fu_2556_p1;
wire   [63:0] zext_ln195_fu_2572_p1;
wire   [63:0] zext_ln196_fu_2588_p1;
wire   [63:0] zext_ln197_fu_2604_p1;
wire   [63:0] zext_ln198_fu_2629_p1;
wire   [63:0] zext_ln199_fu_2646_p1;
wire   [63:0] zext_ln200_fu_2671_p1;
wire   [63:0] zext_ln172_3_fu_2688_p1;
wire   [63:0] zext_ln194_1_fu_2704_p1;
wire   [63:0] zext_ln195_1_fu_2720_p1;
wire   [63:0] zext_ln196_1_fu_2736_p1;
wire   [63:0] zext_ln197_1_fu_2752_p1;
wire   [63:0] zext_ln198_1_fu_2777_p1;
wire   [63:0] zext_ln199_1_fu_2794_p1;
wire   [63:0] zext_ln200_1_fu_2819_p1;
wire   [63:0] zext_ln188_fu_3780_p1;
wire   [63:0] zext_ln191_fu_3808_p1;
reg   [6:0] tid_2_fu_160;
wire   [6:0] add_ln188_fu_2237_p2;
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
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_we1_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_1_we1_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_we1_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_we1_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_we1_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_3_we1_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_we1_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
wire   [2:0] hi_fu_2161_p4;
wire   [2:0] trunc_ln191_fu_2175_p1;
wire   [8:0] mul_ln_fu_2179_p5;
wire   [8:0] zext_ln114_fu_2171_p1;
wire   [8:0] grp_fu_2197_p0;
wire   [4:0] grp_fu_2197_p1;
wire   [1:0] tmp_40_fu_2203_p4;
wire   [8:0] mul_ln191_1_fu_2213_p5;
wire   [8:0] grp_fu_2231_p0;
wire   [4:0] grp_fu_2231_p1;
wire   [8:0] mul_ln172_2_fu_2257_p0;
wire   [10:0] mul_ln172_2_fu_2257_p1;
wire   [18:0] mul_ln172_2_fu_2257_p2;
wire   [8:0] mul_ln172_3_fu_2301_p0;
wire   [10:0] mul_ln172_3_fu_2301_p1;
wire   [18:0] mul_ln172_3_fu_2301_p2;
wire   [3:0] grp_fu_2197_p2;
wire   [8:0] mul_ln194_fu_2349_p0;
wire   [10:0] mul_ln194_fu_2349_p1;
wire   [18:0] mul_ln194_fu_2349_p2;
wire   [8:0] mul_ln195_fu_2368_p0;
wire   [10:0] mul_ln195_fu_2368_p1;
wire   [18:0] mul_ln195_fu_2368_p2;
wire   [8:0] mul_ln196_fu_2387_p0;
wire   [10:0] mul_ln196_fu_2387_p1;
wire   [18:0] mul_ln196_fu_2387_p2;
wire   [8:0] mul_ln197_fu_2406_p0;
wire   [10:0] mul_ln197_fu_2406_p1;
wire   [18:0] mul_ln197_fu_2406_p2;
wire   [8:0] mul_ln199_fu_2425_p0;
wire   [10:0] mul_ln199_fu_2425_p1;
wire   [18:0] mul_ln199_fu_2425_p2;
wire   [3:0] grp_fu_2231_p2;
wire   [8:0] mul_ln194_1_fu_2448_p0;
wire   [10:0] mul_ln194_1_fu_2448_p1;
wire   [18:0] mul_ln194_1_fu_2448_p2;
wire   [8:0] mul_ln195_1_fu_2467_p0;
wire   [10:0] mul_ln195_1_fu_2467_p1;
wire   [18:0] mul_ln195_1_fu_2467_p2;
wire   [8:0] mul_ln196_1_fu_2486_p0;
wire   [10:0] mul_ln196_1_fu_2486_p1;
wire   [18:0] mul_ln196_1_fu_2486_p2;
wire   [8:0] mul_ln197_1_fu_2505_p0;
wire   [10:0] mul_ln197_1_fu_2505_p1;
wire   [18:0] mul_ln197_1_fu_2505_p2;
wire   [8:0] mul_ln199_1_fu_2524_p0;
wire   [10:0] mul_ln199_1_fu_2524_p1;
wire   [18:0] mul_ln199_1_fu_2524_p2;
wire   [20:0] tmp_105_fu_2620_p1;
wire  signed [20:0] grp_fu_3820_p3;
wire   [6:0] tmp_105_fu_2620_p4;
wire   [20:0] tmp_107_fu_2662_p1;
wire  signed [20:0] grp_fu_3829_p3;
wire   [6:0] tmp_107_fu_2662_p4;
wire   [20:0] tmp_113_fu_2768_p1;
wire  signed [20:0] grp_fu_3838_p3;
wire   [6:0] tmp_113_fu_2768_p4;
wire   [20:0] tmp_115_fu_2810_p1;
wire  signed [20:0] grp_fu_3847_p3;
wire   [6:0] tmp_115_fu_2810_p4;
wire   [63:0] tmp_s_fu_2836_p27;
wire   [63:0] tmp_19_fu_2895_p27;
wire   [63:0] tmp_20_fu_2954_p27;
wire   [63:0] tmp_21_fu_3013_p27;
wire   [63:0] tmp_22_fu_3072_p27;
wire   [63:0] tmp_23_fu_3131_p27;
wire   [63:0] tmp_24_fu_3190_p27;
wire   [63:0] tmp_25_fu_3249_p27;
wire   [63:0] tmp_26_fu_3308_p27;
wire   [63:0] tmp_27_fu_3367_p27;
wire   [63:0] tmp_28_fu_3426_p27;
wire   [63:0] tmp_29_fu_3485_p27;
wire   [63:0] tmp_30_fu_3544_p27;
wire   [63:0] tmp_31_fu_3603_p27;
wire   [63:0] tmp_32_fu_3662_p27;
wire   [63:0] tmp_33_fu_3721_p27;
wire   [4:0] tmp_39_fu_3791_p4;
wire   [5:0] or_ln6_fu_3800_p3;
wire   [8:0] grp_fu_3820_p0;
wire   [9:0] zext_ln172_15_fu_2248_p1;
wire   [5:0] grp_fu_3820_p1;
wire   [10:0] grp_fu_3820_p2;
wire   [8:0] grp_fu_3829_p0;
wire   [5:0] grp_fu_3829_p1;
wire   [10:0] grp_fu_3829_p2;
wire   [8:0] grp_fu_3838_p0;
wire   [9:0] zext_ln172_16_fu_2251_p1;
wire   [5:0] grp_fu_3838_p1;
wire   [10:0] grp_fu_3838_p2;
wire   [8:0] grp_fu_3847_p0;
wire   [5:0] grp_fu_3847_p1;
wire   [10:0] grp_fu_3847_p2;
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
wire   [18:0] mul_ln172_2_fu_2257_p00;
wire   [18:0] mul_ln172_3_fu_2301_p00;
wire   [18:0] mul_ln194_1_fu_2448_p00;
wire   [18:0] mul_ln194_fu_2349_p00;
wire   [18:0] mul_ln195_1_fu_2467_p00;
wire   [18:0] mul_ln195_fu_2368_p00;
wire   [18:0] mul_ln196_1_fu_2486_p00;
wire   [18:0] mul_ln196_fu_2387_p00;
wire   [18:0] mul_ln197_1_fu_2505_p00;
wire   [18:0] mul_ln197_fu_2406_p00;
wire   [18:0] mul_ln199_1_fu_2524_p00;
wire   [18:0] mul_ln199_fu_2425_p00;
wire   [3:0] tmp_s_fu_2836_p1;
wire   [3:0] tmp_s_fu_2836_p3;
wire   [3:0] tmp_s_fu_2836_p5;
wire   [3:0] tmp_s_fu_2836_p7;
wire   [3:0] tmp_s_fu_2836_p9;
wire   [3:0] tmp_s_fu_2836_p11;
wire   [3:0] tmp_s_fu_2836_p13;
wire   [3:0] tmp_s_fu_2836_p15;
wire  signed [3:0] tmp_s_fu_2836_p17;
wire  signed [3:0] tmp_s_fu_2836_p19;
wire  signed [3:0] tmp_s_fu_2836_p21;
wire  signed [3:0] tmp_s_fu_2836_p23;
wire  signed [3:0] tmp_s_fu_2836_p25;
wire   [3:0] tmp_19_fu_2895_p1;
wire  signed [3:0] tmp_19_fu_2895_p3;
wire  signed [3:0] tmp_19_fu_2895_p5;
wire  signed [3:0] tmp_19_fu_2895_p7;
wire  signed [3:0] tmp_19_fu_2895_p9;
wire  signed [3:0] tmp_19_fu_2895_p11;
wire   [3:0] tmp_19_fu_2895_p13;
wire   [3:0] tmp_19_fu_2895_p15;
wire   [3:0] tmp_19_fu_2895_p17;
wire   [3:0] tmp_19_fu_2895_p19;
wire   [3:0] tmp_19_fu_2895_p21;
wire   [3:0] tmp_19_fu_2895_p23;
wire   [3:0] tmp_19_fu_2895_p25;
wire   [3:0] tmp_20_fu_2954_p1;
wire   [3:0] tmp_20_fu_2954_p3;
wire   [3:0] tmp_20_fu_2954_p5;
wire  signed [3:0] tmp_20_fu_2954_p7;
wire  signed [3:0] tmp_20_fu_2954_p9;
wire  signed [3:0] tmp_20_fu_2954_p11;
wire  signed [3:0] tmp_20_fu_2954_p13;
wire  signed [3:0] tmp_20_fu_2954_p15;
wire   [3:0] tmp_20_fu_2954_p17;
wire   [3:0] tmp_20_fu_2954_p19;
wire   [3:0] tmp_20_fu_2954_p21;
wire   [3:0] tmp_20_fu_2954_p23;
wire   [3:0] tmp_20_fu_2954_p25;
wire  signed [3:0] tmp_21_fu_3013_p1;
wire   [3:0] tmp_21_fu_3013_p3;
wire   [3:0] tmp_21_fu_3013_p5;
wire   [3:0] tmp_21_fu_3013_p7;
wire   [3:0] tmp_21_fu_3013_p9;
wire   [3:0] tmp_21_fu_3013_p11;
wire   [3:0] tmp_21_fu_3013_p13;
wire   [3:0] tmp_21_fu_3013_p15;
wire   [3:0] tmp_21_fu_3013_p17;
wire  signed [3:0] tmp_21_fu_3013_p19;
wire  signed [3:0] tmp_21_fu_3013_p21;
wire  signed [3:0] tmp_21_fu_3013_p23;
wire  signed [3:0] tmp_21_fu_3013_p25;
wire  signed [3:0] tmp_22_fu_3072_p1;
wire  signed [3:0] tmp_22_fu_3072_p3;
wire  signed [3:0] tmp_22_fu_3072_p5;
wire   [3:0] tmp_22_fu_3072_p7;
wire   [3:0] tmp_22_fu_3072_p9;
wire   [3:0] tmp_22_fu_3072_p11;
wire   [3:0] tmp_22_fu_3072_p13;
wire   [3:0] tmp_22_fu_3072_p15;
wire   [3:0] tmp_22_fu_3072_p17;
wire   [3:0] tmp_22_fu_3072_p19;
wire   [3:0] tmp_22_fu_3072_p21;
wire  signed [3:0] tmp_22_fu_3072_p23;
wire  signed [3:0] tmp_22_fu_3072_p25;
wire   [3:0] tmp_23_fu_3131_p1;
wire   [3:0] tmp_23_fu_3131_p3;
wire   [3:0] tmp_23_fu_3131_p5;
wire   [3:0] tmp_23_fu_3131_p7;
wire  signed [3:0] tmp_23_fu_3131_p9;
wire  signed [3:0] tmp_23_fu_3131_p11;
wire  signed [3:0] tmp_23_fu_3131_p13;
wire  signed [3:0] tmp_23_fu_3131_p15;
wire  signed [3:0] tmp_23_fu_3131_p17;
wire   [3:0] tmp_23_fu_3131_p19;
wire   [3:0] tmp_23_fu_3131_p21;
wire   [3:0] tmp_23_fu_3131_p23;
wire   [3:0] tmp_23_fu_3131_p25;
wire   [3:0] tmp_24_fu_3190_p1;
wire   [3:0] tmp_24_fu_3190_p3;
wire   [3:0] tmp_24_fu_3190_p5;
wire   [3:0] tmp_24_fu_3190_p7;
wire   [3:0] tmp_24_fu_3190_p9;
wire   [3:0] tmp_24_fu_3190_p11;
wire  signed [3:0] tmp_24_fu_3190_p13;
wire  signed [3:0] tmp_24_fu_3190_p15;
wire  signed [3:0] tmp_24_fu_3190_p17;
wire  signed [3:0] tmp_24_fu_3190_p19;
wire  signed [3:0] tmp_24_fu_3190_p21;
wire   [3:0] tmp_24_fu_3190_p23;
wire   [3:0] tmp_24_fu_3190_p25;
wire  signed [3:0] tmp_25_fu_3249_p1;
wire  signed [3:0] tmp_25_fu_3249_p3;
wire  signed [3:0] tmp_25_fu_3249_p5;
wire  signed [3:0] tmp_25_fu_3249_p7;
wire   [3:0] tmp_25_fu_3249_p9;
wire   [3:0] tmp_25_fu_3249_p11;
wire   [3:0] tmp_25_fu_3249_p13;
wire   [3:0] tmp_25_fu_3249_p15;
wire   [3:0] tmp_25_fu_3249_p17;
wire   [3:0] tmp_25_fu_3249_p19;
wire   [3:0] tmp_25_fu_3249_p21;
wire   [3:0] tmp_25_fu_3249_p23;
wire  signed [3:0] tmp_25_fu_3249_p25;
wire   [3:0] tmp_26_fu_3308_p1;
wire   [3:0] tmp_26_fu_3308_p3;
wire   [3:0] tmp_26_fu_3308_p5;
wire   [3:0] tmp_26_fu_3308_p7;
wire   [3:0] tmp_26_fu_3308_p9;
wire   [3:0] tmp_26_fu_3308_p11;
wire   [3:0] tmp_26_fu_3308_p13;
wire   [3:0] tmp_26_fu_3308_p15;
wire  signed [3:0] tmp_26_fu_3308_p17;
wire  signed [3:0] tmp_26_fu_3308_p19;
wire  signed [3:0] tmp_26_fu_3308_p21;
wire  signed [3:0] tmp_26_fu_3308_p23;
wire  signed [3:0] tmp_26_fu_3308_p25;
wire   [3:0] tmp_27_fu_3367_p1;
wire  signed [3:0] tmp_27_fu_3367_p3;
wire  signed [3:0] tmp_27_fu_3367_p5;
wire  signed [3:0] tmp_27_fu_3367_p7;
wire  signed [3:0] tmp_27_fu_3367_p9;
wire  signed [3:0] tmp_27_fu_3367_p11;
wire   [3:0] tmp_27_fu_3367_p13;
wire   [3:0] tmp_27_fu_3367_p15;
wire   [3:0] tmp_27_fu_3367_p17;
wire   [3:0] tmp_27_fu_3367_p19;
wire   [3:0] tmp_27_fu_3367_p21;
wire   [3:0] tmp_27_fu_3367_p23;
wire   [3:0] tmp_27_fu_3367_p25;
wire   [3:0] tmp_28_fu_3426_p1;
wire   [3:0] tmp_28_fu_3426_p3;
wire   [3:0] tmp_28_fu_3426_p5;
wire  signed [3:0] tmp_28_fu_3426_p7;
wire  signed [3:0] tmp_28_fu_3426_p9;
wire  signed [3:0] tmp_28_fu_3426_p11;
wire  signed [3:0] tmp_28_fu_3426_p13;
wire  signed [3:0] tmp_28_fu_3426_p15;
wire   [3:0] tmp_28_fu_3426_p17;
wire   [3:0] tmp_28_fu_3426_p19;
wire   [3:0] tmp_28_fu_3426_p21;
wire   [3:0] tmp_28_fu_3426_p23;
wire   [3:0] tmp_28_fu_3426_p25;
wire  signed [3:0] tmp_29_fu_3485_p1;
wire   [3:0] tmp_29_fu_3485_p3;
wire   [3:0] tmp_29_fu_3485_p5;
wire   [3:0] tmp_29_fu_3485_p7;
wire   [3:0] tmp_29_fu_3485_p9;
wire   [3:0] tmp_29_fu_3485_p11;
wire   [3:0] tmp_29_fu_3485_p13;
wire   [3:0] tmp_29_fu_3485_p15;
wire   [3:0] tmp_29_fu_3485_p17;
wire  signed [3:0] tmp_29_fu_3485_p19;
wire  signed [3:0] tmp_29_fu_3485_p21;
wire  signed [3:0] tmp_29_fu_3485_p23;
wire  signed [3:0] tmp_29_fu_3485_p25;
wire  signed [3:0] tmp_30_fu_3544_p1;
wire  signed [3:0] tmp_30_fu_3544_p3;
wire  signed [3:0] tmp_30_fu_3544_p5;
wire   [3:0] tmp_30_fu_3544_p7;
wire   [3:0] tmp_30_fu_3544_p9;
wire   [3:0] tmp_30_fu_3544_p11;
wire   [3:0] tmp_30_fu_3544_p13;
wire   [3:0] tmp_30_fu_3544_p15;
wire   [3:0] tmp_30_fu_3544_p17;
wire   [3:0] tmp_30_fu_3544_p19;
wire   [3:0] tmp_30_fu_3544_p21;
wire  signed [3:0] tmp_30_fu_3544_p23;
wire  signed [3:0] tmp_30_fu_3544_p25;
wire   [3:0] tmp_31_fu_3603_p1;
wire   [3:0] tmp_31_fu_3603_p3;
wire   [3:0] tmp_31_fu_3603_p5;
wire   [3:0] tmp_31_fu_3603_p7;
wire  signed [3:0] tmp_31_fu_3603_p9;
wire  signed [3:0] tmp_31_fu_3603_p11;
wire  signed [3:0] tmp_31_fu_3603_p13;
wire  signed [3:0] tmp_31_fu_3603_p15;
wire  signed [3:0] tmp_31_fu_3603_p17;
wire   [3:0] tmp_31_fu_3603_p19;
wire   [3:0] tmp_31_fu_3603_p21;
wire   [3:0] tmp_31_fu_3603_p23;
wire   [3:0] tmp_31_fu_3603_p25;
wire   [3:0] tmp_32_fu_3662_p1;
wire   [3:0] tmp_32_fu_3662_p3;
wire   [3:0] tmp_32_fu_3662_p5;
wire   [3:0] tmp_32_fu_3662_p7;
wire   [3:0] tmp_32_fu_3662_p9;
wire   [3:0] tmp_32_fu_3662_p11;
wire  signed [3:0] tmp_32_fu_3662_p13;
wire  signed [3:0] tmp_32_fu_3662_p15;
wire  signed [3:0] tmp_32_fu_3662_p17;
wire  signed [3:0] tmp_32_fu_3662_p19;
wire  signed [3:0] tmp_32_fu_3662_p21;
wire   [3:0] tmp_32_fu_3662_p23;
wire   [3:0] tmp_32_fu_3662_p25;
wire  signed [3:0] tmp_33_fu_3721_p1;
wire  signed [3:0] tmp_33_fu_3721_p3;
wire  signed [3:0] tmp_33_fu_3721_p5;
wire  signed [3:0] tmp_33_fu_3721_p7;
wire   [3:0] tmp_33_fu_3721_p9;
wire   [3:0] tmp_33_fu_3721_p11;
wire   [3:0] tmp_33_fu_3721_p13;
wire   [3:0] tmp_33_fu_3721_p15;
wire   [3:0] tmp_33_fu_3721_p17;
wire   [3:0] tmp_33_fu_3721_p19;
wire   [3:0] tmp_33_fu_3721_p21;
wire   [3:0] tmp_33_fu_3721_p23;
wire  signed [3:0] tmp_33_fu_3721_p25;
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
#0 tid_2_fu_160 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U193(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2197_p0),.din1(grp_fu_2197_p1),.ce(1'b1),.dout(grp_fu_2197_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2231_p0),.din1(grp_fu_2231_p1),.ce(1'b1),.dout(grp_fu_2231_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U195(.din0(mul_ln172_2_fu_2257_p0),.din1(mul_ln172_2_fu_2257_p1),.dout(mul_ln172_2_fu_2257_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U196(.din0(mul_ln172_3_fu_2301_p0),.din1(mul_ln172_3_fu_2301_p1),.dout(mul_ln172_3_fu_2301_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U197(.din0(mul_ln194_fu_2349_p0),.din1(mul_ln194_fu_2349_p1),.dout(mul_ln194_fu_2349_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U198(.din0(mul_ln195_fu_2368_p0),.din1(mul_ln195_fu_2368_p1),.dout(mul_ln195_fu_2368_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U199(.din0(mul_ln196_fu_2387_p0),.din1(mul_ln196_fu_2387_p1),.dout(mul_ln196_fu_2387_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U200(.din0(mul_ln197_fu_2406_p0),.din1(mul_ln197_fu_2406_p1),.dout(mul_ln197_fu_2406_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U201(.din0(mul_ln199_fu_2425_p0),.din1(mul_ln199_fu_2425_p1),.dout(mul_ln199_fu_2425_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U202(.din0(mul_ln194_1_fu_2448_p0),.din1(mul_ln194_1_fu_2448_p1),.dout(mul_ln194_1_fu_2448_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U203(.din0(mul_ln195_1_fu_2467_p0),.din1(mul_ln195_1_fu_2467_p1),.dout(mul_ln195_1_fu_2467_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U204(.din0(mul_ln196_1_fu_2486_p0),.din1(mul_ln196_1_fu_2486_p1),.dout(mul_ln196_1_fu_2486_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U205(.din0(mul_ln197_1_fu_2505_p0),.din1(mul_ln197_1_fu_2505_p1),.dout(mul_ln197_1_fu_2505_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U206(.din0(mul_ln199_1_fu_2524_p0),.din1(mul_ln199_1_fu_2524_p1),.dout(mul_ln199_1_fu_2524_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U207(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_s_fu_2836_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_s_fu_2836_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U208(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_19_fu_2895_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_19_fu_2895_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U209(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_20_fu_2954_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_20_fu_2954_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U210(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_21_fu_3013_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_21_fu_3013_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U211(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_22_fu_3072_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_22_fu_3072_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U212(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_23_fu_3131_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_23_fu_3131_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U213(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_24_fu_3190_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_24_fu_3190_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U214(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.def(tmp_25_fu_3249_p27),.sel(trunc_ln172_reg_3957_pp0_iter13_reg),.dout(tmp_25_fu_3249_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U215(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_26_fu_3308_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_26_fu_3308_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U216(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_27_fu_3367_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_27_fu_3367_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U217(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_28_fu_3426_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_28_fu_3426_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U218(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_29_fu_3485_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_29_fu_3485_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U219(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_30_fu_3544_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_30_fu_3544_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U220(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_31_fu_3603_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_31_fu_3603_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U221(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_32_fu_3662_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_32_fu_3662_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U222(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_33_fu_3721_p27),.sel(trunc_ln172_4_reg_3994_pp0_iter13_reg),.dout(tmp_33_fu_3721_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U223(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3820_p0),.din1(grp_fu_3820_p1),.din2(grp_fu_3820_p2),.ce(1'b1),.dout(grp_fu_3820_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U224(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3829_p0),.din1(grp_fu_3829_p1),.din2(grp_fu_3829_p2),.ce(1'b1),.dout(grp_fu_3829_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3838_p0),.din1(grp_fu_3838_p1),.din2(grp_fu_3838_p2),.ce(1'b1),.dout(grp_fu_3838_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U226(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3847_p0),.din1(grp_fu_3847_p1),.din2(grp_fu_3847_p2),.ce(1'b1),.dout(grp_fu_3847_p3));
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
        if (((tmp_fu_2153_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_2_fu_160 <= add_ln188_fu_2237_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_2_fu_160 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln194_1_reg_3932 <= add_ln194_1_fu_2317_p2;
        add_ln194_reg_3902 <= add_ln194_fu_2273_p2;
        add_ln195_1_reg_3937 <= add_ln195_1_fu_2322_p2;
        add_ln195_reg_3907 <= add_ln195_fu_2278_p2;
        add_ln196_1_reg_3942 <= add_ln196_1_fu_2327_p2;
        add_ln196_reg_3912 <= add_ln196_fu_2283_p2;
        add_ln197_1_reg_3947 <= add_ln197_1_fu_2332_p2;
        add_ln197_reg_3917 <= add_ln197_fu_2288_p2;
        add_ln199_1_reg_3952 <= add_ln199_1_fu_2337_p2;
        add_ln199_reg_3922 <= add_ln199_fu_2293_p2;
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
        offset_4_reg_3885_pp0_iter10_reg <= offset_4_reg_3885_pp0_iter9_reg;
        offset_4_reg_3885_pp0_iter2_reg <= offset_4_reg_3885_pp0_iter1_reg;
        offset_4_reg_3885_pp0_iter3_reg <= offset_4_reg_3885_pp0_iter2_reg;
        offset_4_reg_3885_pp0_iter4_reg <= offset_4_reg_3885_pp0_iter3_reg;
        offset_4_reg_3885_pp0_iter5_reg <= offset_4_reg_3885_pp0_iter4_reg;
        offset_4_reg_3885_pp0_iter6_reg <= offset_4_reg_3885_pp0_iter5_reg;
        offset_4_reg_3885_pp0_iter7_reg <= offset_4_reg_3885_pp0_iter6_reg;
        offset_4_reg_3885_pp0_iter8_reg <= offset_4_reg_3885_pp0_iter7_reg;
        offset_4_reg_3885_pp0_iter9_reg <= offset_4_reg_3885_pp0_iter8_reg;
        offset_reg_3873_pp0_iter10_reg <= offset_reg_3873_pp0_iter9_reg;
        offset_reg_3873_pp0_iter2_reg <= offset_reg_3873_pp0_iter1_reg;
        offset_reg_3873_pp0_iter3_reg <= offset_reg_3873_pp0_iter2_reg;
        offset_reg_3873_pp0_iter4_reg <= offset_reg_3873_pp0_iter3_reg;
        offset_reg_3873_pp0_iter5_reg <= offset_reg_3873_pp0_iter4_reg;
        offset_reg_3873_pp0_iter6_reg <= offset_reg_3873_pp0_iter5_reg;
        offset_reg_3873_pp0_iter7_reg <= offset_reg_3873_pp0_iter6_reg;
        offset_reg_3873_pp0_iter8_reg <= offset_reg_3873_pp0_iter7_reg;
        offset_reg_3873_pp0_iter9_reg <= offset_reg_3873_pp0_iter8_reg;
        tid_reg_3863_pp0_iter10_reg <= tid_reg_3863_pp0_iter9_reg;
        tid_reg_3863_pp0_iter11_reg <= tid_reg_3863_pp0_iter10_reg;
        tid_reg_3863_pp0_iter12_reg <= tid_reg_3863_pp0_iter11_reg;
        tid_reg_3863_pp0_iter13_reg <= tid_reg_3863_pp0_iter12_reg;
        tid_reg_3863_pp0_iter14_reg <= tid_reg_3863_pp0_iter13_reg;
        tid_reg_3863_pp0_iter2_reg <= tid_reg_3863_pp0_iter1_reg;
        tid_reg_3863_pp0_iter3_reg <= tid_reg_3863_pp0_iter2_reg;
        tid_reg_3863_pp0_iter4_reg <= tid_reg_3863_pp0_iter3_reg;
        tid_reg_3863_pp0_iter5_reg <= tid_reg_3863_pp0_iter4_reg;
        tid_reg_3863_pp0_iter6_reg <= tid_reg_3863_pp0_iter5_reg;
        tid_reg_3863_pp0_iter7_reg <= tid_reg_3863_pp0_iter6_reg;
        tid_reg_3863_pp0_iter8_reg <= tid_reg_3863_pp0_iter7_reg;
        tid_reg_3863_pp0_iter9_reg <= tid_reg_3863_pp0_iter8_reg;
        tmp_100_reg_3897 <= {{mul_ln172_2_fu_2257_p2[18:13]}};
        tmp_100_reg_3897_pp0_iter12_reg <= tmp_100_reg_3897;
        tmp_101_reg_3969 <= {{mul_ln194_fu_2349_p2[18:13]}};
        tmp_102_reg_3974 <= {{mul_ln195_fu_2368_p2[18:13]}};
        tmp_103_reg_3979 <= {{mul_ln196_fu_2387_p2[18:13]}};
        tmp_104_reg_3984 <= {{mul_ln197_fu_2406_p2[18:13]}};
        tmp_106_reg_3989 <= {{mul_ln199_fu_2425_p2[18:13]}};
        tmp_108_reg_3927 <= {{mul_ln172_3_fu_2301_p2[18:13]}};
        tmp_108_reg_3927_pp0_iter12_reg <= tmp_108_reg_3927;
        tmp_109_reg_4006 <= {{mul_ln194_1_fu_2448_p2[18:13]}};
        tmp_110_reg_4011 <= {{mul_ln195_1_fu_2467_p2[18:13]}};
        tmp_111_reg_4016 <= {{mul_ln196_1_fu_2486_p2[18:13]}};
        tmp_112_reg_4021 <= {{mul_ln197_1_fu_2505_p2[18:13]}};
        tmp_114_reg_4026 <= {{mul_ln199_1_fu_2524_p2[18:13]}};
        tmp_19_reg_5076 <= tmp_19_fu_2895_p29;
        tmp_20_reg_5081 <= tmp_20_fu_2954_p29;
        tmp_21_reg_5086 <= tmp_21_fu_3013_p29;
        tmp_22_reg_5091 <= tmp_22_fu_3072_p29;
        tmp_23_reg_5096 <= tmp_23_fu_3131_p29;
        tmp_24_reg_5101 <= tmp_24_fu_3190_p29;
        tmp_25_reg_5106 <= tmp_25_fu_3249_p29;
        tmp_26_reg_5111 <= tmp_26_fu_3308_p29;
        tmp_27_reg_5116 <= tmp_27_fu_3367_p29;
        tmp_28_reg_5121 <= tmp_28_fu_3426_p29;
        tmp_29_reg_5126 <= tmp_29_fu_3485_p29;
        tmp_30_reg_5131 <= tmp_30_fu_3544_p29;
        tmp_31_reg_5136 <= tmp_31_fu_3603_p29;
        tmp_32_reg_5141 <= tmp_32_fu_3662_p29;
        tmp_33_reg_5146 <= tmp_33_fu_3721_p29;
        tmp_s_reg_5071 <= tmp_s_fu_2836_p29;
        trunc_ln172_4_reg_3994 <= trunc_ln172_4_fu_2441_p1;
        trunc_ln172_4_reg_3994_pp0_iter13_reg <= trunc_ln172_4_reg_3994;
        trunc_ln172_reg_3957 <= trunc_ln172_fu_2342_p1;
        trunc_ln172_reg_3957_pp0_iter13_reg <= trunc_ln172_reg_3957;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_4_reg_3885 <= offset_4_fu_2225_p2;
        offset_4_reg_3885_pp0_iter1_reg <= offset_4_reg_3885;
        offset_reg_3873 <= offset_fu_2191_p2;
        offset_reg_3873_pp0_iter1_reg <= offset_reg_3873;
        tid_reg_3863 <= ap_sig_allocacmp_tid;
        tid_reg_3863_pp0_iter1_reg <= tid_reg_3863;
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
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
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
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
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
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
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
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
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
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
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
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
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
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
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
        DATA_x_4_we1_local = 1'b1;
    end else begin
        DATA_x_4_we1_local = 1'b0;
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
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
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
        DATA_x_5_we1_local = 1'b1;
    end else begin
        DATA_x_5_we1_local = 1'b0;
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
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
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
        DATA_x_6_we1_local = 1'b1;
    end else begin
        DATA_x_6_we1_local = 1'b0;
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
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
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
        DATA_x_7_we1_local = 1'b1;
    end else begin
        DATA_x_7_we1_local = 1'b0;
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
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_2153_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = tid_2_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_10_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_10_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_10_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_10_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_10_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_10_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_10_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_10_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_10_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_10_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_10_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_10_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_10_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_10_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_10_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_11_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_11_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_11_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_11_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_11_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_11_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_11_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_11_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_11_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_11_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_11_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_11_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_11_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_11_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_11_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_11_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_12_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_12_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_12_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_12_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_12_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_12_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_12_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_12_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_12_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_12_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_12_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_12_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_12_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_12_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_12_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_12_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_12_address1_local = 'bx;
        end
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_1_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_1_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_1_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_1_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_1_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_1_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_1_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_1_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_1_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_1_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_1_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_1_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_1_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_1_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_1_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_2_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_2_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_2_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_2_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_2_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_2_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_2_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_2_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_2_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_2_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_2_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_2_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_2_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_2_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_2_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_3_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_3_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_3_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_3_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_3_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_3_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_3_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_3_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_3_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_3_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_3_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_3_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_3_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_3_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_3_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_4_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_4_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_4_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_4_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_4_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_4_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_4_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_4_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_4_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_4_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_4_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_4_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_4_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_4_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_4_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_5_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_5_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_5_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_5_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_5_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_5_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_5_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_5_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_5_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_5_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_5_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_5_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_5_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_5_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_5_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_6_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_6_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_6_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_6_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_6_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_6_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_6_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_6_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_6_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_6_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_6_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_6_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_6_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_6_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_6_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_7_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_7_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_7_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_7_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_7_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_7_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_7_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_7_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_7_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_7_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_7_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_7_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_7_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_7_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_7_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_8_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_8_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_8_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_8_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_8_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_8_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_8_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_8_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_8_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_8_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_8_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_8_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_8_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_8_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_8_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_9_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd11)) begin
            smem_9_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_9_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd6)) begin
            smem_9_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd8)) begin
            smem_9_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd1)) begin
            smem_9_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd3)) begin
            smem_9_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_9_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd11)) begin
            smem_9_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_9_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd6)) begin
            smem_9_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd8)) begin
            smem_9_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd1)) begin
            smem_9_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd3)) begin
            smem_9_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_9_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_3994 == 4'd9)) begin
            smem_address0_local = zext_ln200_1_fu_2819_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd2)) begin
            smem_address0_local = zext_ln199_1_fu_2794_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd4)) begin
            smem_address0_local = zext_ln198_1_fu_2777_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd10)) begin
            smem_address0_local = zext_ln197_1_fu_2752_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd12)) begin
            smem_address0_local = zext_ln196_1_fu_2736_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd5)) begin
            smem_address0_local = zext_ln195_1_fu_2720_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd7)) begin
            smem_address0_local = zext_ln194_1_fu_2704_p1;
        end else if ((trunc_ln172_4_reg_3994 == 4'd0)) begin
            smem_address0_local = zext_ln172_3_fu_2688_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_3957 == 4'd9)) begin
            smem_address1_local = zext_ln200_fu_2671_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd2)) begin
            smem_address1_local = zext_ln199_fu_2646_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd4)) begin
            smem_address1_local = zext_ln198_fu_2629_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd10)) begin
            smem_address1_local = zext_ln197_fu_2604_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd12)) begin
            smem_address1_local = zext_ln196_fu_2588_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd5)) begin
            smem_address1_local = zext_ln195_fu_2572_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd7)) begin
            smem_address1_local = zext_ln194_fu_2556_p1;
        end else if ((trunc_ln172_reg_3957 == 4'd0)) begin
            smem_address1_local = zext_ln172_2_fu_2540_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_3994 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_3957 == 4'd0)))) begin
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
assign DATA_x_1_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_1_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = tmp_28_reg_5121;
assign DATA_x_1_d1 = tmp_20_reg_5081;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_2_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = tmp_30_reg_5131;
assign DATA_x_2_d1 = tmp_22_reg_5091;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_3_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = tmp_32_reg_5141;
assign DATA_x_3_d1 = tmp_24_reg_5101;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_4_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_4_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_4_d0 = tmp_27_reg_5116;
assign DATA_x_4_d1 = tmp_19_reg_5076;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_4_we1 = DATA_x_4_we1_local;
assign DATA_x_5_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_5_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_5_d0 = tmp_29_reg_5126;
assign DATA_x_5_d1 = tmp_21_reg_5086;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_5_we1 = DATA_x_5_we1_local;
assign DATA_x_6_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_6_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_6_d0 = tmp_31_reg_5136;
assign DATA_x_6_d1 = tmp_23_reg_5096;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_6_we1 = DATA_x_6_we1_local;
assign DATA_x_7_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_7_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_7_d0 = tmp_33_reg_5146;
assign DATA_x_7_d1 = tmp_25_reg_5106;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_7_we1 = DATA_x_7_we1_local;
assign DATA_x_address0 = zext_ln191_fu_3808_p1;
assign DATA_x_address1 = zext_ln188_fu_3780_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = tmp_26_reg_5111;
assign DATA_x_d1 = tmp_s_reg_5071;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln188_fu_2237_p2 = (ap_sig_allocacmp_tid + 7'd2);
assign add_ln194_1_fu_2317_p2 = (offset_4_reg_3885_pp0_iter10_reg + 9'd32);
assign add_ln194_fu_2273_p2 = (offset_reg_3873_pp0_iter10_reg + 9'd32);
assign add_ln195_1_fu_2322_p2 = (offset_4_reg_3885_pp0_iter10_reg + 9'd8);
assign add_ln195_fu_2278_p2 = (offset_reg_3873_pp0_iter10_reg + 9'd8);
assign add_ln196_1_fu_2327_p2 = (offset_4_reg_3885_pp0_iter10_reg + 9'd40);
assign add_ln196_fu_2283_p2 = (offset_reg_3873_pp0_iter10_reg + 9'd40);
assign add_ln197_1_fu_2332_p2 = (offset_4_reg_3885_pp0_iter10_reg + 9'd16);
assign add_ln197_fu_2288_p2 = (offset_reg_3873_pp0_iter10_reg + 9'd16);
assign add_ln199_1_fu_2337_p2 = (offset_4_reg_3885_pp0_iter10_reg + 9'd24);
assign add_ln199_fu_2293_p2 = (offset_reg_3873_pp0_iter10_reg + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_2197_p0 = (mul_ln_fu_2179_p5 + zext_ln114_fu_2171_p1);
assign grp_fu_2197_p1 = 9'd13;
assign grp_fu_2231_p0 = (mul_ln191_1_fu_2213_p5 + zext_ln114_fu_2171_p1);
assign grp_fu_2231_p1 = 9'd13;
assign grp_fu_3820_p0 = zext_ln172_15_fu_2248_p1;
assign grp_fu_3820_p1 = 10'd48;
assign grp_fu_3820_p2 = 21'd1261;
assign grp_fu_3829_p0 = zext_ln172_15_fu_2248_p1;
assign grp_fu_3829_p1 = 10'd56;
assign grp_fu_3829_p2 = 21'd1261;
assign grp_fu_3838_p0 = zext_ln172_16_fu_2251_p1;
assign grp_fu_3838_p1 = 10'd48;
assign grp_fu_3838_p2 = 21'd1261;
assign grp_fu_3847_p0 = zext_ln172_16_fu_2251_p1;
assign grp_fu_3847_p1 = 10'd56;
assign grp_fu_3847_p2 = 21'd1261;
assign hi_fu_2161_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln172_2_fu_2257_p0 = mul_ln172_2_fu_2257_p00;
assign mul_ln172_2_fu_2257_p00 = offset_reg_3873_pp0_iter10_reg;
assign mul_ln172_2_fu_2257_p1 = 19'd631;
assign mul_ln172_3_fu_2301_p0 = mul_ln172_3_fu_2301_p00;
assign mul_ln172_3_fu_2301_p00 = offset_4_reg_3885_pp0_iter10_reg;
assign mul_ln172_3_fu_2301_p1 = 19'd631;
assign mul_ln191_1_fu_2213_p5 = {{{{tmp_40_fu_2203_p4}, {3'd4}}, {tmp_40_fu_2203_p4}}, {2'd2}};
assign mul_ln194_1_fu_2448_p0 = mul_ln194_1_fu_2448_p00;
assign mul_ln194_1_fu_2448_p00 = add_ln194_1_reg_3932;
assign mul_ln194_1_fu_2448_p1 = 19'd631;
assign mul_ln194_fu_2349_p0 = mul_ln194_fu_2349_p00;
assign mul_ln194_fu_2349_p00 = add_ln194_reg_3902;
assign mul_ln194_fu_2349_p1 = 19'd631;
assign mul_ln195_1_fu_2467_p0 = mul_ln195_1_fu_2467_p00;
assign mul_ln195_1_fu_2467_p00 = add_ln195_1_reg_3937;
assign mul_ln195_1_fu_2467_p1 = 19'd631;
assign mul_ln195_fu_2368_p0 = mul_ln195_fu_2368_p00;
assign mul_ln195_fu_2368_p00 = add_ln195_reg_3907;
assign mul_ln195_fu_2368_p1 = 19'd631;
assign mul_ln196_1_fu_2486_p0 = mul_ln196_1_fu_2486_p00;
assign mul_ln196_1_fu_2486_p00 = add_ln196_1_reg_3942;
assign mul_ln196_1_fu_2486_p1 = 19'd631;
assign mul_ln196_fu_2387_p0 = mul_ln196_fu_2387_p00;
assign mul_ln196_fu_2387_p00 = add_ln196_reg_3912;
assign mul_ln196_fu_2387_p1 = 19'd631;
assign mul_ln197_1_fu_2505_p0 = mul_ln197_1_fu_2505_p00;
assign mul_ln197_1_fu_2505_p00 = add_ln197_1_reg_3947;
assign mul_ln197_1_fu_2505_p1 = 19'd631;
assign mul_ln197_fu_2406_p0 = mul_ln197_fu_2406_p00;
assign mul_ln197_fu_2406_p00 = add_ln197_reg_3917;
assign mul_ln197_fu_2406_p1 = 19'd631;
assign mul_ln199_1_fu_2524_p0 = mul_ln199_1_fu_2524_p00;
assign mul_ln199_1_fu_2524_p00 = add_ln199_1_reg_3952;
assign mul_ln199_1_fu_2524_p1 = 19'd631;
assign mul_ln199_fu_2425_p0 = mul_ln199_fu_2425_p00;
assign mul_ln199_fu_2425_p00 = add_ln199_reg_3922;
assign mul_ln199_fu_2425_p1 = 19'd631;
assign mul_ln_fu_2179_p5 = {{{{trunc_ln191_fu_2175_p1}, {2'd0}}, {trunc_ln191_fu_2175_p1}}, {1'd0}};
assign offset_4_fu_2225_p2 = (mul_ln191_1_fu_2213_p5 + zext_ln114_fu_2171_p1);
assign offset_fu_2191_p2 = (mul_ln_fu_2179_p5 + zext_ln114_fu_2171_p1);
assign or_ln6_fu_3800_p3 = {{tmp_39_fu_3791_p4}, {1'd1}};
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
assign tmp_105_fu_2620_p1 = grp_fu_3820_p3;
assign tmp_105_fu_2620_p4 = {{tmp_105_fu_2620_p1[20:14]}};
assign tmp_107_fu_2662_p1 = grp_fu_3829_p3;
assign tmp_107_fu_2662_p4 = {{tmp_107_fu_2662_p1[20:14]}};
assign tmp_113_fu_2768_p1 = grp_fu_3838_p3;
assign tmp_113_fu_2768_p4 = {{tmp_113_fu_2768_p1[20:14]}};
assign tmp_115_fu_2810_p1 = grp_fu_3847_p3;
assign tmp_115_fu_2810_p4 = {{tmp_115_fu_2810_p1[20:14]}};
assign tmp_19_fu_2895_p27 = 'bx;
assign tmp_20_fu_2954_p27 = 'bx;
assign tmp_21_fu_3013_p27 = 'bx;
assign tmp_22_fu_3072_p27 = 'bx;
assign tmp_23_fu_3131_p27 = 'bx;
assign tmp_24_fu_3190_p27 = 'bx;
assign tmp_25_fu_3249_p27 = 'bx;
assign tmp_26_fu_3308_p27 = 'bx;
assign tmp_27_fu_3367_p27 = 'bx;
assign tmp_28_fu_3426_p27 = 'bx;
assign tmp_29_fu_3485_p27 = 'bx;
assign tmp_30_fu_3544_p27 = 'bx;
assign tmp_31_fu_3603_p27 = 'bx;
assign tmp_32_fu_3662_p27 = 'bx;
assign tmp_33_fu_3721_p27 = 'bx;
assign tmp_39_fu_3791_p4 = {{tid_reg_3863_pp0_iter14_reg[5:1]}};
assign tmp_40_fu_2203_p4 = {{ap_sig_allocacmp_tid[2:1]}};
assign tmp_fu_2153_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_2836_p27 = 'bx;
assign trunc_ln172_4_fu_2441_p1 = grp_fu_2231_p2[3:0];
assign trunc_ln172_fu_2342_p1 = grp_fu_2197_p2[3:0];
assign trunc_ln191_fu_2175_p1 = ap_sig_allocacmp_tid[2:0];
assign zext_ln114_fu_2171_p1 = hi_fu_2161_p4;
assign zext_ln172_15_fu_2248_p1 = offset_reg_3873_pp0_iter9_reg;
assign zext_ln172_16_fu_2251_p1 = offset_4_reg_3885_pp0_iter9_reg;
assign zext_ln172_2_fu_2540_p1 = tmp_100_reg_3897_pp0_iter12_reg;
assign zext_ln172_3_fu_2688_p1 = tmp_108_reg_3927_pp0_iter12_reg;
assign zext_ln188_fu_3780_p1 = tid_reg_3863_pp0_iter14_reg;
assign zext_ln191_fu_3808_p1 = or_ln6_fu_3800_p3;
assign zext_ln194_1_fu_2704_p1 = tmp_109_reg_4006;
assign zext_ln194_fu_2556_p1 = tmp_101_reg_3969;
assign zext_ln195_1_fu_2720_p1 = tmp_110_reg_4011;
assign zext_ln195_fu_2572_p1 = tmp_102_reg_3974;
assign zext_ln196_1_fu_2736_p1 = tmp_111_reg_4016;
assign zext_ln196_fu_2588_p1 = tmp_103_reg_3979;
assign zext_ln197_1_fu_2752_p1 = tmp_112_reg_4021;
assign zext_ln197_fu_2604_p1 = tmp_104_reg_3984;
assign zext_ln198_1_fu_2777_p1 = tmp_113_fu_2768_p4;
assign zext_ln198_fu_2629_p1 = tmp_105_fu_2620_p4;
assign zext_ln199_1_fu_2794_p1 = tmp_114_reg_4026;
assign zext_ln199_fu_2646_p1 = tmp_106_reg_3989;
assign zext_ln200_1_fu_2819_p1 = tmp_115_fu_2810_p4;
assign zext_ln200_fu_2671_p1 = tmp_107_fu_2662_p4;
endmodule 
