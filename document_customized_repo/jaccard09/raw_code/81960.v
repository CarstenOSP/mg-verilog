module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
output   smem_6_we1;
output  [63:0] smem_6_d1;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [6:0] smem_5_address1;
output   smem_5_ce1;
output   smem_5_we1;
output  [63:0] smem_5_d1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
output   smem_4_we1;
output  [63:0] smem_4_d1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [6:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_3681;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_2335;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_2346;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_2365;
reg   [63:0] reg_2384;
reg   [6:0] tid_3_reg_3673;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] offset_fu_2418_p1;
reg   [5:0] offset_reg_3685;
reg   [5:0] offset_reg_3685_pp0_iter1_reg;
wire   [4:0] tmp_s_fu_2428_p4;
reg   [4:0] tmp_s_reg_3695;
reg   [4:0] tmp_s_reg_3695_pp0_iter1_reg;
wire   [5:0] offset_4_fu_2437_p3;
reg   [5:0] offset_4_reg_3701;
reg   [5:0] offset_4_reg_3701_pp0_iter1_reg;
wire   [3:0] tmp_54_fu_2451_p4;
reg   [3:0] tmp_54_reg_3710;
reg   [3:0] tmp_54_reg_3710_pp0_iter1_reg;
reg   [3:0] tmp_54_reg_3710_pp0_iter2_reg;
wire   [5:0] offset_5_fu_2460_p3;
reg   [5:0] offset_5_reg_3717;
reg   [5:0] offset_5_reg_3717_pp0_iter1_reg;
wire   [5:0] offset_6_fu_2474_p3;
reg   [5:0] offset_6_reg_3726;
reg   [5:0] offset_6_reg_3726_pp0_iter1_reg;
wire   [7:0] zext_ln172_12_fu_2497_p1;
reg   [7:0] zext_ln172_12_reg_3735;
wire   [8:0] zext_ln172_13_fu_2500_p1;
reg   [8:0] zext_ln172_13_reg_3740;
reg   [3:0] tmp_121_reg_3746;
wire   [63:0] zext_ln298_fu_2527_p1;
reg   [63:0] zext_ln298_reg_3751;
wire   [63:0] zext_ln300_4_fu_2541_p1;
reg   [63:0] zext_ln300_4_reg_3761;
wire   [7:0] add_ln303_fu_2546_p2;
reg   [7:0] add_ln303_reg_3778;
reg   [3:0] tmp_129_reg_3788;
wire   [6:0] shl_ln298_1_fu_2571_p3;
reg   [6:0] shl_ln298_1_reg_3793;
wire   [63:0] zext_ln298_1_fu_2578_p1;
reg   [63:0] zext_ln298_1_reg_3799;
reg   [63:0] zext_ln298_1_reg_3799_pp0_iter2_reg;
reg   [63:0] DATA_x_load_reg_3811;
reg   [5:0] tmp_125_reg_3822;
reg   [6:0] tmp_126_reg_3827;
wire   [7:0] zext_ln172_16_fu_2634_p1;
reg   [7:0] zext_ln172_16_reg_3832;
wire   [8:0] zext_ln172_17_fu_2637_p1;
reg   [8:0] zext_ln172_17_reg_3837;
wire   [8:0] add_ln301_1_fu_2640_p2;
reg   [8:0] add_ln301_1_reg_3843;
wire   [7:0] add_ln303_1_fu_2646_p2;
reg   [7:0] add_ln303_1_reg_3848;
wire   [63:0] zext_ln298_2_fu_2657_p1;
reg   [63:0] zext_ln298_2_reg_3853;
reg   [63:0] zext_ln298_2_reg_3853_pp0_iter2_reg;
wire   [63:0] zext_ln298_3_fu_2669_p1;
reg   [63:0] zext_ln298_3_reg_3865;
reg   [63:0] zext_ln298_3_reg_3865_pp0_iter2_reg;
reg   [63:0] DATA_x_load_2_reg_3877;
reg   [63:0] DATA_x_2_load_reg_3888;
reg   [63:0] DATA_x_2_load_1_reg_3899;
reg   [63:0] DATA_x_3_load_reg_3910;
reg   [6:0] tmp_132_reg_3926;
reg   [5:0] tmp_133_reg_3931;
reg   [6:0] tmp_134_reg_3936;
wire   [8:0] zext_ln172_21_fu_2744_p1;
reg   [8:0] zext_ln172_21_reg_3941;
wire   [8:0] add_ln301_2_fu_2747_p2;
reg   [8:0] add_ln301_2_reg_3947;
reg   [63:0] DATA_x_load_4_reg_3952;
reg   [63:0] DATA_x_load_6_reg_3963;
wire   [2:0] trunc_ln172_fu_2753_p1;
reg   [2:0] trunc_ln172_reg_3974;
reg   [5:0] tmp_123_reg_3978;
reg   [6:0] tmp_127_reg_3983;
wire   [7:0] zext_ln172_20_fu_2775_p1;
reg   [7:0] zext_ln172_20_reg_3988;
wire   [63:0] zext_ln300_6_fu_2783_p1;
reg   [63:0] zext_ln300_6_reg_3993;
reg   [6:0] tmp_140_reg_4005;
reg   [5:0] tmp_141_reg_4010;
wire   [8:0] zext_ln172_25_fu_2833_p1;
reg   [8:0] zext_ln172_25_reg_4015;
wire   [8:0] add_ln299_3_fu_2836_p2;
reg   [8:0] add_ln299_3_reg_4020;
reg   [63:0] DATA_x_load_1_reg_4025;
wire   [8:0] add_ln301_3_fu_2842_p2;
reg   [8:0] add_ln301_3_reg_4036;
reg   [7:0] tmp_128_reg_4041;
wire   [2:0] trunc_ln172_4_fu_2857_p1;
reg   [2:0] trunc_ln172_4_reg_4046;
reg   [5:0] tmp_131_reg_4050;
wire   [7:0] zext_ln172_24_fu_2873_p1;
reg   [7:0] zext_ln172_24_reg_4055;
reg   [6:0] tmp_146_reg_4061;
reg   [63:0] DATA_x_load_5_reg_4066;
reg   [6:0] tmp_148_reg_4077;
reg   [6:0] tmp_135_reg_4082;
wire    ap_block_pp0_stage5_11001;
reg   [7:0] tmp_136_reg_4087;
wire   [2:0] trunc_ln172_5_fu_2932_p1;
reg   [2:0] trunc_ln172_5_reg_4092;
wire   [8:0] add_ln299_fu_2949_p2;
reg   [8:0] add_ln299_reg_4101;
wire   [8:0] add_ln301_fu_2954_p2;
reg   [8:0] add_ln301_reg_4111;
reg   [3:0] tmp_137_reg_4121;
reg   [5:0] tmp_139_reg_4126;
reg   [6:0] tmp_143_reg_4131;
reg   [3:0] tmp_145_reg_4136;
wire   [2:0] trunc_ln172_6_fu_3055_p1;
reg   [2:0] trunc_ln172_6_reg_4141;
reg   [6:0] tmp_122_reg_4145;
reg   [6:0] tmp_124_reg_4150;
wire   [8:0] add_ln299_1_fu_3097_p2;
reg   [8:0] add_ln299_1_reg_4160;
wire   [63:0] zext_ln300_5_fu_3109_p1;
reg   [63:0] zext_ln300_5_reg_4165;
reg   [7:0] tmp_144_reg_4195;
reg   [5:0] tmp_147_reg_4200;
reg   [63:0] DATA_x_1_load_1_reg_4205;
reg   [6:0] tmp_130_reg_4216;
wire   [8:0] add_ln299_2_fu_3243_p2;
reg   [8:0] add_ln299_2_reg_4231;
wire   [7:0] add_ln303_2_fu_3248_p2;
reg   [7:0] add_ln303_2_reg_4251;
reg   [6:0] tmp_151_reg_4266;
reg   [7:0] tmp_152_reg_4271;
reg   [6:0] tmp_138_reg_4276;
reg   [6:0] tmp_142_reg_4281;
wire   [7:0] add_ln303_3_fu_3398_p2;
reg   [7:0] add_ln303_3_reg_4311;
reg   [5:0] tmp_149_reg_4326;
reg   [6:0] tmp_150_reg_4331;
reg   [63:0] DATA_x_2_load_7_reg_4336;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_6_fu_2939_p1;
wire   [63:0] zext_ln302_fu_2959_p1;
wire   [63:0] zext_ln303_fu_2969_p1;
wire   [63:0] zext_ln304_fu_2979_p1;
wire   [63:0] zext_ln172_7_fu_2989_p1;
wire   [63:0] zext_ln172_8_fu_3116_p1;
wire   [63:0] zext_ln172_9_fu_3135_p1;
wire   [63:0] zext_ln299_fu_3154_p1;
wire   [63:0] zext_ln300_fu_3164_p1;
wire   [63:0] zext_ln301_fu_3174_p1;
wire   [63:0] zext_ln305_fu_3184_p1;
wire   [63:0] zext_ln301_1_fu_3213_p1;
wire   [63:0] zext_ln302_1_fu_3223_p1;
wire   [63:0] zext_ln303_1_fu_3233_p1;
wire   [63:0] zext_ln299_1_fu_3271_p1;
wire   [63:0] zext_ln300_1_fu_3281_p1;
wire   [63:0] zext_ln304_1_fu_3291_p1;
wire   [63:0] zext_ln305_1_fu_3301_p1;
wire   [63:0] zext_ln300_2_fu_3330_p1;
wire   [63:0] zext_ln301_2_fu_3340_p1;
wire   [63:0] zext_ln302_2_fu_3350_p1;
wire   [63:0] zext_ln300_7_fu_3390_p1;
wire   [63:0] zext_ln299_2_fu_3403_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln303_2_fu_3413_p1;
wire   [63:0] zext_ln304_2_fu_3423_p1;
wire   [63:0] zext_ln305_2_fu_3433_p1;
wire   [63:0] zext_ln299_3_fu_3443_p1;
wire   [63:0] zext_ln300_3_fu_3453_p1;
wire   [63:0] zext_ln301_3_fu_3463_p1;
wire   [63:0] zext_ln302_3_fu_3521_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln303_3_fu_3531_p1;
wire   [63:0] zext_ln304_3_fu_3541_p1;
wire   [63:0] zext_ln305_3_fu_3551_p1;
reg   [6:0] tid_fu_142;
wire   [6:0] add_ln294_fu_2487_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    smem_6_we1_local;
reg   [63:0] smem_6_d1_local;
reg    smem_6_ce1_local;
reg   [6:0] smem_6_address1_local;
wire   [5:0] grp_fu_2422_p0;
wire   [3:0] grp_fu_2422_p1;
wire   [5:0] grp_fu_2445_p0;
wire   [3:0] grp_fu_2445_p1;
wire   [5:0] grp_fu_2468_p0;
wire   [3:0] grp_fu_2468_p1;
wire   [5:0] grp_fu_2481_p0;
wire   [3:0] grp_fu_2481_p1;
wire   [5:0] mul_ln172_fu_2506_p0;
wire   [7:0] mul_ln172_fu_2506_p1;
wire   [12:0] mul_ln172_fu_2506_p2;
wire   [6:0] shl_ln298_fu_2522_p2;
wire   [6:0] or_ln_fu_2534_p3;
wire   [5:0] mul_ln172_4_fu_2555_p0;
wire   [7:0] mul_ln172_4_fu_2555_p1;
wire   [12:0] mul_ln172_4_fu_2555_p2;
wire   [7:0] add_ln302_fu_2586_p2;
wire   [7:0] mul_ln302_fu_2595_p0;
wire   [9:0] mul_ln302_fu_2595_p1;
wire   [16:0] mul_ln302_fu_2595_p2;
wire  signed [8:0] sext_ln303_fu_2611_p1;
wire   [8:0] mul_ln303_fu_2618_p0;
wire   [10:0] mul_ln303_fu_2618_p1;
wire   [18:0] mul_ln303_fu_2618_p2;
wire   [6:0] add_ln298_fu_2652_p2;
wire   [6:0] or_ln4_fu_2662_p3;
wire   [8:0] mul_ln301_1_fu_2680_p0;
wire   [10:0] mul_ln301_1_fu_2680_p1;
wire   [18:0] mul_ln301_1_fu_2680_p2;
wire   [7:0] add_ln302_1_fu_2696_p2;
wire   [7:0] mul_ln302_1_fu_2705_p0;
wire   [9:0] mul_ln302_1_fu_2705_p1;
wire   [16:0] mul_ln302_1_fu_2705_p2;
wire  signed [8:0] sext_ln303_1_fu_2721_p1;
wire   [8:0] mul_ln303_1_fu_2728_p0;
wire   [10:0] mul_ln303_1_fu_2728_p1;
wire   [18:0] mul_ln303_1_fu_2728_p2;
wire   [2:0] grp_fu_2422_p2;
wire   [16:0] tmp_123_fu_2757_p1;
wire  signed [16:0] grp_fu_3561_p3;
wire   [18:0] tmp_127_fu_2766_p1;
wire  signed [18:0] grp_fu_3570_p3;
wire   [6:0] add_ln300_2_fu_2778_p2;
wire   [8:0] mul_ln301_2_fu_2791_p0;
wire   [10:0] mul_ln301_2_fu_2791_p1;
wire   [18:0] mul_ln301_2_fu_2791_p2;
wire   [7:0] add_ln302_2_fu_2807_p2;
wire   [7:0] mul_ln302_2_fu_2817_p0;
wire   [9:0] mul_ln302_2_fu_2817_p1;
wire   [16:0] mul_ln302_2_fu_2817_p2;
wire   [20:0] tmp_128_fu_2848_p1;
wire  signed [20:0] grp_fu_3579_p3;
wire   [2:0] grp_fu_2445_p2;
wire   [16:0] tmp_131_fu_2861_p1;
wire  signed [16:0] grp_fu_3588_p3;
wire   [8:0] mul_ln299_3_fu_2879_p0;
wire   [10:0] mul_ln299_3_fu_2879_p1;
wire   [18:0] mul_ln299_3_fu_2879_p2;
wire   [8:0] mul_ln301_3_fu_2898_p0;
wire   [10:0] mul_ln301_3_fu_2898_p1;
wire   [18:0] mul_ln301_3_fu_2898_p2;
wire   [18:0] tmp_135_fu_2914_p1;
wire  signed [18:0] grp_fu_3597_p3;
wire   [20:0] tmp_136_fu_2923_p1;
wire  signed [20:0] grp_fu_3605_p3;
wire   [2:0] grp_fu_2468_p2;
wire   [5:0] mul_ln172_5_fu_3002_p0;
wire   [7:0] mul_ln172_5_fu_3002_p1;
wire   [12:0] mul_ln172_5_fu_3002_p2;
wire   [16:0] tmp_139_fu_3018_p1;
wire  signed [16:0] grp_fu_3614_p3;
wire   [18:0] tmp_143_fu_3027_p1;
wire  signed [18:0] grp_fu_3623_p3;
wire   [5:0] mul_ln172_6_fu_3039_p0;
wire   [7:0] mul_ln172_6_fu_3039_p1;
wire   [12:0] mul_ln172_6_fu_3039_p2;
wire   [2:0] grp_fu_2481_p2;
wire   [8:0] mul_ln299_fu_3062_p0;
wire   [10:0] mul_ln299_fu_3062_p1;
wire   [18:0] mul_ln299_fu_3062_p2;
wire   [8:0] mul_ln301_fu_3081_p0;
wire   [10:0] mul_ln301_fu_3081_p1;
wire   [18:0] mul_ln301_fu_3081_p2;
wire   [6:0] or_ln300_1_fu_3102_p3;
wire   [20:0] tmp_144_fu_3126_p1;
wire  signed [20:0] grp_fu_3631_p3;
wire   [16:0] tmp_147_fu_3145_p1;
wire  signed [16:0] grp_fu_3640_p3;
wire   [8:0] mul_ln299_1_fu_3197_p0;
wire   [10:0] mul_ln299_1_fu_3197_p1;
wire   [18:0] mul_ln299_1_fu_3197_p2;
wire   [18:0] tmp_151_fu_3253_p1;
wire  signed [18:0] grp_fu_3649_p3;
wire   [20:0] tmp_152_fu_3262_p1;
wire  signed [20:0] grp_fu_3657_p3;
wire   [8:0] mul_ln299_2_fu_3314_p0;
wire   [10:0] mul_ln299_2_fu_3314_p1;
wire   [18:0] mul_ln299_2_fu_3314_p2;
wire  signed [8:0] sext_ln303_2_fu_3360_p1;
wire   [8:0] mul_ln303_2_fu_3367_p0;
wire   [10:0] mul_ln303_2_fu_3367_p1;
wire   [18:0] mul_ln303_2_fu_3367_p2;
wire   [6:0] or_ln300_2_fu_3383_p3;
wire   [7:0] add_ln302_3_fu_3473_p2;
wire   [7:0] mul_ln302_3_fu_3482_p0;
wire   [9:0] mul_ln302_3_fu_3482_p1;
wire   [16:0] mul_ln302_3_fu_3482_p2;
wire  signed [8:0] sext_ln303_3_fu_3498_p1;
wire   [8:0] mul_ln303_3_fu_3505_p0;
wire   [10:0] mul_ln303_3_fu_3505_p1;
wire   [18:0] mul_ln303_3_fu_3505_p2;
wire   [5:0] grp_fu_3561_p0;
wire   [6:0] grp_fu_3561_p1;
wire   [8:0] grp_fu_3561_p2;
wire   [5:0] grp_fu_3570_p0;
wire   [7:0] grp_fu_3570_p1;
wire   [9:0] grp_fu_3570_p2;
wire   [5:0] grp_fu_3579_p0;
wire   [8:0] grp_fu_3579_p1;
wire   [10:0] grp_fu_3579_p2;
wire   [5:0] grp_fu_3588_p0;
wire   [6:0] grp_fu_3588_p1;
wire   [8:0] grp_fu_3588_p2;
wire   [5:0] grp_fu_3597_p0;
wire   [7:0] grp_fu_3597_p1;
wire   [9:0] grp_fu_3597_p2;
wire   [5:0] grp_fu_3605_p0;
wire   [8:0] grp_fu_3605_p1;
wire   [10:0] grp_fu_3605_p2;
wire   [5:0] grp_fu_3614_p0;
wire   [6:0] grp_fu_3614_p1;
wire   [8:0] grp_fu_3614_p2;
wire   [5:0] grp_fu_3623_p0;
wire   [7:0] grp_fu_3623_p1;
wire   [9:0] grp_fu_3623_p2;
wire   [5:0] grp_fu_3631_p0;
wire   [8:0] grp_fu_3631_p1;
wire   [10:0] grp_fu_3631_p2;
wire   [5:0] grp_fu_3640_p0;
wire   [6:0] grp_fu_3640_p1;
wire   [8:0] grp_fu_3640_p2;
wire   [5:0] grp_fu_3649_p0;
wire   [7:0] grp_fu_3649_p1;
wire   [9:0] grp_fu_3649_p2;
wire   [5:0] grp_fu_3657_p0;
wire   [8:0] grp_fu_3657_p1;
wire   [10:0] grp_fu_3657_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] grp_fu_3570_p00;
wire   [9:0] grp_fu_3579_p00;
wire   [9:0] grp_fu_3605_p00;
wire   [9:0] grp_fu_3631_p00;
wire   [7:0] grp_fu_3640_p00;
wire   [9:0] grp_fu_3657_p00;
wire   [12:0] mul_ln172_4_fu_2555_p00;
wire   [12:0] mul_ln172_5_fu_3002_p00;
wire   [12:0] mul_ln172_6_fu_3039_p00;
wire   [12:0] mul_ln172_fu_2506_p00;
wire   [18:0] mul_ln299_1_fu_3197_p00;
wire   [18:0] mul_ln299_2_fu_3314_p00;
wire   [18:0] mul_ln299_3_fu_2879_p00;
wire   [18:0] mul_ln299_fu_3062_p00;
wire   [18:0] mul_ln301_1_fu_2680_p00;
wire   [18:0] mul_ln301_2_fu_2791_p00;
wire   [18:0] mul_ln301_3_fu_2898_p00;
wire   [18:0] mul_ln301_fu_3081_p00;
wire   [16:0] mul_ln302_1_fu_2705_p00;
wire   [16:0] mul_ln302_2_fu_2817_p00;
wire   [16:0] mul_ln302_3_fu_3482_p00;
wire   [16:0] mul_ln302_fu_2595_p00;
wire   [18:0] mul_ln303_1_fu_2728_p00;
wire   [18:0] mul_ln303_2_fu_3367_p00;
wire   [18:0] mul_ln303_3_fu_3505_p00;
wire   [18:0] mul_ln303_fu_2618_p00;
reg    ap_condition_2250;
reg    ap_condition_2254;
reg    ap_condition_2258;
reg    ap_condition_2262;
reg    ap_condition_2266;
reg    ap_condition_2270;
reg    ap_condition_2274;
reg    ap_condition_2277;
reg    ap_condition_2281;
reg    ap_condition_2285;
reg    ap_condition_2289;
reg    ap_condition_2292;
reg    ap_condition_2296;
reg    ap_condition_2300;
reg    ap_condition_2304;
reg    ap_condition_2308;
reg    ap_condition_2312;
reg    ap_condition_2316;
reg    ap_condition_2320;
reg    ap_condition_2324;
reg    ap_condition_2328;
reg    ap_condition_2331;
reg    ap_condition_2335;
reg    ap_condition_2339;
reg    ap_condition_2343;
reg    ap_condition_2347;
reg    ap_condition_2351;
reg    ap_condition_2355;
reg    ap_condition_2359;
reg    ap_condition_2363;
reg    ap_condition_2367;
reg    ap_condition_2371;
reg    ap_condition_2375;
reg    ap_condition_2378;
reg    ap_condition_2382;
reg    ap_condition_2386;
reg    ap_condition_2390;
reg    ap_condition_2393;
reg    ap_condition_2397;
reg    ap_condition_2401;
reg    ap_condition_2405;
reg    ap_condition_2409;
reg    ap_condition_2413;
reg    ap_condition_2417;
reg    ap_condition_2421;
reg    ap_condition_2425;
reg    ap_condition_2429;
reg    ap_condition_2433;
reg    ap_condition_2436;
reg    ap_condition_2440;
reg    ap_condition_2444;
reg    ap_condition_2448;
reg    ap_condition_2452;
reg    ap_condition_2456;
reg    ap_condition_2460;
reg    ap_condition_2464;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_142 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U363(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2422_p0),.din1(grp_fu_2422_p1),.ce(1'b1),.dout(grp_fu_2422_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U364(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2445_p0),.din1(grp_fu_2445_p1),.ce(1'b1),.dout(grp_fu_2445_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U365(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2468_p0),.din1(grp_fu_2468_p1),.ce(1'b1),.dout(grp_fu_2468_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U366(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2481_p0),.din1(grp_fu_2481_p1),.ce(1'b1),.dout(grp_fu_2481_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U367(.din0(mul_ln172_fu_2506_p0),.din1(mul_ln172_fu_2506_p1),.dout(mul_ln172_fu_2506_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U368(.din0(mul_ln172_4_fu_2555_p0),.din1(mul_ln172_4_fu_2555_p1),.dout(mul_ln172_4_fu_2555_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U369(.din0(mul_ln302_fu_2595_p0),.din1(mul_ln302_fu_2595_p1),.dout(mul_ln302_fu_2595_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U370(.din0(mul_ln303_fu_2618_p0),.din1(mul_ln303_fu_2618_p1),.dout(mul_ln303_fu_2618_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U371(.din0(mul_ln301_1_fu_2680_p0),.din1(mul_ln301_1_fu_2680_p1),.dout(mul_ln301_1_fu_2680_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U372(.din0(mul_ln302_1_fu_2705_p0),.din1(mul_ln302_1_fu_2705_p1),.dout(mul_ln302_1_fu_2705_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U373(.din0(mul_ln303_1_fu_2728_p0),.din1(mul_ln303_1_fu_2728_p1),.dout(mul_ln303_1_fu_2728_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U374(.din0(mul_ln301_2_fu_2791_p0),.din1(mul_ln301_2_fu_2791_p1),.dout(mul_ln301_2_fu_2791_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U375(.din0(mul_ln302_2_fu_2817_p0),.din1(mul_ln302_2_fu_2817_p1),.dout(mul_ln302_2_fu_2817_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U376(.din0(mul_ln299_3_fu_2879_p0),.din1(mul_ln299_3_fu_2879_p1),.dout(mul_ln299_3_fu_2879_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U377(.din0(mul_ln301_3_fu_2898_p0),.din1(mul_ln301_3_fu_2898_p1),.dout(mul_ln301_3_fu_2898_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U378(.din0(mul_ln172_5_fu_3002_p0),.din1(mul_ln172_5_fu_3002_p1),.dout(mul_ln172_5_fu_3002_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U379(.din0(mul_ln172_6_fu_3039_p0),.din1(mul_ln172_6_fu_3039_p1),.dout(mul_ln172_6_fu_3039_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U380(.din0(mul_ln299_fu_3062_p0),.din1(mul_ln299_fu_3062_p1),.dout(mul_ln299_fu_3062_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U381(.din0(mul_ln301_fu_3081_p0),.din1(mul_ln301_fu_3081_p1),.dout(mul_ln301_fu_3081_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U382(.din0(mul_ln299_1_fu_3197_p0),.din1(mul_ln299_1_fu_3197_p1),.dout(mul_ln299_1_fu_3197_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U383(.din0(mul_ln299_2_fu_3314_p0),.din1(mul_ln299_2_fu_3314_p1),.dout(mul_ln299_2_fu_3314_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U384(.din0(mul_ln303_2_fu_3367_p0),.din1(mul_ln303_2_fu_3367_p1),.dout(mul_ln303_2_fu_3367_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U385(.din0(mul_ln302_3_fu_3482_p0),.din1(mul_ln302_3_fu_3482_p1),.dout(mul_ln302_3_fu_3482_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U386(.din0(mul_ln303_3_fu_3505_p0),.din1(mul_ln303_3_fu_3505_p1),.dout(mul_ln303_3_fu_3505_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U387(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3561_p0),.din1(grp_fu_3561_p1),.din2(grp_fu_3561_p2),.ce(1'b1),.dout(grp_fu_3561_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U388(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3570_p0),.din1(grp_fu_3570_p1),.din2(grp_fu_3570_p2),.ce(1'b1),.dout(grp_fu_3570_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U389(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3579_p0),.din1(grp_fu_3579_p1),.din2(grp_fu_3579_p2),.ce(1'b1),.dout(grp_fu_3579_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U390(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3588_p0),.din1(grp_fu_3588_p1),.din2(grp_fu_3588_p2),.ce(1'b1),.dout(grp_fu_3588_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U391(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3597_p0),.din1(grp_fu_3597_p1),.din2(grp_fu_3597_p2),.ce(1'b1),.dout(grp_fu_3597_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U392(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3605_p0),.din1(grp_fu_3605_p1),.din2(grp_fu_3605_p2),.ce(1'b1),.dout(grp_fu_3605_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U393(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3614_p0),.din1(grp_fu_3614_p1),.din2(grp_fu_3614_p2),.ce(1'b1),.dout(grp_fu_3614_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U394(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3623_p0),.din1(grp_fu_3623_p1),.din2(grp_fu_3623_p2),.ce(1'b1),.dout(grp_fu_3623_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U395(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3631_p0),.din1(grp_fu_3631_p1),.din2(grp_fu_3631_p2),.ce(1'b1),.dout(grp_fu_3631_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U396(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3640_p0),.din1(grp_fu_3640_p1),.din2(grp_fu_3640_p2),.ce(1'b1),.dout(grp_fu_3640_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U397(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3649_p0),.din1(grp_fu_3649_p1),.din2(grp_fu_3649_p2),.ce(1'b1),.dout(grp_fu_3649_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U398(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3657_p0),.din1(grp_fu_3657_p1),.din2(grp_fu_3657_p2),.ce(1'b1),.dout(grp_fu_3657_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_2346 <= DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2346 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_2365 <= DATA_x_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2365 <= DATA_x_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_142 <= 7'd0;
    end else if (((tmp_reg_3681 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tid_fu_142 <= add_ln294_fu_2487_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_1_reg_4205 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_load_1_reg_3899 <= DATA_x_2_q0;
        DATA_x_2_load_reg_3888 <= DATA_x_2_q1;
        DATA_x_3_load_reg_3910 <= DATA_x_3_q1;
        DATA_x_load_2_reg_3877 <= DATA_x_q0;
        DATA_x_load_reg_3811 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_2_load_7_reg_4336 <= DATA_x_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_load_1_reg_4025 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_load_4_reg_3952 <= DATA_x_q1;
        DATA_x_load_6_reg_3963 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_load_5_reg_4066 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln299_1_reg_4160[8 : 1] <= add_ln299_1_fu_3097_p2[8 : 1];
        add_ln301_1_reg_3843[8 : 1] <= add_ln301_1_fu_2640_p2[8 : 1];
        add_ln303_1_reg_3848[7 : 1] <= add_ln303_1_fu_2646_p2[7 : 1];
        offset_4_reg_3701[5 : 1] <= offset_4_fu_2437_p3[5 : 1];
        offset_4_reg_3701_pp0_iter1_reg[5 : 1] <= offset_4_reg_3701[5 : 1];
        tmp_122_reg_4145 <= {{mul_ln299_fu_3062_p2[18:12]}};
        tmp_124_reg_4150 <= {{mul_ln301_fu_3081_p2[18:12]}};
        tmp_125_reg_3822 <= {{mul_ln302_fu_2595_p2[16:11]}};
        tmp_126_reg_3827 <= {{mul_ln303_fu_2618_p2[18:12]}};
        tmp_144_reg_4195 <= {{tmp_144_fu_3126_p1[20:13]}};
        tmp_147_reg_4200 <= {{tmp_147_fu_3145_p1[16:11]}};
        tmp_s_reg_3695 <= {{tid_3_reg_3673[5:1]}};
        tmp_s_reg_3695_pp0_iter1_reg <= tmp_s_reg_3695;
        zext_ln172_16_reg_3832[5 : 1] <= zext_ln172_16_fu_2634_p1[5 : 1];
        zext_ln172_17_reg_3837[5 : 1] <= zext_ln172_17_fu_2637_p1[5 : 1];
        zext_ln298_2_reg_3853[6 : 2] <= zext_ln298_2_fu_2657_p1[6 : 2];
        zext_ln298_2_reg_3853_pp0_iter2_reg[6 : 2] <= zext_ln298_2_reg_3853[6 : 2];
        zext_ln298_3_reg_3865[6 : 3] <= zext_ln298_3_fu_2669_p1[6 : 3];
        zext_ln298_3_reg_3865_pp0_iter2_reg[6 : 3] <= zext_ln298_3_reg_3865[6 : 3];
        zext_ln300_5_reg_4165[6 : 2] <= zext_ln300_5_fu_3109_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln299_2_reg_4231[8 : 2] <= add_ln299_2_fu_3243_p2[8 : 2];
        add_ln301_2_reg_3947[8 : 2] <= add_ln301_2_fu_2747_p2[8 : 2];
        add_ln303_2_reg_4251[7 : 2] <= add_ln303_2_fu_3248_p2[7 : 2];
        offset_5_reg_3717[5 : 2] <= offset_5_fu_2460_p3[5 : 2];
        offset_5_reg_3717_pp0_iter1_reg[5 : 2] <= offset_5_reg_3717[5 : 2];
        tmp_130_reg_4216 <= {{mul_ln299_1_fu_3197_p2[18:12]}};
        tmp_132_reg_3926 <= {{mul_ln301_1_fu_2680_p2[18:12]}};
        tmp_133_reg_3931 <= {{mul_ln302_1_fu_2705_p2[16:11]}};
        tmp_134_reg_3936 <= {{mul_ln303_1_fu_2728_p2[18:12]}};
        tmp_151_reg_4266 <= {{tmp_151_fu_3253_p1[18:12]}};
        tmp_152_reg_4271 <= {{tmp_152_fu_3262_p1[20:13]}};
        tmp_54_reg_3710 <= {{tid_3_reg_3673[5:2]}};
        tmp_54_reg_3710_pp0_iter1_reg <= tmp_54_reg_3710;
        tmp_54_reg_3710_pp0_iter2_reg <= tmp_54_reg_3710_pp0_iter1_reg;
        zext_ln172_21_reg_3941[5 : 2] <= zext_ln172_21_fu_2744_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln299_3_reg_4020[8 : 2] <= add_ln299_3_fu_2836_p2[8 : 2];
        add_ln301_3_reg_4036[8 : 2] <= add_ln301_3_fu_2842_p2[8 : 2];
        add_ln303_3_reg_4311[7 : 2] <= add_ln303_3_fu_3398_p2[7 : 2];
        offset_6_reg_3726[5 : 2] <= offset_6_fu_2474_p3[5 : 2];
        offset_6_reg_3726_pp0_iter1_reg[5 : 2] <= offset_6_reg_3726[5 : 2];
        tmp_123_reg_3978 <= {{tmp_123_fu_2757_p1[16:11]}};
        tmp_127_reg_3983 <= {{tmp_127_fu_2766_p1[18:12]}};
        tmp_138_reg_4276 <= {{mul_ln299_2_fu_3314_p2[18:12]}};
        tmp_140_reg_4005 <= {{mul_ln301_2_fu_2791_p2[18:12]}};
        tmp_141_reg_4010 <= {{mul_ln302_2_fu_2817_p2[16:11]}};
        tmp_142_reg_4281 <= {{mul_ln303_2_fu_3367_p2[18:12]}};
        trunc_ln172_reg_3974 <= trunc_ln172_fu_2753_p1;
        zext_ln172_20_reg_3988[5 : 2] <= zext_ln172_20_fu_2775_p1[5 : 2];
        zext_ln172_25_reg_4015[5 : 2] <= zext_ln172_25_fu_2833_p1[5 : 2];
        zext_ln300_6_reg_3993[6 : 2] <= zext_ln300_6_fu_2783_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_reg_4101 <= add_ln299_fu_2949_p2;
        add_ln301_reg_4111 <= add_ln301_fu_2954_p2;
        add_ln303_reg_3778 <= add_ln303_fu_2546_p2;
        offset_reg_3685 <= offset_fu_2418_p1;
        offset_reg_3685_pp0_iter1_reg <= offset_reg_3685;
        shl_ln298_1_reg_3793[6 : 2] <= shl_ln298_1_fu_2571_p3[6 : 2];
        tid_3_reg_3673 <= ap_sig_allocacmp_tid_3;
        tmp_121_reg_3746 <= {{mul_ln172_fu_2506_p2[12:9]}};
        tmp_129_reg_3788 <= {{mul_ln172_4_fu_2555_p2[12:9]}};
        tmp_137_reg_4121 <= {{mul_ln172_5_fu_3002_p2[12:9]}};
        tmp_139_reg_4126 <= {{tmp_139_fu_3018_p1[16:11]}};
        tmp_143_reg_4131 <= {{tmp_143_fu_3027_p1[18:12]}};
        tmp_145_reg_4136 <= {{mul_ln172_6_fu_3039_p2[12:9]}};
        tmp_reg_3681 <= ap_sig_allocacmp_tid_3[32'd6];
        trunc_ln172_6_reg_4141 <= trunc_ln172_6_fu_3055_p1;
        zext_ln172_12_reg_3735[5 : 0] <= zext_ln172_12_fu_2497_p1[5 : 0];
        zext_ln172_13_reg_3740[5 : 0] <= zext_ln172_13_fu_2500_p1[5 : 0];
        zext_ln298_1_reg_3799[6 : 2] <= zext_ln298_1_fu_2578_p1[6 : 2];
        zext_ln298_1_reg_3799_pp0_iter2_reg[6 : 2] <= zext_ln298_1_reg_3799[6 : 2];
        zext_ln298_reg_3751[6 : 1] <= zext_ln298_fu_2527_p1[6 : 1];
        zext_ln300_4_reg_3761[6 : 1] <= zext_ln300_4_fu_2541_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        tmp_135_reg_4082 <= {{tmp_135_fu_2914_p1[18:12]}};
        tmp_136_reg_4087 <= {{tmp_136_fu_2923_p1[20:13]}};
        trunc_ln172_5_reg_4092 <= trunc_ln172_5_fu_2932_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2335 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_2384 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_128_reg_4041 <= {{tmp_128_fu_2848_p1[20:13]}};
        tmp_131_reg_4050 <= {{tmp_131_fu_2861_p1[16:11]}};
        tmp_146_reg_4061 <= {{mul_ln299_3_fu_2879_p2[18:12]}};
        tmp_148_reg_4077 <= {{mul_ln301_3_fu_2898_p2[18:12]}};
        tmp_149_reg_4326 <= {{mul_ln302_3_fu_3482_p2[16:11]}};
        tmp_150_reg_4331 <= {{mul_ln303_3_fu_3505_p2[18:12]}};
        trunc_ln172_4_reg_4046 <= trunc_ln172_4_fu_2857_p1;
        zext_ln172_24_reg_4055[5 : 2] <= zext_ln172_24_fu_2873_p1[5 : 2];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln300_7_fu_3390_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln300_6_reg_3993;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln300_5_fu_3109_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_4_reg_3761;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln298_3_reg_3865_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln298_2_reg_3853_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln298_1_reg_3799_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_reg_3751;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln300_7_fu_3390_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address0_local = zext_ln300_6_reg_3993;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln300_5_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln300_4_fu_2541_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address1_local = zext_ln298_3_reg_3865_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address1_local = zext_ln298_2_reg_3853_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln298_1_reg_3799_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln298_fu_2527_p1;
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_3_address0_local = zext_ln300_7_fu_3390_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address0_local = zext_ln300_6_reg_3993;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln300_5_fu_3109_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln300_4_reg_3761;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address1_local = zext_ln298_3_reg_3865_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address1_local = zext_ln298_2_reg_3853_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln298_1_reg_3799_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln298_fu_2527_p1;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln300_7_fu_3390_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln300_5_reg_4165;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln298_3_fu_2669_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln298_1_fu_2578_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln300_6_fu_2783_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln300_4_reg_3761;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln298_2_fu_2657_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_2527_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3681 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_142;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2308)) begin
            smem_1_address0_local = zext_ln299_2_fu_3403_p1;
        end else if ((1'b1 == ap_condition_2304)) begin
            smem_1_address0_local = zext_ln305_2_fu_3433_p1;
        end else if ((1'b1 == ap_condition_2300)) begin
            smem_1_address0_local = zext_ln304_2_fu_3423_p1;
        end else if ((1'b1 == ap_condition_2296)) begin
            smem_1_address0_local = zext_ln303_2_fu_3413_p1;
        end else if ((1'b1 == ap_condition_2292)) begin
            smem_1_address0_local = zext_ln300_1_fu_3281_p1;
        end else if ((1'b1 == ap_condition_2289)) begin
            smem_1_address0_local = zext_ln299_1_fu_3271_p1;
        end else if ((1'b1 == ap_condition_2285)) begin
            smem_1_address0_local = zext_ln305_1_fu_3301_p1;
        end else if ((1'b1 == ap_condition_2281)) begin
            smem_1_address0_local = zext_ln304_1_fu_3291_p1;
        end else if ((1'b1 == ap_condition_2277)) begin
            smem_1_address0_local = zext_ln300_fu_3164_p1;
        end else if ((1'b1 == ap_condition_2274)) begin
            smem_1_address0_local = zext_ln301_fu_3174_p1;
        end else if ((1'b1 == ap_condition_2270)) begin
            smem_1_address0_local = zext_ln299_fu_3154_p1;
        end else if ((1'b1 == ap_condition_2266)) begin
            smem_1_address0_local = zext_ln305_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address0_local = zext_ln172_8_fu_3116_p1;
        end else if ((1'b1 == ap_condition_2262)) begin
            smem_1_address0_local = zext_ln304_fu_2979_p1;
        end else if ((1'b1 == ap_condition_2258)) begin
            smem_1_address0_local = zext_ln303_fu_2969_p1;
        end else if ((1'b1 == ap_condition_2254)) begin
            smem_1_address0_local = zext_ln302_fu_2959_p1;
        end else if ((1'b1 == ap_condition_2250)) begin
            smem_1_address0_local = zext_ln172_6_fu_2939_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2359)) begin
            smem_1_address1_local = zext_ln305_3_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2355)) begin
            smem_1_address1_local = zext_ln304_3_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2351)) begin
            smem_1_address1_local = zext_ln303_3_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2347)) begin
            smem_1_address1_local = zext_ln302_3_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2343)) begin
            smem_1_address1_local = zext_ln300_3_fu_3453_p1;
        end else if ((1'b1 == ap_condition_2339)) begin
            smem_1_address1_local = zext_ln301_3_fu_3463_p1;
        end else if ((1'b1 == ap_condition_2335)) begin
            smem_1_address1_local = zext_ln299_3_fu_3443_p1;
        end else if ((1'b1 == ap_condition_2331)) begin
            smem_1_address1_local = zext_ln300_2_fu_3330_p1;
        end else if ((1'b1 == ap_condition_2328)) begin
            smem_1_address1_local = zext_ln301_2_fu_3340_p1;
        end else if ((1'b1 == ap_condition_2324)) begin
            smem_1_address1_local = zext_ln302_2_fu_3350_p1;
        end else if ((1'b1 == ap_condition_2320)) begin
            smem_1_address1_local = zext_ln301_1_fu_3213_p1;
        end else if ((1'b1 == ap_condition_2316)) begin
            smem_1_address1_local = zext_ln303_1_fu_3233_p1;
        end else if ((1'b1 == ap_condition_2312)) begin
            smem_1_address1_local = zext_ln302_1_fu_3223_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln172_9_fu_3135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address1_local = zext_ln172_7_fu_2989_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7)))) begin
        smem_1_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_d0_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)))) begin
        smem_1_d0_local = DATA_x_load_1_reg_4025;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_load_1_reg_4205;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2335;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_4_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_2_load_1_reg_3899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_3_load_reg_3910;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_2_load_reg_3888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_load_reg_3811;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = DATA_x_2_load_7_reg_4336;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)))) begin
        smem_1_d1_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d1_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7)))) begin
        smem_1_d1_local = DATA_x_load_5_reg_4066;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d1_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d1_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_load_6_reg_3963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_x_load_2_reg_3877;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2304)) begin
            smem_2_address0_local = zext_ln299_2_fu_3403_p1;
        end else if ((1'b1 == ap_condition_2300)) begin
            smem_2_address0_local = zext_ln305_2_fu_3433_p1;
        end else if ((1'b1 == ap_condition_2296)) begin
            smem_2_address0_local = zext_ln304_2_fu_3423_p1;
        end else if ((1'b1 == ap_condition_2375)) begin
            smem_2_address0_local = zext_ln303_2_fu_3413_p1;
        end else if ((1'b1 == ap_condition_2289)) begin
            smem_2_address0_local = zext_ln300_1_fu_3281_p1;
        end else if ((1'b1 == ap_condition_2285)) begin
            smem_2_address0_local = zext_ln299_1_fu_3271_p1;
        end else if ((1'b1 == ap_condition_2281)) begin
            smem_2_address0_local = zext_ln305_1_fu_3301_p1;
        end else if ((1'b1 == ap_condition_2371)) begin
            smem_2_address0_local = zext_ln304_1_fu_3291_p1;
        end else if ((1'b1 == ap_condition_2277)) begin
            smem_2_address0_local = zext_ln301_fu_3174_p1;
        end else if ((1'b1 == ap_condition_2270)) begin
            smem_2_address0_local = zext_ln300_fu_3164_p1;
        end else if ((1'b1 == ap_condition_2266)) begin
            smem_2_address0_local = zext_ln299_fu_3154_p1;
        end else if ((1'b1 == ap_condition_2367)) begin
            smem_2_address0_local = zext_ln305_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address0_local = zext_ln172_8_fu_3116_p1;
        end else if ((1'b1 == ap_condition_2363)) begin
            smem_2_address0_local = zext_ln302_fu_2959_p1;
        end else if ((1'b1 == ap_condition_2258)) begin
            smem_2_address0_local = zext_ln304_fu_2979_p1;
        end else if ((1'b1 == ap_condition_2254)) begin
            smem_2_address0_local = zext_ln303_fu_2969_p1;
        end else if ((1'b1 == ap_condition_2262)) begin
            smem_2_address0_local = zext_ln172_6_fu_2939_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2390)) begin
            smem_2_address1_local = zext_ln302_3_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2355)) begin
            smem_2_address1_local = zext_ln305_3_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2351)) begin
            smem_2_address1_local = zext_ln304_3_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2347)) begin
            smem_2_address1_local = zext_ln303_3_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2343)) begin
            smem_2_address1_local = zext_ln301_3_fu_3463_p1;
        end else if ((1'b1 == ap_condition_2335)) begin
            smem_2_address1_local = zext_ln300_3_fu_3453_p1;
        end else if ((1'b1 == ap_condition_2386)) begin
            smem_2_address1_local = zext_ln299_3_fu_3443_p1;
        end else if ((1'b1 == ap_condition_2331)) begin
            smem_2_address1_local = zext_ln301_2_fu_3340_p1;
        end else if ((1'b1 == ap_condition_2328)) begin
            smem_2_address1_local = zext_ln302_2_fu_3350_p1;
        end else if ((1'b1 == ap_condition_2382)) begin
            smem_2_address1_local = zext_ln300_2_fu_3330_p1;
        end else if ((1'b1 == ap_condition_2378)) begin
            smem_2_address1_local = zext_ln301_1_fu_3213_p1;
        end else if ((1'b1 == ap_condition_2320)) begin
            smem_2_address1_local = zext_ln302_1_fu_3223_p1;
        end else if ((1'b1 == ap_condition_2312)) begin
            smem_2_address1_local = zext_ln303_1_fu_3233_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address1_local = zext_ln172_9_fu_3135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address1_local = zext_ln172_7_fu_2989_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974== 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046== 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_d0_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)))) begin
        smem_2_d0_local = DATA_x_1_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_1_reg_4025;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2335;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_4_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_2_load_reg_3888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_2_load_1_reg_3899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_3_load_reg_3910;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_load_reg_3811;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = DATA_x_2_load_7_reg_4336;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d1_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d1_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d1_local = DATA_x_load_5_reg_4066;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))))) begin
        smem_2_d1_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d1_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = DATA_x_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_load_6_reg_3963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_x_load_2_reg_3877;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974== 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046== 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2405)) begin
            smem_3_address0_local = zext_ln303_2_fu_3413_p1;
        end else if ((1'b1 == ap_condition_2300)) begin
            smem_3_address0_local = zext_ln299_2_fu_3403_p1;
        end else if ((1'b1 == ap_condition_2296)) begin
            smem_3_address0_local = zext_ln305_2_fu_3433_p1;
        end else if ((1'b1 == ap_condition_2375)) begin
            smem_3_address0_local = zext_ln304_2_fu_3423_p1;
        end else if ((1'b1 == ap_condition_2285)) begin
            smem_3_address0_local = zext_ln300_1_fu_3281_p1;
        end else if ((1'b1 == ap_condition_2281)) begin
            smem_3_address0_local = zext_ln299_1_fu_3271_p1;
        end else if ((1'b1 == ap_condition_2371)) begin
            smem_3_address0_local = zext_ln305_1_fu_3301_p1;
        end else if ((1'b1 == ap_condition_2401)) begin
            smem_3_address0_local = zext_ln304_1_fu_3291_p1;
        end else if ((1'b1 == ap_condition_2270)) begin
            smem_3_address0_local = zext_ln301_fu_3174_p1;
        end else if ((1'b1 == ap_condition_2266)) begin
            smem_3_address0_local = zext_ln300_fu_3164_p1;
        end else if ((1'b1 == ap_condition_2367)) begin
            smem_3_address0_local = zext_ln299_fu_3154_p1;
        end else if ((1'b1 == ap_condition_2397)) begin
            smem_3_address0_local = zext_ln305_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address0_local = zext_ln172_8_fu_3116_p1;
        end else if ((1'b1 == ap_condition_2393)) begin
            smem_3_address0_local = zext_ln302_fu_2959_p1;
        end else if ((1'b1 == ap_condition_2363)) begin
            smem_3_address0_local = zext_ln303_fu_2969_p1;
        end else if ((1'b1 == ap_condition_2254)) begin
            smem_3_address0_local = zext_ln304_fu_2979_p1;
        end else if ((1'b1 == ap_condition_2258)) begin
            smem_3_address0_local = zext_ln172_6_fu_2939_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2421)) begin
            smem_3_address1_local = zext_ln302_3_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2390)) begin
            smem_3_address1_local = zext_ln303_3_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2351)) begin
            smem_3_address1_local = zext_ln305_3_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2347)) begin
            smem_3_address1_local = zext_ln304_3_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2335)) begin
            smem_3_address1_local = zext_ln301_3_fu_3463_p1;
        end else if ((1'b1 == ap_condition_2386)) begin
            smem_3_address1_local = zext_ln300_3_fu_3453_p1;
        end else if ((1'b1 == ap_condition_2417)) begin
            smem_3_address1_local = zext_ln299_3_fu_3443_p1;
        end else if ((1'b1 == ap_condition_2331)) begin
            smem_3_address1_local = zext_ln302_2_fu_3350_p1;
        end else if ((1'b1 == ap_condition_2382)) begin
            smem_3_address1_local = zext_ln301_2_fu_3340_p1;
        end else if ((1'b1 == ap_condition_2413)) begin
            smem_3_address1_local = zext_ln300_2_fu_3330_p1;
        end else if ((1'b1 == ap_condition_2378)) begin
            smem_3_address1_local = zext_ln302_1_fu_3223_p1;
        end else if ((1'b1 == ap_condition_2320)) begin
            smem_3_address1_local = zext_ln303_1_fu_3233_p1;
        end else if ((1'b1 == ap_condition_2409)) begin
            smem_3_address1_local = zext_ln301_1_fu_3213_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address1_local = zext_ln172_9_fu_3135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address1_local = zext_ln172_7_fu_2989_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046== 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d0_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_d0_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_1_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_load_1_reg_4025;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2335;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_load_4_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)))) begin
        smem_3_d0_local = DATA_x_2_load_reg_3888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_3_load_reg_3910;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_2_load_1_reg_3899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_load_reg_3811;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)))) begin
        smem_3_d1_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = DATA_x_2_load_7_reg_4336;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d1_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d1_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d1_local = DATA_x_load_5_reg_4066;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))))) begin
        smem_3_d1_local = DATA_x_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d1_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_load_6_reg_3963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_x_load_2_reg_3877;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046== 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2436)) begin
            smem_4_address0_local = zext_ln303_2_fu_3413_p1;
        end else if ((1'b1 == ap_condition_2405)) begin
            smem_4_address0_local = zext_ln304_2_fu_3423_p1;
        end else if ((1'b1 == ap_condition_2296)) begin
            smem_4_address0_local = zext_ln299_2_fu_3403_p1;
        end else if ((1'b1 == ap_condition_2375)) begin
            smem_4_address0_local = zext_ln305_2_fu_3433_p1;
        end else if ((1'b1 == ap_condition_2433)) begin
            smem_4_address0_local = zext_ln304_1_fu_3291_p1;
        end else if ((1'b1 == ap_condition_2281)) begin
            smem_4_address0_local = zext_ln300_1_fu_3281_p1;
        end else if ((1'b1 == ap_condition_2371)) begin
            smem_4_address0_local = zext_ln299_1_fu_3271_p1;
        end else if ((1'b1 == ap_condition_2401)) begin
            smem_4_address0_local = zext_ln305_1_fu_3301_p1;
        end else if ((1'b1 == ap_condition_2266)) begin
            smem_4_address0_local = zext_ln301_fu_3174_p1;
        end else if ((1'b1 == ap_condition_2367)) begin
            smem_4_address0_local = zext_ln300_fu_3164_p1;
        end else if ((1'b1 == ap_condition_2397)) begin
            smem_4_address0_local = zext_ln299_fu_3154_p1;
        end else if ((1'b1 == ap_condition_2429)) begin
            smem_4_address0_local = zext_ln305_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_4_address0_local = zext_ln172_8_fu_3116_p1;
        end else if ((1'b1 == ap_condition_2393)) begin
            smem_4_address0_local = zext_ln303_fu_2969_p1;
        end else if ((1'b1 == ap_condition_2363)) begin
            smem_4_address0_local = zext_ln304_fu_2979_p1;
        end else if ((1'b1 == ap_condition_2425)) begin
            smem_4_address0_local = zext_ln302_fu_2959_p1;
        end else if ((1'b1 == ap_condition_2254)) begin
            smem_4_address0_local = zext_ln172_6_fu_2939_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2421)) begin
            smem_4_address1_local = zext_ln303_3_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2390)) begin
            smem_4_address1_local = zext_ln304_3_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2452)) begin
            smem_4_address1_local = zext_ln302_3_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2347)) begin
            smem_4_address1_local = zext_ln305_3_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2386)) begin
            smem_4_address1_local = zext_ln301_3_fu_3463_p1;
        end else if ((1'b1 == ap_condition_2417)) begin
            smem_4_address1_local = zext_ln300_3_fu_3453_p1;
        end else if ((1'b1 == ap_condition_2448)) begin
            smem_4_address1_local = zext_ln299_3_fu_3443_p1;
        end else if ((1'b1 == ap_condition_2382)) begin
            smem_4_address1_local = zext_ln302_2_fu_3350_p1;
        end else if ((1'b1 == ap_condition_2413)) begin
            smem_4_address1_local = zext_ln301_2_fu_3340_p1;
        end else if ((1'b1 == ap_condition_2444)) begin
            smem_4_address1_local = zext_ln300_2_fu_3330_p1;
        end else if ((1'b1 == ap_condition_2378)) begin
            smem_4_address1_local = zext_ln303_1_fu_3233_p1;
        end else if ((1'b1 == ap_condition_2409)) begin
            smem_4_address1_local = zext_ln302_1_fu_3223_p1;
        end else if ((1'b1 == ap_condition_2440)) begin
            smem_4_address1_local = zext_ln301_1_fu_3213_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_4_address1_local = zext_ln172_9_fu_3135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_4_address1_local = zext_ln172_7_fu_2989_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = reg_2384;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_d0_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_1_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_1_reg_4025;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2335;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_load_4_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)))) begin
        smem_4_d0_local = DATA_x_3_load_reg_3910;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_2_load_1_reg_3899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_2_load_reg_3888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_load_reg_3811;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)))) begin
        smem_4_d1_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = DATA_x_2_load_7_reg_4336;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d1_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d1_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d1_local = DATA_x_load_5_reg_4066;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7)))) begin
        smem_4_d1_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d1_local = DATA_x_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d1_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_load_6_reg_3963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_x_load_2_reg_3877;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046== 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2436)) begin
            smem_5_address0_local = zext_ln304_2_fu_3423_p1;
        end else if ((1'b1 == ap_condition_2405)) begin
            smem_5_address0_local = zext_ln305_2_fu_3433_p1;
        end else if ((1'b1 == ap_condition_2308)) begin
            smem_5_address0_local = zext_ln303_2_fu_3413_p1;
        end else if ((1'b1 == ap_condition_2375)) begin
            smem_5_address0_local = zext_ln299_2_fu_3403_p1;
        end else if ((1'b1 == ap_condition_2292)) begin
            smem_5_address0_local = zext_ln304_1_fu_3291_p1;
        end else if ((1'b1 == ap_condition_2433)) begin
            smem_5_address0_local = zext_ln305_1_fu_3301_p1;
        end else if ((1'b1 == ap_condition_2371)) begin
            smem_5_address0_local = zext_ln300_1_fu_3281_p1;
        end else if ((1'b1 == ap_condition_2401)) begin
            smem_5_address0_local = zext_ln299_1_fu_3271_p1;
        end else if ((1'b1 == ap_condition_2274)) begin
            smem_5_address0_local = zext_ln305_fu_3184_p1;
        end else if ((1'b1 == ap_condition_2367)) begin
            smem_5_address0_local = zext_ln301_fu_3174_p1;
        end else if ((1'b1 == ap_condition_2397)) begin
            smem_5_address0_local = zext_ln300_fu_3164_p1;
        end else if ((1'b1 == ap_condition_2429)) begin
            smem_5_address0_local = zext_ln299_fu_3154_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_5_address0_local = zext_ln172_8_fu_3116_p1;
        end else if ((1'b1 == ap_condition_2393)) begin
            smem_5_address0_local = zext_ln304_fu_2979_p1;
        end else if ((1'b1 == ap_condition_2425)) begin
            smem_5_address0_local = zext_ln303_fu_2969_p1;
        end else if ((1'b1 == ap_condition_2250)) begin
            smem_5_address0_local = zext_ln302_fu_2959_p1;
        end else if ((1'b1 == ap_condition_2363)) begin
            smem_5_address0_local = zext_ln172_6_fu_2939_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2421)) begin
            smem_5_address1_local = zext_ln304_3_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2390)) begin
            smem_5_address1_local = zext_ln305_3_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2452)) begin
            smem_5_address1_local = zext_ln303_3_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2359)) begin
            smem_5_address1_local = zext_ln302_3_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2417)) begin
            smem_5_address1_local = zext_ln301_3_fu_3463_p1;
        end else if ((1'b1 == ap_condition_2448)) begin
            smem_5_address1_local = zext_ln300_3_fu_3453_p1;
        end else if ((1'b1 == ap_condition_2464)) begin
            smem_5_address1_local = zext_ln299_3_fu_3443_p1;
        end else if ((1'b1 == ap_condition_2413)) begin
            smem_5_address1_local = zext_ln302_2_fu_3350_p1;
        end else if ((1'b1 == ap_condition_2444)) begin
            smem_5_address1_local = zext_ln301_2_fu_3340_p1;
        end else if ((1'b1 == ap_condition_2460)) begin
            smem_5_address1_local = zext_ln300_2_fu_3330_p1;
        end else if ((1'b1 == ap_condition_2409)) begin
            smem_5_address1_local = zext_ln303_1_fu_3233_p1;
        end else if ((1'b1 == ap_condition_2440)) begin
            smem_5_address1_local = zext_ln302_1_fu_3223_p1;
        end else if ((1'b1 == ap_condition_2456)) begin
            smem_5_address1_local = zext_ln301_1_fu_3213_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_5_address1_local = zext_ln172_9_fu_3135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_5_address1_local = zext_ln172_7_fu_2989_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d0_local = reg_2384;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))))) begin
        smem_5_d0_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_1_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_load_1_reg_4025;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2335;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_load_4_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)))) begin
        smem_5_d0_local = DATA_x_2_load_1_reg_3899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_3_load_reg_3910;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_2_load_reg_3888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_load_reg_3811;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)))) begin
        smem_5_d1_local = DATA_x_2_load_7_reg_4336;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d1_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d1_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d1_local = DATA_x_load_5_reg_4066;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d1_local = DATA_x_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d1_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_load_6_reg_3963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_x_load_2_reg_3877;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2436)) begin
            smem_6_address0_local = zext_ln305_2_fu_3433_p1;
        end else if ((1'b1 == ap_condition_2405)) begin
            smem_6_address0_local = zext_ln299_2_fu_3403_p1;
        end else if ((1'b1 == ap_condition_2308)) begin
            smem_6_address0_local = zext_ln304_2_fu_3423_p1;
        end else if ((1'b1 == ap_condition_2304)) begin
            smem_6_address0_local = zext_ln303_2_fu_3413_p1;
        end else if ((1'b1 == ap_condition_2292)) begin
            smem_6_address0_local = zext_ln305_1_fu_3301_p1;
        end else if ((1'b1 == ap_condition_2433)) begin
            smem_6_address0_local = zext_ln299_1_fu_3271_p1;
        end else if ((1'b1 == ap_condition_2289)) begin
            smem_6_address0_local = zext_ln304_1_fu_3291_p1;
        end else if ((1'b1 == ap_condition_2401)) begin
            smem_6_address0_local = zext_ln300_1_fu_3281_p1;
        end else if ((1'b1 == ap_condition_2277)) begin
            smem_6_address0_local = zext_ln305_fu_3184_p1;
        end else if ((1'b1 == ap_condition_2274)) begin
            smem_6_address0_local = zext_ln299_fu_3154_p1;
        end else if ((1'b1 == ap_condition_2397)) begin
            smem_6_address0_local = zext_ln301_fu_3174_p1;
        end else if ((1'b1 == ap_condition_2429)) begin
            smem_6_address0_local = zext_ln300_fu_3164_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_6_address0_local = zext_ln172_8_fu_3116_p1;
        end else if ((1'b1 == ap_condition_2425)) begin
            smem_6_address0_local = zext_ln304_fu_2979_p1;
        end else if ((1'b1 == ap_condition_2250)) begin
            smem_6_address0_local = zext_ln303_fu_2969_p1;
        end else if ((1'b1 == ap_condition_2262)) begin
            smem_6_address0_local = zext_ln302_fu_2959_p1;
        end else if ((1'b1 == ap_condition_2393)) begin
            smem_6_address0_local = zext_ln172_6_fu_2939_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2421)) begin
            smem_6_address1_local = zext_ln305_3_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2452)) begin
            smem_6_address1_local = zext_ln304_3_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2359)) begin
            smem_6_address1_local = zext_ln303_3_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2355)) begin
            smem_6_address1_local = zext_ln302_3_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2339)) begin
            smem_6_address1_local = zext_ln299_3_fu_3443_p1;
        end else if ((1'b1 == ap_condition_2448)) begin
            smem_6_address1_local = zext_ln301_3_fu_3463_p1;
        end else if ((1'b1 == ap_condition_2464)) begin
            smem_6_address1_local = zext_ln300_3_fu_3453_p1;
        end else if ((1'b1 == ap_condition_2444)) begin
            smem_6_address1_local = zext_ln302_2_fu_3350_p1;
        end else if ((1'b1 == ap_condition_2460)) begin
            smem_6_address1_local = zext_ln301_2_fu_3340_p1;
        end else if ((1'b1 == ap_condition_2324)) begin
            smem_6_address1_local = zext_ln300_2_fu_3330_p1;
        end else if ((1'b1 == ap_condition_2440)) begin
            smem_6_address1_local = zext_ln303_1_fu_3233_p1;
        end else if ((1'b1 == ap_condition_2456)) begin
            smem_6_address1_local = zext_ln302_1_fu_3223_p1;
        end else if ((1'b1 == ap_condition_2316)) begin
            smem_6_address1_local = zext_ln301_1_fu_3213_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_6_address1_local = zext_ln172_9_fu_3135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_6_address1_local = zext_ln172_7_fu_2989_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7)))) begin
        smem_6_d0_local = reg_2384;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_6_d0_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))))) begin
        smem_6_d0_local = reg_2346;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2335;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_1_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_load_1_reg_4025;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_load_4_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_2_load_1_reg_3899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_3_load_reg_3910;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_2_load_reg_3888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)))) begin
        smem_6_d0_local = DATA_x_load_reg_3811;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)))) begin
        smem_6_d1_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d1_local = DATA_x_2_load_7_reg_4336;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d1_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d1_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_d1_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_d1_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d1_local = DATA_x_load_5_reg_4066;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d1_local = DATA_x_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d1_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_load_6_reg_3963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_x_load_2_reg_3877;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2436)) begin
            smem_address0_local = zext_ln299_2_fu_3403_p1;
        end else if ((1'b1 == ap_condition_2308)) begin
            smem_address0_local = zext_ln305_2_fu_3433_p1;
        end else if ((1'b1 == ap_condition_2304)) begin
            smem_address0_local = zext_ln304_2_fu_3423_p1;
        end else if ((1'b1 == ap_condition_2300)) begin
            smem_address0_local = zext_ln303_2_fu_3413_p1;
        end else if ((1'b1 == ap_condition_2292)) begin
            smem_address0_local = zext_ln299_1_fu_3271_p1;
        end else if ((1'b1 == ap_condition_2433)) begin
            smem_address0_local = zext_ln300_1_fu_3281_p1;
        end else if ((1'b1 == ap_condition_2289)) begin
            smem_address0_local = zext_ln305_1_fu_3301_p1;
        end else if ((1'b1 == ap_condition_2285)) begin
            smem_address0_local = zext_ln304_1_fu_3291_p1;
        end else if ((1'b1 == ap_condition_2277)) begin
            smem_address0_local = zext_ln299_fu_3154_p1;
        end else if ((1'b1 == ap_condition_2274)) begin
            smem_address0_local = zext_ln300_fu_3164_p1;
        end else if ((1'b1 == ap_condition_2270)) begin
            smem_address0_local = zext_ln305_fu_3184_p1;
        end else if ((1'b1 == ap_condition_2429)) begin
            smem_address0_local = zext_ln301_fu_3174_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln172_8_fu_3116_p1;
        end else if ((1'b1 == ap_condition_2250)) begin
            smem_address0_local = zext_ln304_fu_2979_p1;
        end else if ((1'b1 == ap_condition_2262)) begin
            smem_address0_local = zext_ln303_fu_2969_p1;
        end else if ((1'b1 == ap_condition_2258)) begin
            smem_address0_local = zext_ln302_fu_2959_p1;
        end else if ((1'b1 == ap_condition_2425)) begin
            smem_address0_local = zext_ln172_6_fu_2939_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_2452)) begin
            smem_address1_local = zext_ln305_3_fu_3551_p1;
        end else if ((1'b1 == ap_condition_2359)) begin
            smem_address1_local = zext_ln304_3_fu_3541_p1;
        end else if ((1'b1 == ap_condition_2355)) begin
            smem_address1_local = zext_ln303_3_fu_3531_p1;
        end else if ((1'b1 == ap_condition_2351)) begin
            smem_address1_local = zext_ln302_3_fu_3521_p1;
        end else if ((1'b1 == ap_condition_2343)) begin
            smem_address1_local = zext_ln299_3_fu_3443_p1;
        end else if ((1'b1 == ap_condition_2339)) begin
            smem_address1_local = zext_ln300_3_fu_3453_p1;
        end else if ((1'b1 == ap_condition_2464)) begin
            smem_address1_local = zext_ln301_3_fu_3463_p1;
        end else if ((1'b1 == ap_condition_2328)) begin
            smem_address1_local = zext_ln300_2_fu_3330_p1;
        end else if ((1'b1 == ap_condition_2460)) begin
            smem_address1_local = zext_ln302_2_fu_3350_p1;
        end else if ((1'b1 == ap_condition_2324)) begin
            smem_address1_local = zext_ln301_2_fu_3340_p1;
        end else if ((1'b1 == ap_condition_2456)) begin
            smem_address1_local = zext_ln303_1_fu_3233_p1;
        end else if ((1'b1 == ap_condition_2316)) begin
            smem_address1_local = zext_ln302_1_fu_3223_p1;
        end else if ((1'b1 == ap_condition_2312)) begin
            smem_address1_local = zext_ln301_1_fu_3213_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln172_9_fu_3135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address1_local = zext_ln172_7_fu_2989_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_d0_local = reg_2365;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))))) begin
        smem_d0_local = reg_2335;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_1_reg_4025;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_4_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_2_load_1_reg_3899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_3_load_reg_3910;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_2_load_reg_3888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_load_reg_3811;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = reg_2384;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = DATA_x_2_load_7_reg_4336;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = reg_2346;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)))) begin
        smem_d1_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d1_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d1_local = DATA_x_load_5_reg_4066;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = DATA_x_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d1_local = DATA_x_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d1_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_load_6_reg_3963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_x_load_2_reg_3877;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3974 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_4092 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_4_reg_4046 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3974 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_4092 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_4141 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_4_reg_4046 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_6_reg_4141 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_5_reg_4092 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4046 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln172_6_reg_4141 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
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
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_2487_p2 = (tid_3_reg_3673 + 7'd4);
assign add_ln298_fu_2652_p2 = (shl_ln298_1_reg_3793 + 7'd2);
assign add_ln299_1_fu_3097_p2 = ($signed(zext_ln172_17_reg_3837) + $signed(9'd288));
assign add_ln299_2_fu_3243_p2 = ($signed(zext_ln172_21_reg_3941) + $signed(9'd288));
assign add_ln299_3_fu_2836_p2 = ($signed(zext_ln172_25_fu_2833_p1) + $signed(9'd288));
assign add_ln299_fu_2949_p2 = ($signed(zext_ln172_13_reg_3740) + $signed(9'd288));
assign add_ln300_2_fu_2778_p2 = (shl_ln298_1_reg_3793 + 7'd3);
assign add_ln301_1_fu_2640_p2 = ($signed(zext_ln172_17_fu_2637_p1) + $signed(9'd360));
assign add_ln301_2_fu_2747_p2 = ($signed(zext_ln172_21_fu_2744_p1) + $signed(9'd360));
assign add_ln301_3_fu_2842_p2 = ($signed(zext_ln172_25_fu_2833_p1) + $signed(9'd360));
assign add_ln301_fu_2954_p2 = ($signed(zext_ln172_13_reg_3740) + $signed(9'd360));
assign add_ln302_1_fu_2696_p2 = ($signed(zext_ln172_16_reg_3832) + $signed(8'd144));
assign add_ln302_2_fu_2807_p2 = ($signed(zext_ln172_20_fu_2775_p1) + $signed(8'd144));
assign add_ln302_3_fu_3473_p2 = ($signed(zext_ln172_24_reg_4055) + $signed(8'd144));
assign add_ln302_fu_2586_p2 = ($signed(zext_ln172_12_reg_3735) + $signed(8'd144));
assign add_ln303_1_fu_2646_p2 = ($signed(zext_ln172_16_fu_2634_p1) + $signed(8'd176));
assign add_ln303_2_fu_3248_p2 = ($signed(zext_ln172_20_reg_3988) + $signed(8'd176));
assign add_ln303_3_fu_3398_p2 = ($signed(zext_ln172_24_reg_4055) + $signed(8'd176));
assign add_ln303_fu_2546_p2 = ($signed(zext_ln172_12_fu_2497_p1) + $signed(8'd176));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
always @ (*) begin
    ap_condition_2250 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2254 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2258 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2262 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2266 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2270 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2274 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2277 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)));
end
always @ (*) begin
    ap_condition_2281 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2285 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2289 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2292 = ((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7)));
end
always @ (*) begin
    ap_condition_2296 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2300 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2304 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2308 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2312 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2316 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2320 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2324 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2328 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2331 = ((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7)));
end
always @ (*) begin
    ap_condition_2335 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2339 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2343 = ((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)));
end
always @ (*) begin
    ap_condition_2347 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2351 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2355 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2359 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2363 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2367 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2371 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2375 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2378 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_4_reg_4046 == 3'd6) | (trunc_ln172_4_reg_4046 == 3'd7)));
end
always @ (*) begin
    ap_condition_2382 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2386 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2390 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2393 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3974 == 3'd6) | (trunc_ln172_reg_3974 == 3'd7)));
end
always @ (*) begin
    ap_condition_2397 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2401 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2405 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_5_reg_4092 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2409 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2413 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2417 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2421 = ((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_6_reg_4141 == 3'd6) | (trunc_ln172_6_reg_4141 == 3'd7)));
end
always @ (*) begin
    ap_condition_2425 = ((1'b0 == ap_block_pp0_stage0) & (trunc_ln172_reg_3974 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2429 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_reg_3974 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2433 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_4046 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2436 = ((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_5_reg_4092 == 3'd6) | (trunc_ln172_5_reg_4092 == 3'd7)));
end
always @ (*) begin
    ap_condition_2440 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2444 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2448 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2452 = ((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_6_reg_4141 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_2456 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4046 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2460 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_5_reg_4092 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_2464 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_6_reg_4141 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign grp_fu_2422_p0 = ap_sig_allocacmp_tid_3[5:0];
assign grp_fu_2422_p1 = 6'd7;
assign grp_fu_2445_p0 = {{tmp_s_fu_2428_p4}, {1'd1}};
assign grp_fu_2445_p1 = 6'd7;
assign grp_fu_2468_p0 = {{tmp_54_fu_2451_p4}, {2'd2}};
assign grp_fu_2468_p1 = 6'd7;
assign grp_fu_2481_p0 = {{tmp_54_reg_3710}, {2'd3}};
assign grp_fu_2481_p1 = 6'd7;
assign grp_fu_3561_p0 = zext_ln172_12_fu_2497_p1;
assign grp_fu_3561_p1 = 8'd72;
assign grp_fu_3561_p2 = 17'd293;
assign grp_fu_3570_p0 = grp_fu_3570_p00;
assign grp_fu_3570_p00 = offset_reg_3685;
assign grp_fu_3570_p1 = 9'd216;
assign grp_fu_3570_p2 = 19'd586;
assign grp_fu_3579_p0 = grp_fu_3579_p00;
assign grp_fu_3579_p00 = offset_reg_3685_pp0_iter1_reg;
assign grp_fu_3579_p1 = 10'd504;
assign grp_fu_3579_p2 = 21'd1171;
assign grp_fu_3588_p0 = zext_ln172_16_fu_2634_p1;
assign grp_fu_3588_p1 = 8'd72;
assign grp_fu_3588_p2 = 17'd293;
assign grp_fu_3597_p0 = zext_ln172_17_reg_3837;
assign grp_fu_3597_p1 = 9'd216;
assign grp_fu_3597_p2 = 19'd586;
assign grp_fu_3605_p0 = grp_fu_3605_p00;
assign grp_fu_3605_p00 = offset_4_reg_3701_pp0_iter1_reg;
assign grp_fu_3605_p1 = 10'd504;
assign grp_fu_3605_p2 = 21'd1171;
assign grp_fu_3614_p0 = zext_ln172_20_fu_2775_p1;
assign grp_fu_3614_p1 = 8'd72;
assign grp_fu_3614_p2 = 17'd293;
assign grp_fu_3623_p0 = zext_ln172_21_reg_3941;
assign grp_fu_3623_p1 = 9'd216;
assign grp_fu_3623_p2 = 19'd586;
assign grp_fu_3631_p0 = grp_fu_3631_p00;
assign grp_fu_3631_p00 = offset_5_reg_3717_pp0_iter1_reg;
assign grp_fu_3631_p1 = 10'd504;
assign grp_fu_3631_p2 = 21'd1171;
assign grp_fu_3640_p0 = grp_fu_3640_p00;
assign grp_fu_3640_p00 = offset_6_reg_3726_pp0_iter1_reg;
assign grp_fu_3640_p1 = 8'd72;
assign grp_fu_3640_p2 = 17'd293;
assign grp_fu_3649_p0 = zext_ln172_25_reg_4015;
assign grp_fu_3649_p1 = 9'd216;
assign grp_fu_3649_p2 = 19'd586;
assign grp_fu_3657_p0 = grp_fu_3657_p00;
assign grp_fu_3657_p00 = offset_6_reg_3726_pp0_iter1_reg;
assign grp_fu_3657_p1 = 10'd504;
assign grp_fu_3657_p2 = 21'd1171;
assign mul_ln172_4_fu_2555_p0 = mul_ln172_4_fu_2555_p00;
assign mul_ln172_4_fu_2555_p00 = offset_4_reg_3701;
assign mul_ln172_4_fu_2555_p1 = 13'd74;
assign mul_ln172_5_fu_3002_p0 = mul_ln172_5_fu_3002_p00;
assign mul_ln172_5_fu_3002_p00 = offset_5_reg_3717_pp0_iter1_reg;
assign mul_ln172_5_fu_3002_p1 = 13'd74;
assign mul_ln172_6_fu_3039_p0 = mul_ln172_6_fu_3039_p00;
assign mul_ln172_6_fu_3039_p00 = offset_6_reg_3726_pp0_iter1_reg;
assign mul_ln172_6_fu_3039_p1 = 13'd74;
assign mul_ln172_fu_2506_p0 = mul_ln172_fu_2506_p00;
assign mul_ln172_fu_2506_p00 = offset_reg_3685;
assign mul_ln172_fu_2506_p1 = 13'd74;
assign mul_ln299_1_fu_3197_p0 = mul_ln299_1_fu_3197_p00;
assign mul_ln299_1_fu_3197_p00 = add_ln299_1_reg_4160;
assign mul_ln299_1_fu_3197_p1 = 19'd586;
assign mul_ln299_2_fu_3314_p0 = mul_ln299_2_fu_3314_p00;
assign mul_ln299_2_fu_3314_p00 = add_ln299_2_reg_4231;
assign mul_ln299_2_fu_3314_p1 = 19'd586;
assign mul_ln299_3_fu_2879_p0 = mul_ln299_3_fu_2879_p00;
assign mul_ln299_3_fu_2879_p00 = add_ln299_3_reg_4020;
assign mul_ln299_3_fu_2879_p1 = 19'd586;
assign mul_ln299_fu_3062_p0 = mul_ln299_fu_3062_p00;
assign mul_ln299_fu_3062_p00 = add_ln299_reg_4101;
assign mul_ln299_fu_3062_p1 = 19'd586;
assign mul_ln301_1_fu_2680_p0 = mul_ln301_1_fu_2680_p00;
assign mul_ln301_1_fu_2680_p00 = add_ln301_1_reg_3843;
assign mul_ln301_1_fu_2680_p1 = 19'd586;
assign mul_ln301_2_fu_2791_p0 = mul_ln301_2_fu_2791_p00;
assign mul_ln301_2_fu_2791_p00 = add_ln301_2_reg_3947;
assign mul_ln301_2_fu_2791_p1 = 19'd586;
assign mul_ln301_3_fu_2898_p0 = mul_ln301_3_fu_2898_p00;
assign mul_ln301_3_fu_2898_p00 = add_ln301_3_reg_4036;
assign mul_ln301_3_fu_2898_p1 = 19'd586;
assign mul_ln301_fu_3081_p0 = mul_ln301_fu_3081_p00;
assign mul_ln301_fu_3081_p00 = add_ln301_reg_4111;
assign mul_ln301_fu_3081_p1 = 19'd586;
assign mul_ln302_1_fu_2705_p0 = mul_ln302_1_fu_2705_p00;
assign mul_ln302_1_fu_2705_p00 = add_ln302_1_fu_2696_p2;
assign mul_ln302_1_fu_2705_p1 = 17'd293;
assign mul_ln302_2_fu_2817_p0 = mul_ln302_2_fu_2817_p00;
assign mul_ln302_2_fu_2817_p00 = add_ln302_2_fu_2807_p2;
assign mul_ln302_2_fu_2817_p1 = 17'd293;
assign mul_ln302_3_fu_3482_p0 = mul_ln302_3_fu_3482_p00;
assign mul_ln302_3_fu_3482_p00 = add_ln302_3_fu_3473_p2;
assign mul_ln302_3_fu_3482_p1 = 17'd293;
assign mul_ln302_fu_2595_p0 = mul_ln302_fu_2595_p00;
assign mul_ln302_fu_2595_p00 = add_ln302_fu_2586_p2;
assign mul_ln302_fu_2595_p1 = 17'd293;
assign mul_ln303_1_fu_2728_p0 = mul_ln303_1_fu_2728_p00;
assign mul_ln303_1_fu_2728_p00 = $unsigned(sext_ln303_1_fu_2721_p1);
assign mul_ln303_1_fu_2728_p1 = 19'd586;
assign mul_ln303_2_fu_3367_p0 = mul_ln303_2_fu_3367_p00;
assign mul_ln303_2_fu_3367_p00 = $unsigned(sext_ln303_2_fu_3360_p1);
assign mul_ln303_2_fu_3367_p1 = 19'd586;
assign mul_ln303_3_fu_3505_p0 = mul_ln303_3_fu_3505_p00;
assign mul_ln303_3_fu_3505_p00 = $unsigned(sext_ln303_3_fu_3498_p1);
assign mul_ln303_3_fu_3505_p1 = 19'd586;
assign mul_ln303_fu_2618_p0 = mul_ln303_fu_2618_p00;
assign mul_ln303_fu_2618_p00 = $unsigned(sext_ln303_fu_2611_p1);
assign mul_ln303_fu_2618_p1 = 19'd586;
assign offset_4_fu_2437_p3 = {{tmp_s_fu_2428_p4}, {1'd1}};
assign offset_5_fu_2460_p3 = {{tmp_54_fu_2451_p4}, {2'd2}};
assign offset_6_fu_2474_p3 = {{tmp_54_reg_3710}, {2'd3}};
assign offset_fu_2418_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln300_1_fu_3102_p3 = {{tmp_s_reg_3695_pp0_iter1_reg}, {2'd3}};
assign or_ln300_2_fu_3383_p3 = {{tmp_54_reg_3710_pp0_iter2_reg}, {3'd7}};
assign or_ln4_fu_2662_p3 = {{tmp_54_reg_3710}, {3'd6}};
assign or_ln_fu_2534_p3 = {{offset_reg_3685}, {1'd1}};
assign sext_ln303_1_fu_2721_p1 = $signed(add_ln303_1_reg_3848);
assign sext_ln303_2_fu_3360_p1 = $signed(add_ln303_2_reg_4251);
assign sext_ln303_3_fu_3498_p1 = $signed(add_ln303_3_reg_4311);
assign sext_ln303_fu_2611_p1 = $signed(add_ln303_reg_3778);
assign shl_ln298_1_fu_2571_p3 = {{tmp_s_reg_3695}, {2'd2}};
assign shl_ln298_fu_2522_p2 = tid_3_reg_3673 << 7'd1;
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
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = smem_3_d1_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_d1 = smem_4_d1_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_4_we1 = smem_4_we1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_d1 = smem_5_d1_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_5_we1 = smem_5_we1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_d1 = smem_6_d1_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_6_we1 = smem_6_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_123_fu_2757_p1 = grp_fu_3561_p3;
assign tmp_127_fu_2766_p1 = grp_fu_3570_p3;
assign tmp_128_fu_2848_p1 = grp_fu_3579_p3;
assign tmp_131_fu_2861_p1 = grp_fu_3588_p3;
assign tmp_135_fu_2914_p1 = grp_fu_3597_p3;
assign tmp_136_fu_2923_p1 = grp_fu_3605_p3;
assign tmp_139_fu_3018_p1 = grp_fu_3614_p3;
assign tmp_143_fu_3027_p1 = grp_fu_3623_p3;
assign tmp_144_fu_3126_p1 = grp_fu_3631_p3;
assign tmp_147_fu_3145_p1 = grp_fu_3640_p3;
assign tmp_151_fu_3253_p1 = grp_fu_3649_p3;
assign tmp_152_fu_3262_p1 = grp_fu_3657_p3;
assign tmp_54_fu_2451_p4 = {{tid_3_reg_3673[5:2]}};
assign tmp_s_fu_2428_p4 = {{tid_3_reg_3673[5:1]}};
assign trunc_ln172_4_fu_2857_p1 = grp_fu_2445_p2[2:0];
assign trunc_ln172_5_fu_2932_p1 = grp_fu_2468_p2[2:0];
assign trunc_ln172_6_fu_3055_p1 = grp_fu_2481_p2[2:0];
assign trunc_ln172_fu_2753_p1 = grp_fu_2422_p2[2:0];
assign zext_ln172_12_fu_2497_p1 = offset_reg_3685;
assign zext_ln172_13_fu_2500_p1 = offset_reg_3685;
assign zext_ln172_16_fu_2634_p1 = offset_4_reg_3701;
assign zext_ln172_17_fu_2637_p1 = offset_4_reg_3701;
assign zext_ln172_20_fu_2775_p1 = offset_5_reg_3717_pp0_iter1_reg;
assign zext_ln172_21_fu_2744_p1 = offset_5_reg_3717;
assign zext_ln172_24_fu_2873_p1 = offset_6_reg_3726_pp0_iter1_reg;
assign zext_ln172_25_fu_2833_p1 = offset_6_reg_3726;
assign zext_ln172_6_fu_2939_p1 = tmp_121_reg_3746;
assign zext_ln172_7_fu_2989_p1 = tmp_129_reg_3788;
assign zext_ln172_8_fu_3116_p1 = tmp_137_reg_4121;
assign zext_ln172_9_fu_3135_p1 = tmp_145_reg_4136;
assign zext_ln298_1_fu_2578_p1 = shl_ln298_1_fu_2571_p3;
assign zext_ln298_2_fu_2657_p1 = add_ln298_fu_2652_p2;
assign zext_ln298_3_fu_2669_p1 = or_ln4_fu_2662_p3;
assign zext_ln298_fu_2527_p1 = shl_ln298_fu_2522_p2;
assign zext_ln299_1_fu_3271_p1 = tmp_130_reg_4216;
assign zext_ln299_2_fu_3403_p1 = tmp_138_reg_4276;
assign zext_ln299_3_fu_3443_p1 = tmp_146_reg_4061;
assign zext_ln299_fu_3154_p1 = tmp_122_reg_4145;
assign zext_ln300_1_fu_3281_p1 = tmp_131_reg_4050;
assign zext_ln300_2_fu_3330_p1 = tmp_139_reg_4126;
assign zext_ln300_3_fu_3453_p1 = tmp_147_reg_4200;
assign zext_ln300_4_fu_2541_p1 = or_ln_fu_2534_p3;
assign zext_ln300_5_fu_3109_p1 = or_ln300_1_fu_3102_p3;
assign zext_ln300_6_fu_2783_p1 = add_ln300_2_fu_2778_p2;
assign zext_ln300_7_fu_3390_p1 = or_ln300_2_fu_3383_p3;
assign zext_ln300_fu_3164_p1 = tmp_123_reg_3978;
assign zext_ln301_1_fu_3213_p1 = tmp_132_reg_3926;
assign zext_ln301_2_fu_3340_p1 = tmp_140_reg_4005;
assign zext_ln301_3_fu_3463_p1 = tmp_148_reg_4077;
assign zext_ln301_fu_3174_p1 = tmp_124_reg_4150;
assign zext_ln302_1_fu_3223_p1 = tmp_133_reg_3931;
assign zext_ln302_2_fu_3350_p1 = tmp_141_reg_4010;
assign zext_ln302_3_fu_3521_p1 = tmp_149_reg_4326;
assign zext_ln302_fu_2959_p1 = tmp_125_reg_3822;
assign zext_ln303_1_fu_3233_p1 = tmp_134_reg_3936;
assign zext_ln303_2_fu_3413_p1 = tmp_142_reg_4281;
assign zext_ln303_3_fu_3531_p1 = tmp_150_reg_4331;
assign zext_ln303_fu_2969_p1 = tmp_126_reg_3827;
assign zext_ln304_1_fu_3291_p1 = tmp_135_reg_4082;
assign zext_ln304_2_fu_3423_p1 = tmp_143_reg_4131;
assign zext_ln304_3_fu_3541_p1 = tmp_151_reg_4266;
assign zext_ln304_fu_2979_p1 = tmp_127_reg_3983;
assign zext_ln305_1_fu_3301_p1 = tmp_136_reg_4087;
assign zext_ln305_2_fu_3433_p1 = tmp_144_reg_4195;
assign zext_ln305_3_fu_3551_p1 = tmp_152_reg_4271;
assign zext_ln305_fu_3184_p1 = tmp_128_reg_4041;
always @ (posedge ap_clk) begin
    offset_4_reg_3701[0] <= 1'b1;
    offset_4_reg_3701_pp0_iter1_reg[0] <= 1'b1;
    offset_5_reg_3717[1:0] <= 2'b10;
    offset_5_reg_3717_pp0_iter1_reg[1:0] <= 2'b10;
    offset_6_reg_3726[1:0] <= 2'b11;
    offset_6_reg_3726_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln172_12_reg_3735[7:6] <= 2'b00;
    zext_ln172_13_reg_3740[8:6] <= 3'b000;
    zext_ln298_reg_3751[0] <= 1'b0;
    zext_ln298_reg_3751[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln300_4_reg_3761[0] <= 1'b1;
    zext_ln300_4_reg_3761[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    shl_ln298_1_reg_3793[1:0] <= 2'b10;
    zext_ln298_1_reg_3799[1:0] <= 2'b10;
    zext_ln298_1_reg_3799[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln298_1_reg_3799_pp0_iter2_reg[1:0] <= 2'b10;
    zext_ln298_1_reg_3799_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_16_reg_3832[0] <= 1'b1;
    zext_ln172_16_reg_3832[7:6] <= 2'b00;
    zext_ln172_17_reg_3837[0] <= 1'b1;
    zext_ln172_17_reg_3837[8:6] <= 3'b000;
    add_ln301_1_reg_3843[0] <= 1'b1;
    add_ln303_1_reg_3848[0] <= 1'b1;
    zext_ln298_2_reg_3853[1:0] <= 2'b00;
    zext_ln298_2_reg_3853[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln298_2_reg_3853_pp0_iter2_reg[1:0] <= 2'b00;
    zext_ln298_2_reg_3853_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln298_3_reg_3865[2:0] <= 3'b110;
    zext_ln298_3_reg_3865[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln298_3_reg_3865_pp0_iter2_reg[2:0] <= 3'b110;
    zext_ln298_3_reg_3865_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_21_reg_3941[1:0] <= 2'b10;
    zext_ln172_21_reg_3941[8:6] <= 3'b000;
    add_ln301_2_reg_3947[1:0] <= 2'b10;
    zext_ln172_20_reg_3988[1:0] <= 2'b10;
    zext_ln172_20_reg_3988[7:6] <= 2'b00;
    zext_ln300_6_reg_3993[1:0] <= 2'b01;
    zext_ln300_6_reg_3993[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_25_reg_4015[1:0] <= 2'b11;
    zext_ln172_25_reg_4015[8:6] <= 3'b000;
    add_ln299_3_reg_4020[1:0] <= 2'b11;
    add_ln301_3_reg_4036[1:0] <= 2'b11;
    zext_ln172_24_reg_4055[1:0] <= 2'b11;
    zext_ln172_24_reg_4055[7:6] <= 2'b00;
    add_ln299_1_reg_4160[0] <= 1'b1;
    zext_ln300_5_reg_4165[1:0] <= 2'b11;
    zext_ln300_5_reg_4165[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln299_2_reg_4231[1:0] <= 2'b10;
    add_ln303_2_reg_4251[1:0] <= 2'b10;
    add_ln303_3_reg_4311[1:0] <= 2'b11;
end
endmodule 