
module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [7:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_reg_4549;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_2378;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_2388;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_2396;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_2403;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_2413;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_2424;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_2432;
reg   [63:0] reg_2442;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_2453;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_2463;
reg   [63:0] reg_2470;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_2478;
reg   [63:0] reg_2486;
reg   [63:0] reg_2493;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_2501;
reg   [63:0] reg_2511;
reg   [63:0] reg_2519;
reg   [63:0] reg_2530;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_2537;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_2544;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_2551;
reg   [6:0] tid_3_reg_4540;
wire   [0:0] tmp_fu_2566_p3;
reg   [0:0] tmp_reg_4549_pp0_iter1_reg;
wire   [8:0] zext_ln294_1_fu_2574_p1;
reg   [8:0] zext_ln294_1_reg_4553;
wire   [7:0] zext_ln294_2_fu_2578_p1;
reg   [7:0] zext_ln294_2_reg_4570;
reg   [2:0] trunc_ln4_reg_4588;
reg   [4:0] tmp_47_reg_4612;
reg   [4:0] tmp_47_reg_4612_pp0_iter1_reg;
wire   [4:0] tmp_s_fu_2618_p4;
reg   [4:0] tmp_s_reg_4623;
reg   [4:0] tmp_48_reg_4629;
wire   [8:0] add_ln299_fu_2670_p2;
reg   [8:0] add_ln299_reg_4644;
wire   [8:0] add_ln301_1_fu_2690_p2;
reg   [8:0] add_ln301_1_reg_4659;
wire   [5:0] trunc_ln298_1_fu_2696_p1;
reg   [5:0] trunc_ln298_1_reg_4664;
reg   [7:0] tmp_49_reg_4681;
reg   [7:0] tmp_51_reg_4686;
wire   [7:0] add_ln303_1_fu_2764_p2;
reg   [7:0] add_ln303_1_reg_4701;
wire   [9:0] zext_ln294_fu_2769_p1;
reg   [9:0] zext_ln294_reg_4706;
reg   [9:0] zext_ln294_reg_4706_pp0_iter1_reg;
reg   [6:0] tmp_52_reg_4724;
reg   [7:0] tmp_53_reg_4729;
reg   [6:0] tmp_50_reg_4744;
wire   [3:0] tmp_25_fu_2855_p4;
reg   [3:0] tmp_25_reg_4749;
reg   [4:0] tmp_56_reg_4760;
wire   [8:0] add_ln299_1_fu_2906_p2;
reg   [8:0] add_ln299_1_reg_4775;
reg   [4:0] tmp_64_reg_4780;
wire   [8:0] add_ln299_3_fu_2951_p2;
reg   [8:0] add_ln299_3_reg_4795;
reg   [63:0] DATA_x_load_7_reg_4800;
reg   [63:0] DATA_x_1_load_7_reg_4807;
reg   [7:0] tmp_54_reg_4824;
reg   [7:0] tmp_57_reg_4829;
wire   [8:0] add_ln301_2_fu_3010_p2;
reg   [8:0] add_ln301_2_reg_4844;
reg   [7:0] tmp_65_reg_4849;
wire   [8:0] add_ln301_4_fu_3034_p2;
reg   [8:0] add_ln301_4_reg_4854;
reg   [63:0] DATA_x_load_16_reg_4859;
reg   [8:0] tmp_55_reg_4866;
reg   [7:0] tmp_59_reg_4871;
wire   [63:0] zext_ln302_4_fu_3074_p1;
reg   [63:0] zext_ln302_4_reg_4876;
wire   [63:0] zext_ln298_8_fu_3086_p1;
reg   [63:0] zext_ln298_8_reg_4886;
reg   [7:0] tmp_67_reg_4906;
wire   [1:0] trunc_ln298_fu_3123_p1;
reg   [1:0] trunc_ln298_reg_4911;
reg   [1:0] trunc_ln298_reg_4911_pp0_iter1_reg;
reg   [6:0] tmp_58_reg_4915;
reg   [6:0] tmp_60_reg_4920;
wire   [7:0] add_ln303_2_fu_3161_p2;
reg   [7:0] add_ln303_2_reg_4930;
wire   [63:0] zext_ln302_8_fu_3186_p1;
reg   [63:0] zext_ln302_8_reg_4945;
reg   [6:0] tmp_68_reg_4955;
wire   [7:0] add_ln303_4_fu_3216_p2;
reg   [7:0] add_ln303_4_reg_4960;
reg   [63:0] DATA_x_load_17_reg_4965;
reg   [63:0] DATA_x_1_load_17_reg_4972;
wire   [5:0] zext_ln298_19_fu_3221_p1;
reg   [5:0] zext_ln298_19_reg_4979;
reg   [7:0] tmp_61_reg_4987;
wire   [63:0] zext_ln302_6_fu_3292_p1;
reg   [63:0] zext_ln302_6_reg_5002;
reg   [6:0] tmp_66_reg_5012;
reg   [7:0] tmp_69_reg_5022;
wire   [7:0] zext_ln298_1_fu_3329_p1;
reg   [7:0] zext_ln298_1_reg_5027;
reg   [7:0] tmp_62_reg_5039;
wire   [63:0] zext_ln304_6_fu_3373_p1;
reg   [63:0] zext_ln304_6_reg_5049;
wire   [0:0] tmp_72_fu_3391_p3;
reg   [0:0] tmp_72_reg_5069;
reg   [4:0] tmp_73_reg_5077;
wire   [8:0] add_ln299_4_fu_3429_p2;
reg   [8:0] add_ln299_4_reg_5082;
reg   [4:0] tmp_81_reg_5087;
wire   [8:0] add_ln299_6_fu_3461_p2;
reg   [8:0] add_ln299_6_reg_5092;
reg   [63:0] DATA_x_load_14_reg_5097;
wire   [6:0] zext_ln298_18_fu_3476_p1;
reg   [6:0] zext_ln298_18_reg_5104;
reg   [7:0] tmp_70_reg_5118;
reg   [7:0] tmp_74_reg_5133;
wire   [8:0] add_ln301_5_fu_3548_p2;
reg   [8:0] add_ln301_5_reg_5138;
wire   [63:0] zext_ln298_16_fu_3560_p1;
reg   [63:0] zext_ln298_16_reg_5143;
reg   [7:0] tmp_82_reg_5153;
wire   [8:0] add_ln301_7_fu_3584_p2;
reg   [8:0] add_ln301_7_reg_5158;
reg   [63:0] DATA_x_1_load_19_reg_5163;
reg   [8:0] tmp_63_reg_5170;
wire   [63:0] zext_ln300_10_fu_3632_p1;
reg   [63:0] zext_ln300_10_reg_5175;
reg   [7:0] tmp_76_reg_5185;
wire   [63:0] zext_ln298_14_fu_3663_p1;
reg   [63:0] zext_ln298_14_reg_5190;
wire   [63:0] zext_ln300_12_fu_3675_p1;
reg   [63:0] zext_ln300_12_reg_5200;
reg   [7:0] tmp_84_reg_5215;
reg   [63:0] DATA_x_load_28_reg_5220;
reg   [8:0] tmp_71_reg_5227;
wire   [63:0] zext_ln302_10_fu_3742_p1;
reg   [63:0] zext_ln302_10_reg_5237;
reg   [6:0] tmp_77_reg_5247;
wire   [7:0] add_ln303_5_fu_3772_p2;
reg   [7:0] add_ln303_5_reg_5252;
wire   [63:0] zext_ln300_14_fu_3784_p1;
reg   [63:0] zext_ln300_14_reg_5262;
reg   [6:0] tmp_85_reg_5272;
wire   [7:0] add_ln303_7_fu_3814_p2;
reg   [7:0] add_ln303_7_reg_5277;
reg   [63:0] DATA_x_1_load_28_reg_5282;
reg   [6:0] tmp_75_reg_5289;
reg   [7:0] tmp_78_reg_5299;
wire   [63:0] zext_ln302_12_fu_3882_p1;
reg   [63:0] zext_ln302_12_reg_5304;
wire   [63:0] zext_ln302_14_fu_3894_p1;
reg   [63:0] zext_ln302_14_reg_5319;
reg   [7:0] tmp_86_reg_5329;
reg   [63:0] DATA_x_load_29_reg_5334;
wire   [63:0] zext_ln304_10_fu_3972_p1;
reg   [63:0] zext_ln304_10_reg_5341;
wire   [63:0] zext_ln304_12_fu_3984_p1;
reg   [63:0] zext_ln304_12_reg_5356;
reg   [6:0] tmp_83_reg_5366;
reg   [63:0] DATA_x_load_26_reg_5376;
reg   [63:0] DATA_x_load_30_reg_5383;
reg   [63:0] DATA_x_1_load_29_reg_5390;
reg   [7:0] tmp_79_reg_5407;
wire   [63:0] zext_ln304_14_fu_4051_p1;
reg   [63:0] zext_ln304_14_reg_5417;
reg   [63:0] zext_ln304_14_reg_5417_pp0_iter1_reg;
reg   [63:0] DATA_x_load_23_reg_5427;
reg   [63:0] DATA_x_load_27_reg_5434;
reg   [63:0] DATA_x_1_load_30_reg_5441;
reg   [63:0] DATA_x_load_31_reg_5463;
reg   [7:0] tmp_87_reg_5470;
reg   [8:0] tmp_80_reg_5475;
reg   [63:0] DATA_x_1_load_27_reg_5480;
reg   [8:0] tmp_88_reg_5492;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln298_4_fu_2664_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln300_2_fu_2684_p1;
wire   [63:0] zext_ln300_fu_2707_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln302_2_fu_2758_p1;
wire   [63:0] zext_ln302_fu_2779_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln304_2_fu_2840_p1;
wire   [63:0] zext_ln298_6_fu_2900_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln298_10_fu_2945_p1;
wire   [63:0] zext_ln304_fu_2963_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln300_4_fu_3004_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln300_8_fu_3098_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln300_6_fu_3173_p1;
wire   [63:0] zext_ln300_1_fu_3230_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln298_3_fu_3237_p1;
wire   [63:0] zext_ln298_5_fu_3243_p1;
wire   [63:0] zext_ln304_4_fu_3279_p1;
wire   [63:0] zext_ln301_fu_3338_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln299_1_fu_3345_p1;
wire   [63:0] zext_ln299_2_fu_3351_p1;
wire   [63:0] zext_ln304_8_fu_3385_p1;
wire   [63:0] zext_ln302_1_fu_3485_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln300_3_fu_3492_p1;
wire   [63:0] zext_ln300_5_fu_3498_p1;
wire   [63:0] zext_ln298_12_fu_3523_p1;
wire   [63:0] zext_ln303_fu_3594_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln301_1_fu_3601_p1;
wire   [63:0] zext_ln301_2_fu_3607_p1;
wire   [63:0] zext_ln304_1_fu_3704_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln302_3_fu_3711_p1;
wire   [63:0] zext_ln302_5_fu_3717_p1;
wire   [63:0] zext_ln305_fu_3824_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln303_1_fu_3831_p1;
wire   [63:0] zext_ln303_2_fu_3837_p1;
wire   [63:0] zext_ln304_3_fu_3922_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln304_5_fu_3928_p1;
wire   [63:0] zext_ln299_8_fu_3943_p1;
wire   [63:0] zext_ln300_7_fu_3955_p1;
wire   [63:0] zext_ln298_2_fu_4005_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln305_1_fu_4011_p1;
wire   [63:0] zext_ln305_2_fu_4017_p1;
wire   [63:0] zext_ln301_3_fu_4028_p1;
wire   [63:0] zext_ln298_fu_4056_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln302_7_fu_4067_p1;
wire   [63:0] zext_ln298_9_fu_4074_p1;
wire   [63:0] zext_ln298_11_fu_4080_p1;
wire   [63:0] zext_ln299_fu_4106_p1;
wire   [63:0] zext_ln303_3_fu_4118_p1;
wire   [63:0] zext_ln299_4_fu_4125_p1;
wire   [63:0] zext_ln299_5_fu_4131_p1;
wire   [63:0] zext_ln298_7_fu_4151_p1;
wire   [63:0] zext_ln304_7_fu_4163_p1;
wire   [63:0] zext_ln300_9_fu_4170_p1;
wire   [63:0] zext_ln300_11_fu_4176_p1;
wire   [63:0] zext_ln305_3_fu_4187_p1;
wire   [63:0] zext_ln301_4_fu_4194_p1;
wire   [63:0] zext_ln301_5_fu_4200_p1;
wire   [63:0] zext_ln298_13_fu_4211_p1;
wire   [63:0] zext_ln302_9_fu_4218_p1;
wire   [63:0] zext_ln302_11_fu_4224_p1;
wire   [63:0] zext_ln299_11_fu_4239_p1;
wire   [63:0] zext_ln300_13_fu_4251_p1;
wire   [63:0] zext_ln303_4_fu_4258_p1;
wire   [63:0] zext_ln303_5_fu_4264_p1;
wire   [63:0] zext_ln301_6_fu_4275_p1;
wire   [63:0] zext_ln304_9_fu_4282_p1;
wire   [63:0] zext_ln304_11_fu_4288_p1;
wire   [63:0] zext_ln302_13_fu_4299_p1;
wire   [63:0] zext_ln305_4_fu_4306_p1;
wire   [63:0] zext_ln305_5_fu_4312_p1;
wire   [63:0] zext_ln303_6_fu_4323_p1;
wire   [63:0] zext_ln304_13_fu_4335_p1;
wire   [63:0] zext_ln298_15_fu_4342_p1;
wire   [63:0] zext_ln305_6_fu_4353_p1;
wire   [63:0] zext_ln299_7_fu_4360_p1;
wire   [63:0] zext_ln300_15_fu_4366_p1;
wire   [63:0] zext_ln301_7_fu_4372_p1;
wire   [63:0] zext_ln302_15_fu_4378_p1;
wire   [63:0] zext_ln303_7_fu_4384_p1;
wire   [63:0] zext_ln304_15_fu_4390_p1;
wire   [63:0] zext_ln305_7_fu_4405_p1;
reg   [6:0] tid_fu_278;
wire   [6:0] add_ln294_fu_3466_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
wire   [6:0] mul_ln298_fu_2596_p0;
wire   [8:0] mul_ln298_fu_2596_p1;
wire   [13:0] mul_ln298_fu_2596_p2;
wire   [2:0] grp_fu_2612_p0;
wire   [5:0] or_ln10_fu_2628_p3;
wire   [5:0] mul_ln298_1_fu_2640_p0;
wire   [7:0] mul_ln298_1_fu_2640_p1;
wire   [12:0] mul_ln298_1_fu_2640_p2;
wire   [7:0] or_ln11_fu_2656_p3;
wire   [7:0] or_ln300_1_fu_2676_p3;
wire   [7:0] or_ln_fu_2699_p3;
wire   [8:0] mul_ln299_fu_2716_p0;
wire   [10:0] mul_ln299_fu_2716_p1;
wire   [18:0] mul_ln299_fu_2716_p2;
wire   [8:0] mul_ln301_fu_2735_p0;
wire   [10:0] mul_ln301_fu_2735_p1;
wire   [18:0] mul_ln301_fu_2735_p2;
wire   [7:0] or_ln302_1_fu_2751_p3;
wire   [7:0] or_ln8_fu_2772_p3;
wire   [7:0] add_ln302_1_fu_2785_p2;
wire   [7:0] mul_ln302_fu_2794_p0;
wire   [9:0] mul_ln302_fu_2794_p1;
wire   [16:0] mul_ln302_fu_2794_p2;
wire  signed [8:0] sext_ln303_fu_2810_p1;
wire   [8:0] mul_ln303_fu_2817_p0;
wire   [10:0] mul_ln303_fu_2817_p1;
wire   [18:0] mul_ln303_fu_2817_p2;
wire   [7:0] or_ln304_1_fu_2833_p3;
wire   [16:0] tmp_50_fu_2846_p1;
wire  signed [16:0] grp_fu_4411_p3;
wire   [5:0] or_ln297_1_fu_2864_p3;
wire   [5:0] mul_ln298_2_fu_2876_p0;
wire   [7:0] mul_ln298_2_fu_2876_p1;
wire   [12:0] mul_ln298_2_fu_2876_p2;
wire   [7:0] or_ln298_1_fu_2892_p3;
wire   [5:0] or_ln297_2_fu_2911_p3;
wire   [5:0] mul_ln298_3_fu_2922_p0;
wire   [7:0] mul_ln298_3_fu_2922_p1;
wire   [12:0] mul_ln298_3_fu_2922_p2;
wire   [7:0] or_ln298_3_fu_2938_p3;
wire   [7:0] or_ln9_fu_2956_p3;
wire   [18:0] tmp_54_fu_2969_p1;
wire  signed [18:0] grp_fu_4420_p3;
wire   [8:0] mul_ln299_1_fu_2981_p0;
wire   [10:0] mul_ln299_1_fu_2981_p1;
wire   [18:0] mul_ln299_1_fu_2981_p2;
wire   [7:0] or_ln300_2_fu_2997_p3;
wire   [8:0] mul_ln299_2_fu_3018_p0;
wire   [10:0] mul_ln299_2_fu_3018_p1;
wire   [18:0] mul_ln299_2_fu_3018_p2;
wire   [20:0] tmp_55_fu_3039_p1;
wire  signed [20:0] grp_fu_4428_p3;
wire   [8:0] mul_ln301_1_fu_3051_p0;
wire   [10:0] mul_ln301_1_fu_3051_p1;
wire   [18:0] mul_ln301_1_fu_3051_p2;
wire   [7:0] or_ln302_2_fu_3067_p3;
wire   [7:0] or_ln298_2_fu_3079_p3;
wire   [7:0] or_ln300_4_fu_3091_p3;
wire   [8:0] mul_ln301_2_fu_3107_p0;
wire   [10:0] mul_ln301_2_fu_3107_p1;
wire   [18:0] mul_ln301_2_fu_3107_p2;
wire   [1:0] grp_fu_2612_p2;
wire   [16:0] tmp_58_fu_3127_p1;
wire  signed [16:0] grp_fu_4437_p3;
wire   [7:0] add_ln302_2_fu_3136_p2;
wire   [7:0] mul_ln302_1_fu_3145_p0;
wire   [9:0] mul_ln302_1_fu_3145_p1;
wire   [16:0] mul_ln302_1_fu_3145_p2;
wire   [7:0] or_ln300_3_fu_3166_p3;
wire   [7:0] or_ln302_4_fu_3179_p3;
wire   [7:0] add_ln302_4_fu_3191_p2;
wire   [7:0] mul_ln302_2_fu_3200_p0;
wire   [9:0] mul_ln302_2_fu_3200_p1;
wire   [16:0] mul_ln302_2_fu_3200_p2;
wire   [5:0] add_ln300_fu_3224_p2;
wire  signed [8:0] sext_ln303_1_fu_3249_p1;
wire   [8:0] mul_ln303_1_fu_3256_p0;
wire   [10:0] mul_ln303_1_fu_3256_p1;
wire   [18:0] mul_ln303_1_fu_3256_p2;
wire   [7:0] or_ln304_2_fu_3272_p3;
wire   [7:0] or_ln302_3_fu_3285_p3;
wire   [16:0] tmp_66_fu_3297_p1;
wire  signed [16:0] grp_fu_4445_p3;
wire  signed [8:0] sext_ln303_2_fu_3306_p1;
wire   [8:0] mul_ln303_2_fu_3313_p0;
wire   [10:0] mul_ln303_2_fu_3313_p1;
wire   [18:0] mul_ln303_2_fu_3313_p2;
wire   [7:0] add_ln301_fu_3332_p2;
wire   [18:0] tmp_62_fu_3357_p1;
wire  signed [18:0] grp_fu_4453_p3;
wire   [7:0] or_ln304_3_fu_3366_p3;
wire   [7:0] or_ln304_4_fu_3378_p3;
wire   [5:0] or_ln297_3_fu_3398_p5;
wire   [5:0] mul_ln298_4_fu_3413_p0;
wire   [7:0] mul_ln298_4_fu_3413_p1;
wire   [12:0] mul_ln298_4_fu_3413_p2;
wire   [5:0] or_ln297_4_fu_3434_p3;
wire   [5:0] mul_ln298_5_fu_3445_p0;
wire   [7:0] mul_ln298_5_fu_3445_p1;
wire   [12:0] mul_ln298_5_fu_3445_p2;
wire   [6:0] add_ln302_fu_3479_p2;
wire   [18:0] tmp_70_fu_3504_p1;
wire  signed [18:0] grp_fu_4461_p3;
wire   [7:0] or_ln298_4_fu_3513_p5;
wire   [8:0] mul_ln299_3_fu_3532_p0;
wire   [10:0] mul_ln299_3_fu_3532_p1;
wire   [18:0] mul_ln299_3_fu_3532_p2;
wire   [7:0] or_ln298_6_fu_3553_p3;
wire   [8:0] mul_ln299_4_fu_3568_p0;
wire   [10:0] mul_ln299_4_fu_3568_p1;
wire   [18:0] mul_ln299_4_fu_3568_p2;
wire   [7:0] add_ln303_fu_3589_p2;
wire   [20:0] tmp_63_fu_3613_p1;
wire  signed [20:0] grp_fu_4469_p3;
wire   [7:0] or_ln300_5_fu_3622_p5;
wire   [8:0] mul_ln301_3_fu_3640_p0;
wire   [10:0] mul_ln301_3_fu_3640_p1;
wire   [18:0] mul_ln301_3_fu_3640_p2;
wire   [7:0] or_ln298_5_fu_3656_p3;
wire   [7:0] or_ln300_6_fu_3668_p3;
wire   [8:0] mul_ln301_4_fu_3683_p0;
wire   [10:0] mul_ln301_4_fu_3683_p1;
wire   [18:0] mul_ln301_4_fu_3683_p2;
wire   [6:0] add_ln304_fu_3699_p2;
wire   [20:0] tmp_71_fu_3723_p1;
wire  signed [20:0] grp_fu_4477_p3;
wire   [7:0] or_ln302_5_fu_3732_p5;
wire   [7:0] add_ln302_5_fu_3747_p2;
wire   [7:0] mul_ln302_3_fu_3756_p0;
wire   [9:0] mul_ln302_3_fu_3756_p1;
wire   [16:0] mul_ln302_3_fu_3756_p2;
wire   [7:0] or_ln300_7_fu_3777_p3;
wire   [7:0] add_ln302_7_fu_3789_p2;
wire   [7:0] mul_ln302_4_fu_3798_p0;
wire   [9:0] mul_ln302_4_fu_3798_p1;
wire   [16:0] mul_ln302_4_fu_3798_p2;
wire   [7:0] add_ln305_fu_3819_p2;
wire   [16:0] tmp_75_fu_3843_p1;
wire  signed [16:0] grp_fu_4485_p3;
wire  signed [8:0] sext_ln303_3_fu_3852_p1;
wire   [8:0] mul_ln303_3_fu_3859_p0;
wire   [10:0] mul_ln303_3_fu_3859_p1;
wire   [18:0] mul_ln303_3_fu_3859_p2;
wire   [7:0] or_ln302_6_fu_3875_p3;
wire   [7:0] or_ln302_7_fu_3887_p3;
wire  signed [8:0] sext_ln303_4_fu_3899_p1;
wire   [8:0] mul_ln303_4_fu_3906_p0;
wire   [10:0] mul_ln303_4_fu_3906_p1;
wire   [18:0] mul_ln303_4_fu_3906_p2;
wire   [5:0] add_ln299_2_fu_3934_p2;
wire  signed [6:0] sext_ln299_1_fu_3939_p1;
wire   [5:0] add_ln300_3_fu_3950_p2;
wire   [7:0] or_ln304_5_fu_3962_p5;
wire   [7:0] or_ln304_6_fu_3977_p3;
wire   [16:0] tmp_83_fu_3989_p1;
wire  signed [16:0] grp_fu_4493_p3;
wire   [7:0] shl_ln6_fu_3998_p3;
wire   [7:0] add_ln301_3_fu_4023_p2;
wire   [18:0] tmp_79_fu_4035_p1;
wire  signed [18:0] grp_fu_4501_p3;
wire   [7:0] or_ln304_7_fu_4044_p3;
wire   [6:0] add_ln302_3_fu_4062_p2;
wire   [18:0] tmp_87_fu_4086_p1;
wire  signed [18:0] grp_fu_4509_p3;
wire   [5:0] xor_ln3_fu_4095_p3;
wire  signed [6:0] sext_ln299_fu_4102_p1;
wire   [7:0] add_ln303_3_fu_4113_p2;
wire   [20:0] tmp_80_fu_4137_p1;
wire  signed [20:0] grp_fu_4517_p3;
wire   [4:0] add_ln298_fu_4146_p2;
wire   [6:0] add_ln304_3_fu_4158_p2;
wire   [7:0] add_ln305_3_fu_4182_p2;
wire   [4:0] add_ln298_1_fu_4206_p2;
wire   [5:0] add_ln299_5_fu_4230_p2;
wire  signed [6:0] sext_ln299_2_fu_4235_p1;
wire   [5:0] add_ln300_6_fu_4246_p2;
wire   [7:0] add_ln301_6_fu_4270_p2;
wire   [6:0] add_ln302_6_fu_4294_p2;
wire   [7:0] add_ln303_6_fu_4318_p2;
wire   [6:0] add_ln304_6_fu_4330_p2;
wire   [7:0] add_ln305_6_fu_4348_p2;
wire   [20:0] tmp_88_fu_4396_p1;
wire  signed [20:0] grp_fu_4525_p3;
wire   [6:0] grp_fu_4411_p0;
wire   [6:0] grp_fu_4411_p1;
wire   [8:0] grp_fu_4411_p2;
wire   [6:0] grp_fu_4420_p0;
wire   [7:0] grp_fu_4420_p1;
wire   [9:0] grp_fu_4420_p2;
wire   [6:0] grp_fu_4428_p0;
wire   [8:0] grp_fu_4428_p1;
wire   [10:0] grp_fu_4428_p2;
wire   [6:0] grp_fu_4437_p0;
wire   [6:0] grp_fu_4437_p1;
wire   [8:0] grp_fu_4437_p2;
wire   [6:0] grp_fu_4445_p0;
wire   [6:0] grp_fu_4445_p1;
wire   [8:0] grp_fu_4445_p2;
wire   [6:0] grp_fu_4453_p0;
wire   [7:0] grp_fu_4453_p1;
wire   [9:0] grp_fu_4453_p2;
wire   [6:0] grp_fu_4461_p0;
wire   [7:0] grp_fu_4461_p1;
wire   [9:0] grp_fu_4461_p2;
wire   [6:0] grp_fu_4469_p0;
wire   [8:0] grp_fu_4469_p1;
wire   [10:0] grp_fu_4469_p2;
wire   [6:0] grp_fu_4477_p0;
wire   [8:0] grp_fu_4477_p1;
wire   [10:0] grp_fu_4477_p2;
wire   [6:0] grp_fu_4485_p0;
wire   [6:0] grp_fu_4485_p1;
wire   [8:0] grp_fu_4485_p2;
wire   [6:0] grp_fu_4493_p0;
wire   [6:0] grp_fu_4493_p1;
wire   [8:0] grp_fu_4493_p2;
wire   [6:0] grp_fu_4501_p0;
wire   [7:0] grp_fu_4501_p1;
wire   [9:0] grp_fu_4501_p2;
wire   [6:0] grp_fu_4509_p0;
wire   [7:0] grp_fu_4509_p1;
wire   [9:0] grp_fu_4509_p2;
wire   [6:0] grp_fu_4517_p0;
wire   [8:0] grp_fu_4517_p1;
wire   [10:0] grp_fu_4517_p2;
wire   [6:0] grp_fu_4525_p0;
wire   [8:0] grp_fu_4525_p1;
wire   [10:0] grp_fu_4525_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage4;
reg    ap_idle_pp0_0to0;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_4411_p00;
wire   [9:0] grp_fu_4428_p00;
wire   [12:0] mul_ln298_1_fu_2640_p00;
wire   [12:0] mul_ln298_2_fu_2876_p00;
wire   [12:0] mul_ln298_3_fu_2922_p00;
wire   [12:0] mul_ln298_4_fu_3413_p00;
wire   [12:0] mul_ln298_5_fu_3445_p00;
wire   [13:0] mul_ln298_fu_2596_p00;
wire   [18:0] mul_ln299_1_fu_2981_p00;
wire   [18:0] mul_ln299_2_fu_3018_p00;
wire   [18:0] mul_ln299_3_fu_3532_p00;
wire   [18:0] mul_ln299_4_fu_3568_p00;
wire   [18:0] mul_ln299_fu_2716_p00;
wire   [18:0] mul_ln301_1_fu_3051_p00;
wire   [18:0] mul_ln301_2_fu_3107_p00;
wire   [18:0] mul_ln301_3_fu_3640_p00;
wire   [18:0] mul_ln301_4_fu_3683_p00;
wire   [18:0] mul_ln301_fu_2735_p00;
wire   [16:0] mul_ln302_1_fu_3145_p00;
wire   [16:0] mul_ln302_2_fu_3200_p00;
wire   [16:0] mul_ln302_3_fu_3756_p00;
wire   [16:0] mul_ln302_4_fu_3798_p00;
wire   [16:0] mul_ln302_fu_2794_p00;
wire   [18:0] mul_ln303_1_fu_3256_p00;
wire   [18:0] mul_ln303_2_fu_3313_p00;
wire   [18:0] mul_ln303_3_fu_3859_p00;
wire   [18:0] mul_ln303_4_fu_3906_p00;
wire   [18:0] mul_ln303_fu_2817_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_278 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_7ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_7ns_9ns_14_1_1_U338(.din0(mul_ln298_fu_2596_p0),.din1(mul_ln298_fu_2596_p1),.dout(mul_ln298_fu_2596_p2));
fft1D_512_urem_3ns_3ns_2_7_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 3 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_3ns_3ns_2_7_1_U339(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2612_p0),.din1(3'd3),.ce(1'b1),.dout(grp_fu_2612_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U340(.din0(mul_ln298_1_fu_2640_p0),.din1(mul_ln298_1_fu_2640_p1),.dout(mul_ln298_1_fu_2640_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U341(.din0(mul_ln299_fu_2716_p0),.din1(mul_ln299_fu_2716_p1),.dout(mul_ln299_fu_2716_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U342(.din0(mul_ln301_fu_2735_p0),.din1(mul_ln301_fu_2735_p1),.dout(mul_ln301_fu_2735_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U343(.din0(mul_ln302_fu_2794_p0),.din1(mul_ln302_fu_2794_p1),.dout(mul_ln302_fu_2794_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U344(.din0(mul_ln303_fu_2817_p0),.din1(mul_ln303_fu_2817_p1),.dout(mul_ln303_fu_2817_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U345(.din0(mul_ln298_2_fu_2876_p0),.din1(mul_ln298_2_fu_2876_p1),.dout(mul_ln298_2_fu_2876_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U346(.din0(mul_ln298_3_fu_2922_p0),.din1(mul_ln298_3_fu_2922_p1),.dout(mul_ln298_3_fu_2922_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U347(.din0(mul_ln299_1_fu_2981_p0),.din1(mul_ln299_1_fu_2981_p1),.dout(mul_ln299_1_fu_2981_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U348(.din0(mul_ln299_2_fu_3018_p0),.din1(mul_ln299_2_fu_3018_p1),.dout(mul_ln299_2_fu_3018_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U349(.din0(mul_ln301_1_fu_3051_p0),.din1(mul_ln301_1_fu_3051_p1),.dout(mul_ln301_1_fu_3051_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U350(.din0(mul_ln301_2_fu_3107_p0),.din1(mul_ln301_2_fu_3107_p1),.dout(mul_ln301_2_fu_3107_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U351(.din0(mul_ln302_1_fu_3145_p0),.din1(mul_ln302_1_fu_3145_p1),.dout(mul_ln302_1_fu_3145_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U352(.din0(mul_ln302_2_fu_3200_p0),.din1(mul_ln302_2_fu_3200_p1),.dout(mul_ln302_2_fu_3200_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U353(.din0(mul_ln303_1_fu_3256_p0),.din1(mul_ln303_1_fu_3256_p1),.dout(mul_ln303_1_fu_3256_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U354(.din0(mul_ln303_2_fu_3313_p0),.din1(mul_ln303_2_fu_3313_p1),.dout(mul_ln303_2_fu_3313_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U355(.din0(mul_ln298_4_fu_3413_p0),.din1(mul_ln298_4_fu_3413_p1),.dout(mul_ln298_4_fu_3413_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U356(.din0(mul_ln298_5_fu_3445_p0),.din1(mul_ln298_5_fu_3445_p1),.dout(mul_ln298_5_fu_3445_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U357(.din0(mul_ln299_3_fu_3532_p0),.din1(mul_ln299_3_fu_3532_p1),.dout(mul_ln299_3_fu_3532_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U358(.din0(mul_ln299_4_fu_3568_p0),.din1(mul_ln299_4_fu_3568_p1),.dout(mul_ln299_4_fu_3568_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U359(.din0(mul_ln301_3_fu_3640_p0),.din1(mul_ln301_3_fu_3640_p1),.dout(mul_ln301_3_fu_3640_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U360(.din0(mul_ln301_4_fu_3683_p0),.din1(mul_ln301_4_fu_3683_p1),.dout(mul_ln301_4_fu_3683_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U361(.din0(mul_ln302_3_fu_3756_p0),.din1(mul_ln302_3_fu_3756_p1),.dout(mul_ln302_3_fu_3756_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U362(.din0(mul_ln302_4_fu_3798_p0),.din1(mul_ln302_4_fu_3798_p1),.dout(mul_ln302_4_fu_3798_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U363(.din0(mul_ln303_3_fu_3859_p0),.din1(mul_ln303_3_fu_3859_p1),.dout(mul_ln303_3_fu_3859_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U364(.din0(mul_ln303_4_fu_3906_p0),.din1(mul_ln303_4_fu_3906_p1),.dout(mul_ln303_4_fu_3906_p2));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U365(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4411_p0),.din1(grp_fu_4411_p1),.din2(grp_fu_4411_p2),.ce(1'b1),.dout(grp_fu_4411_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U366(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4420_p0),.din1(grp_fu_4420_p1),.din2(grp_fu_4420_p2),.ce(1'b1),.dout(grp_fu_4420_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U367(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4428_p0),.din1(grp_fu_4428_p1),.din2(grp_fu_4428_p2),.ce(1'b1),.dout(grp_fu_4428_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U368(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4437_p0),.din1(grp_fu_4437_p1),.din2(grp_fu_4437_p2),.ce(1'b1),.dout(grp_fu_4437_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U369(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4445_p0),.din1(grp_fu_4445_p1),.din2(grp_fu_4445_p2),.ce(1'b1),.dout(grp_fu_4445_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U370(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4453_p0),.din1(grp_fu_4453_p1),.din2(grp_fu_4453_p2),.ce(1'b1),.dout(grp_fu_4453_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4461_p0),.din1(grp_fu_4461_p1),.din2(grp_fu_4461_p2),.ce(1'b1),.dout(grp_fu_4461_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4469_p0),.din1(grp_fu_4469_p1),.din2(grp_fu_4469_p2),.ce(1'b1),.dout(grp_fu_4469_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U373(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4477_p0),.din1(grp_fu_4477_p1),.din2(grp_fu_4477_p2),.ce(1'b1),.dout(grp_fu_4477_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U374(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4485_p0),.din1(grp_fu_4485_p1),.din2(grp_fu_4485_p2),.ce(1'b1),.dout(grp_fu_4485_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U375(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4493_p0),.din1(grp_fu_4493_p1),.din2(grp_fu_4493_p2),.ce(1'b1),.dout(grp_fu_4493_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4501_p0),.din1(grp_fu_4501_p1),.din2(grp_fu_4501_p2),.ce(1'b1),.dout(grp_fu_4501_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4509_p0),.din1(grp_fu_4509_p1),.din2(grp_fu_4509_p2),.ce(1'b1),.dout(grp_fu_4509_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4517_p0),.din1(grp_fu_4517_p1),.din2(grp_fu_4517_p2),.ce(1'b1),.dout(grp_fu_4517_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4525_p0),.din1(grp_fu_4525_p1),.din2(grp_fu_4525_p2),.ce(1'b1),.dout(grp_fu_4525_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_2388 <= DATA_x_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_2388 <= DATA_x_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_2413 <= DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_2413 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_2424 <= DATA_x_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_2424 <= DATA_x_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            reg_2442 <= DATA_x_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_2442 <= DATA_x_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_2470 <= DATA_x_q0;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_2470 <= DATA_x_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_2478 <= DATA_x_1_q0;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_2478 <= DATA_x_1_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_2493 <= DATA_x_q0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_2493 <= DATA_x_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            reg_2511 <= DATA_x_1_q0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_2511 <= DATA_x_1_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_2519 <= DATA_x_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_2519 <= DATA_x_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_278 <= 7'd0;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tid_fu_278 <= add_ln294_fu_3466_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_load_17_reg_4972 <= DATA_x_1_q0;
        DATA_x_load_17_reg_4965 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        DATA_x_1_load_19_reg_5163 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_load_27_reg_5480 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_x_1_load_28_reg_5282 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        DATA_x_1_load_29_reg_5390 <= DATA_x_1_q0;
        DATA_x_load_26_reg_5376 <= DATA_x_q1;
        DATA_x_load_30_reg_5383 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        DATA_x_1_load_30_reg_5441 <= DATA_x_1_q0;
        DATA_x_load_23_reg_5427 <= DATA_x_q1;
        DATA_x_load_27_reg_5434 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_load_7_reg_4807 <= DATA_x_1_q0;
        DATA_x_load_7_reg_4800 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_x_load_14_reg_5097 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_load_16_reg_4859 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_x_load_28_reg_5220 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        DATA_x_load_29_reg_5334 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        DATA_x_load_31_reg_5463 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln299_1_reg_4775 <= add_ln299_1_fu_2906_p2;
        add_ln299_3_reg_4795 <= add_ln299_3_fu_2951_p2;
        tmp_25_reg_4749 <= {{tid_3_reg_4540[5:2]}};
        tmp_50_reg_4744 <= {{tmp_50_fu_2846_p1[16:10]}};
        tmp_56_reg_4760 <= {{mul_ln298_2_fu_2876_p2[12:8]}};
        tmp_64_reg_4780 <= {{mul_ln298_3_fu_2922_p2[12:8]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln299_4_reg_5082 <= add_ln299_4_fu_3429_p2;
        add_ln299_6_reg_5092 <= add_ln299_6_fu_3461_p2;
        tmp_62_reg_5039 <= {{tmp_62_fu_3357_p1[18:11]}};
        tmp_72_reg_5069 <= tid_3_reg_4540[32'd1];
        tmp_73_reg_5077 <= {{mul_ln298_4_fu_3413_p2[12:8]}};
        tmp_81_reg_5087 <= {{mul_ln298_5_fu_3445_p2[12:8]}};
        zext_ln298_1_reg_5027[4 : 0] <= zext_ln298_1_fu_3329_p1[4 : 0];
        zext_ln304_6_reg_5049[7 : 4] <= zext_ln304_6_fu_3373_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_reg_4644 <= add_ln299_fu_2670_p2;
        add_ln301_1_reg_4659 <= add_ln301_1_fu_2690_p2;
        tid_3_reg_4540 <= ap_sig_allocacmp_tid_3;
        tmp_47_reg_4612 <= {{mul_ln298_fu_2596_p2[13:9]}};
        tmp_47_reg_4612_pp0_iter1_reg <= tmp_47_reg_4612;
        tmp_48_reg_4629 <= {{mul_ln298_1_fu_2640_p2[12:8]}};
        tmp_80_reg_5475 <= {{tmp_80_fu_4137_p1[20:12]}};
        tmp_reg_4549 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_4549_pp0_iter1_reg <= tmp_reg_4549;
        tmp_s_reg_4623 <= {{ap_sig_allocacmp_tid_3[5:1]}};
        trunc_ln4_reg_4588 <= {{ap_sig_allocacmp_tid_3[5:3]}};
        zext_ln294_1_reg_4553[6 : 0] <= zext_ln294_1_fu_2574_p1[6 : 0];
        zext_ln294_2_reg_4570[6 : 0] <= zext_ln294_2_fu_2578_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln301_2_reg_4844 <= add_ln301_2_fu_3010_p2;
        add_ln301_4_reg_4854 <= add_ln301_4_fu_3034_p2;
        tmp_54_reg_4824 <= {{tmp_54_fu_2969_p1[18:11]}};
        tmp_57_reg_4829 <= {{mul_ln299_1_fu_2981_p2[18:11]}};
        tmp_65_reg_4849 <= {{mul_ln299_2_fu_3018_p2[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln301_5_reg_5138 <= add_ln301_5_fu_3548_p2;
        add_ln301_7_reg_5158 <= add_ln301_7_fu_3584_p2;
        tmp_70_reg_5118 <= {{tmp_70_fu_3504_p1[18:11]}};
        tmp_74_reg_5133 <= {{mul_ln299_3_fu_3532_p2[18:11]}};
        tmp_82_reg_5153 <= {{mul_ln299_4_fu_3568_p2[18:11]}};
        zext_ln298_16_reg_5143[7 : 5] <= zext_ln298_16_fu_3560_p1[7 : 5];
        zext_ln298_18_reg_5104[4 : 0] <= zext_ln298_18_fu_3476_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln303_1_reg_4701 <= add_ln303_1_fu_2764_p2;
        tmp_49_reg_4681 <= {{mul_ln299_fu_2716_p2[18:11]}};
        tmp_51_reg_4686 <= {{mul_ln301_fu_2735_p2[18:11]}};
        tmp_88_reg_5492 <= {{tmp_88_fu_4396_p1[20:12]}};
        trunc_ln298_1_reg_4664 <= trunc_ln298_1_fu_2696_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln303_2_reg_4930 <= add_ln303_2_fu_3161_p2;
        add_ln303_4_reg_4960 <= add_ln303_4_fu_3216_p2;
        tmp_58_reg_4915 <= {{tmp_58_fu_3127_p1[16:10]}};
        tmp_60_reg_4920 <= {{mul_ln302_1_fu_3145_p2[16:10]}};
        tmp_68_reg_4955 <= {{mul_ln302_2_fu_3200_p2[16:10]}};
        trunc_ln298_reg_4911 <= trunc_ln298_fu_3123_p1;
        trunc_ln298_reg_4911_pp0_iter1_reg <= trunc_ln298_reg_4911;
        zext_ln302_8_reg_4945[7 : 5] <= zext_ln302_8_fu_3186_p1[7 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln303_5_reg_5252 <= add_ln303_5_fu_3772_p2;
        add_ln303_7_reg_5277 <= add_ln303_7_fu_3814_p2;
        tmp_71_reg_5227 <= {{tmp_71_fu_3723_p1[20:12]}};
        tmp_77_reg_5247 <= {{mul_ln302_3_fu_3756_p2[16:10]}};
        tmp_85_reg_5272 <= {{mul_ln302_4_fu_3798_p2[16:10]}};
        zext_ln300_14_reg_5262[7 : 5] <= zext_ln300_14_fu_3784_p1[7 : 5];
        zext_ln302_10_reg_5237[3] <= zext_ln302_10_fu_3742_p1[3];
zext_ln302_10_reg_5237[7 : 5] <= zext_ln302_10_fu_3742_p1[7 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2378 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2396 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2403 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_2432 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_2453 <= DATA_x_q1;
        reg_2463 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_2486 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_2501 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_2530 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_2537 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_2544 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_2551 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_52_reg_4724 <= {{mul_ln302_fu_2794_p2[16:10]}};
        tmp_53_reg_4729 <= {{mul_ln303_fu_2817_p2[18:11]}};
        zext_ln294_reg_4706[6 : 0] <= zext_ln294_fu_2769_p1[6 : 0];
        zext_ln294_reg_4706_pp0_iter1_reg[6 : 0] <= zext_ln294_reg_4706[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_55_reg_4866 <= {{tmp_55_fu_3039_p1[20:12]}};
        tmp_59_reg_4871 <= {{mul_ln301_1_fu_3051_p2[18:11]}};
        tmp_67_reg_4906 <= {{mul_ln301_2_fu_3107_p2[18:11]}};
        zext_ln298_8_reg_4886[7 : 4] <= zext_ln298_8_fu_3086_p1[7 : 4];
        zext_ln302_4_reg_4876[7 : 4] <= zext_ln302_4_fu_3074_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_61_reg_4987 <= {{mul_ln303_1_fu_3256_p2[18:11]}};
        tmp_66_reg_5012 <= {{tmp_66_fu_3297_p1[16:10]}};
        tmp_69_reg_5022 <= {{mul_ln303_2_fu_3313_p2[18:11]}};
        zext_ln298_19_reg_4979[4 : 0] <= zext_ln298_19_fu_3221_p1[4 : 0];
        zext_ln302_6_reg_5002[7 : 4] <= zext_ln302_6_fu_3292_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_63_reg_5170 <= {{tmp_63_fu_3613_p1[20:12]}};
        tmp_76_reg_5185 <= {{mul_ln301_3_fu_3640_p2[18:11]}};
        tmp_84_reg_5215 <= {{mul_ln301_4_fu_3683_p2[18:11]}};
        zext_ln298_14_reg_5190[7 : 5] <= zext_ln298_14_fu_3663_p1[7 : 5];
        zext_ln300_10_reg_5175[3] <= zext_ln300_10_fu_3632_p1[3];
zext_ln300_10_reg_5175[7 : 5] <= zext_ln300_10_fu_3632_p1[7 : 5];
        zext_ln300_12_reg_5200[7 : 5] <= zext_ln300_12_fu_3675_p1[7 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        tmp_75_reg_5289 <= {{tmp_75_fu_3843_p1[16:10]}};
        tmp_78_reg_5299 <= {{mul_ln303_3_fu_3859_p2[18:11]}};
        tmp_86_reg_5329 <= {{mul_ln303_4_fu_3906_p2[18:11]}};
        zext_ln302_12_reg_5304[7 : 5] <= zext_ln302_12_fu_3882_p1[7 : 5];
        zext_ln302_14_reg_5319[7 : 5] <= zext_ln302_14_fu_3894_p1[7 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_79_reg_5407 <= {{tmp_79_fu_4035_p1[18:11]}};
        zext_ln304_14_reg_5417[7 : 5] <= zext_ln304_14_fu_4051_p1[7 : 5];
        zext_ln304_14_reg_5417_pp0_iter1_reg[7 : 5] <= zext_ln304_14_reg_5417[7 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        tmp_83_reg_5366 <= {{tmp_83_fu_3989_p1[16:10]}};
        zext_ln304_10_reg_5341[3] <= zext_ln304_10_fu_3972_p1[3];
zext_ln304_10_reg_5341[7 : 5] <= zext_ln304_10_fu_3972_p1[7 : 5];
        zext_ln304_12_reg_5356[7 : 5] <= zext_ln304_12_fu_3984_p1[7 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_87_reg_5470 <= {{tmp_87_fu_4086_p1[18:11]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        DATA_x_1_address0_local = zext_ln304_14_reg_5417_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        DATA_x_1_address0_local = zext_ln304_10_reg_5341;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        DATA_x_1_address0_local = zext_ln302_14_reg_5319;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        DATA_x_1_address0_local = zext_ln300_14_reg_5262;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_x_1_address0_local = zext_ln300_12_reg_5200;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_x_1_address0_local = zext_ln298_16_reg_5143;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        DATA_x_1_address0_local = zext_ln298_12_fu_3523_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_x_1_address0_local = zext_ln304_8_fu_3385_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln302_8_reg_4945;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln300_6_fu_3173_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln300_8_fu_3098_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln300_4_fu_3004_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln298_10_fu_2945_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln304_2_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln302_2_fu_2758_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln300_2_fu_2684_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            DATA_x_1_address1_local = zext_ln304_12_reg_5356;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            DATA_x_1_address1_local = zext_ln298_2_fu_4005_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            DATA_x_1_address1_local = zext_ln302_12_reg_5304;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            DATA_x_1_address1_local = zext_ln302_10_reg_5237;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            DATA_x_1_address1_local = zext_ln300_10_reg_5175;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            DATA_x_1_address1_local = zext_ln298_14_fu_3663_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            DATA_x_1_address1_local = zext_ln304_6_reg_5049;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            DATA_x_1_address1_local = zext_ln302_6_reg_5002;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_1_address1_local = zext_ln304_4_fu_3279_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_1_address1_local = zext_ln302_4_reg_4876;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_1_address1_local = zext_ln298_8_fu_3086_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_1_address1_local = zext_ln304_fu_2963_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln298_6_fu_2900_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln302_fu_2779_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln300_fu_2707_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_4_fu_2664_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            DATA_x_address0_local = zext_ln298_14_reg_5190;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            DATA_x_address0_local = zext_ln304_14_fu_4051_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            DATA_x_address0_local = zext_ln304_12_fu_3984_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            DATA_x_address0_local = zext_ln302_14_fu_3894_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            DATA_x_address0_local = zext_ln300_14_fu_3784_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            DATA_x_address0_local = zext_ln300_12_fu_3675_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            DATA_x_address0_local = zext_ln298_16_fu_3560_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            DATA_x_address0_local = zext_ln304_8_fu_3385_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_address0_local = zext_ln302_6_fu_3292_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_address0_local = zext_ln302_8_fu_3186_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_address0_local = zext_ln300_8_fu_3098_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_address0_local = zext_ln300_4_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln298_10_fu_2945_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln304_2_fu_2840_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln302_2_fu_2758_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln300_2_fu_2684_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            DATA_x_address1_local = zext_ln298_8_reg_4886;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            DATA_x_address1_local = zext_ln298_2_fu_4005_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            DATA_x_address1_local = zext_ln304_10_fu_3972_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            DATA_x_address1_local = zext_ln302_12_fu_3882_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            DATA_x_address1_local = zext_ln302_10_fu_3742_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            DATA_x_address1_local = zext_ln300_10_fu_3632_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            DATA_x_address1_local = zext_ln298_12_fu_3523_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            DATA_x_address1_local = zext_ln304_6_fu_3373_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_address1_local = zext_ln304_4_fu_3279_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_address1_local = zext_ln300_6_fu_3173_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_address1_local = zext_ln302_4_fu_3074_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_address1_local = zext_ln304_fu_2963_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln298_6_fu_2900_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln302_fu_2779_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln300_fu_2707_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_4_fu_2664_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_4549 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_4549_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_278;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln305_7_fu_4405_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address0_local = zext_ln304_15_fu_4390_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address0_local = zext_ln303_7_fu_4384_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address0_local = zext_ln302_15_fu_4378_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address0_local = zext_ln301_7_fu_4372_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln300_15_fu_4366_p1;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln305_6_fu_4353_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln299_7_fu_4360_p1;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln304_13_fu_4335_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln298_15_fu_4342_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln302_13_fu_4299_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln304_9_fu_4282_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln304_11_fu_4288_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln299_11_fu_4239_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln298_13_fu_4211_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln301_4_fu_4194_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln301_5_fu_4200_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln298_7_fu_4151_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln303_3_fu_4118_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln299_4_fu_4125_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln299_5_fu_4131_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address0_local = zext_ln302_7_fu_4067_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address0_local = zext_ln298_9_fu_4074_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address0_local = zext_ln298_11_fu_4080_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address0_local = zext_ln300_7_fu_3955_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address0_local = zext_ln304_3_fu_3922_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address0_local = zext_ln304_5_fu_3928_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln303_6_fu_4323_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln305_4_fu_4306_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln305_5_fu_4312_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln301_6_fu_4275_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln303_4_fu_4258_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln303_5_fu_4264_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln300_13_fu_4251_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln302_9_fu_4218_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln302_11_fu_4224_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln305_3_fu_4187_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln304_7_fu_4163_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln300_9_fu_4170_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln300_11_fu_4176_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln299_fu_4106_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address1_local = zext_ln298_fu_4056_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address1_local = zext_ln301_3_fu_4028_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address1_local = zext_ln305_1_fu_4011_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address1_local = zext_ln305_2_fu_4017_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address1_local = zext_ln299_8_fu_3943_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address1_local = zext_ln305_fu_3824_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address1_local = zext_ln303_1_fu_3831_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address1_local = zext_ln303_2_fu_3837_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address1_local = zext_ln304_1_fu_3704_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address1_local = zext_ln302_3_fu_3711_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address1_local = zext_ln302_5_fu_3717_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address1_local = zext_ln303_fu_3594_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address1_local = zext_ln301_1_fu_3601_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address1_local = zext_ln301_2_fu_3607_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address1_local = zext_ln302_1_fu_3485_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address1_local = zext_ln300_3_fu_3492_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address1_local = zext_ln300_5_fu_3498_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address1_local = zext_ln301_fu_3338_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address1_local = zext_ln299_1_fu_3345_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address1_local = zext_ln299_2_fu_3351_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln300_1_fu_3230_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln298_3_fu_3237_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln298_5_fu_3243_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549== 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 ==ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911== 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))| (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911== 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d0_local = DATA_x_load_31_reg_5463;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d0_local = DATA_x_1_load_30_reg_5441;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d0_local = DATA_x_load_30_reg_5383;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d0_local = DATA_x_1_load_29_reg_5390;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_x_load_29_reg_5334;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d0_local = DATA_x_1_load_27_reg_5480;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d0_local = DATA_x_1_load_28_reg_5282;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_x_load_27_reg_5434;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_x_load_28_reg_5220;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_load_26_reg_5376;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = reg_2501;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_load_23_reg_5427;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = reg_2519;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_load_17_reg_4972;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_2442;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_d0_local = reg_2486;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_2403;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d0_local = DATA_x_load_14_reg_5097;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d0_local = DATA_x_load_16_reg_4859;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d0_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        smem_1_d0_local = reg_2378;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d0_local = DATA_x_load_7_reg_4800;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2413;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d1_local = DATA_x_1_load_19_reg_5163;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_load_17_reg_4965;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d1_local = DATA_x_q1;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_1_d1_local = reg_2551;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d1_local = DATA_x_1_load_7_reg_4807;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d1_local = reg_2537;
    end else if (((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        smem_1_d1_local = reg_2511;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d1_local = reg_2442;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_d1_local = reg_2544;
    end else if (((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        smem_1_d1_local = reg_2493;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d1_local = reg_2424;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        smem_1_d1_local = reg_2530;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        smem_1_d1_local = reg_2463;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d1_local = reg_2403;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d1_local = reg_2519;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d1_local = reg_2453;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d1_local = reg_2388;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d1_local = reg_2501;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d1_local = reg_2432;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_d1_local = reg_2396;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_1_d1_local = reg_2478;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_2413;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_2378;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_1_d1_local = reg_2470;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911== 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001)& (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 ==ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549== 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 ==ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911== 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911 == 2'd0)& ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage0)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln305_7_fu_4405_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address0_local = zext_ln304_15_fu_4390_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address0_local = zext_ln303_7_fu_4384_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address0_local = zext_ln302_15_fu_4378_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address0_local = zext_ln301_7_fu_4372_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln300_15_fu_4366_p1;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln299_7_fu_4360_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln305_6_fu_4353_p1;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln298_15_fu_4342_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln304_13_fu_4335_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln304_9_fu_4282_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln304_11_fu_4288_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln302_13_fu_4299_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln299_11_fu_4239_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln301_4_fu_4194_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln301_5_fu_4200_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln298_13_fu_4211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln298_7_fu_4151_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln299_4_fu_4125_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln299_5_fu_4131_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln303_3_fu_4118_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address0_local = zext_ln298_9_fu_4074_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address0_local = zext_ln298_11_fu_4080_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address0_local = zext_ln302_7_fu_4067_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address0_local = zext_ln304_3_fu_3922_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address0_local = zext_ln304_5_fu_3928_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address0_local = zext_ln300_7_fu_3955_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln305_4_fu_4306_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln305_5_fu_4312_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln303_6_fu_4323_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln303_4_fu_4258_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln303_5_fu_4264_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln301_6_fu_4275_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln302_9_fu_4218_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln302_11_fu_4224_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln300_13_fu_4251_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln305_3_fu_4187_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln300_9_fu_4170_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln300_11_fu_4176_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln304_7_fu_4163_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln299_fu_4106_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address1_local = zext_ln298_fu_4056_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address1_local = zext_ln305_1_fu_4011_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address1_local = zext_ln305_2_fu_4017_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address1_local = zext_ln301_3_fu_4028_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address1_local = zext_ln299_8_fu_3943_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address1_local = zext_ln303_1_fu_3831_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address1_local = zext_ln303_2_fu_3837_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address1_local = zext_ln305_fu_3824_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address1_local = zext_ln302_3_fu_3711_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address1_local = zext_ln302_5_fu_3717_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address1_local = zext_ln304_1_fu_3704_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address1_local = zext_ln301_1_fu_3601_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address1_local = zext_ln301_2_fu_3607_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address1_local = zext_ln303_fu_3594_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address1_local = zext_ln300_3_fu_3492_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address1_local = zext_ln300_5_fu_3498_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address1_local = zext_ln302_1_fu_3485_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address1_local = zext_ln299_1_fu_3345_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address1_local = zext_ln299_2_fu_3351_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address1_local = zext_ln301_fu_3338_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln298_3_fu_3237_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln298_5_fu_3243_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln300_1_fu_3230_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))| ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549== 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 ==ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911== 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))| (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911== 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d0_local = DATA_x_load_31_reg_5463;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d0_local = DATA_x_1_load_30_reg_5441;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d0_local = DATA_x_load_30_reg_5383;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d0_local = DATA_x_1_load_29_reg_5390;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_x_load_29_reg_5334;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d0_local = DATA_x_1_load_28_reg_5282;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d0_local = DATA_x_1_load_27_reg_5480;
    end else if ((~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_x_load_28_reg_5220;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_x_load_27_reg_5434;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = reg_2501;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_load_23_reg_5427;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_load_26_reg_5376;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = reg_2519;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_1_load_17_reg_4972;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = reg_2442;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_d0_local = reg_2486;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_2403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_2432;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d0_local = DATA_x_load_16_reg_4859;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d0_local = reg_2453;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d0_local = DATA_x_load_14_reg_5097;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d0_local = DATA_x_load_7_reg_4800;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        smem_2_d0_local = reg_2413;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = reg_2378;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d1_local = DATA_x_1_load_19_reg_5163;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_load_17_reg_4965;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d1_local = DATA_x_q1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d1_local = DATA_x_1_load_7_reg_4807;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_2_d1_local = reg_2551;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d1_local = reg_2537;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d1_local = reg_2442;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        smem_2_d1_local = reg_2544;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        smem_2_d1_local = reg_2511;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        smem_2_d1_local = reg_2424;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        smem_2_d1_local = reg_2530;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        smem_2_d1_local = reg_2493;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d1_local = reg_2403;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d1_local = reg_2519;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        smem_2_d1_local = reg_2463;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        smem_2_d1_local = reg_2388;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d1_local = reg_2501;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d1_local = reg_2453;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_2_d1_local = reg_2396;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d1_local = reg_2478;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d1_local = reg_2432;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = reg_2378;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_d1_local = reg_2470;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = reg_2413;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 ==2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg== 2'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg== 2'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & ~(trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549== 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0== ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911== 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln305_7_fu_4405_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address0_local = zext_ln304_15_fu_4390_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address0_local = zext_ln303_7_fu_4384_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address0_local = zext_ln302_15_fu_4378_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address0_local = zext_ln301_7_fu_4372_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln300_15_fu_4366_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln305_6_fu_4353_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln299_7_fu_4360_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln304_13_fu_4335_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln298_15_fu_4342_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln304_11_fu_4288_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln302_13_fu_4299_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln304_9_fu_4282_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln299_11_fu_4239_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln301_5_fu_4200_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln298_13_fu_4211_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln301_4_fu_4194_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln298_7_fu_4151_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln299_5_fu_4131_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln303_3_fu_4118_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln299_4_fu_4125_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address0_local = zext_ln298_11_fu_4080_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address0_local = zext_ln302_7_fu_4067_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address0_local = zext_ln298_9_fu_4074_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address0_local = zext_ln304_5_fu_3928_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address0_local = zext_ln300_7_fu_3955_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address0_local = zext_ln304_3_fu_3922_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln305_5_fu_4312_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln303_6_fu_4323_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln305_4_fu_4306_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln303_5_fu_4264_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln301_6_fu_4275_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln303_4_fu_4258_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln302_11_fu_4224_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln300_13_fu_4251_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln302_9_fu_4218_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln305_3_fu_4187_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln300_11_fu_4176_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln304_7_fu_4163_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln300_9_fu_4170_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln299_fu_4106_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address1_local = zext_ln298_fu_4056_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address1_local = zext_ln305_2_fu_4017_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address1_local = zext_ln301_3_fu_4028_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address1_local = zext_ln305_1_fu_4011_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address1_local = zext_ln299_8_fu_3943_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address1_local = zext_ln303_2_fu_3837_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address1_local = zext_ln305_fu_3824_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address1_local = zext_ln303_1_fu_3831_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address1_local = zext_ln302_5_fu_3717_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address1_local = zext_ln304_1_fu_3704_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address1_local = zext_ln302_3_fu_3711_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address1_local = zext_ln301_2_fu_3607_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address1_local = zext_ln303_fu_3594_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address1_local = zext_ln301_1_fu_3601_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address1_local = zext_ln300_5_fu_3498_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address1_local = zext_ln302_1_fu_3485_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address1_local = zext_ln300_3_fu_3492_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address1_local = zext_ln299_2_fu_3351_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address1_local = zext_ln301_fu_3338_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address1_local = zext_ln299_1_fu_3345_p1;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln298_5_fu_3243_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln300_1_fu_3230_p1;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln298_3_fu_3237_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))| ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911== 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549== 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 ==ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911== 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))| (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911== 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d0_local = DATA_x_load_31_reg_5463;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d0_local = DATA_x_1_load_30_reg_5441;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d0_local = DATA_x_load_30_reg_5383;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d0_local = DATA_x_1_load_29_reg_5390;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_x_load_29_reg_5334;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d0_local = DATA_x_1_load_27_reg_5480;
    end else if (((1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d0_local = DATA_x_1_load_28_reg_5282;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_x_load_27_reg_5434;
    end else if (((1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_x_load_28_reg_5220;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_load_23_reg_5427;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_load_26_reg_5376;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = reg_2501;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = reg_2519;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_2442;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_load_17_reg_4972;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_2403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_d0_local = reg_2486;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d0_local = reg_2453;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d0_local = DATA_x_load_14_reg_5097;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d0_local = DATA_x_load_16_reg_4859;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        smem_d0_local = reg_2413;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = reg_2378;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d0_local = DATA_x_load_7_reg_4800;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = DATA_x_1_load_19_reg_5163;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_load_17_reg_4965;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d1_local = DATA_x_q1;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_d1_local = reg_2551;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d1_local = DATA_x_1_load_7_reg_4807;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d1_local = reg_2537;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        smem_d1_local = reg_2544;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        smem_d1_local = reg_2511;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d1_local = reg_2442;
    end else if (((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        smem_d1_local = reg_2530;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        smem_d1_local = reg_2493;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d1_local = reg_2424;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d1_local = reg_2519;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        smem_d1_local = reg_2463;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d1_local = reg_2403;
    end else if ((~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d1_local = reg_2501;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d1_local = reg_2453;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d1_local = reg_2388;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_d1_local = reg_2478;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d1_local = reg_2432;
    end else if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_d1_local = reg_2396;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_d1_local = reg_2470;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = reg_2413;
    end else if (((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = reg_2378;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln298_reg_4911== 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg== 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (trunc_ln298_reg_4911_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln298_reg_4911== 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549== 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_4549 == 1'd0) & (1'b0== ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln298_reg_4911 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln298_reg_4911== 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (tmp_reg_4549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln298_reg_4911 == 2'd0) & ~(trunc_ln298_reg_4911 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
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
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_3466_p2 = (tid_3_reg_4540 + 7'd8);
assign add_ln298_1_fu_4206_p2 = (tmp_47_reg_4612_pp0_iter1_reg + 5'd2);
assign add_ln298_fu_4146_p2 = (tmp_47_reg_4612_pp0_iter1_reg + 5'd1);
assign add_ln299_1_fu_2906_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd290));
assign add_ln299_2_fu_3934_p2 = ($signed(zext_ln298_19_reg_4979) + $signed(6'd33));
assign add_ln299_3_fu_2951_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd292));
assign add_ln299_4_fu_3429_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd293));
assign add_ln299_5_fu_4230_p2 = ($signed(zext_ln298_19_reg_4979) + $signed(6'd34));
assign add_ln299_6_fu_3461_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd295));
assign add_ln299_fu_2670_p2 = ($signed(zext_ln294_1_fu_2574_p1) + $signed(9'd289));
assign add_ln300_3_fu_3950_p2 = (zext_ln298_19_reg_4979 + 6'd25);
assign add_ln300_6_fu_4246_p2 = (zext_ln298_19_reg_4979 + 6'd26);
assign add_ln300_fu_3224_p2 = (zext_ln298_19_fu_3221_p1 + 6'd24);
assign add_ln301_1_fu_2690_p2 = ($signed(zext_ln294_1_fu_2574_p1) + $signed(9'd361));
assign add_ln301_2_fu_3010_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd362));
assign add_ln301_3_fu_4023_p2 = (zext_ln298_1_reg_5027 + 8'd121);
assign add_ln301_4_fu_3034_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd364));
assign add_ln301_5_fu_3548_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd365));
assign add_ln301_6_fu_4270_p2 = (zext_ln298_1_reg_5027 + 8'd122);
assign add_ln301_7_fu_3584_p2 = ($signed(zext_ln294_1_reg_4553) + $signed(9'd367));
assign add_ln301_fu_3332_p2 = (zext_ln298_1_fu_3329_p1 + 8'd120);
assign add_ln302_1_fu_2785_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd145));
assign add_ln302_2_fu_3136_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd146));
assign add_ln302_3_fu_4062_p2 = (zext_ln298_18_reg_5104 + 7'd49);
assign add_ln302_4_fu_3191_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd148));
assign add_ln302_5_fu_3747_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd149));
assign add_ln302_6_fu_4294_p2 = (zext_ln298_18_reg_5104 + 7'd50);
assign add_ln302_7_fu_3789_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd151));
assign add_ln302_fu_3479_p2 = (zext_ln298_18_fu_3476_p1 + 7'd48);
assign add_ln303_1_fu_2764_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd177));
assign add_ln303_2_fu_3161_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd178));
assign add_ln303_3_fu_4113_p2 = ($signed(zext_ln298_1_reg_5027) + $signed(8'd145));
assign add_ln303_4_fu_3216_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd180));
assign add_ln303_5_fu_3772_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd181));
assign add_ln303_6_fu_4318_p2 = ($signed(zext_ln298_1_reg_5027) + $signed(8'd146));
assign add_ln303_7_fu_3814_p2 = ($signed(zext_ln294_2_reg_4570) + $signed(8'd183));
assign add_ln303_fu_3589_p2 = ($signed(zext_ln298_1_reg_5027) + $signed(8'd144));
assign add_ln304_3_fu_4158_p2 = ($signed(zext_ln298_18_reg_5104) + $signed(7'd73));
assign add_ln304_6_fu_4330_p2 = ($signed(zext_ln298_18_reg_5104) + $signed(7'd74));
assign add_ln304_fu_3699_p2 = ($signed(zext_ln298_18_reg_5104) + $signed(7'd72));
assign add_ln305_3_fu_4182_p2 = ($signed(zext_ln298_1_reg_5027) + $signed(8'd169));
assign add_ln305_6_fu_4348_p2 = ($signed(zext_ln298_1_reg_5027) + $signed(8'd170));
assign add_ln305_fu_3819_p2 = ($signed(zext_ln298_1_reg_5027) + $signed(8'd168));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign grp_fu_2612_p0 = {{ap_sig_allocacmp_tid_3[5:3]}};
assign grp_fu_4411_p0 = grp_fu_4411_p00;
assign grp_fu_4411_p00 = ap_sig_allocacmp_tid_3;
assign grp_fu_4411_p1 = 8'd73;
assign grp_fu_4411_p2 = 17'd342;
assign grp_fu_4420_p0 = zext_ln294_1_reg_4553;
assign grp_fu_4420_p1 = 9'd217;
assign grp_fu_4420_p2 = 19'd683;
assign grp_fu_4428_p0 = grp_fu_4428_p00;
assign grp_fu_4428_p00 = tid_3_reg_4540;
assign grp_fu_4428_p1 = 10'd505;
assign grp_fu_4428_p2 = 21'd1366;
assign grp_fu_4437_p0 = zext_ln294_2_reg_4570;
assign grp_fu_4437_p1 = 8'd74;
assign grp_fu_4437_p2 = 17'd342;
assign grp_fu_4445_p0 = zext_ln294_2_reg_4570;
assign grp_fu_4445_p1 = 8'd76;
assign grp_fu_4445_p2 = 17'd342;
assign grp_fu_4453_p0 = zext_ln294_1_reg_4553;
assign grp_fu_4453_p1 = 9'd218;
assign grp_fu_4453_p2 = 19'd683;
assign grp_fu_4461_p0 = zext_ln294_1_reg_4553;
assign grp_fu_4461_p1 = 9'd220;
assign grp_fu_4461_p2 = 19'd683;
assign grp_fu_4469_p0 = zext_ln294_reg_4706;
assign grp_fu_4469_p1 = 10'd506;
assign grp_fu_4469_p2 = 21'd1366;
assign grp_fu_4477_p0 = zext_ln294_reg_4706;
assign grp_fu_4477_p1 = 10'd508;
assign grp_fu_4477_p2 = 21'd1366;
assign grp_fu_4485_p0 = zext_ln294_2_reg_4570;
assign grp_fu_4485_p1 = 8'd77;
assign grp_fu_4485_p2 = 17'd342;
assign grp_fu_4493_p0 = zext_ln294_2_reg_4570;
assign grp_fu_4493_p1 = 8'd79;
assign grp_fu_4493_p2 = 17'd342;
assign grp_fu_4501_p0 = zext_ln294_1_reg_4553;
assign grp_fu_4501_p1 = 9'd221;
assign grp_fu_4501_p2 = 19'd683;
assign grp_fu_4509_p0 = zext_ln294_1_reg_4553;
assign grp_fu_4509_p1 = 9'd223;
assign grp_fu_4509_p2 = 19'd683;
assign grp_fu_4517_p0 = zext_ln294_reg_4706;
assign grp_fu_4517_p1 = 10'd509;
assign grp_fu_4517_p2 = 21'd1366;
assign grp_fu_4525_p0 = zext_ln294_reg_4706_pp0_iter1_reg;
assign grp_fu_4525_p1 = 10'd511;
assign grp_fu_4525_p2 = 21'd1366;
assign mul_ln298_1_fu_2640_p0 = mul_ln298_1_fu_2640_p00;
assign mul_ln298_1_fu_2640_p00 = or_ln10_fu_2628_p3;
assign mul_ln298_1_fu_2640_p1 = 13'd86;
assign mul_ln298_2_fu_2876_p0 = mul_ln298_2_fu_2876_p00;
assign mul_ln298_2_fu_2876_p00 = or_ln297_1_fu_2864_p3;
assign mul_ln298_2_fu_2876_p1 = 13'd86;
assign mul_ln298_3_fu_2922_p0 = mul_ln298_3_fu_2922_p00;
assign mul_ln298_3_fu_2922_p00 = or_ln297_2_fu_2911_p3;
assign mul_ln298_3_fu_2922_p1 = 13'd86;
assign mul_ln298_4_fu_3413_p0 = mul_ln298_4_fu_3413_p00;
assign mul_ln298_4_fu_3413_p00 = or_ln297_3_fu_3398_p5;
assign mul_ln298_4_fu_3413_p1 = 13'd86;
assign mul_ln298_5_fu_3445_p0 = mul_ln298_5_fu_3445_p00;
assign mul_ln298_5_fu_3445_p00 = or_ln297_4_fu_3434_p3;
assign mul_ln298_5_fu_3445_p1 = 13'd86;
assign mul_ln298_fu_2596_p0 = mul_ln298_fu_2596_p00;
assign mul_ln298_fu_2596_p00 = ap_sig_allocacmp_tid_3;
assign mul_ln298_fu_2596_p1 = 14'd171;
assign mul_ln299_1_fu_2981_p0 = mul_ln299_1_fu_2981_p00;
assign mul_ln299_1_fu_2981_p00 = add_ln299_1_reg_4775;
assign mul_ln299_1_fu_2981_p1 = 19'd683;
assign mul_ln299_2_fu_3018_p0 = mul_ln299_2_fu_3018_p00;
assign mul_ln299_2_fu_3018_p00 = add_ln299_3_reg_4795;
assign mul_ln299_2_fu_3018_p1 = 19'd683;
assign mul_ln299_3_fu_3532_p0 = mul_ln299_3_fu_3532_p00;
assign mul_ln299_3_fu_3532_p00 = add_ln299_4_reg_5082;
assign mul_ln299_3_fu_3532_p1 = 19'd683;
assign mul_ln299_4_fu_3568_p0 = mul_ln299_4_fu_3568_p00;
assign mul_ln299_4_fu_3568_p00 = add_ln299_6_reg_5092;
assign mul_ln299_4_fu_3568_p1 = 19'd683;
assign mul_ln299_fu_2716_p0 = mul_ln299_fu_2716_p00;
assign mul_ln299_fu_2716_p00 = add_ln299_reg_4644;
assign mul_ln299_fu_2716_p1 = 19'd683;
assign mul_ln301_1_fu_3051_p0 = mul_ln301_1_fu_3051_p00;
assign mul_ln301_1_fu_3051_p00 = add_ln301_2_reg_4844;
assign mul_ln301_1_fu_3051_p1 = 19'd683;
assign mul_ln301_2_fu_3107_p0 = mul_ln301_2_fu_3107_p00;
assign mul_ln301_2_fu_3107_p00 = add_ln301_4_reg_4854;
assign mul_ln301_2_fu_3107_p1 = 19'd683;
assign mul_ln301_3_fu_3640_p0 = mul_ln301_3_fu_3640_p00;
assign mul_ln301_3_fu_3640_p00 = add_ln301_5_reg_5138;
assign mul_ln301_3_fu_3640_p1 = 19'd683;
assign mul_ln301_4_fu_3683_p0 = mul_ln301_4_fu_3683_p00;
assign mul_ln301_4_fu_3683_p00 = add_ln301_7_reg_5158;
assign mul_ln301_4_fu_3683_p1 = 19'd683;
assign mul_ln301_fu_2735_p0 = mul_ln301_fu_2735_p00;
assign mul_ln301_fu_2735_p00 = add_ln301_1_reg_4659;
assign mul_ln301_fu_2735_p1 = 19'd683;
assign mul_ln302_1_fu_3145_p0 = mul_ln302_1_fu_3145_p00;
assign mul_ln302_1_fu_3145_p00 = add_ln302_2_fu_3136_p2;
assign mul_ln302_1_fu_3145_p1 = 17'd342;
assign mul_ln302_2_fu_3200_p0 = mul_ln302_2_fu_3200_p00;
assign mul_ln302_2_fu_3200_p00 = add_ln302_4_fu_3191_p2;
assign mul_ln302_2_fu_3200_p1 = 17'd342;
assign mul_ln302_3_fu_3756_p0 = mul_ln302_3_fu_3756_p00;
assign mul_ln302_3_fu_3756_p00 = add_ln302_5_fu_3747_p2;
assign mul_ln302_3_fu_3756_p1 = 17'd342;
assign mul_ln302_4_fu_3798_p0 = mul_ln302_4_fu_3798_p00;
assign mul_ln302_4_fu_3798_p00 = add_ln302_7_fu_3789_p2;
assign mul_ln302_4_fu_3798_p1 = 17'd342;
assign mul_ln302_fu_2794_p0 = mul_ln302_fu_2794_p00;
assign mul_ln302_fu_2794_p00 = add_ln302_1_fu_2785_p2;
assign mul_ln302_fu_2794_p1 = 17'd342;
assign mul_ln303_1_fu_3256_p0 = mul_ln303_1_fu_3256_p00;
assign mul_ln303_1_fu_3256_p00 = $unsigned(sext_ln303_1_fu_3249_p1);
assign mul_ln303_1_fu_3256_p1 = 19'd683;
assign mul_ln303_2_fu_3313_p0 = mul_ln303_2_fu_3313_p00;
assign mul_ln303_2_fu_3313_p00 = $unsigned(sext_ln303_2_fu_3306_p1);
assign mul_ln303_2_fu_3313_p1 = 19'd683;
assign mul_ln303_3_fu_3859_p0 = mul_ln303_3_fu_3859_p00;
assign mul_ln303_3_fu_3859_p00 = $unsigned(sext_ln303_3_fu_3852_p1);
assign mul_ln303_3_fu_3859_p1 = 19'd683;
assign mul_ln303_4_fu_3906_p0 = mul_ln303_4_fu_3906_p00;
assign mul_ln303_4_fu_3906_p00 = $unsigned(sext_ln303_4_fu_3899_p1);
assign mul_ln303_4_fu_3906_p1 = 19'd683;
assign mul_ln303_fu_2817_p0 = mul_ln303_fu_2817_p00;
assign mul_ln303_fu_2817_p00 = $unsigned(sext_ln303_fu_2810_p1);
assign mul_ln303_fu_2817_p1 = 19'd683;
assign or_ln10_fu_2628_p3 = {{tmp_s_fu_2618_p4}, {1'd1}};
assign or_ln11_fu_2656_p3 = {{tmp_s_fu_2618_p4}, {3'd4}};
assign or_ln297_1_fu_2864_p3 = {{tmp_25_fu_2855_p4}, {2'd2}};
assign or_ln297_2_fu_2911_p3 = {{trunc_ln4_reg_4588}, {3'd4}};
assign or_ln297_3_fu_3398_p5 = {{{{trunc_ln4_reg_4588}, {1'd1}}, {tmp_72_fu_3391_p3}}, {1'd1}};
assign or_ln297_4_fu_3434_p3 = {{trunc_ln4_reg_4588}, {3'd7}};
assign or_ln298_1_fu_2892_p3 = {{tmp_25_fu_2855_p4}, {4'd8}};
assign or_ln298_2_fu_3079_p3 = {{tmp_25_reg_4749}, {4'd12}};
assign or_ln298_3_fu_2938_p3 = {{trunc_ln4_reg_4588}, {5'd16}};
assign or_ln298_4_fu_3513_p5 = {{{{trunc_ln4_reg_4588}, {1'd1}}, {tmp_72_reg_5069}}, {3'd4}};
assign or_ln298_5_fu_3656_p3 = {{trunc_ln4_reg_4588}, {5'd24}};
assign or_ln298_6_fu_3553_p3 = {{trunc_ln4_reg_4588}, {5'd28}};
assign or_ln300_1_fu_2676_p3 = {{tmp_s_fu_2618_p4}, {3'd6}};
assign or_ln300_2_fu_2997_p3 = {{tmp_25_reg_4749}, {4'd10}};
assign or_ln300_3_fu_3166_p3 = {{tmp_25_reg_4749}, {4'd14}};
assign or_ln300_4_fu_3091_p3 = {{trunc_ln4_reg_4588}, {5'd18}};
assign or_ln300_5_fu_3622_p5 = {{{{trunc_ln4_reg_4588}, {1'd1}}, {tmp_72_reg_5069}}, {3'd6}};
assign or_ln300_6_fu_3668_p3 = {{trunc_ln4_reg_4588}, {5'd26}};
assign or_ln300_7_fu_3777_p3 = {{trunc_ln4_reg_4588}, {5'd30}};
assign or_ln302_1_fu_2751_p3 = {{tmp_s_reg_4623}, {3'd5}};
assign or_ln302_2_fu_3067_p3 = {{tmp_25_reg_4749}, {4'd9}};
assign or_ln302_3_fu_3285_p3 = {{tmp_25_reg_4749}, {4'd13}};
assign or_ln302_4_fu_3179_p3 = {{trunc_ln4_reg_4588}, {5'd17}};
assign or_ln302_5_fu_3732_p5 = {{{{trunc_ln4_reg_4588}, {1'd1}}, {tmp_72_reg_5069}}, {3'd5}};
assign or_ln302_6_fu_3875_p3 = {{trunc_ln4_reg_4588}, {5'd25}};
assign or_ln302_7_fu_3887_p3 = {{trunc_ln4_reg_4588}, {5'd29}};
assign or_ln304_1_fu_2833_p3 = {{tmp_s_reg_4623}, {3'd7}};
assign or_ln304_2_fu_3272_p3 = {{tmp_25_reg_4749}, {4'd11}};
assign or_ln304_3_fu_3366_p3 = {{tmp_25_reg_4749}, {4'd15}};
assign or_ln304_4_fu_3378_p3 = {{trunc_ln4_reg_4588}, {5'd19}};
assign or_ln304_5_fu_3962_p5 = {{{{trunc_ln4_reg_4588}, {1'd1}}, {tmp_72_reg_5069}}, {3'd7}};
assign or_ln304_6_fu_3977_p3 = {{trunc_ln4_reg_4588}, {5'd27}};
assign or_ln304_7_fu_4044_p3 = {{trunc_ln4_reg_4588}, {5'd31}};
assign or_ln8_fu_2772_p3 = {{trunc_ln298_1_reg_4664}, {2'd1}};
assign or_ln9_fu_2956_p3 = {{trunc_ln298_1_reg_4664}, {2'd3}};
assign or_ln_fu_2699_p3 = {{trunc_ln298_1_fu_2696_p1}, {2'd2}};
assign sext_ln299_1_fu_3939_p1 = $signed(add_ln299_2_fu_3934_p2);
assign sext_ln299_2_fu_4235_p1 = $signed(add_ln299_5_fu_4230_p2);
assign sext_ln299_fu_4102_p1 = $signed(xor_ln3_fu_4095_p3);
assign sext_ln303_1_fu_3249_p1 = $signed(add_ln303_2_reg_4930);
assign sext_ln303_2_fu_3306_p1 = $signed(add_ln303_4_reg_4960);
assign sext_ln303_3_fu_3852_p1 = $signed(add_ln303_5_reg_5252);
assign sext_ln303_4_fu_3899_p1 = $signed(add_ln303_7_reg_5277);
assign sext_ln303_fu_2810_p1 = $signed(add_ln303_1_reg_4701);
assign shl_ln6_fu_3998_p3 = {{trunc_ln298_1_reg_4664}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = smem_2_d1_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_25_fu_2855_p4 = {{tid_3_reg_4540[5:2]}};
assign tmp_50_fu_2846_p1 = grp_fu_4411_p3;
assign tmp_54_fu_2969_p1 = grp_fu_4420_p3;
assign tmp_55_fu_3039_p1 = grp_fu_4428_p3;
assign tmp_58_fu_3127_p1 = grp_fu_4437_p3;
assign tmp_62_fu_3357_p1 = grp_fu_4453_p3;
assign tmp_63_fu_3613_p1 = grp_fu_4469_p3;
assign tmp_66_fu_3297_p1 = grp_fu_4445_p3;
assign tmp_70_fu_3504_p1 = grp_fu_4461_p3;
assign tmp_71_fu_3723_p1 = grp_fu_4477_p3;
assign tmp_72_fu_3391_p3 = tid_3_reg_4540[32'd1];
assign tmp_75_fu_3843_p1 = grp_fu_4485_p3;
assign tmp_79_fu_4035_p1 = grp_fu_4501_p3;
assign tmp_80_fu_4137_p1 = grp_fu_4517_p3;
assign tmp_83_fu_3989_p1 = grp_fu_4493_p3;
assign tmp_87_fu_4086_p1 = grp_fu_4509_p3;
assign tmp_88_fu_4396_p1 = grp_fu_4525_p3;
assign tmp_fu_2566_p3 = ap_sig_allocacmp_tid_3[32'd6];
assign tmp_s_fu_2618_p4 = {{ap_sig_allocacmp_tid_3[5:1]}};
assign trunc_ln298_1_fu_2696_p1 = tid_3_reg_4540[5:0];
assign trunc_ln298_fu_3123_p1 = grp_fu_2612_p2[1:0];
assign xor_ln3_fu_4095_p3 = {{1'd1}, {tmp_47_reg_4612}};
assign zext_ln294_1_fu_2574_p1 = ap_sig_allocacmp_tid_3;
assign zext_ln294_2_fu_2578_p1 = ap_sig_allocacmp_tid_3;
assign zext_ln294_fu_2769_p1 = tid_3_reg_4540;
assign zext_ln298_10_fu_2945_p1 = or_ln298_3_fu_2938_p3;
assign zext_ln298_11_fu_4080_p1 = tmp_73_reg_5077;
assign zext_ln298_12_fu_3523_p1 = or_ln298_4_fu_3513_p5;
assign zext_ln298_13_fu_4211_p1 = add_ln298_1_fu_4206_p2;
assign zext_ln298_14_fu_3663_p1 = or_ln298_5_fu_3656_p3;
assign zext_ln298_15_fu_4342_p1 = tmp_81_reg_5087;
assign zext_ln298_16_fu_3560_p1 = or_ln298_6_fu_3553_p3;
assign zext_ln298_18_fu_3476_p1 = tmp_47_reg_4612;
assign zext_ln298_19_fu_3221_p1 = tmp_47_reg_4612;
assign zext_ln298_1_fu_3329_p1 = tmp_47_reg_4612;
assign zext_ln298_2_fu_4005_p1 = shl_ln6_fu_3998_p3;
assign zext_ln298_3_fu_3237_p1 = tmp_48_reg_4629;
assign zext_ln298_4_fu_2664_p1 = or_ln11_fu_2656_p3;
assign zext_ln298_5_fu_3243_p1 = tmp_56_reg_4760;
assign zext_ln298_6_fu_2900_p1 = or_ln298_1_fu_2892_p3;
assign zext_ln298_7_fu_4151_p1 = add_ln298_fu_4146_p2;
assign zext_ln298_8_fu_3086_p1 = or_ln298_2_fu_3079_p3;
assign zext_ln298_9_fu_4074_p1 = tmp_64_reg_4780;
assign zext_ln298_fu_4056_p1 = tmp_47_reg_4612;
assign zext_ln299_11_fu_4239_p1 = $unsigned(sext_ln299_2_fu_4235_p1);
assign zext_ln299_1_fu_3345_p1 = tmp_49_reg_4681;
assign zext_ln299_2_fu_3351_p1 = tmp_57_reg_4829;
assign zext_ln299_4_fu_4125_p1 = tmp_65_reg_4849;
assign zext_ln299_5_fu_4131_p1 = tmp_74_reg_5133;
assign zext_ln299_7_fu_4360_p1 = tmp_82_reg_5153;
assign zext_ln299_8_fu_3943_p1 = $unsigned(sext_ln299_1_fu_3939_p1);
assign zext_ln299_fu_4106_p1 = $unsigned(sext_ln299_fu_4102_p1);
assign zext_ln300_10_fu_3632_p1 = or_ln300_5_fu_3622_p5;
assign zext_ln300_11_fu_4176_p1 = tmp_75_reg_5289;
assign zext_ln300_12_fu_3675_p1 = or_ln300_6_fu_3668_p3;
assign zext_ln300_13_fu_4251_p1 = add_ln300_6_fu_4246_p2;
assign zext_ln300_14_fu_3784_p1 = or_ln300_7_fu_3777_p3;
assign zext_ln300_15_fu_4366_p1 = tmp_83_reg_5366;
assign zext_ln300_1_fu_3230_p1 = add_ln300_fu_3224_p2;
assign zext_ln300_2_fu_2684_p1 = or_ln300_1_fu_2676_p3;
assign zext_ln300_3_fu_3492_p1 = tmp_50_reg_4744;
assign zext_ln300_4_fu_3004_p1 = or_ln300_2_fu_2997_p3;
assign zext_ln300_5_fu_3498_p1 = tmp_58_reg_4915;
assign zext_ln300_6_fu_3173_p1 = or_ln300_3_fu_3166_p3;
assign zext_ln300_7_fu_3955_p1 = add_ln300_3_fu_3950_p2;
assign zext_ln300_8_fu_3098_p1 = or_ln300_4_fu_3091_p3;
assign zext_ln300_9_fu_4170_p1 = tmp_66_reg_5012;
assign zext_ln300_fu_2707_p1 = or_ln_fu_2699_p3;
assign zext_ln301_1_fu_3601_p1 = tmp_51_reg_4686;
assign zext_ln301_2_fu_3607_p1 = tmp_59_reg_4871;
assign zext_ln301_3_fu_4028_p1 = add_ln301_3_fu_4023_p2;
assign zext_ln301_4_fu_4194_p1 = tmp_67_reg_4906;
assign zext_ln301_5_fu_4200_p1 = tmp_76_reg_5185;
assign zext_ln301_6_fu_4275_p1 = add_ln301_6_fu_4270_p2;
assign zext_ln301_7_fu_4372_p1 = tmp_84_reg_5215;
assign zext_ln301_fu_3338_p1 = add_ln301_fu_3332_p2;
assign zext_ln302_10_fu_3742_p1 = or_ln302_5_fu_3732_p5;
assign zext_ln302_11_fu_4224_p1 = tmp_77_reg_5247;
assign zext_ln302_12_fu_3882_p1 = or_ln302_6_fu_3875_p3;
assign zext_ln302_13_fu_4299_p1 = add_ln302_6_fu_4294_p2;
assign zext_ln302_14_fu_3894_p1 = or_ln302_7_fu_3887_p3;
assign zext_ln302_15_fu_4378_p1 = tmp_85_reg_5272;
assign zext_ln302_1_fu_3485_p1 = add_ln302_fu_3479_p2;
assign zext_ln302_2_fu_2758_p1 = or_ln302_1_fu_2751_p3;
assign zext_ln302_3_fu_3711_p1 = tmp_52_reg_4724;
assign zext_ln302_4_fu_3074_p1 = or_ln302_2_fu_3067_p3;
assign zext_ln302_5_fu_3717_p1 = tmp_60_reg_4920;
assign zext_ln302_6_fu_3292_p1 = or_ln302_3_fu_3285_p3;
assign zext_ln302_7_fu_4067_p1 = add_ln302_3_fu_4062_p2;
assign zext_ln302_8_fu_3186_p1 = or_ln302_4_fu_3179_p3;
assign zext_ln302_9_fu_4218_p1 = tmp_68_reg_4955;
assign zext_ln302_fu_2779_p1 = or_ln8_fu_2772_p3;
assign zext_ln303_1_fu_3831_p1 = tmp_53_reg_4729;
assign zext_ln303_2_fu_3837_p1 = tmp_61_reg_4987;
assign zext_ln303_3_fu_4118_p1 = add_ln303_3_fu_4113_p2;
assign zext_ln303_4_fu_4258_p1 = tmp_69_reg_5022;
assign zext_ln303_5_fu_4264_p1 = tmp_78_reg_5299;
assign zext_ln303_6_fu_4323_p1 = add_ln303_6_fu_4318_p2;
assign zext_ln303_7_fu_4384_p1 = tmp_86_reg_5329;
assign zext_ln303_fu_3594_p1 = add_ln303_fu_3589_p2;
assign zext_ln304_10_fu_3972_p1 = or_ln304_5_fu_3962_p5;
assign zext_ln304_11_fu_4288_p1 = tmp_79_reg_5407;
assign zext_ln304_12_fu_3984_p1 = or_ln304_6_fu_3977_p3;
assign zext_ln304_13_fu_4335_p1 = add_ln304_6_fu_4330_p2;
assign zext_ln304_14_fu_4051_p1 = or_ln304_7_fu_4044_p3;
assign zext_ln304_15_fu_4390_p1 = tmp_87_reg_5470;
assign zext_ln304_1_fu_3704_p1 = add_ln304_fu_3699_p2;
assign zext_ln304_2_fu_2840_p1 = or_ln304_1_fu_2833_p3;
assign zext_ln304_3_fu_3922_p1 = tmp_54_reg_4824;
assign zext_ln304_4_fu_3279_p1 = or_ln304_2_fu_3272_p3;
assign zext_ln304_5_fu_3928_p1 = tmp_62_reg_5039;
assign zext_ln304_6_fu_3373_p1 = or_ln304_3_fu_3366_p3;
assign zext_ln304_7_fu_4163_p1 = add_ln304_3_fu_4158_p2;
assign zext_ln304_8_fu_3385_p1 = or_ln304_4_fu_3378_p3;
assign zext_ln304_9_fu_4282_p1 = tmp_70_reg_5118;
assign zext_ln304_fu_2963_p1 = or_ln9_fu_2956_p3;
assign zext_ln305_1_fu_4011_p1 = tmp_55_reg_4866;
assign zext_ln305_2_fu_4017_p1 = tmp_63_reg_5170;
assign zext_ln305_3_fu_4187_p1 = add_ln305_3_fu_4182_p2;
assign zext_ln305_4_fu_4306_p1 = tmp_71_reg_5227;
assign zext_ln305_5_fu_4312_p1 = tmp_80_reg_5475;
assign zext_ln305_6_fu_4353_p1 = add_ln305_6_fu_4348_p2;
assign zext_ln305_7_fu_4405_p1 = tmp_88_reg_5492;
assign zext_ln305_fu_3824_p1 = add_ln305_fu_3819_p2;
always @ (posedge ap_clk) begin
    zext_ln294_1_reg_4553[8:7] <= 2'b00;
    zext_ln294_2_reg_4570[7] <= 1'b0;
    zext_ln294_reg_4706[9:7] <= 3'b000;
    zext_ln294_reg_4706_pp0_iter1_reg[9:7] <= 3'b000;
    zext_ln302_4_reg_4876[3:0] <= 4'b1001;
    zext_ln302_4_reg_4876[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_8_reg_4886[3:0] <= 4'b1100;
    zext_ln298_8_reg_4886[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln302_8_reg_4945[4:0] <= 5'b10001;
    zext_ln302_8_reg_4945[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_19_reg_4979[5] <= 1'b0;
    zext_ln302_6_reg_5002[3:0] <= 4'b1101;
    zext_ln302_6_reg_5002[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_1_reg_5027[7:5] <= 3'b000;
    zext_ln304_6_reg_5049[3:0] <= 4'b1111;
    zext_ln304_6_reg_5049[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_18_reg_5104[6:5] <= 2'b00;
    zext_ln298_16_reg_5143[4:0] <= 5'b11100;
    zext_ln298_16_reg_5143[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln300_10_reg_5175[2:0] <= 3'b110;
    zext_ln300_10_reg_5175[4:4] <= 1'b1;
    zext_ln300_10_reg_5175[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_14_reg_5190[4:0] <= 5'b11000;
    zext_ln298_14_reg_5190[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln300_12_reg_5200[4:0] <= 5'b11010;
    zext_ln300_12_reg_5200[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln302_10_reg_5237[2:0] <= 3'b101;
    zext_ln302_10_reg_5237[4:4] <= 1'b1;
    zext_ln302_10_reg_5237[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln300_14_reg_5262[4:0] <= 5'b11110;
    zext_ln300_14_reg_5262[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln302_12_reg_5304[4:0] <= 5'b11001;
    zext_ln302_12_reg_5304[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln302_14_reg_5319[4:0] <= 5'b11101;
    zext_ln302_14_reg_5319[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_10_reg_5341[2:0] <= 3'b111;
    zext_ln304_10_reg_5341[4:4] <= 1'b1;
    zext_ln304_10_reg_5341[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_12_reg_5356[4:0] <= 5'b11011;
    zext_ln304_12_reg_5356[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_14_reg_5417[4:0] <= 5'b11111;
    zext_ln304_14_reg_5417[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_14_reg_5417_pp0_iter1_reg[4:0] <= 5'b11111;
    zext_ln304_14_reg_5417_pp0_iter1_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
