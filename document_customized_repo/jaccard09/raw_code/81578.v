module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1); 
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_3816;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] grp_fu_2038_p15;
reg   [63:0] reg_2348;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_2069_p15;
reg   [63:0] reg_2355;
wire   [63:0] grp_fu_2100_p15;
reg   [63:0] reg_2363;
wire   [63:0] grp_fu_2131_p15;
reg   [63:0] reg_2370;
wire   [63:0] grp_fu_2162_p15;
reg   [63:0] reg_2376;
wire   [63:0] grp_fu_2193_p15;
reg   [63:0] reg_2381;
wire   [63:0] grp_fu_2224_p15;
reg   [63:0] reg_2387;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_2255_p15;
reg   [63:0] reg_2393;
wire   [63:0] grp_fu_2286_p15;
reg   [63:0] reg_2399;
wire   [63:0] grp_fu_2317_p15;
reg   [63:0] reg_2405;
reg   [6:0] tid_reg_3807;
wire   [0:0] tmp_fu_2420_p3;
wire   [8:0] zext_ln114_fu_2442_p1;
reg   [8:0] zext_ln114_reg_3820;
wire   [0:0] icmp_ln172_fu_2480_p2;
reg   [0:0] icmp_ln172_reg_3826;
reg   [5:0] tmp_133_reg_3832;
wire   [2:0] select_ln172_1_fu_2502_p3;
reg   [2:0] select_ln172_1_reg_3837;
reg   [2:0] select_ln172_1_reg_3837_pp0_iter1_reg;
reg   [6:0] tmp_134_reg_3852;
wire   [8:0] add_ln195_fu_2542_p2;
reg   [8:0] add_ln195_reg_3857;
wire   [8:0] add_ln196_fu_2548_p2;
reg   [8:0] add_ln196_reg_3862;
reg   [6:0] tmp_137_reg_3867;
reg   [7:0] tmp_139_reg_3872;
wire   [8:0] add_ln199_fu_2618_p2;
reg   [8:0] add_ln199_reg_3877;
wire   [8:0] offset_fu_2658_p2;
reg   [8:0] offset_reg_3887;
wire   [8:0] add_ln194_fu_2664_p2;
reg   [8:0] add_ln194_reg_3892;
wire   [8:0] add_ln195_1_fu_2670_p2;
reg   [8:0] add_ln195_1_reg_3897;
wire   [8:0] add_ln196_1_fu_2676_p2;
reg   [8:0] add_ln196_1_reg_3902;
wire   [8:0] add_ln197_fu_2682_p2;
reg   [8:0] add_ln197_reg_3907;
wire   [8:0] add_ln199_1_fu_2688_p2;
reg   [8:0] add_ln199_1_reg_3912;
wire   [0:0] tmp_149_fu_2694_p3;
reg   [0:0] tmp_149_reg_3917;
reg   [5:0] tmp_150_reg_3925;
wire   [0:0] xor_ln172_fu_2742_p2;
reg   [0:0] xor_ln172_reg_3935;
reg   [6:0] tmp_135_reg_4000;
reg   [6:0] tmp_136_reg_4005;
reg   [6:0] tmp_140_reg_4040;
reg   [6:0] tmp_142_reg_4045;
reg   [6:0] tmp_143_reg_4050;
reg   [6:0] tmp_144_reg_4055;
reg   [6:0] tmp_145_reg_4060;
reg   [6:0] tmp_147_reg_4065;
wire   [8:0] add_ln194_1_fu_2956_p2;
reg   [8:0] add_ln194_1_reg_4070;
wire   [8:0] add_ln195_2_fu_2962_p2;
reg   [8:0] add_ln195_2_reg_4075;
wire   [8:0] add_ln196_2_fu_2968_p2;
reg   [8:0] add_ln196_2_reg_4080;
wire   [8:0] add_ln197_1_fu_2974_p2;
reg   [8:0] add_ln197_1_reg_4085;
wire   [8:0] add_ln199_2_fu_2980_p2;
reg   [8:0] add_ln199_2_reg_4090;
wire   [8:0] offset_6_fu_2996_p2;
reg   [8:0] offset_6_reg_4095;
wire   [8:0] add_ln194_3_fu_3005_p2;
reg   [8:0] add_ln194_3_reg_4101;
wire   [8:0] add_ln196_3_fu_3011_p2;
reg   [8:0] add_ln196_3_reg_4106;
wire   [8:0] add_ln197_2_fu_3017_p2;
reg   [8:0] add_ln197_2_reg_4111;
wire  signed [6:0] select_ln172_fu_3023_p3;
reg   [6:0] tmp_151_reg_4302;
reg   [6:0] tmp_152_reg_4307;
reg   [6:0] tmp_153_reg_4312;
reg   [6:0] tmp_154_reg_4317;
reg   [6:0] tmp_156_reg_4322;
reg   [6:0] tmp_158_reg_4327;
wire   [8:0] add_ln195_3_fu_3198_p2;
reg   [8:0] add_ln195_3_reg_4332;
reg   [6:0] tmp_160_reg_4337;
reg   [6:0] tmp_161_reg_4342;
wire   [8:0] add_ln199_3_fu_3241_p2;
reg   [8:0] add_ln199_3_reg_4347;
wire   [63:0] zext_ln193_fu_3254_p1;
reg   [63:0] zext_ln193_reg_4352;
wire   [63:0] zext_ln194_4_fu_3268_p1;
reg   [63:0] zext_ln194_4_reg_4358;
reg   [7:0] tmp_141_reg_4365;
wire   [6:0] grp_fu_3730_p3;
reg  signed [6:0] add_ln172_reg_4370;
wire   [6:0] grp_fu_3738_p3;
reg  signed [6:0] add_ln172_1_reg_4555;
reg   [6:0] tmp_159_reg_4560;
reg   [6:0] tmp_163_reg_4565;
wire   [4:0] tmp_52_fu_3399_p4;
reg   [4:0] tmp_52_reg_4630;
wire   [6:0] shl_ln193_1_fu_3408_p3;
reg   [6:0] shl_ln193_1_reg_4635;
wire   [63:0] zext_ln193_1_fu_3416_p1;
reg   [63:0] zext_ln193_1_reg_4641;
reg   [7:0] tmp_146_reg_4648;
reg   [7:0] tmp_148_reg_4653;
reg   [63:0] tmp_36_reg_4658;
reg   [7:0] tmp_155_reg_4723;
reg   [7:0] tmp_157_reg_4758;
reg   [7:0] tmp_162_reg_4793;
reg   [7:0] tmp_164_reg_4798;
wire   [63:0] zext_ln194_5_fu_3518_p1;
reg   [63:0] zext_ln194_5_reg_4803;
wire   [63:0] zext_ln193_2_fu_3547_p1;
reg   [63:0] zext_ln193_2_reg_4869;
reg   [3:0] tmp_53_reg_4936;
reg   [63:0] tmp_46_reg_4942;
wire   [63:0] zext_ln194_6_fu_3603_p1;
reg   [63:0] zext_ln194_6_reg_4977;
wire   [63:0] tmp_47_fu_3636_p15;
reg   [63:0] tmp_47_reg_5073;
wire   [63:0] zext_ln194_7_fu_3683_p1;
reg   [63:0] zext_ln194_7_reg_5108;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_4_fu_2754_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_fu_2764_p1;
wire   [63:0] zext_ln197_fu_2811_p1;
wire   [63:0] zext_ln195_fu_3030_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln196_fu_3039_p1;
wire   [63:0] zext_ln198_fu_3048_p1;
wire   [63:0] zext_ln199_fu_3057_p1;
wire   [63:0] zext_ln195_1_fu_3066_p1;
wire   [63:0] zext_ln197_1_fu_3075_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_1_fu_3282_p1;
wire   [63:0] zext_ln196_1_fu_3291_p1;
wire   [63:0] zext_ln199_1_fu_3300_p1;
wire   [63:0] zext_ln172_6_fu_3315_p1;
wire   [63:0] zext_ln194_2_fu_3325_p1;
wire   [63:0] zext_ln196_2_fu_3334_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln200_fu_3381_p1;
wire   [63:0] zext_ln172_5_fu_3390_p1;
wire   [63:0] zext_ln195_2_fu_3439_p1;
wire   [63:0] zext_ln197_2_fu_3448_p1;
wire   [63:0] zext_ln199_2_fu_3466_p1;
wire   [63:0] zext_ln196_3_fu_3484_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln198_1_fu_3524_p1;
wire   [63:0] zext_ln200_1_fu_3533_p1;
wire   [63:0] zext_ln198_2_fu_3552_p1;
wire   [63:0] zext_ln200_2_fu_3561_p1;
wire   [63:0] zext_ln197_3_fu_3579_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_7_fu_3609_p1;
wire   [63:0] zext_ln194_3_fu_3618_p1;
wire   [63:0] zext_ln195_3_fu_3627_p1;
wire   [63:0] zext_ln199_3_fu_3667_p1;
wire   [63:0] zext_ln198_3_fu_3688_p1;
wire   [63:0] zext_ln200_3_fu_3697_p1;
wire   [63:0] zext_ln193_3_fu_3713_p1;
reg   [6:0] tid_2_fu_152;
wire   [6:0] add_ln188_fu_3588_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_2_we1_local;
reg   [63:0] DATA_x_2_d1_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_we0_local;
reg   [63:0] DATA_x_2_d0_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_3_we0_local;
reg   [63:0] DATA_x_3_d0_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
reg    DATA_x_3_we1_local;
reg   [63:0] DATA_x_3_d1_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
wire   [63:0] grp_fu_2038_p13;
wire   [63:0] grp_fu_2069_p13;
wire   [63:0] grp_fu_2100_p13;
wire   [63:0] grp_fu_2131_p13;
wire   [63:0] grp_fu_2162_p13;
wire   [63:0] grp_fu_2193_p13;
wire   [63:0] grp_fu_2224_p13;
reg   [2:0] grp_fu_2224_p14;
wire   [63:0] grp_fu_2255_p13;
reg   [2:0] grp_fu_2255_p14;
wire   [63:0] grp_fu_2286_p13;
reg   [2:0] grp_fu_2286_p14;
wire   [63:0] grp_fu_2317_p13;
reg   [2:0] grp_fu_2317_p14;
wire   [2:0] hi_fu_2432_p4;
wire   [2:0] trunc_ln189_fu_2428_p1;
wire   [0:0] tmp_132_fu_2450_p3;
wire   [8:0] offset_4_fu_2458_p5;
wire   [2:0] mul_ln172_fu_2474_p0;
wire   [4:0] mul_ln172_fu_2474_p1;
wire   [6:0] mul_ln172_fu_2474_p2;
wire   [2:0] add_ln172_2_fu_2496_p2;
wire   [8:0] add_ln_fu_2510_p5;
wire   [8:0] mul_ln194_fu_2526_p0;
wire   [10:0] mul_ln194_fu_2526_p1;
wire   [18:0] mul_ln194_fu_2526_p2;
wire   [8:0] add_ln1_fu_2554_p5;
wire   [8:0] mul_ln197_fu_2570_p0;
wire   [10:0] mul_ln197_fu_2570_p1;
wire   [18:0] mul_ln197_fu_2570_p2;
wire   [8:0] tmp_138_fu_2586_p5;
wire   [8:0] mul_ln198_fu_2602_p0;
wire   [11:0] mul_ln198_fu_2602_p1;
wire   [20:0] mul_ln198_fu_2602_p2;
wire   [1:0] tmp_51_fu_2624_p4;
wire   [2:0] or_ln191_2_fu_2634_p3;
wire   [8:0] mul_ln191_1_fu_2646_p5;
wire   [2:0] or_ln9_fu_2702_p3;
wire   [2:0] mul_ln172_2_fu_2714_p0;
wire   [4:0] mul_ln172_2_fu_2714_p1;
wire   [6:0] mul_ln172_2_fu_2714_p2;
wire   [2:0] or_ln191_1_fu_2730_p3;
wire   [6:0] or_ln_fu_2747_p3;
wire   [8:0] mul_ln195_fu_2776_p0;
wire   [10:0] mul_ln195_fu_2776_p1;
wire   [18:0] mul_ln195_fu_2776_p2;
wire   [8:0] mul_ln196_fu_2795_p0;
wire   [10:0] mul_ln196_fu_2795_p1;
wire   [18:0] mul_ln196_fu_2795_p2;
wire   [8:0] mul_ln199_fu_2823_p0;
wire   [10:0] mul_ln199_fu_2823_p1;
wire   [18:0] mul_ln199_fu_2823_p2;
wire   [8:0] mul_ln194_1_fu_2845_p0;
wire   [10:0] mul_ln194_1_fu_2845_p1;
wire   [18:0] mul_ln194_1_fu_2845_p2;
wire   [8:0] mul_ln195_1_fu_2864_p0;
wire   [10:0] mul_ln195_1_fu_2864_p1;
wire   [18:0] mul_ln195_1_fu_2864_p2;
wire   [8:0] mul_ln196_1_fu_2883_p0;
wire   [10:0] mul_ln196_1_fu_2883_p1;
wire   [18:0] mul_ln196_1_fu_2883_p2;
wire   [8:0] mul_ln197_1_fu_2902_p0;
wire   [10:0] mul_ln197_1_fu_2902_p1;
wire   [18:0] mul_ln197_1_fu_2902_p2;
wire   [8:0] mul_ln199_1_fu_2921_p0;
wire   [10:0] mul_ln199_1_fu_2921_p1;
wire   [18:0] mul_ln199_1_fu_2921_p2;
wire   [8:0] mul_ln191_2_fu_2937_p5;
wire   [8:0] offset_5_fu_2947_p2;
wire   [8:0] mul_ln191_3_fu_2986_p5;
wire   [8:0] mul_ln194_2_fu_3087_p0;
wire   [10:0] mul_ln194_2_fu_3087_p1;
wire   [18:0] mul_ln194_2_fu_3087_p2;
wire   [8:0] mul_ln195_2_fu_3106_p0;
wire   [10:0] mul_ln195_2_fu_3106_p1;
wire   [18:0] mul_ln195_2_fu_3106_p2;
wire   [8:0] mul_ln196_2_fu_3125_p0;
wire   [10:0] mul_ln196_2_fu_3125_p1;
wire   [18:0] mul_ln196_2_fu_3125_p2;
wire   [8:0] mul_ln197_2_fu_3144_p0;
wire   [10:0] mul_ln197_2_fu_3144_p1;
wire   [18:0] mul_ln197_2_fu_3144_p2;
wire   [8:0] mul_ln199_2_fu_3163_p0;
wire   [10:0] mul_ln199_2_fu_3163_p1;
wire   [18:0] mul_ln199_2_fu_3163_p2;
wire   [8:0] mul_ln194_3_fu_3182_p0;
wire   [10:0] mul_ln194_3_fu_3182_p1;
wire   [18:0] mul_ln194_3_fu_3182_p2;
wire   [8:0] mul_ln196_3_fu_3206_p0;
wire   [10:0] mul_ln196_3_fu_3206_p1;
wire   [18:0] mul_ln196_3_fu_3206_p2;
wire   [8:0] mul_ln197_3_fu_3225_p0;
wire   [10:0] mul_ln197_3_fu_3225_p1;
wire   [18:0] mul_ln197_3_fu_3225_p2;
wire   [6:0] shl_ln193_fu_3249_p2;
wire   [5:0] trunc_ln193_fu_3246_p1;
wire   [6:0] or_ln8_fu_3260_p3;
wire   [20:0] tmp_141_fu_3273_p1;
wire  signed [20:0] grp_fu_3721_p3;
wire   [6:0] or_ln172_1_fu_3309_p3;
wire   [8:0] mul_ln195_3_fu_3346_p0;
wire   [10:0] mul_ln195_3_fu_3346_p1;
wire   [18:0] mul_ln195_3_fu_3346_p2;
wire   [8:0] mul_ln199_3_fu_3365_p0;
wire   [10:0] mul_ln199_3_fu_3365_p1;
wire   [18:0] mul_ln199_3_fu_3365_p2;
wire   [20:0] tmp_146_fu_3421_p1;
wire  signed [20:0] grp_fu_3746_p3;
wire   [20:0] tmp_148_fu_3430_p1;
wire  signed [20:0] grp_fu_3755_p3;
wire   [20:0] tmp_155_fu_3457_p1;
wire  signed [20:0] grp_fu_3764_p3;
wire   [20:0] tmp_157_fu_3475_p1;
wire  signed [20:0] grp_fu_3773_p3;
wire   [20:0] tmp_162_fu_3493_p1;
wire  signed [20:0] grp_fu_3782_p3;
wire   [20:0] tmp_164_fu_3502_p1;
wire  signed [20:0] grp_fu_3791_p3;
wire   [6:0] or_ln194_1_fu_3511_p3;
wire   [6:0] add_ln193_fu_3542_p2;
wire   [6:0] add_ln194_2_fu_3598_p2;
wire   [63:0] tmp_47_fu_3636_p13;
wire   [6:0] or_ln194_2_fu_3676_p3;
wire   [6:0] or_ln10_fu_3706_p3;
wire   [8:0] grp_fu_3721_p0;
wire   [5:0] grp_fu_3721_p1;
wire   [10:0] grp_fu_3721_p2;
wire   [3:0] grp_fu_3730_p0;
wire   [2:0] grp_fu_3730_p1;
wire  signed [0:0] grp_fu_3730_p2;
wire   [3:0] grp_fu_3738_p0;
wire   [2:0] grp_fu_3738_p1;
wire  signed [0:0] grp_fu_3738_p2;
wire   [8:0] grp_fu_3746_p0;
wire   [9:0] zext_ln172_27_fu_2839_p1;
wire   [5:0] grp_fu_3746_p1;
wire   [10:0] grp_fu_3746_p2;
wire   [8:0] grp_fu_3755_p0;
wire   [5:0] grp_fu_3755_p1;
wire   [10:0] grp_fu_3755_p2;
wire   [8:0] grp_fu_3764_p0;
wire   [9:0] zext_ln172_28_fu_2952_p1;
wire   [5:0] grp_fu_3764_p1;
wire   [10:0] grp_fu_3764_p2;
wire   [8:0] grp_fu_3773_p0;
wire   [5:0] grp_fu_3773_p1;
wire   [10:0] grp_fu_3773_p2;
wire   [8:0] grp_fu_3782_p0;
wire   [9:0] zext_ln172_29_fu_3001_p1;
wire   [5:0] grp_fu_3782_p1;
wire   [10:0] grp_fu_3782_p2;
wire   [8:0] grp_fu_3791_p0;
wire   [5:0] grp_fu_3791_p1;
wire   [10:0] grp_fu_3791_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_3721_p00;
wire   [6:0] grp_fu_3730_p10;
wire   [6:0] grp_fu_3738_p10;
wire   [6:0] mul_ln172_2_fu_2714_p00;
wire   [6:0] mul_ln172_fu_2474_p00;
wire   [18:0] mul_ln194_1_fu_2845_p00;
wire   [18:0] mul_ln194_2_fu_3087_p00;
wire   [18:0] mul_ln194_3_fu_3182_p00;
wire   [18:0] mul_ln194_fu_2526_p00;
wire   [18:0] mul_ln195_1_fu_2864_p00;
wire   [18:0] mul_ln195_2_fu_3106_p00;
wire   [18:0] mul_ln195_3_fu_3346_p00;
wire   [18:0] mul_ln195_fu_2776_p00;
wire   [18:0] mul_ln196_1_fu_2883_p00;
wire   [18:0] mul_ln196_2_fu_3125_p00;
wire   [18:0] mul_ln196_3_fu_3206_p00;
wire   [18:0] mul_ln196_fu_2795_p00;
wire   [18:0] mul_ln197_1_fu_2902_p00;
wire   [18:0] mul_ln197_2_fu_3144_p00;
wire   [18:0] mul_ln197_3_fu_3225_p00;
wire   [18:0] mul_ln197_fu_2570_p00;
wire   [20:0] mul_ln198_fu_2602_p00;
wire   [18:0] mul_ln199_1_fu_2921_p00;
wire   [18:0] mul_ln199_2_fu_3163_p00;
wire   [18:0] mul_ln199_3_fu_3365_p00;
wire   [18:0] mul_ln199_fu_2823_p00;
wire   [2:0] grp_fu_2038_p1;
wire   [2:0] grp_fu_2038_p3;
wire   [2:0] grp_fu_2038_p5;
wire   [2:0] grp_fu_2038_p7;
wire  signed [2:0] grp_fu_2038_p9;
wire  signed [2:0] grp_fu_2038_p11;
wire  signed [2:0] grp_fu_2069_p1;
wire  signed [2:0] grp_fu_2069_p3;
wire   [2:0] grp_fu_2069_p5;
wire   [2:0] grp_fu_2069_p7;
wire   [2:0] grp_fu_2069_p9;
wire   [2:0] grp_fu_2069_p11;
wire   [2:0] grp_fu_2100_p1;
wire   [2:0] grp_fu_2100_p3;
wire  signed [2:0] grp_fu_2100_p5;
wire  signed [2:0] grp_fu_2100_p7;
wire   [2:0] grp_fu_2100_p9;
wire   [2:0] grp_fu_2100_p11;
wire   [2:0] grp_fu_2131_p1;
wire   [2:0] grp_fu_2131_p3;
wire   [2:0] grp_fu_2131_p5;
wire   [2:0] grp_fu_2131_p7;
wire  signed [2:0] grp_fu_2131_p9;
wire  signed [2:0] grp_fu_2131_p11;
wire  signed [2:0] grp_fu_2162_p1;
wire  signed [2:0] grp_fu_2162_p3;
wire   [2:0] grp_fu_2162_p5;
wire   [2:0] grp_fu_2162_p7;
wire   [2:0] grp_fu_2162_p9;
wire   [2:0] grp_fu_2162_p11;
wire   [2:0] grp_fu_2193_p1;
wire   [2:0] grp_fu_2193_p3;
wire  signed [2:0] grp_fu_2193_p5;
wire  signed [2:0] grp_fu_2193_p7;
wire   [2:0] grp_fu_2193_p9;
wire   [2:0] grp_fu_2193_p11;
wire   [2:0] grp_fu_2224_p1;
wire   [2:0] grp_fu_2224_p3;
wire   [2:0] grp_fu_2224_p5;
wire   [2:0] grp_fu_2224_p7;
wire  signed [2:0] grp_fu_2224_p9;
wire  signed [2:0] grp_fu_2224_p11;
wire  signed [2:0] grp_fu_2255_p1;
wire  signed [2:0] grp_fu_2255_p3;
wire   [2:0] grp_fu_2255_p5;
wire   [2:0] grp_fu_2255_p7;
wire   [2:0] grp_fu_2255_p9;
wire   [2:0] grp_fu_2255_p11;
wire   [2:0] grp_fu_2286_p1;
wire   [2:0] grp_fu_2286_p3;
wire   [2:0] grp_fu_2286_p5;
wire   [2:0] grp_fu_2286_p7;
wire  signed [2:0] grp_fu_2286_p9;
wire  signed [2:0] grp_fu_2286_p11;
wire  signed [2:0] grp_fu_2317_p1;
wire  signed [2:0] grp_fu_2317_p3;
wire   [2:0] grp_fu_2317_p5;
wire   [2:0] grp_fu_2317_p7;
wire   [2:0] grp_fu_2317_p9;
wire   [2:0] grp_fu_2317_p11;
wire   [2:0] tmp_47_fu_3636_p1;
wire   [2:0] tmp_47_fu_3636_p3;
wire  signed [2:0] tmp_47_fu_3636_p5;
wire  signed [2:0] tmp_47_fu_3636_p7;
wire   [2:0] tmp_47_fu_3636_p9;
wire   [2:0] tmp_47_fu_3636_p11;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_152 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U253(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2038_p13),.sel(select_ln172_1_reg_3837),.dout(grp_fu_2038_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U254(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2069_p13),.sel(select_ln172_1_reg_3837),.dout(grp_fu_2069_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U255(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2100_p13),.sel(select_ln172_1_reg_3837),.dout(grp_fu_2100_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U256(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(grp_fu_2131_p13),.sel(select_ln172_1_reg_3837),.dout(grp_fu_2131_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U257(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(grp_fu_2162_p13),.sel(select_ln172_1_reg_3837),.dout(grp_fu_2162_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U258(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(grp_fu_2193_p13),.sel(select_ln172_1_reg_3837),.dout(grp_fu_2193_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U259(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2224_p13),.sel(grp_fu_2224_p14),.dout(grp_fu_2224_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U260(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2255_p13),.sel(grp_fu_2255_p14),.dout(grp_fu_2255_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U261(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(grp_fu_2286_p13),.sel(grp_fu_2286_p14),.dout(grp_fu_2286_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U262(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(grp_fu_2317_p13),.sel(grp_fu_2317_p14),.dout(grp_fu_2317_p15));
fft1D_512_mul_3ns_5ns_7_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 3 ),.din1_WIDTH( 5 ),.dout_WIDTH( 7 ))
mul_3ns_5ns_7_1_1_U263(.din0(mul_ln172_fu_2474_p0),.din1(mul_ln172_fu_2474_p1),.dout(mul_ln172_fu_2474_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U264(.din0(mul_ln194_fu_2526_p0),.din1(mul_ln194_fu_2526_p1),.dout(mul_ln194_fu_2526_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U265(.din0(mul_ln197_fu_2570_p0),.din1(mul_ln197_fu_2570_p1),.dout(mul_ln197_fu_2570_p2));
fft1D_512_mul_9ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_9ns_12ns_21_1_1_U266(.din0(mul_ln198_fu_2602_p0),.din1(mul_ln198_fu_2602_p1),.dout(mul_ln198_fu_2602_p2));
fft1D_512_mul_3ns_5ns_7_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 3 ),.din1_WIDTH( 5 ),.dout_WIDTH( 7 ))
mul_3ns_5ns_7_1_1_U267(.din0(mul_ln172_2_fu_2714_p0),.din1(mul_ln172_2_fu_2714_p1),.dout(mul_ln172_2_fu_2714_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U268(.din0(mul_ln195_fu_2776_p0),.din1(mul_ln195_fu_2776_p1),.dout(mul_ln195_fu_2776_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U269(.din0(mul_ln196_fu_2795_p0),.din1(mul_ln196_fu_2795_p1),.dout(mul_ln196_fu_2795_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U270(.din0(mul_ln199_fu_2823_p0),.din1(mul_ln199_fu_2823_p1),.dout(mul_ln199_fu_2823_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U271(.din0(mul_ln194_1_fu_2845_p0),.din1(mul_ln194_1_fu_2845_p1),.dout(mul_ln194_1_fu_2845_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U272(.din0(mul_ln195_1_fu_2864_p0),.din1(mul_ln195_1_fu_2864_p1),.dout(mul_ln195_1_fu_2864_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U273(.din0(mul_ln196_1_fu_2883_p0),.din1(mul_ln196_1_fu_2883_p1),.dout(mul_ln196_1_fu_2883_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U274(.din0(mul_ln197_1_fu_2902_p0),.din1(mul_ln197_1_fu_2902_p1),.dout(mul_ln197_1_fu_2902_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U275(.din0(mul_ln199_1_fu_2921_p0),.din1(mul_ln199_1_fu_2921_p1),.dout(mul_ln199_1_fu_2921_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U276(.din0(mul_ln194_2_fu_3087_p0),.din1(mul_ln194_2_fu_3087_p1),.dout(mul_ln194_2_fu_3087_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U277(.din0(mul_ln195_2_fu_3106_p0),.din1(mul_ln195_2_fu_3106_p1),.dout(mul_ln195_2_fu_3106_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U278(.din0(mul_ln196_2_fu_3125_p0),.din1(mul_ln196_2_fu_3125_p1),.dout(mul_ln196_2_fu_3125_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U279(.din0(mul_ln197_2_fu_3144_p0),.din1(mul_ln197_2_fu_3144_p1),.dout(mul_ln197_2_fu_3144_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U280(.din0(mul_ln199_2_fu_3163_p0),.din1(mul_ln199_2_fu_3163_p1),.dout(mul_ln199_2_fu_3163_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U281(.din0(mul_ln194_3_fu_3182_p0),.din1(mul_ln194_3_fu_3182_p1),.dout(mul_ln194_3_fu_3182_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U282(.din0(mul_ln196_3_fu_3206_p0),.din1(mul_ln196_3_fu_3206_p1),.dout(mul_ln196_3_fu_3206_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U283(.din0(mul_ln197_3_fu_3225_p0),.din1(mul_ln197_3_fu_3225_p1),.dout(mul_ln197_3_fu_3225_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U284(.din0(mul_ln195_3_fu_3346_p0),.din1(mul_ln195_3_fu_3346_p1),.dout(mul_ln195_3_fu_3346_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U285(.din0(mul_ln199_3_fu_3365_p0),.din1(mul_ln199_3_fu_3365_p1),.dout(mul_ln199_3_fu_3365_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U286(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_47_fu_3636_p13),.sel(select_ln172_1_reg_3837),.dout(tmp_47_fu_3636_p15));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U287(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3721_p0),.din1(grp_fu_3721_p1),.din2(grp_fu_3721_p2),.ce(1'b1),.dout(grp_fu_3721_p3));
fft1D_512_mac_muladd_4ns_3ns_1s_7_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.din2_WIDTH( 1 ),.dout_WIDTH( 7 ))
mac_muladd_4ns_3ns_1s_7_4_1_U288(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3730_p0),.din1(grp_fu_3730_p1),.din2(grp_fu_3730_p2),.ce(1'b1),.dout(grp_fu_3730_p3));
fft1D_512_mac_muladd_4ns_3ns_1s_7_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.din2_WIDTH( 1 ),.dout_WIDTH( 7 ))
mac_muladd_4ns_3ns_1s_7_4_1_U289(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3738_p0),.din1(grp_fu_3738_p1),.din2(grp_fu_3738_p2),.ce(1'b1),.dout(grp_fu_3738_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U290(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3746_p0),.din1(grp_fu_3746_p1),.din2(grp_fu_3746_p2),.ce(1'b1),.dout(grp_fu_3746_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U291(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3755_p0),.din1(grp_fu_3755_p1),.din2(grp_fu_3755_p2),.ce(1'b1),.dout(grp_fu_3755_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U292(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3764_p0),.din1(grp_fu_3764_p1),.din2(grp_fu_3764_p2),.ce(1'b1),.dout(grp_fu_3764_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U293(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3773_p0),.din1(grp_fu_3773_p1),.din2(grp_fu_3773_p2),.ce(1'b1),.dout(grp_fu_3773_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U294(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3782_p0),.din1(grp_fu_3782_p1),.din2(grp_fu_3782_p2),.ce(1'b1),.dout(grp_fu_3782_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U295(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3791_p0),.din1(grp_fu_3791_p1),.din2(grp_fu_3791_p2),.ce(1'b1),.dout(grp_fu_3791_p3));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_152 <= 7'd0;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tid_2_fu_152 <= add_ln188_fu_3588_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln172_1_reg_4555 <= grp_fu_3738_p3;
        add_ln172_reg_4370 <= grp_fu_3730_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_1_reg_4070 <= add_ln194_1_fu_2956_p2;
        add_ln194_3_reg_4101 <= add_ln194_3_fu_3005_p2;
        add_ln195_2_reg_4075 <= add_ln195_2_fu_2962_p2;
        add_ln196_2_reg_4080 <= add_ln196_2_fu_2968_p2;
        add_ln196_3_reg_4106 <= add_ln196_3_fu_3011_p2;
        add_ln197_1_reg_4085 <= add_ln197_1_fu_2974_p2;
        add_ln197_2_reg_4111 <= add_ln197_2_fu_3017_p2;
        add_ln199_2_reg_4090 <= add_ln199_2_fu_2980_p2;
        offset_6_reg_4095 <= offset_6_fu_2996_p2;
        tmp_135_reg_4000 <= {{mul_ln195_fu_2776_p2[18:12]}};
        tmp_136_reg_4005 <= {{mul_ln196_fu_2795_p2[18:12]}};
        tmp_140_reg_4040 <= {{mul_ln199_fu_2823_p2[18:12]}};
        tmp_142_reg_4045 <= {{mul_ln194_1_fu_2845_p2[18:12]}};
        tmp_143_reg_4050 <= {{mul_ln195_1_fu_2864_p2[18:12]}};
        tmp_144_reg_4055 <= {{mul_ln196_1_fu_2883_p2[18:12]}};
        tmp_145_reg_4060 <= {{mul_ln197_1_fu_2902_p2[18:12]}};
        tmp_147_reg_4065 <= {{mul_ln199_1_fu_2921_p2[18:12]}};
        xor_ln172_reg_3935 <= xor_ln172_fu_2742_p2;
        zext_ln194_7_reg_5108[6 : 3] <= zext_ln194_7_fu_3683_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_reg_3892 <= add_ln194_fu_2664_p2;
        add_ln195_1_reg_3897 <= add_ln195_1_fu_2670_p2;
        add_ln195_reg_3857 <= add_ln195_fu_2542_p2;
        add_ln196_1_reg_3902 <= add_ln196_1_fu_2676_p2;
        add_ln196_reg_3862 <= add_ln196_fu_2548_p2;
        add_ln197_reg_3907 <= add_ln197_fu_2682_p2;
        add_ln199_1_reg_3912 <= add_ln199_1_fu_2688_p2;
        add_ln199_reg_3877 <= add_ln199_fu_2618_p2;
        icmp_ln172_reg_3826 <= icmp_ln172_fu_2480_p2;
        offset_reg_3887 <= offset_fu_2658_p2;
        select_ln172_1_reg_3837 <= select_ln172_1_fu_2502_p3;
        select_ln172_1_reg_3837_pp0_iter1_reg <= select_ln172_1_reg_3837;
        tid_reg_3807 <= ap_sig_allocacmp_tid;
        tmp_133_reg_3832 <= {{mul_ln172_fu_2474_p2[6:1]}};
        tmp_134_reg_3852 <= {{mul_ln194_fu_2526_p2[18:12]}};
        tmp_137_reg_3867 <= {{mul_ln197_fu_2570_p2[18:12]}};
        tmp_139_reg_3872 <= {{mul_ln198_fu_2602_p2[20:13]}};
        tmp_149_reg_3917 <= ap_sig_allocacmp_tid[32'd2];
        tmp_150_reg_3925 <= {{mul_ln172_2_fu_2714_p2[6:1]}};
        tmp_47_reg_5073 <= tmp_47_fu_3636_p15;
        tmp_reg_3816 <= ap_sig_allocacmp_tid[32'd6];
        zext_ln114_reg_3820[2 : 0] <= zext_ln114_fu_2442_p1[2 : 0];
        zext_ln194_6_reg_4977[6 : 2] <= zext_ln194_6_fu_3603_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln195_3_reg_4332 <= add_ln195_3_fu_3198_p2;
        add_ln199_3_reg_4347 <= add_ln199_3_fu_3241_p2;
        tmp_151_reg_4302 <= {{mul_ln194_2_fu_3087_p2[18:12]}};
        tmp_152_reg_4307 <= {{mul_ln195_2_fu_3106_p2[18:12]}};
        tmp_153_reg_4312 <= {{mul_ln196_2_fu_3125_p2[18:12]}};
        tmp_154_reg_4317 <= {{mul_ln197_2_fu_3144_p2[18:12]}};
        tmp_156_reg_4322 <= {{mul_ln199_2_fu_3163_p2[18:12]}};
        tmp_158_reg_4327 <= {{mul_ln194_3_fu_3182_p2[18:12]}};
        tmp_160_reg_4337 <= {{mul_ln196_3_fu_3206_p2[18:12]}};
        tmp_161_reg_4342 <= {{mul_ln197_3_fu_3225_p2[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2348 <= grp_fu_2038_p15;
        reg_2355 <= grp_fu_2069_p15;
        reg_2363 <= grp_fu_2100_p15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_2370 <= grp_fu_2131_p15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_2376 <= grp_fu_2162_p15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_2381 <= grp_fu_2193_p15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_2387 <= grp_fu_2224_p15;
        reg_2393 <= grp_fu_2255_p15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2399 <= grp_fu_2286_p15;
        reg_2405 <= grp_fu_2317_p15;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        shl_ln193_1_reg_4635[6 : 2] <= shl_ln193_1_fu_3408_p3[6 : 2];
        tmp_146_reg_4648 <= {{tmp_146_fu_3421_p1[20:13]}};
        tmp_148_reg_4653 <= {{tmp_148_fu_3430_p1[20:13]}};
        tmp_155_reg_4723 <= {{tmp_155_fu_3457_p1[20:13]}};
        tmp_157_reg_4758 <= {{tmp_157_fu_3475_p1[20:13]}};
        tmp_162_reg_4793 <= {{tmp_162_fu_3493_p1[20:13]}};
        tmp_164_reg_4798 <= {{tmp_164_fu_3502_p1[20:13]}};
        tmp_52_reg_4630 <= {{tid_reg_3807[5:1]}};
        zext_ln193_1_reg_4641[6 : 2] <= zext_ln193_1_fu_3416_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_141_reg_4365 <= {{tmp_141_fu_3273_p1[20:13]}};
        tmp_159_reg_4560 <= {{mul_ln195_3_fu_3346_p2[18:12]}};
        tmp_163_reg_4565 <= {{mul_ln199_3_fu_3365_p2[18:12]}};
        zext_ln193_reg_4352[6 : 1] <= zext_ln193_fu_3254_p1[6 : 1];
        zext_ln194_4_reg_4358[6 : 1] <= zext_ln194_4_fu_3268_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_36_reg_4658 <= grp_fu_2162_p15;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_46_reg_4942 <= grp_fu_2193_p15;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_53_reg_4936 <= {{tid_reg_3807[5:2]}};
        zext_ln193_2_reg_4869[6 : 2] <= zext_ln193_2_fu_3547_p1[6 : 2];
        zext_ln194_5_reg_4803[6 : 2] <= zext_ln194_5_fu_3518_p1[6 : 2];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln194_7_fu_3683_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln194_6_fu_3603_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln194_5_fu_3518_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln194_4_reg_4358;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln193_3_fu_3713_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln193_2_reg_4869;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln193_1_reg_4641;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln193_reg_4352;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_46_reg_4942;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = reg_2381;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_1_d0_local = reg_2363;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = reg_2405;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        DATA_x_1_d1_local = reg_2376;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d1_local = reg_2355;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln194_7_reg_5108;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln194_6_reg_4977;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln193_2_reg_4869;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_2_address0_local = zext_ln193_1_fu_3416_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address1_local = zext_ln193_3_fu_3713_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln194_5_reg_4803;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_2_address1_local = zext_ln194_4_reg_4358;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address1_local = zext_ln193_fu_3254_p1;
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_d0_local = reg_2399;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = reg_2363;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_2_d0_local = reg_2381;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d1_local = tmp_47_reg_5073;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = reg_2387;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_2_d1_local = reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d1_local = reg_2363;
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address0_local = zext_ln193_3_fu_3713_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln194_6_reg_4977;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln193_2_reg_4869;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_3_address0_local = zext_ln193_reg_4352;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address1_local = zext_ln194_7_reg_5108;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln194_5_reg_4803;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln194_4_reg_4358;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_3_address1_local = zext_ln193_1_reg_4641;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d0_local = reg_2399;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = reg_2405;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        DATA_x_3_d0_local = reg_2370;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d1_local = reg_2405;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = reg_2393;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = reg_2355;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_3_d1_local = reg_2348;
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln194_7_reg_5108;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln194_6_fu_3603_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln193_2_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln194_4_fu_3268_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln193_3_fu_3713_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln193_1_reg_4641;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln194_5_fu_3518_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln193_fu_3254_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = reg_2393;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_36_reg_4658;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d0_local = reg_2370;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = reg_2355;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = reg_2387;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d1_local = reg_2355;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_d1_local = reg_2348;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3816 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_152;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_2224_p14 = select_ln172_1_reg_3837_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_2224_p14 = select_ln172_1_reg_3837;
        end else begin
            grp_fu_2224_p14 = 'bx;
        end
    end else begin
        grp_fu_2224_p14 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_2255_p14 = select_ln172_1_reg_3837_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_2255_p14 = select_ln172_1_reg_3837;
        end else begin
            grp_fu_2255_p14 = 'bx;
        end
    end else begin
        grp_fu_2255_p14 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_2286_p14 = select_ln172_1_reg_3837_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_2286_p14 = select_ln172_1_reg_3837;
    end else begin
        grp_fu_2286_p14 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_2317_p14 = select_ln172_1_reg_3837_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_2317_p14 = select_ln172_1_reg_3837;
    end else begin
        grp_fu_2317_p14 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln200_3_fu_3697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln198_3_fu_3688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln199_3_fu_3667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln195_3_fu_3627_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln197_3_fu_3579_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln200_2_fu_3561_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln198_2_fu_3552_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln196_3_fu_3484_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln199_2_fu_3466_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln195_2_fu_3439_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln196_2_fu_3334_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln194_2_fu_3325_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_6_fu_3315_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln197_1_fu_3075_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln195_1_fu_3066_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln199_fu_3057_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln194_3_fu_3618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_7_fu_3609_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln200_1_fu_3533_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln198_1_fu_3524_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln197_2_fu_3448_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln172_5_fu_3390_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln200_fu_3381_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln199_1_fu_3300_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln196_1_fu_3291_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln194_1_fu_3282_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln198_fu_3048_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln196_fu_3039_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln195_fu_3030_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln197_fu_2811_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln194_fu_2764_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln172_4_fu_2754_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0)& (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln200_3_fu_3697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln198_3_fu_3688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln199_3_fu_3667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln195_3_fu_3627_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln197_3_fu_3579_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln200_2_fu_3561_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln198_2_fu_3552_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln196_3_fu_3484_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln199_2_fu_3466_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln195_2_fu_3439_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln196_2_fu_3334_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln194_2_fu_3325_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_6_fu_3315_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln197_1_fu_3075_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln195_1_fu_3066_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln199_fu_3057_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln194_3_fu_3618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_7_fu_3609_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln200_1_fu_3533_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln198_1_fu_3524_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln197_2_fu_3448_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln172_5_fu_3390_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln200_fu_3381_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln199_1_fu_3300_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln196_1_fu_3291_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln194_1_fu_3282_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln198_fu_3048_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln196_fu_3039_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln195_fu_3030_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln197_fu_2811_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln194_fu_2764_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln172_4_fu_2754_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0)& (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln200_3_fu_3697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln198_3_fu_3688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln199_3_fu_3667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln195_3_fu_3627_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln197_3_fu_3579_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln200_2_fu_3561_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln198_2_fu_3552_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln196_3_fu_3484_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln199_2_fu_3466_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln195_2_fu_3439_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln196_2_fu_3334_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln194_2_fu_3325_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_6_fu_3315_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln197_1_fu_3075_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln195_1_fu_3066_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln199_fu_3057_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln194_3_fu_3618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_7_fu_3609_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln200_1_fu_3533_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln198_1_fu_3524_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln197_2_fu_3448_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln172_5_fu_3390_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln200_fu_3381_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln199_1_fu_3300_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln196_1_fu_3291_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln194_1_fu_3282_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln198_fu_3048_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln196_fu_3039_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln195_fu_3030_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln197_fu_2811_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln194_fu_2764_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln172_4_fu_2754_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0)& (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln200_3_fu_3697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln198_3_fu_3688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln199_3_fu_3667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln195_3_fu_3627_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln197_3_fu_3579_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln200_2_fu_3561_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln198_2_fu_3552_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln196_3_fu_3484_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln199_2_fu_3466_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln195_2_fu_3439_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln196_2_fu_3334_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln194_2_fu_3325_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_6_fu_3315_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln197_1_fu_3075_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln195_1_fu_3066_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln199_fu_3057_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln194_3_fu_3618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_7_fu_3609_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln200_1_fu_3533_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln198_1_fu_3524_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln197_2_fu_3448_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln172_5_fu_3390_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln200_fu_3381_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln199_1_fu_3300_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln196_1_fu_3291_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln194_1_fu_3282_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln198_fu_3048_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln196_fu_3039_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln195_fu_3030_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln197_fu_2811_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln194_fu_2764_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln172_4_fu_2754_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0)& (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln200_3_fu_3697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln198_3_fu_3688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln199_3_fu_3667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln195_3_fu_3627_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln197_3_fu_3579_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln200_2_fu_3561_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln198_2_fu_3552_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln196_3_fu_3484_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln199_2_fu_3466_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln195_2_fu_3439_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln196_2_fu_3334_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln194_2_fu_3325_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_6_fu_3315_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln197_1_fu_3075_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln195_1_fu_3066_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln199_fu_3057_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln194_3_fu_3618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln172_7_fu_3609_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln200_1_fu_3533_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln198_1_fu_3524_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln197_2_fu_3448_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln172_5_fu_3390_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln200_fu_3381_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln199_1_fu_3300_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln196_1_fu_3291_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln194_1_fu_3282_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln198_fu_3048_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln196_fu_3039_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln195_fu_3030_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln197_fu_2811_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln194_fu_2764_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln172_4_fu_2754_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0)& (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln200_3_fu_3697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln198_3_fu_3688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln199_3_fu_3667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln195_3_fu_3627_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln197_3_fu_3579_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln200_2_fu_3561_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln198_2_fu_3552_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln196_3_fu_3484_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln199_2_fu_3466_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln195_2_fu_3439_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln196_2_fu_3334_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln194_2_fu_3325_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_6_fu_3315_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln197_1_fu_3075_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln195_1_fu_3066_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln199_fu_3057_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln194_3_fu_3618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_7_fu_3609_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln200_1_fu_3533_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln198_1_fu_3524_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln197_2_fu_3448_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln172_5_fu_3390_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln200_fu_3381_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln199_1_fu_3300_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln196_1_fu_3291_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln194_1_fu_3282_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln198_fu_3048_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln196_fu_3039_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln195_fu_3030_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln197_fu_2811_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln194_fu_2764_p1;
    end else if (((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln172_4_fu_2754_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816== 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0)& (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_3816 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln172_1_reg_3837 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
assign add_ln172_2_fu_2496_p2 = (hi_fu_2432_p4 + 3'd2);
assign add_ln188_fu_3588_p2 = (tid_reg_3807 + 7'd4);
assign add_ln193_fu_3542_p2 = (shl_ln193_1_reg_4635 + 7'd2);
assign add_ln194_1_fu_2956_p2 = (offset_5_fu_2947_p2 + 9'd32);
assign add_ln194_2_fu_3598_p2 = (shl_ln193_1_reg_4635 + 7'd3);
assign add_ln194_3_fu_3005_p2 = (offset_6_fu_2996_p2 + 9'd32);
assign add_ln194_fu_2664_p2 = (offset_fu_2658_p2 + 9'd32);
assign add_ln195_1_fu_2670_p2 = (offset_fu_2658_p2 + 9'd8);
assign add_ln195_2_fu_2962_p2 = (offset_5_fu_2947_p2 + 9'd8);
assign add_ln195_3_fu_3198_p2 = (offset_6_reg_4095 + 9'd8);
assign add_ln195_fu_2542_p2 = (offset_4_fu_2458_p5 + 9'd8);
assign add_ln196_1_fu_2676_p2 = (offset_fu_2658_p2 + 9'd40);
assign add_ln196_2_fu_2968_p2 = (offset_5_fu_2947_p2 + 9'd40);
assign add_ln196_3_fu_3011_p2 = (offset_6_fu_2996_p2 + 9'd40);
assign add_ln196_fu_2548_p2 = (offset_4_fu_2458_p5 + 9'd40);
assign add_ln197_1_fu_2974_p2 = (offset_5_fu_2947_p2 + 9'd16);
assign add_ln197_2_fu_3017_p2 = (offset_6_fu_2996_p2 + 9'd16);
assign add_ln197_fu_2682_p2 = (offset_fu_2658_p2 + 9'd16);
assign add_ln199_1_fu_2688_p2 = (offset_fu_2658_p2 + 9'd24);
assign add_ln199_2_fu_2980_p2 = (offset_5_fu_2947_p2 + 9'd24);
assign add_ln199_3_fu_3241_p2 = (offset_6_reg_4095 + 9'd24);
assign add_ln199_fu_2618_p2 = (offset_4_fu_2458_p5 + 9'd24);
assign add_ln1_fu_2554_p5 = {{{{trunc_ln189_fu_2428_p1}, {2'd1}}, {tmp_132_fu_2450_p3}}, {hi_fu_2432_p4}};
assign add_ln_fu_2510_p5 = {{{{trunc_ln189_fu_2428_p1}, {2'd2}}, {tmp_132_fu_2450_p3}}, {hi_fu_2432_p4}};
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_2038_p13 = 'bx;
assign grp_fu_2069_p13 = 'bx;
assign grp_fu_2100_p13 = 'bx;
assign grp_fu_2131_p13 = 'bx;
assign grp_fu_2162_p13 = 'bx;
assign grp_fu_2193_p13 = 'bx;
assign grp_fu_2224_p13 = 'bx;
assign grp_fu_2255_p13 = 'bx;
assign grp_fu_2286_p13 = 'bx;
assign grp_fu_2317_p13 = 'bx;
assign grp_fu_3721_p0 = grp_fu_3721_p00;
assign grp_fu_3721_p00 = offset_4_fu_2458_p5;
assign grp_fu_3721_p1 = 10'd56;
assign grp_fu_3721_p2 = 21'd1366;
assign grp_fu_3730_p0 = 7'd11;
assign grp_fu_3730_p1 = grp_fu_3730_p10;
assign grp_fu_3730_p10 = or_ln191_2_fu_2634_p3;
assign grp_fu_3730_p2 = select_ln172_fu_3023_p3;
assign grp_fu_3738_p0 = 7'd11;
assign grp_fu_3738_p1 = grp_fu_3738_p10;
assign grp_fu_3738_p10 = or_ln191_1_fu_2730_p3;
assign grp_fu_3738_p2 = select_ln172_fu_3023_p3;
assign grp_fu_3746_p0 = zext_ln172_27_fu_2839_p1;
assign grp_fu_3746_p1 = 10'd48;
assign grp_fu_3746_p2 = 21'd1366;
assign grp_fu_3755_p0 = zext_ln172_27_fu_2839_p1;
assign grp_fu_3755_p1 = 10'd56;
assign grp_fu_3755_p2 = 21'd1366;
assign grp_fu_3764_p0 = zext_ln172_28_fu_2952_p1;
assign grp_fu_3764_p1 = 10'd48;
assign grp_fu_3764_p2 = 21'd1366;
assign grp_fu_3773_p0 = zext_ln172_28_fu_2952_p1;
assign grp_fu_3773_p1 = 10'd56;
assign grp_fu_3773_p2 = 21'd1366;
assign grp_fu_3782_p0 = zext_ln172_29_fu_3001_p1;
assign grp_fu_3782_p1 = 10'd48;
assign grp_fu_3782_p2 = 21'd1366;
assign grp_fu_3791_p0 = zext_ln172_29_fu_3001_p1;
assign grp_fu_3791_p1 = 10'd56;
assign grp_fu_3791_p2 = 21'd1366;
assign hi_fu_2432_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign icmp_ln172_fu_2480_p2 = ((hi_fu_2432_p4 < 3'd6) ? 1'b1 : 1'b0);
assign mul_ln172_2_fu_2714_p0 = mul_ln172_2_fu_2714_p00;
assign mul_ln172_2_fu_2714_p00 = or_ln9_fu_2702_p3;
assign mul_ln172_2_fu_2714_p1 = 7'd11;
assign mul_ln172_fu_2474_p0 = mul_ln172_fu_2474_p00;
assign mul_ln172_fu_2474_p00 = trunc_ln189_fu_2428_p1;
assign mul_ln172_fu_2474_p1 = 7'd11;
assign mul_ln191_1_fu_2646_p5 = {{{{tmp_51_fu_2624_p4}, {3'd4}}, {tmp_51_fu_2624_p4}}, {2'd2}};
assign mul_ln191_2_fu_2937_p5 = {{{{tmp_149_reg_3917}, {4'd8}}, {tmp_149_reg_3917}}, {3'd4}};
assign mul_ln191_3_fu_2986_p5 = {{{{tmp_149_reg_3917}, {4'd12}}, {tmp_149_reg_3917}}, {3'd6}};
assign mul_ln194_1_fu_2845_p0 = mul_ln194_1_fu_2845_p00;
assign mul_ln194_1_fu_2845_p00 = add_ln194_reg_3892;
assign mul_ln194_1_fu_2845_p1 = 19'd683;
assign mul_ln194_2_fu_3087_p0 = mul_ln194_2_fu_3087_p00;
assign mul_ln194_2_fu_3087_p00 = add_ln194_1_reg_4070;
assign mul_ln194_2_fu_3087_p1 = 19'd683;
assign mul_ln194_3_fu_3182_p0 = mul_ln194_3_fu_3182_p00;
assign mul_ln194_3_fu_3182_p00 = add_ln194_3_reg_4101;
assign mul_ln194_3_fu_3182_p1 = 19'd683;
assign mul_ln194_fu_2526_p0 = mul_ln194_fu_2526_p00;
assign mul_ln194_fu_2526_p00 = add_ln_fu_2510_p5;
assign mul_ln194_fu_2526_p1 = 19'd683;
assign mul_ln195_1_fu_2864_p0 = mul_ln195_1_fu_2864_p00;
assign mul_ln195_1_fu_2864_p00 = add_ln195_1_reg_3897;
assign mul_ln195_1_fu_2864_p1 = 19'd683;
assign mul_ln195_2_fu_3106_p0 = mul_ln195_2_fu_3106_p00;
assign mul_ln195_2_fu_3106_p00 = add_ln195_2_reg_4075;
assign mul_ln195_2_fu_3106_p1 = 19'd683;
assign mul_ln195_3_fu_3346_p0 = mul_ln195_3_fu_3346_p00;
assign mul_ln195_3_fu_3346_p00 = add_ln195_3_reg_4332;
assign mul_ln195_3_fu_3346_p1 = 19'd683;
assign mul_ln195_fu_2776_p0 = mul_ln195_fu_2776_p00;
assign mul_ln195_fu_2776_p00 = add_ln195_reg_3857;
assign mul_ln195_fu_2776_p1 = 19'd683;
assign mul_ln196_1_fu_2883_p0 = mul_ln196_1_fu_2883_p00;
assign mul_ln196_1_fu_2883_p00 = add_ln196_1_reg_3902;
assign mul_ln196_1_fu_2883_p1 = 19'd683;
assign mul_ln196_2_fu_3125_p0 = mul_ln196_2_fu_3125_p00;
assign mul_ln196_2_fu_3125_p00 = add_ln196_2_reg_4080;
assign mul_ln196_2_fu_3125_p1 = 19'd683;
assign mul_ln196_3_fu_3206_p0 = mul_ln196_3_fu_3206_p00;
assign mul_ln196_3_fu_3206_p00 = add_ln196_3_reg_4106;
assign mul_ln196_3_fu_3206_p1 = 19'd683;
assign mul_ln196_fu_2795_p0 = mul_ln196_fu_2795_p00;
assign mul_ln196_fu_2795_p00 = add_ln196_reg_3862;
assign mul_ln196_fu_2795_p1 = 19'd683;
assign mul_ln197_1_fu_2902_p0 = mul_ln197_1_fu_2902_p00;
assign mul_ln197_1_fu_2902_p00 = add_ln197_reg_3907;
assign mul_ln197_1_fu_2902_p1 = 19'd683;
assign mul_ln197_2_fu_3144_p0 = mul_ln197_2_fu_3144_p00;
assign mul_ln197_2_fu_3144_p00 = add_ln197_1_reg_4085;
assign mul_ln197_2_fu_3144_p1 = 19'd683;
assign mul_ln197_3_fu_3225_p0 = mul_ln197_3_fu_3225_p00;
assign mul_ln197_3_fu_3225_p00 = add_ln197_2_reg_4111;
assign mul_ln197_3_fu_3225_p1 = 19'd683;
assign mul_ln197_fu_2570_p0 = mul_ln197_fu_2570_p00;
assign mul_ln197_fu_2570_p00 = add_ln1_fu_2554_p5;
assign mul_ln197_fu_2570_p1 = 19'd683;
assign mul_ln198_fu_2602_p0 = mul_ln198_fu_2602_p00;
assign mul_ln198_fu_2602_p00 = tmp_138_fu_2586_p5;
assign mul_ln198_fu_2602_p1 = 21'd1366;
assign mul_ln199_1_fu_2921_p0 = mul_ln199_1_fu_2921_p00;
assign mul_ln199_1_fu_2921_p00 = add_ln199_1_reg_3912;
assign mul_ln199_1_fu_2921_p1 = 19'd683;
assign mul_ln199_2_fu_3163_p0 = mul_ln199_2_fu_3163_p00;
assign mul_ln199_2_fu_3163_p00 = add_ln199_2_reg_4090;
assign mul_ln199_2_fu_3163_p1 = 19'd683;
assign mul_ln199_3_fu_3365_p0 = mul_ln199_3_fu_3365_p00;
assign mul_ln199_3_fu_3365_p00 = add_ln199_3_reg_4347;
assign mul_ln199_3_fu_3365_p1 = 19'd683;
assign mul_ln199_fu_2823_p0 = mul_ln199_fu_2823_p00;
assign mul_ln199_fu_2823_p00 = add_ln199_reg_3877;
assign mul_ln199_fu_2823_p1 = 19'd683;
assign offset_4_fu_2458_p5 = {{{{trunc_ln189_fu_2428_p1}, {2'd0}}, {tmp_132_fu_2450_p3}}, {hi_fu_2432_p4}};
assign offset_5_fu_2947_p2 = (mul_ln191_2_fu_2937_p5 + zext_ln114_reg_3820);
assign offset_6_fu_2996_p2 = (mul_ln191_3_fu_2986_p5 + zext_ln114_reg_3820);
assign offset_fu_2658_p2 = (mul_ln191_1_fu_2646_p5 + zext_ln114_fu_2442_p1);
assign or_ln10_fu_3706_p3 = {{tmp_53_reg_4936}, {3'd6}};
assign or_ln172_1_fu_3309_p3 = {{tmp_150_reg_3925}, {xor_ln172_reg_3935}};
assign or_ln191_1_fu_2730_p3 = {{tmp_149_fu_2694_p3}, {2'd3}};
assign or_ln191_2_fu_2634_p3 = {{tmp_51_fu_2624_p4}, {1'd1}};
assign or_ln194_1_fu_3511_p3 = {{tmp_52_reg_4630}, {2'd3}};
assign or_ln194_2_fu_3676_p3 = {{tmp_53_reg_4936}, {3'd7}};
assign or_ln8_fu_3260_p3 = {{trunc_ln193_fu_3246_p1}, {1'd1}};
assign or_ln9_fu_2702_p3 = {{tmp_149_fu_2694_p3}, {2'd2}};
assign or_ln_fu_2747_p3 = {{tmp_133_reg_3832}, {xor_ln172_fu_2742_p2}};
assign select_ln172_1_fu_2502_p3 = ((icmp_ln172_fu_2480_p2[0:0] == 1'b1) ? hi_fu_2432_p4 : add_ln172_2_fu_2496_p2);
assign select_ln172_fu_3023_p3 = ((icmp_ln172_reg_3826[0:0] == 1'b1) ? 7'd0 : 7'd1);
assign shl_ln193_1_fu_3408_p3 = {{tmp_52_fu_3399_p4}, {2'd2}};
assign shl_ln193_fu_3249_p2 = tid_reg_3807 << 7'd1;
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_132_fu_2450_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_138_fu_2586_p5 = {{{{trunc_ln189_fu_2428_p1}, {2'd3}}, {tmp_132_fu_2450_p3}}, {hi_fu_2432_p4}};
assign tmp_141_fu_3273_p1 = grp_fu_3721_p3;
assign tmp_146_fu_3421_p1 = grp_fu_3746_p3;
assign tmp_148_fu_3430_p1 = grp_fu_3755_p3;
assign tmp_149_fu_2694_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_155_fu_3457_p1 = grp_fu_3764_p3;
assign tmp_157_fu_3475_p1 = grp_fu_3773_p3;
assign tmp_162_fu_3493_p1 = grp_fu_3782_p3;
assign tmp_164_fu_3502_p1 = grp_fu_3791_p3;
assign tmp_47_fu_3636_p13 = 'bx;
assign tmp_51_fu_2624_p4 = {{ap_sig_allocacmp_tid[2:1]}};
assign tmp_52_fu_3399_p4 = {{tid_reg_3807[5:1]}};
assign tmp_fu_2420_p3 = ap_sig_allocacmp_tid[32'd6];
assign trunc_ln189_fu_2428_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_3246_p1 = tid_reg_3807[5:0];
assign xor_ln172_fu_2742_p2 = (icmp_ln172_reg_3826 ^ 1'd1);
assign zext_ln114_fu_2442_p1 = hi_fu_2432_p4;
assign zext_ln172_27_fu_2839_p1 = offset_reg_3887;
assign zext_ln172_28_fu_2952_p1 = offset_5_fu_2947_p2;
assign zext_ln172_29_fu_3001_p1 = offset_6_fu_2996_p2;
assign zext_ln172_4_fu_2754_p1 = or_ln_fu_2747_p3;
assign zext_ln172_5_fu_3390_p1 = $unsigned(add_ln172_reg_4370);
assign zext_ln172_6_fu_3315_p1 = or_ln172_1_fu_3309_p3;
assign zext_ln172_7_fu_3609_p1 = $unsigned(add_ln172_1_reg_4555);
assign zext_ln193_1_fu_3416_p1 = shl_ln193_1_fu_3408_p3;
assign zext_ln193_2_fu_3547_p1 = add_ln193_fu_3542_p2;
assign zext_ln193_3_fu_3713_p1 = or_ln10_fu_3706_p3;
assign zext_ln193_fu_3254_p1 = shl_ln193_fu_3249_p2;
assign zext_ln194_1_fu_3282_p1 = tmp_142_reg_4045;
assign zext_ln194_2_fu_3325_p1 = tmp_151_reg_4302;
assign zext_ln194_3_fu_3618_p1 = tmp_158_reg_4327;
assign zext_ln194_4_fu_3268_p1 = or_ln8_fu_3260_p3;
assign zext_ln194_5_fu_3518_p1 = or_ln194_1_fu_3511_p3;
assign zext_ln194_6_fu_3603_p1 = add_ln194_2_fu_3598_p2;
assign zext_ln194_7_fu_3683_p1 = or_ln194_2_fu_3676_p3;
assign zext_ln194_fu_2764_p1 = tmp_134_reg_3852;
assign zext_ln195_1_fu_3066_p1 = tmp_143_reg_4050;
assign zext_ln195_2_fu_3439_p1 = tmp_152_reg_4307;
assign zext_ln195_3_fu_3627_p1 = tmp_159_reg_4560;
assign zext_ln195_fu_3030_p1 = tmp_135_reg_4000;
assign zext_ln196_1_fu_3291_p1 = tmp_144_reg_4055;
assign zext_ln196_2_fu_3334_p1 = tmp_153_reg_4312;
assign zext_ln196_3_fu_3484_p1 = tmp_160_reg_4337;
assign zext_ln196_fu_3039_p1 = tmp_136_reg_4005;
assign zext_ln197_1_fu_3075_p1 = tmp_145_reg_4060;
assign zext_ln197_2_fu_3448_p1 = tmp_154_reg_4317;
assign zext_ln197_3_fu_3579_p1 = tmp_161_reg_4342;
assign zext_ln197_fu_2811_p1 = tmp_137_reg_3867;
assign zext_ln198_1_fu_3524_p1 = tmp_146_reg_4648;
assign zext_ln198_2_fu_3552_p1 = tmp_155_reg_4723;
assign zext_ln198_3_fu_3688_p1 = tmp_162_reg_4793;
assign zext_ln198_fu_3048_p1 = tmp_139_reg_3872;
assign zext_ln199_1_fu_3300_p1 = tmp_147_reg_4065;
assign zext_ln199_2_fu_3466_p1 = tmp_156_reg_4322;
assign zext_ln199_3_fu_3667_p1 = tmp_163_reg_4565;
assign zext_ln199_fu_3057_p1 = tmp_140_reg_4040;
assign zext_ln200_1_fu_3533_p1 = tmp_148_reg_4653;
assign zext_ln200_2_fu_3561_p1 = tmp_157_reg_4758;
assign zext_ln200_3_fu_3697_p1 = tmp_164_reg_4798;
assign zext_ln200_fu_3381_p1 = tmp_141_reg_4365;
always @ (posedge ap_clk) begin
    zext_ln114_reg_3820[8:3] <= 6'b000000;
    zext_ln193_reg_4352[0] <= 1'b0;
    zext_ln193_reg_4352[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln194_4_reg_4358[0] <= 1'b1;
    zext_ln194_4_reg_4358[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    shl_ln193_1_reg_4635[1:0] <= 2'b10;
    zext_ln193_1_reg_4641[1:0] <= 2'b10;
    zext_ln193_1_reg_4641[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln194_5_reg_4803[1:0] <= 2'b11;
    zext_ln194_5_reg_4803[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln193_2_reg_4869[1:0] <= 2'b00;
    zext_ln193_2_reg_4869[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln194_6_reg_4977[1:0] <= 2'b01;
    zext_ln194_6_reg_4977[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln194_7_reg_5108[2:0] <= 3'b111;
    zext_ln194_7_reg_5108[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 