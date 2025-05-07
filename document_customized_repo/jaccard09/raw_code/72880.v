module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_12_address1,smem_12_ce1,smem_12_we1,smem_12_d1,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_11_address1,smem_11_ce1,smem_11_we1,smem_11_d1,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_10_address1,smem_10_ce1,smem_10_we1,smem_10_d1,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_8_address1,smem_8_ce1,smem_8_we1,smem_8_d1,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_12_address0;
output   smem_12_ce0;
output   smem_12_we0;
output  [63:0] smem_12_d0;
output  [6:0] smem_12_address1;
output   smem_12_ce1;
output   smem_12_we1;
output  [63:0] smem_12_d1;
output  [6:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [6:0] smem_11_address1;
output   smem_11_ce1;
output   smem_11_we1;
output  [63:0] smem_11_d1;
output  [6:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [6:0] smem_10_address1;
output   smem_10_ce1;
output   smem_10_we1;
output  [63:0] smem_10_d1;
output  [6:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [6:0] smem_9_address1;
output   smem_9_ce1;
output   smem_9_we1;
output  [63:0] smem_9_d1;
output  [6:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [6:0] smem_8_address1;
output   smem_8_ce1;
output   smem_8_we1;
output  [63:0] smem_8_d1;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [6:0] smem_7_address1;
output   smem_7_ce1;
output   smem_7_we1;
output  [63:0] smem_7_d1;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [6:0] smem_address1;
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
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_3782;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_2383;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_2401;
reg   [29:0] reg_2419;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_2423;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_2442;
reg   [63:0] reg_2453;
reg   [63:0] reg_2464;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] tid_3_reg_3775;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_3782_pp0_iter1_reg;
reg   [0:0] tmp_reg_3782_pp0_iter2_reg;
reg   [0:0] tmp_reg_3782_pp0_iter3_reg;
wire   [5:0] offset_fu_2499_p1;
reg   [5:0] offset_reg_3786;
reg   [5:0] offset_reg_3786_pp0_iter1_reg;
reg   [5:0] offset_reg_3786_pp0_iter2_reg;
reg   [5:0] offset_reg_3786_pp0_iter3_reg;
reg   [5:0] offset_reg_3786_pp0_iter4_reg;
wire   [31:0] offset_6_fu_2523_p5;
reg   [31:0] offset_6_reg_3799;
reg   [31:0] offset_6_reg_3799_pp0_iter1_reg;
reg   [31:0] offset_6_reg_3799_pp0_iter2_reg;
reg   [31:0] offset_6_reg_3799_pp0_iter3_reg;
reg   [31:0] offset_6_reg_3799_pp0_iter4_reg;
wire   [4:0] tmp_s_fu_2546_p4;
reg   [4:0] tmp_s_reg_3812;
reg   [4:0] tmp_s_reg_3812_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_3812_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_3812_pp0_iter3_reg;
reg   [4:0] tmp_s_reg_3812_pp0_iter4_reg;
wire   [5:0] offset_4_fu_2555_p3;
reg   [5:0] offset_4_reg_3820;
reg   [5:0] offset_4_reg_3820_pp0_iter1_reg;
reg   [5:0] offset_4_reg_3820_pp0_iter2_reg;
reg   [5:0] offset_4_reg_3820_pp0_iter3_reg;
wire   [3:0] tmp_67_fu_2569_p4;
reg   [3:0] tmp_67_reg_3829;
reg   [3:0] tmp_67_reg_3829_pp0_iter1_reg;
reg   [3:0] tmp_67_reg_3829_pp0_iter2_reg;
reg   [3:0] tmp_67_reg_3829_pp0_iter3_reg;
reg   [3:0] tmp_67_reg_3829_pp0_iter4_reg;
wire   [5:0] offset_5_fu_2578_p3;
reg   [5:0] offset_5_reg_3841;
reg   [5:0] offset_5_reg_3841_pp0_iter1_reg;
reg   [5:0] offset_5_reg_3841_pp0_iter2_reg;
reg   [5:0] offset_5_reg_3841_pp0_iter3_reg;
reg   [5:0] offset_5_reg_3841_pp0_iter4_reg;
wire   [2:0] trunc_ln172_fu_2602_p1;
reg   [2:0] trunc_ln172_reg_3850;
reg   [2:0] trunc_ln172_reg_3850_pp0_iter2_reg;
reg   [2:0] trunc_ln172_reg_3850_pp0_iter3_reg;
reg   [2:0] trunc_ln172_reg_3850_pp0_iter4_reg;
wire   [2:0] trunc_ln172_4_fu_2606_p1;
reg   [2:0] trunc_ln172_4_reg_3854;
reg   [2:0] trunc_ln172_4_reg_3854_pp0_iter2_reg;
reg   [2:0] trunc_ln172_4_reg_3854_pp0_iter3_reg;
reg   [2:0] trunc_ln172_4_reg_3854_pp0_iter4_reg;
wire   [2:0] trunc_ln172_5_fu_2610_p1;
reg   [2:0] trunc_ln172_5_reg_3858;
reg   [2:0] trunc_ln172_5_reg_3858_pp0_iter2_reg;
reg   [2:0] trunc_ln172_5_reg_3858_pp0_iter3_reg;
reg   [2:0] trunc_ln172_5_reg_3858_pp0_iter4_reg;
wire   [31:0] add_ln304_3_fu_2614_p2;
reg   [31:0] add_ln304_3_reg_3862;
wire   [31:0] add_ln305_3_fu_2619_p2;
reg   [31:0] add_ln305_3_reg_3867;
wire   [64:0] zext_ln304_11_fu_2624_p1;
wire   [64:0] zext_ln305_7_fu_2628_p1;
wire   [7:0] zext_ln172_16_fu_2632_p1;
reg   [7:0] zext_ln172_16_reg_3882;
reg   [3:0] tmp_83_reg_3888;
wire   [8:0] add_ln299_fu_2670_p2;
reg   [8:0] add_ln299_reg_3903;
wire   [63:0] zext_ln300_4_fu_2683_p1;
reg   [63:0] zext_ln300_4_reg_3908;
wire   [8:0] add_ln301_fu_2688_p2;
reg   [8:0] add_ln301_reg_3918;
reg   [3:0] tmp_91_reg_3923;
wire   [63:0] zext_ln298_1_fu_2720_p1;
reg   [63:0] zext_ln298_1_reg_3928;
reg   [3:0] tmp_99_reg_3938;
reg   [29:0] tmp_114_reg_3943;
reg   [29:0] tmp_115_reg_3948;
reg   [6:0] tmp_84_reg_3953;
reg   [6:0] tmp_86_reg_3958;
wire   [63:0] zext_ln302_4_fu_2802_p1;
reg   [63:0] zext_ln302_4_reg_3963;
wire   [7:0] add_ln303_fu_2807_p2;
reg   [7:0] add_ln303_reg_3973;
wire   [63:0] zext_ln304_4_fu_2819_p1;
reg   [63:0] zext_ln304_4_reg_3978;
wire   [7:0] zext_ln172_20_fu_2824_p1;
reg   [7:0] zext_ln172_20_reg_3988;
wire   [8:0] zext_ln172_21_fu_2827_p1;
reg   [8:0] zext_ln172_21_reg_3994;
wire   [8:0] add_ln299_1_fu_2840_p2;
reg   [8:0] add_ln299_1_reg_4000;
wire   [63:0] zext_ln298_2_fu_2853_p1;
reg   [63:0] zext_ln298_2_reg_4005;
wire   [64:0] zext_ln172_27_fu_2858_p1;
wire   [63:0] zext_ln298_3_fu_2869_p1;
reg   [63:0] zext_ln298_3_reg_4020;
reg   [5:0] tmp_87_reg_4040;
reg   [6:0] tmp_88_reg_4045;
reg   [6:0] tmp_92_reg_4055;
wire   [63:0] zext_ln300_5_fu_2951_p1;
reg   [63:0] zext_ln300_5_reg_4060;
wire   [8:0] add_ln301_1_fu_2956_p2;
reg   [8:0] add_ln301_1_reg_4070;
wire   [7:0] add_ln303_1_fu_2961_p2;
reg   [7:0] add_ln303_1_reg_4075;
reg   [5:0] tmp_85_reg_4080;
reg   [6:0] tmp_89_reg_4090;
reg   [6:0] tmp_94_reg_4100;
wire   [63:0] zext_ln302_5_fu_3020_p1;
reg   [63:0] zext_ln302_5_reg_4105;
reg   [5:0] tmp_95_reg_4110;
reg   [6:0] tmp_96_reg_4120;
wire   [63:0] zext_ln304_5_fu_3080_p1;
reg   [63:0] zext_ln304_5_reg_4125;
wire   [7:0] zext_ln172_24_fu_3085_p1;
reg   [7:0] zext_ln172_24_reg_4135;
wire   [8:0] add_ln299_2_fu_3091_p2;
reg   [8:0] add_ln299_2_reg_4141;
wire   [8:0] add_ln301_2_fu_3097_p2;
reg   [8:0] add_ln301_2_reg_4146;
wire   [2:0] trunc_ln172_6_fu_3103_p1;
reg   [2:0] trunc_ln172_6_reg_4151;
reg   [63:0] DATA_x_load_2_reg_4155;
reg   [63:0] DATA_x_1_load_4_reg_4166;
reg   [63:0] DATA_x_1_load_5_reg_4177;
reg   [7:0] tmp_90_reg_4188;
reg   [5:0] tmp_93_reg_4193;
reg   [6:0] tmp_100_reg_4213;
wire   [63:0] zext_ln300_6_fu_3154_p1;
reg   [63:0] zext_ln300_6_reg_4218;
reg   [6:0] tmp_102_reg_4228;
reg   [5:0] tmp_103_reg_4233;
wire   [7:0] add_ln303_2_fu_3203_p2;
reg   [7:0] add_ln303_2_reg_4238;
wire   [31:0] add_ln299_3_fu_3219_p2;
reg   [31:0] add_ln299_3_reg_4243;
wire   [31:0] add_ln300_3_fu_3224_p2;
reg   [31:0] add_ln300_3_reg_4248;
reg   [63:0] DATA_x_load_5_reg_4253;
reg   [63:0] DATA_x_1_load_6_reg_4264;
reg   [63:0] DATA_x_1_load_7_reg_4275;
reg   [6:0] tmp_97_reg_4286;
reg   [7:0] tmp_98_reg_4291;
reg   [6:0] tmp_104_reg_4311;
wire   [63:0] zext_ln304_6_fu_3360_p1;
reg   [63:0] zext_ln304_6_reg_4316;
wire   [64:0] zext_ln299_7_fu_3365_p1;
wire   [64:0] zext_ln300_11_fu_3369_p1;
wire   [31:0] add_ln301_3_fu_3373_p2;
reg   [31:0] add_ln301_3_reg_4336;
wire   [31:0] add_ln302_3_fu_3378_p2;
reg   [31:0] add_ln302_3_reg_4341;
wire   [31:0] add_ln303_3_fu_3383_p2;
reg   [31:0] add_ln303_3_reg_4346;
reg   [5:0] tmp_101_reg_4351;
reg   [6:0] tmp_105_reg_4361;
reg   [29:0] tmp_110_reg_4376;
wire   [64:0] zext_ln301_7_fu_3489_p1;
wire   [64:0] zext_ln302_11_fu_3493_p1;
reg   [29:0] tmp_111_reg_4401;
reg   [29:0] tmp_112_reg_4411;
reg   [29:0] tmp_113_reg_4421;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln298_fu_2664_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_3_fu_2747_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln172_4_fu_2830_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln172_5_fu_2966_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln172_6_fu_3208_p1;
wire   [63:0] zext_ln299_fu_3229_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln300_fu_3239_p1;
wire   [63:0] zext_ln301_fu_3249_p1;
wire   [63:0] zext_ln302_fu_3259_p1;
wire   [63:0] zext_ln303_fu_3269_p1;
wire   [63:0] zext_ln304_fu_3279_p1;
wire   [63:0] zext_ln305_fu_3289_p1;
wire   [63:0] zext_ln302_6_fu_3324_p1;
wire   [63:0] zext_ln299_1_fu_3388_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln300_1_fu_3398_p1;
wire   [63:0] zext_ln301_1_fu_3408_p1;
wire   [63:0] zext_ln302_1_fu_3418_p1;
wire   [63:0] zext_ln303_1_fu_3428_p1;
wire   [63:0] zext_ln304_1_fu_3438_p1;
wire   [63:0] zext_ln305_1_fu_3448_p1;
wire   [63:0] zext_ln300_7_fu_3483_p1;
wire   [63:0] zext_ln299_2_fu_3501_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln300_2_fu_3511_p1;
wire   [63:0] zext_ln301_2_fu_3521_p1;
wire   [63:0] zext_ln302_2_fu_3531_p1;
wire   [63:0] zext_ln303_2_fu_3541_p1;
wire   [63:0] zext_ln304_2_fu_3551_p1;
wire   [63:0] zext_ln305_2_fu_3570_p1;
wire   [63:0] zext_ln302_7_fu_3588_p1;
wire   [63:0] zext_ln304_7_fu_3611_p1;
wire   [63:0] zext_ln299_3_fu_3617_p1;
wire   [63:0] zext_ln300_3_fu_3628_p1;
wire   [63:0] zext_ln301_3_fu_3638_p1;
wire   [63:0] zext_ln302_3_fu_3648_p1;
wire   [63:0] zext_ln303_3_fu_3658_p1;
wire   [63:0] zext_ln304_3_fu_3668_p1;
wire   [63:0] zext_ln305_3_fu_3678_p1;
reg   [6:0] tid_fu_180;
wire   [6:0] add_ln294_fu_2592_p2;
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
reg    smem_11_we1_local;
reg   [63:0] smem_11_d1_local;
reg    smem_11_ce1_local;
reg   [6:0] smem_11_address1_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [6:0] smem_11_address0_local;
reg    smem_10_we1_local;
reg   [63:0] smem_10_d1_local;
reg    smem_10_ce1_local;
reg   [6:0] smem_10_address1_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [6:0] smem_10_address0_local;
reg    smem_9_we1_local;
reg   [63:0] smem_9_d1_local;
reg    smem_9_ce1_local;
reg   [6:0] smem_9_address1_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [6:0] smem_9_address0_local;
reg    smem_8_we1_local;
reg   [63:0] smem_8_d1_local;
reg    smem_8_ce1_local;
reg   [6:0] smem_8_address1_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [6:0] smem_8_address0_local;
reg    smem_7_we1_local;
reg   [63:0] smem_7_d1_local;
reg    smem_7_ce1_local;
reg   [6:0] smem_7_address1_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_12_we1_local;
reg   [63:0] smem_12_d1_local;
reg    smem_12_ce1_local;
reg   [6:0] smem_12_address1_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [6:0] smem_12_address0_local;
reg   [31:0] grp_fu_2348_p0;
wire   [33:0] grp_fu_2348_p1;
reg   [31:0] grp_fu_2353_p0;
wire   [33:0] grp_fu_2353_p1;
wire   [31:0] grp_fu_2358_p0;
wire   [33:0] grp_fu_2358_p1;
wire   [64:0] grp_fu_2348_p2;
wire   [64:0] grp_fu_2353_p2;
wire   [0:0] tmp_107_fu_2507_p3;
wire   [31:0] zext_ln295_fu_2503_p1;
wire   [2:0] or_ln9_fu_2515_p3;
wire   [31:0] grp_fu_2535_p0;
wire   [3:0] grp_fu_2535_p1;
wire   [3:0] grp_fu_2541_p1;
wire   [5:0] grp_fu_2563_p0;
wire   [3:0] grp_fu_2563_p1;
wire   [5:0] grp_fu_2586_p0;
wire   [3:0] grp_fu_2586_p1;
wire   [2:0] grp_fu_2541_p2;
wire   [2:0] grp_fu_2563_p2;
wire   [2:0] grp_fu_2586_p2;
wire   [5:0] mul_ln172_3_fu_2641_p0;
wire   [7:0] mul_ln172_3_fu_2641_p1;
wire   [12:0] mul_ln172_3_fu_2641_p2;
wire   [7:0] shl_ln6_fu_2657_p3;
wire   [8:0] zext_ln172_17_fu_2635_p1;
wire   [7:0] or_ln_fu_2676_p3;
wire   [5:0] mul_ln172_fu_2697_p0;
wire   [7:0] mul_ln172_fu_2697_p1;
wire   [12:0] mul_ln172_fu_2697_p2;
wire   [7:0] shl_ln298_1_fu_2713_p3;
wire   [5:0] mul_ln172_4_fu_2728_p0;
wire   [7:0] mul_ln172_4_fu_2728_p1;
wire   [12:0] mul_ln172_4_fu_2728_p2;
wire   [8:0] mul_ln299_fu_2760_p0;
wire   [10:0] mul_ln299_fu_2760_p1;
wire   [18:0] mul_ln299_fu_2760_p2;
wire   [8:0] mul_ln301_fu_2779_p0;
wire   [10:0] mul_ln301_fu_2779_p1;
wire   [18:0] mul_ln301_fu_2779_p2;
wire   [7:0] or_ln6_fu_2795_p3;
wire   [7:0] or_ln7_fu_2812_p3;
wire   [7:0] or_ln8_fu_2846_p3;
wire   [7:0] shl_ln298_2_fu_2862_p3;
wire   [7:0] add_ln302_fu_2874_p2;
wire   [7:0] mul_ln302_fu_2883_p0;
wire   [9:0] mul_ln302_fu_2883_p1;
wire   [16:0] mul_ln302_fu_2883_p2;
wire  signed [8:0] sext_ln303_fu_2899_p1;
wire   [8:0] mul_ln303_fu_2906_p0;
wire   [10:0] mul_ln303_fu_2906_p1;
wire   [18:0] mul_ln303_fu_2906_p2;
wire   [8:0] mul_ln299_1_fu_2928_p0;
wire   [10:0] mul_ln299_1_fu_2928_p1;
wire   [18:0] mul_ln299_1_fu_2928_p2;
wire   [7:0] or_ln300_1_fu_2944_p3;
wire   [16:0] tmp_85_fu_2976_p1;
wire  signed [16:0] grp_fu_3688_p3;
wire   [18:0] tmp_89_fu_2985_p1;
wire  signed [18:0] grp_fu_3697_p3;
wire   [8:0] mul_ln301_1_fu_2997_p0;
wire   [10:0] mul_ln301_1_fu_2997_p1;
wire   [18:0] mul_ln301_1_fu_2997_p2;
wire   [7:0] or_ln302_1_fu_3013_p3;
wire   [7:0] add_ln302_1_fu_3025_p2;
wire   [7:0] mul_ln302_1_fu_3034_p0;
wire   [9:0] mul_ln302_1_fu_3034_p1;
wire   [16:0] mul_ln302_1_fu_3034_p2;
wire  signed [8:0] sext_ln303_1_fu_3050_p1;
wire   [8:0] mul_ln303_1_fu_3057_p0;
wire   [10:0] mul_ln303_1_fu_3057_p1;
wire   [18:0] mul_ln303_1_fu_3057_p2;
wire   [7:0] or_ln304_1_fu_3073_p3;
wire   [8:0] zext_ln172_25_fu_3088_p1;
wire   [2:0] grp_fu_2535_p2;
wire   [20:0] tmp_90_fu_3107_p1;
wire  signed [20:0] grp_fu_3706_p3;
wire   [16:0] tmp_93_fu_3116_p1;
wire  signed [16:0] grp_fu_3715_p3;
wire   [8:0] mul_ln299_2_fu_3131_p0;
wire   [10:0] mul_ln299_2_fu_3131_p1;
wire   [18:0] mul_ln299_2_fu_3131_p2;
wire   [7:0] or_ln300_2_fu_3147_p3;
wire   [8:0] mul_ln301_2_fu_3162_p0;
wire   [10:0] mul_ln301_2_fu_3162_p1;
wire   [18:0] mul_ln301_2_fu_3162_p2;
wire   [7:0] add_ln302_2_fu_3178_p2;
wire   [7:0] mul_ln302_2_fu_3187_p0;
wire   [9:0] mul_ln302_2_fu_3187_p1;
wire   [16:0] mul_ln302_2_fu_3187_p2;
wire   [18:0] tmp_97_fu_3299_p1;
wire  signed [18:0] grp_fu_3724_p3;
wire   [20:0] tmp_98_fu_3308_p1;
wire  signed [20:0] grp_fu_3732_p3;
wire   [7:0] or_ln302_2_fu_3317_p3;
wire  signed [8:0] sext_ln303_2_fu_3330_p1;
wire   [8:0] mul_ln303_2_fu_3337_p0;
wire   [10:0] mul_ln303_2_fu_3337_p1;
wire   [18:0] mul_ln303_2_fu_3337_p2;
wire   [7:0] or_ln304_2_fu_3353_p3;
wire   [16:0] tmp_101_fu_3458_p1;
wire  signed [16:0] grp_fu_3741_p3;
wire   [18:0] tmp_105_fu_3467_p1;
wire  signed [18:0] grp_fu_3750_p3;
wire   [7:0] or_ln300_3_fu_3476_p3;
wire   [20:0] tmp_106_fu_3561_p1;
wire  signed [20:0] grp_fu_3759_p3;
wire   [7:0] tmp_106_fu_3561_p4;
wire   [7:0] or_ln302_3_fu_3581_p3;
wire   [64:0] grp_fu_2358_p2;
wire   [7:0] or_ln304_3_fu_3604_p3;
wire   [5:0] grp_fu_3688_p0;
wire   [6:0] grp_fu_3688_p1;
wire   [8:0] grp_fu_3688_p2;
wire   [5:0] grp_fu_3697_p0;
wire   [7:0] grp_fu_3697_p1;
wire   [9:0] grp_fu_3697_p2;
wire   [5:0] grp_fu_3706_p0;
wire   [8:0] grp_fu_3706_p1;
wire   [10:0] grp_fu_3706_p2;
wire   [5:0] grp_fu_3715_p0;
wire   [6:0] grp_fu_3715_p1;
wire   [8:0] grp_fu_3715_p2;
wire   [5:0] grp_fu_3724_p0;
wire   [7:0] grp_fu_3724_p1;
wire   [9:0] grp_fu_3724_p2;
wire   [5:0] grp_fu_3732_p0;
wire   [8:0] grp_fu_3732_p1;
wire   [10:0] grp_fu_3732_p2;
wire   [5:0] grp_fu_3741_p0;
wire   [6:0] grp_fu_3741_p1;
wire   [8:0] grp_fu_3741_p2;
wire   [5:0] grp_fu_3750_p0;
wire   [7:0] grp_fu_3750_p1;
wire   [9:0] grp_fu_3750_p2;
wire   [5:0] grp_fu_3759_p0;
wire   [8:0] grp_fu_3759_p1;
wire   [10:0] grp_fu_3759_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [64:0] grp_fu_2358_p00;
wire   [7:0] grp_fu_3688_p00;
wire   [9:0] grp_fu_3706_p00;
wire   [7:0] grp_fu_3715_p00;
wire   [9:0] grp_fu_3732_p00;
wire   [7:0] grp_fu_3741_p00;
wire   [9:0] grp_fu_3759_p00;
wire   [12:0] mul_ln172_3_fu_2641_p00;
wire   [12:0] mul_ln172_4_fu_2728_p00;
wire   [12:0] mul_ln172_fu_2697_p00;
wire   [18:0] mul_ln299_1_fu_2928_p00;
wire   [18:0] mul_ln299_2_fu_3131_p00;
wire   [18:0] mul_ln299_fu_2760_p00;
wire   [18:0] mul_ln301_1_fu_2997_p00;
wire   [18:0] mul_ln301_2_fu_3162_p00;
wire   [18:0] mul_ln301_fu_2779_p00;
wire   [16:0] mul_ln302_1_fu_3034_p00;
wire   [16:0] mul_ln302_2_fu_3187_p00;
wire   [16:0] mul_ln302_fu_2883_p00;
wire   [18:0] mul_ln303_1_fu_3057_p00;
wire   [18:0] mul_ln303_2_fu_3337_p00;
wire   [18:0] mul_ln303_fu_2906_p00;
reg    ap_condition_2213;
reg    ap_condition_2217;
reg    ap_condition_2221;
reg    ap_condition_2225;
reg    ap_condition_2229;
reg    ap_condition_2233;
reg    ap_condition_2236;
reg    ap_condition_2240;
reg    ap_condition_2244;
reg    ap_condition_2248;
reg    ap_condition_2252;
reg    ap_condition_2256;
reg    ap_condition_2260;
reg    ap_condition_2263;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_180 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U170(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2348_p0),.din1(grp_fu_2348_p1),.ce(1'b1),.dout(grp_fu_2348_p2));
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U171(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2353_p0),.din1(grp_fu_2353_p1),.ce(1'b1),.dout(grp_fu_2353_p2));
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U172(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2358_p0),.din1(grp_fu_2358_p1),.ce(1'b1),.dout(grp_fu_2358_p2));
fft1D_512_urem_32ns_4ns_3_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_32ns_4ns_3_36_1_U173(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2535_p0),.din1(grp_fu_2535_p1),.ce(1'b1),.dout(grp_fu_2535_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U174(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_3786),.din1(grp_fu_2541_p1),.ce(1'b1),.dout(grp_fu_2541_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U175(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2563_p0),.din1(grp_fu_2563_p1),.ce(1'b1),.dout(grp_fu_2563_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U176(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2586_p0),.din1(grp_fu_2586_p1),.ce(1'b1),.dout(grp_fu_2586_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U177(.din0(mul_ln172_3_fu_2641_p0),.din1(mul_ln172_3_fu_2641_p1),.dout(mul_ln172_3_fu_2641_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U178(.din0(mul_ln172_fu_2697_p0),.din1(mul_ln172_fu_2697_p1),.dout(mul_ln172_fu_2697_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U179(.din0(mul_ln172_4_fu_2728_p0),.din1(mul_ln172_4_fu_2728_p1),.dout(mul_ln172_4_fu_2728_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U180(.din0(mul_ln299_fu_2760_p0),.din1(mul_ln299_fu_2760_p1),.dout(mul_ln299_fu_2760_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U181(.din0(mul_ln301_fu_2779_p0),.din1(mul_ln301_fu_2779_p1),.dout(mul_ln301_fu_2779_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U182(.din0(mul_ln302_fu_2883_p0),.din1(mul_ln302_fu_2883_p1),.dout(mul_ln302_fu_2883_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U183(.din0(mul_ln303_fu_2906_p0),.din1(mul_ln303_fu_2906_p1),.dout(mul_ln303_fu_2906_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U184(.din0(mul_ln299_1_fu_2928_p0),.din1(mul_ln299_1_fu_2928_p1),.dout(mul_ln299_1_fu_2928_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U185(.din0(mul_ln301_1_fu_2997_p0),.din1(mul_ln301_1_fu_2997_p1),.dout(mul_ln301_1_fu_2997_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U186(.din0(mul_ln302_1_fu_3034_p0),.din1(mul_ln302_1_fu_3034_p1),.dout(mul_ln302_1_fu_3034_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U187(.din0(mul_ln303_1_fu_3057_p0),.din1(mul_ln303_1_fu_3057_p1),.dout(mul_ln303_1_fu_3057_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U188(.din0(mul_ln299_2_fu_3131_p0),.din1(mul_ln299_2_fu_3131_p1),.dout(mul_ln299_2_fu_3131_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U189(.din0(mul_ln301_2_fu_3162_p0),.din1(mul_ln301_2_fu_3162_p1),.dout(mul_ln301_2_fu_3162_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U190(.din0(mul_ln302_2_fu_3187_p0),.din1(mul_ln302_2_fu_3187_p1),.dout(mul_ln302_2_fu_3187_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U191(.din0(mul_ln303_2_fu_3337_p0),.din1(mul_ln303_2_fu_3337_p1),.dout(mul_ln303_2_fu_3337_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U192(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3688_p0),.din1(grp_fu_3688_p1),.din2(grp_fu_3688_p2),.ce(1'b1),.dout(grp_fu_3688_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U193(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3697_p0),.din1(grp_fu_3697_p1),.din2(grp_fu_3697_p2),.ce(1'b1),.dout(grp_fu_3697_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3706_p0),.din1(grp_fu_3706_p1),.din2(grp_fu_3706_p2),.ce(1'b1),.dout(grp_fu_3706_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U195(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3715_p0),.din1(grp_fu_3715_p1),.din2(grp_fu_3715_p2),.ce(1'b1),.dout(grp_fu_3715_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3724_p0),.din1(grp_fu_3724_p1),.din2(grp_fu_3724_p2),.ce(1'b1),.dout(grp_fu_3724_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U197(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3732_p0),.din1(grp_fu_3732_p1),.din2(grp_fu_3732_p2),.ce(1'b1),.dout(grp_fu_3732_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U198(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3741_p0),.din1(grp_fu_3741_p1),.din2(grp_fu_3741_p2),.ce(1'b1),.dout(grp_fu_3741_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3750_p0),.din1(grp_fu_3750_p1),.din2(grp_fu_3750_p2),.ce(1'b1),.dout(grp_fu_3750_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3759_p0),.din1(grp_fu_3759_p1),.din2(grp_fu_3759_p2),.ce(1'b1),.dout(grp_fu_3759_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_2423 <= DATA_x_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_2423 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_2464 <= DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_2464 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_180 <= 7'd0;
    end else if (((tmp_reg_3782 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_180 <= add_ln294_fu_2592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_load_4_reg_4166 <= DATA_x_1_q1;
        DATA_x_1_load_5_reg_4177 <= DATA_x_1_q0;
        DATA_x_load_2_reg_4155 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_load_6_reg_4264 <= DATA_x_1_q1;
        DATA_x_1_load_7_reg_4275 <= DATA_x_1_q0;
        DATA_x_load_5_reg_4253 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln299_1_reg_4000[8 : 1] <= add_ln299_1_fu_2840_p2[8 : 1];
        add_ln303_reg_3973 <= add_ln303_fu_2807_p2;
        tmp_84_reg_3953 <= {{mul_ln299_fu_2760_p2[18:12]}};
        tmp_86_reg_3958 <= {{mul_ln301_fu_2779_p2[18:12]}};
        zext_ln172_20_reg_3988[5 : 1] <= zext_ln172_20_fu_2824_p1[5 : 1];
        zext_ln172_21_reg_3994[5 : 1] <= zext_ln172_21_fu_2827_p1[5 : 1];
        zext_ln298_2_reg_4005[7 : 4] <= zext_ln298_2_fu_2853_p1[7 : 4];
        zext_ln298_3_reg_4020[7 : 4] <= zext_ln298_3_fu_2869_p1[7 : 4];
        zext_ln302_4_reg_3963[7 : 2] <= zext_ln302_4_fu_2802_p1[7 : 2];
        zext_ln304_4_reg_3978[7 : 2] <= zext_ln304_4_fu_2819_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln299_2_reg_4141[8 : 2] <= add_ln299_2_fu_3091_p2[8 : 2];
        add_ln301_2_reg_4146[8 : 2] <= add_ln301_2_fu_3097_p2[8 : 2];
        offset_5_reg_3841[5 : 2] <= offset_5_fu_2578_p3[5 : 2];
        offset_5_reg_3841_pp0_iter1_reg[5 : 2] <= offset_5_reg_3841[5 : 2];
        offset_5_reg_3841_pp0_iter2_reg[5 : 2] <= offset_5_reg_3841_pp0_iter1_reg[5 : 2];
        offset_5_reg_3841_pp0_iter3_reg[5 : 2] <= offset_5_reg_3841_pp0_iter2_reg[5 : 2];
        offset_5_reg_3841_pp0_iter4_reg[5 : 2] <= offset_5_reg_3841_pp0_iter3_reg[5 : 2];
        tmp_67_reg_3829 <= {{tid_3_reg_3775[5:2]}};
        tmp_67_reg_3829_pp0_iter1_reg <= tmp_67_reg_3829;
        tmp_67_reg_3829_pp0_iter2_reg <= tmp_67_reg_3829_pp0_iter1_reg;
        tmp_67_reg_3829_pp0_iter3_reg <= tmp_67_reg_3829_pp0_iter2_reg;
        tmp_67_reg_3829_pp0_iter4_reg <= tmp_67_reg_3829_pp0_iter3_reg;
        tmp_85_reg_4080 <= {{tmp_85_fu_2976_p1[16:11]}};
        tmp_89_reg_4090 <= {{tmp_89_fu_2985_p1[18:12]}};
        tmp_94_reg_4100 <= {{mul_ln301_1_fu_2997_p2[18:12]}};
        tmp_95_reg_4110 <= {{mul_ln302_1_fu_3034_p2[16:11]}};
        tmp_96_reg_4120 <= {{mul_ln303_1_fu_3057_p2[18:12]}};
        trunc_ln172_4_reg_3854 <= trunc_ln172_4_fu_2606_p1;
        trunc_ln172_4_reg_3854_pp0_iter2_reg <= trunc_ln172_4_reg_3854;
        trunc_ln172_4_reg_3854_pp0_iter3_reg <= trunc_ln172_4_reg_3854_pp0_iter2_reg;
        trunc_ln172_4_reg_3854_pp0_iter4_reg <= trunc_ln172_4_reg_3854_pp0_iter3_reg;
        trunc_ln172_6_reg_4151 <= trunc_ln172_6_fu_3103_p1;
        zext_ln172_24_reg_4135[5 : 2] <= zext_ln172_24_fu_3085_p1[5 : 2];
        zext_ln302_5_reg_4105[7 : 3] <= zext_ln302_5_fu_3020_p1[7 : 3];
        zext_ln304_5_reg_4125[7 : 3] <= zext_ln304_5_fu_3080_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln299_3_reg_4243 <= add_ln299_3_fu_3219_p2;
        add_ln300_3_reg_4248 <= add_ln300_3_fu_3224_p2;
        add_ln303_2_reg_4238[7 : 2] <= add_ln303_2_fu_3203_p2[7 : 2];
        tmp_100_reg_4213 <= {{mul_ln299_2_fu_3131_p2[18:12]}};
        tmp_102_reg_4228 <= {{mul_ln301_2_fu_3162_p2[18:12]}};
        tmp_103_reg_4233 <= {{mul_ln302_2_fu_3187_p2[16:11]}};
        tmp_90_reg_4188 <= {{tmp_90_fu_3107_p1[20:13]}};
        tmp_93_reg_4193 <= {{tmp_93_fu_3116_p1[16:11]}};
        trunc_ln172_5_reg_3858 <= trunc_ln172_5_fu_2610_p1;
        trunc_ln172_5_reg_3858_pp0_iter2_reg <= trunc_ln172_5_reg_3858;
        trunc_ln172_5_reg_3858_pp0_iter3_reg <= trunc_ln172_5_reg_3858_pp0_iter2_reg;
        trunc_ln172_5_reg_3858_pp0_iter4_reg <= trunc_ln172_5_reg_3858_pp0_iter3_reg;
        zext_ln300_6_reg_4218[7 : 4] <= zext_ln300_6_fu_3154_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_reg_3903 <= add_ln299_fu_2670_p2;
        add_ln301_reg_3918 <= add_ln301_fu_2688_p2;
        offset_6_reg_3799 <= offset_6_fu_2523_p5;
        offset_6_reg_3799_pp0_iter1_reg <= offset_6_reg_3799;
        offset_6_reg_3799_pp0_iter2_reg <= offset_6_reg_3799_pp0_iter1_reg;
        offset_6_reg_3799_pp0_iter3_reg <= offset_6_reg_3799_pp0_iter2_reg;
        offset_6_reg_3799_pp0_iter4_reg <= offset_6_reg_3799_pp0_iter3_reg;
        offset_reg_3786 <= offset_fu_2499_p1;
        offset_reg_3786_pp0_iter1_reg <= offset_reg_3786;
        offset_reg_3786_pp0_iter2_reg <= offset_reg_3786_pp0_iter1_reg;
        offset_reg_3786_pp0_iter3_reg <= offset_reg_3786_pp0_iter2_reg;
        offset_reg_3786_pp0_iter4_reg <= offset_reg_3786_pp0_iter3_reg;
        tid_3_reg_3775 <= ap_sig_allocacmp_tid_3;
        tmp_83_reg_3888 <= {{mul_ln172_3_fu_2641_p2[12:9]}};
        tmp_91_reg_3923 <= {{mul_ln172_fu_2697_p2[12:9]}};
        tmp_99_reg_3938 <= {{mul_ln172_4_fu_2728_p2[12:9]}};
        tmp_reg_3782 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_3782_pp0_iter1_reg <= tmp_reg_3782;
        tmp_reg_3782_pp0_iter2_reg <= tmp_reg_3782_pp0_iter1_reg;
        tmp_reg_3782_pp0_iter3_reg <= tmp_reg_3782_pp0_iter2_reg;
        zext_ln172_16_reg_3882[5 : 0] <= zext_ln172_16_fu_2632_p1[5 : 0];
        zext_ln298_1_reg_3928[7 : 3] <= zext_ln298_1_fu_2720_p1[7 : 3];
        zext_ln300_4_reg_3908[7 : 2] <= zext_ln300_4_fu_2683_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln301_1_reg_4070[8 : 1] <= add_ln301_1_fu_2956_p2[8 : 1];
        add_ln303_1_reg_4075[7 : 1] <= add_ln303_1_fu_2961_p2[7 : 1];
        offset_4_reg_3820[5 : 1] <= offset_4_fu_2555_p3[5 : 1];
        offset_4_reg_3820_pp0_iter1_reg[5 : 1] <= offset_4_reg_3820[5 : 1];
        offset_4_reg_3820_pp0_iter2_reg[5 : 1] <= offset_4_reg_3820_pp0_iter1_reg[5 : 1];
        offset_4_reg_3820_pp0_iter3_reg[5 : 1] <= offset_4_reg_3820_pp0_iter2_reg[5 : 1];
        tmp_87_reg_4040 <= {{mul_ln302_fu_2883_p2[16:11]}};
        tmp_88_reg_4045 <= {{mul_ln303_fu_2906_p2[18:12]}};
        tmp_92_reg_4055 <= {{mul_ln299_1_fu_2928_p2[18:12]}};
        tmp_s_reg_3812 <= {{tid_3_reg_3775[5:1]}};
        tmp_s_reg_3812_pp0_iter1_reg <= tmp_s_reg_3812;
        tmp_s_reg_3812_pp0_iter2_reg <= tmp_s_reg_3812_pp0_iter1_reg;
        tmp_s_reg_3812_pp0_iter3_reg <= tmp_s_reg_3812_pp0_iter2_reg;
        tmp_s_reg_3812_pp0_iter4_reg <= tmp_s_reg_3812_pp0_iter3_reg;
        trunc_ln172_reg_3850 <= trunc_ln172_fu_2602_p1;
        trunc_ln172_reg_3850_pp0_iter2_reg <= trunc_ln172_reg_3850;
        trunc_ln172_reg_3850_pp0_iter3_reg <= trunc_ln172_reg_3850_pp0_iter2_reg;
        trunc_ln172_reg_3850_pp0_iter4_reg <= trunc_ln172_reg_3850_pp0_iter3_reg;
        zext_ln300_5_reg_4060[7 : 3] <= zext_ln300_5_fu_2951_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln301_3_reg_4336 <= add_ln301_3_fu_3373_p2;
        add_ln302_3_reg_4341 <= add_ln302_3_fu_3378_p2;
        add_ln303_3_reg_4346 <= add_ln303_3_fu_3383_p2;
        tmp_104_reg_4311 <= {{mul_ln303_2_fu_3337_p2[18:12]}};
        tmp_97_reg_4286 <= {{tmp_97_fu_3299_p1[18:12]}};
        tmp_98_reg_4291 <= {{tmp_98_fu_3308_p1[20:13]}};
        zext_ln304_6_reg_4316[7 : 4] <= zext_ln304_6_fu_3360_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln304_3_reg_3862 <= add_ln304_3_fu_2614_p2;
        add_ln305_3_reg_3867 <= add_ln305_3_fu_2619_p2;
        tmp_101_reg_4351 <= {{tmp_101_fu_3458_p1[16:11]}};
        tmp_105_reg_4361 <= {{tmp_105_fu_3467_p1[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2383 <= DATA_x_1_q1;
        reg_2401 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2419 <= {{grp_fu_2348_p2[64:35]}};
        reg_2442 <= DATA_x_1_q1;
        reg_2453 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_110_reg_4376 <= {{grp_fu_2353_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_111_reg_4401 <= {{grp_fu_2348_p2[64:35]}};
        tmp_112_reg_4411 <= {{grp_fu_2353_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_113_reg_4421 <= {{grp_fu_2358_p2[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_114_reg_3943 <= {{grp_fu_2348_p2[64:35]}};
        tmp_115_reg_3948 <= {{grp_fu_2353_p2[64:35]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_1_address0_local = zext_ln304_7_fu_3611_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_1_address0_local = zext_ln300_7_fu_3483_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_1_address0_local = zext_ln304_6_fu_3360_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_1_address0_local = zext_ln300_6_fu_3154_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln304_5_fu_3080_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln300_5_fu_2951_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln304_4_fu_2819_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_4_fu_2683_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_1_address1_local = zext_ln302_7_fu_3588_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_1_address1_local = zext_ln298_3_reg_4020;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_1_address1_local = zext_ln302_6_fu_3324_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_1_address1_local = zext_ln298_2_reg_4005;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln302_5_fu_3020_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln298_1_reg_3928;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln302_4_fu_2802_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_2664_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_address0_local = zext_ln304_7_fu_3611_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_address0_local = zext_ln300_7_fu_3483_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_address0_local = zext_ln302_6_fu_3324_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_address0_local = zext_ln304_5_reg_4125;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln300_5_reg_4060;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln302_4_reg_3963;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln298_3_fu_2869_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln298_1_fu_2720_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_address1_local = zext_ln302_7_fu_3588_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_address1_local = zext_ln304_6_reg_4316;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_address1_local = zext_ln300_6_reg_4218;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_address1_local = zext_ln302_5_reg_4105;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln304_4_reg_3978;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln300_4_reg_3908;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln298_2_fu_2853_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_2664_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3782 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_3782_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_2348_p0 = zext_ln301_7_fu_3489_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_2348_p0 = zext_ln299_7_fu_3365_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_2348_p0 = zext_ln172_27_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_2348_p0 = zext_ln304_11_fu_2624_p1;
    end else begin
        grp_fu_2348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_2353_p0 = zext_ln302_11_fu_3493_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_2353_p0 = zext_ln300_11_fu_3369_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_2353_p0 = zext_ln305_7_fu_2628_p1;
    end else begin
        grp_fu_2353_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_10_address0_local = zext_ln303_3_fu_3658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln304_3_fu_3668_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln302_3_fu_3648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln301_3_fu_3638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln300_3_fu_3628_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln299_3_fu_3617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln305_3_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_10_address0_local = zext_ln303_1_fu_3428_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_address0_local = zext_ln304_1_fu_3438_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_address0_local = zext_ln302_1_fu_3418_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_address0_local = zext_ln301_1_fu_3408_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_address0_local = zext_ln300_1_fu_3398_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_address0_local = zext_ln299_1_fu_3388_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_address0_local = zext_ln305_1_fu_3448_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_4_fu_2830_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_2263)) begin
            smem_10_address1_local = zext_ln303_2_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2260)) begin
            smem_10_address1_local = zext_ln304_2_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2256)) begin
            smem_10_address1_local = zext_ln302_2_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2252)) begin
            smem_10_address1_local = zext_ln301_2_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2248)) begin
            smem_10_address1_local = zext_ln300_2_fu_3511_p1;
        end else if ((1'b1 == ap_condition_2244)) begin
            smem_10_address1_local = zext_ln299_2_fu_3501_p1;
        end else if ((1'b1 == ap_condition_2240)) begin
            smem_10_address1_local = zext_ln305_2_fu_3570_p1;
        end else if ((1'b1 == ap_condition_2236)) begin
            smem_10_address1_local = zext_ln303_fu_3269_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_10_address1_local = zext_ln304_fu_3279_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_10_address1_local = zext_ln302_fu_3259_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_10_address1_local = zext_ln301_fu_3249_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_10_address1_local = zext_ln300_fu_3239_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_10_address1_local = zext_ln299_fu_3229_p1;
        end else if ((1'b1 == ap_condition_2213)) begin
            smem_10_address1_local = zext_ln305_fu_3289_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_10_address1_local = zext_ln172_6_fu_3208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_10_address1_local = zext_ln172_5_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_10_address1_local = zext_ln172_3_fu_2747_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1)& (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_10_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = reg_2383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_10_d0_local = DATA_x_1_load_6_reg_4264;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_d0_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_d0_local = reg_2423;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_d0_local = DATA_x_1_load_5_reg_4177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_d0_local = DATA_x_load_5_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_d0_local = DATA_x_1_load_4_reg_4166;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_10_d0_local = DATA_x_1_load_7_reg_4275;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_d0_local = DATA_x_q0;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))))) begin
        smem_10_d1_local = reg_2442;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_10_d1_local = DATA_x_load_2_reg_4155;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_10_d1_local = reg_2401;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_10_d1_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_10_d1_local = reg_2383;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_10_d1_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_10_d1_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_d1_local = DATA_x_q1;
    end else begin
        smem_10_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_we1_local = 1'b1;
    end else begin
        smem_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_11_address0_local = zext_ln304_3_fu_3668_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln305_3_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln303_3_fu_3658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln302_3_fu_3648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln301_3_fu_3638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln300_3_fu_3628_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln299_3_fu_3617_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_11_address0_local = zext_ln304_1_fu_3438_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_address0_local = zext_ln305_1_fu_3448_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_address0_local = zext_ln303_1_fu_3428_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_address0_local = zext_ln302_1_fu_3418_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_address0_local = zext_ln301_1_fu_3408_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_address0_local = zext_ln300_1_fu_3398_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_address0_local = zext_ln299_1_fu_3388_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln172_4_fu_2830_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_2263)) begin
            smem_11_address1_local = zext_ln304_2_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2260)) begin
            smem_11_address1_local = zext_ln305_2_fu_3570_p1;
        end else if ((1'b1 == ap_condition_2256)) begin
            smem_11_address1_local = zext_ln303_2_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2252)) begin
            smem_11_address1_local = zext_ln302_2_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2248)) begin
            smem_11_address1_local = zext_ln301_2_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2244)) begin
            smem_11_address1_local = zext_ln300_2_fu_3511_p1;
        end else if ((1'b1 == ap_condition_2240)) begin
            smem_11_address1_local = zext_ln299_2_fu_3501_p1;
        end else if ((1'b1 == ap_condition_2236)) begin
            smem_11_address1_local = zext_ln304_fu_3279_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_11_address1_local = zext_ln305_fu_3289_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_11_address1_local = zext_ln303_fu_3269_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_11_address1_local = zext_ln302_fu_3259_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_11_address1_local = zext_ln301_fu_3249_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_11_address1_local = zext_ln300_fu_3239_p1;
        end else if ((1'b1 == ap_condition_2213)) begin
            smem_11_address1_local = zext_ln299_fu_3229_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_11_address1_local = zext_ln172_6_fu_3208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_11_address1_local = zext_ln172_5_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_11_address1_local = zext_ln172_3_fu_2747_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1)& (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = reg_2383;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_11_d0_local = reg_2464;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_d0_local = DATA_x_1_load_7_reg_4275;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_d0_local = DATA_x_1_load_6_reg_4264;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_d0_local = reg_2423;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_d0_local = DATA_x_1_load_5_reg_4177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_d0_local = DATA_x_load_5_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_11_d0_local = DATA_x_1_load_4_reg_4166;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))))) begin
        smem_11_d0_local = DATA_x_q0;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_11_d1_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_11_d1_local = reg_2442;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_11_d1_local = DATA_x_load_2_reg_4155;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_11_d1_local = reg_2401;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_11_d1_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_11_d1_local = reg_2383;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_11_d1_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_d1_local = DATA_x_q1;
    end else begin
        smem_11_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_we1_local = 1'b1;
    end else begin
        smem_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_12_address0_local = zext_ln305_3_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln299_3_fu_3617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln304_3_fu_3668_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln303_3_fu_3658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln302_3_fu_3648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln301_3_fu_3638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln300_3_fu_3628_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_12_address0_local = zext_ln305_1_fu_3448_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_address0_local = zext_ln299_1_fu_3388_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_address0_local = zext_ln304_1_fu_3438_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_address0_local = zext_ln303_1_fu_3428_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_address0_local = zext_ln302_1_fu_3418_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_address0_local = zext_ln301_1_fu_3408_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_address0_local = zext_ln300_1_fu_3398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln172_4_fu_2830_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_2263)) begin
            smem_12_address1_local = zext_ln305_2_fu_3570_p1;
        end else if ((1'b1 == ap_condition_2260)) begin
            smem_12_address1_local = zext_ln299_2_fu_3501_p1;
        end else if ((1'b1 == ap_condition_2256)) begin
            smem_12_address1_local = zext_ln304_2_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2252)) begin
            smem_12_address1_local = zext_ln303_2_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2248)) begin
            smem_12_address1_local = zext_ln302_2_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2244)) begin
            smem_12_address1_local = zext_ln301_2_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2240)) begin
            smem_12_address1_local = zext_ln300_2_fu_3511_p1;
        end else if ((1'b1 == ap_condition_2236)) begin
            smem_12_address1_local = zext_ln305_fu_3289_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_12_address1_local = zext_ln299_fu_3229_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_12_address1_local = zext_ln304_fu_3279_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_12_address1_local = zext_ln303_fu_3269_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_12_address1_local = zext_ln302_fu_3259_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_12_address1_local = zext_ln301_fu_3249_p1;
        end else if ((1'b1 == ap_condition_2213)) begin
            smem_12_address1_local = zext_ln300_fu_3239_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_12_address1_local = zext_ln172_6_fu_3208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_12_address1_local = zext_ln172_5_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_12_address1_local = zext_ln172_3_fu_2747_p1;
        end else begin
            smem_12_address1_local = 'bx;
        end
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1)& (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_12_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = reg_2383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_12_d0_local = DATA_x_1_load_7_reg_4275;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_d0_local = DATA_x_1_load_4_reg_4166;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_d0_local = reg_2464;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_d0_local = DATA_x_1_load_6_reg_4264;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_d0_local = reg_2423;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_d0_local = DATA_x_1_load_5_reg_4177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_12_d0_local = DATA_x_load_5_reg_4253;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_d0_local = DATA_x_q0;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))))) begin
        smem_12_d1_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_12_d1_local = reg_2383;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_12_d1_local = reg_2442;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_12_d1_local = DATA_x_load_2_reg_4155;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_12_d1_local = reg_2401;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_12_d1_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_12_d1_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_d1_local = DATA_x_q1;
    end else begin
        smem_12_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd7))))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0== ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) &(ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3850_pp0_iter3_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter3_reg == 3'd7))))) begin
        smem_12_we1_local = 1'b1;
    end else begin
        smem_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_7_address0_local = zext_ln300_3_fu_3628_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln301_3_fu_3638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln299_3_fu_3617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln305_3_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln304_3_fu_3668_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln303_3_fu_3658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln302_3_fu_3648_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_7_address0_local = zext_ln300_1_fu_3398_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln301_1_fu_3408_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln299_1_fu_3388_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln305_1_fu_3448_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln304_1_fu_3438_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln303_1_fu_3428_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln302_1_fu_3418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_4_fu_2830_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_2263)) begin
            smem_7_address1_local = zext_ln300_2_fu_3511_p1;
        end else if ((1'b1 == ap_condition_2260)) begin
            smem_7_address1_local = zext_ln301_2_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2256)) begin
            smem_7_address1_local = zext_ln299_2_fu_3501_p1;
        end else if ((1'b1 == ap_condition_2252)) begin
            smem_7_address1_local = zext_ln305_2_fu_3570_p1;
        end else if ((1'b1 == ap_condition_2248)) begin
            smem_7_address1_local = zext_ln304_2_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2244)) begin
            smem_7_address1_local = zext_ln303_2_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2240)) begin
            smem_7_address1_local = zext_ln302_2_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2236)) begin
            smem_7_address1_local = zext_ln300_fu_3239_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_7_address1_local = zext_ln301_fu_3249_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_7_address1_local = zext_ln299_fu_3229_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_7_address1_local = zext_ln305_fu_3289_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_7_address1_local = zext_ln304_fu_3279_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_7_address1_local = zext_ln303_fu_3269_p1;
        end else if ((1'b1 == ap_condition_2213)) begin
            smem_7_address1_local = zext_ln302_fu_3259_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_7_address1_local = zext_ln172_6_fu_3208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_7_address1_local = zext_ln172_5_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_7_address1_local = zext_ln172_3_fu_2747_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1)& (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = reg_2383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_7_d0_local = DATA_x_load_5_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_d0_local = DATA_x_1_load_5_reg_4177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_d0_local = DATA_x_1_load_4_reg_4166;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_d0_local = DATA_x_1_load_7_reg_4275;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_d0_local = reg_2464;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_d0_local = DATA_x_1_load_6_reg_4264;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))))) begin
        smem_7_d0_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_d0_local = DATA_x_q0;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))))) begin
        smem_7_d1_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_7_d1_local = reg_2401;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_7_d1_local = reg_2383;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_7_d1_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_7_d1_local = reg_2442;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_7_d1_local = DATA_x_load_2_reg_4155;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_7_d1_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_d1_local = DATA_x_q1;
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_8_address0_local = zext_ln301_3_fu_3638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln302_3_fu_3648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln300_3_fu_3628_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln299_3_fu_3617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln305_3_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln304_3_fu_3668_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln303_3_fu_3658_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_8_address0_local = zext_ln301_1_fu_3408_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address0_local = zext_ln302_1_fu_3418_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address0_local = zext_ln300_1_fu_3398_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address0_local = zext_ln299_1_fu_3388_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address0_local = zext_ln305_1_fu_3448_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address0_local = zext_ln304_1_fu_3438_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address0_local = zext_ln303_1_fu_3428_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_4_fu_2830_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_2263)) begin
            smem_8_address1_local = zext_ln301_2_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2260)) begin
            smem_8_address1_local = zext_ln302_2_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2256)) begin
            smem_8_address1_local = zext_ln300_2_fu_3511_p1;
        end else if ((1'b1 == ap_condition_2252)) begin
            smem_8_address1_local = zext_ln299_2_fu_3501_p1;
        end else if ((1'b1 == ap_condition_2248)) begin
            smem_8_address1_local = zext_ln305_2_fu_3570_p1;
        end else if ((1'b1 == ap_condition_2244)) begin
            smem_8_address1_local = zext_ln304_2_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2240)) begin
            smem_8_address1_local = zext_ln303_2_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2236)) begin
            smem_8_address1_local = zext_ln301_fu_3249_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_8_address1_local = zext_ln302_fu_3259_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_8_address1_local = zext_ln300_fu_3239_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_8_address1_local = zext_ln299_fu_3229_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_8_address1_local = zext_ln305_fu_3289_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_8_address1_local = zext_ln304_fu_3279_p1;
        end else if ((1'b1 == ap_condition_2213)) begin
            smem_8_address1_local = zext_ln303_fu_3269_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_8_address1_local = zext_ln172_6_fu_3208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_8_address1_local = zext_ln172_5_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_8_address1_local = zext_ln172_3_fu_2747_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1)& (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_8_d0_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = reg_2383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_8_d0_local = DATA_x_1_load_5_reg_4177;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_d0_local = reg_2423;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_d0_local = DATA_x_load_5_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_d0_local = DATA_x_1_load_4_reg_4166;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_d0_local = DATA_x_1_load_7_reg_4275;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_d0_local = reg_2464;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_d0_local = DATA_x_1_load_6_reg_4264;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_d0_local = DATA_x_q0;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))))) begin
        smem_8_d1_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_8_d1_local = DATA_x_load_2_reg_4155;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_8_d1_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_8_d1_local = reg_2383;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_8_d1_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_8_d1_local = reg_2442;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_8_d1_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_d1_local = DATA_x_q1;
    end else begin
        smem_8_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_we1_local = 1'b1;
    end else begin
        smem_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_9_address0_local = zext_ln302_3_fu_3648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln303_3_fu_3658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln301_3_fu_3638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln300_3_fu_3628_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln299_3_fu_3617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln305_3_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln304_3_fu_3668_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_9_address0_local = zext_ln302_1_fu_3418_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_address0_local = zext_ln303_1_fu_3428_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_address0_local = zext_ln301_1_fu_3408_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_address0_local = zext_ln300_1_fu_3398_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_address0_local = zext_ln299_1_fu_3388_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_address0_local = zext_ln305_1_fu_3448_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_address0_local = zext_ln304_1_fu_3438_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_4_fu_2830_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_2263)) begin
            smem_9_address1_local = zext_ln302_2_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2260)) begin
            smem_9_address1_local = zext_ln303_2_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2256)) begin
            smem_9_address1_local = zext_ln301_2_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2252)) begin
            smem_9_address1_local = zext_ln300_2_fu_3511_p1;
        end else if ((1'b1 == ap_condition_2248)) begin
            smem_9_address1_local = zext_ln299_2_fu_3501_p1;
        end else if ((1'b1 == ap_condition_2244)) begin
            smem_9_address1_local = zext_ln305_2_fu_3570_p1;
        end else if ((1'b1 == ap_condition_2240)) begin
            smem_9_address1_local = zext_ln304_2_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2236)) begin
            smem_9_address1_local = zext_ln302_fu_3259_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_9_address1_local = zext_ln303_fu_3269_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_9_address1_local = zext_ln301_fu_3249_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_9_address1_local = zext_ln300_fu_3239_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_9_address1_local = zext_ln299_fu_3229_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_9_address1_local = zext_ln305_fu_3289_p1;
        end else if ((1'b1 == ap_condition_2213)) begin
            smem_9_address1_local = zext_ln304_fu_3279_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_9_address1_local = zext_ln172_6_fu_3208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_9_address1_local = zext_ln172_5_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_9_address1_local = zext_ln172_3_fu_2747_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1)& (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_9_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = reg_2383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_d0_local = reg_2423;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_d0_local = DATA_x_1_load_6_reg_4264;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_d0_local = DATA_x_1_load_5_reg_4177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_d0_local = DATA_x_load_5_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_d0_local = DATA_x_1_load_4_reg_4166;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_d0_local = DATA_x_1_load_7_reg_4275;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_9_d0_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_d0_local = DATA_x_q0;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7)))) begin
        smem_9_d1_local = DATA_x_load_2_reg_4155;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_9_d1_local = reg_2442;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_9_d1_local = reg_2401;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_9_d1_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_9_d1_local = reg_2383;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_9_d1_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_9_d1_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_d1_local = DATA_x_q1;
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_address0_local = zext_ln299_3_fu_3617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln300_3_fu_3628_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln305_3_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln304_3_fu_3668_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln303_3_fu_3658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln302_3_fu_3648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln301_3_fu_3638_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_address0_local = zext_ln299_1_fu_3388_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln300_1_fu_3398_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln305_1_fu_3448_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln304_1_fu_3438_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln303_1_fu_3428_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln302_1_fu_3418_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln301_1_fu_3408_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_4_fu_2830_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_2263)) begin
            smem_address1_local = zext_ln299_2_fu_3501_p1;
        end else if ((1'b1 == ap_condition_2260)) begin
            smem_address1_local = zext_ln300_2_fu_3511_p1;
        end else if ((1'b1 == ap_condition_2256)) begin
            smem_address1_local = zext_ln305_2_fu_3570_p1;
        end else if ((1'b1 == ap_condition_2252)) begin
            smem_address1_local = zext_ln304_2_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2248)) begin
            smem_address1_local = zext_ln303_2_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2244)) begin
            smem_address1_local = zext_ln302_2_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2240)) begin
            smem_address1_local = zext_ln301_2_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2236)) begin
            smem_address1_local = zext_ln299_fu_3229_p1;
        end else if ((1'b1 == ap_condition_2233)) begin
            smem_address1_local = zext_ln300_fu_3239_p1;
        end else if ((1'b1 == ap_condition_2229)) begin
            smem_address1_local = zext_ln305_fu_3289_p1;
        end else if ((1'b1 == ap_condition_2225)) begin
            smem_address1_local = zext_ln304_fu_3279_p1;
        end else if ((1'b1 == ap_condition_2221)) begin
            smem_address1_local = zext_ln303_fu_3269_p1;
        end else if ((1'b1 == ap_condition_2217)) begin
            smem_address1_local = zext_ln302_fu_3259_p1;
        end else if ((1'b1 == ap_condition_2213)) begin
            smem_address1_local = zext_ln301_fu_3249_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln172_6_fu_3208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address1_local = zext_ln172_5_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln172_3_fu_2747_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1)& (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7)))) begin
        smem_d0_local = reg_2383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_2401;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7)))) begin
        smem_d0_local = DATA_x_1_load_4_reg_4166;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_x_load_5_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_x_1_load_7_reg_4275;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = reg_2464;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_x_1_load_6_reg_4264;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_d0_local = reg_2423;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_x_1_load_5_reg_4177;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_d0_local = DATA_x_q0;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))))) begin
        smem_d1_local = reg_2383;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d1_local = reg_2464;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d1_local = reg_2453;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d1_local = reg_2442;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = DATA_x_load_2_reg_4155;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d1_local = reg_2401;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d1_local = reg_2423;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d1_local = DATA_x_q1;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_4151 == 3'd6) | (trunc_ln172_6_reg_4151 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_6_reg_4151 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd6) | (trunc_ln172_4_reg_3854_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_4_reg_3854_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4151 == 3'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))| ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3850_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
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
assign add_ln294_fu_2592_p2 = (tid_3_reg_3775 + 7'd4);
assign add_ln299_1_fu_2840_p2 = ($signed(zext_ln172_21_fu_2827_p1) + $signed(9'd288));
assign add_ln299_2_fu_3091_p2 = ($signed(zext_ln172_25_fu_3088_p1) + $signed(9'd288));
assign add_ln299_3_fu_3219_p2 = (offset_6_reg_3799_pp0_iter4_reg + 32'd288);
assign add_ln299_fu_2670_p2 = ($signed(zext_ln172_17_fu_2635_p1) + $signed(9'd288));
assign add_ln300_3_fu_3224_p2 = (offset_6_reg_3799_pp0_iter4_reg + 32'd72);
assign add_ln301_1_fu_2956_p2 = ($signed(zext_ln172_21_reg_3994) + $signed(9'd360));
assign add_ln301_2_fu_3097_p2 = ($signed(zext_ln172_25_fu_3088_p1) + $signed(9'd360));
assign add_ln301_3_fu_3373_p2 = (offset_6_reg_3799_pp0_iter4_reg + 32'd360);
assign add_ln301_fu_2688_p2 = ($signed(zext_ln172_17_fu_2635_p1) + $signed(9'd360));
assign add_ln302_1_fu_3025_p2 = ($signed(zext_ln172_20_reg_3988) + $signed(8'd144));
assign add_ln302_2_fu_3178_p2 = ($signed(zext_ln172_24_reg_4135) + $signed(8'd144));
assign add_ln302_3_fu_3378_p2 = (offset_6_reg_3799_pp0_iter4_reg + 32'd144);
assign add_ln302_fu_2874_p2 = ($signed(zext_ln172_16_reg_3882) + $signed(8'd144));
assign add_ln303_1_fu_2961_p2 = ($signed(zext_ln172_20_reg_3988) + $signed(8'd176));
assign add_ln303_2_fu_3203_p2 = ($signed(zext_ln172_24_reg_4135) + $signed(8'd176));
assign add_ln303_3_fu_3383_p2 = (offset_6_reg_3799_pp0_iter4_reg + 32'd432);
assign add_ln303_fu_2807_p2 = ($signed(zext_ln172_16_reg_3882) + $signed(8'd176));
assign add_ln304_3_fu_2614_p2 = (offset_6_reg_3799_pp0_iter3_reg + 32'd216);
assign add_ln305_3_fu_2619_p2 = (offset_6_reg_3799_pp0_iter3_reg + 32'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
always @ (*) begin
    ap_condition_2213 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2217 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2221 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2225 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2229 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2233 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2236 = ((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_reg_3850_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3850_pp0_iter4_reg == 3'd7)));
end
always @ (*) begin
    ap_condition_2240 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2244 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2248 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2252 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2256 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2260 = ((1'b0 == ap_block_pp0_stage7) & (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_2263 = ((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd6) | (trunc_ln172_5_reg_3858_pp0_iter4_reg == 3'd7)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_2348_p1 = 65'd4908534053;
assign grp_fu_2353_p1 = 65'd4908534053;
assign grp_fu_2358_p0 = grp_fu_2358_p00;
assign grp_fu_2358_p00 = add_ln303_3_reg_4346;
assign grp_fu_2358_p1 = 65'd4908534053;
assign grp_fu_2535_p0 = {{zext_ln295_fu_2503_p1[31:3]}, {or_ln9_fu_2515_p3}};
assign grp_fu_2535_p1 = 32'd7;
assign grp_fu_2541_p1 = 6'd7;
assign grp_fu_2563_p0 = {{tmp_s_fu_2546_p4}, {1'd1}};
assign grp_fu_2563_p1 = 6'd7;
assign grp_fu_2586_p0 = {{tmp_67_fu_2569_p4}, {2'd2}};
assign grp_fu_2586_p1 = 6'd7;
assign grp_fu_3688_p0 = grp_fu_3688_p00;
assign grp_fu_3688_p00 = offset_reg_3786_pp0_iter3_reg;
assign grp_fu_3688_p1 = 8'd72;
assign grp_fu_3688_p2 = 17'd293;
assign grp_fu_3697_p0 = zext_ln172_17_fu_2635_p1;
assign grp_fu_3697_p1 = 9'd216;
assign grp_fu_3697_p2 = 19'd586;
assign grp_fu_3706_p0 = grp_fu_3706_p00;
assign grp_fu_3706_p00 = offset_reg_3786_pp0_iter4_reg;
assign grp_fu_3706_p1 = 10'd504;
assign grp_fu_3706_p2 = 21'd1171;
assign grp_fu_3715_p0 = grp_fu_3715_p00;
assign grp_fu_3715_p00 = offset_4_reg_3820_pp0_iter3_reg;
assign grp_fu_3715_p1 = 8'd72;
assign grp_fu_3715_p2 = 17'd293;
assign grp_fu_3724_p0 = zext_ln172_21_reg_3994;
assign grp_fu_3724_p1 = 9'd216;
assign grp_fu_3724_p2 = 19'd586;
assign grp_fu_3732_p0 = grp_fu_3732_p00;
assign grp_fu_3732_p00 = offset_4_reg_3820_pp0_iter3_reg;
assign grp_fu_3732_p1 = 10'd504;
assign grp_fu_3732_p2 = 21'd1171;
assign grp_fu_3741_p0 = grp_fu_3741_p00;
assign grp_fu_3741_p00 = offset_5_reg_3841_pp0_iter3_reg;
assign grp_fu_3741_p1 = 8'd72;
assign grp_fu_3741_p2 = 17'd293;
assign grp_fu_3750_p0 = zext_ln172_25_fu_3088_p1;
assign grp_fu_3750_p1 = 9'd216;
assign grp_fu_3750_p2 = 19'd586;
assign grp_fu_3759_p0 = grp_fu_3759_p00;
assign grp_fu_3759_p00 = offset_5_reg_3841_pp0_iter4_reg;
assign grp_fu_3759_p1 = 10'd504;
assign grp_fu_3759_p2 = 21'd1171;
assign mul_ln172_3_fu_2641_p0 = mul_ln172_3_fu_2641_p00;
assign mul_ln172_3_fu_2641_p00 = offset_reg_3786_pp0_iter3_reg;
assign mul_ln172_3_fu_2641_p1 = 13'd74;
assign mul_ln172_4_fu_2728_p0 = mul_ln172_4_fu_2728_p00;
assign mul_ln172_4_fu_2728_p00 = offset_5_reg_3841_pp0_iter3_reg;
assign mul_ln172_4_fu_2728_p1 = 13'd74;
assign mul_ln172_fu_2697_p0 = mul_ln172_fu_2697_p00;
assign mul_ln172_fu_2697_p00 = offset_4_reg_3820_pp0_iter3_reg;
assign mul_ln172_fu_2697_p1 = 13'd74;
assign mul_ln299_1_fu_2928_p0 = mul_ln299_1_fu_2928_p00;
assign mul_ln299_1_fu_2928_p00 = add_ln299_1_reg_4000;
assign mul_ln299_1_fu_2928_p1 = 19'd586;
assign mul_ln299_2_fu_3131_p0 = mul_ln299_2_fu_3131_p00;
assign mul_ln299_2_fu_3131_p00 = add_ln299_2_reg_4141;
assign mul_ln299_2_fu_3131_p1 = 19'd586;
assign mul_ln299_fu_2760_p0 = mul_ln299_fu_2760_p00;
assign mul_ln299_fu_2760_p00 = add_ln299_reg_3903;
assign mul_ln299_fu_2760_p1 = 19'd586;
assign mul_ln301_1_fu_2997_p0 = mul_ln301_1_fu_2997_p00;
assign mul_ln301_1_fu_2997_p00 = add_ln301_1_reg_4070;
assign mul_ln301_1_fu_2997_p1 = 19'd586;
assign mul_ln301_2_fu_3162_p0 = mul_ln301_2_fu_3162_p00;
assign mul_ln301_2_fu_3162_p00 = add_ln301_2_reg_4146;
assign mul_ln301_2_fu_3162_p1 = 19'd586;
assign mul_ln301_fu_2779_p0 = mul_ln301_fu_2779_p00;
assign mul_ln301_fu_2779_p00 = add_ln301_reg_3918;
assign mul_ln301_fu_2779_p1 = 19'd586;
assign mul_ln302_1_fu_3034_p0 = mul_ln302_1_fu_3034_p00;
assign mul_ln302_1_fu_3034_p00 = add_ln302_1_fu_3025_p2;
assign mul_ln302_1_fu_3034_p1 = 17'd293;
assign mul_ln302_2_fu_3187_p0 = mul_ln302_2_fu_3187_p00;
assign mul_ln302_2_fu_3187_p00 = add_ln302_2_fu_3178_p2;
assign mul_ln302_2_fu_3187_p1 = 17'd293;
assign mul_ln302_fu_2883_p0 = mul_ln302_fu_2883_p00;
assign mul_ln302_fu_2883_p00 = add_ln302_fu_2874_p2;
assign mul_ln302_fu_2883_p1 = 17'd293;
assign mul_ln303_1_fu_3057_p0 = mul_ln303_1_fu_3057_p00;
assign mul_ln303_1_fu_3057_p00 = $unsigned(sext_ln303_1_fu_3050_p1);
assign mul_ln303_1_fu_3057_p1 = 19'd586;
assign mul_ln303_2_fu_3337_p0 = mul_ln303_2_fu_3337_p00;
assign mul_ln303_2_fu_3337_p00 = $unsigned(sext_ln303_2_fu_3330_p1);
assign mul_ln303_2_fu_3337_p1 = 19'd586;
assign mul_ln303_fu_2906_p0 = mul_ln303_fu_2906_p00;
assign mul_ln303_fu_2906_p00 = $unsigned(sext_ln303_fu_2899_p1);
assign mul_ln303_fu_2906_p1 = 19'd586;
assign offset_4_fu_2555_p3 = {{tmp_s_fu_2546_p4}, {1'd1}};
assign offset_5_fu_2578_p3 = {{tmp_67_fu_2569_p4}, {2'd2}};
assign offset_6_fu_2523_p5 = {{zext_ln295_fu_2503_p1[31:3]}, {or_ln9_fu_2515_p3}};
assign offset_fu_2499_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln300_1_fu_2944_p3 = {{tmp_s_reg_3812_pp0_iter3_reg}, {3'd6}};
assign or_ln300_2_fu_3147_p3 = {{tmp_67_reg_3829_pp0_iter4_reg}, {4'd10}};
assign or_ln300_3_fu_3476_p3 = {{tmp_67_reg_3829_pp0_iter4_reg}, {4'd14}};
assign or_ln302_1_fu_3013_p3 = {{tmp_s_reg_3812_pp0_iter4_reg}, {3'd5}};
assign or_ln302_2_fu_3317_p3 = {{tmp_67_reg_3829_pp0_iter4_reg}, {4'd9}};
assign or_ln302_3_fu_3581_p3 = {{tmp_67_reg_3829_pp0_iter4_reg}, {4'd13}};
assign or_ln304_1_fu_3073_p3 = {{tmp_s_reg_3812_pp0_iter4_reg}, {3'd7}};
assign or_ln304_2_fu_3353_p3 = {{tmp_67_reg_3829_pp0_iter4_reg}, {4'd11}};
assign or_ln304_3_fu_3604_p3 = {{tmp_67_reg_3829_pp0_iter4_reg}, {4'd15}};
assign or_ln6_fu_2795_p3 = {{offset_reg_3786_pp0_iter4_reg}, {2'd1}};
assign or_ln7_fu_2812_p3 = {{offset_reg_3786_pp0_iter4_reg}, {2'd3}};
assign or_ln8_fu_2846_p3 = {{tmp_67_reg_3829_pp0_iter3_reg}, {4'd8}};
assign or_ln9_fu_2515_p3 = {{tmp_107_fu_2507_p3}, {2'd3}};
assign or_ln_fu_2676_p3 = {{offset_reg_3786_pp0_iter3_reg}, {2'd2}};
assign sext_ln303_1_fu_3050_p1 = $signed(add_ln303_1_reg_4075);
assign sext_ln303_2_fu_3330_p1 = $signed(add_ln303_2_reg_4238);
assign sext_ln303_fu_2899_p1 = $signed(add_ln303_reg_3973);
assign shl_ln298_1_fu_2713_p3 = {{tmp_s_reg_3812_pp0_iter3_reg}, {3'd4}};
assign shl_ln298_2_fu_2862_p3 = {{tmp_67_reg_3829_pp0_iter3_reg}, {4'd12}};
assign shl_ln6_fu_2657_p3 = {{offset_reg_3786_pp0_iter3_reg}, {2'd0}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_d1 = smem_10_d1_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_10_we1 = smem_10_we1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_d1 = smem_11_d1_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_11_we1 = smem_11_we1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = smem_12_address1_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_d1 = smem_12_d1_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_12_we1 = smem_12_we1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_d1 = smem_7_d1_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_7_we1 = smem_7_we1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_d1 = smem_8_d1_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_8_we1 = smem_8_we1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_d1 = smem_9_d1_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_9_we1 = smem_9_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_101_fu_3458_p1 = grp_fu_3741_p3;
assign tmp_105_fu_3467_p1 = grp_fu_3750_p3;
assign tmp_106_fu_3561_p1 = grp_fu_3759_p3;
assign tmp_106_fu_3561_p4 = {{tmp_106_fu_3561_p1[20:13]}};
assign tmp_107_fu_2507_p3 = ap_sig_allocacmp_tid_3[32'd2];
assign tmp_67_fu_2569_p4 = {{tid_3_reg_3775[5:2]}};
assign tmp_85_fu_2976_p1 = grp_fu_3688_p3;
assign tmp_89_fu_2985_p1 = grp_fu_3697_p3;
assign tmp_90_fu_3107_p1 = grp_fu_3706_p3;
assign tmp_93_fu_3116_p1 = grp_fu_3715_p3;
assign tmp_97_fu_3299_p1 = grp_fu_3724_p3;
assign tmp_98_fu_3308_p1 = grp_fu_3732_p3;
assign tmp_s_fu_2546_p4 = {{tid_3_reg_3775[5:1]}};
assign trunc_ln172_4_fu_2606_p1 = grp_fu_2563_p2[2:0];
assign trunc_ln172_5_fu_2610_p1 = grp_fu_2586_p2[2:0];
assign trunc_ln172_6_fu_3103_p1 = grp_fu_2535_p2[2:0];
assign trunc_ln172_fu_2602_p1 = grp_fu_2541_p2[2:0];
assign zext_ln172_16_fu_2632_p1 = offset_reg_3786_pp0_iter3_reg;
assign zext_ln172_17_fu_2635_p1 = offset_reg_3786_pp0_iter3_reg;
assign zext_ln172_20_fu_2824_p1 = offset_4_reg_3820_pp0_iter3_reg;
assign zext_ln172_21_fu_2827_p1 = offset_4_reg_3820_pp0_iter3_reg;
assign zext_ln172_24_fu_3085_p1 = offset_5_reg_3841_pp0_iter3_reg;
assign zext_ln172_25_fu_3088_p1 = offset_5_reg_3841_pp0_iter3_reg;
assign zext_ln172_27_fu_2858_p1 = offset_6_reg_3799_pp0_iter4_reg;
assign zext_ln172_3_fu_2747_p1 = tmp_83_reg_3888;
assign zext_ln172_4_fu_2830_p1 = tmp_91_reg_3923;
assign zext_ln172_5_fu_2966_p1 = tmp_99_reg_3938;
assign zext_ln172_6_fu_3208_p1 = reg_2419;
assign zext_ln295_fu_2503_p1 = offset_fu_2499_p1;
assign zext_ln298_1_fu_2720_p1 = shl_ln298_1_fu_2713_p3;
assign zext_ln298_2_fu_2853_p1 = or_ln8_fu_2846_p3;
assign zext_ln298_3_fu_2869_p1 = shl_ln298_2_fu_2862_p3;
assign zext_ln298_fu_2664_p1 = shl_ln6_fu_2657_p3;
assign zext_ln299_1_fu_3388_p1 = tmp_92_reg_4055;
assign zext_ln299_2_fu_3501_p1 = tmp_100_reg_4213;
assign zext_ln299_3_fu_3617_p1 = reg_2419;
assign zext_ln299_7_fu_3365_p1 = add_ln299_3_reg_4243;
assign zext_ln299_fu_3229_p1 = tmp_84_reg_3953;
assign zext_ln300_11_fu_3369_p1 = add_ln300_3_reg_4248;
assign zext_ln300_1_fu_3398_p1 = tmp_93_reg_4193;
assign zext_ln300_2_fu_3511_p1 = tmp_101_reg_4351;
assign zext_ln300_3_fu_3628_p1 = tmp_110_reg_4376;
assign zext_ln300_4_fu_2683_p1 = or_ln_fu_2676_p3;
assign zext_ln300_5_fu_2951_p1 = or_ln300_1_fu_2944_p3;
assign zext_ln300_6_fu_3154_p1 = or_ln300_2_fu_3147_p3;
assign zext_ln300_7_fu_3483_p1 = or_ln300_3_fu_3476_p3;
assign zext_ln300_fu_3239_p1 = tmp_85_reg_4080;
assign zext_ln301_1_fu_3408_p1 = tmp_94_reg_4100;
assign zext_ln301_2_fu_3521_p1 = tmp_102_reg_4228;
assign zext_ln301_3_fu_3638_p1 = tmp_111_reg_4401;
assign zext_ln301_7_fu_3489_p1 = add_ln301_3_reg_4336;
assign zext_ln301_fu_3249_p1 = tmp_86_reg_3958;
assign zext_ln302_11_fu_3493_p1 = add_ln302_3_reg_4341;
assign zext_ln302_1_fu_3418_p1 = tmp_95_reg_4110;
assign zext_ln302_2_fu_3531_p1 = tmp_103_reg_4233;
assign zext_ln302_3_fu_3648_p1 = tmp_112_reg_4411;
assign zext_ln302_4_fu_2802_p1 = or_ln6_fu_2795_p3;
assign zext_ln302_5_fu_3020_p1 = or_ln302_1_fu_3013_p3;
assign zext_ln302_6_fu_3324_p1 = or_ln302_2_fu_3317_p3;
assign zext_ln302_7_fu_3588_p1 = or_ln302_3_fu_3581_p3;
assign zext_ln302_fu_3259_p1 = tmp_87_reg_4040;
assign zext_ln303_1_fu_3428_p1 = tmp_96_reg_4120;
assign zext_ln303_2_fu_3541_p1 = tmp_104_reg_4311;
assign zext_ln303_3_fu_3658_p1 = tmp_113_reg_4421;
assign zext_ln303_fu_3269_p1 = tmp_88_reg_4045;
assign zext_ln304_11_fu_2624_p1 = add_ln304_3_reg_3862;
assign zext_ln304_1_fu_3438_p1 = tmp_97_reg_4286;
assign zext_ln304_2_fu_3551_p1 = tmp_105_reg_4361;
assign zext_ln304_3_fu_3668_p1 = tmp_114_reg_3943;
assign zext_ln304_4_fu_2819_p1 = or_ln7_fu_2812_p3;
assign zext_ln304_5_fu_3080_p1 = or_ln304_1_fu_3073_p3;
assign zext_ln304_6_fu_3360_p1 = or_ln304_2_fu_3353_p3;
assign zext_ln304_7_fu_3611_p1 = or_ln304_3_fu_3604_p3;
assign zext_ln304_fu_3279_p1 = tmp_89_reg_4090;
assign zext_ln305_1_fu_3448_p1 = tmp_98_reg_4291;
assign zext_ln305_2_fu_3570_p1 = tmp_106_fu_3561_p4;
assign zext_ln305_3_fu_3678_p1 = tmp_115_reg_3948;
assign zext_ln305_7_fu_2628_p1 = add_ln305_3_reg_3867;
assign zext_ln305_fu_3289_p1 = tmp_90_reg_4188;
always @ (posedge ap_clk) begin
    offset_4_reg_3820[0] <= 1'b1;
    offset_4_reg_3820_pp0_iter1_reg[0] <= 1'b1;
    offset_4_reg_3820_pp0_iter2_reg[0] <= 1'b1;
    offset_4_reg_3820_pp0_iter3_reg[0] <= 1'b1;
    offset_5_reg_3841[1:0] <= 2'b10;
    offset_5_reg_3841_pp0_iter1_reg[1:0] <= 2'b10;
    offset_5_reg_3841_pp0_iter2_reg[1:0] <= 2'b10;
    offset_5_reg_3841_pp0_iter3_reg[1:0] <= 2'b10;
    offset_5_reg_3841_pp0_iter4_reg[1:0] <= 2'b10;
    zext_ln172_16_reg_3882[7:6] <= 2'b00;
    zext_ln300_4_reg_3908[1:0] <= 2'b10;
    zext_ln300_4_reg_3908[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_1_reg_3928[2:0] <= 3'b100;
    zext_ln298_1_reg_3928[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln302_4_reg_3963[1:0] <= 2'b01;
    zext_ln302_4_reg_3963[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_4_reg_3978[1:0] <= 2'b11;
    zext_ln304_4_reg_3978[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_20_reg_3988[0] <= 1'b1;
    zext_ln172_20_reg_3988[7:6] <= 2'b00;
    zext_ln172_21_reg_3994[0] <= 1'b1;
    zext_ln172_21_reg_3994[8:6] <= 3'b000;
    add_ln299_1_reg_4000[0] <= 1'b1;
    zext_ln298_2_reg_4005[3:0] <= 4'b1000;
    zext_ln298_2_reg_4005[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_3_reg_4020[3:0] <= 4'b1100;
    zext_ln298_3_reg_4020[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln300_5_reg_4060[2:0] <= 3'b110;
    zext_ln300_5_reg_4060[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln301_1_reg_4070[0] <= 1'b1;
    add_ln303_1_reg_4075[0] <= 1'b1;
    zext_ln302_5_reg_4105[2:0] <= 3'b101;
    zext_ln302_5_reg_4105[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_5_reg_4125[2:0] <= 3'b111;
    zext_ln304_5_reg_4125[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_24_reg_4135[1:0] <= 2'b10;
    zext_ln172_24_reg_4135[7:6] <= 2'b00;
    add_ln299_2_reg_4141[1:0] <= 2'b10;
    add_ln301_2_reg_4146[1:0] <= 2'b10;
    zext_ln300_6_reg_4218[3:0] <= 4'b1010;
    zext_ln300_6_reg_4218[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    add_ln303_2_reg_4238[1:0] <= 2'b10;
    zext_ln304_6_reg_4316[3:0] <= 4'b1011;
    zext_ln304_6_reg_4316[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 