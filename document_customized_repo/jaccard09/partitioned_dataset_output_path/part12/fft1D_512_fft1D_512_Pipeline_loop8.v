
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0);  
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
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
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
reg   [0:0] tmp_reg_5434;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_5423;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_5423_pp0_iter1_reg;
reg   [6:0] tid_2_reg_5423_pp0_iter2_reg;
reg   [6:0] tid_2_reg_5423_pp0_iter3_reg;
reg   [0:0] tmp_reg_5434_pp0_iter1_reg;
reg   [0:0] tmp_reg_5434_pp0_iter2_reg;
reg   [0:0] tmp_reg_5434_pp0_iter3_reg;
wire   [2:0] tmp_60_fu_2818_p4;
reg   [2:0] tmp_60_reg_5438;
wire   [8:0] offset_fu_2832_p3;
reg   [8:0] offset_reg_5445;
reg   [8:0] offset_reg_5445_pp0_iter1_reg;
reg   [8:0] offset_reg_5445_pp0_iter2_reg;
wire   [8:0] offset_4_fu_2855_p4;
reg   [8:0] offset_4_reg_5452;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_4_reg_5452_pp0_iter1_reg;
reg   [8:0] offset_4_reg_5452_pp0_iter2_reg;
wire   [8:0] offset_5_fu_2870_p4;
reg   [8:0] offset_5_reg_5459;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [8:0] offset_5_reg_5459_pp0_iter1_reg;
reg   [8:0] offset_5_reg_5459_pp0_iter2_reg;
wire   [8:0] offset_6_fu_2885_p4;
reg   [8:0] offset_6_reg_5466;
wire    ap_block_pp0_stage3_11001;
reg   [8:0] offset_6_reg_5466_pp0_iter1_reg;
reg   [8:0] offset_6_reg_5466_pp0_iter2_reg;
reg   [6:0] tmp_62_reg_5473;
reg   [6:0] tmp_63_reg_5478;
reg   [6:0] tmp_64_reg_5483;
reg   [6:0] tmp_65_reg_5488;
reg   [6:0] tmp_66_reg_5493;
reg   [6:0] tmp_67_reg_5498;
reg   [6:0] tmp_68_reg_5503;
reg   [5:0] tmp_61_reg_5508;
wire   [3:0] trunc_ln172_fu_3004_p1;
reg   [3:0] trunc_ln172_reg_5513;
reg   [6:0] tmp_71_reg_5525;
reg   [6:0] tmp_72_reg_5530;
reg   [6:0] tmp_73_reg_5535;
reg   [6:0] tmp_74_reg_5540;
reg   [6:0] tmp_75_reg_5545;
reg   [6:0] tmp_76_reg_5550;
reg   [6:0] tmp_77_reg_5555;
reg   [5:0] tmp_70_reg_5920;
wire   [3:0] trunc_ln172_4_fu_3186_p1;
reg   [3:0] trunc_ln172_4_reg_5925;
reg   [6:0] tmp_80_reg_5937;
reg   [6:0] tmp_81_reg_5942;
reg   [6:0] tmp_82_reg_5947;
reg   [6:0] tmp_83_reg_5952;
reg   [6:0] tmp_84_reg_5957;
reg   [6:0] tmp_85_reg_5962;
reg   [6:0] tmp_86_reg_5967;
wire   [63:0] tmp_s_fu_3253_p21;
reg   [63:0] tmp_s_reg_5972;
wire   [63:0] tmp_21_fu_3296_p21;
reg   [63:0] tmp_21_reg_5977;
wire   [63:0] tmp_22_fu_3339_p21;
reg   [63:0] tmp_22_reg_5982;
wire   [63:0] tmp_23_fu_3382_p21;
reg   [63:0] tmp_23_reg_5987;
wire   [63:0] tmp_24_fu_3425_p21;
reg   [63:0] tmp_24_reg_5992;
wire   [63:0] tmp_25_fu_3468_p21;
reg   [63:0] tmp_25_reg_5997;
wire   [63:0] tmp_26_fu_3511_p21;
reg   [63:0] tmp_26_reg_6002;
wire   [63:0] tmp_27_fu_3554_p21;
reg   [63:0] tmp_27_reg_6007;
reg   [5:0] tmp_79_reg_6372;
wire   [3:0] trunc_ln172_5_fu_3712_p1;
reg   [3:0] trunc_ln172_5_reg_6377;
reg   [6:0] tmp_89_reg_6389;
reg   [6:0] tmp_90_reg_6394;
reg   [6:0] tmp_91_reg_6399;
reg   [6:0] tmp_92_reg_6404;
reg   [6:0] tmp_93_reg_6409;
reg   [6:0] tmp_94_reg_6414;
reg   [6:0] tmp_95_reg_6419;
wire   [63:0] tmp_28_fu_3811_p21;
reg   [63:0] tmp_28_reg_6424;
wire   [63:0] tmp_30_fu_3854_p21;
reg   [63:0] tmp_30_reg_6429;
wire   [63:0] tmp_31_fu_3897_p21;
reg   [63:0] tmp_31_reg_6434;
wire   [63:0] tmp_32_fu_3940_p21;
reg   [63:0] tmp_32_reg_6439;
wire   [63:0] tmp_33_fu_3983_p21;
reg   [63:0] tmp_33_reg_6444;
wire   [63:0] tmp_34_fu_4026_p21;
reg   [63:0] tmp_34_reg_6449;
wire   [63:0] tmp_35_fu_4069_p21;
reg   [63:0] tmp_35_reg_6454;
wire   [63:0] tmp_36_fu_4112_p21;
reg   [63:0] tmp_36_reg_6459;
reg   [5:0] tmp_88_reg_6824;
wire   [3:0] trunc_ln172_6_fu_4270_p1;
reg   [3:0] trunc_ln172_6_reg_6829;
wire   [6:0] shl_ln314_1_fu_4283_p3;
reg   [6:0] shl_ln314_1_reg_6841;
wire   [63:0] tmp_37_fu_4315_p21;
reg   [63:0] tmp_37_reg_6847;
wire   [63:0] tmp_38_fu_4358_p21;
reg   [63:0] tmp_38_reg_6852;
wire   [63:0] tmp_39_fu_4401_p21;
reg   [63:0] tmp_39_reg_6857;
wire   [63:0] tmp_40_fu_4444_p21;
reg   [63:0] tmp_40_reg_6862;
wire   [63:0] tmp_41_fu_4487_p21;
reg   [63:0] tmp_41_reg_6867;
wire   [63:0] tmp_42_fu_4530_p21;
reg   [63:0] tmp_42_reg_6872;
wire   [63:0] tmp_43_fu_4573_p21;
reg   [63:0] tmp_43_reg_6877;
wire   [63:0] tmp_44_fu_4616_p21;
reg   [63:0] tmp_44_reg_6882;
reg   [3:0] tmp_46_reg_6932;
wire   [63:0] tmp_45_fu_4790_p21;
reg   [63:0] tmp_45_reg_7253;
wire   [63:0] tmp_47_fu_4833_p21;
reg   [63:0] tmp_47_reg_7258;
wire   [63:0] tmp_48_fu_4876_p21;
reg   [63:0] tmp_48_reg_7263;
wire   [63:0] tmp_49_fu_4919_p21;
reg   [63:0] tmp_49_reg_7268;
wire   [63:0] tmp_50_fu_4962_p21;
reg   [63:0] tmp_50_reg_7273;
wire   [63:0] tmp_51_fu_5005_p21;
reg   [63:0] tmp_51_reg_7278;
wire   [63:0] tmp_52_fu_5048_p21;
reg   [63:0] tmp_52_reg_7283;
wire   [63:0] tmp_53_fu_5091_p21;
reg   [63:0] tmp_53_reg_7288;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_4_fu_3071_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_3083_p1;
wire   [63:0] zext_ln316_fu_3095_p1;
wire   [63:0] zext_ln317_fu_3107_p1;
wire   [63:0] zext_ln318_fu_3119_p1;
wire   [63:0] zext_ln319_fu_3131_p1;
wire   [63:0] zext_ln320_fu_3143_p1;
wire   [63:0] zext_ln321_fu_3155_p1;
wire   [63:0] zext_ln172_5_fu_3597_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln315_1_fu_3609_p1;
wire   [63:0] zext_ln316_1_fu_3621_p1;
wire   [63:0] zext_ln317_1_fu_3633_p1;
wire   [63:0] zext_ln318_1_fu_3645_p1;
wire   [63:0] zext_ln319_1_fu_3657_p1;
wire   [63:0] zext_ln320_1_fu_3669_p1;
wire   [63:0] zext_ln321_1_fu_3681_p1;
wire   [63:0] zext_ln314_fu_3787_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_4_fu_3803_p1;
wire   [63:0] zext_ln172_6_fu_4155_p1;
wire   [63:0] zext_ln315_2_fu_4167_p1;
wire   [63:0] zext_ln316_2_fu_4179_p1;
wire   [63:0] zext_ln317_2_fu_4191_p1;
wire   [63:0] zext_ln318_2_fu_4203_p1;
wire   [63:0] zext_ln319_2_fu_4215_p1;
wire   [63:0] zext_ln320_2_fu_4227_p1;
wire   [63:0] zext_ln321_2_fu_4239_p1;
wire   [63:0] zext_ln314_1_fu_4291_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_5_fu_4307_p1;
wire   [63:0] zext_ln172_7_fu_4659_p1;
wire   [63:0] zext_ln315_3_fu_4680_p1;
wire   [63:0] zext_ln316_3_fu_4692_p1;
wire   [63:0] zext_ln317_3_fu_4704_p1;
wire   [63:0] zext_ln318_3_fu_4716_p1;
wire   [63:0] zext_ln319_3_fu_4728_p1;
wire   [63:0] zext_ln320_3_fu_4740_p1;
wire   [63:0] zext_ln321_3_fu_4752_p1;
wire   [63:0] zext_ln314_2_fu_4769_p1;
wire   [63:0] zext_ln315_6_fu_4782_p1;
wire   [63:0] zext_ln314_3_fu_5141_p1;
wire   [63:0] zext_ln315_7_fu_5156_p1;
reg   [6:0] tid_fu_148;
wire   [6:0] add_ln309_fu_2900_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_we1_local;
reg   [63:0] DATA_x_2_d1_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_we0_local;
reg   [63:0] DATA_x_2_d0_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_we1_local;
reg   [63:0] DATA_x_3_d1_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_we0_local;
reg   [63:0] DATA_x_3_d0_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
wire   [5:0] trunc_ln312_fu_2828_p1;
wire   [8:0] grp_fu_2840_p0;
wire   [4:0] grp_fu_2840_p1;
wire   [4:0] tmp_69_fu_2846_p4;
wire   [8:0] grp_fu_2864_p0;
wire   [4:0] grp_fu_2864_p1;
wire   [3:0] grp_fu_2793_p4;
wire   [8:0] grp_fu_2879_p0;
wire   [4:0] grp_fu_2879_p1;
wire   [8:0] grp_fu_2894_p0;
wire   [4:0] grp_fu_2894_p1;
wire   [20:0] tmp_62_fu_2919_p1;
wire  signed [20:0] grp_fu_5164_p3;
wire   [20:0] tmp_63_fu_2928_p1;
wire  signed [20:0] grp_fu_5173_p3;
wire   [20:0] tmp_64_fu_2937_p1;
wire  signed [20:0] grp_fu_5182_p3;
wire   [20:0] tmp_65_fu_2946_p1;
wire  signed [20:0] grp_fu_5191_p3;
wire   [20:0] tmp_66_fu_2955_p1;
wire  signed [20:0] grp_fu_5200_p3;
wire   [20:0] tmp_67_fu_2964_p1;
wire  signed [20:0] grp_fu_5209_p3;
wire   [20:0] tmp_68_fu_2973_p1;
wire  signed [20:0] grp_fu_5218_p3;
wire   [8:0] mul_ln172_fu_2988_p0;
wire   [10:0] mul_ln172_fu_2988_p1;
wire   [18:0] mul_ln172_fu_2988_p2;
wire   [3:0] grp_fu_2840_p2;
wire   [20:0] tmp_71_fu_3008_p1;
wire  signed [20:0] grp_fu_5227_p3;
wire   [20:0] tmp_72_fu_3017_p1;
wire  signed [20:0] grp_fu_5236_p3;
wire   [20:0] tmp_73_fu_3026_p1;
wire  signed [20:0] grp_fu_5245_p3;
wire   [20:0] tmp_74_fu_3035_p1;
wire  signed [20:0] grp_fu_5254_p3;
wire   [20:0] tmp_75_fu_3044_p1;
wire  signed [20:0] grp_fu_5263_p3;
wire   [20:0] tmp_76_fu_3053_p1;
wire  signed [20:0] grp_fu_5272_p3;
wire   [20:0] tmp_77_fu_3062_p1;
wire  signed [20:0] grp_fu_5281_p3;
wire   [8:0] mul_ln172_4_fu_3170_p0;
wire   [10:0] mul_ln172_4_fu_3170_p1;
wire   [18:0] mul_ln172_4_fu_3170_p2;
wire   [3:0] grp_fu_2864_p2;
wire   [20:0] tmp_80_fu_3190_p1;
wire  signed [20:0] grp_fu_5290_p3;
wire   [20:0] tmp_81_fu_3199_p1;
wire  signed [20:0] grp_fu_5299_p3;
wire   [20:0] tmp_82_fu_3208_p1;
wire  signed [20:0] grp_fu_5308_p3;
wire   [20:0] tmp_83_fu_3217_p1;
wire  signed [20:0] grp_fu_5317_p3;
wire   [20:0] tmp_84_fu_3226_p1;
wire  signed [20:0] grp_fu_5326_p3;
wire   [20:0] tmp_85_fu_3235_p1;
wire  signed [20:0] grp_fu_5335_p3;
wire   [20:0] tmp_86_fu_3244_p1;
wire  signed [20:0] grp_fu_5344_p3;
wire   [63:0] tmp_s_fu_3253_p19;
wire   [63:0] tmp_21_fu_3296_p19;
wire   [63:0] tmp_22_fu_3339_p19;
wire   [63:0] tmp_23_fu_3382_p19;
wire   [63:0] tmp_24_fu_3425_p19;
wire   [63:0] tmp_25_fu_3468_p19;
wire   [63:0] tmp_26_fu_3511_p19;
wire   [63:0] tmp_27_fu_3554_p19;
wire   [8:0] mul_ln172_5_fu_3696_p0;
wire   [10:0] mul_ln172_5_fu_3696_p1;
wire   [18:0] mul_ln172_5_fu_3696_p2;
wire   [3:0] grp_fu_2879_p2;
wire   [20:0] tmp_89_fu_3716_p1;
wire  signed [20:0] grp_fu_5353_p3;
wire   [20:0] tmp_90_fu_3725_p1;
wire  signed [20:0] grp_fu_5362_p3;
wire   [20:0] tmp_91_fu_3734_p1;
wire  signed [20:0] grp_fu_5371_p3;
wire   [20:0] tmp_92_fu_3743_p1;
wire  signed [20:0] grp_fu_5380_p3;
wire   [20:0] tmp_93_fu_3752_p1;
wire  signed [20:0] grp_fu_5389_p3;
wire   [20:0] tmp_94_fu_3761_p1;
wire  signed [20:0] grp_fu_5398_p3;
wire   [20:0] tmp_95_fu_3770_p1;
wire  signed [20:0] grp_fu_5407_p3;
wire   [6:0] shl_ln314_fu_3782_p2;
wire   [5:0] trunc_ln314_fu_3779_p1;
wire   [6:0] or_ln_fu_3795_p3;
wire   [63:0] tmp_28_fu_3811_p19;
wire   [63:0] tmp_30_fu_3854_p19;
wire   [63:0] tmp_31_fu_3897_p19;
wire   [63:0] tmp_32_fu_3940_p19;
wire   [63:0] tmp_33_fu_3983_p19;
wire   [63:0] tmp_34_fu_4026_p19;
wire   [63:0] tmp_35_fu_4069_p19;
wire   [63:0] tmp_36_fu_4112_p19;
wire   [8:0] mul_ln172_6_fu_4254_p0;
wire   [10:0] mul_ln172_6_fu_4254_p1;
wire   [18:0] mul_ln172_6_fu_4254_p2;
wire   [3:0] grp_fu_2894_p2;
wire   [4:0] tmp_29_fu_4274_p4;
wire   [6:0] or_ln315_1_fu_4299_p3;
wire   [63:0] tmp_37_fu_4315_p19;
wire   [63:0] tmp_38_fu_4358_p19;
wire   [63:0] tmp_39_fu_4401_p19;
wire   [63:0] tmp_40_fu_4444_p19;
wire   [63:0] tmp_41_fu_4487_p19;
wire   [63:0] tmp_42_fu_4530_p19;
wire   [63:0] tmp_43_fu_4573_p19;
wire   [63:0] tmp_44_fu_4616_p19;
wire   [6:0] add_ln314_fu_4764_p2;
wire   [6:0] add_ln315_3_fu_4777_p2;
wire   [63:0] tmp_45_fu_4790_p19;
wire   [63:0] tmp_47_fu_4833_p19;
wire   [63:0] tmp_48_fu_4876_p19;
wire   [63:0] tmp_49_fu_4919_p19;
wire   [63:0] tmp_50_fu_4962_p19;
wire   [63:0] tmp_51_fu_5005_p19;
wire   [63:0] tmp_52_fu_5048_p19;
wire   [63:0] tmp_53_fu_5091_p19;
wire   [6:0] or_ln2_fu_5134_p3;
wire   [6:0] or_ln315_2_fu_5149_p3;
wire   [8:0] grp_fu_5164_p0;
wire   [9:0] zext_ln172_fu_2910_p1;
wire   [5:0] grp_fu_5164_p1;
wire   [10:0] grp_fu_5164_p2;
wire   [8:0] grp_fu_5173_p0;
wire   [3:0] grp_fu_5173_p1;
wire   [10:0] grp_fu_5173_p2;
wire   [8:0] grp_fu_5182_p0;
wire   [5:0] grp_fu_5182_p1;
wire   [10:0] grp_fu_5182_p2;
wire   [8:0] grp_fu_5191_p0;
wire   [4:0] grp_fu_5191_p1;
wire   [10:0] grp_fu_5191_p2;
wire   [8:0] grp_fu_5200_p0;
wire   [5:0] grp_fu_5200_p1;
wire   [10:0] grp_fu_5200_p2;
wire   [8:0] grp_fu_5209_p0;
wire   [4:0] grp_fu_5209_p1;
wire   [10:0] grp_fu_5209_p2;
wire   [8:0] grp_fu_5218_p0;
wire   [5:0] grp_fu_5218_p1;
wire   [10:0] grp_fu_5218_p2;
wire   [8:0] grp_fu_5227_p0;
wire   [9:0] zext_ln172_21_fu_2913_p1;
wire   [5:0] grp_fu_5227_p1;
wire   [10:0] grp_fu_5227_p2;
wire   [8:0] grp_fu_5236_p0;
wire   [3:0] grp_fu_5236_p1;
wire   [10:0] grp_fu_5236_p2;
wire   [8:0] grp_fu_5245_p0;
wire   [5:0] grp_fu_5245_p1;
wire   [10:0] grp_fu_5245_p2;
wire   [8:0] grp_fu_5254_p0;
wire   [4:0] grp_fu_5254_p1;
wire   [10:0] grp_fu_5254_p2;
wire   [8:0] grp_fu_5263_p0;
wire   [5:0] grp_fu_5263_p1;
wire   [10:0] grp_fu_5263_p2;
wire   [8:0] grp_fu_5272_p0;
wire   [4:0] grp_fu_5272_p1;
wire   [10:0] grp_fu_5272_p2;
wire   [8:0] grp_fu_5281_p0;
wire   [5:0] grp_fu_5281_p1;
wire   [10:0] grp_fu_5281_p2;
wire   [8:0] grp_fu_5290_p0;
wire   [9:0] zext_ln172_23_fu_2916_p1;
wire   [5:0] grp_fu_5290_p1;
wire   [10:0] grp_fu_5290_p2;
wire   [8:0] grp_fu_5299_p0;
wire   [3:0] grp_fu_5299_p1;
wire   [10:0] grp_fu_5299_p2;
wire   [8:0] grp_fu_5308_p0;
wire   [5:0] grp_fu_5308_p1;
wire   [10:0] grp_fu_5308_p2;
wire   [8:0] grp_fu_5317_p0;
wire   [4:0] grp_fu_5317_p1;
wire   [10:0] grp_fu_5317_p2;
wire   [8:0] grp_fu_5326_p0;
wire   [5:0] grp_fu_5326_p1;
wire   [10:0] grp_fu_5326_p2;
wire   [8:0] grp_fu_5335_p0;
wire   [4:0] grp_fu_5335_p1;
wire   [10:0] grp_fu_5335_p2;
wire   [8:0] grp_fu_5344_p0;
wire   [5:0] grp_fu_5344_p1;
wire   [10:0] grp_fu_5344_p2;
wire   [8:0] grp_fu_5353_p0;
wire   [9:0] zext_ln172_25_fu_2982_p1;
wire   [5:0] grp_fu_5353_p1;
wire   [10:0] grp_fu_5353_p2;
wire   [8:0] grp_fu_5362_p0;
wire   [3:0] grp_fu_5362_p1;
wire   [10:0] grp_fu_5362_p2;
wire   [8:0] grp_fu_5371_p0;
wire   [5:0] grp_fu_5371_p1;
wire   [10:0] grp_fu_5371_p2;
wire   [8:0] grp_fu_5380_p0;
wire   [4:0] grp_fu_5380_p1;
wire   [10:0] grp_fu_5380_p2;
wire   [8:0] grp_fu_5389_p0;
wire   [5:0] grp_fu_5389_p1;
wire   [10:0] grp_fu_5389_p2;
wire   [8:0] grp_fu_5398_p0;
wire   [4:0] grp_fu_5398_p1;
wire   [10:0] grp_fu_5398_p2;
wire   [8:0] grp_fu_5407_p0;
wire   [5:0] grp_fu_5407_p1;
wire   [10:0] grp_fu_5407_p2;
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
wire   [18:0] mul_ln172_4_fu_3170_p00;
wire   [18:0] mul_ln172_5_fu_3696_p00;
wire   [18:0] mul_ln172_6_fu_4254_p00;
wire   [18:0] mul_ln172_fu_2988_p00;
wire   [3:0] tmp_s_fu_3253_p1;
wire   [3:0] tmp_s_fu_3253_p3;
wire   [3:0] tmp_s_fu_3253_p5;
wire   [3:0] tmp_s_fu_3253_p7;
wire   [3:0] tmp_s_fu_3253_p9;
wire   [3:0] tmp_s_fu_3253_p11;
wire   [3:0] tmp_s_fu_3253_p13;
wire   [3:0] tmp_s_fu_3253_p15;
wire  signed [3:0] tmp_s_fu_3253_p17;
wire   [3:0] tmp_21_fu_3296_p1;
wire   [3:0] tmp_21_fu_3296_p3;
wire   [3:0] tmp_21_fu_3296_p5;
wire   [3:0] tmp_21_fu_3296_p7;
wire  signed [3:0] tmp_21_fu_3296_p9;
wire   [3:0] tmp_21_fu_3296_p11;
wire   [3:0] tmp_21_fu_3296_p13;
wire   [3:0] tmp_21_fu_3296_p15;
wire   [3:0] tmp_21_fu_3296_p17;
wire   [3:0] tmp_22_fu_3339_p1;
wire   [3:0] tmp_22_fu_3339_p3;
wire   [3:0] tmp_22_fu_3339_p5;
wire   [3:0] tmp_22_fu_3339_p7;
wire   [3:0] tmp_22_fu_3339_p9;
wire   [3:0] tmp_22_fu_3339_p11;
wire   [3:0] tmp_22_fu_3339_p13;
wire  signed [3:0] tmp_22_fu_3339_p15;
wire   [3:0] tmp_22_fu_3339_p17;
wire   [3:0] tmp_23_fu_3382_p1;
wire   [3:0] tmp_23_fu_3382_p3;
wire   [3:0] tmp_23_fu_3382_p5;
wire  signed [3:0] tmp_23_fu_3382_p7;
wire   [3:0] tmp_23_fu_3382_p9;
wire   [3:0] tmp_23_fu_3382_p11;
wire   [3:0] tmp_23_fu_3382_p13;
wire   [3:0] tmp_23_fu_3382_p15;
wire   [3:0] tmp_23_fu_3382_p17;
wire   [3:0] tmp_24_fu_3425_p1;
wire   [3:0] tmp_24_fu_3425_p3;
wire   [3:0] tmp_24_fu_3425_p5;
wire   [3:0] tmp_24_fu_3425_p7;
wire   [3:0] tmp_24_fu_3425_p9;
wire   [3:0] tmp_24_fu_3425_p11;
wire  signed [3:0] tmp_24_fu_3425_p13;
wire   [3:0] tmp_24_fu_3425_p15;
wire   [3:0] tmp_24_fu_3425_p17;
wire   [3:0] tmp_25_fu_3468_p1;
wire   [3:0] tmp_25_fu_3468_p3;
wire  signed [3:0] tmp_25_fu_3468_p5;
wire   [3:0] tmp_25_fu_3468_p7;
wire   [3:0] tmp_25_fu_3468_p9;
wire   [3:0] tmp_25_fu_3468_p11;
wire   [3:0] tmp_25_fu_3468_p13;
wire   [3:0] tmp_25_fu_3468_p15;
wire   [3:0] tmp_25_fu_3468_p17;
wire   [3:0] tmp_26_fu_3511_p1;
wire   [3:0] tmp_26_fu_3511_p3;
wire   [3:0] tmp_26_fu_3511_p5;
wire   [3:0] tmp_26_fu_3511_p7;
wire   [3:0] tmp_26_fu_3511_p9;
wire  signed [3:0] tmp_26_fu_3511_p11;
wire   [3:0] tmp_26_fu_3511_p13;
wire   [3:0] tmp_26_fu_3511_p15;
wire   [3:0] tmp_26_fu_3511_p17;
wire   [3:0] tmp_27_fu_3554_p1;
wire  signed [3:0] tmp_27_fu_3554_p3;
wire   [3:0] tmp_27_fu_3554_p5;
wire   [3:0] tmp_27_fu_3554_p7;
wire   [3:0] tmp_27_fu_3554_p9;
wire   [3:0] tmp_27_fu_3554_p11;
wire   [3:0] tmp_27_fu_3554_p13;
wire   [3:0] tmp_27_fu_3554_p15;
wire   [3:0] tmp_27_fu_3554_p17;
wire   [3:0] tmp_28_fu_3811_p1;
wire   [3:0] tmp_28_fu_3811_p3;
wire   [3:0] tmp_28_fu_3811_p5;
wire   [3:0] tmp_28_fu_3811_p7;
wire   [3:0] tmp_28_fu_3811_p9;
wire   [3:0] tmp_28_fu_3811_p11;
wire   [3:0] tmp_28_fu_3811_p13;
wire   [3:0] tmp_28_fu_3811_p15;
wire  signed [3:0] tmp_28_fu_3811_p17;
wire   [3:0] tmp_30_fu_3854_p1;
wire   [3:0] tmp_30_fu_3854_p3;
wire   [3:0] tmp_30_fu_3854_p5;
wire   [3:0] tmp_30_fu_3854_p7;
wire  signed [3:0] tmp_30_fu_3854_p9;
wire   [3:0] tmp_30_fu_3854_p11;
wire   [3:0] tmp_30_fu_3854_p13;
wire   [3:0] tmp_30_fu_3854_p15;
wire   [3:0] tmp_30_fu_3854_p17;
wire   [3:0] tmp_31_fu_3897_p1;
wire   [3:0] tmp_31_fu_3897_p3;
wire   [3:0] tmp_31_fu_3897_p5;
wire   [3:0] tmp_31_fu_3897_p7;
wire   [3:0] tmp_31_fu_3897_p9;
wire   [3:0] tmp_31_fu_3897_p11;
wire   [3:0] tmp_31_fu_3897_p13;
wire  signed [3:0] tmp_31_fu_3897_p15;
wire   [3:0] tmp_31_fu_3897_p17;
wire   [3:0] tmp_32_fu_3940_p1;
wire   [3:0] tmp_32_fu_3940_p3;
wire   [3:0] tmp_32_fu_3940_p5;
wire  signed [3:0] tmp_32_fu_3940_p7;
wire   [3:0] tmp_32_fu_3940_p9;
wire   [3:0] tmp_32_fu_3940_p11;
wire   [3:0] tmp_32_fu_3940_p13;
wire   [3:0] tmp_32_fu_3940_p15;
wire   [3:0] tmp_32_fu_3940_p17;
wire   [3:0] tmp_33_fu_3983_p1;
wire   [3:0] tmp_33_fu_3983_p3;
wire   [3:0] tmp_33_fu_3983_p5;
wire   [3:0] tmp_33_fu_3983_p7;
wire   [3:0] tmp_33_fu_3983_p9;
wire   [3:0] tmp_33_fu_3983_p11;
wire  signed [3:0] tmp_33_fu_3983_p13;
wire   [3:0] tmp_33_fu_3983_p15;
wire   [3:0] tmp_33_fu_3983_p17;
wire   [3:0] tmp_34_fu_4026_p1;
wire   [3:0] tmp_34_fu_4026_p3;
wire  signed [3:0] tmp_34_fu_4026_p5;
wire   [3:0] tmp_34_fu_4026_p7;
wire   [3:0] tmp_34_fu_4026_p9;
wire   [3:0] tmp_34_fu_4026_p11;
wire   [3:0] tmp_34_fu_4026_p13;
wire   [3:0] tmp_34_fu_4026_p15;
wire   [3:0] tmp_34_fu_4026_p17;
wire   [3:0] tmp_35_fu_4069_p1;
wire   [3:0] tmp_35_fu_4069_p3;
wire   [3:0] tmp_35_fu_4069_p5;
wire   [3:0] tmp_35_fu_4069_p7;
wire   [3:0] tmp_35_fu_4069_p9;
wire  signed [3:0] tmp_35_fu_4069_p11;
wire   [3:0] tmp_35_fu_4069_p13;
wire   [3:0] tmp_35_fu_4069_p15;
wire   [3:0] tmp_35_fu_4069_p17;
wire   [3:0] tmp_36_fu_4112_p1;
wire  signed [3:0] tmp_36_fu_4112_p3;
wire   [3:0] tmp_36_fu_4112_p5;
wire   [3:0] tmp_36_fu_4112_p7;
wire   [3:0] tmp_36_fu_4112_p9;
wire   [3:0] tmp_36_fu_4112_p11;
wire   [3:0] tmp_36_fu_4112_p13;
wire   [3:0] tmp_36_fu_4112_p15;
wire   [3:0] tmp_36_fu_4112_p17;
wire   [3:0] tmp_37_fu_4315_p1;
wire   [3:0] tmp_37_fu_4315_p3;
wire   [3:0] tmp_37_fu_4315_p5;
wire   [3:0] tmp_37_fu_4315_p7;
wire   [3:0] tmp_37_fu_4315_p9;
wire   [3:0] tmp_37_fu_4315_p11;
wire   [3:0] tmp_37_fu_4315_p13;
wire   [3:0] tmp_37_fu_4315_p15;
wire  signed [3:0] tmp_37_fu_4315_p17;
wire   [3:0] tmp_38_fu_4358_p1;
wire   [3:0] tmp_38_fu_4358_p3;
wire   [3:0] tmp_38_fu_4358_p5;
wire   [3:0] tmp_38_fu_4358_p7;
wire  signed [3:0] tmp_38_fu_4358_p9;
wire   [3:0] tmp_38_fu_4358_p11;
wire   [3:0] tmp_38_fu_4358_p13;
wire   [3:0] tmp_38_fu_4358_p15;
wire   [3:0] tmp_38_fu_4358_p17;
wire   [3:0] tmp_39_fu_4401_p1;
wire   [3:0] tmp_39_fu_4401_p3;
wire   [3:0] tmp_39_fu_4401_p5;
wire   [3:0] tmp_39_fu_4401_p7;
wire   [3:0] tmp_39_fu_4401_p9;
wire   [3:0] tmp_39_fu_4401_p11;
wire   [3:0] tmp_39_fu_4401_p13;
wire  signed [3:0] tmp_39_fu_4401_p15;
wire   [3:0] tmp_39_fu_4401_p17;
wire   [3:0] tmp_40_fu_4444_p1;
wire   [3:0] tmp_40_fu_4444_p3;
wire   [3:0] tmp_40_fu_4444_p5;
wire  signed [3:0] tmp_40_fu_4444_p7;
wire   [3:0] tmp_40_fu_4444_p9;
wire   [3:0] tmp_40_fu_4444_p11;
wire   [3:0] tmp_40_fu_4444_p13;
wire   [3:0] tmp_40_fu_4444_p15;
wire   [3:0] tmp_40_fu_4444_p17;
wire   [3:0] tmp_41_fu_4487_p1;
wire   [3:0] tmp_41_fu_4487_p3;
wire   [3:0] tmp_41_fu_4487_p5;
wire   [3:0] tmp_41_fu_4487_p7;
wire   [3:0] tmp_41_fu_4487_p9;
wire   [3:0] tmp_41_fu_4487_p11;
wire  signed [3:0] tmp_41_fu_4487_p13;
wire   [3:0] tmp_41_fu_4487_p15;
wire   [3:0] tmp_41_fu_4487_p17;
wire   [3:0] tmp_42_fu_4530_p1;
wire   [3:0] tmp_42_fu_4530_p3;
wire  signed [3:0] tmp_42_fu_4530_p5;
wire   [3:0] tmp_42_fu_4530_p7;
wire   [3:0] tmp_42_fu_4530_p9;
wire   [3:0] tmp_42_fu_4530_p11;
wire   [3:0] tmp_42_fu_4530_p13;
wire   [3:0] tmp_42_fu_4530_p15;
wire   [3:0] tmp_42_fu_4530_p17;
wire   [3:0] tmp_43_fu_4573_p1;
wire   [3:0] tmp_43_fu_4573_p3;
wire   [3:0] tmp_43_fu_4573_p5;
wire   [3:0] tmp_43_fu_4573_p7;
wire   [3:0] tmp_43_fu_4573_p9;
wire  signed [3:0] tmp_43_fu_4573_p11;
wire   [3:0] tmp_43_fu_4573_p13;
wire   [3:0] tmp_43_fu_4573_p15;
wire   [3:0] tmp_43_fu_4573_p17;
wire   [3:0] tmp_44_fu_4616_p1;
wire  signed [3:0] tmp_44_fu_4616_p3;
wire   [3:0] tmp_44_fu_4616_p5;
wire   [3:0] tmp_44_fu_4616_p7;
wire   [3:0] tmp_44_fu_4616_p9;
wire   [3:0] tmp_44_fu_4616_p11;
wire   [3:0] tmp_44_fu_4616_p13;
wire   [3:0] tmp_44_fu_4616_p15;
wire   [3:0] tmp_44_fu_4616_p17;
wire   [3:0] tmp_45_fu_4790_p1;
wire   [3:0] tmp_45_fu_4790_p3;
wire   [3:0] tmp_45_fu_4790_p5;
wire   [3:0] tmp_45_fu_4790_p7;
wire   [3:0] tmp_45_fu_4790_p9;
wire   [3:0] tmp_45_fu_4790_p11;
wire   [3:0] tmp_45_fu_4790_p13;
wire   [3:0] tmp_45_fu_4790_p15;
wire  signed [3:0] tmp_45_fu_4790_p17;
wire   [3:0] tmp_47_fu_4833_p1;
wire   [3:0] tmp_47_fu_4833_p3;
wire   [3:0] tmp_47_fu_4833_p5;
wire   [3:0] tmp_47_fu_4833_p7;
wire  signed [3:0] tmp_47_fu_4833_p9;
wire   [3:0] tmp_47_fu_4833_p11;
wire   [3:0] tmp_47_fu_4833_p13;
wire   [3:0] tmp_47_fu_4833_p15;
wire   [3:0] tmp_47_fu_4833_p17;
wire   [3:0] tmp_48_fu_4876_p1;
wire   [3:0] tmp_48_fu_4876_p3;
wire   [3:0] tmp_48_fu_4876_p5;
wire   [3:0] tmp_48_fu_4876_p7;
wire   [3:0] tmp_48_fu_4876_p9;
wire   [3:0] tmp_48_fu_4876_p11;
wire   [3:0] tmp_48_fu_4876_p13;
wire  signed [3:0] tmp_48_fu_4876_p15;
wire   [3:0] tmp_48_fu_4876_p17;
wire   [3:0] tmp_49_fu_4919_p1;
wire   [3:0] tmp_49_fu_4919_p3;
wire   [3:0] tmp_49_fu_4919_p5;
wire  signed [3:0] tmp_49_fu_4919_p7;
wire   [3:0] tmp_49_fu_4919_p9;
wire   [3:0] tmp_49_fu_4919_p11;
wire   [3:0] tmp_49_fu_4919_p13;
wire   [3:0] tmp_49_fu_4919_p15;
wire   [3:0] tmp_49_fu_4919_p17;
wire   [3:0] tmp_50_fu_4962_p1;
wire   [3:0] tmp_50_fu_4962_p3;
wire   [3:0] tmp_50_fu_4962_p5;
wire   [3:0] tmp_50_fu_4962_p7;
wire   [3:0] tmp_50_fu_4962_p9;
wire   [3:0] tmp_50_fu_4962_p11;
wire  signed [3:0] tmp_50_fu_4962_p13;
wire   [3:0] tmp_50_fu_4962_p15;
wire   [3:0] tmp_50_fu_4962_p17;
wire   [3:0] tmp_51_fu_5005_p1;
wire   [3:0] tmp_51_fu_5005_p3;
wire  signed [3:0] tmp_51_fu_5005_p5;
wire   [3:0] tmp_51_fu_5005_p7;
wire   [3:0] tmp_51_fu_5005_p9;
wire   [3:0] tmp_51_fu_5005_p11;
wire   [3:0] tmp_51_fu_5005_p13;
wire   [3:0] tmp_51_fu_5005_p15;
wire   [3:0] tmp_51_fu_5005_p17;
wire   [3:0] tmp_52_fu_5048_p1;
wire   [3:0] tmp_52_fu_5048_p3;
wire   [3:0] tmp_52_fu_5048_p5;
wire   [3:0] tmp_52_fu_5048_p7;
wire   [3:0] tmp_52_fu_5048_p9;
wire  signed [3:0] tmp_52_fu_5048_p11;
wire   [3:0] tmp_52_fu_5048_p13;
wire   [3:0] tmp_52_fu_5048_p15;
wire   [3:0] tmp_52_fu_5048_p17;
wire   [3:0] tmp_53_fu_5091_p1;
wire  signed [3:0] tmp_53_fu_5091_p3;
wire   [3:0] tmp_53_fu_5091_p5;
wire   [3:0] tmp_53_fu_5091_p7;
wire   [3:0] tmp_53_fu_5091_p9;
wire   [3:0] tmp_53_fu_5091_p11;
wire   [3:0] tmp_53_fu_5091_p13;
wire   [3:0] tmp_53_fu_5091_p15;
wire   [3:0] tmp_53_fu_5091_p17;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U714(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2840_p0),.din1(grp_fu_2840_p1),.ce(1'b1),.dout(grp_fu_2840_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U715(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2864_p0),.din1(grp_fu_2864_p1),.ce(1'b1),.dout(grp_fu_2864_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U716(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2879_p0),.din1(grp_fu_2879_p1),.ce(1'b1),.dout(grp_fu_2879_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U717(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2894_p0),.din1(grp_fu_2894_p1),.ce(1'b1),.dout(grp_fu_2894_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U718(.din0(mul_ln172_fu_2988_p0),.din1(mul_ln172_fu_2988_p1),.dout(mul_ln172_fu_2988_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U719(.din0(mul_ln172_4_fu_3170_p0),.din1(mul_ln172_4_fu_3170_p1),.dout(mul_ln172_4_fu_3170_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U720(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_s_fu_3253_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_s_fu_3253_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U721(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_21_fu_3296_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_21_fu_3296_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U722(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_22_fu_3339_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_22_fu_3339_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U723(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_23_fu_3382_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_23_fu_3382_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U724(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_24_fu_3425_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_24_fu_3425_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U725(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_25_fu_3468_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_25_fu_3468_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U726(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_26_fu_3511_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_26_fu_3511_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U727(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_27_fu_3554_p19),.sel(trunc_ln172_reg_5513),.dout(tmp_27_fu_3554_p21));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U728(.din0(mul_ln172_5_fu_3696_p0),.din1(mul_ln172_5_fu_3696_p1),.dout(mul_ln172_5_fu_3696_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U729(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_28_fu_3811_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_28_fu_3811_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U730(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_30_fu_3854_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_30_fu_3854_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U731(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_31_fu_3897_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_31_fu_3897_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U732(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_32_fu_3940_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_32_fu_3940_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U733(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_33_fu_3983_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_33_fu_3983_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U734(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_34_fu_4026_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_34_fu_4026_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U735(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_35_fu_4069_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_35_fu_4069_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U736(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_36_fu_4112_p19),.sel(trunc_ln172_4_reg_5925),.dout(tmp_36_fu_4112_p21));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U737(.din0(mul_ln172_6_fu_4254_p0),.din1(mul_ln172_6_fu_4254_p1),.dout(mul_ln172_6_fu_4254_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U738(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_37_fu_4315_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_37_fu_4315_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U739(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_38_fu_4358_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_38_fu_4358_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U740(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_39_fu_4401_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_39_fu_4401_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U741(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_40_fu_4444_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_40_fu_4444_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U742(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_41_fu_4487_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_41_fu_4487_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U743(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_42_fu_4530_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_42_fu_4530_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U744(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_43_fu_4573_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_43_fu_4573_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U745(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_44_fu_4616_p19),.sel(trunc_ln172_5_reg_6377),.dout(tmp_44_fu_4616_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U746(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_45_fu_4790_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_45_fu_4790_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U747(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_47_fu_4833_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_47_fu_4833_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U748(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_48_fu_4876_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_48_fu_4876_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U749(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_49_fu_4919_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_49_fu_4919_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U750(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_50_fu_4962_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_50_fu_4962_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U751(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_51_fu_5005_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_51_fu_5005_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U752(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_52_fu_5048_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_52_fu_5048_p21));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_19_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_19_4_64_1_1_U753(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.def(tmp_53_fu_5091_p19),.sel(trunc_ln172_6_reg_6829),.dout(tmp_53_fu_5091_p21));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U754(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5164_p0),.din1(grp_fu_5164_p1),.din2(grp_fu_5164_p2),.ce(1'b1),.dout(grp_fu_5164_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U755(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5173_p0),.din1(grp_fu_5173_p1),.din2(grp_fu_5173_p2),.ce(1'b1),.dout(grp_fu_5173_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U756(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5182_p0),.din1(grp_fu_5182_p1),.din2(grp_fu_5182_p2),.ce(1'b1),.dout(grp_fu_5182_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U757(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5191_p0),.din1(grp_fu_5191_p1),.din2(grp_fu_5191_p2),.ce(1'b1),.dout(grp_fu_5191_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U758(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5200_p0),.din1(grp_fu_5200_p1),.din2(grp_fu_5200_p2),.ce(1'b1),.dout(grp_fu_5200_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U759(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5209_p0),.din1(grp_fu_5209_p1),.din2(grp_fu_5209_p2),.ce(1'b1),.dout(grp_fu_5209_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U760(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5218_p0),.din1(grp_fu_5218_p1),.din2(grp_fu_5218_p2),.ce(1'b1),.dout(grp_fu_5218_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U761(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5227_p0),.din1(grp_fu_5227_p1),.din2(grp_fu_5227_p2),.ce(1'b1),.dout(grp_fu_5227_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U762(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5236_p0),.din1(grp_fu_5236_p1),.din2(grp_fu_5236_p2),.ce(1'b1),.dout(grp_fu_5236_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U763(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5245_p0),.din1(grp_fu_5245_p1),.din2(grp_fu_5245_p2),.ce(1'b1),.dout(grp_fu_5245_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U764(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5254_p0),.din1(grp_fu_5254_p1),.din2(grp_fu_5254_p2),.ce(1'b1),.dout(grp_fu_5254_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U765(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5263_p0),.din1(grp_fu_5263_p1),.din2(grp_fu_5263_p2),.ce(1'b1),.dout(grp_fu_5263_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U766(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5272_p0),.din1(grp_fu_5272_p1),.din2(grp_fu_5272_p2),.ce(1'b1),.dout(grp_fu_5272_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U767(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5281_p0),.din1(grp_fu_5281_p1),.din2(grp_fu_5281_p2),.ce(1'b1),.dout(grp_fu_5281_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U768(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5290_p0),.din1(grp_fu_5290_p1),.din2(grp_fu_5290_p2),.ce(1'b1),.dout(grp_fu_5290_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U769(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5299_p0),.din1(grp_fu_5299_p1),.din2(grp_fu_5299_p2),.ce(1'b1),.dout(grp_fu_5299_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U770(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5308_p0),.din1(grp_fu_5308_p1),.din2(grp_fu_5308_p2),.ce(1'b1),.dout(grp_fu_5308_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U771(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5317_p0),.din1(grp_fu_5317_p1),.din2(grp_fu_5317_p2),.ce(1'b1),.dout(grp_fu_5317_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U772(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5326_p0),.din1(grp_fu_5326_p1),.din2(grp_fu_5326_p2),.ce(1'b1),.dout(grp_fu_5326_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U773(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5335_p0),.din1(grp_fu_5335_p1),.din2(grp_fu_5335_p2),.ce(1'b1),.dout(grp_fu_5335_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U774(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5344_p0),.din1(grp_fu_5344_p1),.din2(grp_fu_5344_p2),.ce(1'b1),.dout(grp_fu_5344_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U775(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5353_p0),.din1(grp_fu_5353_p1),.din2(grp_fu_5353_p2),.ce(1'b1),.dout(grp_fu_5353_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U776(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5362_p0),.din1(grp_fu_5362_p1),.din2(grp_fu_5362_p2),.ce(1'b1),.dout(grp_fu_5362_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U777(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5371_p0),.din1(grp_fu_5371_p1),.din2(grp_fu_5371_p2),.ce(1'b1),.dout(grp_fu_5371_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U778(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5380_p0),.din1(grp_fu_5380_p1),.din2(grp_fu_5380_p2),.ce(1'b1),.dout(grp_fu_5380_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U779(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5389_p0),.din1(grp_fu_5389_p1),.din2(grp_fu_5389_p2),.ce(1'b1),.dout(grp_fu_5389_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U780(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5398_p0),.din1(grp_fu_5398_p1),.din2(grp_fu_5398_p2),.ce(1'b1),.dout(grp_fu_5398_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U781(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5407_p0),.din1(grp_fu_5407_p1),.din2(grp_fu_5407_p2),.ce(1'b1),.dout(grp_fu_5407_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_148 <= 7'd0;
    end else if (((tmp_reg_5434 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_148 <= add_ln309_fu_2900_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_4_reg_5452[8 : 1] <= offset_4_fu_2855_p4[8 : 1];
        offset_4_reg_5452_pp0_iter1_reg[8 : 1] <= offset_4_reg_5452[8 : 1];
        offset_4_reg_5452_pp0_iter2_reg[8 : 1] <= offset_4_reg_5452_pp0_iter1_reg[8 : 1];
        tmp_45_reg_7253 <= tmp_45_fu_4790_p21;
        tmp_47_reg_7258 <= tmp_47_fu_4833_p21;
        tmp_48_reg_7263 <= tmp_48_fu_4876_p21;
        tmp_49_reg_7268 <= tmp_49_fu_4919_p21;
        tmp_50_reg_7273 <= tmp_50_fu_4962_p21;
        tmp_51_reg_7278 <= tmp_51_fu_5005_p21;
        tmp_52_reg_7283 <= tmp_52_fu_5048_p21;
        tmp_53_reg_7288 <= tmp_53_fu_5091_p21;
        tmp_70_reg_5920 <= {{mul_ln172_4_fu_3170_p2[18:13]}};
        tmp_80_reg_5937 <= {{tmp_80_fu_3190_p1[20:14]}};
        tmp_81_reg_5942 <= {{tmp_81_fu_3199_p1[20:14]}};
        tmp_82_reg_5947 <= {{tmp_82_fu_3208_p1[20:14]}};
        tmp_83_reg_5952 <= {{tmp_83_fu_3217_p1[20:14]}};
        tmp_84_reg_5957 <= {{tmp_84_fu_3226_p1[20:14]}};
        tmp_85_reg_5962 <= {{tmp_85_fu_3235_p1[20:14]}};
        tmp_86_reg_5967 <= {{tmp_86_fu_3244_p1[20:14]}};
        trunc_ln172_4_reg_5925 <= trunc_ln172_4_fu_3186_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_5_reg_5459[8 : 2] <= offset_5_fu_2870_p4[8 : 2];
        offset_5_reg_5459_pp0_iter1_reg[8 : 2] <= offset_5_reg_5459[8 : 2];
        offset_5_reg_5459_pp0_iter2_reg[8 : 2] <= offset_5_reg_5459_pp0_iter1_reg[8 : 2];
        tmp_21_reg_5977 <= tmp_21_fu_3296_p21;
        tmp_22_reg_5982 <= tmp_22_fu_3339_p21;
        tmp_23_reg_5987 <= tmp_23_fu_3382_p21;
        tmp_24_reg_5992 <= tmp_24_fu_3425_p21;
        tmp_25_reg_5997 <= tmp_25_fu_3468_p21;
        tmp_26_reg_6002 <= tmp_26_fu_3511_p21;
        tmp_27_reg_6007 <= tmp_27_fu_3554_p21;
        tmp_79_reg_6372 <= {{mul_ln172_5_fu_3696_p2[18:13]}};
        tmp_89_reg_6389 <= {{tmp_89_fu_3716_p1[20:14]}};
        tmp_90_reg_6394 <= {{tmp_90_fu_3725_p1[20:14]}};
        tmp_91_reg_6399 <= {{tmp_91_fu_3734_p1[20:14]}};
        tmp_92_reg_6404 <= {{tmp_92_fu_3743_p1[20:14]}};
        tmp_93_reg_6409 <= {{tmp_93_fu_3752_p1[20:14]}};
        tmp_94_reg_6414 <= {{tmp_94_fu_3761_p1[20:14]}};
        tmp_95_reg_6419 <= {{tmp_95_fu_3770_p1[20:14]}};
        tmp_s_reg_5972 <= tmp_s_fu_3253_p21;
        trunc_ln172_5_reg_6377 <= trunc_ln172_5_fu_3712_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_6_reg_5466[8 : 2] <= offset_6_fu_2885_p4[8 : 2];
        offset_6_reg_5466_pp0_iter1_reg[8 : 2] <= offset_6_reg_5466[8 : 2];
        offset_6_reg_5466_pp0_iter2_reg[8 : 2] <= offset_6_reg_5466_pp0_iter1_reg[8 : 2];
        tmp_28_reg_6424 <= tmp_28_fu_3811_p21;
        tmp_30_reg_6429 <= tmp_30_fu_3854_p21;
        tmp_31_reg_6434 <= tmp_31_fu_3897_p21;
        tmp_32_reg_6439 <= tmp_32_fu_3940_p21;
        tmp_33_reg_6444 <= tmp_33_fu_3983_p21;
        tmp_34_reg_6449 <= tmp_34_fu_4026_p21;
        tmp_35_reg_6454 <= tmp_35_fu_4069_p21;
        tmp_36_reg_6459 <= tmp_36_fu_4112_p21;
        tmp_62_reg_5473 <= {{tmp_62_fu_2919_p1[20:14]}};
        tmp_63_reg_5478 <= {{tmp_63_fu_2928_p1[20:14]}};
        tmp_64_reg_5483 <= {{tmp_64_fu_2937_p1[20:14]}};
        tmp_65_reg_5488 <= {{tmp_65_fu_2946_p1[20:14]}};
        tmp_66_reg_5493 <= {{tmp_66_fu_2955_p1[20:14]}};
        tmp_67_reg_5498 <= {{tmp_67_fu_2964_p1[20:14]}};
        tmp_68_reg_5503 <= {{tmp_68_fu_2973_p1[20:14]}};
        tmp_88_reg_6824 <= {{mul_ln172_6_fu_4254_p2[18:13]}};
        trunc_ln172_6_reg_6829 <= trunc_ln172_6_fu_4270_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_5445 <= offset_fu_2832_p3;
        offset_reg_5445_pp0_iter1_reg <= offset_reg_5445;
        offset_reg_5445_pp0_iter2_reg <= offset_reg_5445_pp0_iter1_reg;
        shl_ln314_1_reg_6841[6 : 2] <= shl_ln314_1_fu_4283_p3[6 : 2];
        tid_2_reg_5423 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_5423_pp0_iter1_reg <= tid_2_reg_5423;
        tid_2_reg_5423_pp0_iter2_reg <= tid_2_reg_5423_pp0_iter1_reg;
        tid_2_reg_5423_pp0_iter3_reg <= tid_2_reg_5423_pp0_iter2_reg;
        tmp_37_reg_6847 <= tmp_37_fu_4315_p21;
        tmp_38_reg_6852 <= tmp_38_fu_4358_p21;
        tmp_39_reg_6857 <= tmp_39_fu_4401_p21;
        tmp_40_reg_6862 <= tmp_40_fu_4444_p21;
        tmp_41_reg_6867 <= tmp_41_fu_4487_p21;
        tmp_42_reg_6872 <= tmp_42_fu_4530_p21;
        tmp_43_reg_6877 <= tmp_43_fu_4573_p21;
        tmp_44_reg_6882 <= tmp_44_fu_4616_p21;
        tmp_46_reg_6932 <= {{tid_2_reg_5423_pp0_iter3_reg[5:2]}};
        tmp_60_reg_5438 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_61_reg_5508 <= {{mul_ln172_fu_2988_p2[18:13]}};
        tmp_71_reg_5525 <= {{tmp_71_fu_3008_p1[20:14]}};
        tmp_72_reg_5530 <= {{tmp_72_fu_3017_p1[20:14]}};
        tmp_73_reg_5535 <= {{tmp_73_fu_3026_p1[20:14]}};
        tmp_74_reg_5540 <= {{tmp_74_fu_3035_p1[20:14]}};
        tmp_75_reg_5545 <= {{tmp_75_fu_3044_p1[20:14]}};
        tmp_76_reg_5550 <= {{tmp_76_fu_3053_p1[20:14]}};
        tmp_77_reg_5555 <= {{tmp_77_fu_3062_p1[20:14]}};
        tmp_reg_5434 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_5434_pp0_iter1_reg <= tmp_reg_5434;
        tmp_reg_5434_pp0_iter2_reg <= tmp_reg_5434_pp0_iter1_reg;
        tmp_reg_5434_pp0_iter3_reg <= tmp_reg_5434_pp0_iter2_reg;
        trunc_ln172_reg_5513 <= trunc_ln172_fu_3004_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln315_7_fu_5156_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_6_fu_4782_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_5_fu_4307_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_4_fu_3803_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln314_3_fu_5141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_2_fu_4769_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_fu_3787_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_49_reg_7268;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_40_reg_6862;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_32_reg_6439;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_23_reg_5987;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_48_reg_7263;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_39_reg_6857;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_31_reg_6434;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_22_reg_5982;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address0_local = zext_ln315_7_fu_5156_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln315_6_fu_4782_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln315_5_fu_4307_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln315_4_fu_3803_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address1_local = zext_ln314_3_fu_5141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln314_2_fu_4769_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln314_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address1_local = zext_ln314_fu_3787_p1;
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d0_local = tmp_51_reg_7278;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_42_reg_6872;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_34_reg_6449;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d0_local = tmp_25_reg_5997;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d1_local = tmp_50_reg_7273;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = tmp_41_reg_6867;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_33_reg_6444;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d1_local = tmp_24_reg_5992;
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address0_local = zext_ln315_7_fu_5156_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln315_6_fu_4782_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln315_5_fu_4307_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address0_local = zext_ln315_4_fu_3803_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address1_local = zext_ln314_3_fu_5141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln314_2_fu_4769_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln314_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address1_local = zext_ln314_fu_3787_p1;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d0_local = tmp_53_reg_7288;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_44_reg_6882;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_36_reg_6459;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d0_local = tmp_27_reg_6007;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d1_local = tmp_52_reg_7283;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_43_reg_6877;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = tmp_35_reg_6454;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d1_local = tmp_26_reg_6002;
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln315_7_fu_5156_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_6_fu_4782_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln315_5_fu_4307_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_4_fu_3803_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln314_3_fu_5141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_2_fu_4769_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln314_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_fu_3787_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_47_reg_7258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_38_reg_6852;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_30_reg_6429;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_21_reg_5977;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_45_reg_7253;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_37_reg_6847;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_28_reg_6424;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_s_reg_5972;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_5434 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_5434_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_148;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_3_fu_4752_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_3_fu_4740_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_3_fu_4728_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_3_fu_4716_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_3_fu_4704_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_3_fu_4692_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_3_fu_4680_p1;
    end else if (((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_7_fu_4659_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln321_2_fu_4239_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln320_2_fu_4227_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln319_2_fu_4215_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln318_2_fu_4203_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln317_2_fu_4191_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln316_2_fu_4179_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln315_2_fu_4167_p1;
    end else if (((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_6_fu_4155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln321_1_fu_3681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln320_1_fu_3669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln319_1_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln318_1_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln317_1_fu_3633_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln316_1_fu_3621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln315_1_fu_3609_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln172_5_fu_3597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln321_fu_3155_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln320_fu_3143_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln319_fu_3131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln318_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln317_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln316_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln315_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_4_fu_3071_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5925 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_4_reg_5925 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_5513 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_5513 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_6_reg_6829 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_6829 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_5_reg_6377 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_6377 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
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
assign add_ln309_fu_2900_p2 = (tid_2_reg_5423 + 7'd4);
assign add_ln314_fu_4764_p2 = (shl_ln314_1_reg_6841 + 7'd2);
assign add_ln315_3_fu_4777_p2 = (shl_ln314_1_reg_6841 + 7'd3);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_2793_p4 = {{tid_2_reg_5423[5:2]}};
assign grp_fu_2840_p0 = {{tmp_60_fu_2818_p4}, {trunc_ln312_fu_2828_p1}};
assign grp_fu_2840_p1 = 9'd9;
assign grp_fu_2864_p0 = {{{tmp_60_reg_5438}, {tmp_69_fu_2846_p4}}, {1'd1}};
assign grp_fu_2864_p1 = 9'd9;
assign grp_fu_2879_p0 = {{{tmp_60_reg_5438}, {grp_fu_2793_p4}}, {2'd2}};
assign grp_fu_2879_p1 = 9'd9;
assign grp_fu_2894_p0 = {{{tmp_60_reg_5438}, {grp_fu_2793_p4}}, {2'd3}};
assign grp_fu_2894_p1 = 9'd9;
assign grp_fu_5164_p0 = zext_ln172_fu_2910_p1;
assign grp_fu_5164_p1 = 10'd32;
assign grp_fu_5164_p2 = 21'd1821;
assign grp_fu_5173_p0 = zext_ln172_fu_2910_p1;
assign grp_fu_5173_p1 = 10'd8;
assign grp_fu_5173_p2 = 21'd1821;
assign grp_fu_5182_p0 = zext_ln172_fu_2910_p1;
assign grp_fu_5182_p1 = 10'd40;
assign grp_fu_5182_p2 = 21'd1821;
assign grp_fu_5191_p0 = zext_ln172_fu_2910_p1;
assign grp_fu_5191_p1 = 10'd16;
assign grp_fu_5191_p2 = 21'd1821;
assign grp_fu_5200_p0 = zext_ln172_fu_2910_p1;
assign grp_fu_5200_p1 = 10'd48;
assign grp_fu_5200_p2 = 21'd1821;
assign grp_fu_5209_p0 = zext_ln172_fu_2910_p1;
assign grp_fu_5209_p1 = 10'd24;
assign grp_fu_5209_p2 = 21'd1821;
assign grp_fu_5218_p0 = zext_ln172_fu_2910_p1;
assign grp_fu_5218_p1 = 10'd56;
assign grp_fu_5218_p2 = 21'd1821;
assign grp_fu_5227_p0 = zext_ln172_21_fu_2913_p1;
assign grp_fu_5227_p1 = 10'd32;
assign grp_fu_5227_p2 = 21'd1821;
assign grp_fu_5236_p0 = zext_ln172_21_fu_2913_p1;
assign grp_fu_5236_p1 = 10'd8;
assign grp_fu_5236_p2 = 21'd1821;
assign grp_fu_5245_p0 = zext_ln172_21_fu_2913_p1;
assign grp_fu_5245_p1 = 10'd40;
assign grp_fu_5245_p2 = 21'd1821;
assign grp_fu_5254_p0 = zext_ln172_21_fu_2913_p1;
assign grp_fu_5254_p1 = 10'd16;
assign grp_fu_5254_p2 = 21'd1821;
assign grp_fu_5263_p0 = zext_ln172_21_fu_2913_p1;
assign grp_fu_5263_p1 = 10'd48;
assign grp_fu_5263_p2 = 21'd1821;
assign grp_fu_5272_p0 = zext_ln172_21_fu_2913_p1;
assign grp_fu_5272_p1 = 10'd24;
assign grp_fu_5272_p2 = 21'd1821;
assign grp_fu_5281_p0 = zext_ln172_21_fu_2913_p1;
assign grp_fu_5281_p1 = 10'd56;
assign grp_fu_5281_p2 = 21'd1821;
assign grp_fu_5290_p0 = zext_ln172_23_fu_2916_p1;
assign grp_fu_5290_p1 = 10'd32;
assign grp_fu_5290_p2 = 21'd1821;
assign grp_fu_5299_p0 = zext_ln172_23_fu_2916_p1;
assign grp_fu_5299_p1 = 10'd8;
assign grp_fu_5299_p2 = 21'd1821;
assign grp_fu_5308_p0 = zext_ln172_23_fu_2916_p1;
assign grp_fu_5308_p1 = 10'd40;
assign grp_fu_5308_p2 = 21'd1821;
assign grp_fu_5317_p0 = zext_ln172_23_fu_2916_p1;
assign grp_fu_5317_p1 = 10'd16;
assign grp_fu_5317_p2 = 21'd1821;
assign grp_fu_5326_p0 = zext_ln172_23_fu_2916_p1;
assign grp_fu_5326_p1 = 10'd48;
assign grp_fu_5326_p2 = 21'd1821;
assign grp_fu_5335_p0 = zext_ln172_23_fu_2916_p1;
assign grp_fu_5335_p1 = 10'd24;
assign grp_fu_5335_p2 = 21'd1821;
assign grp_fu_5344_p0 = zext_ln172_23_fu_2916_p1;
assign grp_fu_5344_p1 = 10'd56;
assign grp_fu_5344_p2 = 21'd1821;
assign grp_fu_5353_p0 = zext_ln172_25_fu_2982_p1;
assign grp_fu_5353_p1 = 10'd32;
assign grp_fu_5353_p2 = 21'd1821;
assign grp_fu_5362_p0 = zext_ln172_25_fu_2982_p1;
assign grp_fu_5362_p1 = 10'd8;
assign grp_fu_5362_p2 = 21'd1821;
assign grp_fu_5371_p0 = zext_ln172_25_fu_2982_p1;
assign grp_fu_5371_p1 = 10'd40;
assign grp_fu_5371_p2 = 21'd1821;
assign grp_fu_5380_p0 = zext_ln172_25_fu_2982_p1;
assign grp_fu_5380_p1 = 10'd16;
assign grp_fu_5380_p2 = 21'd1821;
assign grp_fu_5389_p0 = zext_ln172_25_fu_2982_p1;
assign grp_fu_5389_p1 = 10'd48;
assign grp_fu_5389_p2 = 21'd1821;
assign grp_fu_5398_p0 = zext_ln172_25_fu_2982_p1;
assign grp_fu_5398_p1 = 10'd24;
assign grp_fu_5398_p2 = 21'd1821;
assign grp_fu_5407_p0 = zext_ln172_25_fu_2982_p1;
assign grp_fu_5407_p1 = 10'd56;
assign grp_fu_5407_p2 = 21'd1821;
assign mul_ln172_4_fu_3170_p0 = mul_ln172_4_fu_3170_p00;
assign mul_ln172_4_fu_3170_p00 = offset_4_reg_5452_pp0_iter2_reg;
assign mul_ln172_4_fu_3170_p1 = 19'd911;
assign mul_ln172_5_fu_3696_p0 = mul_ln172_5_fu_3696_p00;
assign mul_ln172_5_fu_3696_p00 = offset_5_reg_5459_pp0_iter2_reg;
assign mul_ln172_5_fu_3696_p1 = 19'd911;
assign mul_ln172_6_fu_4254_p0 = mul_ln172_6_fu_4254_p00;
assign mul_ln172_6_fu_4254_p00 = offset_6_reg_5466_pp0_iter2_reg;
assign mul_ln172_6_fu_4254_p1 = 19'd911;
assign mul_ln172_fu_2988_p0 = mul_ln172_fu_2988_p00;
assign mul_ln172_fu_2988_p00 = offset_reg_5445_pp0_iter2_reg;
assign mul_ln172_fu_2988_p1 = 19'd911;
assign offset_4_fu_2855_p4 = {{{tmp_60_reg_5438}, {tmp_69_fu_2846_p4}}, {1'd1}};
assign offset_5_fu_2870_p4 = {{{tmp_60_reg_5438}, {grp_fu_2793_p4}}, {2'd2}};
assign offset_6_fu_2885_p4 = {{{tmp_60_reg_5438}, {grp_fu_2793_p4}}, {2'd3}};
assign offset_fu_2832_p3 = {{tmp_60_fu_2818_p4}, {trunc_ln312_fu_2828_p1}};
assign or_ln2_fu_5134_p3 = {{tmp_46_reg_6932}, {3'd6}};
assign or_ln315_1_fu_4299_p3 = {{tmp_29_fu_4274_p4}, {2'd3}};
assign or_ln315_2_fu_5149_p3 = {{tmp_46_reg_6932}, {3'd7}};
assign or_ln_fu_3795_p3 = {{trunc_ln314_fu_3779_p1}, {1'd1}};
assign shl_ln314_1_fu_4283_p3 = {{tmp_29_fu_4274_p4}, {2'd2}};
assign shl_ln314_fu_3782_p2 = tid_2_reg_5423_pp0_iter3_reg << 7'd1;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_21_fu_3296_p19 = 'bx;
assign tmp_22_fu_3339_p19 = 'bx;
assign tmp_23_fu_3382_p19 = 'bx;
assign tmp_24_fu_3425_p19 = 'bx;
assign tmp_25_fu_3468_p19 = 'bx;
assign tmp_26_fu_3511_p19 = 'bx;
assign tmp_27_fu_3554_p19 = 'bx;
assign tmp_28_fu_3811_p19 = 'bx;
assign tmp_29_fu_4274_p4 = {{tid_2_reg_5423_pp0_iter3_reg[5:1]}};
assign tmp_30_fu_3854_p19 = 'bx;
assign tmp_31_fu_3897_p19 = 'bx;
assign tmp_32_fu_3940_p19 = 'bx;
assign tmp_33_fu_3983_p19 = 'bx;
assign tmp_34_fu_4026_p19 = 'bx;
assign tmp_35_fu_4069_p19 = 'bx;
assign tmp_36_fu_4112_p19 = 'bx;
assign tmp_37_fu_4315_p19 = 'bx;
assign tmp_38_fu_4358_p19 = 'bx;
assign tmp_39_fu_4401_p19 = 'bx;
assign tmp_40_fu_4444_p19 = 'bx;
assign tmp_41_fu_4487_p19 = 'bx;
assign tmp_42_fu_4530_p19 = 'bx;
assign tmp_43_fu_4573_p19 = 'bx;
assign tmp_44_fu_4616_p19 = 'bx;
assign tmp_45_fu_4790_p19 = 'bx;
assign tmp_47_fu_4833_p19 = 'bx;
assign tmp_48_fu_4876_p19 = 'bx;
assign tmp_49_fu_4919_p19 = 'bx;
assign tmp_50_fu_4962_p19 = 'bx;
assign tmp_51_fu_5005_p19 = 'bx;
assign tmp_52_fu_5048_p19 = 'bx;
assign tmp_53_fu_5091_p19 = 'bx;
assign tmp_60_fu_2818_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_62_fu_2919_p1 = grp_fu_5164_p3;
assign tmp_63_fu_2928_p1 = grp_fu_5173_p3;
assign tmp_64_fu_2937_p1 = grp_fu_5182_p3;
assign tmp_65_fu_2946_p1 = grp_fu_5191_p3;
assign tmp_66_fu_2955_p1 = grp_fu_5200_p3;
assign tmp_67_fu_2964_p1 = grp_fu_5209_p3;
assign tmp_68_fu_2973_p1 = grp_fu_5218_p3;
assign tmp_69_fu_2846_p4 = {{tid_2_reg_5423[5:1]}};
assign tmp_71_fu_3008_p1 = grp_fu_5227_p3;
assign tmp_72_fu_3017_p1 = grp_fu_5236_p3;
assign tmp_73_fu_3026_p1 = grp_fu_5245_p3;
assign tmp_74_fu_3035_p1 = grp_fu_5254_p3;
assign tmp_75_fu_3044_p1 = grp_fu_5263_p3;
assign tmp_76_fu_3053_p1 = grp_fu_5272_p3;
assign tmp_77_fu_3062_p1 = grp_fu_5281_p3;
assign tmp_80_fu_3190_p1 = grp_fu_5290_p3;
assign tmp_81_fu_3199_p1 = grp_fu_5299_p3;
assign tmp_82_fu_3208_p1 = grp_fu_5308_p3;
assign tmp_83_fu_3217_p1 = grp_fu_5317_p3;
assign tmp_84_fu_3226_p1 = grp_fu_5326_p3;
assign tmp_85_fu_3235_p1 = grp_fu_5335_p3;
assign tmp_86_fu_3244_p1 = grp_fu_5344_p3;
assign tmp_89_fu_3716_p1 = grp_fu_5353_p3;
assign tmp_90_fu_3725_p1 = grp_fu_5362_p3;
assign tmp_91_fu_3734_p1 = grp_fu_5371_p3;
assign tmp_92_fu_3743_p1 = grp_fu_5380_p3;
assign tmp_93_fu_3752_p1 = grp_fu_5389_p3;
assign tmp_94_fu_3761_p1 = grp_fu_5398_p3;
assign tmp_95_fu_3770_p1 = grp_fu_5407_p3;
assign tmp_s_fu_3253_p19 = 'bx;
assign trunc_ln172_4_fu_3186_p1 = grp_fu_2864_p2[3:0];
assign trunc_ln172_5_fu_3712_p1 = grp_fu_2879_p2[3:0];
assign trunc_ln172_6_fu_4270_p1 = grp_fu_2894_p2[3:0];
assign trunc_ln172_fu_3004_p1 = grp_fu_2840_p2[3:0];
assign trunc_ln312_fu_2828_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_3779_p1 = tid_2_reg_5423_pp0_iter3_reg[5:0];
assign zext_ln172_21_fu_2913_p1 = offset_4_reg_5452_pp0_iter1_reg;
assign zext_ln172_23_fu_2916_p1 = offset_5_reg_5459_pp0_iter1_reg;
assign zext_ln172_25_fu_2982_p1 = offset_6_reg_5466_pp0_iter1_reg;
assign zext_ln172_4_fu_3071_p1 = tmp_61_reg_5508;
assign zext_ln172_5_fu_3597_p1 = tmp_70_reg_5920;
assign zext_ln172_6_fu_4155_p1 = tmp_79_reg_6372;
assign zext_ln172_7_fu_4659_p1 = tmp_88_reg_6824;
assign zext_ln172_fu_2910_p1 = offset_reg_5445_pp0_iter1_reg;
assign zext_ln314_1_fu_4291_p1 = shl_ln314_1_fu_4283_p3;
assign zext_ln314_2_fu_4769_p1 = add_ln314_fu_4764_p2;
assign zext_ln314_3_fu_5141_p1 = or_ln2_fu_5134_p3;
assign zext_ln314_fu_3787_p1 = shl_ln314_fu_3782_p2;
assign zext_ln315_1_fu_3609_p1 = tmp_71_reg_5525;
assign zext_ln315_2_fu_4167_p1 = tmp_80_reg_5937;
assign zext_ln315_3_fu_4680_p1 = tmp_89_reg_6389;
assign zext_ln315_4_fu_3803_p1 = or_ln_fu_3795_p3;
assign zext_ln315_5_fu_4307_p1 = or_ln315_1_fu_4299_p3;
assign zext_ln315_6_fu_4782_p1 = add_ln315_3_fu_4777_p2;
assign zext_ln315_7_fu_5156_p1 = or_ln315_2_fu_5149_p3;
assign zext_ln315_fu_3083_p1 = tmp_62_reg_5473;
assign zext_ln316_1_fu_3621_p1 = tmp_72_reg_5530;
assign zext_ln316_2_fu_4179_p1 = tmp_81_reg_5942;
assign zext_ln316_3_fu_4692_p1 = tmp_90_reg_6394;
assign zext_ln316_fu_3095_p1 = tmp_63_reg_5478;
assign zext_ln317_1_fu_3633_p1 = tmp_73_reg_5535;
assign zext_ln317_2_fu_4191_p1 = tmp_82_reg_5947;
assign zext_ln317_3_fu_4704_p1 = tmp_91_reg_6399;
assign zext_ln317_fu_3107_p1 = tmp_64_reg_5483;
assign zext_ln318_1_fu_3645_p1 = tmp_74_reg_5540;
assign zext_ln318_2_fu_4203_p1 = tmp_83_reg_5952;
assign zext_ln318_3_fu_4716_p1 = tmp_92_reg_6404;
assign zext_ln318_fu_3119_p1 = tmp_65_reg_5488;
assign zext_ln319_1_fu_3657_p1 = tmp_75_reg_5545;
assign zext_ln319_2_fu_4215_p1 = tmp_84_reg_5957;
assign zext_ln319_3_fu_4728_p1 = tmp_93_reg_6409;
assign zext_ln319_fu_3131_p1 = tmp_66_reg_5493;
assign zext_ln320_1_fu_3669_p1 = tmp_76_reg_5550;
assign zext_ln320_2_fu_4227_p1 = tmp_85_reg_5962;
assign zext_ln320_3_fu_4740_p1 = tmp_94_reg_6414;
assign zext_ln320_fu_3143_p1 = tmp_67_reg_5498;
assign zext_ln321_1_fu_3681_p1 = tmp_77_reg_5555;
assign zext_ln321_2_fu_4239_p1 = tmp_86_reg_5967;
assign zext_ln321_3_fu_4752_p1 = tmp_95_reg_6419;
assign zext_ln321_fu_3155_p1 = tmp_68_reg_5503;
always @ (posedge ap_clk) begin
    offset_4_reg_5452[0] <= 1'b1;
    offset_4_reg_5452_pp0_iter1_reg[0] <= 1'b1;
    offset_4_reg_5452_pp0_iter2_reg[0] <= 1'b1;
    offset_5_reg_5459[1:0] <= 2'b10;
    offset_5_reg_5459_pp0_iter1_reg[1:0] <= 2'b10;
    offset_5_reg_5459_pp0_iter2_reg[1:0] <= 2'b10;
    offset_6_reg_5466[1:0] <= 2'b11;
    offset_6_reg_5466_pp0_iter1_reg[1:0] <= 2'b11;
    offset_6_reg_5466_pp0_iter2_reg[1:0] <= 2'b11;
    shl_ln314_1_reg_6841[1:0] <= 2'b10;
end
endmodule 
