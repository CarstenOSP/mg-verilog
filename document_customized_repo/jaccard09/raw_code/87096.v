module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1); 
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
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_reg_3316;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_2024;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_2034;
reg   [63:0] reg_2044;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_2054;
reg   [6:0] tid_3_reg_3310;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_2072_p3;
wire   [5:0] offset_fu_2080_p1;
reg   [5:0] offset_reg_3320;
wire   [7:0] zext_ln172_21_fu_2084_p1;
reg   [7:0] zext_ln172_21_reg_3328;
reg   [3:0] tmp_89_reg_3334;
wire   [63:0] zext_ln298_fu_2120_p1;
reg   [63:0] zext_ln298_reg_3339;
wire   [4:0] tmp_s_fu_2126_p4;
reg   [4:0] tmp_s_reg_3355;
wire   [5:0] offset_5_fu_2136_p3;
reg   [5:0] offset_5_reg_3360;
reg   [3:0] tmp_97_reg_3368;
wire   [6:0] shl_ln298_1_fu_2170_p3;
reg   [6:0] shl_ln298_1_reg_3373;
wire   [63:0] zext_ln298_1_fu_2178_p1;
reg   [63:0] zext_ln298_1_reg_3379;
wire   [8:0] zext_ln172_22_fu_2184_p1;
reg   [8:0] zext_ln172_22_reg_3395;
reg   [63:0] DATA_x_load_reg_3401;
wire   [8:0] add_ln299_fu_2187_p2;
reg   [8:0] add_ln299_reg_3411;
wire   [7:0] zext_ln172_25_fu_2193_p1;
reg   [7:0] zext_ln172_25_reg_3416;
wire   [8:0] zext_ln172_26_fu_2196_p1;
reg   [8:0] zext_ln172_26_reg_3422;
wire   [8:0] add_ln299_1_fu_2199_p2;
reg   [8:0] add_ln299_1_reg_3428;
wire   [3:0] tmp_83_fu_2205_p4;
reg   [3:0] tmp_83_reg_3433;
wire   [5:0] offset_6_fu_2214_p3;
reg   [5:0] offset_6_reg_3438;
reg   [3:0] tmp_105_reg_3446;
wire   [63:0] zext_ln298_2_fu_2253_p1;
reg   [63:0] zext_ln298_2_reg_3451;
wire   [5:0] offset_7_fu_2259_p3;
reg   [5:0] offset_7_reg_3467;
reg   [3:0] tmp_113_reg_3475;
wire   [63:0] zext_ln298_3_fu_2301_p1;
reg   [63:0] zext_ln298_3_reg_3480;
reg   [63:0] DATA_x_load_2_reg_3496;
reg   [63:0] DATA_x_1_load_reg_3506;
reg   [63:0] DATA_x_1_load_2_reg_3516;
reg   [6:0] tmp_90_reg_3526;
wire   [63:0] zext_ln300_4_fu_2343_p1;
reg   [63:0] zext_ln300_4_reg_3531;
reg   [6:0] tmp_98_reg_3547;
wire   [63:0] zext_ln300_5_fu_2375_p1;
reg   [63:0] zext_ln300_5_reg_3552;
wire   [7:0] zext_ln172_29_fu_2381_p1;
reg   [7:0] zext_ln172_29_reg_3568;
wire   [8:0] zext_ln172_30_fu_2384_p1;
reg   [8:0] zext_ln172_30_reg_3574;
wire   [8:0] add_ln299_2_fu_2387_p2;
reg   [8:0] add_ln299_2_reg_3580;
wire   [8:0] zext_ln172_34_fu_2393_p1;
reg   [8:0] zext_ln172_34_reg_3585;
wire   [8:0] add_ln299_3_fu_2396_p2;
reg   [8:0] add_ln299_3_reg_3591;
reg   [63:0] DATA_x_load_4_reg_3596;
reg   [63:0] DATA_x_load_6_reg_3606;
reg   [63:0] DATA_x_1_load_4_reg_3616;
reg   [63:0] DATA_x_1_load_6_reg_3626;
reg   [5:0] tmp_91_reg_3636;
wire   [8:0] add_ln301_fu_2411_p2;
reg   [8:0] add_ln301_reg_3641;
wire   [8:0] add_ln301_1_fu_2416_p2;
reg   [8:0] add_ln301_1_reg_3646;
reg   [6:0] tmp_106_reg_3651;
wire   [63:0] zext_ln300_6_fu_2445_p1;
reg   [63:0] zext_ln300_6_reg_3656;
wire   [7:0] zext_ln172_33_fu_2451_p1;
reg   [7:0] zext_ln172_33_reg_3672;
reg   [6:0] tmp_114_reg_3678;
wire   [63:0] zext_ln300_7_fu_2480_p1;
reg   [63:0] zext_ln300_7_reg_3683;
reg   [63:0] DATA_x_load_1_reg_3694;
reg   [63:0] DATA_x_load_3_reg_3704;
reg   [63:0] DATA_x_1_load_1_reg_3719;
reg   [63:0] DATA_x_1_load_3_reg_3729;
reg   [6:0] tmp_92_reg_3739;
reg   [5:0] tmp_99_reg_3744;
reg   [6:0] tmp_100_reg_3749;
wire   [8:0] add_ln301_2_fu_2533_p2;
reg   [8:0] add_ln301_2_reg_3754;
reg   [63:0] DATA_x_load_5_reg_3759;
reg   [63:0] DATA_x_load_7_reg_3769;
reg   [63:0] DATA_x_1_load_5_reg_3779;
reg   [63:0] DATA_x_1_load_7_reg_3789;
wire   [8:0] add_ln301_3_fu_2538_p2;
reg   [8:0] add_ln301_3_reg_3799;
reg   [5:0] tmp_107_reg_3804;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [6:0] tmp_108_reg_3809;
reg   [6:0] tmp_116_reg_3814;
reg   [5:0] tmp_93_reg_3819;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] tmp_101_reg_3824;
reg   [5:0] tmp_115_reg_3829;
wire   [7:0] add_ln303_fu_2649_p2;
reg   [7:0] add_ln303_reg_3834;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [6:0] tmp_95_reg_3839;
wire   [7:0] add_ln303_1_fu_2663_p2;
reg   [7:0] add_ln303_1_reg_3844;
reg   [5:0] tmp_109_reg_3849;
reg   [5:0] tmp_117_reg_3854;
reg   [6:0] tmp_94_reg_3859;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [6:0] tmp_102_reg_3864;
reg   [6:0] tmp_103_reg_3869;
wire   [7:0] add_ln303_2_fu_2776_p2;
reg   [7:0] add_ln303_2_reg_3874;
wire   [7:0] add_ln303_3_fu_2781_p2;
reg   [7:0] add_ln303_3_reg_3879;
wire   [2:0] trunc_ln172_fu_2786_p1;
reg   [2:0] trunc_ln172_reg_3884;
wire    ap_block_pp0_stage9_11001;
wire   [2:0] trunc_ln172_5_fu_2793_p1;
reg   [2:0] trunc_ln172_5_reg_3888;
reg   [6:0] tmp_110_reg_3892;
reg   [6:0] tmp_111_reg_3897;
reg   [6:0] tmp_118_reg_3902;
wire   [2:0] trunc_ln172_6_fu_2873_p1;
reg   [2:0] trunc_ln172_6_reg_3907;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [2:0] trunc_ln172_7_fu_2877_p1;
reg   [2:0] trunc_ln172_7_reg_3911;
reg   [6:0] tmp_119_reg_3915;
reg   [7:0] tmp_96_reg_3920;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [7:0] tmp_104_reg_3925;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [7:0] tmp_112_reg_3930;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [7:0] tmp_120_reg_3935;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] DATA_x_3_load_4_reg_4000;
reg   [63:0] DATA_x_3_load_6_reg_4010;
reg   [63:0] DATA_x_3_load_1_reg_4040;
reg   [63:0] DATA_x_3_load_3_reg_4050;
reg   [63:0] DATA_x_2_load_5_reg_4060;
reg   [63:0] DATA_x_2_load_7_reg_4070;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_12_fu_2852_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln172_13_fu_2861_p1;
wire   [63:0] zext_ln172_14_fu_2899_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln172_15_fu_2911_p1;
wire   [63:0] zext_ln299_fu_2920_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln299_1_fu_2929_p1;
wire   [63:0] zext_ln299_2_fu_2947_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln299_3_fu_2965_p1;
wire   [63:0] zext_ln300_fu_2974_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln300_1_fu_2983_p1;
wire   [63:0] zext_ln300_2_fu_3001_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln300_3_fu_3010_p1;
wire   [63:0] zext_ln301_fu_3019_p1;
wire   [63:0] zext_ln301_1_fu_3028_p1;
wire   [63:0] zext_ln301_2_fu_3037_p1;
wire   [63:0] zext_ln301_3_fu_3046_p1;
wire   [63:0] zext_ln302_fu_3055_p1;
wire   [63:0] zext_ln302_1_fu_3064_p1;
wire   [63:0] zext_ln302_2_fu_3073_p1;
wire   [63:0] zext_ln302_3_fu_3082_p1;
wire   [63:0] zext_ln303_fu_3091_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln303_1_fu_3100_p1;
wire   [63:0] zext_ln303_2_fu_3109_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln303_3_fu_3118_p1;
wire   [63:0] zext_ln304_fu_3127_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln304_1_fu_3136_p1;
wire   [63:0] zext_ln304_2_fu_3145_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln304_3_fu_3154_p1;
wire   [63:0] zext_ln305_fu_3163_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln305_1_fu_3172_p1;
wire   [63:0] zext_ln305_2_fu_3181_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln305_3_fu_3190_p1;
reg   [6:0] tid_fu_138;
wire   [6:0] add_ln294_fu_2307_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
wire    ap_block_pp0_stage15_11001;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
wire   [5:0] mul_ln172_fu_2092_p0;
wire   [7:0] mul_ln172_fu_2092_p1;
wire   [12:0] mul_ln172_fu_2092_p2;
wire   [3:0] grp_fu_2108_p1;
wire   [6:0] shl_ln298_fu_2114_p2;
wire   [5:0] mul_ln172_5_fu_2148_p0;
wire   [7:0] mul_ln172_5_fu_2148_p1;
wire   [12:0] mul_ln172_5_fu_2148_p2;
wire   [3:0] grp_fu_2164_p1;
wire   [5:0] mul_ln172_6_fu_2226_p0;
wire   [7:0] mul_ln172_6_fu_2226_p1;
wire   [12:0] mul_ln172_6_fu_2226_p2;
wire   [3:0] grp_fu_2242_p1;
wire   [6:0] add_ln298_fu_2248_p2;
wire   [5:0] mul_ln172_7_fu_2271_p0;
wire   [7:0] mul_ln172_7_fu_2271_p1;
wire   [12:0] mul_ln172_7_fu_2271_p2;
wire   [3:0] grp_fu_2287_p1;
wire   [6:0] or_ln3_fu_2293_p3;
wire   [8:0] mul_ln299_fu_2320_p0;
wire   [10:0] mul_ln299_fu_2320_p1;
wire   [18:0] mul_ln299_fu_2320_p2;
wire   [6:0] or_ln_fu_2336_p3;
wire   [8:0] mul_ln299_1_fu_2352_p0;
wire   [10:0] mul_ln299_1_fu_2352_p1;
wire   [18:0] mul_ln299_1_fu_2352_p2;
wire   [6:0] or_ln300_1_fu_2368_p3;
wire   [16:0] tmp_91_fu_2402_p1;
wire  signed [16:0] grp_fu_3199_p3;
wire   [8:0] mul_ln299_2_fu_2424_p0;
wire   [10:0] mul_ln299_2_fu_2424_p1;
wire   [18:0] mul_ln299_2_fu_2424_p2;
wire   [6:0] add_ln300_2_fu_2440_p2;
wire   [8:0] mul_ln299_3_fu_2457_p0;
wire   [10:0] mul_ln299_3_fu_2457_p1;
wire   [18:0] mul_ln299_3_fu_2457_p2;
wire   [6:0] or_ln300_2_fu_2473_p3;
wire   [8:0] mul_ln301_fu_2489_p0;
wire   [10:0] mul_ln301_fu_2489_p1;
wire   [18:0] mul_ln301_fu_2489_p2;
wire   [16:0] tmp_99_fu_2505_p1;
wire  signed [16:0] grp_fu_3208_p3;
wire   [8:0] mul_ln301_1_fu_2517_p0;
wire   [10:0] mul_ln301_1_fu_2517_p1;
wire   [18:0] mul_ln301_1_fu_2517_p2;
wire   [16:0] tmp_107_fu_2543_p1;
wire  signed [16:0] grp_fu_3217_p3;
wire   [8:0] mul_ln301_2_fu_2555_p0;
wire   [10:0] mul_ln301_2_fu_2555_p1;
wire   [18:0] mul_ln301_2_fu_2555_p2;
wire   [8:0] mul_ln301_3_fu_2574_p0;
wire   [10:0] mul_ln301_3_fu_2574_p1;
wire   [18:0] mul_ln301_3_fu_2574_p2;
wire   [7:0] add_ln302_fu_2590_p2;
wire   [7:0] mul_ln302_fu_2599_p0;
wire   [9:0] mul_ln302_fu_2599_p1;
wire   [16:0] mul_ln302_fu_2599_p2;
wire   [7:0] add_ln302_1_fu_2615_p2;
wire   [7:0] mul_ln302_1_fu_2624_p0;
wire   [9:0] mul_ln302_1_fu_2624_p1;
wire   [16:0] mul_ln302_1_fu_2624_p2;
wire   [16:0] tmp_115_fu_2640_p1;
wire  signed [16:0] grp_fu_3226_p3;
wire   [18:0] tmp_95_fu_2654_p1;
wire  signed [18:0] grp_fu_3235_p3;
wire   [7:0] add_ln302_2_fu_2668_p2;
wire   [7:0] mul_ln302_2_fu_2677_p0;
wire   [9:0] mul_ln302_2_fu_2677_p1;
wire   [16:0] mul_ln302_2_fu_2677_p2;
wire   [7:0] add_ln302_3_fu_2693_p2;
wire   [7:0] mul_ln302_3_fu_2702_p0;
wire   [9:0] mul_ln302_3_fu_2702_p1;
wire   [16:0] mul_ln302_3_fu_2702_p2;
wire  signed [8:0] sext_ln303_fu_2721_p1;
wire   [8:0] mul_ln303_fu_2728_p0;
wire   [10:0] mul_ln303_fu_2728_p1;
wire   [18:0] mul_ln303_fu_2728_p2;
wire  signed [8:0] sext_ln303_1_fu_2744_p1;
wire   [8:0] mul_ln303_1_fu_2751_p0;
wire   [10:0] mul_ln303_1_fu_2751_p1;
wire   [18:0] mul_ln303_1_fu_2751_p2;
wire   [18:0] tmp_103_fu_2767_p1;
wire  signed [18:0] grp_fu_3243_p3;
wire   [2:0] grp_fu_2108_p2;
wire   [2:0] grp_fu_2164_p2;
wire  signed [8:0] sext_ln303_2_fu_2797_p1;
wire   [8:0] mul_ln303_2_fu_2804_p0;
wire   [10:0] mul_ln303_2_fu_2804_p1;
wire   [18:0] mul_ln303_2_fu_2804_p2;
wire   [18:0] tmp_111_fu_2820_p1;
wire  signed [18:0] grp_fu_3251_p3;
wire  signed [8:0] sext_ln303_3_fu_2829_p1;
wire   [8:0] mul_ln303_3_fu_2836_p0;
wire   [10:0] mul_ln303_3_fu_2836_p1;
wire   [18:0] mul_ln303_3_fu_2836_p2;
wire   [2:0] grp_fu_2242_p2;
wire   [2:0] grp_fu_2287_p2;
wire   [18:0] tmp_119_fu_2881_p1;
wire  signed [18:0] grp_fu_3259_p3;
wire   [20:0] tmp_96_fu_2890_p1;
wire  signed [20:0] grp_fu_3267_p3;
wire   [20:0] tmp_104_fu_2938_p1;
wire  signed [20:0] grp_fu_3276_p3;
wire   [20:0] tmp_112_fu_2956_p1;
wire  signed [20:0] grp_fu_3285_p3;
wire   [20:0] tmp_120_fu_2992_p1;
wire  signed [20:0] grp_fu_3294_p3;
wire   [5:0] grp_fu_3199_p0;
wire   [6:0] grp_fu_3199_p1;
wire   [8:0] grp_fu_3199_p2;
wire   [5:0] grp_fu_3208_p0;
wire   [6:0] grp_fu_3208_p1;
wire   [8:0] grp_fu_3208_p2;
wire   [5:0] grp_fu_3217_p0;
wire   [6:0] grp_fu_3217_p1;
wire   [8:0] grp_fu_3217_p2;
wire   [5:0] grp_fu_3226_p0;
wire   [6:0] grp_fu_3226_p1;
wire   [8:0] grp_fu_3226_p2;
wire   [5:0] grp_fu_3235_p0;
wire   [7:0] grp_fu_3235_p1;
wire   [9:0] grp_fu_3235_p2;
wire   [5:0] grp_fu_3243_p0;
wire   [7:0] grp_fu_3243_p1;
wire   [9:0] grp_fu_3243_p2;
wire   [5:0] grp_fu_3251_p0;
wire   [7:0] grp_fu_3251_p1;
wire   [9:0] grp_fu_3251_p2;
wire   [5:0] grp_fu_3259_p0;
wire   [7:0] grp_fu_3259_p1;
wire   [9:0] grp_fu_3259_p2;
wire   [5:0] grp_fu_3267_p0;
wire   [8:0] grp_fu_3267_p1;
wire   [10:0] grp_fu_3267_p2;
wire   [5:0] grp_fu_3276_p0;
wire   [8:0] grp_fu_3276_p1;
wire   [10:0] grp_fu_3276_p2;
wire   [5:0] grp_fu_3285_p0;
wire   [8:0] grp_fu_3285_p1;
wire   [10:0] grp_fu_3285_p2;
wire   [5:0] grp_fu_3294_p0;
wire   [8:0] grp_fu_3294_p1;
wire   [10:0] grp_fu_3294_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_3199_p00;
wire   [7:0] grp_fu_3208_p00;
wire   [7:0] grp_fu_3217_p00;
wire   [7:0] grp_fu_3226_p00;
wire   [9:0] grp_fu_3267_p00;
wire   [9:0] grp_fu_3276_p00;
wire   [9:0] grp_fu_3285_p00;
wire   [9:0] grp_fu_3294_p00;
wire   [12:0] mul_ln172_5_fu_2148_p00;
wire   [12:0] mul_ln172_6_fu_2226_p00;
wire   [12:0] mul_ln172_7_fu_2271_p00;
wire   [12:0] mul_ln172_fu_2092_p00;
wire   [18:0] mul_ln299_1_fu_2352_p00;
wire   [18:0] mul_ln299_2_fu_2424_p00;
wire   [18:0] mul_ln299_3_fu_2457_p00;
wire   [18:0] mul_ln299_fu_2320_p00;
wire   [18:0] mul_ln301_1_fu_2517_p00;
wire   [18:0] mul_ln301_2_fu_2555_p00;
wire   [18:0] mul_ln301_3_fu_2574_p00;
wire   [18:0] mul_ln301_fu_2489_p00;
wire   [16:0] mul_ln302_1_fu_2624_p00;
wire   [16:0] mul_ln302_2_fu_2677_p00;
wire   [16:0] mul_ln302_3_fu_2702_p00;
wire   [16:0] mul_ln302_fu_2599_p00;
wire   [18:0] mul_ln303_1_fu_2751_p00;
wire   [18:0] mul_ln303_2_fu_2804_p00;
wire   [18:0] mul_ln303_3_fu_2836_p00;
wire   [18:0] mul_ln303_fu_2728_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_138 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U436(.din0(mul_ln172_fu_2092_p0),.din1(mul_ln172_fu_2092_p1),.dout(mul_ln172_fu_2092_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U437(.clk(ap_clk),.reset(ap_rst),.din0(offset_fu_2080_p1),.din1(grp_fu_2108_p1),.ce(1'b1),.dout(grp_fu_2108_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U438(.din0(mul_ln172_5_fu_2148_p0),.din1(mul_ln172_5_fu_2148_p1),.dout(mul_ln172_5_fu_2148_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U439(.clk(ap_clk),.reset(ap_rst),.din0(offset_5_fu_2136_p3),.din1(grp_fu_2164_p1),.ce(1'b1),.dout(grp_fu_2164_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U440(.din0(mul_ln172_6_fu_2226_p0),.din1(mul_ln172_6_fu_2226_p1),.dout(mul_ln172_6_fu_2226_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U441(.clk(ap_clk),.reset(ap_rst),.din0(offset_6_fu_2214_p3),.din1(grp_fu_2242_p1),.ce(1'b1),.dout(grp_fu_2242_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U442(.din0(mul_ln172_7_fu_2271_p0),.din1(mul_ln172_7_fu_2271_p1),.dout(mul_ln172_7_fu_2271_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U443(.clk(ap_clk),.reset(ap_rst),.din0(offset_7_fu_2259_p3),.din1(grp_fu_2287_p1),.ce(1'b1),.dout(grp_fu_2287_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U444(.din0(mul_ln299_fu_2320_p0),.din1(mul_ln299_fu_2320_p1),.dout(mul_ln299_fu_2320_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U445(.din0(mul_ln299_1_fu_2352_p0),.din1(mul_ln299_1_fu_2352_p1),.dout(mul_ln299_1_fu_2352_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U446(.din0(mul_ln299_2_fu_2424_p0),.din1(mul_ln299_2_fu_2424_p1),.dout(mul_ln299_2_fu_2424_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U447(.din0(mul_ln299_3_fu_2457_p0),.din1(mul_ln299_3_fu_2457_p1),.dout(mul_ln299_3_fu_2457_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U448(.din0(mul_ln301_fu_2489_p0),.din1(mul_ln301_fu_2489_p1),.dout(mul_ln301_fu_2489_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U449(.din0(mul_ln301_1_fu_2517_p0),.din1(mul_ln301_1_fu_2517_p1),.dout(mul_ln301_1_fu_2517_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U450(.din0(mul_ln301_2_fu_2555_p0),.din1(mul_ln301_2_fu_2555_p1),.dout(mul_ln301_2_fu_2555_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U451(.din0(mul_ln301_3_fu_2574_p0),.din1(mul_ln301_3_fu_2574_p1),.dout(mul_ln301_3_fu_2574_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U452(.din0(mul_ln302_fu_2599_p0),.din1(mul_ln302_fu_2599_p1),.dout(mul_ln302_fu_2599_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U453(.din0(mul_ln302_1_fu_2624_p0),.din1(mul_ln302_1_fu_2624_p1),.dout(mul_ln302_1_fu_2624_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U454(.din0(mul_ln302_2_fu_2677_p0),.din1(mul_ln302_2_fu_2677_p1),.dout(mul_ln302_2_fu_2677_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U455(.din0(mul_ln302_3_fu_2702_p0),.din1(mul_ln302_3_fu_2702_p1),.dout(mul_ln302_3_fu_2702_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U456(.din0(mul_ln303_fu_2728_p0),.din1(mul_ln303_fu_2728_p1),.dout(mul_ln303_fu_2728_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U457(.din0(mul_ln303_1_fu_2751_p0),.din1(mul_ln303_1_fu_2751_p1),.dout(mul_ln303_1_fu_2751_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U458(.din0(mul_ln303_2_fu_2804_p0),.din1(mul_ln303_2_fu_2804_p1),.dout(mul_ln303_2_fu_2804_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U459(.din0(mul_ln303_3_fu_2836_p0),.din1(mul_ln303_3_fu_2836_p1),.dout(mul_ln303_3_fu_2836_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U460(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3199_p0),.din1(grp_fu_3199_p1),.din2(grp_fu_3199_p2),.ce(1'b1),.dout(grp_fu_3199_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U461(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3208_p0),.din1(grp_fu_3208_p1),.din2(grp_fu_3208_p2),.ce(1'b1),.dout(grp_fu_3208_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U462(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3217_p0),.din1(grp_fu_3217_p1),.din2(grp_fu_3217_p2),.ce(1'b1),.dout(grp_fu_3217_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U463(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3226_p0),.din1(grp_fu_3226_p1),.din2(grp_fu_3226_p2),.ce(1'b1),.dout(grp_fu_3226_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U464(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3235_p0),.din1(grp_fu_3235_p1),.din2(grp_fu_3235_p2),.ce(1'b1),.dout(grp_fu_3235_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U465(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3243_p0),.din1(grp_fu_3243_p1),.din2(grp_fu_3243_p2),.ce(1'b1),.dout(grp_fu_3243_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U466(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3251_p0),.din1(grp_fu_3251_p1),.din2(grp_fu_3251_p2),.ce(1'b1),.dout(grp_fu_3251_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U467(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3259_p0),.din1(grp_fu_3259_p1),.din2(grp_fu_3259_p2),.ce(1'b1),.dout(grp_fu_3259_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U468(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3267_p0),.din1(grp_fu_3267_p1),.din2(grp_fu_3267_p2),.ce(1'b1),.dout(grp_fu_3267_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U469(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3276_p0),.din1(grp_fu_3276_p1),.din2(grp_fu_3276_p2),.ce(1'b1),.dout(grp_fu_3276_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U470(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3285_p0),.din1(grp_fu_3285_p1),.din2(grp_fu_3285_p2),.ce(1'b1),.dout(grp_fu_3285_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U471(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3294_p0),.din1(grp_fu_3294_p1),.din2(grp_fu_3294_p2),.ce(1'b1),.dout(grp_fu_3294_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_138 <= 7'd0;
    end else if (((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_138 <= add_ln294_fu_2307_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_load_1_reg_3719 <= DATA_x_1_q1;
        DATA_x_1_load_3_reg_3729 <= DATA_x_1_q0;
        DATA_x_load_1_reg_3694 <= DATA_x_q1;
        DATA_x_load_3_reg_3704 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_2_reg_3516 <= DATA_x_1_q0;
        DATA_x_1_load_reg_3506 <= DATA_x_1_q1;
        DATA_x_load_2_reg_3496 <= DATA_x_q0;
        DATA_x_load_reg_3401 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_4_reg_3616 <= DATA_x_1_q1;
        DATA_x_1_load_6_reg_3626 <= DATA_x_1_q0;
        DATA_x_load_4_reg_3596 <= DATA_x_q1;
        DATA_x_load_6_reg_3606 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_load_5_reg_3779 <= DATA_x_1_q1;
        DATA_x_1_load_7_reg_3789 <= DATA_x_1_q0;
        DATA_x_load_5_reg_3759 <= DATA_x_q1;
        DATA_x_load_7_reg_3769 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_2_load_5_reg_4060 <= DATA_x_2_q1;
        DATA_x_2_load_7_reg_4070 <= DATA_x_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_load_1_reg_4040 <= DATA_x_3_q1;
        DATA_x_3_load_3_reg_4050 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_load_4_reg_4000 <= DATA_x_3_q1;
        DATA_x_3_load_6_reg_4010 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln299_1_reg_3428[8 : 1] <= add_ln299_1_fu_2199_p2[8 : 1];
        add_ln299_reg_3411 <= add_ln299_fu_2187_p2;
        offset_6_reg_3438[5 : 2] <= offset_6_fu_2214_p3[5 : 2];
        offset_7_reg_3467[5 : 2] <= offset_7_fu_2259_p3[5 : 2];
        tmp_105_reg_3446 <= {{mul_ln172_6_fu_2226_p2[12:9]}};
        tmp_113_reg_3475 <= {{mul_ln172_7_fu_2271_p2[12:9]}};
        tmp_83_reg_3433 <= {{tid_3_reg_3310[5:2]}};
        zext_ln172_22_reg_3395[5 : 0] <= zext_ln172_22_fu_2184_p1[5 : 0];
        zext_ln172_25_reg_3416[5 : 1] <= zext_ln172_25_fu_2193_p1[5 : 1];
        zext_ln172_26_reg_3422[5 : 1] <= zext_ln172_26_fu_2196_p1[5 : 1];
        zext_ln298_2_reg_3451[6 : 2] <= zext_ln298_2_fu_2253_p1[6 : 2];
        zext_ln298_3_reg_3480[6 : 3] <= zext_ln298_3_fu_2301_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln299_2_reg_3580[8 : 2] <= add_ln299_2_fu_2387_p2[8 : 2];
        add_ln299_3_reg_3591[8 : 2] <= add_ln299_3_fu_2396_p2[8 : 2];
        tmp_90_reg_3526 <= {{mul_ln299_fu_2320_p2[18:12]}};
        tmp_98_reg_3547 <= {{mul_ln299_1_fu_2352_p2[18:12]}};
        zext_ln172_29_reg_3568[5 : 2] <= zext_ln172_29_fu_2381_p1[5 : 2];
        zext_ln172_30_reg_3574[5 : 2] <= zext_ln172_30_fu_2384_p1[5 : 2];
        zext_ln172_34_reg_3585[5 : 2] <= zext_ln172_34_fu_2393_p1[5 : 2];
        zext_ln300_4_reg_3531[6 : 1] <= zext_ln300_4_fu_2343_p1[6 : 1];
        zext_ln300_5_reg_3552[6 : 2] <= zext_ln300_5_fu_2375_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln301_1_reg_3646[8 : 1] <= add_ln301_1_fu_2416_p2[8 : 1];
        add_ln301_reg_3641 <= add_ln301_fu_2411_p2;
        tmp_106_reg_3651 <= {{mul_ln299_2_fu_2424_p2[18:12]}};
        tmp_114_reg_3678 <= {{mul_ln299_3_fu_2457_p2[18:12]}};
        tmp_91_reg_3636 <= {{tmp_91_fu_2402_p1[16:11]}};
        zext_ln172_33_reg_3672[5 : 2] <= zext_ln172_33_fu_2451_p1[5 : 2];
        zext_ln300_6_reg_3656[6 : 2] <= zext_ln300_6_fu_2445_p1[6 : 2];
        zext_ln300_7_reg_3683[6 : 3] <= zext_ln300_7_fu_2480_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln301_2_reg_3754[8 : 2] <= add_ln301_2_fu_2533_p2[8 : 2];
        add_ln301_3_reg_3799[8 : 2] <= add_ln301_3_fu_2538_p2[8 : 2];
        tmp_100_reg_3749 <= {{mul_ln301_1_fu_2517_p2[18:12]}};
        tmp_92_reg_3739 <= {{mul_ln301_fu_2489_p2[18:12]}};
        tmp_99_reg_3744 <= {{tmp_99_fu_2505_p1[16:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln303_1_reg_3844[7 : 1] <= add_ln303_1_fu_2663_p2[7 : 1];
        add_ln303_reg_3834 <= add_ln303_fu_2649_p2;
        tmp_109_reg_3849 <= {{mul_ln302_2_fu_2677_p2[16:11]}};
        tmp_117_reg_3854 <= {{mul_ln302_3_fu_2702_p2[16:11]}};
        tmp_95_reg_3839 <= {{tmp_95_fu_2654_p1[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln303_2_reg_3874[7 : 2] <= add_ln303_2_fu_2776_p2[7 : 2];
        add_ln303_3_reg_3879[7 : 2] <= add_ln303_3_fu_2781_p2[7 : 2];
        tmp_102_reg_3864 <= {{mul_ln303_1_fu_2751_p2[18:12]}};
        tmp_103_reg_3869 <= {{tmp_103_fu_2767_p1[18:12]}};
        tmp_94_reg_3859 <= {{mul_ln303_fu_2728_p2[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_5_reg_3360[5 : 1] <= offset_5_fu_2136_p3[5 : 1];
        offset_reg_3320 <= offset_fu_2080_p1;
        shl_ln298_1_reg_3373[6 : 2] <= shl_ln298_1_fu_2170_p3[6 : 2];
        tid_3_reg_3310 <= ap_sig_allocacmp_tid_3;
        tmp_89_reg_3334 <= {{mul_ln172_fu_2092_p2[12:9]}};
        tmp_97_reg_3368 <= {{mul_ln172_5_fu_2148_p2[12:9]}};
        tmp_reg_3316 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_s_reg_3355 <= {{ap_sig_allocacmp_tid_3[5:1]}};
        zext_ln172_21_reg_3328[5 : 0] <= zext_ln172_21_fu_2084_p1[5 : 0];
        zext_ln298_1_reg_3379[6 : 2] <= zext_ln298_1_fu_2178_p1[6 : 2];
        zext_ln298_reg_3339[6 : 1] <= zext_ln298_fu_2120_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2024 <= DATA_x_2_q1;
        reg_2034 <= DATA_x_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2044 <= DATA_x_3_q1;
        reg_2054 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_101_reg_3824 <= {{mul_ln302_1_fu_2624_p2[16:11]}};
        tmp_115_reg_3829 <= {{tmp_115_fu_2640_p1[16:11]}};
        tmp_93_reg_3819 <= {{mul_ln302_fu_2599_p2[16:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        tmp_104_reg_3925 <= {{tmp_104_fu_2938_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_107_reg_3804 <= {{tmp_107_fu_2543_p1[16:11]}};
        tmp_108_reg_3809 <= {{mul_ln301_2_fu_2555_p2[18:12]}};
        tmp_116_reg_3814 <= {{mul_ln301_3_fu_2574_p2[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_110_reg_3892 <= {{mul_ln303_2_fu_2804_p2[18:12]}};
        tmp_111_reg_3897 <= {{tmp_111_fu_2820_p1[18:12]}};
        tmp_118_reg_3902 <= {{mul_ln303_3_fu_2836_p2[18:12]}};
        trunc_ln172_5_reg_3888 <= trunc_ln172_5_fu_2793_p1;
        trunc_ln172_reg_3884 <= trunc_ln172_fu_2786_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        tmp_112_reg_3930 <= {{tmp_112_fu_2956_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_119_reg_3915 <= {{tmp_119_fu_2881_p1[18:12]}};
        trunc_ln172_6_reg_3907 <= trunc_ln172_6_fu_2873_p1;
        trunc_ln172_7_reg_3911 <= trunc_ln172_7_fu_2877_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_120_reg_3935 <= {{tmp_120_fu_2992_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp_96_reg_3920 <= {{tmp_96_fu_2890_p1[20:13]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln300_7_fu_2480_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln300_5_fu_2375_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln298_3_fu_2301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln298_1_fu_2178_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln300_6_fu_2445_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln300_4_fu_2343_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln298_2_fu_2253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_2120_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_2_address0_local = zext_ln300_7_reg_3683;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_address0_local = zext_ln300_5_reg_3552;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln298_3_reg_3480;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln298_1_reg_3379;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_2_address1_local = zext_ln300_6_reg_3656;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_address1_local = zext_ln300_4_reg_3531;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln298_2_reg_3451;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln298_reg_3339;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_3_address0_local = zext_ln300_7_reg_3683;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address0_local = zext_ln300_5_reg_3552;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln298_3_reg_3480;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln298_1_reg_3379;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_3_address1_local = zext_ln300_6_reg_3656;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address1_local = zext_ln300_4_reg_3531;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln298_2_reg_3451;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln298_reg_3339;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln300_7_fu_2480_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln300_5_fu_2375_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln298_3_fu_2301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln298_1_fu_2178_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln300_6_fu_2445_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln300_4_fu_2343_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln298_2_fu_2253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_2120_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3316 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln305_3_fu_3190_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln305_1_fu_3172_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln304_3_fu_3154_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln304_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln303_3_fu_3118_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln303_1_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln302_3_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln302_1_fu_3064_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln301_3_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln301_1_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address0_local = zext_ln300_3_fu_3010_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address0_local = zext_ln300_1_fu_2983_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address0_local = zext_ln299_3_fu_2965_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address0_local = zext_ln299_1_fu_2929_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address0_local = zext_ln172_15_fu_2911_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address0_local = zext_ln172_13_fu_2861_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address1_local = zext_ln305_2_fu_3181_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address1_local = zext_ln305_fu_3163_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln304_2_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln304_fu_3127_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln303_2_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln303_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln302_2_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln302_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln301_2_fu_3037_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln301_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address1_local = zext_ln300_2_fu_3001_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address1_local = zext_ln300_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address1_local = zext_ln299_2_fu_2947_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address1_local = zext_ln299_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address1_local = zext_ln172_14_fu_2899_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address1_local = zext_ln172_12_fu_2852_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d0_local = DATA_x_3_load_3_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_x_2_load_7_reg_4070;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_3_load_6_reg_4010;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d0_local = reg_2054;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_1_load_7_reg_3789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_1_load_3_reg_3729;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d0_local = DATA_x_load_7_reg_3769;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d0_local = DATA_x_load_3_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d0_local = DATA_x_1_load_6_reg_3626;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d0_local = DATA_x_1_load_2_reg_3516;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d0_local = DATA_x_load_6_reg_3606;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d0_local = DATA_x_load_2_reg_3496;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d1_local = DATA_x_3_load_1_reg_4040;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = DATA_x_2_load_5_reg_4060;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = DATA_x_3_load_4_reg_4000;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d1_local = reg_2044;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d1_local = reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_1_load_5_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_x_1_load_1_reg_3719;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d1_local = DATA_x_load_5_reg_3759;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d1_local = DATA_x_load_1_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d1_local = DATA_x_1_load_4_reg_3616;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d1_local = DATA_x_1_load_reg_3506;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d1_local = DATA_x_load_4_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d1_local = DATA_x_load_reg_3401;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))| ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_5_reg_3888 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_7_reg_3911 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0== ap_block_pp0_stage9_11001) & (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3884 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3907 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln305_3_fu_3190_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln305_1_fu_3172_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln304_3_fu_3154_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln304_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln303_3_fu_3118_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln303_1_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln302_3_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln302_1_fu_3064_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln301_3_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln301_1_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address0_local = zext_ln300_3_fu_3010_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address0_local = zext_ln300_1_fu_2983_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address0_local = zext_ln299_3_fu_2965_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address0_local = zext_ln299_1_fu_2929_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address0_local = zext_ln172_15_fu_2911_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address0_local = zext_ln172_13_fu_2861_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address1_local = zext_ln305_2_fu_3181_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address1_local = zext_ln305_fu_3163_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln304_2_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln304_fu_3127_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln303_2_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln303_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln302_2_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln302_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln301_2_fu_3037_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln301_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address1_local = zext_ln300_2_fu_3001_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address1_local = zext_ln300_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address1_local = zext_ln299_2_fu_2947_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address1_local = zext_ln299_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address1_local = zext_ln172_14_fu_2899_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address1_local = zext_ln172_12_fu_2852_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d0_local = DATA_x_3_load_3_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_x_2_load_7_reg_4070;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_3_load_6_reg_4010;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d0_local = reg_2054;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_load_7_reg_3789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_1_load_3_reg_3729;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d0_local = DATA_x_load_7_reg_3769;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d0_local = DATA_x_load_3_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d0_local = DATA_x_1_load_6_reg_3626;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d0_local = DATA_x_1_load_2_reg_3516;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d0_local = DATA_x_load_6_reg_3606;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d0_local = DATA_x_load_2_reg_3496;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d1_local = DATA_x_3_load_1_reg_4040;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = DATA_x_2_load_5_reg_4060;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = DATA_x_3_load_4_reg_4000;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d1_local = reg_2044;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d1_local = reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_1_load_5_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_x_1_load_1_reg_3719;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d1_local = DATA_x_load_5_reg_3759;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d1_local = DATA_x_load_1_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d1_local = DATA_x_1_load_4_reg_3616;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d1_local = DATA_x_1_load_reg_3506;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d1_local = DATA_x_load_4_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d1_local = DATA_x_load_reg_3401;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))| ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_5_reg_3888 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_7_reg_3911 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0== ap_block_pp0_stage9_11001) & (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3884 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3907 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln305_3_fu_3190_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address0_local = zext_ln305_1_fu_3172_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln304_3_fu_3154_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln304_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln303_3_fu_3118_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln303_1_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln302_3_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln302_1_fu_3064_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln301_3_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln301_1_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_address0_local = zext_ln300_3_fu_3010_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_address0_local = zext_ln300_1_fu_2983_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_address0_local = zext_ln299_3_fu_2965_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_address0_local = zext_ln299_1_fu_2929_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_address0_local = zext_ln172_15_fu_2911_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_address0_local = zext_ln172_13_fu_2861_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address1_local = zext_ln305_2_fu_3181_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address1_local = zext_ln305_fu_3163_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln304_2_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln304_fu_3127_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln303_2_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln303_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln302_2_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln302_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln301_2_fu_3037_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln301_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_address1_local = zext_ln300_2_fu_3001_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_address1_local = zext_ln300_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_address1_local = zext_ln299_2_fu_2947_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_address1_local = zext_ln299_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_address1_local = zext_ln172_14_fu_2899_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_address1_local = zext_ln172_12_fu_2852_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d0_local = DATA_x_3_load_3_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d0_local = DATA_x_2_load_7_reg_4070;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_x_3_load_6_reg_4010;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_d0_local = reg_2054;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_load_7_reg_3789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_1_load_3_reg_3729;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_d0_local = DATA_x_load_7_reg_3769;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_d0_local = DATA_x_load_3_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_d0_local = DATA_x_1_load_6_reg_3626;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_d0_local = DATA_x_1_load_2_reg_3516;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_d0_local = DATA_x_load_6_reg_3606;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_d0_local = DATA_x_load_2_reg_3496;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d1_local = DATA_x_3_load_1_reg_4040;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = DATA_x_2_load_5_reg_4060;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = DATA_x_3_load_4_reg_4000;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_d1_local = reg_2044;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d1_local = reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_1_load_5_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_x_1_load_1_reg_3719;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_d1_local = DATA_x_load_5_reg_3759;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_d1_local = DATA_x_load_1_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_d1_local = DATA_x_1_load_4_reg_3616;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_d1_local = DATA_x_1_load_reg_3506;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_d1_local = DATA_x_load_4_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_d1_local = DATA_x_load_reg_3401;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))| ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_5_reg_3888 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_7_reg_3911 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0== ap_block_pp0_stage9_11001) & (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3884 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3907 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln305_3_fu_3190_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address0_local = zext_ln305_1_fu_3172_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln304_3_fu_3154_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln304_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln303_3_fu_3118_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln303_1_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln302_3_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln302_1_fu_3064_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln301_3_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln301_1_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_address0_local = zext_ln300_3_fu_3010_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_address0_local = zext_ln300_1_fu_2983_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_address0_local = zext_ln299_3_fu_2965_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_address0_local = zext_ln299_1_fu_2929_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_address0_local = zext_ln172_15_fu_2911_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_address0_local = zext_ln172_13_fu_2861_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address1_local = zext_ln305_2_fu_3181_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address1_local = zext_ln305_fu_3163_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln304_2_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln304_fu_3127_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln303_2_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln303_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln302_2_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln302_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln301_2_fu_3037_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln301_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_address1_local = zext_ln300_2_fu_3001_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_address1_local = zext_ln300_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_address1_local = zext_ln299_2_fu_2947_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_address1_local = zext_ln299_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_address1_local = zext_ln172_14_fu_2899_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_address1_local = zext_ln172_12_fu_2852_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d0_local = DATA_x_3_load_3_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d0_local = DATA_x_2_load_7_reg_4070;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_x_3_load_6_reg_4010;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_d0_local = reg_2054;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_load_7_reg_3789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_1_load_3_reg_3729;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_d0_local = DATA_x_load_7_reg_3769;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_d0_local = DATA_x_load_3_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_d0_local = DATA_x_1_load_6_reg_3626;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_d0_local = DATA_x_1_load_2_reg_3516;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_d0_local = DATA_x_load_6_reg_3606;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_d0_local = DATA_x_load_2_reg_3496;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d1_local = DATA_x_3_load_1_reg_4040;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = DATA_x_2_load_5_reg_4060;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = DATA_x_3_load_4_reg_4000;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_d1_local = reg_2044;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d1_local = reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_1_load_5_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_x_1_load_1_reg_3719;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_d1_local = DATA_x_load_5_reg_3759;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_d1_local = DATA_x_load_1_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_d1_local = DATA_x_1_load_4_reg_3616;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_d1_local = DATA_x_1_load_reg_3506;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_d1_local = DATA_x_load_4_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_d1_local = DATA_x_load_reg_3401;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))| ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_5_reg_3888 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_7_reg_3911 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0== ap_block_pp0_stage9_11001) & (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3884 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3907 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_5_address0_local = zext_ln305_3_fu_3190_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_address0_local = zext_ln305_1_fu_3172_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address0_local = zext_ln304_3_fu_3154_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln304_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln303_3_fu_3118_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln303_1_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln302_3_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln302_1_fu_3064_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln301_3_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln301_1_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_address0_local = zext_ln300_3_fu_3010_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_address0_local = zext_ln300_1_fu_2983_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_address0_local = zext_ln299_3_fu_2965_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_address0_local = zext_ln299_1_fu_2929_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_address0_local = zext_ln172_15_fu_2911_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_address0_local = zext_ln172_13_fu_2861_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_5_address1_local = zext_ln305_2_fu_3181_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_address1_local = zext_ln305_fu_3163_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln304_2_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address1_local = zext_ln304_fu_3127_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln303_2_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln303_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln302_2_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln302_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln301_2_fu_3037_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln301_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_address1_local = zext_ln300_2_fu_3001_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_address1_local = zext_ln300_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_address1_local = zext_ln299_2_fu_2947_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_address1_local = zext_ln299_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_address1_local = zext_ln172_14_fu_2899_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_address1_local = zext_ln172_12_fu_2852_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_d0_local = DATA_x_3_load_3_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d0_local = DATA_x_2_load_7_reg_4070;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_x_3_load_6_reg_4010;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_5_d0_local = reg_2054;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_load_7_reg_3789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_1_load_3_reg_3729;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_d0_local = DATA_x_load_7_reg_3769;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_d0_local = DATA_x_load_3_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_d0_local = DATA_x_1_load_6_reg_3626;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_d0_local = DATA_x_1_load_2_reg_3516;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_d0_local = DATA_x_load_6_reg_3606;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_d0_local = DATA_x_load_2_reg_3496;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_d1_local = DATA_x_3_load_1_reg_4040;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d1_local = DATA_x_2_load_5_reg_4060;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = DATA_x_3_load_4_reg_4000;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_5_d1_local = reg_2044;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d1_local = reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_1_load_5_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_x_1_load_1_reg_3719;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_d1_local = DATA_x_load_5_reg_3759;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_d1_local = DATA_x_load_1_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_d1_local = DATA_x_1_load_4_reg_3616;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_d1_local = DATA_x_1_load_reg_3506;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_d1_local = DATA_x_load_4_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_d1_local = DATA_x_load_reg_3401;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911 == 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911 == 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911 == 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911== 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911 == 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911 == 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911 == 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_7_reg_3911 == 3'd4) & ~(trunc_ln172_7_reg_3911 == 3'd0) & ~(trunc_ln172_7_reg_3911 == 3'd1) & ~(trunc_ln172_7_reg_3911 == 3'd2) & ~(trunc_ln172_7_reg_3911 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888 == 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888 == 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888== 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888 == 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888 == 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888 == 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888 == 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_5_reg_3888 == 3'd4) & ~(trunc_ln172_5_reg_3888 == 3'd0) & ~(trunc_ln172_5_reg_3888 == 3'd1) & ~(trunc_ln172_5_reg_3888 == 3'd2) & ~(trunc_ln172_5_reg_3888 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907 == 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907 == 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907 == 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907== 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907 == 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907 == 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907 == 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_6_reg_3907 == 3'd4) & ~(trunc_ln172_6_reg_3907 == 3'd0) & ~(trunc_ln172_6_reg_3907 == 3'd1) & ~(trunc_ln172_6_reg_3907 == 3'd2) & ~(trunc_ln172_6_reg_3907 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1) & ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1) & ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1)& ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1) & ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1) & ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1) & ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1) & ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_3884 == 3'd4) & ~(trunc_ln172_reg_3884 == 3'd0) & ~(trunc_ln172_reg_3884 == 3'd1) & ~(trunc_ln172_reg_3884 == 3'd2) & ~(trunc_ln172_reg_3884 == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln305_3_fu_3190_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln305_1_fu_3172_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln304_3_fu_3154_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln304_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln303_3_fu_3118_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln303_1_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln302_3_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln302_1_fu_3064_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln301_3_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln301_1_fu_3028_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address0_local = zext_ln300_3_fu_3010_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address0_local = zext_ln300_1_fu_2983_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address0_local = zext_ln299_3_fu_2965_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address0_local = zext_ln299_1_fu_2929_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address0_local = zext_ln172_15_fu_2911_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address0_local = zext_ln172_13_fu_2861_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address1_local = zext_ln305_2_fu_3181_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address1_local = zext_ln305_fu_3163_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln304_2_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln304_fu_3127_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln303_2_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln303_fu_3091_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln302_2_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln302_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln301_2_fu_3037_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln301_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address1_local = zext_ln300_2_fu_3001_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address1_local = zext_ln300_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address1_local = zext_ln299_2_fu_2947_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address1_local = zext_ln299_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address1_local = zext_ln172_14_fu_2899_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address1_local = zext_ln172_12_fu_2852_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d0_local = DATA_x_3_load_3_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_x_2_load_7_reg_4070;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_3_load_6_reg_4010;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d0_local = reg_2054;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_load_7_reg_3789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_1_load_3_reg_3729;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d0_local = DATA_x_load_7_reg_3769;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d0_local = DATA_x_load_3_reg_3704;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d0_local = DATA_x_1_load_6_reg_3626;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d0_local = DATA_x_1_load_2_reg_3516;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d0_local = DATA_x_load_6_reg_3606;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d0_local = DATA_x_load_2_reg_3496;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d1_local = DATA_x_3_load_1_reg_4040;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = DATA_x_2_load_5_reg_4060;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = DATA_x_3_load_4_reg_4000;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d1_local = reg_2044;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d1_local = reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_1_load_5_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_x_1_load_1_reg_3719;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d1_local = DATA_x_load_5_reg_3759;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d1_local = DATA_x_load_1_reg_3694;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d1_local = DATA_x_1_load_4_reg_3616;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d1_local = DATA_x_1_load_reg_3506;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d1_local = DATA_x_load_4_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d1_local = DATA_x_load_reg_3401;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))| ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_5_reg_3888 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_7_reg_3911 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_3316 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0== ap_block_pp0_stage9_11001) & (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_3884 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3907 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
assign add_ln294_fu_2307_p2 = (tid_3_reg_3310 + 7'd4);
assign add_ln298_fu_2248_p2 = (shl_ln298_1_reg_3373 + 7'd2);
assign add_ln299_1_fu_2199_p2 = ($signed(zext_ln172_26_fu_2196_p1) + $signed(9'd288));
assign add_ln299_2_fu_2387_p2 = ($signed(zext_ln172_30_fu_2384_p1) + $signed(9'd288));
assign add_ln299_3_fu_2396_p2 = ($signed(zext_ln172_34_fu_2393_p1) + $signed(9'd288));
assign add_ln299_fu_2187_p2 = ($signed(zext_ln172_22_fu_2184_p1) + $signed(9'd288));
assign add_ln300_2_fu_2440_p2 = (shl_ln298_1_reg_3373 + 7'd3);
assign add_ln301_1_fu_2416_p2 = ($signed(zext_ln172_26_reg_3422) + $signed(9'd360));
assign add_ln301_2_fu_2533_p2 = ($signed(zext_ln172_30_reg_3574) + $signed(9'd360));
assign add_ln301_3_fu_2538_p2 = ($signed(zext_ln172_34_reg_3585) + $signed(9'd360));
assign add_ln301_fu_2411_p2 = ($signed(zext_ln172_22_reg_3395) + $signed(9'd360));
assign add_ln302_1_fu_2615_p2 = ($signed(zext_ln172_25_reg_3416) + $signed(8'd144));
assign add_ln302_2_fu_2668_p2 = ($signed(zext_ln172_29_reg_3568) + $signed(8'd144));
assign add_ln302_3_fu_2693_p2 = ($signed(zext_ln172_33_reg_3672) + $signed(8'd144));
assign add_ln302_fu_2590_p2 = ($signed(zext_ln172_21_reg_3328) + $signed(8'd144));
assign add_ln303_1_fu_2663_p2 = ($signed(zext_ln172_25_reg_3416) + $signed(8'd176));
assign add_ln303_2_fu_2776_p2 = ($signed(zext_ln172_29_reg_3568) + $signed(8'd176));
assign add_ln303_3_fu_2781_p2 = ($signed(zext_ln172_33_reg_3672) + $signed(8'd176));
assign add_ln303_fu_2649_p2 = ($signed(zext_ln172_21_reg_3328) + $signed(8'd176));
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign grp_fu_2108_p1 = 6'd6;
assign grp_fu_2164_p1 = 6'd6;
assign grp_fu_2242_p1 = 6'd6;
assign grp_fu_2287_p1 = 6'd6;
assign grp_fu_3199_p0 = grp_fu_3199_p00;
assign grp_fu_3199_p00 = offset_fu_2080_p1;
assign grp_fu_3199_p1 = 8'd72;
assign grp_fu_3199_p2 = 17'd342;
assign grp_fu_3208_p0 = grp_fu_3208_p00;
assign grp_fu_3208_p00 = offset_5_reg_3360;
assign grp_fu_3208_p1 = 8'd72;
assign grp_fu_3208_p2 = 17'd342;
assign grp_fu_3217_p0 = grp_fu_3217_p00;
assign grp_fu_3217_p00 = offset_6_reg_3438;
assign grp_fu_3217_p1 = 8'd72;
assign grp_fu_3217_p2 = 17'd342;
assign grp_fu_3226_p0 = grp_fu_3226_p00;
assign grp_fu_3226_p00 = offset_7_reg_3467;
assign grp_fu_3226_p1 = 8'd72;
assign grp_fu_3226_p2 = 17'd342;
assign grp_fu_3235_p0 = zext_ln172_22_reg_3395;
assign grp_fu_3235_p1 = 9'd216;
assign grp_fu_3235_p2 = 19'd683;
assign grp_fu_3243_p0 = zext_ln172_26_reg_3422;
assign grp_fu_3243_p1 = 9'd216;
assign grp_fu_3243_p2 = 19'd683;
assign grp_fu_3251_p0 = zext_ln172_30_reg_3574;
assign grp_fu_3251_p1 = 9'd216;
assign grp_fu_3251_p2 = 19'd683;
assign grp_fu_3259_p0 = zext_ln172_34_reg_3585;
assign grp_fu_3259_p1 = 9'd216;
assign grp_fu_3259_p2 = 19'd683;
assign grp_fu_3267_p0 = grp_fu_3267_p00;
assign grp_fu_3267_p00 = offset_reg_3320;
assign grp_fu_3267_p1 = 10'd504;
assign grp_fu_3267_p2 = 21'd1366;
assign grp_fu_3276_p0 = grp_fu_3276_p00;
assign grp_fu_3276_p00 = offset_5_reg_3360;
assign grp_fu_3276_p1 = 10'd504;
assign grp_fu_3276_p2 = 21'd1366;
assign grp_fu_3285_p0 = grp_fu_3285_p00;
assign grp_fu_3285_p00 = offset_6_reg_3438;
assign grp_fu_3285_p1 = 10'd504;
assign grp_fu_3285_p2 = 21'd1366;
assign grp_fu_3294_p0 = grp_fu_3294_p00;
assign grp_fu_3294_p00 = offset_7_reg_3467;
assign grp_fu_3294_p1 = 10'd504;
assign grp_fu_3294_p2 = 21'd1366;
assign mul_ln172_5_fu_2148_p0 = mul_ln172_5_fu_2148_p00;
assign mul_ln172_5_fu_2148_p00 = offset_5_fu_2136_p3;
assign mul_ln172_5_fu_2148_p1 = 13'd86;
assign mul_ln172_6_fu_2226_p0 = mul_ln172_6_fu_2226_p00;
assign mul_ln172_6_fu_2226_p00 = offset_6_fu_2214_p3;
assign mul_ln172_6_fu_2226_p1 = 13'd86;
assign mul_ln172_7_fu_2271_p0 = mul_ln172_7_fu_2271_p00;
assign mul_ln172_7_fu_2271_p00 = offset_7_fu_2259_p3;
assign mul_ln172_7_fu_2271_p1 = 13'd86;
assign mul_ln172_fu_2092_p0 = mul_ln172_fu_2092_p00;
assign mul_ln172_fu_2092_p00 = offset_fu_2080_p1;
assign mul_ln172_fu_2092_p1 = 13'd86;
assign mul_ln299_1_fu_2352_p0 = mul_ln299_1_fu_2352_p00;
assign mul_ln299_1_fu_2352_p00 = add_ln299_1_reg_3428;
assign mul_ln299_1_fu_2352_p1 = 19'd683;
assign mul_ln299_2_fu_2424_p0 = mul_ln299_2_fu_2424_p00;
assign mul_ln299_2_fu_2424_p00 = add_ln299_2_reg_3580;
assign mul_ln299_2_fu_2424_p1 = 19'd683;
assign mul_ln299_3_fu_2457_p0 = mul_ln299_3_fu_2457_p00;
assign mul_ln299_3_fu_2457_p00 = add_ln299_3_reg_3591;
assign mul_ln299_3_fu_2457_p1 = 19'd683;
assign mul_ln299_fu_2320_p0 = mul_ln299_fu_2320_p00;
assign mul_ln299_fu_2320_p00 = add_ln299_reg_3411;
assign mul_ln299_fu_2320_p1 = 19'd683;
assign mul_ln301_1_fu_2517_p0 = mul_ln301_1_fu_2517_p00;
assign mul_ln301_1_fu_2517_p00 = add_ln301_1_reg_3646;
assign mul_ln301_1_fu_2517_p1 = 19'd683;
assign mul_ln301_2_fu_2555_p0 = mul_ln301_2_fu_2555_p00;
assign mul_ln301_2_fu_2555_p00 = add_ln301_2_reg_3754;
assign mul_ln301_2_fu_2555_p1 = 19'd683;
assign mul_ln301_3_fu_2574_p0 = mul_ln301_3_fu_2574_p00;
assign mul_ln301_3_fu_2574_p00 = add_ln301_3_reg_3799;
assign mul_ln301_3_fu_2574_p1 = 19'd683;
assign mul_ln301_fu_2489_p0 = mul_ln301_fu_2489_p00;
assign mul_ln301_fu_2489_p00 = add_ln301_reg_3641;
assign mul_ln301_fu_2489_p1 = 19'd683;
assign mul_ln302_1_fu_2624_p0 = mul_ln302_1_fu_2624_p00;
assign mul_ln302_1_fu_2624_p00 = add_ln302_1_fu_2615_p2;
assign mul_ln302_1_fu_2624_p1 = 17'd342;
assign mul_ln302_2_fu_2677_p0 = mul_ln302_2_fu_2677_p00;
assign mul_ln302_2_fu_2677_p00 = add_ln302_2_fu_2668_p2;
assign mul_ln302_2_fu_2677_p1 = 17'd342;
assign mul_ln302_3_fu_2702_p0 = mul_ln302_3_fu_2702_p00;
assign mul_ln302_3_fu_2702_p00 = add_ln302_3_fu_2693_p2;
assign mul_ln302_3_fu_2702_p1 = 17'd342;
assign mul_ln302_fu_2599_p0 = mul_ln302_fu_2599_p00;
assign mul_ln302_fu_2599_p00 = add_ln302_fu_2590_p2;
assign mul_ln302_fu_2599_p1 = 17'd342;
assign mul_ln303_1_fu_2751_p0 = mul_ln303_1_fu_2751_p00;
assign mul_ln303_1_fu_2751_p00 = $unsigned(sext_ln303_1_fu_2744_p1);
assign mul_ln303_1_fu_2751_p1 = 19'd683;
assign mul_ln303_2_fu_2804_p0 = mul_ln303_2_fu_2804_p00;
assign mul_ln303_2_fu_2804_p00 = $unsigned(sext_ln303_2_fu_2797_p1);
assign mul_ln303_2_fu_2804_p1 = 19'd683;
assign mul_ln303_3_fu_2836_p0 = mul_ln303_3_fu_2836_p00;
assign mul_ln303_3_fu_2836_p00 = $unsigned(sext_ln303_3_fu_2829_p1);
assign mul_ln303_3_fu_2836_p1 = 19'd683;
assign mul_ln303_fu_2728_p0 = mul_ln303_fu_2728_p00;
assign mul_ln303_fu_2728_p00 = $unsigned(sext_ln303_fu_2721_p1);
assign mul_ln303_fu_2728_p1 = 19'd683;
assign offset_5_fu_2136_p3 = {{tmp_s_fu_2126_p4}, {1'd1}};
assign offset_6_fu_2214_p3 = {{tmp_83_fu_2205_p4}, {2'd2}};
assign offset_7_fu_2259_p3 = {{tmp_83_fu_2205_p4}, {2'd3}};
assign offset_fu_2080_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln300_1_fu_2368_p3 = {{tmp_s_reg_3355}, {2'd3}};
assign or_ln300_2_fu_2473_p3 = {{tmp_83_reg_3433}, {3'd7}};
assign or_ln3_fu_2293_p3 = {{tmp_83_fu_2205_p4}, {3'd6}};
assign or_ln_fu_2336_p3 = {{offset_reg_3320}, {1'd1}};
assign sext_ln303_1_fu_2744_p1 = $signed(add_ln303_1_reg_3844);
assign sext_ln303_2_fu_2797_p1 = $signed(add_ln303_2_reg_3874);
assign sext_ln303_3_fu_2829_p1 = $signed(add_ln303_3_reg_3879);
assign sext_ln303_fu_2721_p1 = $signed(add_ln303_reg_3834);
assign shl_ln298_1_fu_2170_p3 = {{tmp_s_fu_2126_p4}, {2'd2}};
assign shl_ln298_fu_2114_p2 = ap_sig_allocacmp_tid_3 << 7'd1;
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_103_fu_2767_p1 = grp_fu_3243_p3;
assign tmp_104_fu_2938_p1 = grp_fu_3276_p3;
assign tmp_107_fu_2543_p1 = grp_fu_3217_p3;
assign tmp_111_fu_2820_p1 = grp_fu_3251_p3;
assign tmp_112_fu_2956_p1 = grp_fu_3285_p3;
assign tmp_115_fu_2640_p1 = grp_fu_3226_p3;
assign tmp_119_fu_2881_p1 = grp_fu_3259_p3;
assign tmp_120_fu_2992_p1 = grp_fu_3294_p3;
assign tmp_83_fu_2205_p4 = {{tid_3_reg_3310[5:2]}};
assign tmp_91_fu_2402_p1 = grp_fu_3199_p3;
assign tmp_95_fu_2654_p1 = grp_fu_3235_p3;
assign tmp_96_fu_2890_p1 = grp_fu_3267_p3;
assign tmp_99_fu_2505_p1 = grp_fu_3208_p3;
assign tmp_fu_2072_p3 = ap_sig_allocacmp_tid_3[32'd6];
assign tmp_s_fu_2126_p4 = {{ap_sig_allocacmp_tid_3[5:1]}};
assign trunc_ln172_5_fu_2793_p1 = grp_fu_2164_p2[2:0];
assign trunc_ln172_6_fu_2873_p1 = grp_fu_2242_p2[2:0];
assign trunc_ln172_7_fu_2877_p1 = grp_fu_2287_p2[2:0];
assign trunc_ln172_fu_2786_p1 = grp_fu_2108_p2[2:0];
assign zext_ln172_12_fu_2852_p1 = tmp_89_reg_3334;
assign zext_ln172_13_fu_2861_p1 = tmp_97_reg_3368;
assign zext_ln172_14_fu_2899_p1 = tmp_105_reg_3446;
assign zext_ln172_15_fu_2911_p1 = tmp_113_reg_3475;
assign zext_ln172_21_fu_2084_p1 = offset_fu_2080_p1;
assign zext_ln172_22_fu_2184_p1 = offset_reg_3320;
assign zext_ln172_25_fu_2193_p1 = offset_5_reg_3360;
assign zext_ln172_26_fu_2196_p1 = offset_5_reg_3360;
assign zext_ln172_29_fu_2381_p1 = offset_6_reg_3438;
assign zext_ln172_30_fu_2384_p1 = offset_6_reg_3438;
assign zext_ln172_33_fu_2451_p1 = offset_7_reg_3467;
assign zext_ln172_34_fu_2393_p1 = offset_7_reg_3467;
assign zext_ln298_1_fu_2178_p1 = shl_ln298_1_fu_2170_p3;
assign zext_ln298_2_fu_2253_p1 = add_ln298_fu_2248_p2;
assign zext_ln298_3_fu_2301_p1 = or_ln3_fu_2293_p3;
assign zext_ln298_fu_2120_p1 = shl_ln298_fu_2114_p2;
assign zext_ln299_1_fu_2929_p1 = tmp_98_reg_3547;
assign zext_ln299_2_fu_2947_p1 = tmp_106_reg_3651;
assign zext_ln299_3_fu_2965_p1 = tmp_114_reg_3678;
assign zext_ln299_fu_2920_p1 = tmp_90_reg_3526;
assign zext_ln300_1_fu_2983_p1 = tmp_99_reg_3744;
assign zext_ln300_2_fu_3001_p1 = tmp_107_reg_3804;
assign zext_ln300_3_fu_3010_p1 = tmp_115_reg_3829;
assign zext_ln300_4_fu_2343_p1 = or_ln_fu_2336_p3;
assign zext_ln300_5_fu_2375_p1 = or_ln300_1_fu_2368_p3;
assign zext_ln300_6_fu_2445_p1 = add_ln300_2_fu_2440_p2;
assign zext_ln300_7_fu_2480_p1 = or_ln300_2_fu_2473_p3;
assign zext_ln300_fu_2974_p1 = tmp_91_reg_3636;
assign zext_ln301_1_fu_3028_p1 = tmp_100_reg_3749;
assign zext_ln301_2_fu_3037_p1 = tmp_108_reg_3809;
assign zext_ln301_3_fu_3046_p1 = tmp_116_reg_3814;
assign zext_ln301_fu_3019_p1 = tmp_92_reg_3739;
assign zext_ln302_1_fu_3064_p1 = tmp_101_reg_3824;
assign zext_ln302_2_fu_3073_p1 = tmp_109_reg_3849;
assign zext_ln302_3_fu_3082_p1 = tmp_117_reg_3854;
assign zext_ln302_fu_3055_p1 = tmp_93_reg_3819;
assign zext_ln303_1_fu_3100_p1 = tmp_102_reg_3864;
assign zext_ln303_2_fu_3109_p1 = tmp_110_reg_3892;
assign zext_ln303_3_fu_3118_p1 = tmp_118_reg_3902;
assign zext_ln303_fu_3091_p1 = tmp_94_reg_3859;
assign zext_ln304_1_fu_3136_p1 = tmp_103_reg_3869;
assign zext_ln304_2_fu_3145_p1 = tmp_111_reg_3897;
assign zext_ln304_3_fu_3154_p1 = tmp_119_reg_3915;
assign zext_ln304_fu_3127_p1 = tmp_95_reg_3839;
assign zext_ln305_1_fu_3172_p1 = tmp_104_reg_3925;
assign zext_ln305_2_fu_3181_p1 = tmp_112_reg_3930;
assign zext_ln305_3_fu_3190_p1 = tmp_120_reg_3935;
assign zext_ln305_fu_3163_p1 = tmp_96_reg_3920;
always @ (posedge ap_clk) begin
    zext_ln172_21_reg_3328[7:6] <= 2'b00;
    zext_ln298_reg_3339[0] <= 1'b0;
    zext_ln298_reg_3339[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    offset_5_reg_3360[0] <= 1'b1;
    shl_ln298_1_reg_3373[1:0] <= 2'b10;
    zext_ln298_1_reg_3379[1:0] <= 2'b10;
    zext_ln298_1_reg_3379[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_22_reg_3395[8:6] <= 3'b000;
    zext_ln172_25_reg_3416[0] <= 1'b1;
    zext_ln172_25_reg_3416[7:6] <= 2'b00;
    zext_ln172_26_reg_3422[0] <= 1'b1;
    zext_ln172_26_reg_3422[8:6] <= 3'b000;
    add_ln299_1_reg_3428[0] <= 1'b1;
    offset_6_reg_3438[1:0] <= 2'b10;
    zext_ln298_2_reg_3451[1:0] <= 2'b00;
    zext_ln298_2_reg_3451[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    offset_7_reg_3467[1:0] <= 2'b11;
    zext_ln298_3_reg_3480[2:0] <= 3'b110;
    zext_ln298_3_reg_3480[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln300_4_reg_3531[0] <= 1'b1;
    zext_ln300_4_reg_3531[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln300_5_reg_3552[1:0] <= 2'b11;
    zext_ln300_5_reg_3552[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_29_reg_3568[1:0] <= 2'b10;
    zext_ln172_29_reg_3568[7:6] <= 2'b00;
    zext_ln172_30_reg_3574[1:0] <= 2'b10;
    zext_ln172_30_reg_3574[8:6] <= 3'b000;
    add_ln299_2_reg_3580[1:0] <= 2'b10;
    zext_ln172_34_reg_3585[1:0] <= 2'b11;
    zext_ln172_34_reg_3585[8:6] <= 3'b000;
    add_ln299_3_reg_3591[1:0] <= 2'b11;
    add_ln301_1_reg_3646[0] <= 1'b1;
    zext_ln300_6_reg_3656[1:0] <= 2'b01;
    zext_ln300_6_reg_3656[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_33_reg_3672[1:0] <= 2'b11;
    zext_ln172_33_reg_3672[7:6] <= 2'b00;
    zext_ln300_7_reg_3683[2:0] <= 3'b111;
    zext_ln300_7_reg_3683[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln301_2_reg_3754[1:0] <= 2'b10;
    add_ln301_3_reg_3799[1:0] <= 2'b11;
    add_ln303_1_reg_3844[0] <= 1'b1;
    add_ln303_2_reg_3874[1:0] <= 2'b10;
    add_ln303_3_reg_3879[1:0] <= 2'b11;
end
endmodule 