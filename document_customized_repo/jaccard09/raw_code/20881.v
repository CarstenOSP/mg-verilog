module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1); 
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_4019;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_4009;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_4009_pp0_iter1_reg;
reg   [6:0] tid_reg_4009_pp0_iter2_reg;
reg   [0:0] tmp_reg_4019_pp0_iter1_reg;
wire   [2:0] hi_fu_1763_p4;
reg   [2:0] hi_reg_4023;
wire   [2:0] trunc_ln191_fu_1773_p1;
reg   [2:0] trunc_ln191_reg_4031;
wire   [0:0] tmp_131_fu_1777_p3;
reg   [0:0] tmp_131_reg_4038;
wire   [8:0] offset_fu_1785_p5;
reg   [8:0] offset_reg_4045;
wire   [8:0] zext_ln114_fu_1803_p1;
reg   [8:0] zext_ln114_reg_4055;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [8:0] offset_4_fu_1827_p2;
reg   [8:0] offset_4_reg_4061;
wire   [8:0] offset_5_fu_1858_p2;
reg   [8:0] offset_5_reg_4073;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [8:0] offset_5_reg_4073_pp0_iter1_reg;
wire   [8:0] offset_6_fu_1881_p2;
reg   [8:0] offset_6_reg_4085;
wire   [9:0] zext_ln172_28_fu_1891_p1;
reg   [9:0] zext_ln172_28_reg_4097;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [6:0] tmp_132_reg_4102;
reg   [6:0] tmp_133_reg_4107;
wire   [8:0] add_ln195_fu_1955_p2;
reg   [8:0] add_ln195_reg_4112;
wire   [8:0] add_ln196_fu_1960_p2;
reg   [8:0] add_ln196_reg_4117;
reg   [6:0] tmp_136_reg_4122;
reg   [7:0] tmp_138_reg_4127;
wire   [8:0] add_ln199_fu_2023_p2;
reg   [8:0] add_ln199_reg_4132;
wire   [8:0] add_ln194_fu_2028_p2;
reg   [8:0] add_ln194_reg_4137;
wire   [8:0] add_ln195_1_fu_2033_p2;
reg   [8:0] add_ln195_1_reg_4142;
wire   [8:0] add_ln196_1_fu_2038_p2;
reg   [8:0] add_ln196_1_reg_4147;
wire   [8:0] add_ln197_fu_2043_p2;
reg   [8:0] add_ln197_reg_4152;
wire   [8:0] add_ln199_1_fu_2048_p2;
reg   [8:0] add_ln199_1_reg_4157;
wire   [8:0] add_ln194_1_fu_2053_p2;
reg   [8:0] add_ln194_1_reg_4162;
wire   [8:0] add_ln195_2_fu_2058_p2;
reg   [8:0] add_ln195_2_reg_4167;
wire   [8:0] add_ln196_2_fu_2063_p2;
reg   [8:0] add_ln196_2_reg_4172;
reg   [6:0] tmp_134_reg_4177;
reg   [6:0] tmp_135_reg_4182;
reg   [6:0] tmp_139_reg_4187;
wire   [9:0] zext_ln172_24_fu_2125_p1;
reg   [9:0] zext_ln172_24_reg_4192;
reg   [6:0] tmp_141_reg_4197;
reg   [6:0] tmp_142_reg_4202;
reg   [6:0] tmp_143_reg_4207;
reg   [6:0] tmp_144_reg_4212;
reg   [6:0] tmp_145_reg_4217;
reg   [6:0] tmp_147_reg_4222;
reg   [6:0] tmp_150_reg_4227;
reg   [6:0] tmp_151_reg_4232;
reg   [6:0] tmp_152_reg_4237;
reg   [6:0] tmp_153_reg_4242;
wire   [8:0] add_ln197_1_fu_2318_p2;
reg   [8:0] add_ln197_1_reg_4247;
wire   [8:0] add_ln199_2_fu_2323_p2;
reg   [8:0] add_ln199_2_reg_4252;
wire   [8:0] add_ln194_2_fu_2328_p2;
reg   [8:0] add_ln194_2_reg_4257;
wire   [8:0] add_ln195_3_fu_2333_p2;
reg   [8:0] add_ln195_3_reg_4262;
wire   [8:0] add_ln196_3_fu_2338_p2;
reg   [8:0] add_ln196_3_reg_4267;
wire   [8:0] add_ln197_2_fu_2343_p2;
reg   [8:0] add_ln197_2_reg_4272;
wire   [8:0] add_ln199_3_fu_2348_p2;
reg   [8:0] add_ln199_3_reg_4277;
reg   [7:0] tmp_165_reg_4282;
reg   [6:0] tmp_154_reg_4287;
reg   [6:0] tmp_156_reg_4292;
reg   [6:0] tmp_158_reg_4297;
reg   [6:0] tmp_159_reg_4302;
reg   [6:0] tmp_160_reg_4307;
reg   [6:0] tmp_161_reg_4312;
reg   [6:0] tmp_162_reg_4317;
reg   [6:0] tmp_164_reg_4322;
reg   [7:0] tmp_140_reg_4327;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [9:0] zext_ln172_26_fu_2523_p1;
reg   [9:0] zext_ln172_26_reg_4332;
wire   [2:0] trunc_ln172_fu_2526_p1;
reg   [2:0] trunc_ln172_reg_4337;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] tmp_146_reg_4349;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [2:0] trunc_ln172_4_fu_2603_p1;
reg   [2:0] trunc_ln172_4_reg_4554;
reg   [7:0] tmp_148_reg_4566;
wire   [63:0] tmp_s_fu_2616_p13;
reg   [63:0] tmp_s_reg_4571;
wire   [63:0] tmp_32_fu_2643_p13;
reg   [63:0] tmp_32_reg_4576;
wire   [63:0] tmp_33_fu_2670_p13;
reg   [63:0] tmp_33_reg_4581;
wire   [63:0] tmp_34_fu_2697_p13;
reg   [63:0] tmp_34_reg_4586;
wire   [63:0] tmp_35_fu_2724_p13;
reg   [63:0] tmp_35_reg_4591;
wire   [63:0] tmp_36_fu_2751_p13;
reg   [63:0] tmp_36_reg_4596;
wire   [63:0] tmp_37_fu_2778_p13;
reg   [63:0] tmp_37_reg_4601;
wire   [63:0] tmp_38_fu_2805_p13;
reg   [63:0] tmp_38_reg_4606;
wire   [2:0] trunc_ln172_5_fu_2896_p1;
reg   [2:0] trunc_ln172_5_reg_4811;
reg   [7:0] tmp_155_reg_4823;
wire   [5:0] trunc_ln193_fu_2909_p1;
reg   [5:0] trunc_ln193_reg_4828;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_39_fu_2940_p13;
reg   [63:0] tmp_39_reg_4834;
wire   [63:0] tmp_40_fu_2967_p13;
reg   [63:0] tmp_40_reg_4839;
wire   [63:0] tmp_41_fu_2994_p13;
reg   [63:0] tmp_41_reg_4844;
wire   [63:0] tmp_42_fu_3021_p13;
reg   [63:0] tmp_42_reg_4849;
wire   [63:0] tmp_43_fu_3048_p13;
reg   [63:0] tmp_43_reg_4854;
wire   [63:0] tmp_44_fu_3075_p13;
reg   [63:0] tmp_44_reg_4859;
wire   [63:0] tmp_45_fu_3102_p13;
reg   [63:0] tmp_45_reg_4864;
wire   [63:0] tmp_46_fu_3129_p13;
reg   [63:0] tmp_46_reg_4869;
wire   [2:0] trunc_ln172_6_fu_3230_p1;
reg   [2:0] trunc_ln172_6_reg_5074;
wire   [63:0] tmp_47_fu_3260_p13;
reg   [63:0] tmp_47_reg_5086;
wire   [63:0] tmp_48_fu_3287_p13;
reg   [63:0] tmp_48_reg_5091;
wire   [63:0] tmp_49_fu_3314_p13;
reg   [63:0] tmp_49_reg_5096;
wire   [63:0] tmp_50_fu_3341_p13;
reg   [63:0] tmp_50_reg_5101;
wire   [63:0] tmp_51_fu_3368_p13;
reg   [63:0] tmp_51_reg_5106;
wire   [63:0] tmp_52_fu_3395_p13;
reg   [63:0] tmp_52_reg_5111;
wire   [63:0] tmp_53_fu_3422_p13;
reg   [63:0] tmp_53_reg_5116;
wire   [63:0] tmp_54_fu_3449_p13;
reg   [63:0] tmp_54_reg_5121;
wire   [4:0] tmp_64_fu_3550_p4;
reg   [4:0] tmp_64_reg_5326;
reg   [3:0] tmp_65_reg_5332;
wire   [63:0] tmp_55_fu_3596_p13;
reg   [63:0] tmp_55_reg_5344;
wire   [63:0] tmp_56_fu_3623_p13;
reg   [63:0] tmp_56_reg_5349;
wire   [63:0] tmp_57_fu_3650_p13;
reg   [63:0] tmp_57_reg_5354;
wire   [63:0] tmp_58_fu_3677_p13;
reg   [63:0] tmp_58_reg_5359;
wire   [63:0] tmp_59_fu_3704_p13;
reg   [63:0] tmp_59_reg_5364;
wire   [63:0] tmp_60_fu_3731_p13;
reg   [63:0] tmp_60_reg_5369;
wire   [63:0] tmp_61_fu_3758_p13;
reg   [63:0] tmp_61_reg_5374;
wire   [63:0] tmp_62_fu_3785_p13;
reg   [63:0] tmp_62_reg_5379;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln172_4_fu_2539_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_fu_2547_p1;
wire   [63:0] zext_ln195_fu_2555_p1;
wire   [63:0] zext_ln196_fu_2563_p1;
wire   [63:0] zext_ln197_fu_2571_p1;
wire   [63:0] zext_ln198_fu_2579_p1;
wire   [63:0] zext_ln199_fu_2587_p1;
wire   [63:0] zext_ln200_fu_2595_p1;
wire   [63:0] zext_ln172_5_fu_2832_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln194_1_fu_2840_p1;
wire   [63:0] zext_ln195_1_fu_2848_p1;
wire   [63:0] zext_ln196_1_fu_2856_p1;
wire   [63:0] zext_ln197_1_fu_2864_p1;
wire   [63:0] zext_ln198_1_fu_2872_p1;
wire   [63:0] zext_ln199_1_fu_2880_p1;
wire   [63:0] zext_ln200_1_fu_2888_p1;
wire   [63:0] zext_ln193_fu_2920_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln194_4_fu_2934_p1;
wire   [63:0] zext_ln172_6_fu_3156_p1;
wire   [63:0] zext_ln194_2_fu_3164_p1;
wire   [63:0] zext_ln195_2_fu_3172_p1;
wire   [63:0] zext_ln196_2_fu_3180_p1;
wire   [63:0] zext_ln197_2_fu_3188_p1;
wire   [63:0] zext_ln198_2_fu_3196_p1;
wire   [63:0] zext_ln199_2_fu_3204_p1;
wire   [63:0] zext_ln200_2_fu_3221_p1;
wire   [63:0] zext_ln197_4_fu_3241_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln198_4_fu_3254_p1;
wire   [63:0] zext_ln172_7_fu_3476_p1;
wire   [63:0] zext_ln194_3_fu_3484_p1;
wire   [63:0] zext_ln195_3_fu_3492_p1;
wire   [63:0] zext_ln196_3_fu_3500_p1;
wire   [63:0] zext_ln197_3_fu_3508_p1;
wire   [63:0] zext_ln198_3_fu_3525_p1;
wire   [63:0] zext_ln199_3_fu_3534_p1;
wire   [63:0] zext_ln200_3_fu_3542_p1;
wire   [63:0] zext_ln193_1_fu_3567_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_5_fu_3581_p1;
wire   [63:0] zext_ln197_5_fu_3819_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln198_5_fu_3832_p1;
wire   [63:0] zext_ln193_2_fu_3845_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_6_fu_3858_p1;
wire   [63:0] zext_ln197_6_fu_3871_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln198_6_fu_3884_p1;
wire   [63:0] zext_ln193_3_fu_3897_p1;
wire   [63:0] zext_ln194_7_fu_3910_p1;
wire   [63:0] zext_ln197_7_fu_3923_p1;
wire   [63:0] zext_ln198_7_fu_3936_p1;
reg   [6:0] tid_2_fu_144;
wire   [6:0] add_ln188_fu_1894_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
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
wire   [8:0] grp_fu_1797_p0;
wire   [3:0] grp_fu_1797_p1;
wire   [1:0] tmp_63_fu_1806_p4;
wire   [8:0] mul_ln191_1_fu_1815_p5;
wire   [8:0] grp_fu_1833_p0;
wire   [3:0] grp_fu_1833_p1;
wire   [0:0] tmp_149_fu_1839_p3;
wire   [8:0] mul_ln191_2_fu_1846_p5;
wire   [8:0] grp_fu_1863_p0;
wire   [3:0] grp_fu_1863_p1;
wire   [8:0] mul_ln191_3_fu_1869_p5;
wire   [3:0] grp_fu_1886_p1;
wire   [8:0] mul_ln172_fu_1910_p0;
wire   [10:0] mul_ln172_fu_1910_p1;
wire   [18:0] mul_ln172_fu_1910_p2;
wire   [8:0] add_ln_fu_1926_p5;
wire   [8:0] mul_ln194_fu_1939_p0;
wire   [10:0] mul_ln194_fu_1939_p1;
wire   [18:0] mul_ln194_fu_1939_p2;
wire   [8:0] add_ln1_fu_1965_p5;
wire   [8:0] mul_ln197_fu_1978_p0;
wire   [10:0] mul_ln197_fu_1978_p1;
wire   [18:0] mul_ln197_fu_1978_p2;
wire   [8:0] tmp_137_fu_1994_p5;
wire   [8:0] mul_ln198_fu_2007_p0;
wire   [11:0] mul_ln198_fu_2007_p1;
wire   [20:0] mul_ln198_fu_2007_p2;
wire   [8:0] mul_ln195_fu_2071_p0;
wire   [10:0] mul_ln195_fu_2071_p1;
wire   [18:0] mul_ln195_fu_2071_p2;
wire   [8:0] mul_ln196_fu_2090_p0;
wire   [10:0] mul_ln196_fu_2090_p1;
wire   [18:0] mul_ln196_fu_2090_p2;
wire   [8:0] mul_ln199_fu_2109_p0;
wire   [10:0] mul_ln199_fu_2109_p1;
wire   [18:0] mul_ln199_fu_2109_p2;
wire   [8:0] mul_ln172_4_fu_2131_p0;
wire   [10:0] mul_ln172_4_fu_2131_p1;
wire   [18:0] mul_ln172_4_fu_2131_p2;
wire   [8:0] mul_ln194_1_fu_2150_p0;
wire   [10:0] mul_ln194_1_fu_2150_p1;
wire   [18:0] mul_ln194_1_fu_2150_p2;
wire   [8:0] mul_ln195_1_fu_2169_p0;
wire   [10:0] mul_ln195_1_fu_2169_p1;
wire   [18:0] mul_ln195_1_fu_2169_p2;
wire   [8:0] mul_ln196_1_fu_2188_p0;
wire   [10:0] mul_ln196_1_fu_2188_p1;
wire   [18:0] mul_ln196_1_fu_2188_p2;
wire   [8:0] mul_ln197_1_fu_2207_p0;
wire   [10:0] mul_ln197_1_fu_2207_p1;
wire   [18:0] mul_ln197_1_fu_2207_p2;
wire   [8:0] mul_ln199_1_fu_2226_p0;
wire   [10:0] mul_ln199_1_fu_2226_p1;
wire   [18:0] mul_ln199_1_fu_2226_p2;
wire   [8:0] mul_ln172_5_fu_2245_p0;
wire   [10:0] mul_ln172_5_fu_2245_p1;
wire   [18:0] mul_ln172_5_fu_2245_p2;
wire   [8:0] mul_ln194_2_fu_2264_p0;
wire   [10:0] mul_ln194_2_fu_2264_p1;
wire   [18:0] mul_ln194_2_fu_2264_p2;
wire   [8:0] mul_ln195_2_fu_2283_p0;
wire   [10:0] mul_ln195_2_fu_2283_p1;
wire   [18:0] mul_ln195_2_fu_2283_p2;
wire   [8:0] mul_ln196_2_fu_2302_p0;
wire   [10:0] mul_ln196_2_fu_2302_p1;
wire   [18:0] mul_ln196_2_fu_2302_p2;
wire   [20:0] tmp_165_fu_2353_p1;
wire  signed [20:0] grp_fu_3942_p3;
wire   [8:0] mul_ln197_2_fu_2365_p0;
wire   [10:0] mul_ln197_2_fu_2365_p1;
wire   [18:0] mul_ln197_2_fu_2365_p2;
wire   [8:0] mul_ln199_2_fu_2384_p0;
wire   [10:0] mul_ln199_2_fu_2384_p1;
wire   [18:0] mul_ln199_2_fu_2384_p2;
wire   [8:0] mul_ln172_6_fu_2403_p0;
wire   [10:0] mul_ln172_6_fu_2403_p1;
wire   [18:0] mul_ln172_6_fu_2403_p2;
wire   [8:0] mul_ln194_3_fu_2422_p0;
wire   [10:0] mul_ln194_3_fu_2422_p1;
wire   [18:0] mul_ln194_3_fu_2422_p2;
wire   [8:0] mul_ln195_3_fu_2441_p0;
wire   [10:0] mul_ln195_3_fu_2441_p1;
wire   [18:0] mul_ln195_3_fu_2441_p2;
wire   [8:0] mul_ln196_3_fu_2460_p0;
wire   [10:0] mul_ln196_3_fu_2460_p1;
wire   [18:0] mul_ln196_3_fu_2460_p2;
wire   [8:0] mul_ln197_3_fu_2479_p0;
wire   [10:0] mul_ln197_3_fu_2479_p1;
wire   [18:0] mul_ln197_3_fu_2479_p2;
wire   [8:0] mul_ln199_3_fu_2498_p0;
wire   [10:0] mul_ln199_3_fu_2498_p1;
wire   [18:0] mul_ln199_3_fu_2498_p2;
wire   [20:0] tmp_140_fu_2514_p1;
wire  signed [20:0] grp_fu_3951_p3;
wire   [2:0] grp_fu_1797_p2;
wire   [20:0] tmp_146_fu_2530_p1;
wire  signed [20:0] grp_fu_3960_p3;
wire   [2:0] grp_fu_1833_p2;
wire   [20:0] tmp_148_fu_2607_p1;
wire  signed [20:0] grp_fu_3969_p3;
wire   [63:0] tmp_s_fu_2616_p11;
wire   [63:0] tmp_32_fu_2643_p11;
wire   [63:0] tmp_33_fu_2670_p11;
wire   [63:0] tmp_34_fu_2697_p11;
wire   [63:0] tmp_35_fu_2724_p11;
wire   [63:0] tmp_36_fu_2751_p11;
wire   [63:0] tmp_37_fu_2778_p11;
wire   [63:0] tmp_38_fu_2805_p11;
wire   [2:0] grp_fu_1863_p2;
wire   [20:0] tmp_155_fu_2900_p1;
wire  signed [20:0] grp_fu_3977_p3;
wire   [7:0] shl_ln2_fu_2912_p3;
wire   [7:0] or_ln13_fu_2926_p3;
wire   [63:0] tmp_39_fu_2940_p11;
wire   [63:0] tmp_40_fu_2967_p11;
wire   [63:0] tmp_41_fu_2994_p11;
wire   [63:0] tmp_42_fu_3021_p11;
wire   [63:0] tmp_43_fu_3048_p11;
wire   [63:0] tmp_44_fu_3075_p11;
wire   [63:0] tmp_45_fu_3102_p11;
wire   [63:0] tmp_46_fu_3129_p11;
wire   [20:0] tmp_157_fu_3212_p1;
wire  signed [20:0] grp_fu_3986_p3;
wire   [7:0] tmp_157_fu_3212_p4;
wire   [2:0] grp_fu_1886_p2;
wire   [7:0] or_ln14_fu_3234_p3;
wire   [7:0] or_ln15_fu_3247_p3;
wire   [63:0] tmp_47_fu_3260_p11;
wire   [63:0] tmp_48_fu_3287_p11;
wire   [63:0] tmp_49_fu_3314_p11;
wire   [63:0] tmp_50_fu_3341_p11;
wire   [63:0] tmp_51_fu_3368_p11;
wire   [63:0] tmp_52_fu_3395_p11;
wire   [63:0] tmp_53_fu_3422_p11;
wire   [63:0] tmp_54_fu_3449_p11;
wire   [20:0] tmp_163_fu_3516_p1;
wire  signed [20:0] grp_fu_3994_p3;
wire   [7:0] tmp_163_fu_3516_p4;
wire   [7:0] shl_ln193_1_fu_3559_p3;
wire   [7:0] or_ln194_1_fu_3573_p3;
wire   [63:0] tmp_55_fu_3596_p11;
wire   [63:0] tmp_56_fu_3623_p11;
wire   [63:0] tmp_57_fu_3650_p11;
wire   [63:0] tmp_58_fu_3677_p11;
wire   [63:0] tmp_59_fu_3704_p11;
wire   [63:0] tmp_60_fu_3731_p11;
wire   [63:0] tmp_61_fu_3758_p11;
wire   [63:0] tmp_62_fu_3785_p11;
wire   [7:0] or_ln197_1_fu_3812_p3;
wire   [7:0] or_ln198_1_fu_3825_p3;
wire   [7:0] or_ln17_fu_3838_p3;
wire   [7:0] or_ln194_2_fu_3851_p3;
wire   [7:0] or_ln197_2_fu_3864_p3;
wire   [7:0] or_ln198_2_fu_3877_p3;
wire   [7:0] shl_ln193_2_fu_3890_p3;
wire   [7:0] or_ln194_3_fu_3903_p3;
wire   [7:0] or_ln197_3_fu_3916_p3;
wire   [7:0] or_ln198_3_fu_3929_p3;
wire   [8:0] grp_fu_3942_p0;
wire   [5:0] grp_fu_3942_p1;
wire   [10:0] grp_fu_3942_p2;
wire   [8:0] grp_fu_3951_p0;
wire   [5:0] grp_fu_3951_p1;
wire   [10:0] grp_fu_3951_p2;
wire   [8:0] grp_fu_3960_p0;
wire   [5:0] grp_fu_3960_p1;
wire   [10:0] grp_fu_3960_p2;
wire   [8:0] grp_fu_3969_p0;
wire   [5:0] grp_fu_3969_p1;
wire   [10:0] grp_fu_3969_p2;
wire   [8:0] grp_fu_3977_p0;
wire   [5:0] grp_fu_3977_p1;
wire   [10:0] grp_fu_3977_p2;
wire   [8:0] grp_fu_3986_p0;
wire   [5:0] grp_fu_3986_p1;
wire   [10:0] grp_fu_3986_p2;
wire   [8:0] grp_fu_3994_p0;
wire   [5:0] grp_fu_3994_p1;
wire   [10:0] grp_fu_3994_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage6;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_3942_p00;
wire   [9:0] grp_fu_3951_p00;
wire   [9:0] grp_fu_3960_p00;
wire   [9:0] grp_fu_3977_p00;
wire   [18:0] mul_ln172_4_fu_2131_p00;
wire   [18:0] mul_ln172_5_fu_2245_p00;
wire   [18:0] mul_ln172_6_fu_2403_p00;
wire   [18:0] mul_ln172_fu_1910_p00;
wire   [18:0] mul_ln194_1_fu_2150_p00;
wire   [18:0] mul_ln194_2_fu_2264_p00;
wire   [18:0] mul_ln194_3_fu_2422_p00;
wire   [18:0] mul_ln194_fu_1939_p00;
wire   [18:0] mul_ln195_1_fu_2169_p00;
wire   [18:0] mul_ln195_2_fu_2283_p00;
wire   [18:0] mul_ln195_3_fu_2441_p00;
wire   [18:0] mul_ln195_fu_2071_p00;
wire   [18:0] mul_ln196_1_fu_2188_p00;
wire   [18:0] mul_ln196_2_fu_2302_p00;
wire   [18:0] mul_ln196_3_fu_2460_p00;
wire   [18:0] mul_ln196_fu_2090_p00;
wire   [18:0] mul_ln197_1_fu_2207_p00;
wire   [18:0] mul_ln197_2_fu_2365_p00;
wire   [18:0] mul_ln197_3_fu_2479_p00;
wire   [18:0] mul_ln197_fu_1978_p00;
wire   [20:0] mul_ln198_fu_2007_p00;
wire   [18:0] mul_ln199_1_fu_2226_p00;
wire   [18:0] mul_ln199_2_fu_2384_p00;
wire   [18:0] mul_ln199_3_fu_2498_p00;
wire   [18:0] mul_ln199_fu_2109_p00;
wire   [2:0] tmp_s_fu_2616_p1;
wire   [2:0] tmp_s_fu_2616_p3;
wire   [2:0] tmp_s_fu_2616_p5;
wire   [2:0] tmp_s_fu_2616_p7;
wire  signed [2:0] tmp_s_fu_2616_p9;
wire   [2:0] tmp_32_fu_2643_p1;
wire  signed [2:0] tmp_32_fu_2643_p3;
wire   [2:0] tmp_32_fu_2643_p5;
wire   [2:0] tmp_32_fu_2643_p7;
wire   [2:0] tmp_32_fu_2643_p9;
wire   [2:0] tmp_33_fu_2670_p1;
wire   [2:0] tmp_33_fu_2670_p3;
wire  signed [2:0] tmp_33_fu_2670_p5;
wire   [2:0] tmp_33_fu_2670_p7;
wire   [2:0] tmp_33_fu_2670_p9;
wire   [2:0] tmp_34_fu_2697_p1;
wire   [2:0] tmp_34_fu_2697_p3;
wire   [2:0] tmp_34_fu_2697_p5;
wire   [2:0] tmp_34_fu_2697_p7;
wire  signed [2:0] tmp_34_fu_2697_p9;
wire  signed [2:0] tmp_35_fu_2724_p1;
wire   [2:0] tmp_35_fu_2724_p3;
wire   [2:0] tmp_35_fu_2724_p5;
wire   [2:0] tmp_35_fu_2724_p7;
wire   [2:0] tmp_35_fu_2724_p9;
wire   [2:0] tmp_36_fu_2751_p1;
wire   [2:0] tmp_36_fu_2751_p3;
wire  signed [2:0] tmp_36_fu_2751_p5;
wire   [2:0] tmp_36_fu_2751_p7;
wire   [2:0] tmp_36_fu_2751_p9;
wire   [2:0] tmp_37_fu_2778_p1;
wire   [2:0] tmp_37_fu_2778_p3;
wire   [2:0] tmp_37_fu_2778_p5;
wire  signed [2:0] tmp_37_fu_2778_p7;
wire   [2:0] tmp_37_fu_2778_p9;
wire  signed [2:0] tmp_38_fu_2805_p1;
wire   [2:0] tmp_38_fu_2805_p3;
wire   [2:0] tmp_38_fu_2805_p5;
wire   [2:0] tmp_38_fu_2805_p7;
wire   [2:0] tmp_38_fu_2805_p9;
wire   [2:0] tmp_39_fu_2940_p1;
wire   [2:0] tmp_39_fu_2940_p3;
wire   [2:0] tmp_39_fu_2940_p5;
wire   [2:0] tmp_39_fu_2940_p7;
wire  signed [2:0] tmp_39_fu_2940_p9;
wire   [2:0] tmp_40_fu_2967_p1;
wire  signed [2:0] tmp_40_fu_2967_p3;
wire   [2:0] tmp_40_fu_2967_p5;
wire   [2:0] tmp_40_fu_2967_p7;
wire   [2:0] tmp_40_fu_2967_p9;
wire   [2:0] tmp_41_fu_2994_p1;
wire   [2:0] tmp_41_fu_2994_p3;
wire  signed [2:0] tmp_41_fu_2994_p5;
wire   [2:0] tmp_41_fu_2994_p7;
wire   [2:0] tmp_41_fu_2994_p9;
wire   [2:0] tmp_42_fu_3021_p1;
wire   [2:0] tmp_42_fu_3021_p3;
wire   [2:0] tmp_42_fu_3021_p5;
wire   [2:0] tmp_42_fu_3021_p7;
wire  signed [2:0] tmp_42_fu_3021_p9;
wire  signed [2:0] tmp_43_fu_3048_p1;
wire   [2:0] tmp_43_fu_3048_p3;
wire   [2:0] tmp_43_fu_3048_p5;
wire   [2:0] tmp_43_fu_3048_p7;
wire   [2:0] tmp_43_fu_3048_p9;
wire   [2:0] tmp_44_fu_3075_p1;
wire   [2:0] tmp_44_fu_3075_p3;
wire  signed [2:0] tmp_44_fu_3075_p5;
wire   [2:0] tmp_44_fu_3075_p7;
wire   [2:0] tmp_44_fu_3075_p9;
wire   [2:0] tmp_45_fu_3102_p1;
wire   [2:0] tmp_45_fu_3102_p3;
wire   [2:0] tmp_45_fu_3102_p5;
wire  signed [2:0] tmp_45_fu_3102_p7;
wire   [2:0] tmp_45_fu_3102_p9;
wire  signed [2:0] tmp_46_fu_3129_p1;
wire   [2:0] tmp_46_fu_3129_p3;
wire   [2:0] tmp_46_fu_3129_p5;
wire   [2:0] tmp_46_fu_3129_p7;
wire   [2:0] tmp_46_fu_3129_p9;
wire   [2:0] tmp_47_fu_3260_p1;
wire   [2:0] tmp_47_fu_3260_p3;
wire   [2:0] tmp_47_fu_3260_p5;
wire   [2:0] tmp_47_fu_3260_p7;
wire  signed [2:0] tmp_47_fu_3260_p9;
wire   [2:0] tmp_48_fu_3287_p1;
wire  signed [2:0] tmp_48_fu_3287_p3;
wire   [2:0] tmp_48_fu_3287_p5;
wire   [2:0] tmp_48_fu_3287_p7;
wire   [2:0] tmp_48_fu_3287_p9;
wire   [2:0] tmp_49_fu_3314_p1;
wire   [2:0] tmp_49_fu_3314_p3;
wire  signed [2:0] tmp_49_fu_3314_p5;
wire   [2:0] tmp_49_fu_3314_p7;
wire   [2:0] tmp_49_fu_3314_p9;
wire   [2:0] tmp_50_fu_3341_p1;
wire   [2:0] tmp_50_fu_3341_p3;
wire   [2:0] tmp_50_fu_3341_p5;
wire   [2:0] tmp_50_fu_3341_p7;
wire  signed [2:0] tmp_50_fu_3341_p9;
wire  signed [2:0] tmp_51_fu_3368_p1;
wire   [2:0] tmp_51_fu_3368_p3;
wire   [2:0] tmp_51_fu_3368_p5;
wire   [2:0] tmp_51_fu_3368_p7;
wire   [2:0] tmp_51_fu_3368_p9;
wire   [2:0] tmp_52_fu_3395_p1;
wire   [2:0] tmp_52_fu_3395_p3;
wire  signed [2:0] tmp_52_fu_3395_p5;
wire   [2:0] tmp_52_fu_3395_p7;
wire   [2:0] tmp_52_fu_3395_p9;
wire   [2:0] tmp_53_fu_3422_p1;
wire   [2:0] tmp_53_fu_3422_p3;
wire   [2:0] tmp_53_fu_3422_p5;
wire  signed [2:0] tmp_53_fu_3422_p7;
wire   [2:0] tmp_53_fu_3422_p9;
wire  signed [2:0] tmp_54_fu_3449_p1;
wire   [2:0] tmp_54_fu_3449_p3;
wire   [2:0] tmp_54_fu_3449_p5;
wire   [2:0] tmp_54_fu_3449_p7;
wire   [2:0] tmp_54_fu_3449_p9;
wire   [2:0] tmp_55_fu_3596_p1;
wire   [2:0] tmp_55_fu_3596_p3;
wire   [2:0] tmp_55_fu_3596_p5;
wire   [2:0] tmp_55_fu_3596_p7;
wire  signed [2:0] tmp_55_fu_3596_p9;
wire   [2:0] tmp_56_fu_3623_p1;
wire  signed [2:0] tmp_56_fu_3623_p3;
wire   [2:0] tmp_56_fu_3623_p5;
wire   [2:0] tmp_56_fu_3623_p7;
wire   [2:0] tmp_56_fu_3623_p9;
wire   [2:0] tmp_57_fu_3650_p1;
wire   [2:0] tmp_57_fu_3650_p3;
wire  signed [2:0] tmp_57_fu_3650_p5;
wire   [2:0] tmp_57_fu_3650_p7;
wire   [2:0] tmp_57_fu_3650_p9;
wire   [2:0] tmp_58_fu_3677_p1;
wire   [2:0] tmp_58_fu_3677_p3;
wire   [2:0] tmp_58_fu_3677_p5;
wire   [2:0] tmp_58_fu_3677_p7;
wire  signed [2:0] tmp_58_fu_3677_p9;
wire  signed [2:0] tmp_59_fu_3704_p1;
wire   [2:0] tmp_59_fu_3704_p3;
wire   [2:0] tmp_59_fu_3704_p5;
wire   [2:0] tmp_59_fu_3704_p7;
wire   [2:0] tmp_59_fu_3704_p9;
wire   [2:0] tmp_60_fu_3731_p1;
wire   [2:0] tmp_60_fu_3731_p3;
wire  signed [2:0] tmp_60_fu_3731_p5;
wire   [2:0] tmp_60_fu_3731_p7;
wire   [2:0] tmp_60_fu_3731_p9;
wire   [2:0] tmp_61_fu_3758_p1;
wire   [2:0] tmp_61_fu_3758_p3;
wire   [2:0] tmp_61_fu_3758_p5;
wire  signed [2:0] tmp_61_fu_3758_p7;
wire   [2:0] tmp_61_fu_3758_p9;
wire  signed [2:0] tmp_62_fu_3785_p1;
wire   [2:0] tmp_62_fu_3785_p3;
wire   [2:0] tmp_62_fu_3785_p5;
wire   [2:0] tmp_62_fu_3785_p7;
wire   [2:0] tmp_62_fu_3785_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_144 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1797_p0),.din1(grp_fu_1797_p1),.ce(1'b1),.dout(grp_fu_1797_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1833_p0),.din1(grp_fu_1833_p1),.ce(1'b1),.dout(grp_fu_1833_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1863_p0),.din1(grp_fu_1863_p1),.ce(1'b1),.dout(grp_fu_1863_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U206(.clk(ap_clk),.reset(ap_rst),.din0(offset_6_reg_4085),.din1(grp_fu_1886_p1),.ce(1'b1),.dout(grp_fu_1886_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U207(.din0(mul_ln172_fu_1910_p0),.din1(mul_ln172_fu_1910_p1),.dout(mul_ln172_fu_1910_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U208(.din0(mul_ln194_fu_1939_p0),.din1(mul_ln194_fu_1939_p1),.dout(mul_ln194_fu_1939_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U209(.din0(mul_ln197_fu_1978_p0),.din1(mul_ln197_fu_1978_p1),.dout(mul_ln197_fu_1978_p2));
fft1D_512_mul_9ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_9ns_12ns_21_1_1_U210(.din0(mul_ln198_fu_2007_p0),.din1(mul_ln198_fu_2007_p1),.dout(mul_ln198_fu_2007_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U211(.din0(mul_ln195_fu_2071_p0),.din1(mul_ln195_fu_2071_p1),.dout(mul_ln195_fu_2071_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U212(.din0(mul_ln196_fu_2090_p0),.din1(mul_ln196_fu_2090_p1),.dout(mul_ln196_fu_2090_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U213(.din0(mul_ln199_fu_2109_p0),.din1(mul_ln199_fu_2109_p1),.dout(mul_ln199_fu_2109_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U214(.din0(mul_ln172_4_fu_2131_p0),.din1(mul_ln172_4_fu_2131_p1),.dout(mul_ln172_4_fu_2131_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U215(.din0(mul_ln194_1_fu_2150_p0),.din1(mul_ln194_1_fu_2150_p1),.dout(mul_ln194_1_fu_2150_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U216(.din0(mul_ln195_1_fu_2169_p0),.din1(mul_ln195_1_fu_2169_p1),.dout(mul_ln195_1_fu_2169_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U217(.din0(mul_ln196_1_fu_2188_p0),.din1(mul_ln196_1_fu_2188_p1),.dout(mul_ln196_1_fu_2188_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U218(.din0(mul_ln197_1_fu_2207_p0),.din1(mul_ln197_1_fu_2207_p1),.dout(mul_ln197_1_fu_2207_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U219(.din0(mul_ln199_1_fu_2226_p0),.din1(mul_ln199_1_fu_2226_p1),.dout(mul_ln199_1_fu_2226_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U220(.din0(mul_ln172_5_fu_2245_p0),.din1(mul_ln172_5_fu_2245_p1),.dout(mul_ln172_5_fu_2245_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U221(.din0(mul_ln194_2_fu_2264_p0),.din1(mul_ln194_2_fu_2264_p1),.dout(mul_ln194_2_fu_2264_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U222(.din0(mul_ln195_2_fu_2283_p0),.din1(mul_ln195_2_fu_2283_p1),.dout(mul_ln195_2_fu_2283_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U223(.din0(mul_ln196_2_fu_2302_p0),.din1(mul_ln196_2_fu_2302_p1),.dout(mul_ln196_2_fu_2302_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U224(.din0(mul_ln197_2_fu_2365_p0),.din1(mul_ln197_2_fu_2365_p1),.dout(mul_ln197_2_fu_2365_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U225(.din0(mul_ln199_2_fu_2384_p0),.din1(mul_ln199_2_fu_2384_p1),.dout(mul_ln199_2_fu_2384_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U226(.din0(mul_ln172_6_fu_2403_p0),.din1(mul_ln172_6_fu_2403_p1),.dout(mul_ln172_6_fu_2403_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U227(.din0(mul_ln194_3_fu_2422_p0),.din1(mul_ln194_3_fu_2422_p1),.dout(mul_ln194_3_fu_2422_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U228(.din0(mul_ln195_3_fu_2441_p0),.din1(mul_ln195_3_fu_2441_p1),.dout(mul_ln195_3_fu_2441_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U229(.din0(mul_ln196_3_fu_2460_p0),.din1(mul_ln196_3_fu_2460_p1),.dout(mul_ln196_3_fu_2460_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U230(.din0(mul_ln197_3_fu_2479_p0),.din1(mul_ln197_3_fu_2479_p1),.dout(mul_ln197_3_fu_2479_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U231(.din0(mul_ln199_3_fu_2498_p0),.din1(mul_ln199_3_fu_2498_p1),.dout(mul_ln199_3_fu_2498_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U232(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_s_fu_2616_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_s_fu_2616_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U233(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_32_fu_2643_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_32_fu_2643_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U234(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_33_fu_2670_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_33_fu_2670_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U235(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_34_fu_2697_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_34_fu_2697_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U236(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_35_fu_2724_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_35_fu_2724_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U237(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_36_fu_2751_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_36_fu_2751_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U238(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_37_fu_2778_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_37_fu_2778_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U239(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_38_fu_2805_p11),.sel(trunc_ln172_reg_4337),.dout(tmp_38_fu_2805_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U240(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_39_fu_2940_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_39_fu_2940_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U241(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_40_fu_2967_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_40_fu_2967_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U242(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_41_fu_2994_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_41_fu_2994_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U243(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_42_fu_3021_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_42_fu_3021_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U244(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_43_fu_3048_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_43_fu_3048_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U245(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_44_fu_3075_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_44_fu_3075_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U246(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_45_fu_3102_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_45_fu_3102_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U247(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_46_fu_3129_p11),.sel(trunc_ln172_4_reg_4554),.dout(tmp_46_fu_3129_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U248(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_47_fu_3260_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_47_fu_3260_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U249(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_48_fu_3287_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_48_fu_3287_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U250(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_49_fu_3314_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_49_fu_3314_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U251(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_50_fu_3341_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_50_fu_3341_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U252(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_51_fu_3368_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_51_fu_3368_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U253(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_52_fu_3395_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_52_fu_3395_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U254(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_53_fu_3422_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_53_fu_3422_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U255(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_54_fu_3449_p11),.sel(trunc_ln172_5_reg_4811),.dout(tmp_54_fu_3449_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U256(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_55_fu_3596_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_55_fu_3596_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U257(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_56_fu_3623_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_56_fu_3623_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U258(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_57_fu_3650_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_57_fu_3650_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U259(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_58_fu_3677_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_58_fu_3677_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U260(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_59_fu_3704_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_59_fu_3704_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U261(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_60_fu_3731_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_60_fu_3731_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U262(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_61_fu_3758_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_61_fu_3758_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U263(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_62_fu_3785_p11),.sel(trunc_ln172_6_reg_5074),.dout(tmp_62_fu_3785_p13));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U264(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3942_p0),.din1(grp_fu_3942_p1),.din2(grp_fu_3942_p2),.ce(1'b1),.dout(grp_fu_3942_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U265(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3951_p0),.din1(grp_fu_3951_p1),.din2(grp_fu_3951_p2),.ce(1'b1),.dout(grp_fu_3951_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U266(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3960_p0),.din1(grp_fu_3960_p1),.din2(grp_fu_3960_p2),.ce(1'b1),.dout(grp_fu_3960_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3969_p0),.din1(grp_fu_3969_p1),.din2(grp_fu_3969_p2),.ce(1'b1),.dout(grp_fu_3969_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3977_p0),.din1(grp_fu_3977_p1),.din2(grp_fu_3977_p2),.ce(1'b1),.dout(grp_fu_3977_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3986_p0),.din1(grp_fu_3986_p1),.din2(grp_fu_3986_p2),.ce(1'b1),.dout(grp_fu_3986_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3994_p0),.din1(grp_fu_3994_p1),.din2(grp_fu_3994_p2),.ce(1'b1),.dout(grp_fu_3994_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_144 <= 7'd0;
    end else if (((tmp_reg_4019 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_2_fu_144 <= add_ln188_fu_1894_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_1_reg_4162 <= add_ln194_1_fu_2053_p2;
        add_ln194_reg_4137 <= add_ln194_fu_2028_p2;
        add_ln195_1_reg_4142 <= add_ln195_1_fu_2033_p2;
        add_ln195_2_reg_4167 <= add_ln195_2_fu_2058_p2;
        add_ln195_reg_4112 <= add_ln195_fu_1955_p2;
        add_ln196_1_reg_4147 <= add_ln196_1_fu_2038_p2;
        add_ln196_2_reg_4172 <= add_ln196_2_fu_2063_p2;
        add_ln196_reg_4117 <= add_ln196_fu_1960_p2;
        add_ln197_reg_4152 <= add_ln197_fu_2043_p2;
        add_ln199_1_reg_4157 <= add_ln199_1_fu_2048_p2;
        add_ln199_reg_4132 <= add_ln199_fu_2023_p2;
        hi_reg_4023 <= {{ap_sig_allocacmp_tid[5:3]}};
        offset_reg_4045[3 : 0] <= offset_fu_1785_p5[3 : 0];
offset_reg_4045[8 : 6] <= offset_fu_1785_p5[8 : 6];
        tid_reg_4009 <= ap_sig_allocacmp_tid;
        tid_reg_4009_pp0_iter1_reg <= tid_reg_4009;
        tid_reg_4009_pp0_iter2_reg <= tid_reg_4009_pp0_iter1_reg;
        tmp_131_reg_4038 <= ap_sig_allocacmp_tid[32'd2];
        tmp_132_reg_4102 <= {{mul_ln172_fu_1910_p2[18:12]}};
        tmp_133_reg_4107 <= {{mul_ln194_fu_1939_p2[18:12]}};
        tmp_136_reg_4122 <= {{mul_ln197_fu_1978_p2[18:12]}};
        tmp_138_reg_4127 <= {{mul_ln198_fu_2007_p2[20:13]}};
        tmp_47_reg_5086 <= tmp_47_fu_3260_p13;
        tmp_48_reg_5091 <= tmp_48_fu_3287_p13;
        tmp_49_reg_5096 <= tmp_49_fu_3314_p13;
        tmp_50_reg_5101 <= tmp_50_fu_3341_p13;
        tmp_51_reg_5106 <= tmp_51_fu_3368_p13;
        tmp_52_reg_5111 <= tmp_52_fu_3395_p13;
        tmp_53_reg_5116 <= tmp_53_fu_3422_p13;
        tmp_54_reg_5121 <= tmp_54_fu_3449_p13;
        tmp_reg_4019 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_4019_pp0_iter1_reg <= tmp_reg_4019;
        trunc_ln191_reg_4031 <= trunc_ln191_fu_1773_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_2_reg_4257 <= add_ln194_2_fu_2328_p2;
        add_ln195_3_reg_4262 <= add_ln195_3_fu_2333_p2;
        add_ln196_3_reg_4267 <= add_ln196_3_fu_2338_p2;
        add_ln197_1_reg_4247 <= add_ln197_1_fu_2318_p2;
        add_ln197_2_reg_4272 <= add_ln197_2_fu_2343_p2;
        add_ln199_2_reg_4252 <= add_ln199_2_fu_2323_p2;
        add_ln199_3_reg_4277 <= add_ln199_3_fu_2348_p2;
        offset_4_reg_4061 <= offset_4_fu_1827_p2;
        tmp_134_reg_4177 <= {{mul_ln195_fu_2071_p2[18:12]}};
        tmp_135_reg_4182 <= {{mul_ln196_fu_2090_p2[18:12]}};
        tmp_139_reg_4187 <= {{mul_ln199_fu_2109_p2[18:12]}};
        tmp_141_reg_4197 <= {{mul_ln172_4_fu_2131_p2[18:12]}};
        tmp_142_reg_4202 <= {{mul_ln194_1_fu_2150_p2[18:12]}};
        tmp_143_reg_4207 <= {{mul_ln195_1_fu_2169_p2[18:12]}};
        tmp_144_reg_4212 <= {{mul_ln196_1_fu_2188_p2[18:12]}};
        tmp_145_reg_4217 <= {{mul_ln197_1_fu_2207_p2[18:12]}};
        tmp_147_reg_4222 <= {{mul_ln199_1_fu_2226_p2[18:12]}};
        tmp_150_reg_4227 <= {{mul_ln172_5_fu_2245_p2[18:12]}};
        tmp_151_reg_4232 <= {{mul_ln194_2_fu_2264_p2[18:12]}};
        tmp_152_reg_4237 <= {{mul_ln195_2_fu_2283_p2[18:12]}};
        tmp_153_reg_4242 <= {{mul_ln196_2_fu_2302_p2[18:12]}};
        tmp_165_reg_4282 <= {{tmp_165_fu_2353_p1[20:13]}};
        tmp_55_reg_5344 <= tmp_55_fu_3596_p13;
        tmp_56_reg_5349 <= tmp_56_fu_3623_p13;
        tmp_57_reg_5354 <= tmp_57_fu_3650_p13;
        tmp_58_reg_5359 <= tmp_58_fu_3677_p13;
        tmp_59_reg_5364 <= tmp_59_fu_3704_p13;
        tmp_60_reg_5369 <= tmp_60_fu_3731_p13;
        tmp_61_reg_5374 <= tmp_61_fu_3758_p13;
        tmp_62_reg_5379 <= tmp_62_fu_3785_p13;
        tmp_64_reg_5326 <= {{tid_reg_4009_pp0_iter2_reg[5:1]}};
        tmp_65_reg_5332 <= {{tid_reg_4009_pp0_iter2_reg[5:2]}};
        zext_ln114_reg_4055[2 : 0] <= zext_ln114_fu_1803_p1[2 : 0];
        zext_ln172_24_reg_4192[8 : 0] <= zext_ln172_24_fu_2125_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_5_reg_4073 <= offset_5_fu_1858_p2;
        offset_5_reg_4073_pp0_iter1_reg <= offset_5_reg_4073;
        offset_6_reg_4085 <= offset_6_fu_1881_p2;
        tmp_154_reg_4287 <= {{mul_ln197_2_fu_2365_p2[18:12]}};
        tmp_156_reg_4292 <= {{mul_ln199_2_fu_2384_p2[18:12]}};
        tmp_158_reg_4297 <= {{mul_ln172_6_fu_2403_p2[18:12]}};
        tmp_159_reg_4302 <= {{mul_ln194_3_fu_2422_p2[18:12]}};
        tmp_160_reg_4307 <= {{mul_ln195_3_fu_2441_p2[18:12]}};
        tmp_161_reg_4312 <= {{mul_ln196_3_fu_2460_p2[18:12]}};
        tmp_162_reg_4317 <= {{mul_ln197_3_fu_2479_p2[18:12]}};
        tmp_164_reg_4322 <= {{mul_ln199_3_fu_2498_p2[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_140_reg_4327 <= {{tmp_140_fu_2514_p1[20:13]}};
        zext_ln172_26_reg_4332[8 : 0] <= zext_ln172_26_fu_2523_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_146_reg_4349 <= {{tmp_146_fu_2530_p1[20:13]}};
        trunc_ln172_reg_4337 <= trunc_ln172_fu_2526_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_148_reg_4566 <= {{tmp_148_fu_2607_p1[20:13]}};
        trunc_ln172_4_reg_4554 <= trunc_ln172_4_fu_2603_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_155_reg_4823 <= {{tmp_155_fu_2900_p1[20:13]}};
        tmp_32_reg_4576 <= tmp_32_fu_2643_p13;
        tmp_33_reg_4581 <= tmp_33_fu_2670_p13;
        tmp_34_reg_4586 <= tmp_34_fu_2697_p13;
        tmp_35_reg_4591 <= tmp_35_fu_2724_p13;
        tmp_36_reg_4596 <= tmp_36_fu_2751_p13;
        tmp_37_reg_4601 <= tmp_37_fu_2778_p13;
        tmp_38_reg_4606 <= tmp_38_fu_2805_p13;
        tmp_s_reg_4571 <= tmp_s_fu_2616_p13;
        trunc_ln172_5_reg_4811 <= trunc_ln172_5_fu_2896_p1;
        zext_ln172_28_reg_4097[8 : 0] <= zext_ln172_28_fu_1891_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_39_reg_4834 <= tmp_39_fu_2940_p13;
        tmp_40_reg_4839 <= tmp_40_fu_2967_p13;
        tmp_41_reg_4844 <= tmp_41_fu_2994_p13;
        tmp_42_reg_4849 <= tmp_42_fu_3021_p13;
        tmp_43_reg_4854 <= tmp_43_fu_3048_p13;
        tmp_44_reg_4859 <= tmp_44_fu_3075_p13;
        tmp_45_reg_4864 <= tmp_45_fu_3102_p13;
        tmp_46_reg_4869 <= tmp_46_fu_3129_p13;
        trunc_ln172_6_reg_5074 <= trunc_ln172_6_fu_3230_p1;
        trunc_ln193_reg_4828 <= trunc_ln193_fu_2909_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln198_7_fu_3936_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln194_7_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln198_6_fu_3884_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln194_6_fu_3858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln198_5_fu_3832_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln194_5_fu_3581_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln198_4_fu_3254_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln194_4_fu_2934_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln197_7_fu_3923_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln193_3_fu_3897_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln197_6_fu_3871_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln193_2_fu_3845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln197_5_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln193_1_fu_3567_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln197_4_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln193_fu_2920_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d0_local = tmp_62_reg_5379;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d0_local = tmp_58_reg_5359;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d0_local = tmp_54_reg_5121;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_50_reg_5101;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_46_reg_4869;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_42_reg_4849;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_38_reg_4606;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d0_local = tmp_34_reg_4586;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d1_local = tmp_61_reg_5374;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d1_local = tmp_57_reg_5354;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d1_local = tmp_53_reg_5116;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_49_reg_5096;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_45_reg_4864;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_41_reg_4844;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_37_reg_4601;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d1_local = tmp_33_reg_4581;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln198_7_fu_3936_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln194_7_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln198_6_fu_3884_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln194_6_fu_3858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln198_5_fu_3832_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln194_5_fu_3581_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln198_4_fu_3254_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln194_4_fu_2934_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln197_7_fu_3923_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln193_3_fu_3897_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln197_6_fu_3871_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln193_2_fu_3845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln197_5_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln193_1_fu_3567_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln197_4_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln193_fu_2920_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d0_local = tmp_60_reg_5369;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d0_local = tmp_56_reg_5349;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d0_local = tmp_52_reg_5111;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_48_reg_5091;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_44_reg_4859;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_40_reg_4839;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_36_reg_4596;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d0_local = tmp_32_reg_4576;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d1_local = tmp_59_reg_5364;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d1_local = tmp_55_reg_5344;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d1_local = tmp_51_reg_5106;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_47_reg_5086;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_43_reg_4854;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_39_reg_4834;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_35_reg_4591;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d1_local = tmp_s_reg_4571;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_4019 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_4019_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_144;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln200_3_fu_3542_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln199_3_fu_3534_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln198_3_fu_3525_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln196_3_fu_3500_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln194_3_fu_3484_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln197_2_fu_3188_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln195_2_fu_3172_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln172_6_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln200_1_fu_2888_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln199_1_fu_2880_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln198_1_fu_2872_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln196_1_fu_2856_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln194_1_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln197_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln195_fu_2555_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln172_4_fu_2539_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln197_3_fu_3508_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln195_3_fu_3492_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_7_fu_3476_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln200_2_fu_3221_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln199_2_fu_3204_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln198_2_fu_3196_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln196_2_fu_3180_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln194_2_fu_3164_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln197_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln195_1_fu_2848_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln172_5_fu_2832_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln200_fu_2595_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln199_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln198_fu_2579_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln196_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln194_fu_2547_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln200_3_fu_3542_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln199_3_fu_3534_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln198_3_fu_3525_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln196_3_fu_3500_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln194_3_fu_3484_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln197_2_fu_3188_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln195_2_fu_3172_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln172_6_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln200_1_fu_2888_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln199_1_fu_2880_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln198_1_fu_2872_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln196_1_fu_2856_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln194_1_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln197_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln195_fu_2555_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln172_4_fu_2539_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln197_3_fu_3508_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln195_3_fu_3492_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_7_fu_3476_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln200_2_fu_3221_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln199_2_fu_3204_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln198_2_fu_3196_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln196_2_fu_3180_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln194_2_fu_3164_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln197_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln195_1_fu_2848_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln172_5_fu_2832_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln200_fu_2595_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln199_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln198_fu_2579_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln196_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln194_fu_2547_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln200_3_fu_3542_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln199_3_fu_3534_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln198_3_fu_3525_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln196_3_fu_3500_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln194_3_fu_3484_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln197_2_fu_3188_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln195_2_fu_3172_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln172_6_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln200_1_fu_2888_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln199_1_fu_2880_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln198_1_fu_2872_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln196_1_fu_2856_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln194_1_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln197_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln195_fu_2555_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln172_4_fu_2539_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln197_3_fu_3508_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln195_3_fu_3492_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_7_fu_3476_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln200_2_fu_3221_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln199_2_fu_3204_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln198_2_fu_3196_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln196_2_fu_3180_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln194_2_fu_3164_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln197_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln195_1_fu_2848_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln172_5_fu_2832_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln200_fu_2595_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln199_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln198_fu_2579_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln196_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln194_fu_2547_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln200_3_fu_3542_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln199_3_fu_3534_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln198_3_fu_3525_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln196_3_fu_3500_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln194_3_fu_3484_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln197_2_fu_3188_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln195_2_fu_3172_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln172_6_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln200_1_fu_2888_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln199_1_fu_2880_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln198_1_fu_2872_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln196_1_fu_2856_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln194_1_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln197_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln195_fu_2555_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln172_4_fu_2539_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln197_3_fu_3508_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln195_3_fu_3492_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_7_fu_3476_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln200_2_fu_3221_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln199_2_fu_3204_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln198_2_fu_3196_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln196_2_fu_3180_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln194_2_fu_3164_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln197_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln195_1_fu_2848_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln172_5_fu_2832_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln200_fu_2595_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln199_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln198_fu_2579_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln196_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln194_fu_2547_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln200_3_fu_3542_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln199_3_fu_3534_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln198_3_fu_3525_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln196_3_fu_3500_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln194_3_fu_3484_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln197_2_fu_3188_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln195_2_fu_3172_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln172_6_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln200_1_fu_2888_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln199_1_fu_2880_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln198_1_fu_2872_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln196_1_fu_2856_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln194_1_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln197_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln195_fu_2555_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln172_4_fu_2539_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln197_3_fu_3508_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln195_3_fu_3492_p1;
    end else if (((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_7_fu_3476_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln200_2_fu_3221_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln199_2_fu_3204_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln198_2_fu_3196_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln196_2_fu_3180_p1;
    end else if (((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln194_2_fu_3164_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln197_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln195_1_fu_2848_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln172_5_fu_2832_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln200_fu_2595_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln199_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln198_fu_2579_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln196_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln194_fu_2547_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5074 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5074 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_4811 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_5_reg_4811== 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4337 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554== 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_4_reg_4554 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
assign add_ln188_fu_1894_p2 = (tid_reg_4009 + 7'd4);
assign add_ln194_1_fu_2053_p2 = (offset_5_reg_4073 + 9'd32);
assign add_ln194_2_fu_2328_p2 = (offset_6_reg_4085 + 9'd32);
assign add_ln194_fu_2028_p2 = (offset_4_reg_4061 + 9'd32);
assign add_ln195_1_fu_2033_p2 = (offset_4_reg_4061 + 9'd8);
assign add_ln195_2_fu_2058_p2 = (offset_5_reg_4073 + 9'd8);
assign add_ln195_3_fu_2333_p2 = (offset_6_reg_4085 + 9'd8);
assign add_ln195_fu_1955_p2 = (offset_reg_4045 + 9'd8);
assign add_ln196_1_fu_2038_p2 = (offset_4_reg_4061 + 9'd40);
assign add_ln196_2_fu_2063_p2 = (offset_5_reg_4073 + 9'd40);
assign add_ln196_3_fu_2338_p2 = (offset_6_reg_4085 + 9'd40);
assign add_ln196_fu_1960_p2 = (offset_reg_4045 + 9'd40);
assign add_ln197_1_fu_2318_p2 = (offset_5_reg_4073 + 9'd16);
assign add_ln197_2_fu_2343_p2 = (offset_6_reg_4085 + 9'd16);
assign add_ln197_fu_2043_p2 = (offset_4_reg_4061 + 9'd16);
assign add_ln199_1_fu_2048_p2 = (offset_4_reg_4061 + 9'd24);
assign add_ln199_2_fu_2323_p2 = (offset_5_reg_4073 + 9'd24);
assign add_ln199_3_fu_2348_p2 = (offset_6_reg_4085 + 9'd24);
assign add_ln199_fu_2023_p2 = (offset_reg_4045 + 9'd24);
assign add_ln1_fu_1965_p5 = {{{{trunc_ln191_reg_4031}, {2'd1}}, {tmp_131_reg_4038}}, {hi_reg_4023}};
assign add_ln_fu_1926_p5 = {{{{trunc_ln191_reg_4031}, {2'd2}}, {tmp_131_reg_4038}}, {hi_reg_4023}};
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_1797_p0 = {{{{trunc_ln191_fu_1773_p1}, {2'd0}}, {tmp_131_fu_1777_p3}}, {hi_fu_1763_p4}};
assign grp_fu_1797_p1 = 9'd5;
assign grp_fu_1833_p0 = (mul_ln191_1_fu_1815_p5 + zext_ln114_fu_1803_p1);
assign grp_fu_1833_p1 = 9'd5;
assign grp_fu_1863_p0 = (mul_ln191_2_fu_1846_p5 + zext_ln114_reg_4055);
assign grp_fu_1863_p1 = 9'd5;
assign grp_fu_1886_p1 = 9'd5;
assign grp_fu_3942_p0 = grp_fu_3942_p00;
assign grp_fu_3942_p00 = offset_6_reg_4085;
assign grp_fu_3942_p1 = 10'd56;
assign grp_fu_3942_p2 = 21'd1639;
assign grp_fu_3951_p0 = grp_fu_3951_p00;
assign grp_fu_3951_p00 = offset_reg_4045;
assign grp_fu_3951_p1 = 10'd56;
assign grp_fu_3951_p2 = 21'd1639;
assign grp_fu_3960_p0 = grp_fu_3960_p00;
assign grp_fu_3960_p00 = offset_4_reg_4061;
assign grp_fu_3960_p1 = 10'd48;
assign grp_fu_3960_p2 = 21'd1639;
assign grp_fu_3969_p0 = zext_ln172_24_reg_4192;
assign grp_fu_3969_p1 = 10'd56;
assign grp_fu_3969_p2 = 21'd1639;
assign grp_fu_3977_p0 = grp_fu_3977_p00;
assign grp_fu_3977_p00 = offset_5_reg_4073_pp0_iter1_reg;
assign grp_fu_3977_p1 = 10'd48;
assign grp_fu_3977_p2 = 21'd1639;
assign grp_fu_3986_p0 = zext_ln172_26_reg_4332;
assign grp_fu_3986_p1 = 10'd56;
assign grp_fu_3986_p2 = 21'd1639;
assign grp_fu_3994_p0 = zext_ln172_28_reg_4097;
assign grp_fu_3994_p1 = 10'd48;
assign grp_fu_3994_p2 = 21'd1639;
assign hi_fu_1763_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln172_4_fu_2131_p0 = mul_ln172_4_fu_2131_p00;
assign mul_ln172_4_fu_2131_p00 = offset_4_reg_4061;
assign mul_ln172_4_fu_2131_p1 = 19'd820;
assign mul_ln172_5_fu_2245_p0 = mul_ln172_5_fu_2245_p00;
assign mul_ln172_5_fu_2245_p00 = offset_5_reg_4073;
assign mul_ln172_5_fu_2245_p1 = 19'd820;
assign mul_ln172_6_fu_2403_p0 = mul_ln172_6_fu_2403_p00;
assign mul_ln172_6_fu_2403_p00 = offset_6_reg_4085;
assign mul_ln172_6_fu_2403_p1 = 19'd820;
assign mul_ln172_fu_1910_p0 = mul_ln172_fu_1910_p00;
assign mul_ln172_fu_1910_p00 = offset_reg_4045;
assign mul_ln172_fu_1910_p1 = 19'd820;
assign mul_ln191_1_fu_1815_p5 = {{{{tmp_63_fu_1806_p4}, {3'd4}}, {tmp_63_fu_1806_p4}}, {2'd2}};
assign mul_ln191_2_fu_1846_p5 = {{{{tmp_149_fu_1839_p3}, {4'd8}}, {tmp_149_fu_1839_p3}}, {3'd4}};
assign mul_ln191_3_fu_1869_p5 = {{{{tmp_149_fu_1839_p3}, {4'd12}}, {tmp_149_fu_1839_p3}}, {3'd6}};
assign mul_ln194_1_fu_2150_p0 = mul_ln194_1_fu_2150_p00;
assign mul_ln194_1_fu_2150_p00 = add_ln194_reg_4137;
assign mul_ln194_1_fu_2150_p1 = 19'd820;
assign mul_ln194_2_fu_2264_p0 = mul_ln194_2_fu_2264_p00;
assign mul_ln194_2_fu_2264_p00 = add_ln194_1_reg_4162;
assign mul_ln194_2_fu_2264_p1 = 19'd820;
assign mul_ln194_3_fu_2422_p0 = mul_ln194_3_fu_2422_p00;
assign mul_ln194_3_fu_2422_p00 = add_ln194_2_reg_4257;
assign mul_ln194_3_fu_2422_p1 = 19'd820;
assign mul_ln194_fu_1939_p0 = mul_ln194_fu_1939_p00;
assign mul_ln194_fu_1939_p00 = add_ln_fu_1926_p5;
assign mul_ln194_fu_1939_p1 = 19'd820;
assign mul_ln195_1_fu_2169_p0 = mul_ln195_1_fu_2169_p00;
assign mul_ln195_1_fu_2169_p00 = add_ln195_1_reg_4142;
assign mul_ln195_1_fu_2169_p1 = 19'd820;
assign mul_ln195_2_fu_2283_p0 = mul_ln195_2_fu_2283_p00;
assign mul_ln195_2_fu_2283_p00 = add_ln195_2_reg_4167;
assign mul_ln195_2_fu_2283_p1 = 19'd820;
assign mul_ln195_3_fu_2441_p0 = mul_ln195_3_fu_2441_p00;
assign mul_ln195_3_fu_2441_p00 = add_ln195_3_reg_4262;
assign mul_ln195_3_fu_2441_p1 = 19'd820;
assign mul_ln195_fu_2071_p0 = mul_ln195_fu_2071_p00;
assign mul_ln195_fu_2071_p00 = add_ln195_reg_4112;
assign mul_ln195_fu_2071_p1 = 19'd820;
assign mul_ln196_1_fu_2188_p0 = mul_ln196_1_fu_2188_p00;
assign mul_ln196_1_fu_2188_p00 = add_ln196_1_reg_4147;
assign mul_ln196_1_fu_2188_p1 = 19'd820;
assign mul_ln196_2_fu_2302_p0 = mul_ln196_2_fu_2302_p00;
assign mul_ln196_2_fu_2302_p00 = add_ln196_2_reg_4172;
assign mul_ln196_2_fu_2302_p1 = 19'd820;
assign mul_ln196_3_fu_2460_p0 = mul_ln196_3_fu_2460_p00;
assign mul_ln196_3_fu_2460_p00 = add_ln196_3_reg_4267;
assign mul_ln196_3_fu_2460_p1 = 19'd820;
assign mul_ln196_fu_2090_p0 = mul_ln196_fu_2090_p00;
assign mul_ln196_fu_2090_p00 = add_ln196_reg_4117;
assign mul_ln196_fu_2090_p1 = 19'd820;
assign mul_ln197_1_fu_2207_p0 = mul_ln197_1_fu_2207_p00;
assign mul_ln197_1_fu_2207_p00 = add_ln197_reg_4152;
assign mul_ln197_1_fu_2207_p1 = 19'd820;
assign mul_ln197_2_fu_2365_p0 = mul_ln197_2_fu_2365_p00;
assign mul_ln197_2_fu_2365_p00 = add_ln197_1_reg_4247;
assign mul_ln197_2_fu_2365_p1 = 19'd820;
assign mul_ln197_3_fu_2479_p0 = mul_ln197_3_fu_2479_p00;
assign mul_ln197_3_fu_2479_p00 = add_ln197_2_reg_4272;
assign mul_ln197_3_fu_2479_p1 = 19'd820;
assign mul_ln197_fu_1978_p0 = mul_ln197_fu_1978_p00;
assign mul_ln197_fu_1978_p00 = add_ln1_fu_1965_p5;
assign mul_ln197_fu_1978_p1 = 19'd820;
assign mul_ln198_fu_2007_p0 = mul_ln198_fu_2007_p00;
assign mul_ln198_fu_2007_p00 = tmp_137_fu_1994_p5;
assign mul_ln198_fu_2007_p1 = 21'd1639;
assign mul_ln199_1_fu_2226_p0 = mul_ln199_1_fu_2226_p00;
assign mul_ln199_1_fu_2226_p00 = add_ln199_1_reg_4157;
assign mul_ln199_1_fu_2226_p1 = 19'd820;
assign mul_ln199_2_fu_2384_p0 = mul_ln199_2_fu_2384_p00;
assign mul_ln199_2_fu_2384_p00 = add_ln199_2_reg_4252;
assign mul_ln199_2_fu_2384_p1 = 19'd820;
assign mul_ln199_3_fu_2498_p0 = mul_ln199_3_fu_2498_p00;
assign mul_ln199_3_fu_2498_p00 = add_ln199_3_reg_4277;
assign mul_ln199_3_fu_2498_p1 = 19'd820;
assign mul_ln199_fu_2109_p0 = mul_ln199_fu_2109_p00;
assign mul_ln199_fu_2109_p00 = add_ln199_reg_4132;
assign mul_ln199_fu_2109_p1 = 19'd820;
assign offset_4_fu_1827_p2 = (mul_ln191_1_fu_1815_p5 + zext_ln114_fu_1803_p1);
assign offset_5_fu_1858_p2 = (mul_ln191_2_fu_1846_p5 + zext_ln114_reg_4055);
assign offset_6_fu_1881_p2 = (mul_ln191_3_fu_1869_p5 + zext_ln114_reg_4055);
assign offset_fu_1785_p5 = {{{{trunc_ln191_fu_1773_p1}, {2'd0}}, {tmp_131_fu_1777_p3}}, {hi_fu_1763_p4}};
assign or_ln13_fu_2926_p3 = {{trunc_ln193_fu_2909_p1}, {2'd2}};
assign or_ln14_fu_3234_p3 = {{trunc_ln193_reg_4828}, {2'd1}};
assign or_ln15_fu_3247_p3 = {{trunc_ln193_reg_4828}, {2'd3}};
assign or_ln17_fu_3838_p3 = {{tmp_65_reg_5332}, {4'd8}};
assign or_ln194_1_fu_3573_p3 = {{tmp_64_fu_3550_p4}, {3'd6}};
assign or_ln194_2_fu_3851_p3 = {{tmp_65_reg_5332}, {4'd10}};
assign or_ln194_3_fu_3903_p3 = {{tmp_65_reg_5332}, {4'd14}};
assign or_ln197_1_fu_3812_p3 = {{tmp_64_reg_5326}, {3'd5}};
assign or_ln197_2_fu_3864_p3 = {{tmp_65_reg_5332}, {4'd9}};
assign or_ln197_3_fu_3916_p3 = {{tmp_65_reg_5332}, {4'd13}};
assign or_ln198_1_fu_3825_p3 = {{tmp_64_reg_5326}, {3'd7}};
assign or_ln198_2_fu_3877_p3 = {{tmp_65_reg_5332}, {4'd11}};
assign or_ln198_3_fu_3929_p3 = {{tmp_65_reg_5332}, {4'd15}};
assign shl_ln193_1_fu_3559_p3 = {{tmp_64_fu_3550_p4}, {3'd4}};
assign shl_ln193_2_fu_3890_p3 = {{tmp_65_reg_5332}, {4'd12}};
assign shl_ln2_fu_2912_p3 = {{trunc_ln193_fu_2909_p1}, {2'd0}};
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_131_fu_1777_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_137_fu_1994_p5 = {{{{trunc_ln191_reg_4031}, {2'd3}}, {tmp_131_reg_4038}}, {hi_reg_4023}};
assign tmp_140_fu_2514_p1 = grp_fu_3951_p3;
assign tmp_146_fu_2530_p1 = grp_fu_3960_p3;
assign tmp_148_fu_2607_p1 = grp_fu_3969_p3;
assign tmp_149_fu_1839_p3 = tid_reg_4009[32'd2];
assign tmp_155_fu_2900_p1 = grp_fu_3977_p3;
assign tmp_157_fu_3212_p1 = grp_fu_3986_p3;
assign tmp_157_fu_3212_p4 = {{tmp_157_fu_3212_p1[20:13]}};
assign tmp_163_fu_3516_p1 = grp_fu_3994_p3;
assign tmp_163_fu_3516_p4 = {{tmp_163_fu_3516_p1[20:13]}};
assign tmp_165_fu_2353_p1 = grp_fu_3942_p3;
assign tmp_32_fu_2643_p11 = 'bx;
assign tmp_33_fu_2670_p11 = 'bx;
assign tmp_34_fu_2697_p11 = 'bx;
assign tmp_35_fu_2724_p11 = 'bx;
assign tmp_36_fu_2751_p11 = 'bx;
assign tmp_37_fu_2778_p11 = 'bx;
assign tmp_38_fu_2805_p11 = 'bx;
assign tmp_39_fu_2940_p11 = 'bx;
assign tmp_40_fu_2967_p11 = 'bx;
assign tmp_41_fu_2994_p11 = 'bx;
assign tmp_42_fu_3021_p11 = 'bx;
assign tmp_43_fu_3048_p11 = 'bx;
assign tmp_44_fu_3075_p11 = 'bx;
assign tmp_45_fu_3102_p11 = 'bx;
assign tmp_46_fu_3129_p11 = 'bx;
assign tmp_47_fu_3260_p11 = 'bx;
assign tmp_48_fu_3287_p11 = 'bx;
assign tmp_49_fu_3314_p11 = 'bx;
assign tmp_50_fu_3341_p11 = 'bx;
assign tmp_51_fu_3368_p11 = 'bx;
assign tmp_52_fu_3395_p11 = 'bx;
assign tmp_53_fu_3422_p11 = 'bx;
assign tmp_54_fu_3449_p11 = 'bx;
assign tmp_55_fu_3596_p11 = 'bx;
assign tmp_56_fu_3623_p11 = 'bx;
assign tmp_57_fu_3650_p11 = 'bx;
assign tmp_58_fu_3677_p11 = 'bx;
assign tmp_59_fu_3704_p11 = 'bx;
assign tmp_60_fu_3731_p11 = 'bx;
assign tmp_61_fu_3758_p11 = 'bx;
assign tmp_62_fu_3785_p11 = 'bx;
assign tmp_63_fu_1806_p4 = {{tid_reg_4009[2:1]}};
assign tmp_64_fu_3550_p4 = {{tid_reg_4009_pp0_iter2_reg[5:1]}};
assign tmp_s_fu_2616_p11 = 'bx;
assign trunc_ln172_4_fu_2603_p1 = grp_fu_1833_p2[2:0];
assign trunc_ln172_5_fu_2896_p1 = grp_fu_1863_p2[2:0];
assign trunc_ln172_6_fu_3230_p1 = grp_fu_1886_p2[2:0];
assign trunc_ln172_fu_2526_p1 = grp_fu_1797_p2[2:0];
assign trunc_ln191_fu_1773_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_2909_p1 = tid_reg_4009_pp0_iter1_reg[5:0];
assign zext_ln114_fu_1803_p1 = hi_reg_4023;
assign zext_ln172_24_fu_2125_p1 = offset_4_reg_4061;
assign zext_ln172_26_fu_2523_p1 = offset_5_reg_4073_pp0_iter1_reg;
assign zext_ln172_28_fu_1891_p1 = offset_6_reg_4085;
assign zext_ln172_4_fu_2539_p1 = tmp_132_reg_4102;
assign zext_ln172_5_fu_2832_p1 = tmp_141_reg_4197;
assign zext_ln172_6_fu_3156_p1 = tmp_150_reg_4227;
assign zext_ln172_7_fu_3476_p1 = tmp_158_reg_4297;
assign zext_ln193_1_fu_3567_p1 = shl_ln193_1_fu_3559_p3;
assign zext_ln193_2_fu_3845_p1 = or_ln17_fu_3838_p3;
assign zext_ln193_3_fu_3897_p1 = shl_ln193_2_fu_3890_p3;
assign zext_ln193_fu_2920_p1 = shl_ln2_fu_2912_p3;
assign zext_ln194_1_fu_2840_p1 = tmp_142_reg_4202;
assign zext_ln194_2_fu_3164_p1 = tmp_151_reg_4232;
assign zext_ln194_3_fu_3484_p1 = tmp_159_reg_4302;
assign zext_ln194_4_fu_2934_p1 = or_ln13_fu_2926_p3;
assign zext_ln194_5_fu_3581_p1 = or_ln194_1_fu_3573_p3;
assign zext_ln194_6_fu_3858_p1 = or_ln194_2_fu_3851_p3;
assign zext_ln194_7_fu_3910_p1 = or_ln194_3_fu_3903_p3;
assign zext_ln194_fu_2547_p1 = tmp_133_reg_4107;
assign zext_ln195_1_fu_2848_p1 = tmp_143_reg_4207;
assign zext_ln195_2_fu_3172_p1 = tmp_152_reg_4237;
assign zext_ln195_3_fu_3492_p1 = tmp_160_reg_4307;
assign zext_ln195_fu_2555_p1 = tmp_134_reg_4177;
assign zext_ln196_1_fu_2856_p1 = tmp_144_reg_4212;
assign zext_ln196_2_fu_3180_p1 = tmp_153_reg_4242;
assign zext_ln196_3_fu_3500_p1 = tmp_161_reg_4312;
assign zext_ln196_fu_2563_p1 = tmp_135_reg_4182;
assign zext_ln197_1_fu_2864_p1 = tmp_145_reg_4217;
assign zext_ln197_2_fu_3188_p1 = tmp_154_reg_4287;
assign zext_ln197_3_fu_3508_p1 = tmp_162_reg_4317;
assign zext_ln197_4_fu_3241_p1 = or_ln14_fu_3234_p3;
assign zext_ln197_5_fu_3819_p1 = or_ln197_1_fu_3812_p3;
assign zext_ln197_6_fu_3871_p1 = or_ln197_2_fu_3864_p3;
assign zext_ln197_7_fu_3923_p1 = or_ln197_3_fu_3916_p3;
assign zext_ln197_fu_2571_p1 = tmp_136_reg_4122;
assign zext_ln198_1_fu_2872_p1 = tmp_146_reg_4349;
assign zext_ln198_2_fu_3196_p1 = tmp_155_reg_4823;
assign zext_ln198_3_fu_3525_p1 = tmp_163_fu_3516_p4;
assign zext_ln198_4_fu_3254_p1 = or_ln15_fu_3247_p3;
assign zext_ln198_5_fu_3832_p1 = or_ln198_1_fu_3825_p3;
assign zext_ln198_6_fu_3884_p1 = or_ln198_2_fu_3877_p3;
assign zext_ln198_7_fu_3936_p1 = or_ln198_3_fu_3929_p3;
assign zext_ln198_fu_2579_p1 = tmp_138_reg_4127;
assign zext_ln199_1_fu_2880_p1 = tmp_147_reg_4222;
assign zext_ln199_2_fu_3204_p1 = tmp_156_reg_4292;
assign zext_ln199_3_fu_3534_p1 = tmp_164_reg_4322;
assign zext_ln199_fu_2587_p1 = tmp_139_reg_4187;
assign zext_ln200_1_fu_2888_p1 = tmp_148_reg_4566;
assign zext_ln200_2_fu_3221_p1 = tmp_157_fu_3212_p4;
assign zext_ln200_3_fu_3542_p1 = tmp_165_reg_4282;
assign zext_ln200_fu_2595_p1 = tmp_140_reg_4327;
always @ (posedge ap_clk) begin
    offset_reg_4045[5:4] <= 2'b00;
    zext_ln114_reg_4055[8:3] <= 6'b000000;
    zext_ln172_28_reg_4097[9] <= 1'b0;
    zext_ln172_24_reg_4192[9] <= 1'b0;
    zext_ln172_26_reg_4332[9] <= 1'b0;
end
endmodule 