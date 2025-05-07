module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1); 
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
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
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
reg   [0:0] tmp_reg_4560;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_4550;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_4550_pp0_iter1_reg;
reg   [6:0] tid_2_reg_4550_pp0_iter2_reg;
reg   [6:0] tid_2_reg_4550_pp0_iter3_reg;
reg   [0:0] tmp_reg_4560_pp0_iter1_reg;
reg   [0:0] tmp_reg_4560_pp0_iter2_reg;
reg   [0:0] tmp_reg_4560_pp0_iter3_reg;
wire   [2:0] tmp_87_fu_2316_p4;
reg   [2:0] tmp_87_reg_4564;
wire   [8:0] offset_fu_2330_p3;
reg   [8:0] offset_reg_4571;
reg   [8:0] offset_reg_4571_pp0_iter1_reg;
reg   [8:0] offset_reg_4571_pp0_iter2_reg;
wire   [8:0] offset_4_fu_2353_p4;
reg   [8:0] offset_4_reg_4578;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_4_reg_4578_pp0_iter1_reg;
reg   [8:0] offset_4_reg_4578_pp0_iter2_reg;
wire   [8:0] offset_5_fu_2368_p4;
reg   [8:0] offset_5_reg_4585;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [8:0] offset_5_reg_4585_pp0_iter1_reg;
reg   [8:0] offset_5_reg_4585_pp0_iter2_reg;
wire   [8:0] offset_6_fu_2383_p4;
reg   [8:0] offset_6_reg_4592;
wire    ap_block_pp0_stage3_11001;
reg   [8:0] offset_6_reg_4592_pp0_iter1_reg;
reg   [8:0] offset_6_reg_4592_pp0_iter2_reg;
reg   [7:0] tmp_89_reg_4599;
reg   [7:0] tmp_90_reg_4604;
reg   [7:0] tmp_91_reg_4609;
reg   [7:0] tmp_92_reg_4614;
reg   [7:0] tmp_93_reg_4619;
reg   [7:0] tmp_94_reg_4624;
reg   [7:0] tmp_95_reg_4629;
reg   [6:0] tmp_88_reg_4634;
wire   [2:0] trunc_ln172_fu_2502_p1;
reg   [2:0] trunc_ln172_reg_4639;
reg   [7:0] tmp_98_reg_4651;
reg   [7:0] tmp_99_reg_4656;
reg   [7:0] tmp_100_reg_4661;
reg   [7:0] tmp_101_reg_4666;
reg   [7:0] tmp_102_reg_4671;
reg   [7:0] tmp_103_reg_4676;
reg   [7:0] tmp_104_reg_4681;
reg   [6:0] tmp_97_reg_4966;
wire   [2:0] trunc_ln172_4_fu_2668_p1;
reg   [2:0] trunc_ln172_4_reg_4971;
reg   [7:0] tmp_107_reg_4983;
reg   [7:0] tmp_108_reg_4988;
reg   [7:0] tmp_109_reg_4993;
reg   [7:0] tmp_110_reg_4998;
reg   [7:0] tmp_111_reg_5003;
reg   [7:0] tmp_112_reg_5008;
reg   [7:0] tmp_113_reg_5013;
wire   [63:0] tmp_s_fu_2735_p17;
reg   [63:0] tmp_s_reg_5018;
wire   [63:0] tmp_21_fu_2770_p17;
reg   [63:0] tmp_21_reg_5023;
wire   [63:0] tmp_22_fu_2805_p17;
reg   [63:0] tmp_22_reg_5028;
wire   [63:0] tmp_23_fu_2840_p17;
reg   [63:0] tmp_23_reg_5033;
wire   [63:0] tmp_24_fu_2875_p17;
reg   [63:0] tmp_24_reg_5038;
wire   [63:0] tmp_25_fu_2910_p17;
reg   [63:0] tmp_25_reg_5043;
wire   [63:0] tmp_26_fu_2945_p17;
reg   [63:0] tmp_26_reg_5048;
wire   [63:0] tmp_27_fu_2980_p17;
reg   [63:0] tmp_27_reg_5053;
reg   [6:0] tmp_106_reg_5338;
wire   [2:0] trunc_ln172_5_fu_3114_p1;
reg   [2:0] trunc_ln172_5_reg_5343;
reg   [7:0] tmp_116_reg_5355;
reg   [7:0] tmp_117_reg_5360;
reg   [7:0] tmp_118_reg_5365;
reg   [7:0] tmp_119_reg_5370;
reg   [7:0] tmp_120_reg_5375;
reg   [7:0] tmp_121_reg_5380;
reg   [7:0] tmp_122_reg_5385;
wire   [63:0] tmp_29_fu_3192_p17;
reg   [63:0] tmp_29_reg_5390;
wire   [63:0] tmp_30_fu_3227_p17;
reg   [63:0] tmp_30_reg_5395;
wire   [63:0] tmp_31_fu_3262_p17;
reg   [63:0] tmp_31_reg_5400;
wire   [63:0] tmp_32_fu_3297_p17;
reg   [63:0] tmp_32_reg_5405;
wire   [63:0] tmp_33_fu_3332_p17;
reg   [63:0] tmp_33_reg_5410;
wire   [63:0] tmp_34_fu_3367_p17;
reg   [63:0] tmp_34_reg_5415;
wire   [63:0] tmp_35_fu_3402_p17;
reg   [63:0] tmp_35_reg_5420;
wire   [63:0] tmp_36_fu_3437_p17;
reg   [63:0] tmp_36_reg_5425;
reg   [6:0] tmp_115_reg_5710;
wire   [2:0] trunc_ln172_6_fu_3571_p1;
reg   [2:0] trunc_ln172_6_reg_5715;
reg   [3:0] tmp_37_reg_5727;
wire   [63:0] tmp_38_fu_3613_p17;
reg   [63:0] tmp_38_reg_5733;
wire   [63:0] tmp_39_fu_3648_p17;
reg   [63:0] tmp_39_reg_5738;
wire   [63:0] tmp_40_fu_3683_p17;
reg   [63:0] tmp_40_reg_5743;
wire   [63:0] tmp_41_fu_3718_p17;
reg   [63:0] tmp_41_reg_5748;
wire   [63:0] tmp_42_fu_3753_p17;
reg   [63:0] tmp_42_reg_5753;
wire   [63:0] tmp_43_fu_3788_p17;
reg   [63:0] tmp_43_reg_5758;
wire   [63:0] tmp_44_fu_3823_p17;
reg   [63:0] tmp_44_reg_5763;
wire   [63:0] tmp_45_fu_3858_p17;
reg   [63:0] tmp_45_reg_5768;
wire   [63:0] tmp_46_fu_3992_p17;
reg   [63:0] tmp_46_reg_6053;
wire   [63:0] tmp_47_fu_4027_p17;
reg   [63:0] tmp_47_reg_6058;
wire   [63:0] tmp_48_fu_4062_p17;
reg   [63:0] tmp_48_reg_6063;
wire   [63:0] tmp_49_fu_4097_p17;
reg   [63:0] tmp_49_reg_6068;
wire   [63:0] tmp_50_fu_4132_p17;
reg   [63:0] tmp_50_reg_6073;
wire   [63:0] tmp_51_fu_4167_p17;
reg   [63:0] tmp_51_reg_6078;
wire   [63:0] tmp_52_fu_4202_p17;
reg   [63:0] tmp_52_reg_6083;
wire   [63:0] tmp_53_fu_4237_p17;
reg   [63:0] tmp_53_reg_6088;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_16_fu_2569_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_2579_p1;
wire   [63:0] zext_ln316_fu_2589_p1;
wire   [63:0] zext_ln317_fu_2599_p1;
wire   [63:0] zext_ln318_fu_2609_p1;
wire   [63:0] zext_ln319_fu_2619_p1;
wire   [63:0] zext_ln320_fu_2629_p1;
wire   [63:0] zext_ln321_fu_2639_p1;
wire   [63:0] zext_ln172_17_fu_3015_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln315_1_fu_3025_p1;
wire   [63:0] zext_ln316_1_fu_3035_p1;
wire   [63:0] zext_ln317_1_fu_3045_p1;
wire   [63:0] zext_ln318_1_fu_3055_p1;
wire   [63:0] zext_ln319_1_fu_3065_p1;
wire   [63:0] zext_ln320_1_fu_3075_p1;
wire   [63:0] zext_ln321_1_fu_3085_p1;
wire   [63:0] zext_ln309_fu_3181_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_18_fu_3472_p1;
wire   [63:0] zext_ln315_2_fu_3482_p1;
wire   [63:0] zext_ln316_2_fu_3492_p1;
wire   [63:0] zext_ln317_2_fu_3502_p1;
wire   [63:0] zext_ln318_2_fu_3512_p1;
wire   [63:0] zext_ln319_2_fu_3522_p1;
wire   [63:0] zext_ln320_2_fu_3532_p1;
wire   [63:0] zext_ln321_2_fu_3542_p1;
wire   [63:0] zext_ln312_fu_3592_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_19_fu_3893_p1;
wire   [63:0] zext_ln315_3_fu_3903_p1;
wire   [63:0] zext_ln316_3_fu_3913_p1;
wire   [63:0] zext_ln317_3_fu_3923_p1;
wire   [63:0] zext_ln318_3_fu_3933_p1;
wire   [63:0] zext_ln319_3_fu_3943_p1;
wire   [63:0] zext_ln320_3_fu_3953_p1;
wire   [63:0] zext_ln321_3_fu_3963_p1;
wire   [63:0] zext_ln312_1_fu_3980_p1;
wire   [63:0] zext_ln312_2_fu_4279_p1;
reg   [6:0] tid_fu_136;
wire   [6:0] add_ln309_fu_2398_p2;
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
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [5:0] DATA_x_address0_local;
reg    DATA_x_4_we0_local;
reg   [63:0] DATA_x_4_d0_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_5_we0_local;
reg   [63:0] DATA_x_5_d0_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_2_we0_local;
reg   [63:0] DATA_x_2_d0_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_6_we0_local;
reg   [63:0] DATA_x_6_d0_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_3_we0_local;
reg   [63:0] DATA_x_3_d0_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_7_we0_local;
reg   [63:0] DATA_x_7_d0_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
wire   [5:0] trunc_ln312_fu_2326_p1;
wire   [8:0] grp_fu_2338_p0;
wire   [3:0] grp_fu_2338_p1;
wire   [4:0] tmp_96_fu_2344_p4;
wire   [8:0] grp_fu_2362_p0;
wire   [3:0] grp_fu_2362_p1;
wire   [3:0] grp_fu_2291_p4;
wire   [8:0] grp_fu_2377_p0;
wire   [3:0] grp_fu_2377_p1;
wire   [8:0] grp_fu_2392_p0;
wire   [3:0] grp_fu_2392_p1;
wire   [20:0] tmp_89_fu_2417_p1;
wire  signed [20:0] grp_fu_4291_p3;
wire   [20:0] tmp_90_fu_2426_p1;
wire  signed [20:0] grp_fu_4300_p3;
wire   [20:0] tmp_91_fu_2435_p1;
wire  signed [20:0] grp_fu_4309_p3;
wire   [20:0] tmp_92_fu_2444_p1;
wire  signed [20:0] grp_fu_4318_p3;
wire   [20:0] tmp_93_fu_2453_p1;
wire  signed [20:0] grp_fu_4327_p3;
wire   [20:0] tmp_94_fu_2462_p1;
wire  signed [20:0] grp_fu_4336_p3;
wire   [20:0] tmp_95_fu_2471_p1;
wire  signed [20:0] grp_fu_4345_p3;
wire   [8:0] mul_ln172_fu_2486_p0;
wire   [10:0] mul_ln172_fu_2486_p1;
wire   [18:0] mul_ln172_fu_2486_p2;
wire   [2:0] grp_fu_2338_p2;
wire   [20:0] tmp_98_fu_2506_p1;
wire  signed [20:0] grp_fu_4354_p3;
wire   [20:0] tmp_99_fu_2515_p1;
wire  signed [20:0] grp_fu_4363_p3;
wire   [20:0] tmp_100_fu_2524_p1;
wire  signed [20:0] grp_fu_4372_p3;
wire   [20:0] tmp_101_fu_2533_p1;
wire  signed [20:0] grp_fu_4381_p3;
wire   [20:0] tmp_102_fu_2542_p1;
wire  signed [20:0] grp_fu_4390_p3;
wire   [20:0] tmp_103_fu_2551_p1;
wire  signed [20:0] grp_fu_4399_p3;
wire   [20:0] tmp_104_fu_2560_p1;
wire  signed [20:0] grp_fu_4408_p3;
wire   [8:0] mul_ln172_4_fu_2652_p0;
wire   [10:0] mul_ln172_4_fu_2652_p1;
wire   [18:0] mul_ln172_4_fu_2652_p2;
wire   [2:0] grp_fu_2362_p2;
wire   [20:0] tmp_107_fu_2672_p1;
wire  signed [20:0] grp_fu_4417_p3;
wire   [20:0] tmp_108_fu_2681_p1;
wire  signed [20:0] grp_fu_4426_p3;
wire   [20:0] tmp_109_fu_2690_p1;
wire  signed [20:0] grp_fu_4435_p3;
wire   [20:0] tmp_110_fu_2699_p1;
wire  signed [20:0] grp_fu_4444_p3;
wire   [20:0] tmp_111_fu_2708_p1;
wire  signed [20:0] grp_fu_4453_p3;
wire   [20:0] tmp_112_fu_2717_p1;
wire  signed [20:0] grp_fu_4462_p3;
wire   [20:0] tmp_113_fu_2726_p1;
wire  signed [20:0] grp_fu_4471_p3;
wire   [63:0] tmp_s_fu_2735_p15;
wire   [63:0] tmp_21_fu_2770_p15;
wire   [63:0] tmp_22_fu_2805_p15;
wire   [63:0] tmp_23_fu_2840_p15;
wire   [63:0] tmp_24_fu_2875_p15;
wire   [63:0] tmp_25_fu_2910_p15;
wire   [63:0] tmp_26_fu_2945_p15;
wire   [63:0] tmp_27_fu_2980_p15;
wire   [8:0] mul_ln172_5_fu_3098_p0;
wire   [10:0] mul_ln172_5_fu_3098_p1;
wire   [18:0] mul_ln172_5_fu_3098_p2;
wire   [2:0] grp_fu_2377_p2;
wire   [20:0] tmp_116_fu_3118_p1;
wire  signed [20:0] grp_fu_4480_p3;
wire   [20:0] tmp_117_fu_3127_p1;
wire  signed [20:0] grp_fu_4489_p3;
wire   [20:0] tmp_118_fu_3136_p1;
wire  signed [20:0] grp_fu_4498_p3;
wire   [20:0] tmp_119_fu_3145_p1;
wire  signed [20:0] grp_fu_4507_p3;
wire   [20:0] tmp_120_fu_3154_p1;
wire  signed [20:0] grp_fu_4516_p3;
wire   [20:0] tmp_121_fu_3163_p1;
wire  signed [20:0] grp_fu_4525_p3;
wire   [20:0] tmp_122_fu_3172_p1;
wire  signed [20:0] grp_fu_4534_p3;
wire   [63:0] tmp_29_fu_3192_p15;
wire   [63:0] tmp_30_fu_3227_p15;
wire   [63:0] tmp_31_fu_3262_p15;
wire   [63:0] tmp_32_fu_3297_p15;
wire   [63:0] tmp_33_fu_3332_p15;
wire   [63:0] tmp_34_fu_3367_p15;
wire   [63:0] tmp_35_fu_3402_p15;
wire   [63:0] tmp_36_fu_3437_p15;
wire   [8:0] mul_ln172_6_fu_3555_p0;
wire   [10:0] mul_ln172_6_fu_3555_p1;
wire   [18:0] mul_ln172_6_fu_3555_p2;
wire   [2:0] grp_fu_2392_p2;
wire   [4:0] tmp_28_fu_3575_p4;
wire   [5:0] or_ln_fu_3584_p3;
wire   [63:0] tmp_38_fu_3613_p15;
wire   [63:0] tmp_39_fu_3648_p15;
wire   [63:0] tmp_40_fu_3683_p15;
wire   [63:0] tmp_41_fu_3718_p15;
wire   [63:0] tmp_42_fu_3753_p15;
wire   [63:0] tmp_43_fu_3788_p15;
wire   [63:0] tmp_44_fu_3823_p15;
wire   [63:0] tmp_45_fu_3858_p15;
wire   [5:0] or_ln309_1_fu_3973_p3;
wire   [63:0] tmp_46_fu_3992_p15;
wire   [63:0] tmp_47_fu_4027_p15;
wire   [63:0] tmp_48_fu_4062_p15;
wire   [63:0] tmp_49_fu_4097_p15;
wire   [63:0] tmp_50_fu_4132_p15;
wire   [63:0] tmp_51_fu_4167_p15;
wire   [63:0] tmp_52_fu_4202_p15;
wire   [63:0] tmp_53_fu_4237_p15;
wire   [5:0] or_ln309_2_fu_4272_p3;
wire   [8:0] grp_fu_4291_p0;
wire   [9:0] zext_ln172_fu_2408_p1;
wire   [5:0] grp_fu_4291_p1;
wire   [10:0] grp_fu_4291_p2;
wire   [8:0] grp_fu_4300_p0;
wire   [3:0] grp_fu_4300_p1;
wire   [10:0] grp_fu_4300_p2;
wire   [8:0] grp_fu_4309_p0;
wire   [5:0] grp_fu_4309_p1;
wire   [10:0] grp_fu_4309_p2;
wire   [8:0] grp_fu_4318_p0;
wire   [4:0] grp_fu_4318_p1;
wire   [10:0] grp_fu_4318_p2;
wire   [8:0] grp_fu_4327_p0;
wire   [5:0] grp_fu_4327_p1;
wire   [10:0] grp_fu_4327_p2;
wire   [8:0] grp_fu_4336_p0;
wire   [4:0] grp_fu_4336_p1;
wire   [10:0] grp_fu_4336_p2;
wire   [8:0] grp_fu_4345_p0;
wire   [5:0] grp_fu_4345_p1;
wire   [10:0] grp_fu_4345_p2;
wire   [8:0] grp_fu_4354_p0;
wire   [9:0] zext_ln172_21_fu_2411_p1;
wire   [5:0] grp_fu_4354_p1;
wire   [10:0] grp_fu_4354_p2;
wire   [8:0] grp_fu_4363_p0;
wire   [3:0] grp_fu_4363_p1;
wire   [10:0] grp_fu_4363_p2;
wire   [8:0] grp_fu_4372_p0;
wire   [5:0] grp_fu_4372_p1;
wire   [10:0] grp_fu_4372_p2;
wire   [8:0] grp_fu_4381_p0;
wire   [4:0] grp_fu_4381_p1;
wire   [10:0] grp_fu_4381_p2;
wire   [8:0] grp_fu_4390_p0;
wire   [5:0] grp_fu_4390_p1;
wire   [10:0] grp_fu_4390_p2;
wire   [8:0] grp_fu_4399_p0;
wire   [4:0] grp_fu_4399_p1;
wire   [10:0] grp_fu_4399_p2;
wire   [8:0] grp_fu_4408_p0;
wire   [5:0] grp_fu_4408_p1;
wire   [10:0] grp_fu_4408_p2;
wire   [8:0] grp_fu_4417_p0;
wire   [9:0] zext_ln172_23_fu_2414_p1;
wire   [5:0] grp_fu_4417_p1;
wire   [10:0] grp_fu_4417_p2;
wire   [8:0] grp_fu_4426_p0;
wire   [3:0] grp_fu_4426_p1;
wire   [10:0] grp_fu_4426_p2;
wire   [8:0] grp_fu_4435_p0;
wire   [5:0] grp_fu_4435_p1;
wire   [10:0] grp_fu_4435_p2;
wire   [8:0] grp_fu_4444_p0;
wire   [4:0] grp_fu_4444_p1;
wire   [10:0] grp_fu_4444_p2;
wire   [8:0] grp_fu_4453_p0;
wire   [5:0] grp_fu_4453_p1;
wire   [10:0] grp_fu_4453_p2;
wire   [8:0] grp_fu_4462_p0;
wire   [4:0] grp_fu_4462_p1;
wire   [10:0] grp_fu_4462_p2;
wire   [8:0] grp_fu_4471_p0;
wire   [5:0] grp_fu_4471_p1;
wire   [10:0] grp_fu_4471_p2;
wire   [8:0] grp_fu_4480_p0;
wire   [9:0] zext_ln172_25_fu_2480_p1;
wire   [5:0] grp_fu_4480_p1;
wire   [10:0] grp_fu_4480_p2;
wire   [8:0] grp_fu_4489_p0;
wire   [3:0] grp_fu_4489_p1;
wire   [10:0] grp_fu_4489_p2;
wire   [8:0] grp_fu_4498_p0;
wire   [5:0] grp_fu_4498_p1;
wire   [10:0] grp_fu_4498_p2;
wire   [8:0] grp_fu_4507_p0;
wire   [4:0] grp_fu_4507_p1;
wire   [10:0] grp_fu_4507_p2;
wire   [8:0] grp_fu_4516_p0;
wire   [5:0] grp_fu_4516_p1;
wire   [10:0] grp_fu_4516_p2;
wire   [8:0] grp_fu_4525_p0;
wire   [4:0] grp_fu_4525_p1;
wire   [10:0] grp_fu_4525_p2;
wire   [8:0] grp_fu_4534_p0;
wire   [5:0] grp_fu_4534_p1;
wire   [10:0] grp_fu_4534_p2;
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
wire   [18:0] mul_ln172_4_fu_2652_p00;
wire   [18:0] mul_ln172_5_fu_3098_p00;
wire   [18:0] mul_ln172_6_fu_3555_p00;
wire   [18:0] mul_ln172_fu_2486_p00;
wire   [2:0] tmp_s_fu_2735_p1;
wire   [2:0] tmp_s_fu_2735_p3;
wire   [2:0] tmp_s_fu_2735_p5;
wire   [2:0] tmp_s_fu_2735_p7;
wire  signed [2:0] tmp_s_fu_2735_p9;
wire  signed [2:0] tmp_s_fu_2735_p11;
wire  signed [2:0] tmp_s_fu_2735_p13;
wire   [2:0] tmp_21_fu_2770_p1;
wire  signed [2:0] tmp_21_fu_2770_p3;
wire  signed [2:0] tmp_21_fu_2770_p5;
wire  signed [2:0] tmp_21_fu_2770_p7;
wire   [2:0] tmp_21_fu_2770_p9;
wire   [2:0] tmp_21_fu_2770_p11;
wire   [2:0] tmp_21_fu_2770_p13;
wire  signed [2:0] tmp_22_fu_2805_p1;
wire   [2:0] tmp_22_fu_2805_p3;
wire   [2:0] tmp_22_fu_2805_p5;
wire   [2:0] tmp_22_fu_2805_p7;
wire   [2:0] tmp_22_fu_2805_p9;
wire  signed [2:0] tmp_22_fu_2805_p11;
wire  signed [2:0] tmp_22_fu_2805_p13;
wire   [2:0] tmp_23_fu_2840_p1;
wire   [2:0] tmp_23_fu_2840_p3;
wire  signed [2:0] tmp_23_fu_2840_p5;
wire  signed [2:0] tmp_23_fu_2840_p7;
wire  signed [2:0] tmp_23_fu_2840_p9;
wire   [2:0] tmp_23_fu_2840_p11;
wire   [2:0] tmp_23_fu_2840_p13;
wire  signed [2:0] tmp_24_fu_2875_p1;
wire  signed [2:0] tmp_24_fu_2875_p3;
wire   [2:0] tmp_24_fu_2875_p5;
wire   [2:0] tmp_24_fu_2875_p7;
wire   [2:0] tmp_24_fu_2875_p9;
wire   [2:0] tmp_24_fu_2875_p11;
wire  signed [2:0] tmp_24_fu_2875_p13;
wire   [2:0] tmp_25_fu_2910_p1;
wire   [2:0] tmp_25_fu_2910_p3;
wire   [2:0] tmp_25_fu_2910_p5;
wire  signed [2:0] tmp_25_fu_2910_p7;
wire  signed [2:0] tmp_25_fu_2910_p9;
wire  signed [2:0] tmp_25_fu_2910_p11;
wire   [2:0] tmp_25_fu_2910_p13;
wire  signed [2:0] tmp_26_fu_2945_p1;
wire  signed [2:0] tmp_26_fu_2945_p3;
wire  signed [2:0] tmp_26_fu_2945_p5;
wire   [2:0] tmp_26_fu_2945_p7;
wire   [2:0] tmp_26_fu_2945_p9;
wire   [2:0] tmp_26_fu_2945_p11;
wire   [2:0] tmp_26_fu_2945_p13;
wire   [2:0] tmp_27_fu_2980_p1;
wire   [2:0] tmp_27_fu_2980_p3;
wire   [2:0] tmp_27_fu_2980_p5;
wire   [2:0] tmp_27_fu_2980_p7;
wire  signed [2:0] tmp_27_fu_2980_p9;
wire  signed [2:0] tmp_27_fu_2980_p11;
wire  signed [2:0] tmp_27_fu_2980_p13;
wire   [2:0] tmp_29_fu_3192_p1;
wire   [2:0] tmp_29_fu_3192_p3;
wire   [2:0] tmp_29_fu_3192_p5;
wire   [2:0] tmp_29_fu_3192_p7;
wire  signed [2:0] tmp_29_fu_3192_p9;
wire  signed [2:0] tmp_29_fu_3192_p11;
wire  signed [2:0] tmp_29_fu_3192_p13;
wire   [2:0] tmp_30_fu_3227_p1;
wire  signed [2:0] tmp_30_fu_3227_p3;
wire  signed [2:0] tmp_30_fu_3227_p5;
wire  signed [2:0] tmp_30_fu_3227_p7;
wire   [2:0] tmp_30_fu_3227_p9;
wire   [2:0] tmp_30_fu_3227_p11;
wire   [2:0] tmp_30_fu_3227_p13;
wire  signed [2:0] tmp_31_fu_3262_p1;
wire   [2:0] tmp_31_fu_3262_p3;
wire   [2:0] tmp_31_fu_3262_p5;
wire   [2:0] tmp_31_fu_3262_p7;
wire   [2:0] tmp_31_fu_3262_p9;
wire  signed [2:0] tmp_31_fu_3262_p11;
wire  signed [2:0] tmp_31_fu_3262_p13;
wire   [2:0] tmp_32_fu_3297_p1;
wire   [2:0] tmp_32_fu_3297_p3;
wire  signed [2:0] tmp_32_fu_3297_p5;
wire  signed [2:0] tmp_32_fu_3297_p7;
wire  signed [2:0] tmp_32_fu_3297_p9;
wire   [2:0] tmp_32_fu_3297_p11;
wire   [2:0] tmp_32_fu_3297_p13;
wire  signed [2:0] tmp_33_fu_3332_p1;
wire  signed [2:0] tmp_33_fu_3332_p3;
wire   [2:0] tmp_33_fu_3332_p5;
wire   [2:0] tmp_33_fu_3332_p7;
wire   [2:0] tmp_33_fu_3332_p9;
wire   [2:0] tmp_33_fu_3332_p11;
wire  signed [2:0] tmp_33_fu_3332_p13;
wire   [2:0] tmp_34_fu_3367_p1;
wire   [2:0] tmp_34_fu_3367_p3;
wire   [2:0] tmp_34_fu_3367_p5;
wire  signed [2:0] tmp_34_fu_3367_p7;
wire  signed [2:0] tmp_34_fu_3367_p9;
wire  signed [2:0] tmp_34_fu_3367_p11;
wire   [2:0] tmp_34_fu_3367_p13;
wire  signed [2:0] tmp_35_fu_3402_p1;
wire  signed [2:0] tmp_35_fu_3402_p3;
wire  signed [2:0] tmp_35_fu_3402_p5;
wire   [2:0] tmp_35_fu_3402_p7;
wire   [2:0] tmp_35_fu_3402_p9;
wire   [2:0] tmp_35_fu_3402_p11;
wire   [2:0] tmp_35_fu_3402_p13;
wire   [2:0] tmp_36_fu_3437_p1;
wire   [2:0] tmp_36_fu_3437_p3;
wire   [2:0] tmp_36_fu_3437_p5;
wire   [2:0] tmp_36_fu_3437_p7;
wire  signed [2:0] tmp_36_fu_3437_p9;
wire  signed [2:0] tmp_36_fu_3437_p11;
wire  signed [2:0] tmp_36_fu_3437_p13;
wire   [2:0] tmp_38_fu_3613_p1;
wire   [2:0] tmp_38_fu_3613_p3;
wire   [2:0] tmp_38_fu_3613_p5;
wire   [2:0] tmp_38_fu_3613_p7;
wire  signed [2:0] tmp_38_fu_3613_p9;
wire  signed [2:0] tmp_38_fu_3613_p11;
wire  signed [2:0] tmp_38_fu_3613_p13;
wire   [2:0] tmp_39_fu_3648_p1;
wire  signed [2:0] tmp_39_fu_3648_p3;
wire  signed [2:0] tmp_39_fu_3648_p5;
wire  signed [2:0] tmp_39_fu_3648_p7;
wire   [2:0] tmp_39_fu_3648_p9;
wire   [2:0] tmp_39_fu_3648_p11;
wire   [2:0] tmp_39_fu_3648_p13;
wire  signed [2:0] tmp_40_fu_3683_p1;
wire   [2:0] tmp_40_fu_3683_p3;
wire   [2:0] tmp_40_fu_3683_p5;
wire   [2:0] tmp_40_fu_3683_p7;
wire   [2:0] tmp_40_fu_3683_p9;
wire  signed [2:0] tmp_40_fu_3683_p11;
wire  signed [2:0] tmp_40_fu_3683_p13;
wire   [2:0] tmp_41_fu_3718_p1;
wire   [2:0] tmp_41_fu_3718_p3;
wire  signed [2:0] tmp_41_fu_3718_p5;
wire  signed [2:0] tmp_41_fu_3718_p7;
wire  signed [2:0] tmp_41_fu_3718_p9;
wire   [2:0] tmp_41_fu_3718_p11;
wire   [2:0] tmp_41_fu_3718_p13;
wire  signed [2:0] tmp_42_fu_3753_p1;
wire  signed [2:0] tmp_42_fu_3753_p3;
wire   [2:0] tmp_42_fu_3753_p5;
wire   [2:0] tmp_42_fu_3753_p7;
wire   [2:0] tmp_42_fu_3753_p9;
wire   [2:0] tmp_42_fu_3753_p11;
wire  signed [2:0] tmp_42_fu_3753_p13;
wire   [2:0] tmp_43_fu_3788_p1;
wire   [2:0] tmp_43_fu_3788_p3;
wire   [2:0] tmp_43_fu_3788_p5;
wire  signed [2:0] tmp_43_fu_3788_p7;
wire  signed [2:0] tmp_43_fu_3788_p9;
wire  signed [2:0] tmp_43_fu_3788_p11;
wire   [2:0] tmp_43_fu_3788_p13;
wire  signed [2:0] tmp_44_fu_3823_p1;
wire  signed [2:0] tmp_44_fu_3823_p3;
wire  signed [2:0] tmp_44_fu_3823_p5;
wire   [2:0] tmp_44_fu_3823_p7;
wire   [2:0] tmp_44_fu_3823_p9;
wire   [2:0] tmp_44_fu_3823_p11;
wire   [2:0] tmp_44_fu_3823_p13;
wire   [2:0] tmp_45_fu_3858_p1;
wire   [2:0] tmp_45_fu_3858_p3;
wire   [2:0] tmp_45_fu_3858_p5;
wire   [2:0] tmp_45_fu_3858_p7;
wire  signed [2:0] tmp_45_fu_3858_p9;
wire  signed [2:0] tmp_45_fu_3858_p11;
wire  signed [2:0] tmp_45_fu_3858_p13;
wire   [2:0] tmp_46_fu_3992_p1;
wire   [2:0] tmp_46_fu_3992_p3;
wire   [2:0] tmp_46_fu_3992_p5;
wire   [2:0] tmp_46_fu_3992_p7;
wire  signed [2:0] tmp_46_fu_3992_p9;
wire  signed [2:0] tmp_46_fu_3992_p11;
wire  signed [2:0] tmp_46_fu_3992_p13;
wire   [2:0] tmp_47_fu_4027_p1;
wire  signed [2:0] tmp_47_fu_4027_p3;
wire  signed [2:0] tmp_47_fu_4027_p5;
wire  signed [2:0] tmp_47_fu_4027_p7;
wire   [2:0] tmp_47_fu_4027_p9;
wire   [2:0] tmp_47_fu_4027_p11;
wire   [2:0] tmp_47_fu_4027_p13;
wire  signed [2:0] tmp_48_fu_4062_p1;
wire   [2:0] tmp_48_fu_4062_p3;
wire   [2:0] tmp_48_fu_4062_p5;
wire   [2:0] tmp_48_fu_4062_p7;
wire   [2:0] tmp_48_fu_4062_p9;
wire  signed [2:0] tmp_48_fu_4062_p11;
wire  signed [2:0] tmp_48_fu_4062_p13;
wire   [2:0] tmp_49_fu_4097_p1;
wire   [2:0] tmp_49_fu_4097_p3;
wire  signed [2:0] tmp_49_fu_4097_p5;
wire  signed [2:0] tmp_49_fu_4097_p7;
wire  signed [2:0] tmp_49_fu_4097_p9;
wire   [2:0] tmp_49_fu_4097_p11;
wire   [2:0] tmp_49_fu_4097_p13;
wire  signed [2:0] tmp_50_fu_4132_p1;
wire  signed [2:0] tmp_50_fu_4132_p3;
wire   [2:0] tmp_50_fu_4132_p5;
wire   [2:0] tmp_50_fu_4132_p7;
wire   [2:0] tmp_50_fu_4132_p9;
wire   [2:0] tmp_50_fu_4132_p11;
wire  signed [2:0] tmp_50_fu_4132_p13;
wire   [2:0] tmp_51_fu_4167_p1;
wire   [2:0] tmp_51_fu_4167_p3;
wire   [2:0] tmp_51_fu_4167_p5;
wire  signed [2:0] tmp_51_fu_4167_p7;
wire  signed [2:0] tmp_51_fu_4167_p9;
wire  signed [2:0] tmp_51_fu_4167_p11;
wire   [2:0] tmp_51_fu_4167_p13;
wire  signed [2:0] tmp_52_fu_4202_p1;
wire  signed [2:0] tmp_52_fu_4202_p3;
wire  signed [2:0] tmp_52_fu_4202_p5;
wire   [2:0] tmp_52_fu_4202_p7;
wire   [2:0] tmp_52_fu_4202_p9;
wire   [2:0] tmp_52_fu_4202_p11;
wire   [2:0] tmp_52_fu_4202_p13;
wire   [2:0] tmp_53_fu_4237_p1;
wire   [2:0] tmp_53_fu_4237_p3;
wire   [2:0] tmp_53_fu_4237_p5;
wire   [2:0] tmp_53_fu_4237_p7;
wire  signed [2:0] tmp_53_fu_4237_p9;
wire  signed [2:0] tmp_53_fu_4237_p11;
wire  signed [2:0] tmp_53_fu_4237_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_136 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U585(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2338_p0),.din1(grp_fu_2338_p1),.ce(1'b1),.dout(grp_fu_2338_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U586(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2362_p0),.din1(grp_fu_2362_p1),.ce(1'b1),.dout(grp_fu_2362_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U587(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2377_p0),.din1(grp_fu_2377_p1),.ce(1'b1),.dout(grp_fu_2377_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U588(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2392_p0),.din1(grp_fu_2392_p1),.ce(1'b1),.dout(grp_fu_2392_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U589(.din0(mul_ln172_fu_2486_p0),.din1(mul_ln172_fu_2486_p1),.dout(mul_ln172_fu_2486_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U590(.din0(mul_ln172_4_fu_2652_p0),.din1(mul_ln172_4_fu_2652_p1),.dout(mul_ln172_4_fu_2652_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U591(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_s_fu_2735_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_s_fu_2735_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U592(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_21_fu_2770_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_21_fu_2770_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U593(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_22_fu_2805_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_22_fu_2805_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U594(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_23_fu_2840_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_23_fu_2840_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U595(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_24_fu_2875_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_24_fu_2875_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U596(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_25_fu_2910_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_25_fu_2910_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U597(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_26_fu_2945_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_26_fu_2945_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U598(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_27_fu_2980_p15),.sel(trunc_ln172_reg_4639),.dout(tmp_27_fu_2980_p17));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U599(.din0(mul_ln172_5_fu_3098_p0),.din1(mul_ln172_5_fu_3098_p1),.dout(mul_ln172_5_fu_3098_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U600(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_29_fu_3192_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_29_fu_3192_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U601(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_30_fu_3227_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_30_fu_3227_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U602(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_31_fu_3262_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_31_fu_3262_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U603(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_32_fu_3297_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_32_fu_3297_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U604(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_33_fu_3332_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_33_fu_3332_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U605(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_34_fu_3367_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_34_fu_3367_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U606(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_35_fu_3402_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_35_fu_3402_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U607(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_36_fu_3437_p15),.sel(trunc_ln172_4_reg_4971),.dout(tmp_36_fu_3437_p17));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U608(.din0(mul_ln172_6_fu_3555_p0),.din1(mul_ln172_6_fu_3555_p1),.dout(mul_ln172_6_fu_3555_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U609(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_38_fu_3613_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_38_fu_3613_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U610(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_39_fu_3648_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_39_fu_3648_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U611(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_40_fu_3683_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_40_fu_3683_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U612(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_41_fu_3718_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_41_fu_3718_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U613(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_42_fu_3753_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_42_fu_3753_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U614(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_43_fu_3788_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_43_fu_3788_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U615(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_44_fu_3823_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_44_fu_3823_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U616(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_45_fu_3858_p15),.sel(trunc_ln172_5_reg_5343),.dout(tmp_45_fu_3858_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U617(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_46_fu_3992_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_46_fu_3992_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U618(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_47_fu_4027_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_47_fu_4027_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U619(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_48_fu_4062_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_48_fu_4062_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U620(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_49_fu_4097_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_49_fu_4097_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U621(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_50_fu_4132_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_50_fu_4132_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U622(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_51_fu_4167_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_51_fu_4167_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U623(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_52_fu_4202_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_52_fu_4202_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U624(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_53_fu_4237_p15),.sel(trunc_ln172_6_reg_5715),.dout(tmp_53_fu_4237_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U625(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4291_p0),.din1(grp_fu_4291_p1),.din2(grp_fu_4291_p2),.ce(1'b1),.dout(grp_fu_4291_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U626(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4300_p0),.din1(grp_fu_4300_p1),.din2(grp_fu_4300_p2),.ce(1'b1),.dout(grp_fu_4300_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U627(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4309_p0),.din1(grp_fu_4309_p1),.din2(grp_fu_4309_p2),.ce(1'b1),.dout(grp_fu_4309_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U628(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4318_p0),.din1(grp_fu_4318_p1),.din2(grp_fu_4318_p2),.ce(1'b1),.dout(grp_fu_4318_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U629(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4327_p0),.din1(grp_fu_4327_p1),.din2(grp_fu_4327_p2),.ce(1'b1),.dout(grp_fu_4327_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U630(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4336_p0),.din1(grp_fu_4336_p1),.din2(grp_fu_4336_p2),.ce(1'b1),.dout(grp_fu_4336_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U631(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4345_p0),.din1(grp_fu_4345_p1),.din2(grp_fu_4345_p2),.ce(1'b1),.dout(grp_fu_4345_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U632(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4354_p0),.din1(grp_fu_4354_p1),.din2(grp_fu_4354_p2),.ce(1'b1),.dout(grp_fu_4354_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U633(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4363_p0),.din1(grp_fu_4363_p1),.din2(grp_fu_4363_p2),.ce(1'b1),.dout(grp_fu_4363_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U634(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4372_p0),.din1(grp_fu_4372_p1),.din2(grp_fu_4372_p2),.ce(1'b1),.dout(grp_fu_4372_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U635(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4381_p0),.din1(grp_fu_4381_p1),.din2(grp_fu_4381_p2),.ce(1'b1),.dout(grp_fu_4381_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U636(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4390_p0),.din1(grp_fu_4390_p1),.din2(grp_fu_4390_p2),.ce(1'b1),.dout(grp_fu_4390_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U637(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4399_p0),.din1(grp_fu_4399_p1),.din2(grp_fu_4399_p2),.ce(1'b1),.dout(grp_fu_4399_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U638(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4408_p0),.din1(grp_fu_4408_p1),.din2(grp_fu_4408_p2),.ce(1'b1),.dout(grp_fu_4408_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U639(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4417_p0),.din1(grp_fu_4417_p1),.din2(grp_fu_4417_p2),.ce(1'b1),.dout(grp_fu_4417_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U640(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4426_p0),.din1(grp_fu_4426_p1),.din2(grp_fu_4426_p2),.ce(1'b1),.dout(grp_fu_4426_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U641(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4435_p0),.din1(grp_fu_4435_p1),.din2(grp_fu_4435_p2),.ce(1'b1),.dout(grp_fu_4435_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U642(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4444_p0),.din1(grp_fu_4444_p1),.din2(grp_fu_4444_p2),.ce(1'b1),.dout(grp_fu_4444_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U643(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4453_p0),.din1(grp_fu_4453_p1),.din2(grp_fu_4453_p2),.ce(1'b1),.dout(grp_fu_4453_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U644(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4462_p0),.din1(grp_fu_4462_p1),.din2(grp_fu_4462_p2),.ce(1'b1),.dout(grp_fu_4462_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U645(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4471_p0),.din1(grp_fu_4471_p1),.din2(grp_fu_4471_p2),.ce(1'b1),.dout(grp_fu_4471_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U646(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4480_p0),.din1(grp_fu_4480_p1),.din2(grp_fu_4480_p2),.ce(1'b1),.dout(grp_fu_4480_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U647(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4489_p0),.din1(grp_fu_4489_p1),.din2(grp_fu_4489_p2),.ce(1'b1),.dout(grp_fu_4489_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U648(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4498_p0),.din1(grp_fu_4498_p1),.din2(grp_fu_4498_p2),.ce(1'b1),.dout(grp_fu_4498_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U649(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4507_p0),.din1(grp_fu_4507_p1),.din2(grp_fu_4507_p2),.ce(1'b1),.dout(grp_fu_4507_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U650(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4516_p0),.din1(grp_fu_4516_p1),.din2(grp_fu_4516_p2),.ce(1'b1),.dout(grp_fu_4516_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U651(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4525_p0),.din1(grp_fu_4525_p1),.din2(grp_fu_4525_p2),.ce(1'b1),.dout(grp_fu_4525_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U652(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4534_p0),.din1(grp_fu_4534_p1),.din2(grp_fu_4534_p2),.ce(1'b1),.dout(grp_fu_4534_p3));
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
        tid_fu_136 <= 7'd0;
    end else if (((tmp_reg_4560 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_136 <= add_ln309_fu_2398_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_4_reg_4578[8 : 1] <= offset_4_fu_2353_p4[8 : 1];
        offset_4_reg_4578_pp0_iter1_reg[8 : 1] <= offset_4_reg_4578[8 : 1];
        offset_4_reg_4578_pp0_iter2_reg[8 : 1] <= offset_4_reg_4578_pp0_iter1_reg[8 : 1];
        tmp_107_reg_4983 <= {{tmp_107_fu_2672_p1[20:13]}};
        tmp_108_reg_4988 <= {{tmp_108_fu_2681_p1[20:13]}};
        tmp_109_reg_4993 <= {{tmp_109_fu_2690_p1[20:13]}};
        tmp_110_reg_4998 <= {{tmp_110_fu_2699_p1[20:13]}};
        tmp_111_reg_5003 <= {{tmp_111_fu_2708_p1[20:13]}};
        tmp_112_reg_5008 <= {{tmp_112_fu_2717_p1[20:13]}};
        tmp_113_reg_5013 <= {{tmp_113_fu_2726_p1[20:13]}};
        tmp_46_reg_6053 <= tmp_46_fu_3992_p17;
        tmp_47_reg_6058 <= tmp_47_fu_4027_p17;
        tmp_48_reg_6063 <= tmp_48_fu_4062_p17;
        tmp_49_reg_6068 <= tmp_49_fu_4097_p17;
        tmp_50_reg_6073 <= tmp_50_fu_4132_p17;
        tmp_51_reg_6078 <= tmp_51_fu_4167_p17;
        tmp_52_reg_6083 <= tmp_52_fu_4202_p17;
        tmp_53_reg_6088 <= tmp_53_fu_4237_p17;
        tmp_97_reg_4966 <= {{mul_ln172_4_fu_2652_p2[18:12]}};
        trunc_ln172_4_reg_4971 <= trunc_ln172_4_fu_2668_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_5_reg_4585[8 : 2] <= offset_5_fu_2368_p4[8 : 2];
        offset_5_reg_4585_pp0_iter1_reg[8 : 2] <= offset_5_reg_4585[8 : 2];
        offset_5_reg_4585_pp0_iter2_reg[8 : 2] <= offset_5_reg_4585_pp0_iter1_reg[8 : 2];
        tmp_106_reg_5338 <= {{mul_ln172_5_fu_3098_p2[18:12]}};
        tmp_116_reg_5355 <= {{tmp_116_fu_3118_p1[20:13]}};
        tmp_117_reg_5360 <= {{tmp_117_fu_3127_p1[20:13]}};
        tmp_118_reg_5365 <= {{tmp_118_fu_3136_p1[20:13]}};
        tmp_119_reg_5370 <= {{tmp_119_fu_3145_p1[20:13]}};
        tmp_120_reg_5375 <= {{tmp_120_fu_3154_p1[20:13]}};
        tmp_121_reg_5380 <= {{tmp_121_fu_3163_p1[20:13]}};
        tmp_122_reg_5385 <= {{tmp_122_fu_3172_p1[20:13]}};
        tmp_21_reg_5023 <= tmp_21_fu_2770_p17;
        tmp_22_reg_5028 <= tmp_22_fu_2805_p17;
        tmp_23_reg_5033 <= tmp_23_fu_2840_p17;
        tmp_24_reg_5038 <= tmp_24_fu_2875_p17;
        tmp_25_reg_5043 <= tmp_25_fu_2910_p17;
        tmp_26_reg_5048 <= tmp_26_fu_2945_p17;
        tmp_27_reg_5053 <= tmp_27_fu_2980_p17;
        tmp_s_reg_5018 <= tmp_s_fu_2735_p17;
        trunc_ln172_5_reg_5343 <= trunc_ln172_5_fu_3114_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_6_reg_4592[8 : 2] <= offset_6_fu_2383_p4[8 : 2];
        offset_6_reg_4592_pp0_iter1_reg[8 : 2] <= offset_6_reg_4592[8 : 2];
        offset_6_reg_4592_pp0_iter2_reg[8 : 2] <= offset_6_reg_4592_pp0_iter1_reg[8 : 2];
        tmp_115_reg_5710 <= {{mul_ln172_6_fu_3555_p2[18:12]}};
        tmp_29_reg_5390 <= tmp_29_fu_3192_p17;
        tmp_30_reg_5395 <= tmp_30_fu_3227_p17;
        tmp_31_reg_5400 <= tmp_31_fu_3262_p17;
        tmp_32_reg_5405 <= tmp_32_fu_3297_p17;
        tmp_33_reg_5410 <= tmp_33_fu_3332_p17;
        tmp_34_reg_5415 <= tmp_34_fu_3367_p17;
        tmp_35_reg_5420 <= tmp_35_fu_3402_p17;
        tmp_36_reg_5425 <= tmp_36_fu_3437_p17;
        tmp_89_reg_4599 <= {{tmp_89_fu_2417_p1[20:13]}};
        tmp_90_reg_4604 <= {{tmp_90_fu_2426_p1[20:13]}};
        tmp_91_reg_4609 <= {{tmp_91_fu_2435_p1[20:13]}};
        tmp_92_reg_4614 <= {{tmp_92_fu_2444_p1[20:13]}};
        tmp_93_reg_4619 <= {{tmp_93_fu_2453_p1[20:13]}};
        tmp_94_reg_4624 <= {{tmp_94_fu_2462_p1[20:13]}};
        tmp_95_reg_4629 <= {{tmp_95_fu_2471_p1[20:13]}};
        trunc_ln172_6_reg_5715 <= trunc_ln172_6_fu_3571_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_4571 <= offset_fu_2330_p3;
        offset_reg_4571_pp0_iter1_reg <= offset_reg_4571;
        offset_reg_4571_pp0_iter2_reg <= offset_reg_4571_pp0_iter1_reg;
        tid_2_reg_4550 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_4550_pp0_iter1_reg <= tid_2_reg_4550;
        tid_2_reg_4550_pp0_iter2_reg <= tid_2_reg_4550_pp0_iter1_reg;
        tid_2_reg_4550_pp0_iter3_reg <= tid_2_reg_4550_pp0_iter2_reg;
        tmp_100_reg_4661 <= {{tmp_100_fu_2524_p1[20:13]}};
        tmp_101_reg_4666 <= {{tmp_101_fu_2533_p1[20:13]}};
        tmp_102_reg_4671 <= {{tmp_102_fu_2542_p1[20:13]}};
        tmp_103_reg_4676 <= {{tmp_103_fu_2551_p1[20:13]}};
        tmp_104_reg_4681 <= {{tmp_104_fu_2560_p1[20:13]}};
        tmp_37_reg_5727 <= {{tid_2_reg_4550_pp0_iter3_reg[5:2]}};
        tmp_38_reg_5733 <= tmp_38_fu_3613_p17;
        tmp_39_reg_5738 <= tmp_39_fu_3648_p17;
        tmp_40_reg_5743 <= tmp_40_fu_3683_p17;
        tmp_41_reg_5748 <= tmp_41_fu_3718_p17;
        tmp_42_reg_5753 <= tmp_42_fu_3753_p17;
        tmp_43_reg_5758 <= tmp_43_fu_3788_p17;
        tmp_44_reg_5763 <= tmp_44_fu_3823_p17;
        tmp_45_reg_5768 <= tmp_45_fu_3858_p17;
        tmp_87_reg_4564 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_88_reg_4634 <= {{mul_ln172_fu_2486_p2[18:12]}};
        tmp_98_reg_4651 <= {{tmp_98_fu_2506_p1[20:13]}};
        tmp_99_reg_4656 <= {{tmp_99_fu_2515_p1[20:13]}};
        tmp_reg_4560 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_4560_pp0_iter1_reg <= tmp_reg_4560;
        tmp_reg_4560_pp0_iter2_reg <= tmp_reg_4560_pp0_iter1_reg;
        tmp_reg_4560_pp0_iter3_reg <= tmp_reg_4560_pp0_iter2_reg;
        trunc_ln172_reg_4639 <= trunc_ln172_fu_2502_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_48_reg_6063;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_40_reg_5743;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_31_reg_5400;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_22_reg_5028;
    end else begin
        DATA_x_1_d0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d0_local = tmp_50_reg_6073;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_42_reg_5753;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_33_reg_5410;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d0_local = tmp_24_reg_5038;
    end else begin
        DATA_x_2_d0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d0_local = tmp_52_reg_6083;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_44_reg_5763;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_35_reg_5420;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d0_local = tmp_26_reg_5048;
    end else begin
        DATA_x_3_d0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_4_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_4_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_4_d0_local = tmp_47_reg_6058;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_d0_local = tmp_39_reg_5738;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_d0_local = tmp_30_reg_5395;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_4_d0_local = tmp_21_reg_5023;
    end else begin
        DATA_x_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_5_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_5_d0_local = tmp_49_reg_6068;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_d0_local = tmp_41_reg_5748;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_d0_local = tmp_32_reg_5405;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_d0_local = tmp_23_reg_5033;
    end else begin
        DATA_x_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_6_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_6_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_6_d0_local = tmp_51_reg_6078;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_d0_local = tmp_43_reg_5758;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_d0_local = tmp_34_reg_5415;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_6_d0_local = tmp_25_reg_5043;
    end else begin
        DATA_x_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_7_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_7_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_7_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_7_d0_local = tmp_53_reg_6088;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_7_d0_local = tmp_45_reg_5768;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_d0_local = tmp_36_reg_5425;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_7_d0_local = tmp_27_reg_5053;
    end else begin
        DATA_x_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln312_2_fu_4279_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln312_1_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln312_fu_3592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln309_fu_3181_p1;
    end else begin
        DATA_x_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_46_reg_6053;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_38_reg_5733;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_29_reg_5390;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_s_reg_5018;
    end else begin
        DATA_x_d0_local = 'bx;
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
    if (((tmp_reg_4560 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_4560_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_tid_2 = tid_fu_136;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_3_fu_3963_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_3_fu_3953_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_3_fu_3943_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_3_fu_3933_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_3_fu_3923_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_3_fu_3913_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_3_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_18_fu_3472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln321_1_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln320_1_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln319_1_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln318_1_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln317_1_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln316_1_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln315_1_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_16_fu_2569_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_19_fu_3893_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln321_2_fu_3542_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln320_2_fu_3532_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln319_2_fu_3522_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln318_2_fu_3512_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln317_2_fu_3502_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln316_2_fu_3492_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln315_2_fu_3482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_17_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln321_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln320_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln319_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln318_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln317_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln316_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln315_fu_2579_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_3_fu_3963_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_3_fu_3953_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_3_fu_3943_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_3_fu_3933_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_3_fu_3923_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_3_fu_3913_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_3_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_18_fu_3472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln321_1_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln320_1_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln319_1_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln318_1_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln317_1_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln316_1_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln315_1_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_16_fu_2569_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_19_fu_3893_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln321_2_fu_3542_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln320_2_fu_3532_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln319_2_fu_3522_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln318_2_fu_3512_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln317_2_fu_3502_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln316_2_fu_3492_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln315_2_fu_3482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_17_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln321_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln320_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln319_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln318_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln317_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln316_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln315_fu_2579_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_3_fu_3963_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_3_fu_3953_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_3_fu_3943_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_3_fu_3933_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_3_fu_3923_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln316_3_fu_3913_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_3_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_18_fu_3472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln321_1_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln320_1_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln319_1_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln318_1_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln317_1_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln316_1_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln315_1_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_16_fu_2569_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_19_fu_3893_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln321_2_fu_3542_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln320_2_fu_3532_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln319_2_fu_3522_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln318_2_fu_3512_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln317_2_fu_3502_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln316_2_fu_3492_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln315_2_fu_3482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln172_17_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln321_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln320_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln319_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln318_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln317_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln316_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln315_fu_2579_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_3_fu_3963_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_3_fu_3953_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_3_fu_3943_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_3_fu_3933_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_3_fu_3923_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln316_3_fu_3913_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_3_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_18_fu_3472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln321_1_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln320_1_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln319_1_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln318_1_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln317_1_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln316_1_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln315_1_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_16_fu_2569_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_19_fu_3893_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln321_2_fu_3542_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln320_2_fu_3532_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln319_2_fu_3522_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln318_2_fu_3512_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln317_2_fu_3502_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln316_2_fu_3492_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln315_2_fu_3482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln172_17_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln321_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln320_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln319_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln318_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln317_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln316_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln315_fu_2579_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_3_fu_3963_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_3_fu_3953_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln319_3_fu_3943_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_3_fu_3933_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln317_3_fu_3923_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln316_3_fu_3913_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln315_3_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_18_fu_3472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln321_1_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln320_1_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln319_1_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln318_1_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln317_1_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln316_1_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln315_1_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_16_fu_2569_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln172_19_fu_3893_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln321_2_fu_3542_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln320_2_fu_3532_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln319_2_fu_3522_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln318_2_fu_3512_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln317_2_fu_3502_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln316_2_fu_3492_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln315_2_fu_3482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln172_17_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln321_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln320_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln319_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln318_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln317_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln316_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln315_fu_2579_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln321_3_fu_3963_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln320_3_fu_3953_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln319_3_fu_3943_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln318_3_fu_3933_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln317_3_fu_3923_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln316_3_fu_3913_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln315_3_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_18_fu_3472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln321_1_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln320_1_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln319_1_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln318_1_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln317_1_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln316_1_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln315_1_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_16_fu_2569_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln172_19_fu_3893_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln321_2_fu_3542_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln320_2_fu_3532_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln319_2_fu_3522_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln318_2_fu_3512_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln317_2_fu_3502_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln316_2_fu_3492_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln315_2_fu_3482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln172_17_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln321_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln320_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln319_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln318_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln317_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln316_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln315_fu_2579_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_3_fu_3963_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_3_fu_3953_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_3_fu_3943_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_3_fu_3933_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_3_fu_3923_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_3_fu_3913_p1;
    end else if (((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_3_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_18_fu_3472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln321_1_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln320_1_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln319_1_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln318_1_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln317_1_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln316_1_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln315_1_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_16_fu_2569_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_19_fu_3893_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln321_2_fu_3542_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln320_2_fu_3532_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln319_2_fu_3522_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln318_2_fu_3512_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln317_2_fu_3502_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln316_2_fu_3492_p1;
    end else if (((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln315_2_fu_3482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_17_fu_3015_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln321_fu_2639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln320_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln319_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln318_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln317_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln316_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln315_fu_2579_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_6_reg_5715 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_6_reg_5715 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_4_reg_4971 == 3'd0) & (ap_enable_reg_pp0_iter3== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_5_reg_5343 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_5_reg_5343 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4639 == 3'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = DATA_x_2_d0_local;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = DATA_x_3_d0_local;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = DATA_x_4_d0_local;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = DATA_x_5_d0_local;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = DATA_x_6_d0_local;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = DATA_x_7_d0_local;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign add_ln309_fu_2398_p2 = (tid_2_reg_4550 + 7'd4);
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
assign grp_fu_2291_p4 = {{tid_2_reg_4550[5:2]}};
assign grp_fu_2338_p0 = {{tmp_87_fu_2316_p4}, {trunc_ln312_fu_2326_p1}};
assign grp_fu_2338_p1 = 9'd7;
assign grp_fu_2362_p0 = {{{tmp_87_reg_4564}, {tmp_96_fu_2344_p4}}, {1'd1}};
assign grp_fu_2362_p1 = 9'd7;
assign grp_fu_2377_p0 = {{{tmp_87_reg_4564}, {grp_fu_2291_p4}}, {2'd2}};
assign grp_fu_2377_p1 = 9'd7;
assign grp_fu_2392_p0 = {{{tmp_87_reg_4564}, {grp_fu_2291_p4}}, {2'd3}};
assign grp_fu_2392_p1 = 9'd7;
assign grp_fu_4291_p0 = zext_ln172_fu_2408_p1;
assign grp_fu_4291_p1 = 10'd32;
assign grp_fu_4291_p2 = 21'd1171;
assign grp_fu_4300_p0 = zext_ln172_fu_2408_p1;
assign grp_fu_4300_p1 = 10'd8;
assign grp_fu_4300_p2 = 21'd1171;
assign grp_fu_4309_p0 = zext_ln172_fu_2408_p1;
assign grp_fu_4309_p1 = 10'd40;
assign grp_fu_4309_p2 = 21'd1171;
assign grp_fu_4318_p0 = zext_ln172_fu_2408_p1;
assign grp_fu_4318_p1 = 10'd16;
assign grp_fu_4318_p2 = 21'd1171;
assign grp_fu_4327_p0 = zext_ln172_fu_2408_p1;
assign grp_fu_4327_p1 = 10'd48;
assign grp_fu_4327_p2 = 21'd1171;
assign grp_fu_4336_p0 = zext_ln172_fu_2408_p1;
assign grp_fu_4336_p1 = 10'd24;
assign grp_fu_4336_p2 = 21'd1171;
assign grp_fu_4345_p0 = zext_ln172_fu_2408_p1;
assign grp_fu_4345_p1 = 10'd56;
assign grp_fu_4345_p2 = 21'd1171;
assign grp_fu_4354_p0 = zext_ln172_21_fu_2411_p1;
assign grp_fu_4354_p1 = 10'd32;
assign grp_fu_4354_p2 = 21'd1171;
assign grp_fu_4363_p0 = zext_ln172_21_fu_2411_p1;
assign grp_fu_4363_p1 = 10'd8;
assign grp_fu_4363_p2 = 21'd1171;
assign grp_fu_4372_p0 = zext_ln172_21_fu_2411_p1;
assign grp_fu_4372_p1 = 10'd40;
assign grp_fu_4372_p2 = 21'd1171;
assign grp_fu_4381_p0 = zext_ln172_21_fu_2411_p1;
assign grp_fu_4381_p1 = 10'd16;
assign grp_fu_4381_p2 = 21'd1171;
assign grp_fu_4390_p0 = zext_ln172_21_fu_2411_p1;
assign grp_fu_4390_p1 = 10'd48;
assign grp_fu_4390_p2 = 21'd1171;
assign grp_fu_4399_p0 = zext_ln172_21_fu_2411_p1;
assign grp_fu_4399_p1 = 10'd24;
assign grp_fu_4399_p2 = 21'd1171;
assign grp_fu_4408_p0 = zext_ln172_21_fu_2411_p1;
assign grp_fu_4408_p1 = 10'd56;
assign grp_fu_4408_p2 = 21'd1171;
assign grp_fu_4417_p0 = zext_ln172_23_fu_2414_p1;
assign grp_fu_4417_p1 = 10'd32;
assign grp_fu_4417_p2 = 21'd1171;
assign grp_fu_4426_p0 = zext_ln172_23_fu_2414_p1;
assign grp_fu_4426_p1 = 10'd8;
assign grp_fu_4426_p2 = 21'd1171;
assign grp_fu_4435_p0 = zext_ln172_23_fu_2414_p1;
assign grp_fu_4435_p1 = 10'd40;
assign grp_fu_4435_p2 = 21'd1171;
assign grp_fu_4444_p0 = zext_ln172_23_fu_2414_p1;
assign grp_fu_4444_p1 = 10'd16;
assign grp_fu_4444_p2 = 21'd1171;
assign grp_fu_4453_p0 = zext_ln172_23_fu_2414_p1;
assign grp_fu_4453_p1 = 10'd48;
assign grp_fu_4453_p2 = 21'd1171;
assign grp_fu_4462_p0 = zext_ln172_23_fu_2414_p1;
assign grp_fu_4462_p1 = 10'd24;
assign grp_fu_4462_p2 = 21'd1171;
assign grp_fu_4471_p0 = zext_ln172_23_fu_2414_p1;
assign grp_fu_4471_p1 = 10'd56;
assign grp_fu_4471_p2 = 21'd1171;
assign grp_fu_4480_p0 = zext_ln172_25_fu_2480_p1;
assign grp_fu_4480_p1 = 10'd32;
assign grp_fu_4480_p2 = 21'd1171;
assign grp_fu_4489_p0 = zext_ln172_25_fu_2480_p1;
assign grp_fu_4489_p1 = 10'd8;
assign grp_fu_4489_p2 = 21'd1171;
assign grp_fu_4498_p0 = zext_ln172_25_fu_2480_p1;
assign grp_fu_4498_p1 = 10'd40;
assign grp_fu_4498_p2 = 21'd1171;
assign grp_fu_4507_p0 = zext_ln172_25_fu_2480_p1;
assign grp_fu_4507_p1 = 10'd16;
assign grp_fu_4507_p2 = 21'd1171;
assign grp_fu_4516_p0 = zext_ln172_25_fu_2480_p1;
assign grp_fu_4516_p1 = 10'd48;
assign grp_fu_4516_p2 = 21'd1171;
assign grp_fu_4525_p0 = zext_ln172_25_fu_2480_p1;
assign grp_fu_4525_p1 = 10'd24;
assign grp_fu_4525_p2 = 21'd1171;
assign grp_fu_4534_p0 = zext_ln172_25_fu_2480_p1;
assign grp_fu_4534_p1 = 10'd56;
assign grp_fu_4534_p2 = 21'd1171;
assign mul_ln172_4_fu_2652_p0 = mul_ln172_4_fu_2652_p00;
assign mul_ln172_4_fu_2652_p00 = offset_4_reg_4578_pp0_iter2_reg;
assign mul_ln172_4_fu_2652_p1 = 19'd586;
assign mul_ln172_5_fu_3098_p0 = mul_ln172_5_fu_3098_p00;
assign mul_ln172_5_fu_3098_p00 = offset_5_reg_4585_pp0_iter2_reg;
assign mul_ln172_5_fu_3098_p1 = 19'd586;
assign mul_ln172_6_fu_3555_p0 = mul_ln172_6_fu_3555_p00;
assign mul_ln172_6_fu_3555_p00 = offset_6_reg_4592_pp0_iter2_reg;
assign mul_ln172_6_fu_3555_p1 = 19'd586;
assign mul_ln172_fu_2486_p0 = mul_ln172_fu_2486_p00;
assign mul_ln172_fu_2486_p00 = offset_reg_4571_pp0_iter2_reg;
assign mul_ln172_fu_2486_p1 = 19'd586;
assign offset_4_fu_2353_p4 = {{{tmp_87_reg_4564}, {tmp_96_fu_2344_p4}}, {1'd1}};
assign offset_5_fu_2368_p4 = {{{tmp_87_reg_4564}, {grp_fu_2291_p4}}, {2'd2}};
assign offset_6_fu_2383_p4 = {{{tmp_87_reg_4564}, {grp_fu_2291_p4}}, {2'd3}};
assign offset_fu_2330_p3 = {{tmp_87_fu_2316_p4}, {trunc_ln312_fu_2326_p1}};
assign or_ln309_1_fu_3973_p3 = {{tmp_37_reg_5727}, {2'd2}};
assign or_ln309_2_fu_4272_p3 = {{tmp_37_reg_5727}, {2'd3}};
assign or_ln_fu_3584_p3 = {{tmp_28_fu_3575_p4}, {1'd1}};
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
assign tmp_100_fu_2524_p1 = grp_fu_4372_p3;
assign tmp_101_fu_2533_p1 = grp_fu_4381_p3;
assign tmp_102_fu_2542_p1 = grp_fu_4390_p3;
assign tmp_103_fu_2551_p1 = grp_fu_4399_p3;
assign tmp_104_fu_2560_p1 = grp_fu_4408_p3;
assign tmp_107_fu_2672_p1 = grp_fu_4417_p3;
assign tmp_108_fu_2681_p1 = grp_fu_4426_p3;
assign tmp_109_fu_2690_p1 = grp_fu_4435_p3;
assign tmp_110_fu_2699_p1 = grp_fu_4444_p3;
assign tmp_111_fu_2708_p1 = grp_fu_4453_p3;
assign tmp_112_fu_2717_p1 = grp_fu_4462_p3;
assign tmp_113_fu_2726_p1 = grp_fu_4471_p3;
assign tmp_116_fu_3118_p1 = grp_fu_4480_p3;
assign tmp_117_fu_3127_p1 = grp_fu_4489_p3;
assign tmp_118_fu_3136_p1 = grp_fu_4498_p3;
assign tmp_119_fu_3145_p1 = grp_fu_4507_p3;
assign tmp_120_fu_3154_p1 = grp_fu_4516_p3;
assign tmp_121_fu_3163_p1 = grp_fu_4525_p3;
assign tmp_122_fu_3172_p1 = grp_fu_4534_p3;
assign tmp_21_fu_2770_p15 = 'bx;
assign tmp_22_fu_2805_p15 = 'bx;
assign tmp_23_fu_2840_p15 = 'bx;
assign tmp_24_fu_2875_p15 = 'bx;
assign tmp_25_fu_2910_p15 = 'bx;
assign tmp_26_fu_2945_p15 = 'bx;
assign tmp_27_fu_2980_p15 = 'bx;
assign tmp_28_fu_3575_p4 = {{tid_2_reg_4550_pp0_iter3_reg[5:1]}};
assign tmp_29_fu_3192_p15 = 'bx;
assign tmp_30_fu_3227_p15 = 'bx;
assign tmp_31_fu_3262_p15 = 'bx;
assign tmp_32_fu_3297_p15 = 'bx;
assign tmp_33_fu_3332_p15 = 'bx;
assign tmp_34_fu_3367_p15 = 'bx;
assign tmp_35_fu_3402_p15 = 'bx;
assign tmp_36_fu_3437_p15 = 'bx;
assign tmp_38_fu_3613_p15 = 'bx;
assign tmp_39_fu_3648_p15 = 'bx;
assign tmp_40_fu_3683_p15 = 'bx;
assign tmp_41_fu_3718_p15 = 'bx;
assign tmp_42_fu_3753_p15 = 'bx;
assign tmp_43_fu_3788_p15 = 'bx;
assign tmp_44_fu_3823_p15 = 'bx;
assign tmp_45_fu_3858_p15 = 'bx;
assign tmp_46_fu_3992_p15 = 'bx;
assign tmp_47_fu_4027_p15 = 'bx;
assign tmp_48_fu_4062_p15 = 'bx;
assign tmp_49_fu_4097_p15 = 'bx;
assign tmp_50_fu_4132_p15 = 'bx;
assign tmp_51_fu_4167_p15 = 'bx;
assign tmp_52_fu_4202_p15 = 'bx;
assign tmp_53_fu_4237_p15 = 'bx;
assign tmp_87_fu_2316_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_89_fu_2417_p1 = grp_fu_4291_p3;
assign tmp_90_fu_2426_p1 = grp_fu_4300_p3;
assign tmp_91_fu_2435_p1 = grp_fu_4309_p3;
assign tmp_92_fu_2444_p1 = grp_fu_4318_p3;
assign tmp_93_fu_2453_p1 = grp_fu_4327_p3;
assign tmp_94_fu_2462_p1 = grp_fu_4336_p3;
assign tmp_95_fu_2471_p1 = grp_fu_4345_p3;
assign tmp_96_fu_2344_p4 = {{tid_2_reg_4550[5:1]}};
assign tmp_98_fu_2506_p1 = grp_fu_4354_p3;
assign tmp_99_fu_2515_p1 = grp_fu_4363_p3;
assign tmp_s_fu_2735_p15 = 'bx;
assign trunc_ln172_4_fu_2668_p1 = grp_fu_2362_p2[2:0];
assign trunc_ln172_5_fu_3114_p1 = grp_fu_2377_p2[2:0];
assign trunc_ln172_6_fu_3571_p1 = grp_fu_2392_p2[2:0];
assign trunc_ln172_fu_2502_p1 = grp_fu_2338_p2[2:0];
assign trunc_ln312_fu_2326_p1 = ap_sig_allocacmp_tid_2[5:0];
assign zext_ln172_16_fu_2569_p1 = tmp_88_reg_4634;
assign zext_ln172_17_fu_3015_p1 = tmp_97_reg_4966;
assign zext_ln172_18_fu_3472_p1 = tmp_106_reg_5338;
assign zext_ln172_19_fu_3893_p1 = tmp_115_reg_5710;
assign zext_ln172_21_fu_2411_p1 = offset_4_reg_4578_pp0_iter1_reg;
assign zext_ln172_23_fu_2414_p1 = offset_5_reg_4585_pp0_iter1_reg;
assign zext_ln172_25_fu_2480_p1 = offset_6_reg_4592_pp0_iter1_reg;
assign zext_ln172_fu_2408_p1 = offset_reg_4571_pp0_iter1_reg;
assign zext_ln309_fu_3181_p1 = tid_2_reg_4550_pp0_iter3_reg;
assign zext_ln312_1_fu_3980_p1 = or_ln309_1_fu_3973_p3;
assign zext_ln312_2_fu_4279_p1 = or_ln309_2_fu_4272_p3;
assign zext_ln312_fu_3592_p1 = or_ln_fu_3584_p3;
assign zext_ln315_1_fu_3025_p1 = tmp_98_reg_4651;
assign zext_ln315_2_fu_3482_p1 = tmp_107_reg_4983;
assign zext_ln315_3_fu_3903_p1 = tmp_116_reg_5355;
assign zext_ln315_fu_2579_p1 = tmp_89_reg_4599;
assign zext_ln316_1_fu_3035_p1 = tmp_99_reg_4656;
assign zext_ln316_2_fu_3492_p1 = tmp_108_reg_4988;
assign zext_ln316_3_fu_3913_p1 = tmp_117_reg_5360;
assign zext_ln316_fu_2589_p1 = tmp_90_reg_4604;
assign zext_ln317_1_fu_3045_p1 = tmp_100_reg_4661;
assign zext_ln317_2_fu_3502_p1 = tmp_109_reg_4993;
assign zext_ln317_3_fu_3923_p1 = tmp_118_reg_5365;
assign zext_ln317_fu_2599_p1 = tmp_91_reg_4609;
assign zext_ln318_1_fu_3055_p1 = tmp_101_reg_4666;
assign zext_ln318_2_fu_3512_p1 = tmp_110_reg_4998;
assign zext_ln318_3_fu_3933_p1 = tmp_119_reg_5370;
assign zext_ln318_fu_2609_p1 = tmp_92_reg_4614;
assign zext_ln319_1_fu_3065_p1 = tmp_102_reg_4671;
assign zext_ln319_2_fu_3522_p1 = tmp_111_reg_5003;
assign zext_ln319_3_fu_3943_p1 = tmp_120_reg_5375;
assign zext_ln319_fu_2619_p1 = tmp_93_reg_4619;
assign zext_ln320_1_fu_3075_p1 = tmp_103_reg_4676;
assign zext_ln320_2_fu_3532_p1 = tmp_112_reg_5008;
assign zext_ln320_3_fu_3953_p1 = tmp_121_reg_5380;
assign zext_ln320_fu_2629_p1 = tmp_94_reg_4624;
assign zext_ln321_1_fu_3085_p1 = tmp_104_reg_4681;
assign zext_ln321_2_fu_3542_p1 = tmp_113_reg_5013;
assign zext_ln321_3_fu_3963_p1 = tmp_122_reg_5385;
assign zext_ln321_fu_2639_p1 = tmp_95_reg_4629;
always @ (posedge ap_clk) begin
    offset_4_reg_4578[0] <= 1'b1;
    offset_4_reg_4578_pp0_iter1_reg[0] <= 1'b1;
    offset_4_reg_4578_pp0_iter2_reg[0] <= 1'b1;
    offset_5_reg_4585[1:0] <= 2'b10;
    offset_5_reg_4585_pp0_iter1_reg[1:0] <= 2'b10;
    offset_5_reg_4585_pp0_iter2_reg[1:0] <= 2'b10;
    offset_6_reg_4592[1:0] <= 2'b11;
    offset_6_reg_4592_pp0_iter1_reg[1:0] <= 2'b11;
    offset_6_reg_4592_pp0_iter2_reg[1:0] <= 2'b11;
end
endmodule 