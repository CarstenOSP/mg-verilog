
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1);  
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
output  [6:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
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
reg   [0:0] tmp_reg_4610;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_4599;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_4599_pp0_iter1_reg;
reg   [6:0] tid_2_reg_4599_pp0_iter2_reg;
reg   [6:0] tid_2_reg_4599_pp0_iter3_reg;
reg   [0:0] tmp_reg_4610_pp0_iter1_reg;
reg   [0:0] tmp_reg_4610_pp0_iter2_reg;
reg   [0:0] tmp_reg_4610_pp0_iter3_reg;
wire   [2:0] tmp_66_fu_2314_p4;
reg   [2:0] tmp_66_reg_4614;
wire   [8:0] offset_fu_2328_p3;
reg   [8:0] offset_reg_4621;
reg   [8:0] offset_reg_4621_pp0_iter1_reg;
reg   [8:0] offset_reg_4621_pp0_iter2_reg;
wire   [8:0] offset_4_fu_2351_p4;
reg   [8:0] offset_4_reg_4628;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_4_reg_4628_pp0_iter1_reg;
reg   [8:0] offset_4_reg_4628_pp0_iter2_reg;
wire   [8:0] offset_5_fu_2366_p4;
reg   [8:0] offset_5_reg_4635;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [8:0] offset_5_reg_4635_pp0_iter1_reg;
reg   [8:0] offset_5_reg_4635_pp0_iter2_reg;
wire   [8:0] offset_6_fu_2381_p4;
reg   [8:0] offset_6_reg_4642;
wire    ap_block_pp0_stage3_11001;
reg   [8:0] offset_6_reg_4642_pp0_iter1_reg;
reg   [8:0] offset_6_reg_4642_pp0_iter2_reg;
reg   [7:0] tmp_68_reg_4649;
reg   [7:0] tmp_69_reg_4654;
reg   [7:0] tmp_70_reg_4659;
reg   [7:0] tmp_71_reg_4664;
reg   [7:0] tmp_72_reg_4669;
reg   [7:0] tmp_73_reg_4674;
reg   [7:0] tmp_74_reg_4679;
reg   [6:0] tmp_67_reg_4684;
wire   [2:0] trunc_ln172_fu_2500_p1;
reg   [2:0] trunc_ln172_reg_4689;
reg   [7:0] tmp_77_reg_4701;
reg   [7:0] tmp_78_reg_4706;
reg   [7:0] tmp_79_reg_4711;
reg   [7:0] tmp_80_reg_4716;
reg   [7:0] tmp_81_reg_4721;
reg   [7:0] tmp_82_reg_4726;
reg   [7:0] tmp_83_reg_4731;
reg   [6:0] tmp_76_reg_5016;
wire   [2:0] trunc_ln172_4_fu_2666_p1;
reg   [2:0] trunc_ln172_4_reg_5021;
reg   [7:0] tmp_86_reg_5033;
reg   [7:0] tmp_87_reg_5038;
reg   [7:0] tmp_88_reg_5043;
reg   [7:0] tmp_89_reg_5048;
reg   [7:0] tmp_90_reg_5053;
reg   [7:0] tmp_91_reg_5058;
reg   [7:0] tmp_92_reg_5063;
wire   [63:0] tmp_s_fu_2733_p17;
reg   [63:0] tmp_s_reg_5068;
wire   [63:0] tmp_21_fu_2768_p17;
reg   [63:0] tmp_21_reg_5073;
wire   [63:0] tmp_22_fu_2803_p17;
reg   [63:0] tmp_22_reg_5078;
wire   [63:0] tmp_23_fu_2838_p17;
reg   [63:0] tmp_23_reg_5083;
wire   [63:0] tmp_24_fu_2873_p17;
reg   [63:0] tmp_24_reg_5088;
wire   [63:0] tmp_25_fu_2908_p17;
reg   [63:0] tmp_25_reg_5093;
wire   [63:0] tmp_26_fu_2943_p17;
reg   [63:0] tmp_26_reg_5098;
wire   [63:0] tmp_27_fu_2978_p17;
reg   [63:0] tmp_27_reg_5103;
reg   [6:0] tmp_85_reg_5388;
wire   [2:0] trunc_ln172_5_fu_3112_p1;
reg   [2:0] trunc_ln172_5_reg_5393;
reg   [7:0] tmp_95_reg_5405;
reg   [7:0] tmp_96_reg_5410;
reg   [7:0] tmp_97_reg_5415;
reg   [7:0] tmp_98_reg_5420;
reg   [7:0] tmp_99_reg_5425;
reg   [7:0] tmp_100_reg_5430;
reg   [7:0] tmp_101_reg_5435;
wire   [63:0] tmp_28_fu_3211_p17;
reg   [63:0] tmp_28_reg_5440;
wire   [63:0] tmp_30_fu_3246_p17;
reg   [63:0] tmp_30_reg_5445;
wire   [63:0] tmp_31_fu_3281_p17;
reg   [63:0] tmp_31_reg_5450;
wire   [63:0] tmp_32_fu_3316_p17;
reg   [63:0] tmp_32_reg_5455;
wire   [63:0] tmp_33_fu_3351_p17;
reg   [63:0] tmp_33_reg_5460;
wire   [63:0] tmp_34_fu_3386_p17;
reg   [63:0] tmp_34_reg_5465;
wire   [63:0] tmp_35_fu_3421_p17;
reg   [63:0] tmp_35_reg_5470;
wire   [63:0] tmp_36_fu_3456_p17;
reg   [63:0] tmp_36_reg_5475;
reg   [6:0] tmp_94_reg_5760;
wire   [2:0] trunc_ln172_6_fu_3590_p1;
reg   [2:0] trunc_ln172_6_reg_5765;
wire   [6:0] shl_ln314_1_fu_3603_p3;
reg   [6:0] shl_ln314_1_reg_5777;
wire   [63:0] tmp_37_fu_3635_p17;
reg   [63:0] tmp_37_reg_5783;
wire   [63:0] tmp_38_fu_3670_p17;
reg   [63:0] tmp_38_reg_5788;
wire   [63:0] tmp_39_fu_3705_p17;
reg   [63:0] tmp_39_reg_5793;
wire   [63:0] tmp_40_fu_3740_p17;
reg   [63:0] tmp_40_reg_5798;
wire   [63:0] tmp_41_fu_3775_p17;
reg   [63:0] tmp_41_reg_5803;
wire   [63:0] tmp_42_fu_3810_p17;
reg   [63:0] tmp_42_reg_5808;
wire   [63:0] tmp_43_fu_3845_p17;
reg   [63:0] tmp_43_reg_5813;
wire   [63:0] tmp_44_fu_3880_p17;
reg   [63:0] tmp_44_reg_5818;
reg   [3:0] tmp_46_reg_5858;
wire   [63:0] tmp_45_fu_4030_p17;
reg   [63:0] tmp_45_reg_6109;
wire   [63:0] tmp_47_fu_4065_p17;
reg   [63:0] tmp_47_reg_6114;
wire   [63:0] tmp_48_fu_4100_p17;
reg   [63:0] tmp_48_reg_6119;
wire   [63:0] tmp_49_fu_4135_p17;
reg   [63:0] tmp_49_reg_6124;
wire   [63:0] tmp_50_fu_4170_p17;
reg   [63:0] tmp_50_reg_6129;
wire   [63:0] tmp_51_fu_4205_p17;
reg   [63:0] tmp_51_reg_6134;
wire   [63:0] tmp_52_fu_4240_p17;
reg   [63:0] tmp_52_reg_6139;
wire   [63:0] tmp_53_fu_4275_p17;
reg   [63:0] tmp_53_reg_6144;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_10_fu_2567_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_2577_p1;
wire   [63:0] zext_ln316_fu_2587_p1;
wire   [63:0] zext_ln317_fu_2597_p1;
wire   [63:0] zext_ln318_fu_2607_p1;
wire   [63:0] zext_ln319_fu_2617_p1;
wire   [63:0] zext_ln320_fu_2627_p1;
wire   [63:0] zext_ln321_fu_2637_p1;
wire   [63:0] zext_ln172_11_fu_3013_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln315_1_fu_3023_p1;
wire   [63:0] zext_ln316_1_fu_3033_p1;
wire   [63:0] zext_ln317_1_fu_3043_p1;
wire   [63:0] zext_ln318_1_fu_3053_p1;
wire   [63:0] zext_ln319_1_fu_3063_p1;
wire   [63:0] zext_ln320_1_fu_3073_p1;
wire   [63:0] zext_ln321_1_fu_3083_p1;
wire   [63:0] zext_ln314_fu_3187_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_4_fu_3203_p1;
wire   [63:0] zext_ln172_12_fu_3491_p1;
wire   [63:0] zext_ln315_2_fu_3501_p1;
wire   [63:0] zext_ln316_2_fu_3511_p1;
wire   [63:0] zext_ln317_2_fu_3521_p1;
wire   [63:0] zext_ln318_2_fu_3531_p1;
wire   [63:0] zext_ln319_2_fu_3541_p1;
wire   [63:0] zext_ln320_2_fu_3551_p1;
wire   [63:0] zext_ln321_2_fu_3561_p1;
wire   [63:0] zext_ln314_1_fu_3611_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_5_fu_3627_p1;
wire   [63:0] zext_ln172_13_fu_3915_p1;
wire   [63:0] zext_ln315_3_fu_3934_p1;
wire   [63:0] zext_ln316_3_fu_3944_p1;
wire   [63:0] zext_ln317_3_fu_3954_p1;
wire   [63:0] zext_ln318_3_fu_3964_p1;
wire   [63:0] zext_ln319_3_fu_3974_p1;
wire   [63:0] zext_ln320_3_fu_3984_p1;
wire   [63:0] zext_ln321_3_fu_3994_p1;
wire   [63:0] zext_ln314_2_fu_4009_p1;
wire   [63:0] zext_ln315_6_fu_4022_p1;
wire   [63:0] zext_ln314_3_fu_4317_p1;
wire   [63:0] zext_ln315_7_fu_4332_p1;
reg   [6:0] tid_fu_138;
wire   [6:0] add_ln309_fu_2396_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
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
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    smem_6_ce1_local;
reg   [6:0] smem_6_address1_local;
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
wire   [5:0] trunc_ln312_fu_2324_p1;
wire   [8:0] grp_fu_2336_p0;
wire   [3:0] grp_fu_2336_p1;
wire   [4:0] tmp_75_fu_2342_p4;
wire   [8:0] grp_fu_2360_p0;
wire   [3:0] grp_fu_2360_p1;
wire   [3:0] grp_fu_2289_p4;
wire   [8:0] grp_fu_2375_p0;
wire   [3:0] grp_fu_2375_p1;
wire   [8:0] grp_fu_2390_p0;
wire   [3:0] grp_fu_2390_p1;
wire   [20:0] tmp_68_fu_2415_p1;
wire  signed [20:0] grp_fu_4340_p3;
wire   [20:0] tmp_69_fu_2424_p1;
wire  signed [20:0] grp_fu_4349_p3;
wire   [20:0] tmp_70_fu_2433_p1;
wire  signed [20:0] grp_fu_4358_p3;
wire   [20:0] tmp_71_fu_2442_p1;
wire  signed [20:0] grp_fu_4367_p3;
wire   [20:0] tmp_72_fu_2451_p1;
wire  signed [20:0] grp_fu_4376_p3;
wire   [20:0] tmp_73_fu_2460_p1;
wire  signed [20:0] grp_fu_4385_p3;
wire   [20:0] tmp_74_fu_2469_p1;
wire  signed [20:0] grp_fu_4394_p3;
wire   [8:0] mul_ln172_fu_2484_p0;
wire   [10:0] mul_ln172_fu_2484_p1;
wire   [18:0] mul_ln172_fu_2484_p2;
wire   [2:0] grp_fu_2336_p2;
wire   [20:0] tmp_77_fu_2504_p1;
wire  signed [20:0] grp_fu_4403_p3;
wire   [20:0] tmp_78_fu_2513_p1;
wire  signed [20:0] grp_fu_4412_p3;
wire   [20:0] tmp_79_fu_2522_p1;
wire  signed [20:0] grp_fu_4421_p3;
wire   [20:0] tmp_80_fu_2531_p1;
wire  signed [20:0] grp_fu_4430_p3;
wire   [20:0] tmp_81_fu_2540_p1;
wire  signed [20:0] grp_fu_4439_p3;
wire   [20:0] tmp_82_fu_2549_p1;
wire  signed [20:0] grp_fu_4448_p3;
wire   [20:0] tmp_83_fu_2558_p1;
wire  signed [20:0] grp_fu_4457_p3;
wire   [8:0] mul_ln172_4_fu_2650_p0;
wire   [10:0] mul_ln172_4_fu_2650_p1;
wire   [18:0] mul_ln172_4_fu_2650_p2;
wire   [2:0] grp_fu_2360_p2;
wire   [20:0] tmp_86_fu_2670_p1;
wire  signed [20:0] grp_fu_4466_p3;
wire   [20:0] tmp_87_fu_2679_p1;
wire  signed [20:0] grp_fu_4475_p3;
wire   [20:0] tmp_88_fu_2688_p1;
wire  signed [20:0] grp_fu_4484_p3;
wire   [20:0] tmp_89_fu_2697_p1;
wire  signed [20:0] grp_fu_4493_p3;
wire   [20:0] tmp_90_fu_2706_p1;
wire  signed [20:0] grp_fu_4502_p3;
wire   [20:0] tmp_91_fu_2715_p1;
wire  signed [20:0] grp_fu_4511_p3;
wire   [20:0] tmp_92_fu_2724_p1;
wire  signed [20:0] grp_fu_4520_p3;
wire   [63:0] tmp_s_fu_2733_p15;
wire   [63:0] tmp_21_fu_2768_p15;
wire   [63:0] tmp_22_fu_2803_p15;
wire   [63:0] tmp_23_fu_2838_p15;
wire   [63:0] tmp_24_fu_2873_p15;
wire   [63:0] tmp_25_fu_2908_p15;
wire   [63:0] tmp_26_fu_2943_p15;
wire   [63:0] tmp_27_fu_2978_p15;
wire   [8:0] mul_ln172_5_fu_3096_p0;
wire   [10:0] mul_ln172_5_fu_3096_p1;
wire   [18:0] mul_ln172_5_fu_3096_p2;
wire   [2:0] grp_fu_2375_p2;
wire   [20:0] tmp_95_fu_3116_p1;
wire  signed [20:0] grp_fu_4529_p3;
wire   [20:0] tmp_96_fu_3125_p1;
wire  signed [20:0] grp_fu_4538_p3;
wire   [20:0] tmp_97_fu_3134_p1;
wire  signed [20:0] grp_fu_4547_p3;
wire   [20:0] tmp_98_fu_3143_p1;
wire  signed [20:0] grp_fu_4556_p3;
wire   [20:0] tmp_99_fu_3152_p1;
wire  signed [20:0] grp_fu_4565_p3;
wire   [20:0] tmp_100_fu_3161_p1;
wire  signed [20:0] grp_fu_4574_p3;
wire   [20:0] tmp_101_fu_3170_p1;
wire  signed [20:0] grp_fu_4583_p3;
wire   [6:0] shl_ln314_fu_3182_p2;
wire   [5:0] trunc_ln314_fu_3179_p1;
wire   [6:0] or_ln_fu_3195_p3;
wire   [63:0] tmp_28_fu_3211_p15;
wire   [63:0] tmp_30_fu_3246_p15;
wire   [63:0] tmp_31_fu_3281_p15;
wire   [63:0] tmp_32_fu_3316_p15;
wire   [63:0] tmp_33_fu_3351_p15;
wire   [63:0] tmp_34_fu_3386_p15;
wire   [63:0] tmp_35_fu_3421_p15;
wire   [63:0] tmp_36_fu_3456_p15;
wire   [8:0] mul_ln172_6_fu_3574_p0;
wire   [10:0] mul_ln172_6_fu_3574_p1;
wire   [18:0] mul_ln172_6_fu_3574_p2;
wire   [2:0] grp_fu_2390_p2;
wire   [4:0] tmp_29_fu_3594_p4;
wire   [6:0] or_ln315_1_fu_3619_p3;
wire   [63:0] tmp_37_fu_3635_p15;
wire   [63:0] tmp_38_fu_3670_p15;
wire   [63:0] tmp_39_fu_3705_p15;
wire   [63:0] tmp_40_fu_3740_p15;
wire   [63:0] tmp_41_fu_3775_p15;
wire   [63:0] tmp_42_fu_3810_p15;
wire   [63:0] tmp_43_fu_3845_p15;
wire   [63:0] tmp_44_fu_3880_p15;
wire   [6:0] add_ln314_fu_4004_p2;
wire   [6:0] add_ln315_3_fu_4017_p2;
wire   [63:0] tmp_45_fu_4030_p15;
wire   [63:0] tmp_47_fu_4065_p15;
wire   [63:0] tmp_48_fu_4100_p15;
wire   [63:0] tmp_49_fu_4135_p15;
wire   [63:0] tmp_50_fu_4170_p15;
wire   [63:0] tmp_51_fu_4205_p15;
wire   [63:0] tmp_52_fu_4240_p15;
wire   [63:0] tmp_53_fu_4275_p15;
wire   [6:0] or_ln2_fu_4310_p3;
wire   [6:0] or_ln315_2_fu_4325_p3;
wire   [8:0] grp_fu_4340_p0;
wire   [9:0] zext_ln172_fu_2406_p1;
wire   [5:0] grp_fu_4340_p1;
wire   [10:0] grp_fu_4340_p2;
wire   [8:0] grp_fu_4349_p0;
wire   [3:0] grp_fu_4349_p1;
wire   [10:0] grp_fu_4349_p2;
wire   [8:0] grp_fu_4358_p0;
wire   [5:0] grp_fu_4358_p1;
wire   [10:0] grp_fu_4358_p2;
wire   [8:0] grp_fu_4367_p0;
wire   [4:0] grp_fu_4367_p1;
wire   [10:0] grp_fu_4367_p2;
wire   [8:0] grp_fu_4376_p0;
wire   [5:0] grp_fu_4376_p1;
wire   [10:0] grp_fu_4376_p2;
wire   [8:0] grp_fu_4385_p0;
wire   [4:0] grp_fu_4385_p1;
wire   [10:0] grp_fu_4385_p2;
wire   [8:0] grp_fu_4394_p0;
wire   [5:0] grp_fu_4394_p1;
wire   [10:0] grp_fu_4394_p2;
wire   [8:0] grp_fu_4403_p0;
wire   [9:0] zext_ln172_21_fu_2409_p1;
wire   [5:0] grp_fu_4403_p1;
wire   [10:0] grp_fu_4403_p2;
wire   [8:0] grp_fu_4412_p0;
wire   [3:0] grp_fu_4412_p1;
wire   [10:0] grp_fu_4412_p2;
wire   [8:0] grp_fu_4421_p0;
wire   [5:0] grp_fu_4421_p1;
wire   [10:0] grp_fu_4421_p2;
wire   [8:0] grp_fu_4430_p0;
wire   [4:0] grp_fu_4430_p1;
wire   [10:0] grp_fu_4430_p2;
wire   [8:0] grp_fu_4439_p0;
wire   [5:0] grp_fu_4439_p1;
wire   [10:0] grp_fu_4439_p2;
wire   [8:0] grp_fu_4448_p0;
wire   [4:0] grp_fu_4448_p1;
wire   [10:0] grp_fu_4448_p2;
wire   [8:0] grp_fu_4457_p0;
wire   [5:0] grp_fu_4457_p1;
wire   [10:0] grp_fu_4457_p2;
wire   [8:0] grp_fu_4466_p0;
wire   [9:0] zext_ln172_23_fu_2412_p1;
wire   [5:0] grp_fu_4466_p1;
wire   [10:0] grp_fu_4466_p2;
wire   [8:0] grp_fu_4475_p0;
wire   [3:0] grp_fu_4475_p1;
wire   [10:0] grp_fu_4475_p2;
wire   [8:0] grp_fu_4484_p0;
wire   [5:0] grp_fu_4484_p1;
wire   [10:0] grp_fu_4484_p2;
wire   [8:0] grp_fu_4493_p0;
wire   [4:0] grp_fu_4493_p1;
wire   [10:0] grp_fu_4493_p2;
wire   [8:0] grp_fu_4502_p0;
wire   [5:0] grp_fu_4502_p1;
wire   [10:0] grp_fu_4502_p2;
wire   [8:0] grp_fu_4511_p0;
wire   [4:0] grp_fu_4511_p1;
wire   [10:0] grp_fu_4511_p2;
wire   [8:0] grp_fu_4520_p0;
wire   [5:0] grp_fu_4520_p1;
wire   [10:0] grp_fu_4520_p2;
wire   [8:0] grp_fu_4529_p0;
wire   [9:0] zext_ln172_25_fu_2478_p1;
wire   [5:0] grp_fu_4529_p1;
wire   [10:0] grp_fu_4529_p2;
wire   [8:0] grp_fu_4538_p0;
wire   [3:0] grp_fu_4538_p1;
wire   [10:0] grp_fu_4538_p2;
wire   [8:0] grp_fu_4547_p0;
wire   [5:0] grp_fu_4547_p1;
wire   [10:0] grp_fu_4547_p2;
wire   [8:0] grp_fu_4556_p0;
wire   [4:0] grp_fu_4556_p1;
wire   [10:0] grp_fu_4556_p2;
wire   [8:0] grp_fu_4565_p0;
wire   [5:0] grp_fu_4565_p1;
wire   [10:0] grp_fu_4565_p2;
wire   [8:0] grp_fu_4574_p0;
wire   [4:0] grp_fu_4574_p1;
wire   [10:0] grp_fu_4574_p2;
wire   [8:0] grp_fu_4583_p0;
wire   [5:0] grp_fu_4583_p1;
wire   [10:0] grp_fu_4583_p2;
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
wire   [18:0] mul_ln172_4_fu_2650_p00;
wire   [18:0] mul_ln172_5_fu_3096_p00;
wire   [18:0] mul_ln172_6_fu_3574_p00;
wire   [18:0] mul_ln172_fu_2484_p00;
wire   [2:0] tmp_s_fu_2733_p1;
wire   [2:0] tmp_s_fu_2733_p3;
wire   [2:0] tmp_s_fu_2733_p5;
wire   [2:0] tmp_s_fu_2733_p7;
wire  signed [2:0] tmp_s_fu_2733_p9;
wire  signed [2:0] tmp_s_fu_2733_p11;
wire  signed [2:0] tmp_s_fu_2733_p13;
wire   [2:0] tmp_21_fu_2768_p1;
wire  signed [2:0] tmp_21_fu_2768_p3;
wire  signed [2:0] tmp_21_fu_2768_p5;
wire  signed [2:0] tmp_21_fu_2768_p7;
wire   [2:0] tmp_21_fu_2768_p9;
wire   [2:0] tmp_21_fu_2768_p11;
wire   [2:0] tmp_21_fu_2768_p13;
wire  signed [2:0] tmp_22_fu_2803_p1;
wire   [2:0] tmp_22_fu_2803_p3;
wire   [2:0] tmp_22_fu_2803_p5;
wire   [2:0] tmp_22_fu_2803_p7;
wire   [2:0] tmp_22_fu_2803_p9;
wire  signed [2:0] tmp_22_fu_2803_p11;
wire  signed [2:0] tmp_22_fu_2803_p13;
wire   [2:0] tmp_23_fu_2838_p1;
wire   [2:0] tmp_23_fu_2838_p3;
wire  signed [2:0] tmp_23_fu_2838_p5;
wire  signed [2:0] tmp_23_fu_2838_p7;
wire  signed [2:0] tmp_23_fu_2838_p9;
wire   [2:0] tmp_23_fu_2838_p11;
wire   [2:0] tmp_23_fu_2838_p13;
wire  signed [2:0] tmp_24_fu_2873_p1;
wire  signed [2:0] tmp_24_fu_2873_p3;
wire   [2:0] tmp_24_fu_2873_p5;
wire   [2:0] tmp_24_fu_2873_p7;
wire   [2:0] tmp_24_fu_2873_p9;
wire   [2:0] tmp_24_fu_2873_p11;
wire  signed [2:0] tmp_24_fu_2873_p13;
wire   [2:0] tmp_25_fu_2908_p1;
wire   [2:0] tmp_25_fu_2908_p3;
wire   [2:0] tmp_25_fu_2908_p5;
wire  signed [2:0] tmp_25_fu_2908_p7;
wire  signed [2:0] tmp_25_fu_2908_p9;
wire  signed [2:0] tmp_25_fu_2908_p11;
wire   [2:0] tmp_25_fu_2908_p13;
wire  signed [2:0] tmp_26_fu_2943_p1;
wire  signed [2:0] tmp_26_fu_2943_p3;
wire  signed [2:0] tmp_26_fu_2943_p5;
wire   [2:0] tmp_26_fu_2943_p7;
wire   [2:0] tmp_26_fu_2943_p9;
wire   [2:0] tmp_26_fu_2943_p11;
wire   [2:0] tmp_26_fu_2943_p13;
wire   [2:0] tmp_27_fu_2978_p1;
wire   [2:0] tmp_27_fu_2978_p3;
wire   [2:0] tmp_27_fu_2978_p5;
wire   [2:0] tmp_27_fu_2978_p7;
wire  signed [2:0] tmp_27_fu_2978_p9;
wire  signed [2:0] tmp_27_fu_2978_p11;
wire  signed [2:0] tmp_27_fu_2978_p13;
wire   [2:0] tmp_28_fu_3211_p1;
wire   [2:0] tmp_28_fu_3211_p3;
wire   [2:0] tmp_28_fu_3211_p5;
wire   [2:0] tmp_28_fu_3211_p7;
wire  signed [2:0] tmp_28_fu_3211_p9;
wire  signed [2:0] tmp_28_fu_3211_p11;
wire  signed [2:0] tmp_28_fu_3211_p13;
wire   [2:0] tmp_30_fu_3246_p1;
wire  signed [2:0] tmp_30_fu_3246_p3;
wire  signed [2:0] tmp_30_fu_3246_p5;
wire  signed [2:0] tmp_30_fu_3246_p7;
wire   [2:0] tmp_30_fu_3246_p9;
wire   [2:0] tmp_30_fu_3246_p11;
wire   [2:0] tmp_30_fu_3246_p13;
wire  signed [2:0] tmp_31_fu_3281_p1;
wire   [2:0] tmp_31_fu_3281_p3;
wire   [2:0] tmp_31_fu_3281_p5;
wire   [2:0] tmp_31_fu_3281_p7;
wire   [2:0] tmp_31_fu_3281_p9;
wire  signed [2:0] tmp_31_fu_3281_p11;
wire  signed [2:0] tmp_31_fu_3281_p13;
wire   [2:0] tmp_32_fu_3316_p1;
wire   [2:0] tmp_32_fu_3316_p3;
wire  signed [2:0] tmp_32_fu_3316_p5;
wire  signed [2:0] tmp_32_fu_3316_p7;
wire  signed [2:0] tmp_32_fu_3316_p9;
wire   [2:0] tmp_32_fu_3316_p11;
wire   [2:0] tmp_32_fu_3316_p13;
wire  signed [2:0] tmp_33_fu_3351_p1;
wire  signed [2:0] tmp_33_fu_3351_p3;
wire   [2:0] tmp_33_fu_3351_p5;
wire   [2:0] tmp_33_fu_3351_p7;
wire   [2:0] tmp_33_fu_3351_p9;
wire   [2:0] tmp_33_fu_3351_p11;
wire  signed [2:0] tmp_33_fu_3351_p13;
wire   [2:0] tmp_34_fu_3386_p1;
wire   [2:0] tmp_34_fu_3386_p3;
wire   [2:0] tmp_34_fu_3386_p5;
wire  signed [2:0] tmp_34_fu_3386_p7;
wire  signed [2:0] tmp_34_fu_3386_p9;
wire  signed [2:0] tmp_34_fu_3386_p11;
wire   [2:0] tmp_34_fu_3386_p13;
wire  signed [2:0] tmp_35_fu_3421_p1;
wire  signed [2:0] tmp_35_fu_3421_p3;
wire  signed [2:0] tmp_35_fu_3421_p5;
wire   [2:0] tmp_35_fu_3421_p7;
wire   [2:0] tmp_35_fu_3421_p9;
wire   [2:0] tmp_35_fu_3421_p11;
wire   [2:0] tmp_35_fu_3421_p13;
wire   [2:0] tmp_36_fu_3456_p1;
wire   [2:0] tmp_36_fu_3456_p3;
wire   [2:0] tmp_36_fu_3456_p5;
wire   [2:0] tmp_36_fu_3456_p7;
wire  signed [2:0] tmp_36_fu_3456_p9;
wire  signed [2:0] tmp_36_fu_3456_p11;
wire  signed [2:0] tmp_36_fu_3456_p13;
wire   [2:0] tmp_37_fu_3635_p1;
wire   [2:0] tmp_37_fu_3635_p3;
wire   [2:0] tmp_37_fu_3635_p5;
wire   [2:0] tmp_37_fu_3635_p7;
wire  signed [2:0] tmp_37_fu_3635_p9;
wire  signed [2:0] tmp_37_fu_3635_p11;
wire  signed [2:0] tmp_37_fu_3635_p13;
wire   [2:0] tmp_38_fu_3670_p1;
wire  signed [2:0] tmp_38_fu_3670_p3;
wire  signed [2:0] tmp_38_fu_3670_p5;
wire  signed [2:0] tmp_38_fu_3670_p7;
wire   [2:0] tmp_38_fu_3670_p9;
wire   [2:0] tmp_38_fu_3670_p11;
wire   [2:0] tmp_38_fu_3670_p13;
wire  signed [2:0] tmp_39_fu_3705_p1;
wire   [2:0] tmp_39_fu_3705_p3;
wire   [2:0] tmp_39_fu_3705_p5;
wire   [2:0] tmp_39_fu_3705_p7;
wire   [2:0] tmp_39_fu_3705_p9;
wire  signed [2:0] tmp_39_fu_3705_p11;
wire  signed [2:0] tmp_39_fu_3705_p13;
wire   [2:0] tmp_40_fu_3740_p1;
wire   [2:0] tmp_40_fu_3740_p3;
wire  signed [2:0] tmp_40_fu_3740_p5;
wire  signed [2:0] tmp_40_fu_3740_p7;
wire  signed [2:0] tmp_40_fu_3740_p9;
wire   [2:0] tmp_40_fu_3740_p11;
wire   [2:0] tmp_40_fu_3740_p13;
wire  signed [2:0] tmp_41_fu_3775_p1;
wire  signed [2:0] tmp_41_fu_3775_p3;
wire   [2:0] tmp_41_fu_3775_p5;
wire   [2:0] tmp_41_fu_3775_p7;
wire   [2:0] tmp_41_fu_3775_p9;
wire   [2:0] tmp_41_fu_3775_p11;
wire  signed [2:0] tmp_41_fu_3775_p13;
wire   [2:0] tmp_42_fu_3810_p1;
wire   [2:0] tmp_42_fu_3810_p3;
wire   [2:0] tmp_42_fu_3810_p5;
wire  signed [2:0] tmp_42_fu_3810_p7;
wire  signed [2:0] tmp_42_fu_3810_p9;
wire  signed [2:0] tmp_42_fu_3810_p11;
wire   [2:0] tmp_42_fu_3810_p13;
wire  signed [2:0] tmp_43_fu_3845_p1;
wire  signed [2:0] tmp_43_fu_3845_p3;
wire  signed [2:0] tmp_43_fu_3845_p5;
wire   [2:0] tmp_43_fu_3845_p7;
wire   [2:0] tmp_43_fu_3845_p9;
wire   [2:0] tmp_43_fu_3845_p11;
wire   [2:0] tmp_43_fu_3845_p13;
wire   [2:0] tmp_44_fu_3880_p1;
wire   [2:0] tmp_44_fu_3880_p3;
wire   [2:0] tmp_44_fu_3880_p5;
wire   [2:0] tmp_44_fu_3880_p7;
wire  signed [2:0] tmp_44_fu_3880_p9;
wire  signed [2:0] tmp_44_fu_3880_p11;
wire  signed [2:0] tmp_44_fu_3880_p13;
wire   [2:0] tmp_45_fu_4030_p1;
wire   [2:0] tmp_45_fu_4030_p3;
wire   [2:0] tmp_45_fu_4030_p5;
wire   [2:0] tmp_45_fu_4030_p7;
wire  signed [2:0] tmp_45_fu_4030_p9;
wire  signed [2:0] tmp_45_fu_4030_p11;
wire  signed [2:0] tmp_45_fu_4030_p13;
wire   [2:0] tmp_47_fu_4065_p1;
wire  signed [2:0] tmp_47_fu_4065_p3;
wire  signed [2:0] tmp_47_fu_4065_p5;
wire  signed [2:0] tmp_47_fu_4065_p7;
wire   [2:0] tmp_47_fu_4065_p9;
wire   [2:0] tmp_47_fu_4065_p11;
wire   [2:0] tmp_47_fu_4065_p13;
wire  signed [2:0] tmp_48_fu_4100_p1;
wire   [2:0] tmp_48_fu_4100_p3;
wire   [2:0] tmp_48_fu_4100_p5;
wire   [2:0] tmp_48_fu_4100_p7;
wire   [2:0] tmp_48_fu_4100_p9;
wire  signed [2:0] tmp_48_fu_4100_p11;
wire  signed [2:0] tmp_48_fu_4100_p13;
wire   [2:0] tmp_49_fu_4135_p1;
wire   [2:0] tmp_49_fu_4135_p3;
wire  signed [2:0] tmp_49_fu_4135_p5;
wire  signed [2:0] tmp_49_fu_4135_p7;
wire  signed [2:0] tmp_49_fu_4135_p9;
wire   [2:0] tmp_49_fu_4135_p11;
wire   [2:0] tmp_49_fu_4135_p13;
wire  signed [2:0] tmp_50_fu_4170_p1;
wire  signed [2:0] tmp_50_fu_4170_p3;
wire   [2:0] tmp_50_fu_4170_p5;
wire   [2:0] tmp_50_fu_4170_p7;
wire   [2:0] tmp_50_fu_4170_p9;
wire   [2:0] tmp_50_fu_4170_p11;
wire  signed [2:0] tmp_50_fu_4170_p13;
wire   [2:0] tmp_51_fu_4205_p1;
wire   [2:0] tmp_51_fu_4205_p3;
wire   [2:0] tmp_51_fu_4205_p5;
wire  signed [2:0] tmp_51_fu_4205_p7;
wire  signed [2:0] tmp_51_fu_4205_p9;
wire  signed [2:0] tmp_51_fu_4205_p11;
wire   [2:0] tmp_51_fu_4205_p13;
wire  signed [2:0] tmp_52_fu_4240_p1;
wire  signed [2:0] tmp_52_fu_4240_p3;
wire  signed [2:0] tmp_52_fu_4240_p5;
wire   [2:0] tmp_52_fu_4240_p7;
wire   [2:0] tmp_52_fu_4240_p9;
wire   [2:0] tmp_52_fu_4240_p11;
wire   [2:0] tmp_52_fu_4240_p13;
wire   [2:0] tmp_53_fu_4275_p1;
wire   [2:0] tmp_53_fu_4275_p3;
wire   [2:0] tmp_53_fu_4275_p5;
wire   [2:0] tmp_53_fu_4275_p7;
wire  signed [2:0] tmp_53_fu_4275_p9;
wire  signed [2:0] tmp_53_fu_4275_p11;
wire  signed [2:0] tmp_53_fu_4275_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_138 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U410(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2336_p0),.din1(grp_fu_2336_p1),.ce(1'b1),.dout(grp_fu_2336_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U411(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2360_p0),.din1(grp_fu_2360_p1),.ce(1'b1),.dout(grp_fu_2360_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U412(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2375_p0),.din1(grp_fu_2375_p1),.ce(1'b1),.dout(grp_fu_2375_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U413(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2390_p0),.din1(grp_fu_2390_p1),.ce(1'b1),.dout(grp_fu_2390_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U414(.din0(mul_ln172_fu_2484_p0),.din1(mul_ln172_fu_2484_p1),.dout(mul_ln172_fu_2484_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U415(.din0(mul_ln172_4_fu_2650_p0),.din1(mul_ln172_4_fu_2650_p1),.dout(mul_ln172_4_fu_2650_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U416(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_s_fu_2733_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_s_fu_2733_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U417(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_21_fu_2768_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_21_fu_2768_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U418(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_22_fu_2803_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_22_fu_2803_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U419(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_23_fu_2838_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_23_fu_2838_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U420(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_24_fu_2873_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_24_fu_2873_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U421(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_25_fu_2908_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_25_fu_2908_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U422(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_26_fu_2943_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_26_fu_2943_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U423(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_27_fu_2978_p15),.sel(trunc_ln172_reg_4689),.dout(tmp_27_fu_2978_p17));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U424(.din0(mul_ln172_5_fu_3096_p0),.din1(mul_ln172_5_fu_3096_p1),.dout(mul_ln172_5_fu_3096_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U425(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_28_fu_3211_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_28_fu_3211_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U426(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_30_fu_3246_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_30_fu_3246_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U427(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_31_fu_3281_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_31_fu_3281_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U428(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_32_fu_3316_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_32_fu_3316_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U429(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_33_fu_3351_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_33_fu_3351_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U430(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_34_fu_3386_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_34_fu_3386_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U431(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_35_fu_3421_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_35_fu_3421_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U432(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_36_fu_3456_p15),.sel(trunc_ln172_4_reg_5021),.dout(tmp_36_fu_3456_p17));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U433(.din0(mul_ln172_6_fu_3574_p0),.din1(mul_ln172_6_fu_3574_p1),.dout(mul_ln172_6_fu_3574_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U434(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_37_fu_3635_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_37_fu_3635_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U435(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_38_fu_3670_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_38_fu_3670_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U436(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_39_fu_3705_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_39_fu_3705_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U437(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_40_fu_3740_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_40_fu_3740_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U438(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_41_fu_3775_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_41_fu_3775_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U439(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_42_fu_3810_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_42_fu_3810_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U440(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_43_fu_3845_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_43_fu_3845_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U441(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_44_fu_3880_p15),.sel(trunc_ln172_5_reg_5393),.dout(tmp_44_fu_3880_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U442(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_45_fu_4030_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_45_fu_4030_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U443(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_47_fu_4065_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_47_fu_4065_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U444(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_48_fu_4100_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_48_fu_4100_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U445(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_49_fu_4135_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_49_fu_4135_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U446(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_50_fu_4170_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_50_fu_4170_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U447(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_51_fu_4205_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_51_fu_4205_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U448(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_52_fu_4240_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_52_fu_4240_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U449(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_53_fu_4275_p15),.sel(trunc_ln172_6_reg_5765),.dout(tmp_53_fu_4275_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U450(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4340_p0),.din1(grp_fu_4340_p1),.din2(grp_fu_4340_p2),.ce(1'b1),.dout(grp_fu_4340_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U451(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4349_p0),.din1(grp_fu_4349_p1),.din2(grp_fu_4349_p2),.ce(1'b1),.dout(grp_fu_4349_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U452(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4358_p0),.din1(grp_fu_4358_p1),.din2(grp_fu_4358_p2),.ce(1'b1),.dout(grp_fu_4358_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U453(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4367_p0),.din1(grp_fu_4367_p1),.din2(grp_fu_4367_p2),.ce(1'b1),.dout(grp_fu_4367_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U454(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4376_p0),.din1(grp_fu_4376_p1),.din2(grp_fu_4376_p2),.ce(1'b1),.dout(grp_fu_4376_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U455(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4385_p0),.din1(grp_fu_4385_p1),.din2(grp_fu_4385_p2),.ce(1'b1),.dout(grp_fu_4385_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U456(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4394_p0),.din1(grp_fu_4394_p1),.din2(grp_fu_4394_p2),.ce(1'b1),.dout(grp_fu_4394_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U457(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4403_p0),.din1(grp_fu_4403_p1),.din2(grp_fu_4403_p2),.ce(1'b1),.dout(grp_fu_4403_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U458(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4412_p0),.din1(grp_fu_4412_p1),.din2(grp_fu_4412_p2),.ce(1'b1),.dout(grp_fu_4412_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U459(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4421_p0),.din1(grp_fu_4421_p1),.din2(grp_fu_4421_p2),.ce(1'b1),.dout(grp_fu_4421_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U460(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4430_p0),.din1(grp_fu_4430_p1),.din2(grp_fu_4430_p2),.ce(1'b1),.dout(grp_fu_4430_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U461(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4439_p0),.din1(grp_fu_4439_p1),.din2(grp_fu_4439_p2),.ce(1'b1),.dout(grp_fu_4439_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U462(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4448_p0),.din1(grp_fu_4448_p1),.din2(grp_fu_4448_p2),.ce(1'b1),.dout(grp_fu_4448_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U463(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4457_p0),.din1(grp_fu_4457_p1),.din2(grp_fu_4457_p2),.ce(1'b1),.dout(grp_fu_4457_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U464(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4466_p0),.din1(grp_fu_4466_p1),.din2(grp_fu_4466_p2),.ce(1'b1),.dout(grp_fu_4466_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U465(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4475_p0),.din1(grp_fu_4475_p1),.din2(grp_fu_4475_p2),.ce(1'b1),.dout(grp_fu_4475_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U466(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4484_p0),.din1(grp_fu_4484_p1),.din2(grp_fu_4484_p2),.ce(1'b1),.dout(grp_fu_4484_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U467(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4493_p0),.din1(grp_fu_4493_p1),.din2(grp_fu_4493_p2),.ce(1'b1),.dout(grp_fu_4493_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U468(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4502_p0),.din1(grp_fu_4502_p1),.din2(grp_fu_4502_p2),.ce(1'b1),.dout(grp_fu_4502_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U469(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4511_p0),.din1(grp_fu_4511_p1),.din2(grp_fu_4511_p2),.ce(1'b1),.dout(grp_fu_4511_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U470(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4520_p0),.din1(grp_fu_4520_p1),.din2(grp_fu_4520_p2),.ce(1'b1),.dout(grp_fu_4520_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U471(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4529_p0),.din1(grp_fu_4529_p1),.din2(grp_fu_4529_p2),.ce(1'b1),.dout(grp_fu_4529_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U472(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4538_p0),.din1(grp_fu_4538_p1),.din2(grp_fu_4538_p2),.ce(1'b1),.dout(grp_fu_4538_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U473(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4547_p0),.din1(grp_fu_4547_p1),.din2(grp_fu_4547_p2),.ce(1'b1),.dout(grp_fu_4547_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U474(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4556_p0),.din1(grp_fu_4556_p1),.din2(grp_fu_4556_p2),.ce(1'b1),.dout(grp_fu_4556_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U475(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4565_p0),.din1(grp_fu_4565_p1),.din2(grp_fu_4565_p2),.ce(1'b1),.dout(grp_fu_4565_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U476(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4574_p0),.din1(grp_fu_4574_p1),.din2(grp_fu_4574_p2),.ce(1'b1),.dout(grp_fu_4574_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U477(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4583_p0),.din1(grp_fu_4583_p1),.din2(grp_fu_4583_p2),.ce(1'b1),.dout(grp_fu_4583_p3));
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_138 <= 7'd0;
    end else if (((tmp_reg_4610 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_138 <= add_ln309_fu_2396_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_4_reg_4628[8 : 1] <= offset_4_fu_2351_p4[8 : 1];
        offset_4_reg_4628_pp0_iter1_reg[8 : 1] <= offset_4_reg_4628[8 : 1];
        offset_4_reg_4628_pp0_iter2_reg[8 : 1] <= offset_4_reg_4628_pp0_iter1_reg[8 : 1];
        tmp_45_reg_6109 <= tmp_45_fu_4030_p17;
        tmp_47_reg_6114 <= tmp_47_fu_4065_p17;
        tmp_48_reg_6119 <= tmp_48_fu_4100_p17;
        tmp_49_reg_6124 <= tmp_49_fu_4135_p17;
        tmp_50_reg_6129 <= tmp_50_fu_4170_p17;
        tmp_51_reg_6134 <= tmp_51_fu_4205_p17;
        tmp_52_reg_6139 <= tmp_52_fu_4240_p17;
        tmp_53_reg_6144 <= tmp_53_fu_4275_p17;
        tmp_76_reg_5016 <= {{mul_ln172_4_fu_2650_p2[18:12]}};
        tmp_86_reg_5033 <= {{tmp_86_fu_2670_p1[20:13]}};
        tmp_87_reg_5038 <= {{tmp_87_fu_2679_p1[20:13]}};
        tmp_88_reg_5043 <= {{tmp_88_fu_2688_p1[20:13]}};
        tmp_89_reg_5048 <= {{tmp_89_fu_2697_p1[20:13]}};
        tmp_90_reg_5053 <= {{tmp_90_fu_2706_p1[20:13]}};
        tmp_91_reg_5058 <= {{tmp_91_fu_2715_p1[20:13]}};
        tmp_92_reg_5063 <= {{tmp_92_fu_2724_p1[20:13]}};
        trunc_ln172_4_reg_5021 <= trunc_ln172_4_fu_2666_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_5_reg_4635[8 : 2] <= offset_5_fu_2366_p4[8 : 2];
        offset_5_reg_4635_pp0_iter1_reg[8 : 2] <= offset_5_reg_4635[8 : 2];
        offset_5_reg_4635_pp0_iter2_reg[8 : 2] <= offset_5_reg_4635_pp0_iter1_reg[8 : 2];
        tmp_100_reg_5430 <= {{tmp_100_fu_3161_p1[20:13]}};
        tmp_101_reg_5435 <= {{tmp_101_fu_3170_p1[20:13]}};
        tmp_21_reg_5073 <= tmp_21_fu_2768_p17;
        tmp_22_reg_5078 <= tmp_22_fu_2803_p17;
        tmp_23_reg_5083 <= tmp_23_fu_2838_p17;
        tmp_24_reg_5088 <= tmp_24_fu_2873_p17;
        tmp_25_reg_5093 <= tmp_25_fu_2908_p17;
        tmp_26_reg_5098 <= tmp_26_fu_2943_p17;
        tmp_27_reg_5103 <= tmp_27_fu_2978_p17;
        tmp_85_reg_5388 <= {{mul_ln172_5_fu_3096_p2[18:12]}};
        tmp_95_reg_5405 <= {{tmp_95_fu_3116_p1[20:13]}};
        tmp_96_reg_5410 <= {{tmp_96_fu_3125_p1[20:13]}};
        tmp_97_reg_5415 <= {{tmp_97_fu_3134_p1[20:13]}};
        tmp_98_reg_5420 <= {{tmp_98_fu_3143_p1[20:13]}};
        tmp_99_reg_5425 <= {{tmp_99_fu_3152_p1[20:13]}};
        tmp_s_reg_5068 <= tmp_s_fu_2733_p17;
        trunc_ln172_5_reg_5393 <= trunc_ln172_5_fu_3112_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_6_reg_4642[8 : 2] <= offset_6_fu_2381_p4[8 : 2];
        offset_6_reg_4642_pp0_iter1_reg[8 : 2] <= offset_6_reg_4642[8 : 2];
        offset_6_reg_4642_pp0_iter2_reg[8 : 2] <= offset_6_reg_4642_pp0_iter1_reg[8 : 2];
        tmp_28_reg_5440 <= tmp_28_fu_3211_p17;
        tmp_30_reg_5445 <= tmp_30_fu_3246_p17;
        tmp_31_reg_5450 <= tmp_31_fu_3281_p17;
        tmp_32_reg_5455 <= tmp_32_fu_3316_p17;
        tmp_33_reg_5460 <= tmp_33_fu_3351_p17;
        tmp_34_reg_5465 <= tmp_34_fu_3386_p17;
        tmp_35_reg_5470 <= tmp_35_fu_3421_p17;
        tmp_36_reg_5475 <= tmp_36_fu_3456_p17;
        tmp_68_reg_4649 <= {{tmp_68_fu_2415_p1[20:13]}};
        tmp_69_reg_4654 <= {{tmp_69_fu_2424_p1[20:13]}};
        tmp_70_reg_4659 <= {{tmp_70_fu_2433_p1[20:13]}};
        tmp_71_reg_4664 <= {{tmp_71_fu_2442_p1[20:13]}};
        tmp_72_reg_4669 <= {{tmp_72_fu_2451_p1[20:13]}};
        tmp_73_reg_4674 <= {{tmp_73_fu_2460_p1[20:13]}};
        tmp_74_reg_4679 <= {{tmp_74_fu_2469_p1[20:13]}};
        tmp_94_reg_5760 <= {{mul_ln172_6_fu_3574_p2[18:12]}};
        trunc_ln172_6_reg_5765 <= trunc_ln172_6_fu_3590_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_4621 <= offset_fu_2328_p3;
        offset_reg_4621_pp0_iter1_reg <= offset_reg_4621;
        offset_reg_4621_pp0_iter2_reg <= offset_reg_4621_pp0_iter1_reg;
        shl_ln314_1_reg_5777[6 : 2] <= shl_ln314_1_fu_3603_p3[6 : 2];
        tid_2_reg_4599 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_4599_pp0_iter1_reg <= tid_2_reg_4599;
        tid_2_reg_4599_pp0_iter2_reg <= tid_2_reg_4599_pp0_iter1_reg;
        tid_2_reg_4599_pp0_iter3_reg <= tid_2_reg_4599_pp0_iter2_reg;
        tmp_37_reg_5783 <= tmp_37_fu_3635_p17;
        tmp_38_reg_5788 <= tmp_38_fu_3670_p17;
        tmp_39_reg_5793 <= tmp_39_fu_3705_p17;
        tmp_40_reg_5798 <= tmp_40_fu_3740_p17;
        tmp_41_reg_5803 <= tmp_41_fu_3775_p17;
        tmp_42_reg_5808 <= tmp_42_fu_3810_p17;
        tmp_43_reg_5813 <= tmp_43_fu_3845_p17;
        tmp_44_reg_5818 <= tmp_44_fu_3880_p17;
        tmp_46_reg_5858 <= {{tid_2_reg_4599_pp0_iter3_reg[5:2]}};
        tmp_66_reg_4614 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_67_reg_4684 <= {{mul_ln172_fu_2484_p2[18:12]}};
        tmp_77_reg_4701 <= {{tmp_77_fu_2504_p1[20:13]}};
        tmp_78_reg_4706 <= {{tmp_78_fu_2513_p1[20:13]}};
        tmp_79_reg_4711 <= {{tmp_79_fu_2522_p1[20:13]}};
        tmp_80_reg_4716 <= {{tmp_80_fu_2531_p1[20:13]}};
        tmp_81_reg_4721 <= {{tmp_81_fu_2540_p1[20:13]}};
        tmp_82_reg_4726 <= {{tmp_82_fu_2549_p1[20:13]}};
        tmp_83_reg_4731 <= {{tmp_83_fu_2558_p1[20:13]}};
        tmp_reg_4610 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_4610_pp0_iter1_reg <= tmp_reg_4610;
        tmp_reg_4610_pp0_iter2_reg <= tmp_reg_4610_pp0_iter1_reg;
        tmp_reg_4610_pp0_iter3_reg <= tmp_reg_4610_pp0_iter2_reg;
        trunc_ln172_reg_4689 <= trunc_ln172_fu_2500_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln315_7_fu_4332_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_6_fu_4022_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_5_fu_3627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_4_fu_3203_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln314_3_fu_4317_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_2_fu_4009_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_3611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_fu_3187_p1;
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
        DATA_x_1_d0_local = tmp_49_reg_6124;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_40_reg_5798;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_32_reg_5455;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_23_reg_5083;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_48_reg_6119;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_39_reg_5793;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_31_reg_5450;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_22_reg_5078;
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
        DATA_x_2_address0_local = zext_ln315_7_fu_4332_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln315_6_fu_4022_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln315_5_fu_3627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln315_4_fu_3203_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address1_local = zext_ln314_3_fu_4317_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln314_2_fu_4009_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln314_1_fu_3611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address1_local = zext_ln314_fu_3187_p1;
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
        DATA_x_2_d0_local = tmp_51_reg_6134;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_42_reg_5808;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_34_reg_5465;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d0_local = tmp_25_reg_5093;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d1_local = tmp_50_reg_6129;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = tmp_41_reg_5803;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_33_reg_5460;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d1_local = tmp_24_reg_5088;
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
        DATA_x_3_address0_local = zext_ln315_7_fu_4332_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln315_6_fu_4022_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln315_5_fu_3627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address0_local = zext_ln315_4_fu_3203_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address1_local = zext_ln314_3_fu_4317_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln314_2_fu_4009_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln314_1_fu_3611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address1_local = zext_ln314_fu_3187_p1;
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
        DATA_x_3_d0_local = tmp_53_reg_6144;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_44_reg_5818;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_36_reg_5475;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d0_local = tmp_27_reg_5103;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d1_local = tmp_52_reg_6139;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_43_reg_5813;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = tmp_35_reg_5470;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d1_local = tmp_26_reg_5098;
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
        DATA_x_address0_local = zext_ln315_7_fu_4332_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_6_fu_4022_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln315_5_fu_3627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_4_fu_3203_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln314_3_fu_4317_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_2_fu_4009_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln314_1_fu_3611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_fu_3187_p1;
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
        DATA_x_d0_local = tmp_47_reg_6114;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_38_reg_5788;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_30_reg_5445;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_21_reg_5073;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_45_reg_6109;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_37_reg_5783;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_28_reg_5440;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_s_reg_5068;
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
    if (((tmp_reg_4610 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_4610_pp0_iter3_reg == 1'd1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_138;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_3_fu_3994_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_3_fu_3984_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_3_fu_3974_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_3_fu_3964_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_3_fu_3954_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_3_fu_3944_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_3_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_12_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln321_1_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln320_1_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln319_1_fu_3063_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln318_1_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln317_1_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln316_1_fu_3033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln315_1_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_10_fu_2567_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_13_fu_3915_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln321_2_fu_3561_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln320_2_fu_3551_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln319_2_fu_3541_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln318_2_fu_3531_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln317_2_fu_3521_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln316_2_fu_3511_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln315_2_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_11_fu_3013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln321_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln320_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln319_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln318_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln317_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln316_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln315_fu_2577_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_3_fu_3994_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_3_fu_3984_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_3_fu_3974_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_3_fu_3964_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_3_fu_3954_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_3_fu_3944_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_3_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_12_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln321_1_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln320_1_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln319_1_fu_3063_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln318_1_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln317_1_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln316_1_fu_3033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln315_1_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_10_fu_2567_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_13_fu_3915_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln321_2_fu_3561_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln320_2_fu_3551_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln319_2_fu_3541_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln318_2_fu_3531_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln317_2_fu_3521_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln316_2_fu_3511_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln315_2_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_11_fu_3013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln321_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln320_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln319_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln318_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln317_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln316_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln315_fu_2577_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_3_fu_3994_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_3_fu_3984_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_3_fu_3974_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_3_fu_3964_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_3_fu_3954_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln316_3_fu_3944_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_3_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_12_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln321_1_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln320_1_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln319_1_fu_3063_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln318_1_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln317_1_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln316_1_fu_3033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln315_1_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_10_fu_2567_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_13_fu_3915_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln321_2_fu_3561_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln320_2_fu_3551_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln319_2_fu_3541_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln318_2_fu_3531_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln317_2_fu_3521_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln316_2_fu_3511_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln315_2_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln172_11_fu_3013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln321_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln320_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln319_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln318_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln317_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln316_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln315_fu_2577_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_3_fu_3994_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_3_fu_3984_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_3_fu_3974_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_3_fu_3964_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_3_fu_3954_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln316_3_fu_3944_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_3_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_12_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln321_1_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln320_1_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln319_1_fu_3063_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln318_1_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln317_1_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln316_1_fu_3033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln315_1_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_10_fu_2567_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_13_fu_3915_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln321_2_fu_3561_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln320_2_fu_3551_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln319_2_fu_3541_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln318_2_fu_3531_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln317_2_fu_3521_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln316_2_fu_3511_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln315_2_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln172_11_fu_3013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln321_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln320_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln319_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln318_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln317_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln316_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln315_fu_2577_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_3_fu_3994_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_3_fu_3984_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln319_3_fu_3974_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_3_fu_3964_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln317_3_fu_3954_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln316_3_fu_3944_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln315_3_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_12_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln321_1_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln320_1_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln319_1_fu_3063_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln318_1_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln317_1_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln316_1_fu_3033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln315_1_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_10_fu_2567_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln172_13_fu_3915_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln321_2_fu_3561_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln320_2_fu_3551_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln319_2_fu_3541_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln318_2_fu_3531_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln317_2_fu_3521_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln316_2_fu_3511_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln315_2_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln172_11_fu_3013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln321_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln320_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln319_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln318_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln317_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln316_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln315_fu_2577_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln321_3_fu_3994_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln320_3_fu_3984_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln319_3_fu_3974_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln318_3_fu_3964_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln317_3_fu_3954_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln316_3_fu_3944_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln315_3_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_12_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln321_1_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln320_1_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln319_1_fu_3063_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln318_1_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln317_1_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln316_1_fu_3033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln315_1_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_10_fu_2567_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln172_13_fu_3915_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln321_2_fu_3561_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln320_2_fu_3551_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln319_2_fu_3541_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln318_2_fu_3531_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln317_2_fu_3521_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln316_2_fu_3511_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln315_2_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln172_11_fu_3013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln321_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln320_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln319_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln318_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln317_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln316_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln315_fu_2577_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_3_fu_3994_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_3_fu_3984_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_3_fu_3974_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_3_fu_3964_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_3_fu_3954_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_3_fu_3944_p1;
    end else if (((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_3_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_12_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln321_1_fu_3083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln320_1_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln319_1_fu_3063_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln318_1_fu_3053_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln317_1_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln316_1_fu_3033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln315_1_fu_3023_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_10_fu_2567_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_13_fu_3915_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln321_2_fu_3561_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln320_2_fu_3551_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln319_2_fu_3541_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln318_2_fu_3531_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln317_2_fu_3521_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln316_2_fu_3511_p1;
    end else if (((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln315_2_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_11_fu_3013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln321_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln320_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln319_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln318_fu_2607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln317_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln316_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln315_fu_2577_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5765 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5765 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_5021 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5393 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5393 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4689 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
assign add_ln309_fu_2396_p2 = (tid_2_reg_4599 + 7'd4);
assign add_ln314_fu_4004_p2 = (shl_ln314_1_reg_5777 + 7'd2);
assign add_ln315_3_fu_4017_p2 = (shl_ln314_1_reg_5777 + 7'd3);
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
assign grp_fu_2289_p4 = {{tid_2_reg_4599[5:2]}};
assign grp_fu_2336_p0 = {{tmp_66_fu_2314_p4}, {trunc_ln312_fu_2324_p1}};
assign grp_fu_2336_p1 = 9'd7;
assign grp_fu_2360_p0 = {{{tmp_66_reg_4614}, {tmp_75_fu_2342_p4}}, {1'd1}};
assign grp_fu_2360_p1 = 9'd7;
assign grp_fu_2375_p0 = {{{tmp_66_reg_4614}, {grp_fu_2289_p4}}, {2'd2}};
assign grp_fu_2375_p1 = 9'd7;
assign grp_fu_2390_p0 = {{{tmp_66_reg_4614}, {grp_fu_2289_p4}}, {2'd3}};
assign grp_fu_2390_p1 = 9'd7;
assign grp_fu_4340_p0 = zext_ln172_fu_2406_p1;
assign grp_fu_4340_p1 = 10'd32;
assign grp_fu_4340_p2 = 21'd1171;
assign grp_fu_4349_p0 = zext_ln172_fu_2406_p1;
assign grp_fu_4349_p1 = 10'd8;
assign grp_fu_4349_p2 = 21'd1171;
assign grp_fu_4358_p0 = zext_ln172_fu_2406_p1;
assign grp_fu_4358_p1 = 10'd40;
assign grp_fu_4358_p2 = 21'd1171;
assign grp_fu_4367_p0 = zext_ln172_fu_2406_p1;
assign grp_fu_4367_p1 = 10'd16;
assign grp_fu_4367_p2 = 21'd1171;
assign grp_fu_4376_p0 = zext_ln172_fu_2406_p1;
assign grp_fu_4376_p1 = 10'd48;
assign grp_fu_4376_p2 = 21'd1171;
assign grp_fu_4385_p0 = zext_ln172_fu_2406_p1;
assign grp_fu_4385_p1 = 10'd24;
assign grp_fu_4385_p2 = 21'd1171;
assign grp_fu_4394_p0 = zext_ln172_fu_2406_p1;
assign grp_fu_4394_p1 = 10'd56;
assign grp_fu_4394_p2 = 21'd1171;
assign grp_fu_4403_p0 = zext_ln172_21_fu_2409_p1;
assign grp_fu_4403_p1 = 10'd32;
assign grp_fu_4403_p2 = 21'd1171;
assign grp_fu_4412_p0 = zext_ln172_21_fu_2409_p1;
assign grp_fu_4412_p1 = 10'd8;
assign grp_fu_4412_p2 = 21'd1171;
assign grp_fu_4421_p0 = zext_ln172_21_fu_2409_p1;
assign grp_fu_4421_p1 = 10'd40;
assign grp_fu_4421_p2 = 21'd1171;
assign grp_fu_4430_p0 = zext_ln172_21_fu_2409_p1;
assign grp_fu_4430_p1 = 10'd16;
assign grp_fu_4430_p2 = 21'd1171;
assign grp_fu_4439_p0 = zext_ln172_21_fu_2409_p1;
assign grp_fu_4439_p1 = 10'd48;
assign grp_fu_4439_p2 = 21'd1171;
assign grp_fu_4448_p0 = zext_ln172_21_fu_2409_p1;
assign grp_fu_4448_p1 = 10'd24;
assign grp_fu_4448_p2 = 21'd1171;
assign grp_fu_4457_p0 = zext_ln172_21_fu_2409_p1;
assign grp_fu_4457_p1 = 10'd56;
assign grp_fu_4457_p2 = 21'd1171;
assign grp_fu_4466_p0 = zext_ln172_23_fu_2412_p1;
assign grp_fu_4466_p1 = 10'd32;
assign grp_fu_4466_p2 = 21'd1171;
assign grp_fu_4475_p0 = zext_ln172_23_fu_2412_p1;
assign grp_fu_4475_p1 = 10'd8;
assign grp_fu_4475_p2 = 21'd1171;
assign grp_fu_4484_p0 = zext_ln172_23_fu_2412_p1;
assign grp_fu_4484_p1 = 10'd40;
assign grp_fu_4484_p2 = 21'd1171;
assign grp_fu_4493_p0 = zext_ln172_23_fu_2412_p1;
assign grp_fu_4493_p1 = 10'd16;
assign grp_fu_4493_p2 = 21'd1171;
assign grp_fu_4502_p0 = zext_ln172_23_fu_2412_p1;
assign grp_fu_4502_p1 = 10'd48;
assign grp_fu_4502_p2 = 21'd1171;
assign grp_fu_4511_p0 = zext_ln172_23_fu_2412_p1;
assign grp_fu_4511_p1 = 10'd24;
assign grp_fu_4511_p2 = 21'd1171;
assign grp_fu_4520_p0 = zext_ln172_23_fu_2412_p1;
assign grp_fu_4520_p1 = 10'd56;
assign grp_fu_4520_p2 = 21'd1171;
assign grp_fu_4529_p0 = zext_ln172_25_fu_2478_p1;
assign grp_fu_4529_p1 = 10'd32;
assign grp_fu_4529_p2 = 21'd1171;
assign grp_fu_4538_p0 = zext_ln172_25_fu_2478_p1;
assign grp_fu_4538_p1 = 10'd8;
assign grp_fu_4538_p2 = 21'd1171;
assign grp_fu_4547_p0 = zext_ln172_25_fu_2478_p1;
assign grp_fu_4547_p1 = 10'd40;
assign grp_fu_4547_p2 = 21'd1171;
assign grp_fu_4556_p0 = zext_ln172_25_fu_2478_p1;
assign grp_fu_4556_p1 = 10'd16;
assign grp_fu_4556_p2 = 21'd1171;
assign grp_fu_4565_p0 = zext_ln172_25_fu_2478_p1;
assign grp_fu_4565_p1 = 10'd48;
assign grp_fu_4565_p2 = 21'd1171;
assign grp_fu_4574_p0 = zext_ln172_25_fu_2478_p1;
assign grp_fu_4574_p1 = 10'd24;
assign grp_fu_4574_p2 = 21'd1171;
assign grp_fu_4583_p0 = zext_ln172_25_fu_2478_p1;
assign grp_fu_4583_p1 = 10'd56;
assign grp_fu_4583_p2 = 21'd1171;
assign mul_ln172_4_fu_2650_p0 = mul_ln172_4_fu_2650_p00;
assign mul_ln172_4_fu_2650_p00 = offset_4_reg_4628_pp0_iter2_reg;
assign mul_ln172_4_fu_2650_p1 = 19'd586;
assign mul_ln172_5_fu_3096_p0 = mul_ln172_5_fu_3096_p00;
assign mul_ln172_5_fu_3096_p00 = offset_5_reg_4635_pp0_iter2_reg;
assign mul_ln172_5_fu_3096_p1 = 19'd586;
assign mul_ln172_6_fu_3574_p0 = mul_ln172_6_fu_3574_p00;
assign mul_ln172_6_fu_3574_p00 = offset_6_reg_4642_pp0_iter2_reg;
assign mul_ln172_6_fu_3574_p1 = 19'd586;
assign mul_ln172_fu_2484_p0 = mul_ln172_fu_2484_p00;
assign mul_ln172_fu_2484_p00 = offset_reg_4621_pp0_iter2_reg;
assign mul_ln172_fu_2484_p1 = 19'd586;
assign offset_4_fu_2351_p4 = {{{tmp_66_reg_4614}, {tmp_75_fu_2342_p4}}, {1'd1}};
assign offset_5_fu_2366_p4 = {{{tmp_66_reg_4614}, {grp_fu_2289_p4}}, {2'd2}};
assign offset_6_fu_2381_p4 = {{{tmp_66_reg_4614}, {grp_fu_2289_p4}}, {2'd3}};
assign offset_fu_2328_p3 = {{tmp_66_fu_2314_p4}, {trunc_ln312_fu_2324_p1}};
assign or_ln2_fu_4310_p3 = {{tmp_46_reg_5858}, {3'd6}};
assign or_ln315_1_fu_3619_p3 = {{tmp_29_fu_3594_p4}, {2'd3}};
assign or_ln315_2_fu_4325_p3 = {{tmp_46_reg_5858}, {3'd7}};
assign or_ln_fu_3195_p3 = {{trunc_ln314_fu_3179_p1}, {1'd1}};
assign shl_ln314_1_fu_3603_p3 = {{tmp_29_fu_3594_p4}, {2'd2}};
assign shl_ln314_fu_3182_p2 = tid_2_reg_4599_pp0_iter3_reg << 7'd1;
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_100_fu_3161_p1 = grp_fu_4574_p3;
assign tmp_101_fu_3170_p1 = grp_fu_4583_p3;
assign tmp_21_fu_2768_p15 = 'bx;
assign tmp_22_fu_2803_p15 = 'bx;
assign tmp_23_fu_2838_p15 = 'bx;
assign tmp_24_fu_2873_p15 = 'bx;
assign tmp_25_fu_2908_p15 = 'bx;
assign tmp_26_fu_2943_p15 = 'bx;
assign tmp_27_fu_2978_p15 = 'bx;
assign tmp_28_fu_3211_p15 = 'bx;
assign tmp_29_fu_3594_p4 = {{tid_2_reg_4599_pp0_iter3_reg[5:1]}};
assign tmp_30_fu_3246_p15 = 'bx;
assign tmp_31_fu_3281_p15 = 'bx;
assign tmp_32_fu_3316_p15 = 'bx;
assign tmp_33_fu_3351_p15 = 'bx;
assign tmp_34_fu_3386_p15 = 'bx;
assign tmp_35_fu_3421_p15 = 'bx;
assign tmp_36_fu_3456_p15 = 'bx;
assign tmp_37_fu_3635_p15 = 'bx;
assign tmp_38_fu_3670_p15 = 'bx;
assign tmp_39_fu_3705_p15 = 'bx;
assign tmp_40_fu_3740_p15 = 'bx;
assign tmp_41_fu_3775_p15 = 'bx;
assign tmp_42_fu_3810_p15 = 'bx;
assign tmp_43_fu_3845_p15 = 'bx;
assign tmp_44_fu_3880_p15 = 'bx;
assign tmp_45_fu_4030_p15 = 'bx;
assign tmp_47_fu_4065_p15 = 'bx;
assign tmp_48_fu_4100_p15 = 'bx;
assign tmp_49_fu_4135_p15 = 'bx;
assign tmp_50_fu_4170_p15 = 'bx;
assign tmp_51_fu_4205_p15 = 'bx;
assign tmp_52_fu_4240_p15 = 'bx;
assign tmp_53_fu_4275_p15 = 'bx;
assign tmp_66_fu_2314_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_68_fu_2415_p1 = grp_fu_4340_p3;
assign tmp_69_fu_2424_p1 = grp_fu_4349_p3;
assign tmp_70_fu_2433_p1 = grp_fu_4358_p3;
assign tmp_71_fu_2442_p1 = grp_fu_4367_p3;
assign tmp_72_fu_2451_p1 = grp_fu_4376_p3;
assign tmp_73_fu_2460_p1 = grp_fu_4385_p3;
assign tmp_74_fu_2469_p1 = grp_fu_4394_p3;
assign tmp_75_fu_2342_p4 = {{tid_2_reg_4599[5:1]}};
assign tmp_77_fu_2504_p1 = grp_fu_4403_p3;
assign tmp_78_fu_2513_p1 = grp_fu_4412_p3;
assign tmp_79_fu_2522_p1 = grp_fu_4421_p3;
assign tmp_80_fu_2531_p1 = grp_fu_4430_p3;
assign tmp_81_fu_2540_p1 = grp_fu_4439_p3;
assign tmp_82_fu_2549_p1 = grp_fu_4448_p3;
assign tmp_83_fu_2558_p1 = grp_fu_4457_p3;
assign tmp_86_fu_2670_p1 = grp_fu_4466_p3;
assign tmp_87_fu_2679_p1 = grp_fu_4475_p3;
assign tmp_88_fu_2688_p1 = grp_fu_4484_p3;
assign tmp_89_fu_2697_p1 = grp_fu_4493_p3;
assign tmp_90_fu_2706_p1 = grp_fu_4502_p3;
assign tmp_91_fu_2715_p1 = grp_fu_4511_p3;
assign tmp_92_fu_2724_p1 = grp_fu_4520_p3;
assign tmp_95_fu_3116_p1 = grp_fu_4529_p3;
assign tmp_96_fu_3125_p1 = grp_fu_4538_p3;
assign tmp_97_fu_3134_p1 = grp_fu_4547_p3;
assign tmp_98_fu_3143_p1 = grp_fu_4556_p3;
assign tmp_99_fu_3152_p1 = grp_fu_4565_p3;
assign tmp_s_fu_2733_p15 = 'bx;
assign trunc_ln172_4_fu_2666_p1 = grp_fu_2360_p2[2:0];
assign trunc_ln172_5_fu_3112_p1 = grp_fu_2375_p2[2:0];
assign trunc_ln172_6_fu_3590_p1 = grp_fu_2390_p2[2:0];
assign trunc_ln172_fu_2500_p1 = grp_fu_2336_p2[2:0];
assign trunc_ln312_fu_2324_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_3179_p1 = tid_2_reg_4599_pp0_iter3_reg[5:0];
assign zext_ln172_10_fu_2567_p1 = tmp_67_reg_4684;
assign zext_ln172_11_fu_3013_p1 = tmp_76_reg_5016;
assign zext_ln172_12_fu_3491_p1 = tmp_85_reg_5388;
assign zext_ln172_13_fu_3915_p1 = tmp_94_reg_5760;
assign zext_ln172_21_fu_2409_p1 = offset_4_reg_4628_pp0_iter1_reg;
assign zext_ln172_23_fu_2412_p1 = offset_5_reg_4635_pp0_iter1_reg;
assign zext_ln172_25_fu_2478_p1 = offset_6_reg_4642_pp0_iter1_reg;
assign zext_ln172_fu_2406_p1 = offset_reg_4621_pp0_iter1_reg;
assign zext_ln314_1_fu_3611_p1 = shl_ln314_1_fu_3603_p3;
assign zext_ln314_2_fu_4009_p1 = add_ln314_fu_4004_p2;
assign zext_ln314_3_fu_4317_p1 = or_ln2_fu_4310_p3;
assign zext_ln314_fu_3187_p1 = shl_ln314_fu_3182_p2;
assign zext_ln315_1_fu_3023_p1 = tmp_77_reg_4701;
assign zext_ln315_2_fu_3501_p1 = tmp_86_reg_5033;
assign zext_ln315_3_fu_3934_p1 = tmp_95_reg_5405;
assign zext_ln315_4_fu_3203_p1 = or_ln_fu_3195_p3;
assign zext_ln315_5_fu_3627_p1 = or_ln315_1_fu_3619_p3;
assign zext_ln315_6_fu_4022_p1 = add_ln315_3_fu_4017_p2;
assign zext_ln315_7_fu_4332_p1 = or_ln315_2_fu_4325_p3;
assign zext_ln315_fu_2577_p1 = tmp_68_reg_4649;
assign zext_ln316_1_fu_3033_p1 = tmp_78_reg_4706;
assign zext_ln316_2_fu_3511_p1 = tmp_87_reg_5038;
assign zext_ln316_3_fu_3944_p1 = tmp_96_reg_5410;
assign zext_ln316_fu_2587_p1 = tmp_69_reg_4654;
assign zext_ln317_1_fu_3043_p1 = tmp_79_reg_4711;
assign zext_ln317_2_fu_3521_p1 = tmp_88_reg_5043;
assign zext_ln317_3_fu_3954_p1 = tmp_97_reg_5415;
assign zext_ln317_fu_2597_p1 = tmp_70_reg_4659;
assign zext_ln318_1_fu_3053_p1 = tmp_80_reg_4716;
assign zext_ln318_2_fu_3531_p1 = tmp_89_reg_5048;
assign zext_ln318_3_fu_3964_p1 = tmp_98_reg_5420;
assign zext_ln318_fu_2607_p1 = tmp_71_reg_4664;
assign zext_ln319_1_fu_3063_p1 = tmp_81_reg_4721;
assign zext_ln319_2_fu_3541_p1 = tmp_90_reg_5053;
assign zext_ln319_3_fu_3974_p1 = tmp_99_reg_5425;
assign zext_ln319_fu_2617_p1 = tmp_72_reg_4669;
assign zext_ln320_1_fu_3073_p1 = tmp_82_reg_4726;
assign zext_ln320_2_fu_3551_p1 = tmp_91_reg_5058;
assign zext_ln320_3_fu_3984_p1 = tmp_100_reg_5430;
assign zext_ln320_fu_2627_p1 = tmp_73_reg_4674;
assign zext_ln321_1_fu_3083_p1 = tmp_83_reg_4731;
assign zext_ln321_2_fu_3561_p1 = tmp_92_reg_5063;
assign zext_ln321_3_fu_3994_p1 = tmp_101_reg_5435;
assign zext_ln321_fu_2637_p1 = tmp_74_reg_4679;
always @ (posedge ap_clk) begin
    offset_4_reg_4628[0] <= 1'b1;
    offset_4_reg_4628_pp0_iter1_reg[0] <= 1'b1;
    offset_4_reg_4628_pp0_iter2_reg[0] <= 1'b1;
    offset_5_reg_4635[1:0] <= 2'b10;
    offset_5_reg_4635_pp0_iter1_reg[1:0] <= 2'b10;
    offset_5_reg_4635_pp0_iter2_reg[1:0] <= 2'b10;
    offset_6_reg_4642[1:0] <= 2'b11;
    offset_6_reg_4642_pp0_iter1_reg[1:0] <= 2'b11;
    offset_6_reg_4642_pp0_iter2_reg[1:0] <= 2'b11;
    shl_ln314_1_reg_5777[1:0] <= 2'b10;
end
endmodule 
