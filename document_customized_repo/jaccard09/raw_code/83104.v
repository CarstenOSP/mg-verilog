module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_we1,DATA_x_7_d1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_we1,DATA_x_6_d1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_we1,DATA_x_5_d1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_we1,DATA_x_4_d1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_5208;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_2690;
wire    ap_block_pp0_stage1_11001;
reg   [2:0] hi_reg_5212;
reg   [2:0] hi_reg_5212_pp0_iter1_reg;
reg   [63:0] reg_2694;
reg   [63:0] reg_2698;
wire   [63:0] grp_fu_2651_p19;
reg   [63:0] reg_2702;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_2707;
reg   [2:0] hi_reg_5212_pp0_iter2_reg;
reg   [63:0] reg_2711;
reg   [63:0] reg_2715;
reg   [63:0] reg_2719;
reg   [63:0] reg_2723;
reg   [63:0] reg_2727;
reg   [63:0] reg_2731;
reg   [63:0] reg_2735;
reg   [6:0] tid_reg_5198;
reg   [6:0] tid_reg_5198_pp0_iter1_reg;
reg   [6:0] tid_reg_5198_pp0_iter2_reg;
wire   [0:0] tmp_fu_2747_p3;
reg   [0:0] tmp_reg_5208_pp0_iter1_reg;
reg   [0:0] tmp_reg_5208_pp0_iter2_reg;
wire   [2:0] hi_fu_2755_p4;
wire   [2:0] trunc_ln191_fu_2765_p1;
reg   [2:0] trunc_ln191_reg_5248;
reg   [5:0] tmp_87_reg_5254;
wire   [8:0] add_ln195_fu_2825_p2;
reg   [8:0] add_ln195_reg_5259;
wire   [8:0] add_ln196_fu_2831_p2;
reg   [8:0] add_ln196_reg_5264;
reg   [5:0] tmp_90_reg_5269;
reg   [6:0] tmp_92_reg_5274;
wire   [8:0] add_ln199_fu_2901_p2;
reg   [8:0] add_ln199_reg_5279;
wire   [8:0] zext_ln114_fu_2907_p1;
reg   [8:0] zext_ln114_reg_5284;
reg   [5:0] tmp_88_reg_5289;
reg   [5:0] tmp_89_reg_5294;
reg   [5:0] tmp_93_reg_5299;
wire   [1:0] tmp_51_fu_2967_p4;
reg   [1:0] tmp_51_reg_5304;
reg   [1:0] tmp_51_reg_5304_pp0_iter1_reg;
wire   [8:0] offset_4_fu_2988_p2;
reg   [8:0] offset_4_reg_5310;
wire   [0:0] tmp_103_fu_2998_p3;
reg   [0:0] tmp_103_reg_5319;
reg   [0:0] tmp_103_reg_5319_pp0_iter1_reg;
wire   [8:0] offset_5_fu_3017_p2;
reg   [8:0] offset_5_reg_5329;
wire   [63:0] zext_ln172_4_fu_3061_p1;
reg   [63:0] zext_ln172_4_reg_5338;
wire   [63:0] zext_ln194_fu_3066_p1;
reg   [63:0] zext_ln194_reg_5354;
wire   [63:0] zext_ln195_fu_3071_p1;
reg   [63:0] zext_ln195_reg_5374;
wire   [63:0] zext_ln196_fu_3077_p1;
reg   [63:0] zext_ln196_reg_5398;
wire   [63:0] zext_ln197_fu_3083_p1;
reg   [63:0] zext_ln197_reg_5422;
wire   [63:0] zext_ln198_fu_3089_p1;
reg   [63:0] zext_ln198_reg_5446;
wire   [63:0] zext_ln199_fu_3095_p1;
reg   [63:0] zext_ln199_reg_5470;
wire   [8:0] add_ln194_fu_3099_p2;
reg   [8:0] add_ln194_reg_5486;
wire   [8:0] add_ln195_1_fu_3104_p2;
reg   [8:0] add_ln195_1_reg_5491;
wire   [8:0] add_ln196_1_fu_3109_p2;
reg   [8:0] add_ln196_1_reg_5496;
wire   [8:0] add_ln197_fu_3114_p2;
reg   [8:0] add_ln197_reg_5501;
wire   [8:0] add_ln199_1_fu_3119_p2;
reg   [8:0] add_ln199_1_reg_5506;
wire   [8:0] add_ln194_1_fu_3124_p2;
reg   [8:0] add_ln194_1_reg_5511;
wire   [8:0] add_ln195_2_fu_3129_p2;
reg   [8:0] add_ln195_2_reg_5516;
wire   [8:0] add_ln196_2_fu_3134_p2;
reg   [8:0] add_ln196_2_reg_5521;
wire   [8:0] add_ln197_1_fu_3139_p2;
reg   [8:0] add_ln197_1_reg_5526;
wire   [8:0] add_ln199_2_fu_3144_p2;
reg   [8:0] add_ln199_2_reg_5531;
wire   [8:0] offset_6_fu_3159_p2;
reg   [8:0] offset_6_reg_5536;
wire   [8:0] add_ln194_2_fu_3168_p2;
reg   [8:0] add_ln194_2_reg_5543;
wire   [8:0] add_ln195_3_fu_3174_p2;
reg   [8:0] add_ln195_3_reg_5548;
reg   [5:0] tmp_96_reg_5793;
reg   [5:0] tmp_97_reg_5798;
reg   [5:0] tmp_98_reg_5803;
reg   [5:0] tmp_99_reg_5808;
reg   [5:0] tmp_101_reg_5813;
reg   [5:0] tmp_105_reg_5818;
reg   [5:0] tmp_106_reg_5823;
reg   [5:0] tmp_107_reg_5828;
reg   [5:0] tmp_108_reg_5833;
reg   [5:0] tmp_110_reg_5838;
reg   [5:0] tmp_113_reg_5843;
reg   [5:0] tmp_114_reg_5848;
wire   [8:0] add_ln196_3_fu_3429_p2;
reg   [8:0] add_ln196_3_reg_5853;
wire   [8:0] add_ln197_2_fu_3434_p2;
reg   [8:0] add_ln197_2_reg_5858;
wire   [8:0] add_ln199_3_fu_3439_p2;
reg   [8:0] add_ln199_3_reg_5863;
wire   [63:0] tmp_s_fu_3444_p19;
reg   [63:0] tmp_s_reg_5868;
wire   [63:0] tmp_19_fu_3483_p19;
reg   [63:0] tmp_19_reg_5873;
wire   [63:0] tmp_20_fu_3522_p19;
reg   [63:0] tmp_20_reg_5878;
wire   [63:0] tmp_21_fu_3561_p19;
reg   [63:0] tmp_21_reg_5883;
wire   [63:0] tmp_22_fu_3600_p19;
reg   [63:0] tmp_22_reg_5888;
wire   [63:0] tmp_23_fu_3639_p19;
reg   [63:0] tmp_23_reg_5893;
wire   [63:0] tmp_24_fu_3678_p19;
reg   [63:0] tmp_24_reg_5898;
wire   [63:0] zext_ln172_6_fu_3874_p1;
reg   [63:0] zext_ln172_6_reg_6223;
wire   [63:0] zext_ln194_2_fu_3885_p1;
reg   [63:0] zext_ln194_2_reg_6263;
wire   [63:0] zext_ln195_2_fu_3894_p1;
reg   [63:0] zext_ln195_2_reg_6299;
wire   [63:0] zext_ln196_2_fu_3902_p1;
reg   [63:0] zext_ln196_2_reg_6331;
wire   [63:0] zext_ln197_2_fu_3910_p1;
reg   [63:0] zext_ln197_2_reg_6363;
wire   [63:0] zext_ln198_2_fu_3927_p1;
reg   [63:0] zext_ln198_2_reg_6395;
wire   [63:0] zext_ln199_2_fu_3936_p1;
reg   [63:0] zext_ln199_2_reg_6427;
reg   [5:0] tmp_115_reg_6507;
reg   [5:0] tmp_116_reg_6512;
reg   [5:0] tmp_118_reg_6517;
wire   [63:0] tmp_26_fu_4035_p19;
reg   [63:0] tmp_26_reg_6522;
wire   [63:0] tmp_27_fu_4074_p19;
reg   [63:0] tmp_27_reg_6527;
wire   [63:0] tmp_28_fu_4113_p19;
reg   [63:0] tmp_28_reg_6532;
wire   [63:0] tmp_29_fu_4152_p19;
reg   [63:0] tmp_29_reg_6537;
wire   [63:0] tmp_30_fu_4191_p19;
reg   [63:0] tmp_30_reg_6542;
wire   [63:0] tmp_31_fu_4230_p19;
reg   [63:0] tmp_31_reg_6547;
wire   [63:0] tmp_32_fu_4269_p19;
reg   [63:0] tmp_32_reg_6552;
wire   [63:0] tmp_41_fu_4308_p19;
reg   [63:0] tmp_41_reg_6637;
wire   [3:0] tmp_52_fu_4509_p4;
reg   [3:0] tmp_52_reg_6962;
wire   [63:0] zext_ln191_1_fu_4526_p1;
reg   [63:0] zext_ln191_1_reg_6967;
wire   [63:0] tmp_34_fu_4531_p19;
reg   [63:0] tmp_34_reg_6978;
wire   [63:0] tmp_35_fu_4570_p19;
reg   [63:0] tmp_35_reg_6983;
wire   [63:0] tmp_36_fu_4609_p19;
reg   [63:0] tmp_36_reg_6988;
wire   [63:0] tmp_37_fu_4648_p19;
reg   [63:0] tmp_37_reg_6993;
wire   [63:0] tmp_38_fu_4687_p19;
reg   [63:0] tmp_38_reg_6998;
wire   [63:0] tmp_39_fu_4726_p19;
reg   [63:0] tmp_39_reg_7003;
wire   [63:0] tmp_40_fu_4765_p19;
reg   [63:0] tmp_40_reg_7008;
wire   [63:0] tmp_42_fu_4804_p19;
reg   [63:0] tmp_42_reg_7013;
wire   [63:0] tmp_43_fu_4843_p19;
reg   [63:0] tmp_43_reg_7018;
wire   [63:0] tmp_44_fu_4882_p19;
reg   [63:0] tmp_44_reg_7023;
wire   [63:0] tmp_45_fu_4921_p19;
reg   [63:0] tmp_45_reg_7028;
wire   [63:0] tmp_46_fu_4960_p19;
reg   [63:0] tmp_46_reg_7033;
wire   [63:0] tmp_47_fu_4999_p19;
reg   [63:0] tmp_47_reg_7038;
wire   [63:0] tmp_48_fu_5038_p19;
reg   [63:0] tmp_48_reg_7043;
wire   [63:0] tmp_49_fu_5077_p19;
reg   [63:0] tmp_49_reg_7048;
wire   [63:0] zext_ln191_2_fu_5123_p1;
reg   [63:0] zext_ln191_2_reg_7053;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln200_fu_3189_p1;
wire   [63:0] zext_ln172_5_fu_3741_p1;
wire   [63:0] zext_ln194_1_fu_3753_p1;
wire   [63:0] zext_ln195_1_fu_3764_p1;
wire   [63:0] zext_ln196_1_fu_3775_p1;
wire   [63:0] zext_ln197_1_fu_3786_p1;
wire   [63:0] zext_ln198_1_fu_3806_p1;
wire   [63:0] zext_ln199_1_fu_3818_p1;
wire   [63:0] zext_ln200_1_fu_3838_p1;
wire   [63:0] zext_ln200_2_fu_3955_p1;
wire   [63:0] zext_ln188_fu_4024_p1;
wire   [63:0] zext_ln172_7_fu_4371_p1;
wire   [63:0] zext_ln194_3_fu_4383_p1;
wire   [63:0] zext_ln195_3_fu_4394_p1;
wire   [63:0] zext_ln196_3_fu_4405_p1;
wire   [63:0] zext_ln197_3_fu_4416_p1;
wire   [63:0] zext_ln198_3_fu_4436_p1;
wire   [63:0] zext_ln199_3_fu_4448_p1;
wire   [63:0] zext_ln200_3_fu_4468_p1;
wire   [63:0] zext_ln191_fu_4497_p1;
reg   [6:0] tid_2_fu_172;
wire   [6:0] add_ln188_fu_3027_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce1_local;
reg   [5:0] smem_address1_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_9_ce1_local;
reg   [5:0] smem_9_address1_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
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
reg    DATA_x_7_ce1_local;
reg   [5:0] DATA_x_7_address1_local;
reg    DATA_x_7_we0_local;
reg   [63:0] DATA_x_7_d0_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
wire   [63:0] grp_fu_2651_p17;
reg   [2:0] grp_fu_2651_p18;
wire   [0:0] tmp_86_fu_2769_p3;
wire   [8:0] offset_fu_2777_p5;
wire   [8:0] add_ln_fu_2793_p5;
wire   [8:0] mul_ln194_fu_2809_p0;
wire   [10:0] mul_ln194_fu_2809_p1;
wire   [18:0] mul_ln194_fu_2809_p2;
wire   [8:0] add_ln1_fu_2837_p5;
wire   [8:0] mul_ln197_fu_2853_p0;
wire   [10:0] mul_ln197_fu_2853_p1;
wire   [18:0] mul_ln197_fu_2853_p2;
wire   [8:0] tmp_91_fu_2869_p5;
wire   [8:0] mul_ln198_fu_2885_p0;
wire   [11:0] mul_ln198_fu_2885_p1;
wire   [20:0] mul_ln198_fu_2885_p2;
wire   [8:0] mul_ln195_fu_2913_p0;
wire   [10:0] mul_ln195_fu_2913_p1;
wire   [18:0] mul_ln195_fu_2913_p2;
wire   [8:0] mul_ln196_fu_2932_p0;
wire   [10:0] mul_ln196_fu_2932_p1;
wire   [18:0] mul_ln196_fu_2932_p2;
wire   [8:0] mul_ln199_fu_2951_p0;
wire   [10:0] mul_ln199_fu_2951_p1;
wire   [18:0] mul_ln199_fu_2951_p2;
wire   [8:0] mul_ln191_1_fu_2976_p5;
wire   [8:0] mul_ln191_2_fu_3005_p5;
wire   [3:0] tmp_85_fu_3037_p3;
wire   [5:0] p_shl1_fu_3044_p3;
wire   [5:0] zext_ln172_24_fu_3051_p1;
wire   [5:0] sub_ln172_fu_3055_p2;
wire   [8:0] mul_ln191_3_fu_3149_p5;
wire   [20:0] tmp_94_fu_3180_p1;
wire  signed [20:0] grp_fu_5128_p3;
wire   [6:0] tmp_94_fu_3180_p4;
wire   [8:0] mul_ln194_1_fu_3204_p0;
wire   [10:0] mul_ln194_1_fu_3204_p1;
wire   [18:0] mul_ln194_1_fu_3204_p2;
wire   [8:0] mul_ln195_1_fu_3223_p0;
wire   [10:0] mul_ln195_1_fu_3223_p1;
wire   [18:0] mul_ln195_1_fu_3223_p2;
wire   [8:0] mul_ln196_1_fu_3242_p0;
wire   [10:0] mul_ln196_1_fu_3242_p1;
wire   [18:0] mul_ln196_1_fu_3242_p2;
wire   [8:0] mul_ln197_1_fu_3261_p0;
wire   [10:0] mul_ln197_1_fu_3261_p1;
wire   [18:0] mul_ln197_1_fu_3261_p2;
wire   [8:0] mul_ln199_1_fu_3280_p0;
wire   [10:0] mul_ln199_1_fu_3280_p1;
wire   [18:0] mul_ln199_1_fu_3280_p2;
wire   [8:0] mul_ln194_2_fu_3299_p0;
wire   [10:0] mul_ln194_2_fu_3299_p1;
wire   [18:0] mul_ln194_2_fu_3299_p2;
wire   [8:0] mul_ln195_2_fu_3318_p0;
wire   [10:0] mul_ln195_2_fu_3318_p1;
wire   [18:0] mul_ln195_2_fu_3318_p2;
wire   [8:0] mul_ln196_2_fu_3337_p0;
wire   [10:0] mul_ln196_2_fu_3337_p1;
wire   [18:0] mul_ln196_2_fu_3337_p2;
wire   [8:0] mul_ln197_2_fu_3356_p0;
wire   [10:0] mul_ln197_2_fu_3356_p1;
wire   [18:0] mul_ln197_2_fu_3356_p2;
wire   [8:0] mul_ln199_2_fu_3375_p0;
wire   [10:0] mul_ln199_2_fu_3375_p1;
wire   [18:0] mul_ln199_2_fu_3375_p2;
wire   [8:0] mul_ln194_3_fu_3394_p0;
wire   [10:0] mul_ln194_3_fu_3394_p1;
wire   [18:0] mul_ln194_3_fu_3394_p2;
wire   [8:0] mul_ln195_3_fu_3413_p0;
wire   [10:0] mul_ln195_3_fu_3413_p1;
wire   [18:0] mul_ln195_3_fu_3413_p2;
wire   [63:0] tmp_s_fu_3444_p17;
wire   [63:0] tmp_19_fu_3483_p17;
wire   [63:0] tmp_20_fu_3522_p17;
wire   [63:0] tmp_21_fu_3561_p17;
wire   [63:0] tmp_22_fu_3600_p17;
wire   [63:0] tmp_23_fu_3639_p17;
wire   [63:0] tmp_24_fu_3678_p17;
wire   [3:0] tmp_95_fu_3717_p3;
wire   [5:0] p_shl2_fu_3724_p3;
wire   [5:0] zext_ln172_26_fu_3731_p1;
wire   [5:0] sub_ln172_1_fu_3735_p2;
wire   [20:0] tmp_100_fu_3797_p1;
wire  signed [20:0] grp_fu_5137_p3;
wire   [6:0] tmp_100_fu_3797_p4;
wire   [20:0] tmp_102_fu_3829_p1;
wire  signed [20:0] grp_fu_5146_p3;
wire   [6:0] tmp_102_fu_3829_p4;
wire   [3:0] tmp_104_fu_3850_p3;
wire   [5:0] p_shl3_fu_3857_p3;
wire   [5:0] zext_ln172_28_fu_3864_p1;
wire   [5:0] sub_ln172_2_fu_3868_p2;
wire   [20:0] tmp_109_fu_3918_p1;
wire  signed [20:0] grp_fu_5155_p3;
wire   [6:0] tmp_109_fu_3918_p4;
wire   [20:0] tmp_111_fu_3946_p1;
wire  signed [20:0] grp_fu_5164_p3;
wire   [6:0] tmp_111_fu_3946_p4;
wire   [8:0] mul_ln196_3_fu_3970_p0;
wire   [10:0] mul_ln196_3_fu_3970_p1;
wire   [18:0] mul_ln196_3_fu_3970_p2;
wire   [8:0] mul_ln197_3_fu_3989_p0;
wire   [10:0] mul_ln197_3_fu_3989_p1;
wire   [18:0] mul_ln197_3_fu_3989_p2;
wire   [8:0] mul_ln199_3_fu_4008_p0;
wire   [10:0] mul_ln199_3_fu_4008_p1;
wire   [18:0] mul_ln199_3_fu_4008_p2;
wire   [63:0] tmp_26_fu_4035_p17;
wire   [63:0] tmp_27_fu_4074_p17;
wire   [63:0] tmp_28_fu_4113_p17;
wire   [63:0] tmp_29_fu_4152_p17;
wire   [63:0] tmp_30_fu_4191_p17;
wire   [63:0] tmp_31_fu_4230_p17;
wire   [63:0] tmp_32_fu_4269_p17;
wire   [63:0] tmp_41_fu_4308_p17;
wire   [3:0] tmp_112_fu_4347_p3;
wire   [5:0] p_shl_fu_4354_p3;
wire   [5:0] zext_ln172_30_fu_4361_p1;
wire   [5:0] sub_ln172_3_fu_4365_p2;
wire   [20:0] tmp_117_fu_4427_p1;
wire  signed [20:0] grp_fu_5173_p3;
wire   [6:0] tmp_117_fu_4427_p4;
wire   [20:0] tmp_119_fu_4459_p1;
wire  signed [20:0] grp_fu_5182_p3;
wire   [6:0] tmp_119_fu_4459_p4;
wire   [4:0] tmp_50_fu_4480_p4;
wire   [5:0] or_ln9_fu_4489_p3;
wire   [5:0] or_ln188_1_fu_4518_p3;
wire   [63:0] tmp_34_fu_4531_p17;
wire   [63:0] tmp_35_fu_4570_p17;
wire   [63:0] tmp_36_fu_4609_p17;
wire   [63:0] tmp_37_fu_4648_p17;
wire   [63:0] tmp_38_fu_4687_p17;
wire   [63:0] tmp_39_fu_4726_p17;
wire   [63:0] tmp_40_fu_4765_p17;
wire   [63:0] tmp_42_fu_4804_p17;
wire   [63:0] tmp_43_fu_4843_p17;
wire   [63:0] tmp_44_fu_4882_p17;
wire   [63:0] tmp_45_fu_4921_p17;
wire   [63:0] tmp_46_fu_4960_p17;
wire   [63:0] tmp_47_fu_4999_p17;
wire   [63:0] tmp_48_fu_5038_p17;
wire   [63:0] tmp_49_fu_5077_p17;
wire   [5:0] or_ln188_2_fu_5116_p3;
wire   [8:0] grp_fu_5128_p0;
wire   [5:0] grp_fu_5128_p1;
wire   [10:0] grp_fu_5128_p2;
wire   [8:0] grp_fu_5137_p0;
wire   [9:0] zext_ln172_25_fu_2994_p1;
wire   [5:0] grp_fu_5137_p1;
wire   [10:0] grp_fu_5137_p2;
wire   [8:0] grp_fu_5146_p0;
wire   [5:0] grp_fu_5146_p1;
wire   [10:0] grp_fu_5146_p2;
wire   [8:0] grp_fu_5155_p0;
wire   [9:0] zext_ln172_27_fu_3023_p1;
wire   [5:0] grp_fu_5155_p1;
wire   [10:0] grp_fu_5155_p2;
wire   [8:0] grp_fu_5164_p0;
wire   [5:0] grp_fu_5164_p1;
wire   [10:0] grp_fu_5164_p2;
wire   [8:0] grp_fu_5173_p0;
wire   [9:0] zext_ln172_29_fu_3164_p1;
wire   [5:0] grp_fu_5173_p1;
wire   [10:0] grp_fu_5173_p2;
wire   [8:0] grp_fu_5182_p0;
wire   [5:0] grp_fu_5182_p1;
wire   [10:0] grp_fu_5182_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_5128_p00;
wire   [18:0] mul_ln194_1_fu_3204_p00;
wire   [18:0] mul_ln194_2_fu_3299_p00;
wire   [18:0] mul_ln194_3_fu_3394_p00;
wire   [18:0] mul_ln194_fu_2809_p00;
wire   [18:0] mul_ln195_1_fu_3223_p00;
wire   [18:0] mul_ln195_2_fu_3318_p00;
wire   [18:0] mul_ln195_3_fu_3413_p00;
wire   [18:0] mul_ln195_fu_2913_p00;
wire   [18:0] mul_ln196_1_fu_3242_p00;
wire   [18:0] mul_ln196_2_fu_3337_p00;
wire   [18:0] mul_ln196_3_fu_3970_p00;
wire   [18:0] mul_ln196_fu_2932_p00;
wire   [18:0] mul_ln197_1_fu_3261_p00;
wire   [18:0] mul_ln197_2_fu_3356_p00;
wire   [18:0] mul_ln197_3_fu_3989_p00;
wire   [18:0] mul_ln197_fu_2853_p00;
wire   [20:0] mul_ln198_fu_2885_p00;
wire   [18:0] mul_ln199_1_fu_3280_p00;
wire   [18:0] mul_ln199_2_fu_3375_p00;
wire   [18:0] mul_ln199_3_fu_4008_p00;
wire   [18:0] mul_ln199_fu_2951_p00;
reg    ap_condition_2919;
reg    ap_condition_2923;
reg    ap_condition_2927;
reg    ap_condition_2931;
reg    ap_condition_2935;
reg    ap_condition_2939;
reg    ap_condition_2943;
reg    ap_condition_2947;
reg    ap_condition_2951;
reg    ap_condition_2955;
reg    ap_condition_2959;
reg    ap_condition_2963;
reg    ap_condition_2967;
reg    ap_condition_2971;
reg    ap_condition_2975;
reg    ap_condition_2979;
wire   [2:0] grp_fu_2651_p1;
wire   [2:0] grp_fu_2651_p3;
wire   [2:0] grp_fu_2651_p5;
wire   [2:0] grp_fu_2651_p7;
wire  signed [2:0] grp_fu_2651_p9;
wire  signed [2:0] grp_fu_2651_p11;
wire  signed [2:0] grp_fu_2651_p13;
wire  signed [2:0] grp_fu_2651_p15;
wire   [2:0] tmp_s_fu_3444_p1;
wire   [2:0] tmp_s_fu_3444_p3;
wire   [2:0] tmp_s_fu_3444_p5;
wire   [2:0] tmp_s_fu_3444_p7;
wire  signed [2:0] tmp_s_fu_3444_p9;
wire  signed [2:0] tmp_s_fu_3444_p11;
wire  signed [2:0] tmp_s_fu_3444_p13;
wire  signed [2:0] tmp_s_fu_3444_p15;
wire   [2:0] tmp_19_fu_3483_p1;
wire   [2:0] tmp_19_fu_3483_p3;
wire   [2:0] tmp_19_fu_3483_p5;
wire  signed [2:0] tmp_19_fu_3483_p7;
wire  signed [2:0] tmp_19_fu_3483_p9;
wire  signed [2:0] tmp_19_fu_3483_p11;
wire  signed [2:0] tmp_19_fu_3483_p13;
wire   [2:0] tmp_19_fu_3483_p15;
wire   [2:0] tmp_20_fu_3522_p1;
wire  signed [2:0] tmp_20_fu_3522_p3;
wire  signed [2:0] tmp_20_fu_3522_p5;
wire  signed [2:0] tmp_20_fu_3522_p7;
wire  signed [2:0] tmp_20_fu_3522_p9;
wire   [2:0] tmp_20_fu_3522_p11;
wire   [2:0] tmp_20_fu_3522_p13;
wire   [2:0] tmp_20_fu_3522_p15;
wire  signed [2:0] tmp_21_fu_3561_p1;
wire  signed [2:0] tmp_21_fu_3561_p3;
wire  signed [2:0] tmp_21_fu_3561_p5;
wire  signed [2:0] tmp_21_fu_3561_p7;
wire   [2:0] tmp_21_fu_3561_p9;
wire   [2:0] tmp_21_fu_3561_p11;
wire   [2:0] tmp_21_fu_3561_p13;
wire   [2:0] tmp_21_fu_3561_p15;
wire  signed [2:0] tmp_22_fu_3600_p1;
wire  signed [2:0] tmp_22_fu_3600_p3;
wire   [2:0] tmp_22_fu_3600_p5;
wire   [2:0] tmp_22_fu_3600_p7;
wire   [2:0] tmp_22_fu_3600_p9;
wire   [2:0] tmp_22_fu_3600_p11;
wire  signed [2:0] tmp_22_fu_3600_p13;
wire  signed [2:0] tmp_22_fu_3600_p15;
wire  signed [2:0] tmp_23_fu_3639_p1;
wire   [2:0] tmp_23_fu_3639_p3;
wire   [2:0] tmp_23_fu_3639_p5;
wire   [2:0] tmp_23_fu_3639_p7;
wire   [2:0] tmp_23_fu_3639_p9;
wire  signed [2:0] tmp_23_fu_3639_p11;
wire  signed [2:0] tmp_23_fu_3639_p13;
wire  signed [2:0] tmp_23_fu_3639_p15;
wire   [2:0] tmp_24_fu_3678_p1;
wire   [2:0] tmp_24_fu_3678_p3;
wire   [2:0] tmp_24_fu_3678_p5;
wire   [2:0] tmp_24_fu_3678_p7;
wire  signed [2:0] tmp_24_fu_3678_p9;
wire  signed [2:0] tmp_24_fu_3678_p11;
wire  signed [2:0] tmp_24_fu_3678_p13;
wire  signed [2:0] tmp_24_fu_3678_p15;
wire   [2:0] tmp_26_fu_4035_p1;
wire   [2:0] tmp_26_fu_4035_p3;
wire   [2:0] tmp_26_fu_4035_p5;
wire   [2:0] tmp_26_fu_4035_p7;
wire  signed [2:0] tmp_26_fu_4035_p9;
wire  signed [2:0] tmp_26_fu_4035_p11;
wire  signed [2:0] tmp_26_fu_4035_p13;
wire  signed [2:0] tmp_26_fu_4035_p15;
wire   [2:0] tmp_27_fu_4074_p1;
wire   [2:0] tmp_27_fu_4074_p3;
wire   [2:0] tmp_27_fu_4074_p5;
wire  signed [2:0] tmp_27_fu_4074_p7;
wire  signed [2:0] tmp_27_fu_4074_p9;
wire  signed [2:0] tmp_27_fu_4074_p11;
wire  signed [2:0] tmp_27_fu_4074_p13;
wire   [2:0] tmp_27_fu_4074_p15;
wire   [2:0] tmp_28_fu_4113_p1;
wire  signed [2:0] tmp_28_fu_4113_p3;
wire  signed [2:0] tmp_28_fu_4113_p5;
wire  signed [2:0] tmp_28_fu_4113_p7;
wire  signed [2:0] tmp_28_fu_4113_p9;
wire   [2:0] tmp_28_fu_4113_p11;
wire   [2:0] tmp_28_fu_4113_p13;
wire   [2:0] tmp_28_fu_4113_p15;
wire  signed [2:0] tmp_29_fu_4152_p1;
wire  signed [2:0] tmp_29_fu_4152_p3;
wire  signed [2:0] tmp_29_fu_4152_p5;
wire  signed [2:0] tmp_29_fu_4152_p7;
wire   [2:0] tmp_29_fu_4152_p9;
wire   [2:0] tmp_29_fu_4152_p11;
wire   [2:0] tmp_29_fu_4152_p13;
wire   [2:0] tmp_29_fu_4152_p15;
wire  signed [2:0] tmp_30_fu_4191_p1;
wire  signed [2:0] tmp_30_fu_4191_p3;
wire   [2:0] tmp_30_fu_4191_p5;
wire   [2:0] tmp_30_fu_4191_p7;
wire   [2:0] tmp_30_fu_4191_p9;
wire   [2:0] tmp_30_fu_4191_p11;
wire  signed [2:0] tmp_30_fu_4191_p13;
wire  signed [2:0] tmp_30_fu_4191_p15;
wire  signed [2:0] tmp_31_fu_4230_p1;
wire   [2:0] tmp_31_fu_4230_p3;
wire   [2:0] tmp_31_fu_4230_p5;
wire   [2:0] tmp_31_fu_4230_p7;
wire   [2:0] tmp_31_fu_4230_p9;
wire  signed [2:0] tmp_31_fu_4230_p11;
wire  signed [2:0] tmp_31_fu_4230_p13;
wire  signed [2:0] tmp_31_fu_4230_p15;
wire   [2:0] tmp_32_fu_4269_p1;
wire   [2:0] tmp_32_fu_4269_p3;
wire   [2:0] tmp_32_fu_4269_p5;
wire   [2:0] tmp_32_fu_4269_p7;
wire  signed [2:0] tmp_32_fu_4269_p9;
wire  signed [2:0] tmp_32_fu_4269_p11;
wire  signed [2:0] tmp_32_fu_4269_p13;
wire  signed [2:0] tmp_32_fu_4269_p15;
wire   [2:0] tmp_41_fu_4308_p1;
wire   [2:0] tmp_41_fu_4308_p3;
wire   [2:0] tmp_41_fu_4308_p5;
wire   [2:0] tmp_41_fu_4308_p7;
wire  signed [2:0] tmp_41_fu_4308_p9;
wire  signed [2:0] tmp_41_fu_4308_p11;
wire  signed [2:0] tmp_41_fu_4308_p13;
wire  signed [2:0] tmp_41_fu_4308_p15;
wire   [2:0] tmp_34_fu_4531_p1;
wire   [2:0] tmp_34_fu_4531_p3;
wire   [2:0] tmp_34_fu_4531_p5;
wire   [2:0] tmp_34_fu_4531_p7;
wire  signed [2:0] tmp_34_fu_4531_p9;
wire  signed [2:0] tmp_34_fu_4531_p11;
wire  signed [2:0] tmp_34_fu_4531_p13;
wire  signed [2:0] tmp_34_fu_4531_p15;
wire   [2:0] tmp_35_fu_4570_p1;
wire   [2:0] tmp_35_fu_4570_p3;
wire   [2:0] tmp_35_fu_4570_p5;
wire  signed [2:0] tmp_35_fu_4570_p7;
wire  signed [2:0] tmp_35_fu_4570_p9;
wire  signed [2:0] tmp_35_fu_4570_p11;
wire  signed [2:0] tmp_35_fu_4570_p13;
wire   [2:0] tmp_35_fu_4570_p15;
wire   [2:0] tmp_36_fu_4609_p1;
wire  signed [2:0] tmp_36_fu_4609_p3;
wire  signed [2:0] tmp_36_fu_4609_p5;
wire  signed [2:0] tmp_36_fu_4609_p7;
wire  signed [2:0] tmp_36_fu_4609_p9;
wire   [2:0] tmp_36_fu_4609_p11;
wire   [2:0] tmp_36_fu_4609_p13;
wire   [2:0] tmp_36_fu_4609_p15;
wire  signed [2:0] tmp_37_fu_4648_p1;
wire  signed [2:0] tmp_37_fu_4648_p3;
wire  signed [2:0] tmp_37_fu_4648_p5;
wire  signed [2:0] tmp_37_fu_4648_p7;
wire   [2:0] tmp_37_fu_4648_p9;
wire   [2:0] tmp_37_fu_4648_p11;
wire   [2:0] tmp_37_fu_4648_p13;
wire   [2:0] tmp_37_fu_4648_p15;
wire  signed [2:0] tmp_38_fu_4687_p1;
wire  signed [2:0] tmp_38_fu_4687_p3;
wire   [2:0] tmp_38_fu_4687_p5;
wire   [2:0] tmp_38_fu_4687_p7;
wire   [2:0] tmp_38_fu_4687_p9;
wire   [2:0] tmp_38_fu_4687_p11;
wire  signed [2:0] tmp_38_fu_4687_p13;
wire  signed [2:0] tmp_38_fu_4687_p15;
wire  signed [2:0] tmp_39_fu_4726_p1;
wire   [2:0] tmp_39_fu_4726_p3;
wire   [2:0] tmp_39_fu_4726_p5;
wire   [2:0] tmp_39_fu_4726_p7;
wire   [2:0] tmp_39_fu_4726_p9;
wire  signed [2:0] tmp_39_fu_4726_p11;
wire  signed [2:0] tmp_39_fu_4726_p13;
wire  signed [2:0] tmp_39_fu_4726_p15;
wire   [2:0] tmp_40_fu_4765_p1;
wire   [2:0] tmp_40_fu_4765_p3;
wire   [2:0] tmp_40_fu_4765_p5;
wire   [2:0] tmp_40_fu_4765_p7;
wire  signed [2:0] tmp_40_fu_4765_p9;
wire  signed [2:0] tmp_40_fu_4765_p11;
wire  signed [2:0] tmp_40_fu_4765_p13;
wire  signed [2:0] tmp_40_fu_4765_p15;
wire   [2:0] tmp_42_fu_4804_p1;
wire   [2:0] tmp_42_fu_4804_p3;
wire   [2:0] tmp_42_fu_4804_p5;
wire   [2:0] tmp_42_fu_4804_p7;
wire  signed [2:0] tmp_42_fu_4804_p9;
wire  signed [2:0] tmp_42_fu_4804_p11;
wire  signed [2:0] tmp_42_fu_4804_p13;
wire  signed [2:0] tmp_42_fu_4804_p15;
wire   [2:0] tmp_43_fu_4843_p1;
wire   [2:0] tmp_43_fu_4843_p3;
wire   [2:0] tmp_43_fu_4843_p5;
wire  signed [2:0] tmp_43_fu_4843_p7;
wire  signed [2:0] tmp_43_fu_4843_p9;
wire  signed [2:0] tmp_43_fu_4843_p11;
wire  signed [2:0] tmp_43_fu_4843_p13;
wire   [2:0] tmp_43_fu_4843_p15;
wire   [2:0] tmp_44_fu_4882_p1;
wire  signed [2:0] tmp_44_fu_4882_p3;
wire  signed [2:0] tmp_44_fu_4882_p5;
wire  signed [2:0] tmp_44_fu_4882_p7;
wire  signed [2:0] tmp_44_fu_4882_p9;
wire   [2:0] tmp_44_fu_4882_p11;
wire   [2:0] tmp_44_fu_4882_p13;
wire   [2:0] tmp_44_fu_4882_p15;
wire  signed [2:0] tmp_45_fu_4921_p1;
wire  signed [2:0] tmp_45_fu_4921_p3;
wire  signed [2:0] tmp_45_fu_4921_p5;
wire  signed [2:0] tmp_45_fu_4921_p7;
wire   [2:0] tmp_45_fu_4921_p9;
wire   [2:0] tmp_45_fu_4921_p11;
wire   [2:0] tmp_45_fu_4921_p13;
wire   [2:0] tmp_45_fu_4921_p15;
wire  signed [2:0] tmp_46_fu_4960_p1;
wire  signed [2:0] tmp_46_fu_4960_p3;
wire   [2:0] tmp_46_fu_4960_p5;
wire   [2:0] tmp_46_fu_4960_p7;
wire   [2:0] tmp_46_fu_4960_p9;
wire   [2:0] tmp_46_fu_4960_p11;
wire  signed [2:0] tmp_46_fu_4960_p13;
wire  signed [2:0] tmp_46_fu_4960_p15;
wire  signed [2:0] tmp_47_fu_4999_p1;
wire   [2:0] tmp_47_fu_4999_p3;
wire   [2:0] tmp_47_fu_4999_p5;
wire   [2:0] tmp_47_fu_4999_p7;
wire   [2:0] tmp_47_fu_4999_p9;
wire  signed [2:0] tmp_47_fu_4999_p11;
wire  signed [2:0] tmp_47_fu_4999_p13;
wire  signed [2:0] tmp_47_fu_4999_p15;
wire   [2:0] tmp_48_fu_5038_p1;
wire   [2:0] tmp_48_fu_5038_p3;
wire   [2:0] tmp_48_fu_5038_p5;
wire   [2:0] tmp_48_fu_5038_p7;
wire  signed [2:0] tmp_48_fu_5038_p9;
wire  signed [2:0] tmp_48_fu_5038_p11;
wire  signed [2:0] tmp_48_fu_5038_p13;
wire  signed [2:0] tmp_48_fu_5038_p15;
wire   [2:0] tmp_49_fu_5077_p1;
wire   [2:0] tmp_49_fu_5077_p3;
wire   [2:0] tmp_49_fu_5077_p5;
wire   [2:0] tmp_49_fu_5077_p7;
wire  signed [2:0] tmp_49_fu_5077_p9;
wire  signed [2:0] tmp_49_fu_5077_p11;
wire  signed [2:0] tmp_49_fu_5077_p13;
wire  signed [2:0] tmp_49_fu_5077_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_172 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U272(.din0(smem_1_q1),.din1(smem_2_q1),.din2(smem_3_q1),.din3(smem_4_q1),.din4(smem_5_q1),.din5(smem_6_q1),.din6(smem_7_q1),.din7(smem_8_q1),.def(grp_fu_2651_p17),.sel(grp_fu_2651_p18),.dout(grp_fu_2651_p19));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U273(.din0(mul_ln194_fu_2809_p0),.din1(mul_ln194_fu_2809_p1),.dout(mul_ln194_fu_2809_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U274(.din0(mul_ln197_fu_2853_p0),.din1(mul_ln197_fu_2853_p1),.dout(mul_ln197_fu_2853_p2));
fft1D_512_mul_9ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_9ns_12ns_21_1_1_U275(.din0(mul_ln198_fu_2885_p0),.din1(mul_ln198_fu_2885_p1),.dout(mul_ln198_fu_2885_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U276(.din0(mul_ln195_fu_2913_p0),.din1(mul_ln195_fu_2913_p1),.dout(mul_ln195_fu_2913_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U277(.din0(mul_ln196_fu_2932_p0),.din1(mul_ln196_fu_2932_p1),.dout(mul_ln196_fu_2932_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U278(.din0(mul_ln199_fu_2951_p0),.din1(mul_ln199_fu_2951_p1),.dout(mul_ln199_fu_2951_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U279(.din0(mul_ln194_1_fu_3204_p0),.din1(mul_ln194_1_fu_3204_p1),.dout(mul_ln194_1_fu_3204_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U280(.din0(mul_ln195_1_fu_3223_p0),.din1(mul_ln195_1_fu_3223_p1),.dout(mul_ln195_1_fu_3223_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U281(.din0(mul_ln196_1_fu_3242_p0),.din1(mul_ln196_1_fu_3242_p1),.dout(mul_ln196_1_fu_3242_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U282(.din0(mul_ln197_1_fu_3261_p0),.din1(mul_ln197_1_fu_3261_p1),.dout(mul_ln197_1_fu_3261_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U283(.din0(mul_ln199_1_fu_3280_p0),.din1(mul_ln199_1_fu_3280_p1),.dout(mul_ln199_1_fu_3280_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U284(.din0(mul_ln194_2_fu_3299_p0),.din1(mul_ln194_2_fu_3299_p1),.dout(mul_ln194_2_fu_3299_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U285(.din0(mul_ln195_2_fu_3318_p0),.din1(mul_ln195_2_fu_3318_p1),.dout(mul_ln195_2_fu_3318_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U286(.din0(mul_ln196_2_fu_3337_p0),.din1(mul_ln196_2_fu_3337_p1),.dout(mul_ln196_2_fu_3337_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U287(.din0(mul_ln197_2_fu_3356_p0),.din1(mul_ln197_2_fu_3356_p1),.dout(mul_ln197_2_fu_3356_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U288(.din0(mul_ln199_2_fu_3375_p0),.din1(mul_ln199_2_fu_3375_p1),.dout(mul_ln199_2_fu_3375_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U289(.din0(mul_ln194_3_fu_3394_p0),.din1(mul_ln194_3_fu_3394_p1),.dout(mul_ln194_3_fu_3394_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U290(.din0(mul_ln195_3_fu_3413_p0),.din1(mul_ln195_3_fu_3413_p1),.dout(mul_ln195_3_fu_3413_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U291(.din0(reg_2690),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.def(tmp_s_fu_3444_p17),.sel(hi_reg_5212_pp0_iter1_reg),.dout(tmp_s_fu_3444_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h7 ),.din6_WIDTH( 64 ),.CASE7( 3'h0 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U292(.din0(reg_2690),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(reg_2694),.def(tmp_19_fu_3483_p17),.sel(hi_reg_5212_pp0_iter1_reg),.dout(tmp_19_fu_3483_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h7 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.CASE7( 3'h2 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U293(.din0(reg_2690),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_8_q1),.din6(reg_2698),.din7(reg_2694),.def(tmp_20_fu_3522_p17),.sel(hi_reg_5212_pp0_iter1_reg),.dout(tmp_20_fu_3522_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U294(.din0(reg_2690),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_7_q1),.din5(smem_8_q1),.din6(reg_2698),.din7(reg_2694),.def(tmp_21_fu_3561_p17),.sel(hi_reg_5212_pp0_iter1_reg),.dout(tmp_21_fu_3561_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U295(.din0(reg_2690),.din1(smem_1_q1),.din2(smem_5_q1),.din3(smem_6_q1),.din4(smem_7_q1),.din5(smem_8_q1),.din6(reg_2698),.din7(reg_2694),.def(tmp_22_fu_3600_p17),.sel(hi_reg_5212_pp0_iter1_reg),.dout(tmp_22_fu_3600_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U296(.din0(reg_2690),.din1(smem_4_q1),.din2(smem_5_q1),.din3(smem_6_q1),.din4(smem_7_q1),.din5(smem_8_q1),.din6(reg_2698),.din7(reg_2694),.def(tmp_23_fu_3639_p17),.sel(hi_reg_5212_pp0_iter1_reg),.dout(tmp_23_fu_3639_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U297(.din0(smem_2_q1),.din1(smem_3_q1),.din2(smem_4_q1),.din3(smem_5_q1),.din4(smem_6_q1),.din5(smem_7_q1),.din6(smem_8_q1),.din7(reg_2698),.def(tmp_24_fu_3678_p17),.sel(hi_reg_5212_pp0_iter1_reg),.dout(tmp_24_fu_3678_p19));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U298(.din0(mul_ln196_3_fu_3970_p0),.din1(mul_ln196_3_fu_3970_p1),.dout(mul_ln196_3_fu_3970_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U299(.din0(mul_ln197_3_fu_3989_p0),.din1(mul_ln197_3_fu_3989_p1),.dout(mul_ln197_3_fu_3989_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U300(.din0(mul_ln199_3_fu_4008_p0),.din1(mul_ln199_3_fu_4008_p1),.dout(mul_ln199_3_fu_4008_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U301(.din0(smem_q0),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.def(tmp_26_fu_4035_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_26_fu_4035_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h7 ),.din6_WIDTH( 64 ),.CASE7( 3'h0 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U302(.din0(smem_q0),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_10_q0),.def(tmp_27_fu_4074_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_27_fu_4074_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h7 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.CASE7( 3'h2 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U303(.din0(smem_q0),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_8_q1),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_28_fu_4113_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_28_fu_4113_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U304(.din0(smem_q0),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_7_q1),.din5(smem_8_q1),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_29_fu_4152_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_29_fu_4152_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U305(.din0(smem_q0),.din1(smem_1_q1),.din2(smem_5_q1),.din3(smem_6_q1),.din4(smem_7_q1),.din5(smem_8_q1),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_30_fu_4191_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_30_fu_4191_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U306(.din0(smem_q0),.din1(smem_4_q1),.din2(smem_5_q1),.din3(smem_6_q1),.din4(smem_7_q1),.din5(smem_8_q1),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_31_fu_4230_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_31_fu_4230_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U307(.din0(smem_2_q1),.din1(smem_3_q1),.din2(smem_4_q1),.din3(smem_5_q1),.din4(smem_6_q1),.din5(smem_7_q1),.din6(smem_8_q1),.din7(smem_9_q0),.def(tmp_32_fu_4269_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_32_fu_4269_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U308(.din0(smem_1_q0),.din1(smem_2_q0),.din2(smem_3_q0),.din3(smem_4_q0),.din4(smem_5_q0),.din5(smem_6_q0),.din6(smem_7_q0),.din7(smem_8_q0),.def(tmp_41_fu_4308_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_41_fu_4308_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U309(.din0(smem_q1),.din1(reg_2707),.din2(reg_2711),.din3(reg_2715),.din4(reg_2719),.din5(reg_2723),.din6(reg_2727),.din7(reg_2731),.def(tmp_34_fu_4531_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_34_fu_4531_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h7 ),.din6_WIDTH( 64 ),.CASE7( 3'h0 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U310(.din0(smem_q1),.din1(reg_2707),.din2(reg_2711),.din3(reg_2715),.din4(reg_2719),.din5(reg_2723),.din6(reg_2727),.din7(smem_10_q1),.def(tmp_35_fu_4570_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_35_fu_4570_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h7 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.CASE7( 3'h2 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U311(.din0(smem_q1),.din1(reg_2707),.din2(reg_2711),.din3(reg_2715),.din4(reg_2719),.din5(reg_2735),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_36_fu_4609_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_36_fu_4609_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U312(.din0(smem_q1),.din1(reg_2707),.din2(reg_2711),.din3(reg_2715),.din4(reg_2731),.din5(reg_2735),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_37_fu_4648_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_37_fu_4648_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U313(.din0(smem_q1),.din1(reg_2707),.din2(reg_2723),.din3(reg_2727),.din4(reg_2731),.din5(reg_2735),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_38_fu_4687_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_38_fu_4687_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U314(.din0(smem_q1),.din1(reg_2719),.din2(reg_2723),.din3(reg_2727),.din4(reg_2731),.din5(reg_2735),.din6(smem_9_q1),.din7(smem_10_q1),.def(tmp_39_fu_4726_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_39_fu_4726_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U315(.din0(reg_2711),.din1(reg_2715),.din2(reg_2719),.din3(reg_2723),.din4(reg_2727),.din5(reg_2731),.din6(reg_2735),.din7(smem_9_q1),.def(tmp_40_fu_4765_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_40_fu_4765_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U316(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.def(tmp_42_fu_4804_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_42_fu_4804_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h7 ),.din6_WIDTH( 64 ),.CASE7( 3'h0 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U317(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_10_q0),.def(tmp_43_fu_4843_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_43_fu_4843_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h7 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.CASE7( 3'h2 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U318(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_8_q0),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_44_fu_4882_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_44_fu_4882_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h7 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.CASE7( 3'h3 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U319(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_7_q0),.din5(smem_8_q0),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_45_fu_4921_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_45_fu_4921_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U320(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_5_q0),.din3(smem_6_q0),.din4(smem_7_q0),.din5(smem_8_q0),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_46_fu_4960_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_46_fu_4960_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U321(.din0(smem_q0),.din1(smem_4_q0),.din2(smem_5_q0),.din3(smem_6_q0),.din4(smem_7_q0),.din5(smem_8_q0),.din6(smem_9_q0),.din7(smem_10_q0),.def(tmp_47_fu_4999_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_47_fu_4999_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U322(.din0(smem_2_q0),.din1(smem_3_q0),.din2(smem_4_q0),.din3(smem_5_q0),.din4(smem_6_q0),.din5(smem_7_q0),.din6(smem_8_q0),.din7(smem_9_q0),.def(tmp_48_fu_5038_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_48_fu_5038_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U323(.din0(smem_1_q0),.din1(smem_2_q0),.din2(smem_3_q0),.din3(smem_4_q0),.din4(smem_5_q0),.din5(smem_6_q0),.din6(smem_7_q0),.din7(smem_8_q0),.def(tmp_49_fu_5077_p17),.sel(hi_reg_5212_pp0_iter2_reg),.dout(tmp_49_fu_5077_p19));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U324(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5128_p0),.din1(grp_fu_5128_p1),.din2(grp_fu_5128_p2),.ce(1'b1),.dout(grp_fu_5128_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U325(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5137_p0),.din1(grp_fu_5137_p1),.din2(grp_fu_5137_p2),.ce(1'b1),.dout(grp_fu_5137_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U326(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5146_p0),.din1(grp_fu_5146_p1),.din2(grp_fu_5146_p2),.ce(1'b1),.dout(grp_fu_5146_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U327(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5155_p0),.din1(grp_fu_5155_p1),.din2(grp_fu_5155_p2),.ce(1'b1),.dout(grp_fu_5155_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U328(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5164_p0),.din1(grp_fu_5164_p1),.din2(grp_fu_5164_p2),.ce(1'b1),.dout(grp_fu_5164_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U329(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5173_p0),.din1(grp_fu_5173_p1),.din2(grp_fu_5173_p2),.ce(1'b1),.dout(grp_fu_5173_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U330(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5182_p0),.din1(grp_fu_5182_p1),.din2(grp_fu_5182_p2),.ce(1'b1),.dout(grp_fu_5182_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_2_fu_172 <= 7'd0;
    end else if (((tmp_reg_5208 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_2_fu_172 <= add_ln188_fu_3027_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_1_reg_5511 <= add_ln194_1_fu_3124_p2;
        add_ln194_2_reg_5543 <= add_ln194_2_fu_3168_p2;
        add_ln194_reg_5486 <= add_ln194_fu_3099_p2;
        add_ln195_1_reg_5491 <= add_ln195_1_fu_3104_p2;
        add_ln195_2_reg_5516 <= add_ln195_2_fu_3129_p2;
        add_ln195_3_reg_5548 <= add_ln195_3_fu_3174_p2;
        add_ln195_reg_5259 <= add_ln195_fu_2825_p2;
        add_ln196_1_reg_5496 <= add_ln196_1_fu_3109_p2;
        add_ln196_2_reg_5521 <= add_ln196_2_fu_3134_p2;
        add_ln196_reg_5264 <= add_ln196_fu_2831_p2;
        add_ln197_1_reg_5526 <= add_ln197_1_fu_3139_p2;
        add_ln197_reg_5501 <= add_ln197_fu_3114_p2;
        add_ln199_1_reg_5506 <= add_ln199_1_fu_3119_p2;
        add_ln199_2_reg_5531 <= add_ln199_2_fu_3144_p2;
        add_ln199_reg_5279 <= add_ln199_fu_2901_p2;
        hi_reg_5212 <= {{ap_sig_allocacmp_tid[5:3]}};
        hi_reg_5212_pp0_iter1_reg <= hi_reg_5212;
        hi_reg_5212_pp0_iter2_reg <= hi_reg_5212_pp0_iter1_reg;
        offset_6_reg_5536 <= offset_6_fu_3159_p2;
        tid_reg_5198 <= ap_sig_allocacmp_tid;
        tid_reg_5198_pp0_iter1_reg <= tid_reg_5198;
        tid_reg_5198_pp0_iter2_reg <= tid_reg_5198_pp0_iter1_reg;
        tmp_115_reg_6507 <= {{mul_ln196_3_fu_3970_p2[18:13]}};
        tmp_116_reg_6512 <= {{mul_ln197_3_fu_3989_p2[18:13]}};
        tmp_118_reg_6517 <= {{mul_ln199_3_fu_4008_p2[18:13]}};
        tmp_19_reg_5873 <= tmp_19_fu_3483_p19;
        tmp_20_reg_5878 <= tmp_20_fu_3522_p19;
        tmp_21_reg_5883 <= tmp_21_fu_3561_p19;
        tmp_22_reg_5888 <= tmp_22_fu_3600_p19;
        tmp_23_reg_5893 <= tmp_23_fu_3639_p19;
        tmp_24_reg_5898 <= tmp_24_fu_3678_p19;
        tmp_34_reg_6978 <= tmp_34_fu_4531_p19;
        tmp_35_reg_6983 <= tmp_35_fu_4570_p19;
        tmp_36_reg_6988 <= tmp_36_fu_4609_p19;
        tmp_37_reg_6993 <= tmp_37_fu_4648_p19;
        tmp_38_reg_6998 <= tmp_38_fu_4687_p19;
        tmp_39_reg_7003 <= tmp_39_fu_4726_p19;
        tmp_40_reg_7008 <= tmp_40_fu_4765_p19;
        tmp_42_reg_7013 <= tmp_42_fu_4804_p19;
        tmp_43_reg_7018 <= tmp_43_fu_4843_p19;
        tmp_44_reg_7023 <= tmp_44_fu_4882_p19;
        tmp_45_reg_7028 <= tmp_45_fu_4921_p19;
        tmp_46_reg_7033 <= tmp_46_fu_4960_p19;
        tmp_47_reg_7038 <= tmp_47_fu_4999_p19;
        tmp_48_reg_7043 <= tmp_48_fu_5038_p19;
        tmp_49_reg_7048 <= tmp_49_fu_5077_p19;
        tmp_52_reg_6962 <= {{tid_reg_5198_pp0_iter2_reg[5:2]}};
        tmp_87_reg_5254 <= {{mul_ln194_fu_2809_p2[18:13]}};
        tmp_90_reg_5269 <= {{mul_ln197_fu_2853_p2[18:13]}};
        tmp_92_reg_5274 <= {{mul_ln198_fu_2885_p2[20:14]}};
        tmp_reg_5208 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_5208_pp0_iter1_reg <= tmp_reg_5208;
        tmp_reg_5208_pp0_iter2_reg <= tmp_reg_5208_pp0_iter1_reg;
        tmp_s_reg_5868 <= tmp_s_fu_3444_p19;
        trunc_ln191_reg_5248 <= trunc_ln191_fu_2765_p1;
        zext_ln172_4_reg_5338[5 : 1] <= zext_ln172_4_fu_3061_p1[5 : 1];
        zext_ln172_6_reg_6223[5 : 3] <= zext_ln172_6_fu_3874_p1[5 : 3];
        zext_ln191_1_reg_6967[5 : 2] <= zext_ln191_1_fu_4526_p1[5 : 2];
        zext_ln194_2_reg_6263[5 : 0] <= zext_ln194_2_fu_3885_p1[5 : 0];
        zext_ln194_reg_5354[5 : 0] <= zext_ln194_fu_3066_p1[5 : 0];
        zext_ln195_2_reg_6299[5 : 0] <= zext_ln195_2_fu_3894_p1[5 : 0];
        zext_ln195_reg_5374[5 : 0] <= zext_ln195_fu_3071_p1[5 : 0];
        zext_ln196_2_reg_6331[5 : 0] <= zext_ln196_2_fu_3902_p1[5 : 0];
        zext_ln196_reg_5398[5 : 0] <= zext_ln196_fu_3077_p1[5 : 0];
        zext_ln197_2_reg_6363[5 : 0] <= zext_ln197_2_fu_3910_p1[5 : 0];
        zext_ln197_reg_5422[5 : 0] <= zext_ln197_fu_3083_p1[5 : 0];
        zext_ln198_2_reg_6395[6 : 0] <= zext_ln198_2_fu_3927_p1[6 : 0];
        zext_ln198_reg_5446[6 : 0] <= zext_ln198_fu_3089_p1[6 : 0];
        zext_ln199_2_reg_6427[5 : 0] <= zext_ln199_2_fu_3936_p1[5 : 0];
        zext_ln199_reg_5470[5 : 0] <= zext_ln199_fu_3095_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln196_3_reg_5853 <= add_ln196_3_fu_3429_p2;
        add_ln197_2_reg_5858 <= add_ln197_2_fu_3434_p2;
        add_ln199_3_reg_5863 <= add_ln199_3_fu_3439_p2;
        offset_4_reg_5310 <= offset_4_fu_2988_p2;
        offset_5_reg_5329 <= offset_5_fu_3017_p2;
        tmp_101_reg_5813 <= {{mul_ln199_1_fu_3280_p2[18:13]}};
        tmp_103_reg_5319 <= tid_reg_5198[32'd2];
        tmp_103_reg_5319_pp0_iter1_reg <= tmp_103_reg_5319;
        tmp_105_reg_5818 <= {{mul_ln194_2_fu_3299_p2[18:13]}};
        tmp_106_reg_5823 <= {{mul_ln195_2_fu_3318_p2[18:13]}};
        tmp_107_reg_5828 <= {{mul_ln196_2_fu_3337_p2[18:13]}};
        tmp_108_reg_5833 <= {{mul_ln197_2_fu_3356_p2[18:13]}};
        tmp_110_reg_5838 <= {{mul_ln199_2_fu_3375_p2[18:13]}};
        tmp_113_reg_5843 <= {{mul_ln194_3_fu_3394_p2[18:13]}};
        tmp_114_reg_5848 <= {{mul_ln195_3_fu_3413_p2[18:13]}};
        tmp_26_reg_6522 <= tmp_26_fu_4035_p19;
        tmp_27_reg_6527 <= tmp_27_fu_4074_p19;
        tmp_28_reg_6532 <= tmp_28_fu_4113_p19;
        tmp_29_reg_6537 <= tmp_29_fu_4152_p19;
        tmp_30_reg_6542 <= tmp_30_fu_4191_p19;
        tmp_31_reg_6547 <= tmp_31_fu_4230_p19;
        tmp_32_reg_6552 <= tmp_32_fu_4269_p19;
        tmp_41_reg_6637 <= tmp_41_fu_4308_p19;
        tmp_51_reg_5304 <= {{tid_reg_5198[2:1]}};
        tmp_51_reg_5304_pp0_iter1_reg <= tmp_51_reg_5304;
        tmp_88_reg_5289 <= {{mul_ln195_fu_2913_p2[18:13]}};
        tmp_89_reg_5294 <= {{mul_ln196_fu_2932_p2[18:13]}};
        tmp_93_reg_5299 <= {{mul_ln199_fu_2951_p2[18:13]}};
        tmp_96_reg_5793 <= {{mul_ln194_1_fu_3204_p2[18:13]}};
        tmp_97_reg_5798 <= {{mul_ln195_1_fu_3223_p2[18:13]}};
        tmp_98_reg_5803 <= {{mul_ln196_1_fu_3242_p2[18:13]}};
        tmp_99_reg_5808 <= {{mul_ln197_1_fu_3261_p2[18:13]}};
        zext_ln114_reg_5284[2 : 0] <= zext_ln114_fu_2907_p1[2 : 0];
        zext_ln191_2_reg_7053[5 : 2] <= zext_ln191_2_fu_5123_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2690 <= smem_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2694 <= smem_10_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2698 <= smem_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2702 <= grp_fu_2651_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2707 <= smem_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2711 <= smem_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2715 <= smem_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2719 <= smem_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2723 <= smem_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2727 <= smem_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2731 <= smem_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2735 <= smem_8_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln191_2_reg_7053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln191_1_reg_6967;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_44_reg_7023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_36_reg_6988;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_28_reg_6532;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_20_reg_5878;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln191_2_reg_7053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln191_1_reg_6967;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_46_reg_7033;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_38_reg_6998;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_30_reg_6542;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = tmp_22_reg_5888;
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln191_2_reg_7053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln191_1_reg_6967;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_48_reg_7043;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_40_reg_7008;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = tmp_32_reg_6552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_24_reg_5898;
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_address0_local = zext_ln191_2_reg_7053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_address0_local = zext_ln191_1_reg_6967;
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_d0_local = tmp_43_reg_7018;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_d0_local = tmp_35_reg_6983;
    end else begin
        DATA_x_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_d1_local = tmp_27_reg_6527;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_d1_local = tmp_19_reg_5873;
    end else begin
        DATA_x_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_we1_local = 1'b1;
    end else begin
        DATA_x_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_address0_local = zext_ln191_2_reg_7053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_address0_local = zext_ln191_1_reg_6967;
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_d0_local = tmp_45_reg_7028;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_d0_local = tmp_37_reg_6993;
    end else begin
        DATA_x_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_d1_local = tmp_29_reg_6537;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_d1_local = tmp_21_reg_5883;
    end else begin
        DATA_x_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_we1_local = 1'b1;
    end else begin
        DATA_x_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_address0_local = zext_ln191_2_reg_7053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_address0_local = zext_ln191_1_reg_6967;
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_d0_local = tmp_47_reg_7038;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_d0_local = tmp_39_reg_7003;
    end else begin
        DATA_x_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_d1_local = tmp_31_reg_6547;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_d1_local = tmp_23_reg_5893;
    end else begin
        DATA_x_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_we1_local = 1'b1;
    end else begin
        DATA_x_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address0_local = zext_ln191_2_fu_5123_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_7_address0_local = zext_ln191_1_fu_4526_p1;
        end else begin
            DATA_x_7_address0_local = 'bx;
        end
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_7_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_d0_local = tmp_49_reg_7048;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_7_d0_local = tmp_41_reg_6637;
        end else begin
            DATA_x_7_d0_local = 'bx;
        end
    end else begin
        DATA_x_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_we1_local = 1'b1;
    end else begin
        DATA_x_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln191_2_reg_7053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln191_1_reg_6967;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln191_fu_4497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln188_fu_4024_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_42_reg_7013;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_34_reg_6978;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_26_reg_6522;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_s_reg_5868;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_5208 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_reg_5208_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_172;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_2651_p18 = hi_reg_5212_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_2651_p18 = hi_reg_5212_pp0_iter1_reg;
        end else begin
            grp_fu_2651_p18 = 'bx;
        end
    end else begin
        grp_fu_2651_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2955)) begin
            smem_10_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2951)) begin
            smem_10_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2947)) begin
            smem_10_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2943)) begin
            smem_10_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2939)) begin
            smem_10_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_10_address0_local = zext_ln198_1_fu_3806_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_10_address0_local = zext_ln197_1_fu_3786_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_10_address0_local = zext_ln196_1_fu_3775_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_10_address0_local = zext_ln195_1_fu_3764_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_10_address0_local = zext_ln194_1_fu_3753_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln198_2_reg_6395;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln197_2_reg_6363;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln196_2_reg_6331;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln195_2_reg_6299;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln194_2_reg_6263;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln198_fu_3089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln197_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln196_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln195_fu_3071_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln194_fu_3066_p1;
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg== 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2939)) begin
            smem_1_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2979)) begin
            smem_1_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2951)) begin
            smem_1_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2975)) begin
            smem_1_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2943)) begin
            smem_1_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2971)) begin
            smem_1_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_1_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_1_address0_local = zext_ln197_2_fu_3910_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_1_address0_local = zext_ln196_2_fu_3902_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_1_address0_local = zext_ln195_2_fu_3894_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_1_address0_local = zext_ln194_2_fu_3885_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_1_address0_local = zext_ln172_6_fu_3874_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln197_1_fu_3786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln196_1_fu_3775_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln195_1_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln194_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_5_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln197_reg_5422;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln196_reg_5398;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln195_reg_5374;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln194_reg_5354;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln172_4_reg_5338;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2971)) begin
            smem_2_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2939)) begin
            smem_2_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2955)) begin
            smem_2_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2951)) begin
            smem_2_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2947)) begin
            smem_2_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2943)) begin
            smem_2_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_2_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_2_address0_local = zext_ln199_2_fu_3936_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_2_address0_local = zext_ln196_2_fu_3902_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_2_address0_local = zext_ln195_2_fu_3894_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_2_address0_local = zext_ln194_2_fu_3885_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_2_address0_local = zext_ln172_6_fu_3874_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln199_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln196_1_fu_3775_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln195_1_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln194_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_5_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln199_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln196_reg_5398;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln195_reg_5374;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln194_reg_5354;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln172_4_reg_5338;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2943)) begin
            smem_3_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2971)) begin
            smem_3_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2979)) begin
            smem_3_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2955)) begin
            smem_3_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2975)) begin
            smem_3_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2947)) begin
            smem_3_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_3_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_3_address0_local = zext_ln199_2_fu_3936_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_3_address0_local = zext_ln196_2_fu_3902_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_3_address0_local = zext_ln195_2_fu_3894_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_3_address0_local = zext_ln194_2_fu_3885_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_3_address0_local = zext_ln172_6_fu_3874_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln199_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln196_1_fu_3775_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln195_1_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln194_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_5_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln199_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln196_reg_5398;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln195_reg_5374;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln194_reg_5354;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln172_4_reg_5338;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2947)) begin
            smem_4_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2943)) begin
            smem_4_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2939)) begin
            smem_4_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2979)) begin
            smem_4_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2951)) begin
            smem_4_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2975)) begin
            smem_4_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_4_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_4_address0_local = zext_ln199_2_fu_3936_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_4_address0_local = zext_ln198_2_fu_3927_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_4_address0_local = zext_ln195_2_fu_3894_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_4_address0_local = zext_ln194_2_fu_3885_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_4_address0_local = zext_ln172_6_fu_3874_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln199_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln198_1_fu_3806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln195_1_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln194_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_5_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln199_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln198_reg_5446;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln195_reg_5374;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln194_reg_5354;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln172_4_reg_5338;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2975)) begin
            smem_5_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2947)) begin
            smem_5_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2971)) begin
            smem_5_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2939)) begin
            smem_5_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2955)) begin
            smem_5_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2951)) begin
            smem_5_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_5_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_5_address0_local = zext_ln199_2_fu_3936_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_5_address0_local = zext_ln198_2_fu_3927_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_5_address0_local = zext_ln197_2_fu_3910_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_5_address0_local = zext_ln194_2_fu_3885_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_5_address0_local = zext_ln172_6_fu_3874_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln199_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln198_1_fu_3806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln197_1_fu_3786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln194_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln172_5_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln199_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln198_reg_5446;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln197_reg_5422;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln194_reg_5354;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln172_4_reg_5338;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2951)) begin
            smem_6_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2975)) begin
            smem_6_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2943)) begin
            smem_6_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2971)) begin
            smem_6_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2979)) begin
            smem_6_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2955)) begin
            smem_6_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_6_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_6_address0_local = zext_ln199_2_fu_3936_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_6_address0_local = zext_ln198_2_fu_3927_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_6_address0_local = zext_ln197_2_fu_3910_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_6_address0_local = zext_ln194_2_fu_3885_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_6_address0_local = zext_ln172_6_fu_3874_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln199_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln198_1_fu_3806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln197_1_fu_3786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln194_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln172_5_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln199_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln198_reg_5446;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln197_reg_5422;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln194_reg_5354;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln172_4_reg_5338;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2955)) begin
            smem_7_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2951)) begin
            smem_7_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2947)) begin
            smem_7_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2943)) begin
            smem_7_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2939)) begin
            smem_7_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2979)) begin
            smem_7_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_7_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_7_address0_local = zext_ln199_2_fu_3936_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_7_address0_local = zext_ln198_2_fu_3927_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_7_address0_local = zext_ln197_2_fu_3910_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_7_address0_local = zext_ln196_2_fu_3902_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_7_address0_local = zext_ln172_6_fu_3874_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln199_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln198_1_fu_3806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln197_1_fu_3786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln196_1_fu_3775_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln172_5_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln199_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln198_reg_5446;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln197_reg_5422;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln196_reg_5398;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln172_4_reg_5338;
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2979)) begin
            smem_8_address0_local = zext_ln200_3_fu_4468_p1;
        end else if ((1'b1 == ap_condition_2955)) begin
            smem_8_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2975)) begin
            smem_8_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2947)) begin
            smem_8_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2971)) begin
            smem_8_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2939)) begin
            smem_8_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_8_address0_local = zext_ln200_2_fu_3955_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_8_address0_local = zext_ln199_2_fu_3936_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_8_address0_local = zext_ln198_2_fu_3927_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_8_address0_local = zext_ln197_2_fu_3910_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_8_address0_local = zext_ln196_2_fu_3902_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_8_address0_local = zext_ln195_2_fu_3894_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln200_1_fu_3838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln199_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln198_1_fu_3806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln197_1_fu_3786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln196_1_fu_3775_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln195_1_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln200_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln199_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln198_reg_5446;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln197_reg_5422;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln196_reg_5398;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln195_reg_5374;
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2979)) begin
            smem_9_address0_local = zext_ln199_3_fu_4448_p1;
        end else if ((1'b1 == ap_condition_2951)) begin
            smem_9_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2975)) begin
            smem_9_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2943)) begin
            smem_9_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2971)) begin
            smem_9_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_9_address0_local = zext_ln199_1_fu_3818_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            smem_9_address0_local = zext_ln198_1_fu_3806_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_9_address0_local = zext_ln197_1_fu_3786_p1;
        end else if ((1'b1 == ap_condition_2923)) begin
            smem_9_address0_local = zext_ln196_1_fu_3775_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_9_address0_local = zext_ln195_1_fu_3764_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln199_2_reg_6427;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln198_2_reg_6395;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln197_2_reg_6363;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln196_2_reg_6331;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln195_2_reg_6299;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln199_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln198_fu_3089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln197_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln196_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln195_fu_3071_p1;
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg== 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2979)) begin
            smem_address0_local = zext_ln198_3_fu_4436_p1;
        end else if ((1'b1 == ap_condition_2955)) begin
            smem_address0_local = zext_ln197_3_fu_4416_p1;
        end else if ((1'b1 == ap_condition_2975)) begin
            smem_address0_local = zext_ln196_3_fu_4405_p1;
        end else if ((1'b1 == ap_condition_2947)) begin
            smem_address0_local = zext_ln195_3_fu_4394_p1;
        end else if ((1'b1 == ap_condition_2971)) begin
            smem_address0_local = zext_ln194_3_fu_4383_p1;
        end else if ((1'b1 == ap_condition_2939)) begin
            smem_address0_local = zext_ln172_7_fu_4371_p1;
        end else if ((1'b1 == ap_condition_2967)) begin
            smem_address0_local = zext_ln198_1_fu_3806_p1;
        end else if ((1'b1 == ap_condition_2935)) begin
            smem_address0_local = zext_ln197_1_fu_3786_p1;
        end else if ((1'b1 == ap_condition_2963)) begin
            smem_address0_local = zext_ln196_1_fu_3775_p1;
        end else if ((1'b1 == ap_condition_2927)) begin
            smem_address0_local = zext_ln195_1_fu_3764_p1;
        end else if ((1'b1 == ap_condition_2959)) begin
            smem_address0_local = zext_ln194_1_fu_3753_p1;
        end else if ((1'b1 == ap_condition_2919)) begin
            smem_address0_local = zext_ln172_5_fu_3741_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln198_2_reg_6395;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln197_2_reg_6363;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln196_2_reg_6331;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln195_2_reg_6299;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln194_2_reg_6263;
    end else if (((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln172_6_reg_6223;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln198_fu_3089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln197_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln196_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln195_fu_3071_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln194_fu_3066_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_4_fu_3061_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (hi_reg_5212 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_7_d1 = reg_2702;
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
assign add_ln188_fu_3027_p2 = (tid_reg_5198 + 7'd4);
assign add_ln194_1_fu_3124_p2 = (offset_5_reg_5329 + 9'd32);
assign add_ln194_2_fu_3168_p2 = (offset_6_fu_3159_p2 + 9'd32);
assign add_ln194_fu_3099_p2 = (offset_4_reg_5310 + 9'd32);
assign add_ln195_1_fu_3104_p2 = (offset_4_reg_5310 + 9'd8);
assign add_ln195_2_fu_3129_p2 = (offset_5_reg_5329 + 9'd8);
assign add_ln195_3_fu_3174_p2 = (offset_6_fu_3159_p2 + 9'd8);
assign add_ln195_fu_2825_p2 = (offset_fu_2777_p5 + 9'd8);
assign add_ln196_1_fu_3109_p2 = (offset_4_reg_5310 + 9'd40);
assign add_ln196_2_fu_3134_p2 = (offset_5_reg_5329 + 9'd40);
assign add_ln196_3_fu_3429_p2 = (offset_6_reg_5536 + 9'd40);
assign add_ln196_fu_2831_p2 = (offset_fu_2777_p5 + 9'd40);
assign add_ln197_1_fu_3139_p2 = (offset_5_reg_5329 + 9'd16);
assign add_ln197_2_fu_3434_p2 = (offset_6_reg_5536 + 9'd16);
assign add_ln197_fu_3114_p2 = (offset_4_reg_5310 + 9'd16);
assign add_ln199_1_fu_3119_p2 = (offset_4_reg_5310 + 9'd24);
assign add_ln199_2_fu_3144_p2 = (offset_5_reg_5329 + 9'd24);
assign add_ln199_3_fu_3439_p2 = (offset_6_reg_5536 + 9'd24);
assign add_ln199_fu_2901_p2 = (offset_fu_2777_p5 + 9'd24);
assign add_ln1_fu_2837_p5 = {{{{trunc_ln191_fu_2765_p1}, {2'd1}}, {tmp_86_fu_2769_p3}}, {hi_fu_2755_p4}};
assign add_ln_fu_2793_p5 = {{{{trunc_ln191_fu_2765_p1}, {2'd2}}, {tmp_86_fu_2769_p3}}, {hi_fu_2755_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2919 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2923 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2927 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2931 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2935 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2939 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2943 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2947 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2951 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2955 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2959 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2963 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2967 = ((1'b0 == ap_block_pp0_stage0) & (hi_reg_5212_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2971 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2975 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2979 = ((1'b0 == ap_block_pp0_stage1) & (hi_reg_5212_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_2651_p17 = 'bx;
assign grp_fu_5128_p0 = grp_fu_5128_p00;
assign grp_fu_5128_p00 = offset_fu_2777_p5;
assign grp_fu_5128_p1 = 10'd56;
assign grp_fu_5128_p2 = 21'd1490;
assign grp_fu_5137_p0 = zext_ln172_25_fu_2994_p1;
assign grp_fu_5137_p1 = 10'd48;
assign grp_fu_5137_p2 = 21'd1490;
assign grp_fu_5146_p0 = zext_ln172_25_fu_2994_p1;
assign grp_fu_5146_p1 = 10'd56;
assign grp_fu_5146_p2 = 21'd1490;
assign grp_fu_5155_p0 = zext_ln172_27_fu_3023_p1;
assign grp_fu_5155_p1 = 10'd48;
assign grp_fu_5155_p2 = 21'd1490;
assign grp_fu_5164_p0 = zext_ln172_27_fu_3023_p1;
assign grp_fu_5164_p1 = 10'd56;
assign grp_fu_5164_p2 = 21'd1490;
assign grp_fu_5173_p0 = zext_ln172_29_fu_3164_p1;
assign grp_fu_5173_p1 = 10'd48;
assign grp_fu_5173_p2 = 21'd1490;
assign grp_fu_5182_p0 = zext_ln172_29_fu_3164_p1;
assign grp_fu_5182_p1 = 10'd56;
assign grp_fu_5182_p2 = 21'd1490;
assign hi_fu_2755_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln191_1_fu_2976_p5 = {{{{tmp_51_fu_2967_p4}, {3'd4}}, {tmp_51_fu_2967_p4}}, {2'd2}};
assign mul_ln191_2_fu_3005_p5 = {{{{tmp_103_fu_2998_p3}, {4'd8}}, {tmp_103_fu_2998_p3}}, {3'd4}};
assign mul_ln191_3_fu_3149_p5 = {{{{tmp_103_reg_5319}, {4'd12}}, {tmp_103_reg_5319}}, {3'd6}};
assign mul_ln194_1_fu_3204_p0 = mul_ln194_1_fu_3204_p00;
assign mul_ln194_1_fu_3204_p00 = add_ln194_reg_5486;
assign mul_ln194_1_fu_3204_p1 = 19'd745;
assign mul_ln194_2_fu_3299_p0 = mul_ln194_2_fu_3299_p00;
assign mul_ln194_2_fu_3299_p00 = add_ln194_1_reg_5511;
assign mul_ln194_2_fu_3299_p1 = 19'd745;
assign mul_ln194_3_fu_3394_p0 = mul_ln194_3_fu_3394_p00;
assign mul_ln194_3_fu_3394_p00 = add_ln194_2_reg_5543;
assign mul_ln194_3_fu_3394_p1 = 19'd745;
assign mul_ln194_fu_2809_p0 = mul_ln194_fu_2809_p00;
assign mul_ln194_fu_2809_p00 = add_ln_fu_2793_p5;
assign mul_ln194_fu_2809_p1 = 19'd745;
assign mul_ln195_1_fu_3223_p0 = mul_ln195_1_fu_3223_p00;
assign mul_ln195_1_fu_3223_p00 = add_ln195_1_reg_5491;
assign mul_ln195_1_fu_3223_p1 = 19'd745;
assign mul_ln195_2_fu_3318_p0 = mul_ln195_2_fu_3318_p00;
assign mul_ln195_2_fu_3318_p00 = add_ln195_2_reg_5516;
assign mul_ln195_2_fu_3318_p1 = 19'd745;
assign mul_ln195_3_fu_3413_p0 = mul_ln195_3_fu_3413_p00;
assign mul_ln195_3_fu_3413_p00 = add_ln195_3_reg_5548;
assign mul_ln195_3_fu_3413_p1 = 19'd745;
assign mul_ln195_fu_2913_p0 = mul_ln195_fu_2913_p00;
assign mul_ln195_fu_2913_p00 = add_ln195_reg_5259;
assign mul_ln195_fu_2913_p1 = 19'd745;
assign mul_ln196_1_fu_3242_p0 = mul_ln196_1_fu_3242_p00;
assign mul_ln196_1_fu_3242_p00 = add_ln196_1_reg_5496;
assign mul_ln196_1_fu_3242_p1 = 19'd745;
assign mul_ln196_2_fu_3337_p0 = mul_ln196_2_fu_3337_p00;
assign mul_ln196_2_fu_3337_p00 = add_ln196_2_reg_5521;
assign mul_ln196_2_fu_3337_p1 = 19'd745;
assign mul_ln196_3_fu_3970_p0 = mul_ln196_3_fu_3970_p00;
assign mul_ln196_3_fu_3970_p00 = add_ln196_3_reg_5853;
assign mul_ln196_3_fu_3970_p1 = 19'd745;
assign mul_ln196_fu_2932_p0 = mul_ln196_fu_2932_p00;
assign mul_ln196_fu_2932_p00 = add_ln196_reg_5264;
assign mul_ln196_fu_2932_p1 = 19'd745;
assign mul_ln197_1_fu_3261_p0 = mul_ln197_1_fu_3261_p00;
assign mul_ln197_1_fu_3261_p00 = add_ln197_reg_5501;
assign mul_ln197_1_fu_3261_p1 = 19'd745;
assign mul_ln197_2_fu_3356_p0 = mul_ln197_2_fu_3356_p00;
assign mul_ln197_2_fu_3356_p00 = add_ln197_1_reg_5526;
assign mul_ln197_2_fu_3356_p1 = 19'd745;
assign mul_ln197_3_fu_3989_p0 = mul_ln197_3_fu_3989_p00;
assign mul_ln197_3_fu_3989_p00 = add_ln197_2_reg_5858;
assign mul_ln197_3_fu_3989_p1 = 19'd745;
assign mul_ln197_fu_2853_p0 = mul_ln197_fu_2853_p00;
assign mul_ln197_fu_2853_p00 = add_ln1_fu_2837_p5;
assign mul_ln197_fu_2853_p1 = 19'd745;
assign mul_ln198_fu_2885_p0 = mul_ln198_fu_2885_p00;
assign mul_ln198_fu_2885_p00 = tmp_91_fu_2869_p5;
assign mul_ln198_fu_2885_p1 = 21'd1490;
assign mul_ln199_1_fu_3280_p0 = mul_ln199_1_fu_3280_p00;
assign mul_ln199_1_fu_3280_p00 = add_ln199_1_reg_5506;
assign mul_ln199_1_fu_3280_p1 = 19'd745;
assign mul_ln199_2_fu_3375_p0 = mul_ln199_2_fu_3375_p00;
assign mul_ln199_2_fu_3375_p00 = add_ln199_2_reg_5531;
assign mul_ln199_2_fu_3375_p1 = 19'd745;
assign mul_ln199_3_fu_4008_p0 = mul_ln199_3_fu_4008_p00;
assign mul_ln199_3_fu_4008_p00 = add_ln199_3_reg_5863;
assign mul_ln199_3_fu_4008_p1 = 19'd745;
assign mul_ln199_fu_2951_p0 = mul_ln199_fu_2951_p00;
assign mul_ln199_fu_2951_p00 = add_ln199_reg_5279;
assign mul_ln199_fu_2951_p1 = 19'd745;
assign offset_4_fu_2988_p2 = (mul_ln191_1_fu_2976_p5 + zext_ln114_fu_2907_p1);
assign offset_5_fu_3017_p2 = (mul_ln191_2_fu_3005_p5 + zext_ln114_fu_2907_p1);
assign offset_6_fu_3159_p2 = (mul_ln191_3_fu_3149_p5 + zext_ln114_reg_5284);
assign offset_fu_2777_p5 = {{{{trunc_ln191_fu_2765_p1}, {2'd0}}, {tmp_86_fu_2769_p3}}, {hi_fu_2755_p4}};
assign or_ln188_1_fu_4518_p3 = {{tmp_52_fu_4509_p4}, {2'd2}};
assign or_ln188_2_fu_5116_p3 = {{tmp_52_reg_6962}, {2'd3}};
assign or_ln9_fu_4489_p3 = {{tmp_50_fu_4480_p4}, {1'd1}};
assign p_shl1_fu_3044_p3 = {{trunc_ln191_reg_5248}, {3'd0}};
assign p_shl2_fu_3724_p3 = {{tmp_51_reg_5304_pp0_iter1_reg}, {4'd8}};
assign p_shl3_fu_3857_p3 = {{tmp_103_reg_5319_pp0_iter1_reg}, {5'd16}};
assign p_shl_fu_4354_p3 = {{tmp_103_reg_5319_pp0_iter1_reg}, {5'd24}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
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
assign sub_ln172_1_fu_3735_p2 = (p_shl2_fu_3724_p3 - zext_ln172_26_fu_3731_p1);
assign sub_ln172_2_fu_3868_p2 = (p_shl3_fu_3857_p3 - zext_ln172_28_fu_3864_p1);
assign sub_ln172_3_fu_4365_p2 = (p_shl_fu_4354_p3 - zext_ln172_30_fu_4361_p1);
assign sub_ln172_fu_3055_p2 = (p_shl1_fu_3044_p3 - zext_ln172_24_fu_3051_p1);
assign tmp_100_fu_3797_p1 = grp_fu_5137_p3;
assign tmp_100_fu_3797_p4 = {{tmp_100_fu_3797_p1[20:14]}};
assign tmp_102_fu_3829_p1 = grp_fu_5146_p3;
assign tmp_102_fu_3829_p4 = {{tmp_102_fu_3829_p1[20:14]}};
assign tmp_103_fu_2998_p3 = tid_reg_5198[32'd2];
assign tmp_104_fu_3850_p3 = {{tmp_103_reg_5319_pp0_iter1_reg}, {3'd4}};
assign tmp_109_fu_3918_p1 = grp_fu_5155_p3;
assign tmp_109_fu_3918_p4 = {{tmp_109_fu_3918_p1[20:14]}};
assign tmp_111_fu_3946_p1 = grp_fu_5164_p3;
assign tmp_111_fu_3946_p4 = {{tmp_111_fu_3946_p1[20:14]}};
assign tmp_112_fu_4347_p3 = {{tmp_103_reg_5319_pp0_iter1_reg}, {3'd6}};
assign tmp_117_fu_4427_p1 = grp_fu_5173_p3;
assign tmp_117_fu_4427_p4 = {{tmp_117_fu_4427_p1[20:14]}};
assign tmp_119_fu_4459_p1 = grp_fu_5182_p3;
assign tmp_119_fu_4459_p4 = {{tmp_119_fu_4459_p1[20:14]}};
assign tmp_19_fu_3483_p17 = 'bx;
assign tmp_20_fu_3522_p17 = 'bx;
assign tmp_21_fu_3561_p17 = 'bx;
assign tmp_22_fu_3600_p17 = 'bx;
assign tmp_23_fu_3639_p17 = 'bx;
assign tmp_24_fu_3678_p17 = 'bx;
assign tmp_26_fu_4035_p17 = 'bx;
assign tmp_27_fu_4074_p17 = 'bx;
assign tmp_28_fu_4113_p17 = 'bx;
assign tmp_29_fu_4152_p17 = 'bx;
assign tmp_30_fu_4191_p17 = 'bx;
assign tmp_31_fu_4230_p17 = 'bx;
assign tmp_32_fu_4269_p17 = 'bx;
assign tmp_34_fu_4531_p17 = 'bx;
assign tmp_35_fu_4570_p17 = 'bx;
assign tmp_36_fu_4609_p17 = 'bx;
assign tmp_37_fu_4648_p17 = 'bx;
assign tmp_38_fu_4687_p17 = 'bx;
assign tmp_39_fu_4726_p17 = 'bx;
assign tmp_40_fu_4765_p17 = 'bx;
assign tmp_41_fu_4308_p17 = 'bx;
assign tmp_42_fu_4804_p17 = 'bx;
assign tmp_43_fu_4843_p17 = 'bx;
assign tmp_44_fu_4882_p17 = 'bx;
assign tmp_45_fu_4921_p17 = 'bx;
assign tmp_46_fu_4960_p17 = 'bx;
assign tmp_47_fu_4999_p17 = 'bx;
assign tmp_48_fu_5038_p17 = 'bx;
assign tmp_49_fu_5077_p17 = 'bx;
assign tmp_50_fu_4480_p4 = {{tid_reg_5198_pp0_iter2_reg[5:1]}};
assign tmp_51_fu_2967_p4 = {{tid_reg_5198[2:1]}};
assign tmp_52_fu_4509_p4 = {{tid_reg_5198_pp0_iter2_reg[5:2]}};
assign tmp_85_fu_3037_p3 = {{trunc_ln191_reg_5248}, {1'd0}};
assign tmp_86_fu_2769_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_91_fu_2869_p5 = {{{{trunc_ln191_fu_2765_p1}, {2'd3}}, {tmp_86_fu_2769_p3}}, {hi_fu_2755_p4}};
assign tmp_94_fu_3180_p1 = grp_fu_5128_p3;
assign tmp_94_fu_3180_p4 = {{tmp_94_fu_3180_p1[20:14]}};
assign tmp_95_fu_3717_p3 = {{tmp_51_reg_5304_pp0_iter1_reg}, {2'd2}};
assign tmp_fu_2747_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_3444_p17 = 'bx;
assign trunc_ln191_fu_2765_p1 = ap_sig_allocacmp_tid[2:0];
assign zext_ln114_fu_2907_p1 = hi_reg_5212;
assign zext_ln172_24_fu_3051_p1 = tmp_85_fu_3037_p3;
assign zext_ln172_25_fu_2994_p1 = offset_4_fu_2988_p2;
assign zext_ln172_26_fu_3731_p1 = tmp_95_fu_3717_p3;
assign zext_ln172_27_fu_3023_p1 = offset_5_fu_3017_p2;
assign zext_ln172_28_fu_3864_p1 = tmp_104_fu_3850_p3;
assign zext_ln172_29_fu_3164_p1 = offset_6_fu_3159_p2;
assign zext_ln172_30_fu_4361_p1 = tmp_112_fu_4347_p3;
assign zext_ln172_4_fu_3061_p1 = sub_ln172_fu_3055_p2;
assign zext_ln172_5_fu_3741_p1 = sub_ln172_1_fu_3735_p2;
assign zext_ln172_6_fu_3874_p1 = sub_ln172_2_fu_3868_p2;
assign zext_ln172_7_fu_4371_p1 = sub_ln172_3_fu_4365_p2;
assign zext_ln188_fu_4024_p1 = tid_reg_5198_pp0_iter2_reg;
assign zext_ln191_1_fu_4526_p1 = or_ln188_1_fu_4518_p3;
assign zext_ln191_2_fu_5123_p1 = or_ln188_2_fu_5116_p3;
assign zext_ln191_fu_4497_p1 = or_ln9_fu_4489_p3;
assign zext_ln194_1_fu_3753_p1 = tmp_96_reg_5793;
assign zext_ln194_2_fu_3885_p1 = tmp_105_reg_5818;
assign zext_ln194_3_fu_4383_p1 = tmp_113_reg_5843;
assign zext_ln194_fu_3066_p1 = tmp_87_reg_5254;
assign zext_ln195_1_fu_3764_p1 = tmp_97_reg_5798;
assign zext_ln195_2_fu_3894_p1 = tmp_106_reg_5823;
assign zext_ln195_3_fu_4394_p1 = tmp_114_reg_5848;
assign zext_ln195_fu_3071_p1 = tmp_88_reg_5289;
assign zext_ln196_1_fu_3775_p1 = tmp_98_reg_5803;
assign zext_ln196_2_fu_3902_p1 = tmp_107_reg_5828;
assign zext_ln196_3_fu_4405_p1 = tmp_115_reg_6507;
assign zext_ln196_fu_3077_p1 = tmp_89_reg_5294;
assign zext_ln197_1_fu_3786_p1 = tmp_99_reg_5808;
assign zext_ln197_2_fu_3910_p1 = tmp_108_reg_5833;
assign zext_ln197_3_fu_4416_p1 = tmp_116_reg_6512;
assign zext_ln197_fu_3083_p1 = tmp_90_reg_5269;
assign zext_ln198_1_fu_3806_p1 = tmp_100_fu_3797_p4;
assign zext_ln198_2_fu_3927_p1 = tmp_109_fu_3918_p4;
assign zext_ln198_3_fu_4436_p1 = tmp_117_fu_4427_p4;
assign zext_ln198_fu_3089_p1 = tmp_92_reg_5274;
assign zext_ln199_1_fu_3818_p1 = tmp_101_reg_5813;
assign zext_ln199_2_fu_3936_p1 = tmp_110_reg_5838;
assign zext_ln199_3_fu_4448_p1 = tmp_118_reg_6517;
assign zext_ln199_fu_3095_p1 = tmp_93_reg_5299;
assign zext_ln200_1_fu_3838_p1 = tmp_102_fu_3829_p4;
assign zext_ln200_2_fu_3955_p1 = tmp_111_fu_3946_p4;
assign zext_ln200_3_fu_4468_p1 = tmp_119_fu_4459_p4;
assign zext_ln200_fu_3189_p1 = tmp_94_fu_3180_p4;
always @ (posedge ap_clk) begin
    zext_ln114_reg_5284[8:3] <= 6'b000000;
    zext_ln172_4_reg_5338[0] <= 1'b0;
    zext_ln172_4_reg_5338[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln194_reg_5354[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln195_reg_5374[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln196_reg_5398[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln197_reg_5422[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln198_reg_5446[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln199_reg_5470[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln172_6_reg_6223[2:0] <= 3'b100;
    zext_ln172_6_reg_6223[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln194_2_reg_6263[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln195_2_reg_6299[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln196_2_reg_6331[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln197_2_reg_6363[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln198_2_reg_6395[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln199_2_reg_6427[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln191_1_reg_6967[1:0] <= 2'b10;
    zext_ln191_1_reg_6967[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln191_2_reg_7053[1:0] <= 2'b11;
    zext_ln191_2_reg_7053[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 