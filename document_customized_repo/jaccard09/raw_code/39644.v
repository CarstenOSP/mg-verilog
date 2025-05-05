module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1); 
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
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_4693;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_4683;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_4683_pp0_iter1_reg;
reg   [6:0] tid_2_reg_4683_pp0_iter2_reg;
reg   [0:0] tmp_reg_4693_pp0_iter1_reg;
wire   [2:0] tmp_76_fu_2306_p4;
reg   [2:0] tmp_76_reg_4697;
wire   [8:0] offset_fu_2320_p3;
reg   [8:0] offset_reg_4704;
wire   [8:0] offset_1_fu_2343_p4;
reg   [8:0] offset_1_reg_4711;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [8:0] offset_2_fu_2358_p4;
reg   [8:0] offset_2_reg_4718;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [8:0] offset_3_fu_2373_p4;
reg   [8:0] offset_3_reg_4725;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] tmp_77_reg_4732;
wire   [9:0] zext_ln172_3_fu_2420_p1;
reg   [9:0] zext_ln172_3_reg_4737;
reg   [6:0] tmp_86_reg_4742;
wire   [9:0] zext_ln172_9_fu_2445_p1;
reg   [9:0] zext_ln172_9_reg_4747;
reg   [6:0] tmp_96_reg_4753;
reg   [7:0] tmp_78_reg_4758;
reg   [7:0] tmp_79_reg_4763;
reg   [7:0] tmp_80_reg_4768;
reg   [7:0] tmp_81_reg_4773;
reg   [7:0] tmp_82_reg_4778;
reg   [7:0] tmp_83_reg_4783;
reg   [7:0] tmp_84_reg_4788;
reg   [7:0] tmp_87_reg_4793;
reg   [7:0] tmp_88_reg_4798;
reg   [7:0] tmp_89_reg_4803;
reg   [7:0] tmp_91_reg_4808;
reg   [7:0] tmp_92_reg_4813;
reg   [7:0] tmp_93_reg_4818;
reg   [6:0] tmp_105_reg_4823;
wire   [2:0] trunc_ln172_fu_2603_p1;
reg   [2:0] trunc_ln172_reg_4828;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] tmp_94_reg_4840;
reg   [7:0] tmp_97_reg_4845;
reg   [7:0] tmp_98_reg_4850;
reg   [7:0] tmp_99_reg_4855;
reg   [7:0] tmp_100_reg_4860;
reg   [7:0] tmp_101_reg_4865;
reg   [7:0] tmp_102_reg_4870;
reg   [7:0] tmp_103_reg_4875;
reg   [7:0] tmp_106_reg_4880;
reg   [7:0] tmp_107_reg_4885;
reg   [7:0] tmp_108_reg_4890;
reg   [7:0] tmp_109_reg_4895;
reg   [7:0] tmp_110_reg_4900;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [2:0] trunc_ln172_1_fu_2804_p1;
reg   [2:0] trunc_ln172_1_reg_5185;
reg   [7:0] tmp_111_reg_5197;
reg   [7:0] tmp_112_reg_5202;
wire   [63:0] tmp_s_fu_2826_p17;
reg   [63:0] tmp_s_reg_5207;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] tmp_15_fu_2861_p17;
reg   [63:0] tmp_15_reg_5212;
wire   [63:0] tmp_16_fu_2896_p17;
reg   [63:0] tmp_16_reg_5217;
wire   [63:0] tmp_17_fu_2931_p17;
reg   [63:0] tmp_17_reg_5222;
wire   [63:0] tmp_18_fu_2966_p17;
reg   [63:0] tmp_18_reg_5227;
wire   [63:0] tmp_19_fu_3001_p17;
reg   [63:0] tmp_19_reg_5232;
wire   [63:0] tmp_20_fu_3036_p17;
reg   [63:0] tmp_20_reg_5237;
wire   [63:0] tmp_21_fu_3071_p17;
reg   [63:0] tmp_21_reg_5242;
wire   [2:0] trunc_ln172_2_fu_3186_p1;
reg   [2:0] trunc_ln172_2_reg_5527;
wire   [5:0] trunc_ln314_fu_3190_p1;
reg   [5:0] trunc_ln314_reg_5539;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_22_fu_3221_p17;
reg   [63:0] tmp_22_reg_5545;
wire   [63:0] tmp_24_fu_3256_p17;
reg   [63:0] tmp_24_reg_5550;
wire   [63:0] tmp_25_fu_3291_p17;
reg   [63:0] tmp_25_reg_5555;
wire   [63:0] tmp_26_fu_3326_p17;
reg   [63:0] tmp_26_reg_5560;
wire   [63:0] tmp_27_fu_3361_p17;
reg   [63:0] tmp_27_reg_5565;
wire   [63:0] tmp_28_fu_3396_p17;
reg   [63:0] tmp_28_reg_5570;
wire   [63:0] tmp_29_fu_3431_p17;
reg   [63:0] tmp_29_reg_5575;
wire   [63:0] tmp_30_fu_3466_p17;
reg   [63:0] tmp_30_reg_5580;
wire   [2:0] trunc_ln172_3_fu_3581_p1;
reg   [2:0] trunc_ln172_3_reg_5865;
wire   [63:0] tmp_31_fu_3611_p17;
reg   [63:0] tmp_31_reg_5877;
wire   [63:0] tmp_33_fu_3646_p17;
reg   [63:0] tmp_33_reg_5882;
wire   [63:0] tmp_34_fu_3681_p17;
reg   [63:0] tmp_34_reg_5887;
wire   [63:0] tmp_35_fu_3716_p17;
reg   [63:0] tmp_35_reg_5892;
wire   [63:0] tmp_36_fu_3751_p17;
reg   [63:0] tmp_36_reg_5897;
wire   [63:0] tmp_37_fu_3786_p17;
reg   [63:0] tmp_37_reg_5902;
wire   [63:0] tmp_38_fu_3821_p17;
reg   [63:0] tmp_38_reg_5907;
wire   [63:0] tmp_39_fu_3856_p17;
reg   [63:0] tmp_39_reg_5912;
wire   [4:0] tmp_23_fu_3971_p4;
reg   [4:0] tmp_23_reg_6197;
reg   [3:0] tmp_32_reg_6203;
wire   [63:0] tmp_40_fu_4017_p17;
reg   [63:0] tmp_40_reg_6215;
wire   [63:0] tmp_41_fu_4052_p17;
reg   [63:0] tmp_41_reg_6220;
wire   [63:0] tmp_42_fu_4087_p17;
reg   [63:0] tmp_42_reg_6225;
wire   [63:0] tmp_43_fu_4122_p17;
reg   [63:0] tmp_43_reg_6230;
wire   [63:0] tmp_44_fu_4157_p17;
reg   [63:0] tmp_44_reg_6235;
wire   [63:0] tmp_45_fu_4192_p17;
reg   [63:0] tmp_45_reg_6240;
wire   [63:0] tmp_46_fu_4227_p17;
reg   [63:0] tmp_46_reg_6245;
wire   [63:0] tmp_47_fu_4262_p17;
reg   [63:0] tmp_47_reg_6250;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln172_2_fu_2724_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln315_fu_2734_p1;
wire   [63:0] zext_ln316_fu_2744_p1;
wire   [63:0] zext_ln317_fu_2754_p1;
wire   [63:0] zext_ln318_fu_2764_p1;
wire   [63:0] zext_ln319_fu_2774_p1;
wire   [63:0] zext_ln320_fu_2784_p1;
wire   [63:0] zext_ln321_fu_2794_p1;
wire   [63:0] zext_ln172_5_fu_3106_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln315_1_fu_3116_p1;
wire   [63:0] zext_ln316_1_fu_3126_p1;
wire   [63:0] zext_ln317_1_fu_3136_p1;
wire   [63:0] zext_ln318_1_fu_3146_p1;
wire   [63:0] zext_ln319_1_fu_3156_p1;
wire   [63:0] zext_ln320_1_fu_3166_p1;
wire   [63:0] zext_ln321_1_fu_3176_p1;
wire   [63:0] zext_ln314_fu_3201_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln315_4_fu_3215_p1;
wire   [63:0] zext_ln172_8_fu_3501_p1;
wire   [63:0] zext_ln315_2_fu_3511_p1;
wire   [63:0] zext_ln316_2_fu_3521_p1;
wire   [63:0] zext_ln317_2_fu_3531_p1;
wire   [63:0] zext_ln318_2_fu_3541_p1;
wire   [63:0] zext_ln319_2_fu_3551_p1;
wire   [63:0] zext_ln320_2_fu_3561_p1;
wire   [63:0] zext_ln321_2_fu_3571_p1;
wire   [63:0] zext_ln318_4_fu_3592_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_4_fu_3605_p1;
wire   [63:0] zext_ln172_10_fu_3891_p1;
wire   [63:0] zext_ln315_3_fu_3901_p1;
wire   [63:0] zext_ln316_3_fu_3911_p1;
wire   [63:0] zext_ln317_3_fu_3921_p1;
wire   [63:0] zext_ln318_3_fu_3931_p1;
wire   [63:0] zext_ln319_3_fu_3941_p1;
wire   [63:0] zext_ln320_3_fu_3951_p1;
wire   [63:0] zext_ln321_3_fu_3961_p1;
wire   [63:0] zext_ln314_1_fu_3988_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_5_fu_4002_p1;
wire   [63:0] zext_ln318_5_fu_4304_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln319_5_fu_4317_p1;
wire   [63:0] zext_ln314_2_fu_4330_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_6_fu_4343_p1;
wire   [63:0] zext_ln318_6_fu_4356_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln319_6_fu_4369_p1;
wire   [63:0] zext_ln314_3_fu_4382_p1;
wire   [63:0] zext_ln315_7_fu_4395_p1;
wire   [63:0] zext_ln318_7_fu_4408_p1;
wire   [63:0] zext_ln319_7_fu_4421_p1;
reg   [6:0] tid_fu_148;
wire   [6:0] add_ln309_fu_2388_p2;
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
wire   [5:0] trunc_ln312_fu_2316_p1;
wire   [8:0] grp_fu_2328_p0;
wire   [3:0] grp_fu_2328_p1;
wire   [4:0] tmp_85_fu_2334_p4;
wire   [8:0] grp_fu_2352_p0;
wire   [3:0] grp_fu_2352_p1;
wire   [3:0] grp_fu_2281_p4;
wire   [8:0] grp_fu_2367_p0;
wire   [3:0] grp_fu_2367_p1;
wire   [8:0] grp_fu_2382_p0;
wire   [3:0] grp_fu_2382_p1;
wire   [8:0] mul_ln172_fu_2404_p0;
wire   [10:0] mul_ln172_fu_2404_p1;
wire   [18:0] mul_ln172_fu_2404_p2;
wire   [8:0] mul_ln172_1_fu_2426_p0;
wire   [10:0] mul_ln172_1_fu_2426_p1;
wire   [18:0] mul_ln172_1_fu_2426_p2;
wire   [8:0] mul_ln172_2_fu_2451_p0;
wire   [10:0] mul_ln172_2_fu_2451_p1;
wire   [18:0] mul_ln172_2_fu_2451_p2;
wire   [20:0] tmp_78_fu_2467_p1;
wire  signed [20:0] grp_fu_4427_p3;
wire   [20:0] tmp_79_fu_2476_p1;
wire  signed [20:0] grp_fu_4436_p3;
wire   [20:0] tmp_80_fu_2485_p1;
wire  signed [20:0] grp_fu_4445_p3;
wire   [20:0] tmp_81_fu_2494_p1;
wire  signed [20:0] grp_fu_4454_p3;
wire   [20:0] tmp_82_fu_2503_p1;
wire  signed [20:0] grp_fu_4463_p3;
wire   [20:0] tmp_83_fu_2512_p1;
wire  signed [20:0] grp_fu_4472_p3;
wire   [20:0] tmp_84_fu_2521_p1;
wire  signed [20:0] grp_fu_4481_p3;
wire   [20:0] tmp_87_fu_2530_p1;
wire  signed [20:0] grp_fu_4490_p3;
wire   [20:0] tmp_88_fu_2539_p1;
wire  signed [20:0] grp_fu_4499_p3;
wire   [20:0] tmp_89_fu_2548_p1;
wire  signed [20:0] grp_fu_4508_p3;
wire   [20:0] tmp_91_fu_2557_p1;
wire  signed [20:0] grp_fu_4517_p3;
wire   [20:0] tmp_92_fu_2566_p1;
wire  signed [20:0] grp_fu_4526_p3;
wire   [20:0] tmp_93_fu_2575_p1;
wire  signed [20:0] grp_fu_4535_p3;
wire   [8:0] mul_ln172_3_fu_2587_p0;
wire   [10:0] mul_ln172_3_fu_2587_p1;
wire   [18:0] mul_ln172_3_fu_2587_p2;
wire   [2:0] grp_fu_2328_p2;
wire   [20:0] tmp_94_fu_2607_p1;
wire  signed [20:0] grp_fu_4544_p3;
wire   [20:0] tmp_97_fu_2616_p1;
wire  signed [20:0] grp_fu_4552_p3;
wire   [20:0] tmp_98_fu_2625_p1;
wire  signed [20:0] grp_fu_4561_p3;
wire   [20:0] tmp_99_fu_2634_p1;
wire  signed [20:0] grp_fu_4570_p3;
wire   [20:0] tmp_100_fu_2643_p1;
wire  signed [20:0] grp_fu_4579_p3;
wire   [20:0] tmp_101_fu_2652_p1;
wire  signed [20:0] grp_fu_4588_p3;
wire   [20:0] tmp_102_fu_2661_p1;
wire  signed [20:0] grp_fu_4597_p3;
wire   [20:0] tmp_103_fu_2670_p1;
wire  signed [20:0] grp_fu_4606_p3;
wire   [20:0] tmp_106_fu_2679_p1;
wire  signed [20:0] grp_fu_4615_p3;
wire   [20:0] tmp_107_fu_2688_p1;
wire  signed [20:0] grp_fu_4624_p3;
wire   [20:0] tmp_108_fu_2697_p1;
wire  signed [20:0] grp_fu_4633_p3;
wire   [20:0] tmp_109_fu_2706_p1;
wire  signed [20:0] grp_fu_4642_p3;
wire   [20:0] tmp_110_fu_2715_p1;
wire  signed [20:0] grp_fu_4651_p3;
wire   [2:0] grp_fu_2352_p2;
wire   [20:0] tmp_111_fu_2808_p1;
wire  signed [20:0] grp_fu_4660_p3;
wire   [20:0] tmp_112_fu_2817_p1;
wire  signed [20:0] grp_fu_4668_p3;
wire   [63:0] tmp_s_fu_2826_p15;
wire   [63:0] tmp_15_fu_2861_p15;
wire   [63:0] tmp_16_fu_2896_p15;
wire   [63:0] tmp_17_fu_2931_p15;
wire   [63:0] tmp_18_fu_2966_p15;
wire   [63:0] tmp_19_fu_3001_p15;
wire   [63:0] tmp_20_fu_3036_p15;
wire   [63:0] tmp_21_fu_3071_p15;
wire   [2:0] grp_fu_2367_p2;
wire   [7:0] shl_ln7_fu_3193_p3;
wire   [7:0] or_ln_fu_3207_p3;
wire   [63:0] tmp_22_fu_3221_p15;
wire   [63:0] tmp_24_fu_3256_p15;
wire   [63:0] tmp_25_fu_3291_p15;
wire   [63:0] tmp_26_fu_3326_p15;
wire   [63:0] tmp_27_fu_3361_p15;
wire   [63:0] tmp_28_fu_3396_p15;
wire   [63:0] tmp_29_fu_3431_p15;
wire   [63:0] tmp_30_fu_3466_p15;
wire   [2:0] grp_fu_2382_p2;
wire   [7:0] or_ln5_fu_3585_p3;
wire   [7:0] or_ln6_fu_3598_p3;
wire   [63:0] tmp_31_fu_3611_p15;
wire   [63:0] tmp_33_fu_3646_p15;
wire   [63:0] tmp_34_fu_3681_p15;
wire   [63:0] tmp_35_fu_3716_p15;
wire   [63:0] tmp_36_fu_3751_p15;
wire   [63:0] tmp_37_fu_3786_p15;
wire   [63:0] tmp_38_fu_3821_p15;
wire   [63:0] tmp_39_fu_3856_p15;
wire   [7:0] shl_ln314_1_fu_3980_p3;
wire   [7:0] or_ln315_1_fu_3994_p3;
wire   [63:0] tmp_40_fu_4017_p15;
wire   [63:0] tmp_41_fu_4052_p15;
wire   [63:0] tmp_42_fu_4087_p15;
wire   [63:0] tmp_43_fu_4122_p15;
wire   [63:0] tmp_44_fu_4157_p15;
wire   [63:0] tmp_45_fu_4192_p15;
wire   [63:0] tmp_46_fu_4227_p15;
wire   [63:0] tmp_47_fu_4262_p15;
wire   [7:0] or_ln318_1_fu_4297_p3;
wire   [7:0] or_ln319_1_fu_4310_p3;
wire   [7:0] or_ln7_fu_4323_p3;
wire   [7:0] or_ln315_2_fu_4336_p3;
wire   [7:0] or_ln318_2_fu_4349_p3;
wire   [7:0] or_ln319_2_fu_4362_p3;
wire   [7:0] shl_ln314_2_fu_4375_p3;
wire   [7:0] or_ln315_3_fu_4388_p3;
wire   [7:0] or_ln318_3_fu_4401_p3;
wire   [7:0] or_ln319_3_fu_4414_p3;
wire   [8:0] grp_fu_4427_p0;
wire   [9:0] zext_ln172_fu_2398_p1;
wire   [5:0] grp_fu_4427_p1;
wire   [10:0] grp_fu_4427_p2;
wire   [8:0] grp_fu_4436_p0;
wire   [3:0] grp_fu_4436_p1;
wire   [10:0] grp_fu_4436_p2;
wire   [8:0] grp_fu_4445_p0;
wire   [5:0] grp_fu_4445_p1;
wire   [10:0] grp_fu_4445_p2;
wire   [8:0] grp_fu_4454_p0;
wire   [4:0] grp_fu_4454_p1;
wire   [10:0] grp_fu_4454_p2;
wire   [8:0] grp_fu_4463_p0;
wire   [5:0] grp_fu_4463_p1;
wire   [10:0] grp_fu_4463_p2;
wire   [8:0] grp_fu_4472_p0;
wire   [4:0] grp_fu_4472_p1;
wire   [10:0] grp_fu_4472_p2;
wire   [8:0] grp_fu_4481_p0;
wire   [5:0] grp_fu_4481_p1;
wire   [10:0] grp_fu_4481_p2;
wire   [8:0] grp_fu_4490_p0;
wire   [5:0] grp_fu_4490_p1;
wire   [10:0] grp_fu_4490_p2;
wire   [8:0] grp_fu_4499_p0;
wire   [3:0] grp_fu_4499_p1;
wire   [10:0] grp_fu_4499_p2;
wire   [8:0] grp_fu_4508_p0;
wire   [5:0] grp_fu_4508_p1;
wire   [10:0] grp_fu_4508_p2;
wire   [8:0] grp_fu_4517_p0;
wire   [4:0] grp_fu_4517_p1;
wire   [10:0] grp_fu_4517_p2;
wire   [8:0] grp_fu_4526_p0;
wire   [5:0] grp_fu_4526_p1;
wire   [10:0] grp_fu_4526_p2;
wire   [8:0] grp_fu_4535_p0;
wire   [4:0] grp_fu_4535_p1;
wire   [10:0] grp_fu_4535_p2;
wire   [8:0] grp_fu_4544_p0;
wire   [5:0] grp_fu_4544_p1;
wire   [10:0] grp_fu_4544_p2;
wire   [8:0] grp_fu_4552_p0;
wire   [9:0] zext_ln172_6_fu_2442_p1;
wire   [5:0] grp_fu_4552_p1;
wire   [10:0] grp_fu_4552_p2;
wire   [8:0] grp_fu_4561_p0;
wire   [3:0] grp_fu_4561_p1;
wire   [10:0] grp_fu_4561_p2;
wire   [8:0] grp_fu_4570_p0;
wire   [5:0] grp_fu_4570_p1;
wire   [10:0] grp_fu_4570_p2;
wire   [8:0] grp_fu_4579_p0;
wire   [4:0] grp_fu_4579_p1;
wire   [10:0] grp_fu_4579_p2;
wire   [8:0] grp_fu_4588_p0;
wire   [5:0] grp_fu_4588_p1;
wire   [10:0] grp_fu_4588_p2;
wire   [8:0] grp_fu_4597_p0;
wire   [4:0] grp_fu_4597_p1;
wire   [10:0] grp_fu_4597_p2;
wire   [8:0] grp_fu_4606_p0;
wire   [5:0] grp_fu_4606_p1;
wire   [10:0] grp_fu_4606_p2;
wire   [8:0] grp_fu_4615_p0;
wire   [5:0] grp_fu_4615_p1;
wire   [10:0] grp_fu_4615_p2;
wire   [8:0] grp_fu_4624_p0;
wire   [3:0] grp_fu_4624_p1;
wire   [10:0] grp_fu_4624_p2;
wire   [8:0] grp_fu_4633_p0;
wire   [5:0] grp_fu_4633_p1;
wire   [10:0] grp_fu_4633_p2;
wire   [8:0] grp_fu_4642_p0;
wire   [4:0] grp_fu_4642_p1;
wire   [10:0] grp_fu_4642_p2;
wire   [8:0] grp_fu_4651_p0;
wire   [5:0] grp_fu_4651_p1;
wire   [10:0] grp_fu_4651_p2;
wire   [8:0] grp_fu_4660_p0;
wire   [4:0] grp_fu_4660_p1;
wire   [10:0] grp_fu_4660_p2;
wire   [8:0] grp_fu_4668_p0;
wire   [5:0] grp_fu_4668_p1;
wire   [10:0] grp_fu_4668_p2;
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
wire   [18:0] mul_ln172_1_fu_2426_p00;
wire   [18:0] mul_ln172_2_fu_2451_p00;
wire   [18:0] mul_ln172_3_fu_2587_p00;
wire   [18:0] mul_ln172_fu_2404_p00;
wire   [2:0] tmp_s_fu_2826_p1;
wire   [2:0] tmp_s_fu_2826_p3;
wire   [2:0] tmp_s_fu_2826_p5;
wire   [2:0] tmp_s_fu_2826_p7;
wire  signed [2:0] tmp_s_fu_2826_p9;
wire  signed [2:0] tmp_s_fu_2826_p11;
wire  signed [2:0] tmp_s_fu_2826_p13;
wire   [2:0] tmp_15_fu_2861_p1;
wire  signed [2:0] tmp_15_fu_2861_p3;
wire  signed [2:0] tmp_15_fu_2861_p5;
wire  signed [2:0] tmp_15_fu_2861_p7;
wire   [2:0] tmp_15_fu_2861_p9;
wire   [2:0] tmp_15_fu_2861_p11;
wire   [2:0] tmp_15_fu_2861_p13;
wire  signed [2:0] tmp_16_fu_2896_p1;
wire   [2:0] tmp_16_fu_2896_p3;
wire   [2:0] tmp_16_fu_2896_p5;
wire   [2:0] tmp_16_fu_2896_p7;
wire   [2:0] tmp_16_fu_2896_p9;
wire  signed [2:0] tmp_16_fu_2896_p11;
wire  signed [2:0] tmp_16_fu_2896_p13;
wire   [2:0] tmp_17_fu_2931_p1;
wire   [2:0] tmp_17_fu_2931_p3;
wire  signed [2:0] tmp_17_fu_2931_p5;
wire  signed [2:0] tmp_17_fu_2931_p7;
wire  signed [2:0] tmp_17_fu_2931_p9;
wire   [2:0] tmp_17_fu_2931_p11;
wire   [2:0] tmp_17_fu_2931_p13;
wire  signed [2:0] tmp_18_fu_2966_p1;
wire  signed [2:0] tmp_18_fu_2966_p3;
wire   [2:0] tmp_18_fu_2966_p5;
wire   [2:0] tmp_18_fu_2966_p7;
wire   [2:0] tmp_18_fu_2966_p9;
wire   [2:0] tmp_18_fu_2966_p11;
wire  signed [2:0] tmp_18_fu_2966_p13;
wire   [2:0] tmp_19_fu_3001_p1;
wire   [2:0] tmp_19_fu_3001_p3;
wire   [2:0] tmp_19_fu_3001_p5;
wire  signed [2:0] tmp_19_fu_3001_p7;
wire  signed [2:0] tmp_19_fu_3001_p9;
wire  signed [2:0] tmp_19_fu_3001_p11;
wire   [2:0] tmp_19_fu_3001_p13;
wire  signed [2:0] tmp_20_fu_3036_p1;
wire  signed [2:0] tmp_20_fu_3036_p3;
wire  signed [2:0] tmp_20_fu_3036_p5;
wire   [2:0] tmp_20_fu_3036_p7;
wire   [2:0] tmp_20_fu_3036_p9;
wire   [2:0] tmp_20_fu_3036_p11;
wire   [2:0] tmp_20_fu_3036_p13;
wire   [2:0] tmp_21_fu_3071_p1;
wire   [2:0] tmp_21_fu_3071_p3;
wire   [2:0] tmp_21_fu_3071_p5;
wire   [2:0] tmp_21_fu_3071_p7;
wire  signed [2:0] tmp_21_fu_3071_p9;
wire  signed [2:0] tmp_21_fu_3071_p11;
wire  signed [2:0] tmp_21_fu_3071_p13;
wire   [2:0] tmp_22_fu_3221_p1;
wire   [2:0] tmp_22_fu_3221_p3;
wire   [2:0] tmp_22_fu_3221_p5;
wire   [2:0] tmp_22_fu_3221_p7;
wire  signed [2:0] tmp_22_fu_3221_p9;
wire  signed [2:0] tmp_22_fu_3221_p11;
wire  signed [2:0] tmp_22_fu_3221_p13;
wire   [2:0] tmp_24_fu_3256_p1;
wire  signed [2:0] tmp_24_fu_3256_p3;
wire  signed [2:0] tmp_24_fu_3256_p5;
wire  signed [2:0] tmp_24_fu_3256_p7;
wire   [2:0] tmp_24_fu_3256_p9;
wire   [2:0] tmp_24_fu_3256_p11;
wire   [2:0] tmp_24_fu_3256_p13;
wire  signed [2:0] tmp_25_fu_3291_p1;
wire   [2:0] tmp_25_fu_3291_p3;
wire   [2:0] tmp_25_fu_3291_p5;
wire   [2:0] tmp_25_fu_3291_p7;
wire   [2:0] tmp_25_fu_3291_p9;
wire  signed [2:0] tmp_25_fu_3291_p11;
wire  signed [2:0] tmp_25_fu_3291_p13;
wire   [2:0] tmp_26_fu_3326_p1;
wire   [2:0] tmp_26_fu_3326_p3;
wire  signed [2:0] tmp_26_fu_3326_p5;
wire  signed [2:0] tmp_26_fu_3326_p7;
wire  signed [2:0] tmp_26_fu_3326_p9;
wire   [2:0] tmp_26_fu_3326_p11;
wire   [2:0] tmp_26_fu_3326_p13;
wire  signed [2:0] tmp_27_fu_3361_p1;
wire  signed [2:0] tmp_27_fu_3361_p3;
wire   [2:0] tmp_27_fu_3361_p5;
wire   [2:0] tmp_27_fu_3361_p7;
wire   [2:0] tmp_27_fu_3361_p9;
wire   [2:0] tmp_27_fu_3361_p11;
wire  signed [2:0] tmp_27_fu_3361_p13;
wire   [2:0] tmp_28_fu_3396_p1;
wire   [2:0] tmp_28_fu_3396_p3;
wire   [2:0] tmp_28_fu_3396_p5;
wire  signed [2:0] tmp_28_fu_3396_p7;
wire  signed [2:0] tmp_28_fu_3396_p9;
wire  signed [2:0] tmp_28_fu_3396_p11;
wire   [2:0] tmp_28_fu_3396_p13;
wire  signed [2:0] tmp_29_fu_3431_p1;
wire  signed [2:0] tmp_29_fu_3431_p3;
wire  signed [2:0] tmp_29_fu_3431_p5;
wire   [2:0] tmp_29_fu_3431_p7;
wire   [2:0] tmp_29_fu_3431_p9;
wire   [2:0] tmp_29_fu_3431_p11;
wire   [2:0] tmp_29_fu_3431_p13;
wire   [2:0] tmp_30_fu_3466_p1;
wire   [2:0] tmp_30_fu_3466_p3;
wire   [2:0] tmp_30_fu_3466_p5;
wire   [2:0] tmp_30_fu_3466_p7;
wire  signed [2:0] tmp_30_fu_3466_p9;
wire  signed [2:0] tmp_30_fu_3466_p11;
wire  signed [2:0] tmp_30_fu_3466_p13;
wire   [2:0] tmp_31_fu_3611_p1;
wire   [2:0] tmp_31_fu_3611_p3;
wire   [2:0] tmp_31_fu_3611_p5;
wire   [2:0] tmp_31_fu_3611_p7;
wire  signed [2:0] tmp_31_fu_3611_p9;
wire  signed [2:0] tmp_31_fu_3611_p11;
wire  signed [2:0] tmp_31_fu_3611_p13;
wire   [2:0] tmp_33_fu_3646_p1;
wire  signed [2:0] tmp_33_fu_3646_p3;
wire  signed [2:0] tmp_33_fu_3646_p5;
wire  signed [2:0] tmp_33_fu_3646_p7;
wire   [2:0] tmp_33_fu_3646_p9;
wire   [2:0] tmp_33_fu_3646_p11;
wire   [2:0] tmp_33_fu_3646_p13;
wire  signed [2:0] tmp_34_fu_3681_p1;
wire   [2:0] tmp_34_fu_3681_p3;
wire   [2:0] tmp_34_fu_3681_p5;
wire   [2:0] tmp_34_fu_3681_p7;
wire   [2:0] tmp_34_fu_3681_p9;
wire  signed [2:0] tmp_34_fu_3681_p11;
wire  signed [2:0] tmp_34_fu_3681_p13;
wire   [2:0] tmp_35_fu_3716_p1;
wire   [2:0] tmp_35_fu_3716_p3;
wire  signed [2:0] tmp_35_fu_3716_p5;
wire  signed [2:0] tmp_35_fu_3716_p7;
wire  signed [2:0] tmp_35_fu_3716_p9;
wire   [2:0] tmp_35_fu_3716_p11;
wire   [2:0] tmp_35_fu_3716_p13;
wire  signed [2:0] tmp_36_fu_3751_p1;
wire  signed [2:0] tmp_36_fu_3751_p3;
wire   [2:0] tmp_36_fu_3751_p5;
wire   [2:0] tmp_36_fu_3751_p7;
wire   [2:0] tmp_36_fu_3751_p9;
wire   [2:0] tmp_36_fu_3751_p11;
wire  signed [2:0] tmp_36_fu_3751_p13;
wire   [2:0] tmp_37_fu_3786_p1;
wire   [2:0] tmp_37_fu_3786_p3;
wire   [2:0] tmp_37_fu_3786_p5;
wire  signed [2:0] tmp_37_fu_3786_p7;
wire  signed [2:0] tmp_37_fu_3786_p9;
wire  signed [2:0] tmp_37_fu_3786_p11;
wire   [2:0] tmp_37_fu_3786_p13;
wire  signed [2:0] tmp_38_fu_3821_p1;
wire  signed [2:0] tmp_38_fu_3821_p3;
wire  signed [2:0] tmp_38_fu_3821_p5;
wire   [2:0] tmp_38_fu_3821_p7;
wire   [2:0] tmp_38_fu_3821_p9;
wire   [2:0] tmp_38_fu_3821_p11;
wire   [2:0] tmp_38_fu_3821_p13;
wire   [2:0] tmp_39_fu_3856_p1;
wire   [2:0] tmp_39_fu_3856_p3;
wire   [2:0] tmp_39_fu_3856_p5;
wire   [2:0] tmp_39_fu_3856_p7;
wire  signed [2:0] tmp_39_fu_3856_p9;
wire  signed [2:0] tmp_39_fu_3856_p11;
wire  signed [2:0] tmp_39_fu_3856_p13;
wire   [2:0] tmp_40_fu_4017_p1;
wire   [2:0] tmp_40_fu_4017_p3;
wire   [2:0] tmp_40_fu_4017_p5;
wire   [2:0] tmp_40_fu_4017_p7;
wire  signed [2:0] tmp_40_fu_4017_p9;
wire  signed [2:0] tmp_40_fu_4017_p11;
wire  signed [2:0] tmp_40_fu_4017_p13;
wire   [2:0] tmp_41_fu_4052_p1;
wire  signed [2:0] tmp_41_fu_4052_p3;
wire  signed [2:0] tmp_41_fu_4052_p5;
wire  signed [2:0] tmp_41_fu_4052_p7;
wire   [2:0] tmp_41_fu_4052_p9;
wire   [2:0] tmp_41_fu_4052_p11;
wire   [2:0] tmp_41_fu_4052_p13;
wire  signed [2:0] tmp_42_fu_4087_p1;
wire   [2:0] tmp_42_fu_4087_p3;
wire   [2:0] tmp_42_fu_4087_p5;
wire   [2:0] tmp_42_fu_4087_p7;
wire   [2:0] tmp_42_fu_4087_p9;
wire  signed [2:0] tmp_42_fu_4087_p11;
wire  signed [2:0] tmp_42_fu_4087_p13;
wire   [2:0] tmp_43_fu_4122_p1;
wire   [2:0] tmp_43_fu_4122_p3;
wire  signed [2:0] tmp_43_fu_4122_p5;
wire  signed [2:0] tmp_43_fu_4122_p7;
wire  signed [2:0] tmp_43_fu_4122_p9;
wire   [2:0] tmp_43_fu_4122_p11;
wire   [2:0] tmp_43_fu_4122_p13;
wire  signed [2:0] tmp_44_fu_4157_p1;
wire  signed [2:0] tmp_44_fu_4157_p3;
wire   [2:0] tmp_44_fu_4157_p5;
wire   [2:0] tmp_44_fu_4157_p7;
wire   [2:0] tmp_44_fu_4157_p9;
wire   [2:0] tmp_44_fu_4157_p11;
wire  signed [2:0] tmp_44_fu_4157_p13;
wire   [2:0] tmp_45_fu_4192_p1;
wire   [2:0] tmp_45_fu_4192_p3;
wire   [2:0] tmp_45_fu_4192_p5;
wire  signed [2:0] tmp_45_fu_4192_p7;
wire  signed [2:0] tmp_45_fu_4192_p9;
wire  signed [2:0] tmp_45_fu_4192_p11;
wire   [2:0] tmp_45_fu_4192_p13;
wire  signed [2:0] tmp_46_fu_4227_p1;
wire  signed [2:0] tmp_46_fu_4227_p3;
wire  signed [2:0] tmp_46_fu_4227_p5;
wire   [2:0] tmp_46_fu_4227_p7;
wire   [2:0] tmp_46_fu_4227_p9;
wire   [2:0] tmp_46_fu_4227_p11;
wire   [2:0] tmp_46_fu_4227_p13;
wire   [2:0] tmp_47_fu_4262_p1;
wire   [2:0] tmp_47_fu_4262_p3;
wire   [2:0] tmp_47_fu_4262_p5;
wire   [2:0] tmp_47_fu_4262_p7;
wire  signed [2:0] tmp_47_fu_4262_p9;
wire  signed [2:0] tmp_47_fu_4262_p11;
wire  signed [2:0] tmp_47_fu_4262_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U216(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2328_p0),.din1(grp_fu_2328_p1),.ce(1'b1),.dout(grp_fu_2328_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U217(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2352_p0),.din1(grp_fu_2352_p1),.ce(1'b1),.dout(grp_fu_2352_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U218(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2367_p0),.din1(grp_fu_2367_p1),.ce(1'b1),.dout(grp_fu_2367_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U219(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2382_p0),.din1(grp_fu_2382_p1),.ce(1'b1),.dout(grp_fu_2382_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U220(.din0(mul_ln172_fu_2404_p0),.din1(mul_ln172_fu_2404_p1),.dout(mul_ln172_fu_2404_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U221(.din0(mul_ln172_1_fu_2426_p0),.din1(mul_ln172_1_fu_2426_p1),.dout(mul_ln172_1_fu_2426_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U222(.din0(mul_ln172_2_fu_2451_p0),.din1(mul_ln172_2_fu_2451_p1),.dout(mul_ln172_2_fu_2451_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U223(.din0(mul_ln172_3_fu_2587_p0),.din1(mul_ln172_3_fu_2587_p1),.dout(mul_ln172_3_fu_2587_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U224(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_s_fu_2826_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_s_fu_2826_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U225(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_15_fu_2861_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_15_fu_2861_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U226(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_16_fu_2896_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_16_fu_2896_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U227(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_17_fu_2931_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_17_fu_2931_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U228(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_18_fu_2966_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_18_fu_2966_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U229(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_19_fu_3001_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_19_fu_3001_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U230(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_20_fu_3036_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_20_fu_3036_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U231(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_21_fu_3071_p15),.sel(trunc_ln172_reg_4828),.dout(tmp_21_fu_3071_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U232(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_22_fu_3221_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_22_fu_3221_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U233(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_24_fu_3256_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_24_fu_3256_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U234(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_25_fu_3291_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_25_fu_3291_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U235(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_26_fu_3326_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_26_fu_3326_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U236(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_27_fu_3361_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_27_fu_3361_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U237(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_28_fu_3396_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_28_fu_3396_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U238(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_29_fu_3431_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_29_fu_3431_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U239(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_30_fu_3466_p15),.sel(trunc_ln172_1_reg_5185),.dout(tmp_30_fu_3466_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U240(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_31_fu_3611_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_31_fu_3611_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U241(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_33_fu_3646_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_33_fu_3646_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U242(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_34_fu_3681_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_34_fu_3681_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U243(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_35_fu_3716_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_35_fu_3716_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U244(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_36_fu_3751_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_36_fu_3751_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U245(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_37_fu_3786_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_37_fu_3786_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U246(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_38_fu_3821_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_38_fu_3821_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U247(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_39_fu_3856_p15),.sel(trunc_ln172_2_reg_5527),.dout(tmp_39_fu_3856_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U248(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_40_fu_4017_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_40_fu_4017_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U249(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_41_fu_4052_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_41_fu_4052_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U250(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_42_fu_4087_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_42_fu_4087_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U251(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_43_fu_4122_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_43_fu_4122_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U252(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_44_fu_4157_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_44_fu_4157_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U253(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_45_fu_4192_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_45_fu_4192_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U254(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_46_fu_4227_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_46_fu_4227_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U255(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_47_fu_4262_p15),.sel(trunc_ln172_3_reg_5865),.dout(tmp_47_fu_4262_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U256(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4427_p0),.din1(grp_fu_4427_p1),.din2(grp_fu_4427_p2),.ce(1'b1),.dout(grp_fu_4427_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U257(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4436_p0),.din1(grp_fu_4436_p1),.din2(grp_fu_4436_p2),.ce(1'b1),.dout(grp_fu_4436_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U258(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4445_p0),.din1(grp_fu_4445_p1),.din2(grp_fu_4445_p2),.ce(1'b1),.dout(grp_fu_4445_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U259(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4454_p0),.din1(grp_fu_4454_p1),.din2(grp_fu_4454_p2),.ce(1'b1),.dout(grp_fu_4454_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U260(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4463_p0),.din1(grp_fu_4463_p1),.din2(grp_fu_4463_p2),.ce(1'b1),.dout(grp_fu_4463_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U261(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4472_p0),.din1(grp_fu_4472_p1),.din2(grp_fu_4472_p2),.ce(1'b1),.dout(grp_fu_4472_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U262(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4481_p0),.din1(grp_fu_4481_p1),.din2(grp_fu_4481_p2),.ce(1'b1),.dout(grp_fu_4481_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U263(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4490_p0),.din1(grp_fu_4490_p1),.din2(grp_fu_4490_p2),.ce(1'b1),.dout(grp_fu_4490_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U264(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4499_p0),.din1(grp_fu_4499_p1),.din2(grp_fu_4499_p2),.ce(1'b1),.dout(grp_fu_4499_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U265(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4508_p0),.din1(grp_fu_4508_p1),.din2(grp_fu_4508_p2),.ce(1'b1),.dout(grp_fu_4508_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U266(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4517_p0),.din1(grp_fu_4517_p1),.din2(grp_fu_4517_p2),.ce(1'b1),.dout(grp_fu_4517_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4526_p0),.din1(grp_fu_4526_p1),.din2(grp_fu_4526_p2),.ce(1'b1),.dout(grp_fu_4526_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4535_p0),.din1(grp_fu_4535_p1),.din2(grp_fu_4535_p2),.ce(1'b1),.dout(grp_fu_4535_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4544_p0),.din1(grp_fu_4544_p1),.din2(grp_fu_4544_p2),.ce(1'b1),.dout(grp_fu_4544_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4552_p0),.din1(grp_fu_4552_p1),.din2(grp_fu_4552_p2),.ce(1'b1),.dout(grp_fu_4552_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4561_p0),.din1(grp_fu_4561_p1),.din2(grp_fu_4561_p2),.ce(1'b1),.dout(grp_fu_4561_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4570_p0),.din1(grp_fu_4570_p1),.din2(grp_fu_4570_p2),.ce(1'b1),.dout(grp_fu_4570_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4579_p0),.din1(grp_fu_4579_p1),.din2(grp_fu_4579_p2),.ce(1'b1),.dout(grp_fu_4579_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4588_p0),.din1(grp_fu_4588_p1),.din2(grp_fu_4588_p2),.ce(1'b1),.dout(grp_fu_4588_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U275(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4597_p0),.din1(grp_fu_4597_p1),.din2(grp_fu_4597_p2),.ce(1'b1),.dout(grp_fu_4597_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U276(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4606_p0),.din1(grp_fu_4606_p1),.din2(grp_fu_4606_p2),.ce(1'b1),.dout(grp_fu_4606_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4615_p0),.din1(grp_fu_4615_p1),.din2(grp_fu_4615_p2),.ce(1'b1),.dout(grp_fu_4615_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4624_p0),.din1(grp_fu_4624_p1),.din2(grp_fu_4624_p2),.ce(1'b1),.dout(grp_fu_4624_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U279(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4633_p0),.din1(grp_fu_4633_p1),.din2(grp_fu_4633_p2),.ce(1'b1),.dout(grp_fu_4633_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U280(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4642_p0),.din1(grp_fu_4642_p1),.din2(grp_fu_4642_p2),.ce(1'b1),.dout(grp_fu_4642_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U281(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4651_p0),.din1(grp_fu_4651_p1),.din2(grp_fu_4651_p2),.ce(1'b1),.dout(grp_fu_4651_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U282(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4660_p0),.din1(grp_fu_4660_p1),.din2(grp_fu_4660_p2),.ce(1'b1),.dout(grp_fu_4660_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U283(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4668_p0),.din1(grp_fu_4668_p1),.din2(grp_fu_4668_p2),.ce(1'b1),.dout(grp_fu_4668_p3));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_148 <= 7'd0;
    end else if (((tmp_reg_4693 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_fu_148 <= add_ln309_fu_2388_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_1_reg_4711[8 : 1] <= offset_1_fu_2343_p4[8 : 1];
        tmp_23_reg_6197 <= {{tid_2_reg_4683_pp0_iter2_reg[5:1]}};
        tmp_32_reg_6203 <= {{tid_2_reg_4683_pp0_iter2_reg[5:2]}};
        tmp_40_reg_6215 <= tmp_40_fu_4017_p17;
        tmp_41_reg_6220 <= tmp_41_fu_4052_p17;
        tmp_42_reg_6225 <= tmp_42_fu_4087_p17;
        tmp_43_reg_6230 <= tmp_43_fu_4122_p17;
        tmp_44_reg_6235 <= tmp_44_fu_4157_p17;
        tmp_45_reg_6240 <= tmp_45_fu_4192_p17;
        tmp_46_reg_6245 <= tmp_46_fu_4227_p17;
        tmp_47_reg_6250 <= tmp_47_fu_4262_p17;
        tmp_86_reg_4742 <= {{mul_ln172_1_fu_2426_p2[18:12]}};
        zext_ln172_9_reg_4747[8 : 2] <= zext_ln172_9_fu_2445_p1[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_2_reg_4718[8 : 2] <= offset_2_fu_2358_p4[8 : 2];
        tmp_96_reg_4753 <= {{mul_ln172_2_fu_2451_p2[18:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_3_reg_4725[8 : 2] <= offset_3_fu_2373_p4[8 : 2];
        tmp_105_reg_4823 <= {{mul_ln172_3_fu_2587_p2[18:12]}};
        tmp_78_reg_4758 <= {{tmp_78_fu_2467_p1[20:13]}};
        tmp_79_reg_4763 <= {{tmp_79_fu_2476_p1[20:13]}};
        tmp_80_reg_4768 <= {{tmp_80_fu_2485_p1[20:13]}};
        tmp_81_reg_4773 <= {{tmp_81_fu_2494_p1[20:13]}};
        tmp_82_reg_4778 <= {{tmp_82_fu_2503_p1[20:13]}};
        tmp_83_reg_4783 <= {{tmp_83_fu_2512_p1[20:13]}};
        tmp_84_reg_4788 <= {{tmp_84_fu_2521_p1[20:13]}};
        tmp_87_reg_4793 <= {{tmp_87_fu_2530_p1[20:13]}};
        tmp_88_reg_4798 <= {{tmp_88_fu_2539_p1[20:13]}};
        tmp_89_reg_4803 <= {{tmp_89_fu_2548_p1[20:13]}};
        tmp_91_reg_4808 <= {{tmp_91_fu_2557_p1[20:13]}};
        tmp_92_reg_4813 <= {{tmp_92_fu_2566_p1[20:13]}};
        tmp_93_reg_4818 <= {{tmp_93_fu_2575_p1[20:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_4704 <= offset_fu_2320_p3;
        tid_2_reg_4683 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_4683_pp0_iter1_reg <= tid_2_reg_4683;
        tid_2_reg_4683_pp0_iter2_reg <= tid_2_reg_4683_pp0_iter1_reg;
        tmp_31_reg_5877 <= tmp_31_fu_3611_p17;
        tmp_33_reg_5882 <= tmp_33_fu_3646_p17;
        tmp_34_reg_5887 <= tmp_34_fu_3681_p17;
        tmp_35_reg_5892 <= tmp_35_fu_3716_p17;
        tmp_36_reg_5897 <= tmp_36_fu_3751_p17;
        tmp_37_reg_5902 <= tmp_37_fu_3786_p17;
        tmp_38_reg_5907 <= tmp_38_fu_3821_p17;
        tmp_39_reg_5912 <= tmp_39_fu_3856_p17;
        tmp_76_reg_4697 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_77_reg_4732 <= {{mul_ln172_fu_2404_p2[18:12]}};
        tmp_reg_4693 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_4693_pp0_iter1_reg <= tmp_reg_4693;
        zext_ln172_3_reg_4737[8 : 1] <= zext_ln172_3_fu_2420_p1[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_100_reg_4860 <= {{tmp_100_fu_2643_p1[20:13]}};
        tmp_101_reg_4865 <= {{tmp_101_fu_2652_p1[20:13]}};
        tmp_102_reg_4870 <= {{tmp_102_fu_2661_p1[20:13]}};
        tmp_103_reg_4875 <= {{tmp_103_fu_2670_p1[20:13]}};
        tmp_106_reg_4880 <= {{tmp_106_fu_2679_p1[20:13]}};
        tmp_107_reg_4885 <= {{tmp_107_fu_2688_p1[20:13]}};
        tmp_108_reg_4890 <= {{tmp_108_fu_2697_p1[20:13]}};
        tmp_109_reg_4895 <= {{tmp_109_fu_2706_p1[20:13]}};
        tmp_110_reg_4900 <= {{tmp_110_fu_2715_p1[20:13]}};
        tmp_94_reg_4840 <= {{tmp_94_fu_2607_p1[20:13]}};
        tmp_97_reg_4845 <= {{tmp_97_fu_2616_p1[20:13]}};
        tmp_98_reg_4850 <= {{tmp_98_fu_2625_p1[20:13]}};
        tmp_99_reg_4855 <= {{tmp_99_fu_2634_p1[20:13]}};
        trunc_ln172_reg_4828 <= trunc_ln172_fu_2603_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_111_reg_5197 <= {{tmp_111_fu_2808_p1[20:13]}};
        tmp_112_reg_5202 <= {{tmp_112_fu_2817_p1[20:13]}};
        trunc_ln172_1_reg_5185 <= trunc_ln172_1_fu_2804_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_15_reg_5212 <= tmp_15_fu_2861_p17;
        tmp_16_reg_5217 <= tmp_16_fu_2896_p17;
        tmp_17_reg_5222 <= tmp_17_fu_2931_p17;
        tmp_18_reg_5227 <= tmp_18_fu_2966_p17;
        tmp_19_reg_5232 <= tmp_19_fu_3001_p17;
        tmp_20_reg_5237 <= tmp_20_fu_3036_p17;
        tmp_21_reg_5242 <= tmp_21_fu_3071_p17;
        tmp_s_reg_5207 <= tmp_s_fu_2826_p17;
        trunc_ln172_2_reg_5527 <= trunc_ln172_2_fu_3186_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_22_reg_5545 <= tmp_22_fu_3221_p17;
        tmp_24_reg_5550 <= tmp_24_fu_3256_p17;
        tmp_25_reg_5555 <= tmp_25_fu_3291_p17;
        tmp_26_reg_5560 <= tmp_26_fu_3326_p17;
        tmp_27_reg_5565 <= tmp_27_fu_3361_p17;
        tmp_28_reg_5570 <= tmp_28_fu_3396_p17;
        tmp_29_reg_5575 <= tmp_29_fu_3431_p17;
        tmp_30_reg_5580 <= tmp_30_fu_3466_p17;
        trunc_ln172_3_reg_5865 <= trunc_ln172_3_fu_3581_p1;
        trunc_ln314_reg_5539 <= trunc_ln314_fu_3190_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln319_7_fu_4421_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln315_7_fu_4395_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln319_6_fu_4369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_6_fu_4343_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln319_5_fu_4317_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_5_fu_4002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_4_fu_3605_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln315_4_fu_3215_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln318_7_fu_4408_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln314_3_fu_4382_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln318_6_fu_4356_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_2_fu_4330_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln318_5_fu_4304_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_3988_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_4_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln314_fu_3201_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d0_local = tmp_47_reg_6250;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d0_local = tmp_43_reg_6230;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d0_local = tmp_39_reg_5912;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_35_reg_5892;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_30_reg_5580;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_26_reg_5560;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_21_reg_5242;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d0_local = tmp_17_reg_5222;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d1_local = tmp_46_reg_6245;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d1_local = tmp_42_reg_6225;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d1_local = tmp_38_reg_5907;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_34_reg_5887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_29_reg_5575;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_25_reg_5555;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_20_reg_5237;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d1_local = tmp_16_reg_5217;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln319_7_fu_4421_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln315_7_fu_4395_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln319_6_fu_4369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_6_fu_4343_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln319_5_fu_4317_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_5_fu_4002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_4_fu_3605_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln315_4_fu_3215_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln318_7_fu_4408_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln314_3_fu_4382_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln318_6_fu_4356_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_2_fu_4330_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln318_5_fu_4304_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_1_fu_3988_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_4_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln314_fu_3201_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d0_local = tmp_45_reg_6240;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d0_local = tmp_41_reg_6220;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d0_local = tmp_37_reg_5902;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_33_reg_5882;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_28_reg_5570;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_24_reg_5550;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_19_reg_5232;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d0_local = tmp_15_reg_5212;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d1_local = tmp_44_reg_6235;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d1_local = tmp_40_reg_6215;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d1_local = tmp_36_reg_5897;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_31_reg_5877;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_27_reg_5565;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_22_reg_5545;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_18_reg_5227;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d1_local = tmp_s_reg_5207;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_4693 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_4693_pp0_iter1_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_148;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_3_fu_3961_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_3_fu_3951_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_3_fu_3941_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_3_fu_3931_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_3_fu_3921_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_3_fu_3911_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_3_fu_3901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln172_8_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln321_1_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln320_1_fu_3166_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln319_1_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln318_1_fu_3146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln317_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln316_1_fu_3126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln315_1_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln172_2_fu_2724_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_10_fu_3891_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln321_2_fu_3571_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln320_2_fu_3561_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln319_2_fu_3551_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln318_2_fu_3541_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln317_2_fu_3531_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln316_2_fu_3521_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln315_2_fu_3511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln172_5_fu_3106_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln321_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln320_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln319_fu_2774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln318_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln317_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln316_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln315_fu_2734_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_3_fu_3961_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_3_fu_3951_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_3_fu_3941_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_3_fu_3931_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_3_fu_3921_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_3_fu_3911_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_3_fu_3901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln172_8_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln321_1_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln320_1_fu_3166_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln319_1_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln318_1_fu_3146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln317_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln316_1_fu_3126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln315_1_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln172_2_fu_2724_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_10_fu_3891_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln321_2_fu_3571_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln320_2_fu_3561_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln319_2_fu_3551_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln318_2_fu_3541_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln317_2_fu_3531_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln316_2_fu_3521_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln315_2_fu_3511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln172_5_fu_3106_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln321_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln320_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln319_fu_2774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln318_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln317_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln316_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln315_fu_2734_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_3_fu_3961_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_3_fu_3951_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_3_fu_3941_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_3_fu_3931_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_3_fu_3921_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln316_3_fu_3911_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_3_fu_3901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln172_8_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln321_1_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln320_1_fu_3166_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln319_1_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln318_1_fu_3146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln317_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln316_1_fu_3126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln315_1_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln172_2_fu_2724_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_10_fu_3891_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln321_2_fu_3571_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln320_2_fu_3561_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln319_2_fu_3551_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln318_2_fu_3541_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln317_2_fu_3531_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln316_2_fu_3521_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln315_2_fu_3511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln172_5_fu_3106_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln321_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln320_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln319_fu_2774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln318_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln317_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln316_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln315_fu_2734_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_3_fu_3961_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_3_fu_3951_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_3_fu_3941_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_3_fu_3931_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_3_fu_3921_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln316_3_fu_3911_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_3_fu_3901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln172_8_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln321_1_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln320_1_fu_3166_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln319_1_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln318_1_fu_3146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln317_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln316_1_fu_3126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln315_1_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln172_2_fu_2724_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_10_fu_3891_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln321_2_fu_3571_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln320_2_fu_3561_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln319_2_fu_3551_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln318_2_fu_3541_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln317_2_fu_3531_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln316_2_fu_3521_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln315_2_fu_3511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln172_5_fu_3106_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln321_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln320_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln319_fu_2774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln318_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln317_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln316_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln315_fu_2734_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_3_fu_3961_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_3_fu_3951_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln319_3_fu_3941_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_3_fu_3931_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln317_3_fu_3921_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln316_3_fu_3911_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln315_3_fu_3901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address0_local = zext_ln172_8_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln321_1_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln320_1_fu_3166_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln319_1_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln318_1_fu_3146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln317_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln316_1_fu_3126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln315_1_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln172_2_fu_2724_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln172_10_fu_3891_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln321_2_fu_3571_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln320_2_fu_3561_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln319_2_fu_3551_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln318_2_fu_3541_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln317_2_fu_3531_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln316_2_fu_3521_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln315_2_fu_3511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address1_local = zext_ln172_5_fu_3106_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln321_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln320_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln319_fu_2774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln318_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln317_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln316_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln315_fu_2734_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln321_3_fu_3961_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln320_3_fu_3951_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln319_3_fu_3941_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln318_3_fu_3931_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln317_3_fu_3921_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln316_3_fu_3911_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln315_3_fu_3901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address0_local = zext_ln172_8_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln321_1_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln320_1_fu_3166_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln319_1_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln318_1_fu_3146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln317_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln316_1_fu_3126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln315_1_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln172_2_fu_2724_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln172_10_fu_3891_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln321_2_fu_3571_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln320_2_fu_3561_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln319_2_fu_3551_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln318_2_fu_3541_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln317_2_fu_3531_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln316_2_fu_3521_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln315_2_fu_3511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address1_local = zext_ln172_5_fu_3106_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln321_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln320_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln319_fu_2774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln318_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln317_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln316_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln315_fu_2734_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_3_fu_3961_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_3_fu_3951_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_3_fu_3941_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_3_fu_3931_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_3_fu_3921_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_3_fu_3911_p1;
    end else if (((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_3_fu_3901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln172_8_fu_3501_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln321_1_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln320_1_fu_3166_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln319_1_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln318_1_fu_3146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln317_1_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln316_1_fu_3126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln315_1_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln172_2_fu_2724_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_10_fu_3891_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln321_2_fu_3571_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln320_2_fu_3561_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln319_2_fu_3551_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln318_2_fu_3541_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln317_2_fu_3531_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln316_2_fu_3521_p1;
    end else if (((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln315_2_fu_3511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln172_5_fu_3106_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln321_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln320_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln319_fu_2774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln318_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln317_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln316_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln315_fu_2734_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_3_reg_5865 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_5865 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_5185 == 3'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_2_reg_5527 == 3'd6) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd5) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd4) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd3) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd2) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((trunc_ln172_2_reg_5527 == 3'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln172_reg_4828 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign add_ln309_fu_2388_p2 = (tid_2_reg_4683 + 7'd4);
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
assign grp_fu_2281_p4 = {{tid_2_reg_4683[5:2]}};
assign grp_fu_2328_p0 = {{tmp_76_fu_2306_p4}, {trunc_ln312_fu_2316_p1}};
assign grp_fu_2328_p1 = 9'd7;
assign grp_fu_2352_p0 = {{{tmp_76_reg_4697}, {tmp_85_fu_2334_p4}}, {1'd1}};
assign grp_fu_2352_p1 = 9'd7;
assign grp_fu_2367_p0 = {{{tmp_76_reg_4697}, {grp_fu_2281_p4}}, {2'd2}};
assign grp_fu_2367_p1 = 9'd7;
assign grp_fu_2382_p0 = {{{tmp_76_reg_4697}, {grp_fu_2281_p4}}, {2'd3}};
assign grp_fu_2382_p1 = 9'd7;
assign grp_fu_4427_p0 = zext_ln172_fu_2398_p1;
assign grp_fu_4427_p1 = 10'd32;
assign grp_fu_4427_p2 = 21'd1171;
assign grp_fu_4436_p0 = zext_ln172_fu_2398_p1;
assign grp_fu_4436_p1 = 10'd8;
assign grp_fu_4436_p2 = 21'd1171;
assign grp_fu_4445_p0 = zext_ln172_fu_2398_p1;
assign grp_fu_4445_p1 = 10'd40;
assign grp_fu_4445_p2 = 21'd1171;
assign grp_fu_4454_p0 = zext_ln172_fu_2398_p1;
assign grp_fu_4454_p1 = 10'd16;
assign grp_fu_4454_p2 = 21'd1171;
assign grp_fu_4463_p0 = zext_ln172_fu_2398_p1;
assign grp_fu_4463_p1 = 10'd48;
assign grp_fu_4463_p2 = 21'd1171;
assign grp_fu_4472_p0 = zext_ln172_fu_2398_p1;
assign grp_fu_4472_p1 = 10'd24;
assign grp_fu_4472_p2 = 21'd1171;
assign grp_fu_4481_p0 = zext_ln172_fu_2398_p1;
assign grp_fu_4481_p1 = 10'd56;
assign grp_fu_4481_p2 = 21'd1171;
assign grp_fu_4490_p0 = zext_ln172_3_fu_2420_p1;
assign grp_fu_4490_p1 = 10'd32;
assign grp_fu_4490_p2 = 21'd1171;
assign grp_fu_4499_p0 = zext_ln172_3_fu_2420_p1;
assign grp_fu_4499_p1 = 10'd8;
assign grp_fu_4499_p2 = 21'd1171;
assign grp_fu_4508_p0 = zext_ln172_3_fu_2420_p1;
assign grp_fu_4508_p1 = 10'd40;
assign grp_fu_4508_p2 = 21'd1171;
assign grp_fu_4517_p0 = zext_ln172_3_fu_2420_p1;
assign grp_fu_4517_p1 = 10'd16;
assign grp_fu_4517_p2 = 21'd1171;
assign grp_fu_4526_p0 = zext_ln172_3_fu_2420_p1;
assign grp_fu_4526_p1 = 10'd48;
assign grp_fu_4526_p2 = 21'd1171;
assign grp_fu_4535_p0 = zext_ln172_3_fu_2420_p1;
assign grp_fu_4535_p1 = 10'd24;
assign grp_fu_4535_p2 = 21'd1171;
assign grp_fu_4544_p0 = zext_ln172_3_reg_4737;
assign grp_fu_4544_p1 = 10'd56;
assign grp_fu_4544_p2 = 21'd1171;
assign grp_fu_4552_p0 = zext_ln172_6_fu_2442_p1;
assign grp_fu_4552_p1 = 10'd32;
assign grp_fu_4552_p2 = 21'd1171;
assign grp_fu_4561_p0 = zext_ln172_6_fu_2442_p1;
assign grp_fu_4561_p1 = 10'd8;
assign grp_fu_4561_p2 = 21'd1171;
assign grp_fu_4570_p0 = zext_ln172_6_fu_2442_p1;
assign grp_fu_4570_p1 = 10'd40;
assign grp_fu_4570_p2 = 21'd1171;
assign grp_fu_4579_p0 = zext_ln172_6_fu_2442_p1;
assign grp_fu_4579_p1 = 10'd16;
assign grp_fu_4579_p2 = 21'd1171;
assign grp_fu_4588_p0 = zext_ln172_6_fu_2442_p1;
assign grp_fu_4588_p1 = 10'd48;
assign grp_fu_4588_p2 = 21'd1171;
assign grp_fu_4597_p0 = zext_ln172_6_fu_2442_p1;
assign grp_fu_4597_p1 = 10'd24;
assign grp_fu_4597_p2 = 21'd1171;
assign grp_fu_4606_p0 = zext_ln172_6_fu_2442_p1;
assign grp_fu_4606_p1 = 10'd56;
assign grp_fu_4606_p2 = 21'd1171;
assign grp_fu_4615_p0 = zext_ln172_9_fu_2445_p1;
assign grp_fu_4615_p1 = 10'd32;
assign grp_fu_4615_p2 = 21'd1171;
assign grp_fu_4624_p0 = zext_ln172_9_fu_2445_p1;
assign grp_fu_4624_p1 = 10'd8;
assign grp_fu_4624_p2 = 21'd1171;
assign grp_fu_4633_p0 = zext_ln172_9_fu_2445_p1;
assign grp_fu_4633_p1 = 10'd40;
assign grp_fu_4633_p2 = 21'd1171;
assign grp_fu_4642_p0 = zext_ln172_9_fu_2445_p1;
assign grp_fu_4642_p1 = 10'd16;
assign grp_fu_4642_p2 = 21'd1171;
assign grp_fu_4651_p0 = zext_ln172_9_fu_2445_p1;
assign grp_fu_4651_p1 = 10'd48;
assign grp_fu_4651_p2 = 21'd1171;
assign grp_fu_4660_p0 = zext_ln172_9_reg_4747;
assign grp_fu_4660_p1 = 10'd24;
assign grp_fu_4660_p2 = 21'd1171;
assign grp_fu_4668_p0 = zext_ln172_9_reg_4747;
assign grp_fu_4668_p1 = 10'd56;
assign grp_fu_4668_p2 = 21'd1171;
assign mul_ln172_1_fu_2426_p0 = mul_ln172_1_fu_2426_p00;
assign mul_ln172_1_fu_2426_p00 = offset_1_reg_4711;
assign mul_ln172_1_fu_2426_p1 = 19'd586;
assign mul_ln172_2_fu_2451_p0 = mul_ln172_2_fu_2451_p00;
assign mul_ln172_2_fu_2451_p00 = offset_2_reg_4718;
assign mul_ln172_2_fu_2451_p1 = 19'd586;
assign mul_ln172_3_fu_2587_p0 = mul_ln172_3_fu_2587_p00;
assign mul_ln172_3_fu_2587_p00 = offset_3_reg_4725;
assign mul_ln172_3_fu_2587_p1 = 19'd586;
assign mul_ln172_fu_2404_p0 = mul_ln172_fu_2404_p00;
assign mul_ln172_fu_2404_p00 = offset_reg_4704;
assign mul_ln172_fu_2404_p1 = 19'd586;
assign offset_1_fu_2343_p4 = {{{tmp_76_reg_4697}, {tmp_85_fu_2334_p4}}, {1'd1}};
assign offset_2_fu_2358_p4 = {{{tmp_76_reg_4697}, {grp_fu_2281_p4}}, {2'd2}};
assign offset_3_fu_2373_p4 = {{{tmp_76_reg_4697}, {grp_fu_2281_p4}}, {2'd3}};
assign offset_fu_2320_p3 = {{tmp_76_fu_2306_p4}, {trunc_ln312_fu_2316_p1}};
assign or_ln315_1_fu_3994_p3 = {{tmp_23_fu_3971_p4}, {3'd6}};
assign or_ln315_2_fu_4336_p3 = {{tmp_32_reg_6203}, {4'd10}};
assign or_ln315_3_fu_4388_p3 = {{tmp_32_reg_6203}, {4'd14}};
assign or_ln318_1_fu_4297_p3 = {{tmp_23_reg_6197}, {3'd5}};
assign or_ln318_2_fu_4349_p3 = {{tmp_32_reg_6203}, {4'd9}};
assign or_ln318_3_fu_4401_p3 = {{tmp_32_reg_6203}, {4'd13}};
assign or_ln319_1_fu_4310_p3 = {{tmp_23_reg_6197}, {3'd7}};
assign or_ln319_2_fu_4362_p3 = {{tmp_32_reg_6203}, {4'd11}};
assign or_ln319_3_fu_4414_p3 = {{tmp_32_reg_6203}, {4'd15}};
assign or_ln5_fu_3585_p3 = {{trunc_ln314_reg_5539}, {2'd1}};
assign or_ln6_fu_3598_p3 = {{trunc_ln314_reg_5539}, {2'd3}};
assign or_ln7_fu_4323_p3 = {{tmp_32_reg_6203}, {4'd8}};
assign or_ln_fu_3207_p3 = {{trunc_ln314_fu_3190_p1}, {2'd2}};
assign shl_ln314_1_fu_3980_p3 = {{tmp_23_fu_3971_p4}, {3'd4}};
assign shl_ln314_2_fu_4375_p3 = {{tmp_32_reg_6203}, {4'd12}};
assign shl_ln7_fu_3193_p3 = {{trunc_ln314_fu_3190_p1}, {2'd0}};
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
assign tmp_100_fu_2643_p1 = grp_fu_4579_p3;
assign tmp_101_fu_2652_p1 = grp_fu_4588_p3;
assign tmp_102_fu_2661_p1 = grp_fu_4597_p3;
assign tmp_103_fu_2670_p1 = grp_fu_4606_p3;
assign tmp_106_fu_2679_p1 = grp_fu_4615_p3;
assign tmp_107_fu_2688_p1 = grp_fu_4624_p3;
assign tmp_108_fu_2697_p1 = grp_fu_4633_p3;
assign tmp_109_fu_2706_p1 = grp_fu_4642_p3;
assign tmp_110_fu_2715_p1 = grp_fu_4651_p3;
assign tmp_111_fu_2808_p1 = grp_fu_4660_p3;
assign tmp_112_fu_2817_p1 = grp_fu_4668_p3;
assign tmp_15_fu_2861_p15 = 'bx;
assign tmp_16_fu_2896_p15 = 'bx;
assign tmp_17_fu_2931_p15 = 'bx;
assign tmp_18_fu_2966_p15 = 'bx;
assign tmp_19_fu_3001_p15 = 'bx;
assign tmp_20_fu_3036_p15 = 'bx;
assign tmp_21_fu_3071_p15 = 'bx;
assign tmp_22_fu_3221_p15 = 'bx;
assign tmp_23_fu_3971_p4 = {{tid_2_reg_4683_pp0_iter2_reg[5:1]}};
assign tmp_24_fu_3256_p15 = 'bx;
assign tmp_25_fu_3291_p15 = 'bx;
assign tmp_26_fu_3326_p15 = 'bx;
assign tmp_27_fu_3361_p15 = 'bx;
assign tmp_28_fu_3396_p15 = 'bx;
assign tmp_29_fu_3431_p15 = 'bx;
assign tmp_30_fu_3466_p15 = 'bx;
assign tmp_31_fu_3611_p15 = 'bx;
assign tmp_33_fu_3646_p15 = 'bx;
assign tmp_34_fu_3681_p15 = 'bx;
assign tmp_35_fu_3716_p15 = 'bx;
assign tmp_36_fu_3751_p15 = 'bx;
assign tmp_37_fu_3786_p15 = 'bx;
assign tmp_38_fu_3821_p15 = 'bx;
assign tmp_39_fu_3856_p15 = 'bx;
assign tmp_40_fu_4017_p15 = 'bx;
assign tmp_41_fu_4052_p15 = 'bx;
assign tmp_42_fu_4087_p15 = 'bx;
assign tmp_43_fu_4122_p15 = 'bx;
assign tmp_44_fu_4157_p15 = 'bx;
assign tmp_45_fu_4192_p15 = 'bx;
assign tmp_46_fu_4227_p15 = 'bx;
assign tmp_47_fu_4262_p15 = 'bx;
assign tmp_76_fu_2306_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_78_fu_2467_p1 = grp_fu_4427_p3;
assign tmp_79_fu_2476_p1 = grp_fu_4436_p3;
assign tmp_80_fu_2485_p1 = grp_fu_4445_p3;
assign tmp_81_fu_2494_p1 = grp_fu_4454_p3;
assign tmp_82_fu_2503_p1 = grp_fu_4463_p3;
assign tmp_83_fu_2512_p1 = grp_fu_4472_p3;
assign tmp_84_fu_2521_p1 = grp_fu_4481_p3;
assign tmp_85_fu_2334_p4 = {{tid_2_reg_4683[5:1]}};
assign tmp_87_fu_2530_p1 = grp_fu_4490_p3;
assign tmp_88_fu_2539_p1 = grp_fu_4499_p3;
assign tmp_89_fu_2548_p1 = grp_fu_4508_p3;
assign tmp_91_fu_2557_p1 = grp_fu_4517_p3;
assign tmp_92_fu_2566_p1 = grp_fu_4526_p3;
assign tmp_93_fu_2575_p1 = grp_fu_4535_p3;
assign tmp_94_fu_2607_p1 = grp_fu_4544_p3;
assign tmp_97_fu_2616_p1 = grp_fu_4552_p3;
assign tmp_98_fu_2625_p1 = grp_fu_4561_p3;
assign tmp_99_fu_2634_p1 = grp_fu_4570_p3;
assign tmp_s_fu_2826_p15 = 'bx;
assign trunc_ln172_1_fu_2804_p1 = grp_fu_2352_p2[2:0];
assign trunc_ln172_2_fu_3186_p1 = grp_fu_2367_p2[2:0];
assign trunc_ln172_3_fu_3581_p1 = grp_fu_2382_p2[2:0];
assign trunc_ln172_fu_2603_p1 = grp_fu_2328_p2[2:0];
assign trunc_ln312_fu_2316_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_3190_p1 = tid_2_reg_4683_pp0_iter1_reg[5:0];
assign zext_ln172_10_fu_3891_p1 = tmp_105_reg_4823;
assign zext_ln172_2_fu_2724_p1 = tmp_77_reg_4732;
assign zext_ln172_3_fu_2420_p1 = offset_1_reg_4711;
assign zext_ln172_5_fu_3106_p1 = tmp_86_reg_4742;
assign zext_ln172_6_fu_2442_p1 = offset_2_reg_4718;
assign zext_ln172_8_fu_3501_p1 = tmp_96_reg_4753;
assign zext_ln172_9_fu_2445_p1 = offset_3_reg_4725;
assign zext_ln172_fu_2398_p1 = offset_reg_4704;
assign zext_ln314_1_fu_3988_p1 = shl_ln314_1_fu_3980_p3;
assign zext_ln314_2_fu_4330_p1 = or_ln7_fu_4323_p3;
assign zext_ln314_3_fu_4382_p1 = shl_ln314_2_fu_4375_p3;
assign zext_ln314_fu_3201_p1 = shl_ln7_fu_3193_p3;
assign zext_ln315_1_fu_3116_p1 = tmp_87_reg_4793;
assign zext_ln315_2_fu_3511_p1 = tmp_97_reg_4845;
assign zext_ln315_3_fu_3901_p1 = tmp_106_reg_4880;
assign zext_ln315_4_fu_3215_p1 = or_ln_fu_3207_p3;
assign zext_ln315_5_fu_4002_p1 = or_ln315_1_fu_3994_p3;
assign zext_ln315_6_fu_4343_p1 = or_ln315_2_fu_4336_p3;
assign zext_ln315_7_fu_4395_p1 = or_ln315_3_fu_4388_p3;
assign zext_ln315_fu_2734_p1 = tmp_78_reg_4758;
assign zext_ln316_1_fu_3126_p1 = tmp_88_reg_4798;
assign zext_ln316_2_fu_3521_p1 = tmp_98_reg_4850;
assign zext_ln316_3_fu_3911_p1 = tmp_107_reg_4885;
assign zext_ln316_fu_2744_p1 = tmp_79_reg_4763;
assign zext_ln317_1_fu_3136_p1 = tmp_89_reg_4803;
assign zext_ln317_2_fu_3531_p1 = tmp_99_reg_4855;
assign zext_ln317_3_fu_3921_p1 = tmp_108_reg_4890;
assign zext_ln317_fu_2754_p1 = tmp_80_reg_4768;
assign zext_ln318_1_fu_3146_p1 = tmp_91_reg_4808;
assign zext_ln318_2_fu_3541_p1 = tmp_100_reg_4860;
assign zext_ln318_3_fu_3931_p1 = tmp_109_reg_4895;
assign zext_ln318_4_fu_3592_p1 = or_ln5_fu_3585_p3;
assign zext_ln318_5_fu_4304_p1 = or_ln318_1_fu_4297_p3;
assign zext_ln318_6_fu_4356_p1 = or_ln318_2_fu_4349_p3;
assign zext_ln318_7_fu_4408_p1 = or_ln318_3_fu_4401_p3;
assign zext_ln318_fu_2764_p1 = tmp_81_reg_4773;
assign zext_ln319_1_fu_3156_p1 = tmp_92_reg_4813;
assign zext_ln319_2_fu_3551_p1 = tmp_101_reg_4865;
assign zext_ln319_3_fu_3941_p1 = tmp_110_reg_4900;
assign zext_ln319_4_fu_3605_p1 = or_ln6_fu_3598_p3;
assign zext_ln319_5_fu_4317_p1 = or_ln319_1_fu_4310_p3;
assign zext_ln319_6_fu_4369_p1 = or_ln319_2_fu_4362_p3;
assign zext_ln319_7_fu_4421_p1 = or_ln319_3_fu_4414_p3;
assign zext_ln319_fu_2774_p1 = tmp_82_reg_4778;
assign zext_ln320_1_fu_3166_p1 = tmp_93_reg_4818;
assign zext_ln320_2_fu_3561_p1 = tmp_102_reg_4870;
assign zext_ln320_3_fu_3951_p1 = tmp_111_reg_5197;
assign zext_ln320_fu_2784_p1 = tmp_83_reg_4783;
assign zext_ln321_1_fu_3176_p1 = tmp_94_reg_4840;
assign zext_ln321_2_fu_3571_p1 = tmp_103_reg_4875;
assign zext_ln321_3_fu_3961_p1 = tmp_112_reg_5202;
assign zext_ln321_fu_2794_p1 = tmp_84_reg_4788;
always @ (posedge ap_clk) begin
    offset_1_reg_4711[0] <= 1'b1;
    offset_2_reg_4718[1:0] <= 2'b10;
    offset_3_reg_4725[1:0] <= 2'b11;
    zext_ln172_3_reg_4737[0] <= 1'b1;
    zext_ln172_3_reg_4737[9] <= 1'b0;
    zext_ln172_9_reg_4747[1:0] <= 2'b11;
    zext_ln172_9_reg_4747[9] <= 1'b0;
end
endmodule 