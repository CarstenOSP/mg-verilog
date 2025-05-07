module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1); 
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
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_4435;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_2430;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_2441;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_2448;
reg   [63:0] reg_2459;
reg   [63:0] reg_2469;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_2479;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_2490;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_2500;
reg   [63:0] reg_2511;
reg   [6:0] tid_1_reg_4426;
wire   [0:0] tmp_fu_2529_p3;
reg   [0:0] tmp_reg_4435_pp0_iter1_reg;
wire   [8:0] zext_ln325_1_fu_2537_p1;
reg   [8:0] zext_ln325_1_reg_4439;
reg   [8:0] zext_ln325_1_reg_4439_pp0_iter1_reg;
wire   [7:0] zext_ln325_2_fu_2541_p1;
reg   [7:0] zext_ln325_2_reg_4460;
reg   [7:0] zext_ln325_2_reg_4460_pp0_iter1_reg;
reg   [2:0] trunc_ln4_reg_4481;
reg   [2:0] trunc_ln4_reg_4481_pp0_iter1_reg;
wire   [4:0] trunc_ln330_1_fu_2555_p4;
reg   [4:0] trunc_ln330_1_reg_4497;
reg   [3:0] tmp_28_reg_4502;
reg   [3:0] tmp_28_reg_4502_pp0_iter1_reg;
reg   [3:0] tmp_29_reg_4512;
wire   [63:0] zext_ln330_5_fu_2627_p1;
reg   [63:0] zext_ln330_5_reg_4517;
wire   [8:0] add_ln331_fu_2633_p2;
reg   [8:0] add_ln331_reg_4533;
wire   [3:0] tmp_s_fu_2639_p4;
reg   [3:0] tmp_s_reg_4538;
reg   [3:0] tmp_37_reg_4546;
reg   [3:0] tmp_45_reg_4551;
wire   [63:0] zext_ln332_fu_2716_p1;
reg   [63:0] zext_ln332_reg_4556;
reg   [6:0] tmp_30_reg_4572;
wire   [63:0] zext_ln330_7_fu_2748_p1;
reg   [63:0] zext_ln330_7_reg_4577;
reg   [63:0] zext_ln330_7_reg_4577_pp0_iter1_reg;
wire   [8:0] add_ln331_1_fu_2754_p2;
reg   [8:0] add_ln331_1_reg_4593;
reg   [63:0] DATA_y_1_load_2_reg_4598;
reg   [6:0] tmp_38_reg_4605;
wire   [63:0] zext_ln330_9_fu_2785_p1;
reg   [63:0] zext_ln330_9_reg_4610;
wire   [8:0] add_ln331_2_fu_2791_p2;
reg   [8:0] add_ln331_2_reg_4626;
reg   [3:0] tmp_53_reg_4631;
wire   [63:0] zext_ln330_11_fu_2830_p1;
reg   [63:0] zext_ln330_11_reg_4636;
reg   [63:0] zext_ln330_11_reg_4636_pp0_iter1_reg;
wire   [8:0] add_ln331_3_fu_2836_p2;
reg   [8:0] add_ln331_3_reg_4652;
wire   [0:0] tmp_61_fu_2841_p3;
reg   [0:0] tmp_61_reg_4657;
reg   [3:0] tmp_62_reg_4663;
wire   [8:0] add_ln331_4_fu_2879_p2;
reg   [8:0] add_ln331_4_reg_4668;
reg   [63:0] DATA_y_load_4_reg_4673;
reg   [5:0] tmp_31_reg_4680;
wire   [8:0] add_ln333_2_fu_2893_p2;
reg   [8:0] add_ln333_2_reg_4685;
reg   [6:0] tmp_46_reg_4690;
wire   [8:0] add_ln333_3_fu_2917_p2;
reg   [8:0] add_ln333_3_reg_4695;
reg   [6:0] tmp_54_reg_4700;
wire   [8:0] add_ln333_4_fu_2941_p2;
reg   [8:0] add_ln333_4_reg_4705;
wire   [63:0] zext_ln330_13_fu_2956_p1;
reg   [63:0] zext_ln330_13_reg_4715;
reg   [6:0] tmp_63_reg_4730;
wire   [8:0] add_ln333_5_fu_2982_p2;
reg   [8:0] add_ln333_5_reg_4735;
reg   [63:0] DATA_y_load_6_reg_4745;
reg   [63:0] DATA_y_load_8_reg_4752;
reg   [63:0] DATA_y_1_load_8_reg_4759;
wire   [9:0] zext_ln325_fu_2987_p1;
reg   [9:0] zext_ln325_reg_4766;
reg   [9:0] zext_ln325_reg_4766_pp0_iter1_reg;
wire   [63:0] zext_ln332_4_fu_2997_p1;
reg   [63:0] zext_ln332_4_reg_4774;
reg   [63:0] zext_ln332_4_reg_4774_pp0_iter1_reg;
reg   [5:0] tmp_39_reg_4785;
reg   [6:0] tmp_40_reg_4795;
wire   [63:0] zext_ln332_6_fu_3038_p1;
reg   [63:0] zext_ln332_6_reg_4800;
reg   [63:0] zext_ln332_6_reg_4800_pp0_iter1_reg;
reg   [5:0] tmp_47_reg_4812;
reg   [6:0] tmp_48_reg_4817;
reg   [5:0] tmp_55_reg_4822;
reg   [6:0] tmp_56_reg_4827;
reg   [6:0] tmp_65_reg_4832;
reg   [63:0] DATA_y_1_load_10_reg_4837;
reg   [63:0] DATA_y_2_load_8_reg_4844;
reg   [63:0] DATA_y_2_load_10_reg_4851;
reg   [5:0] tmp_41_reg_4858;
wire   [7:0] add_ln335_2_fu_3143_p2;
reg   [7:0] add_ln335_2_reg_4863;
reg   [5:0] tmp_49_reg_4878;
wire   [7:0] add_ln335_3_fu_3173_p2;
reg   [7:0] add_ln335_3_reg_4883;
wire   [63:0] zext_ln332_8_fu_3185_p1;
reg   [63:0] zext_ln332_8_reg_4893;
reg   [5:0] tmp_57_reg_4909;
wire   [63:0] zext_ln332_10_fu_3226_p1;
reg   [63:0] zext_ln332_10_reg_4914;
reg   [5:0] tmp_64_reg_4926;
reg   [63:0] DATA_y_load_5_reg_4931;
reg   [63:0] DATA_y_load_7_reg_4938;
reg   [63:0] DATA_y_1_load_5_reg_4945;
wire   [1:0] trunc_ln330_fu_3240_p1;
reg   [1:0] trunc_ln330_reg_4952;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [1:0] trunc_ln330_reg_4952_pp0_iter1_reg;
reg   [6:0] tmp_42_reg_4956;
reg   [6:0] tmp_50_reg_4961;
reg   [6:0] tmp_51_reg_4966;
wire   [7:0] add_ln335_4_fu_3299_p2;
reg   [7:0] add_ln335_4_reg_4971;
reg   [6:0] tmp_59_reg_4981;
reg   [5:0] tmp_66_reg_4996;
wire   [7:0] add_ln335_5_fu_3338_p2;
reg   [7:0] add_ln335_5_reg_5001;
reg   [6:0] tmp_68_reg_5011;
wire   [63:0] zext_ln332_12_fu_3359_p1;
reg   [63:0] zext_ln332_12_reg_5021;
reg   [63:0] zext_ln332_12_reg_5021_pp0_iter1_reg;
reg   [63:0] DATA_y_load_9_reg_5037;
reg   [63:0] DATA_y_load_11_reg_5044;
reg   [63:0] DATA_y_1_load_7_reg_5051;
reg   [63:0] DATA_y_1_load_9_reg_5058;
reg   [63:0] DATA_y_2_load_5_reg_5065;
reg   [63:0] DATA_y_2_load_7_reg_5072;
wire   [4:0] zext_ln330_19_fu_3365_p1;
reg   [4:0] zext_ln330_19_reg_5079;
wire   [63:0] zext_ln330_3_fu_3373_p1;
reg   [63:0] zext_ln330_3_reg_5085;
reg   [7:0] tmp_44_reg_5101;
reg   [7:0] tmp_52_reg_5106;
reg   [6:0] tmp_58_reg_5111;
reg   [6:0] tmp_67_reg_5116;
wire   [63:0] zext_ln330_15_fu_3493_p1;
reg   [63:0] zext_ln330_15_reg_5121;
reg   [63:0] DATA_y_load_13_reg_5133;
reg   [63:0] DATA_y_1_load_11_reg_5140;
reg   [63:0] DATA_y_1_load_13_reg_5147;
reg   [63:0] DATA_y_2_load_11_reg_5154;
reg   [63:0] DATA_y_3_load_9_reg_5161;
reg   [63:0] DATA_y_3_load_11_reg_5168;
wire   [6:0] zext_ln330_1_fu_3508_p1;
reg   [6:0] zext_ln330_1_reg_5175;
wire   [63:0] zext_ln332_2_fu_3537_p1;
reg   [63:0] zext_ln332_2_reg_5194;
wire   [8:0] add_ln333_1_fu_3543_p2;
reg   [8:0] add_ln333_1_reg_5210;
wire   [7:0] add_ln335_1_fu_3548_p2;
reg   [7:0] add_ln335_1_reg_5225;
reg   [7:0] tmp_60_reg_5230;
reg   [7:0] tmp_69_reg_5235;
wire   [5:0] zext_ln330_2_fu_3595_p1;
reg   [5:0] zext_ln330_2_reg_5240;
reg   [6:0] tmp_32_reg_5257;
reg   [5:0] tmp_33_reg_5262;
reg   [6:0] tmp_34_reg_5267;
reg   [63:0] DATA_y_3_load_2_reg_5282;
reg   [3:0] tmp_70_reg_5309;
wire   [8:0] add_ln331_6_fu_3783_p2;
reg   [8:0] add_ln331_6_reg_5314;
reg   [63:0] DATA_y_2_load_1_reg_5319;
reg   [63:0] DATA_y_2_load_3_reg_5326;
reg   [63:0] DATA_y_3_load_3_reg_5333;
reg   [6:0] tmp_35_reg_5340;
reg   [7:0] tmp_36_reg_5345;
wire   [63:0] zext_ln330_17_fu_3873_p1;
reg   [63:0] zext_ln330_17_reg_5360;
reg   [6:0] tmp_71_reg_5376;
reg   [63:0] DATA_y_3_load_4_reg_5381;
reg   [63:0] DATA_y_3_load_6_reg_5388;
reg   [63:0] DATA_y_load_14_reg_5410;
reg   [63:0] DATA_y_1_load_14_reg_5417;
wire   [8:0] add_ln333_7_fu_3952_p2;
reg   [8:0] add_ln333_7_reg_5424;
reg   [5:0] tmp_72_reg_5449;
reg   [6:0] tmp_73_reg_5454;
reg   [63:0] DATA_y_2_load_14_reg_5459;
reg   [63:0] DATA_y_3_load_14_reg_5466;
wire   [63:0] zext_ln332_14_fu_4102_p1;
reg   [63:0] zext_ln332_14_reg_5473;
reg   [5:0] tmp_74_reg_5485;
wire   [7:0] add_ln335_7_fu_4132_p2;
reg   [7:0] add_ln335_7_reg_5490;
reg   [6:0] tmp_75_reg_5510;
reg   [6:0] tmp_76_reg_5520;
wire   [5:0] add_ln336_6_fu_4199_p2;
reg   [5:0] add_ln336_6_reg_5530;
wire   [6:0] add_ln337_6_fu_4204_p2;
reg   [6:0] add_ln337_6_reg_5535;
reg   [63:0] DATA_y_2_load_15_reg_5540;
reg   [63:0] DATA_y_3_load_13_reg_5547;
reg   [63:0] DATA_y_3_load_15_reg_5554;
reg   [7:0] tmp_77_reg_5561;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln332_1_fu_3385_p1;
wire   [63:0] zext_ln330_4_fu_3392_p1;
wire   [63:0] zext_ln330_6_fu_3398_p1;
wire   [63:0] zext_ln330_8_fu_3413_p1;
wire   [63:0] zext_ln330_10_fu_3428_p1;
wire   [63:0] zext_ln330_12_fu_3457_p1;
wire   [63:0] zext_ln333_fu_3517_p1;
wire   [63:0] zext_ln331_1_fu_3524_p1;
wire   [63:0] zext_ln331_2_fu_3553_p1;
wire   [63:0] zext_ln331_3_fu_3559_p1;
wire   [63:0] zext_ln331_4_fu_3565_p1;
wire   [63:0] zext_ln331_5_fu_3580_p1;
wire   [63:0] zext_ln334_fu_3604_p1;
wire   [63:0] zext_ln332_3_fu_3611_p1;
wire   [63:0] zext_ln332_5_fu_3684_p1;
wire   [63:0] zext_ln332_7_fu_3690_p1;
wire   [63:0] zext_ln332_9_fu_3696_p1;
wire   [63:0] zext_ln332_11_fu_3702_p1;
wire   [63:0] zext_ln330_fu_3708_p1;
wire   [63:0] zext_ln335_fu_3719_p1;
wire   [63:0] zext_ln333_1_fu_3726_p1;
wire   [63:0] zext_ln333_2_fu_3732_p1;
wire   [63:0] zext_ln333_3_fu_3738_p1;
wire   [63:0] zext_ln333_4_fu_3744_p1;
wire   [63:0] zext_ln333_5_fu_3750_p1;
wire   [63:0] zext_ln331_fu_3799_p1;
wire   [63:0] zext_ln336_fu_3811_p1;
wire   [63:0] zext_ln334_1_fu_3818_p1;
wire   [63:0] zext_ln334_2_fu_3842_p1;
wire   [63:0] zext_ln334_3_fu_3848_p1;
wire   [63:0] zext_ln334_4_fu_3854_p1;
wire   [63:0] zext_ln334_5_fu_3860_p1;
wire   [63:0] zext_ln337_fu_3903_p1;
wire   [63:0] zext_ln335_1_fu_3910_p1;
wire   [63:0] zext_ln335_2_fu_3916_p1;
wire   [63:0] zext_ln335_3_fu_3922_p1;
wire   [63:0] zext_ln335_4_fu_3928_p1;
wire   [63:0] zext_ln335_5_fu_3934_p1;
wire   [63:0] zext_ln330_14_fu_3945_p1;
wire   [63:0] zext_ln336_1_fu_3957_p1;
wire   [63:0] zext_ln336_2_fu_3972_p1;
wire   [63:0] zext_ln336_3_fu_3979_p1;
wire   [63:0] zext_ln336_4_fu_3985_p1;
wire   [63:0] zext_ln336_5_fu_3991_p1;
wire   [63:0] zext_ln331_12_fu_4006_p1;
wire   [63:0] zext_ln332_13_fu_4018_p1;
wire   [63:0] zext_ln337_1_fu_4053_p1;
wire   [63:0] zext_ln337_2_fu_4059_p1;
wire   [63:0] zext_ln337_3_fu_4065_p1;
wire   [63:0] zext_ln337_4_fu_4071_p1;
wire   [63:0] zext_ln337_5_fu_4077_p1;
wire   [63:0] zext_ln333_6_fu_4088_p1;
wire   [63:0] zext_ln334_6_fu_4142_p1;
wire   [63:0] zext_ln330_16_fu_4149_p1;
wire   [63:0] zext_ln335_6_fu_4192_p1;
wire   [63:0] zext_ln331_7_fu_4209_p1;
wire   [63:0] zext_ln336_6_fu_4224_p1;
wire   [63:0] zext_ln332_15_fu_4230_p1;
wire   [63:0] zext_ln333_7_fu_4236_p1;
wire   [63:0] zext_ln334_7_fu_4242_p1;
wire   [63:0] zext_ln335_7_fu_4248_p1;
wire   [63:0] zext_ln336_7_fu_4254_p1;
wire   [63:0] zext_ln337_6_fu_4260_p1;
wire   [63:0] zext_ln337_7_fu_4266_p1;
reg   [6:0] tid_fu_264;
wire   [6:0] add_ln325_fu_3498_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_1;
reg    DATA_y_ce1_local;
reg   [6:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [6:0] DATA_y_address0_local;
reg    DATA_y_1_ce1_local;
reg   [6:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [6:0] DATA_y_1_address0_local;
reg    DATA_y_2_ce1_local;
reg   [6:0] DATA_y_2_address1_local;
reg    DATA_y_2_ce0_local;
reg   [6:0] DATA_y_2_address0_local;
reg    DATA_y_3_ce1_local;
reg   [6:0] DATA_y_3_address1_local;
reg    DATA_y_3_ce0_local;
reg   [6:0] DATA_y_3_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
wire   [4:0] mul_ln330_fu_2569_p0;
wire   [6:0] mul_ln330_fu_2569_p1;
wire   [10:0] mul_ln330_fu_2569_p2;
wire   [2:0] grp_fu_2585_p0;
wire   [5:0] or_ln2_fu_2591_p3;
wire   [5:0] mul_ln330_1_fu_2603_p0;
wire   [7:0] mul_ln330_1_fu_2603_p1;
wire   [12:0] mul_ln330_1_fu_2603_p2;
wire   [6:0] or_ln3_fu_2619_p3;
wire   [5:0] or_ln328_1_fu_2649_p3;
wire   [5:0] mul_ln330_2_fu_2661_p0;
wire   [7:0] mul_ln330_2_fu_2661_p1;
wire   [12:0] mul_ln330_2_fu_2661_p2;
wire   [5:0] or_ln328_2_fu_2677_p3;
wire   [5:0] mul_ln330_3_fu_2689_p0;
wire   [7:0] mul_ln330_3_fu_2689_p1;
wire   [12:0] mul_ln330_3_fu_2689_p2;
wire   [5:0] trunc_ln330_2_fu_2705_p1;
wire   [6:0] or_ln1_fu_2708_p3;
wire   [8:0] mul_ln331_fu_2725_p0;
wire   [10:0] mul_ln331_fu_2725_p1;
wire   [18:0] mul_ln331_fu_2725_p2;
wire   [6:0] or_ln330_1_fu_2741_p3;
wire   [8:0] mul_ln331_1_fu_2762_p0;
wire   [10:0] mul_ln331_1_fu_2762_p1;
wire   [18:0] mul_ln331_1_fu_2762_p2;
wire   [6:0] or_ln330_2_fu_2778_p3;
wire   [5:0] or_ln328_3_fu_2796_p3;
wire   [5:0] mul_ln330_4_fu_2807_p0;
wire   [7:0] mul_ln330_4_fu_2807_p1;
wire   [12:0] mul_ln330_4_fu_2807_p2;
wire   [6:0] or_ln330_3_fu_2823_p3;
wire   [5:0] or_ln328_4_fu_2848_p5;
wire   [5:0] mul_ln330_5_fu_2863_p0;
wire   [7:0] mul_ln330_5_fu_2863_p1;
wire   [12:0] mul_ln330_5_fu_2863_p2;
wire   [16:0] tmp_31_fu_2884_p1;
wire  signed [16:0] grp_fu_4272_p3;
wire   [8:0] mul_ln331_2_fu_2901_p0;
wire   [10:0] mul_ln331_2_fu_2901_p1;
wire   [18:0] mul_ln331_2_fu_2901_p2;
wire   [8:0] mul_ln331_3_fu_2925_p0;
wire   [10:0] mul_ln331_3_fu_2925_p1;
wire   [18:0] mul_ln331_3_fu_2925_p2;
wire   [6:0] or_ln330_4_fu_2946_p5;
wire   [8:0] mul_ln331_4_fu_2966_p0;
wire   [10:0] mul_ln331_4_fu_2966_p1;
wire   [18:0] mul_ln331_4_fu_2966_p2;
wire   [6:0] or_ln332_2_fu_2990_p3;
wire   [16:0] tmp_39_fu_3003_p1;
wire  signed [16:0] grp_fu_4281_p3;
wire   [8:0] mul_ln333_1_fu_3015_p0;
wire   [10:0] mul_ln333_1_fu_3015_p1;
wire   [18:0] mul_ln333_1_fu_3015_p2;
wire   [6:0] or_ln332_3_fu_3031_p3;
wire   [16:0] tmp_47_fu_3043_p1;
wire  signed [16:0] grp_fu_4289_p3;
wire   [8:0] mul_ln333_2_fu_3055_p0;
wire   [10:0] mul_ln333_2_fu_3055_p1;
wire   [18:0] mul_ln333_2_fu_3055_p2;
wire   [16:0] tmp_55_fu_3071_p1;
wire  signed [16:0] grp_fu_4297_p3;
wire   [8:0] mul_ln333_3_fu_3083_p0;
wire   [10:0] mul_ln333_3_fu_3083_p1;
wire   [18:0] mul_ln333_3_fu_3083_p2;
wire   [8:0] mul_ln333_4_fu_3102_p0;
wire   [10:0] mul_ln333_4_fu_3102_p1;
wire   [18:0] mul_ln333_4_fu_3102_p2;
wire   [7:0] add_ln334_2_fu_3118_p2;
wire   [7:0] mul_ln334_1_fu_3127_p0;
wire   [9:0] mul_ln334_1_fu_3127_p1;
wire   [16:0] mul_ln334_1_fu_3127_p2;
wire   [7:0] add_ln334_3_fu_3148_p2;
wire   [7:0] mul_ln334_2_fu_3157_p0;
wire   [9:0] mul_ln334_2_fu_3157_p1;
wire   [16:0] mul_ln334_2_fu_3157_p2;
wire   [6:0] or_ln332_4_fu_3178_p3;
wire   [7:0] add_ln334_4_fu_3191_p2;
wire   [7:0] mul_ln334_3_fu_3200_p0;
wire   [9:0] mul_ln334_3_fu_3200_p1;
wire   [16:0] mul_ln334_3_fu_3200_p2;
wire   [6:0] or_ln332_5_fu_3216_p5;
wire   [16:0] tmp_64_fu_3231_p1;
wire  signed [16:0] grp_fu_4305_p3;
wire   [1:0] grp_fu_2585_p2;
wire  signed [8:0] sext_ln335_1_fu_3244_p1;
wire   [8:0] mul_ln335_1_fu_3251_p0;
wire   [10:0] mul_ln335_1_fu_3251_p1;
wire   [18:0] mul_ln335_1_fu_3251_p2;
wire  signed [8:0] sext_ln335_2_fu_3267_p1;
wire   [8:0] mul_ln335_2_fu_3274_p0;
wire   [10:0] mul_ln335_2_fu_3274_p1;
wire   [18:0] mul_ln335_2_fu_3274_p2;
wire   [18:0] tmp_51_fu_3290_p1;
wire  signed [18:0] grp_fu_4313_p3;
wire   [18:0] tmp_59_fu_3304_p1;
wire  signed [18:0] grp_fu_4321_p3;
wire   [7:0] add_ln334_5_fu_3313_p2;
wire   [7:0] mul_ln334_4_fu_3322_p0;
wire   [9:0] mul_ln334_4_fu_3322_p1;
wire   [16:0] mul_ln334_4_fu_3322_p2;
wire   [18:0] tmp_68_fu_3343_p1;
wire  signed [18:0] grp_fu_4329_p3;
wire   [6:0] or_ln332_6_fu_3352_p3;
wire   [6:0] shl_ln330_fu_3368_p2;
wire   [4:0] add_ln332_fu_3379_p2;
wire   [20:0] tmp_44_fu_3404_p1;
wire  signed [20:0] grp_fu_4337_p3;
wire   [20:0] tmp_52_fu_3419_p1;
wire  signed [20:0] grp_fu_4346_p3;
wire  signed [8:0] sext_ln335_3_fu_3434_p1;
wire   [8:0] mul_ln335_3_fu_3441_p0;
wire   [10:0] mul_ln335_3_fu_3441_p1;
wire   [18:0] mul_ln335_3_fu_3441_p2;
wire  signed [8:0] sext_ln335_4_fu_3463_p1;
wire   [8:0] mul_ln335_4_fu_3470_p0;
wire   [10:0] mul_ln335_4_fu_3470_p1;
wire   [18:0] mul_ln335_4_fu_3470_p2;
wire   [6:0] or_ln330_5_fu_3486_p3;
wire   [6:0] add_ln333_fu_3511_p2;
wire   [6:0] or_ln332_1_fu_3530_p3;
wire   [20:0] tmp_60_fu_3571_p1;
wire  signed [20:0] grp_fu_4355_p3;
wire   [20:0] tmp_69_fu_3586_p1;
wire  signed [20:0] grp_fu_4363_p3;
wire   [5:0] add_ln334_fu_3598_p2;
wire   [8:0] mul_ln333_fu_3620_p0;
wire   [10:0] mul_ln333_fu_3620_p1;
wire   [18:0] mul_ln333_fu_3620_p2;
wire   [7:0] add_ln334_1_fu_3636_p2;
wire   [7:0] mul_ln334_fu_3645_p0;
wire   [9:0] mul_ln334_fu_3645_p1;
wire   [16:0] mul_ln334_fu_3645_p2;
wire  signed [8:0] sext_ln335_fu_3661_p1;
wire   [8:0] mul_ln335_fu_3668_p0;
wire   [10:0] mul_ln335_fu_3668_p1;
wire   [18:0] mul_ln335_fu_3668_p2;
wire   [6:0] add_ln335_fu_3714_p2;
wire   [5:0] or_ln328_5_fu_3756_p3;
wire   [5:0] mul_ln330_6_fu_3767_p0;
wire   [7:0] mul_ln330_6_fu_3767_p1;
wire   [12:0] mul_ln330_6_fu_3767_p2;
wire   [4:0] or_ln_fu_3788_p3;
wire  signed [5:0] sext_ln331_fu_3795_p1;
wire   [5:0] add_ln336_fu_3806_p2;
wire   [18:0] tmp_35_fu_3824_p1;
wire  signed [18:0] grp_fu_4371_p3;
wire   [20:0] tmp_36_fu_3833_p1;
wire  signed [20:0] grp_fu_4379_p3;
wire   [6:0] or_ln330_6_fu_3866_p3;
wire   [8:0] mul_ln331_5_fu_3882_p0;
wire   [10:0] mul_ln331_5_fu_3882_p1;
wire   [18:0] mul_ln331_5_fu_3882_p2;
wire   [6:0] add_ln337_fu_3898_p2;
wire   [3:0] add_ln330_fu_3940_p2;
wire   [18:0] tmp_43_fu_3963_p1;
wire  signed [18:0] grp_fu_4387_p3;
wire   [6:0] tmp_43_fu_3963_p4;
wire   [4:0] add_ln331_5_fu_3997_p2;
wire  signed [5:0] sext_ln331_1_fu_4002_p1;
wire   [4:0] add_ln332_6_fu_4013_p2;
wire   [16:0] tmp_72_fu_4025_p1;
wire  signed [16:0] grp_fu_4395_p3;
wire   [8:0] mul_ln333_5_fu_4037_p0;
wire   [10:0] mul_ln333_5_fu_4037_p1;
wire   [18:0] mul_ln333_5_fu_4037_p2;
wire   [6:0] add_ln333_6_fu_4083_p2;
wire   [6:0] or_ln332_7_fu_4095_p3;
wire   [7:0] add_ln334_7_fu_4107_p2;
wire   [7:0] mul_ln334_5_fu_4116_p0;
wire   [9:0] mul_ln334_5_fu_4116_p1;
wire   [16:0] mul_ln334_5_fu_4116_p2;
wire   [5:0] add_ln334_6_fu_4137_p2;
wire  signed [8:0] sext_ln335_5_fu_4155_p1;
wire   [8:0] mul_ln335_5_fu_4162_p0;
wire   [10:0] mul_ln335_5_fu_4162_p1;
wire   [18:0] mul_ln335_5_fu_4162_p2;
wire   [18:0] tmp_76_fu_4178_p1;
wire  signed [18:0] grp_fu_4403_p3;
wire   [6:0] add_ln335_6_fu_4187_p2;
wire   [20:0] tmp_77_fu_4215_p1;
wire  signed [20:0] grp_fu_4411_p3;
wire   [6:0] grp_fu_4272_p0;
wire   [6:0] grp_fu_4272_p1;
wire   [8:0] grp_fu_4272_p2;
wire   [6:0] grp_fu_4281_p0;
wire   [6:0] grp_fu_4281_p1;
wire   [8:0] grp_fu_4281_p2;
wire   [6:0] grp_fu_4289_p0;
wire   [6:0] grp_fu_4289_p1;
wire   [8:0] grp_fu_4289_p2;
wire   [6:0] grp_fu_4297_p0;
wire   [6:0] grp_fu_4297_p1;
wire   [8:0] grp_fu_4297_p2;
wire   [6:0] grp_fu_4305_p0;
wire   [6:0] grp_fu_4305_p1;
wire   [8:0] grp_fu_4305_p2;
wire   [6:0] grp_fu_4313_p0;
wire   [7:0] grp_fu_4313_p1;
wire   [9:0] grp_fu_4313_p2;
wire   [6:0] grp_fu_4321_p0;
wire   [7:0] grp_fu_4321_p1;
wire   [9:0] grp_fu_4321_p2;
wire   [6:0] grp_fu_4329_p0;
wire   [7:0] grp_fu_4329_p1;
wire   [9:0] grp_fu_4329_p2;
wire   [6:0] grp_fu_4337_p0;
wire   [8:0] grp_fu_4337_p1;
wire   [10:0] grp_fu_4337_p2;
wire   [6:0] grp_fu_4346_p0;
wire   [8:0] grp_fu_4346_p1;
wire   [10:0] grp_fu_4346_p2;
wire   [6:0] grp_fu_4355_p0;
wire   [8:0] grp_fu_4355_p1;
wire   [10:0] grp_fu_4355_p2;
wire   [6:0] grp_fu_4363_p0;
wire   [8:0] grp_fu_4363_p1;
wire   [10:0] grp_fu_4363_p2;
wire   [6:0] grp_fu_4371_p0;
wire   [7:0] grp_fu_4371_p1;
wire   [9:0] grp_fu_4371_p2;
wire   [6:0] grp_fu_4379_p0;
wire   [8:0] grp_fu_4379_p1;
wire   [10:0] grp_fu_4379_p2;
wire   [6:0] grp_fu_4387_p0;
wire   [7:0] grp_fu_4387_p1;
wire   [9:0] grp_fu_4387_p2;
wire   [6:0] grp_fu_4395_p0;
wire   [6:0] grp_fu_4395_p1;
wire   [8:0] grp_fu_4395_p2;
wire   [6:0] grp_fu_4403_p0;
wire   [7:0] grp_fu_4403_p1;
wire   [9:0] grp_fu_4403_p2;
wire   [6:0] grp_fu_4411_p0;
wire   [8:0] grp_fu_4411_p1;
wire   [10:0] grp_fu_4411_p2;
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
wire   [7:0] grp_fu_4272_p00;
wire   [12:0] mul_ln330_1_fu_2603_p00;
wire   [12:0] mul_ln330_2_fu_2661_p00;
wire   [12:0] mul_ln330_3_fu_2689_p00;
wire   [12:0] mul_ln330_4_fu_2807_p00;
wire   [12:0] mul_ln330_5_fu_2863_p00;
wire   [12:0] mul_ln330_6_fu_3767_p00;
wire   [10:0] mul_ln330_fu_2569_p00;
wire   [18:0] mul_ln331_1_fu_2762_p00;
wire   [18:0] mul_ln331_2_fu_2901_p00;
wire   [18:0] mul_ln331_3_fu_2925_p00;
wire   [18:0] mul_ln331_4_fu_2966_p00;
wire   [18:0] mul_ln331_5_fu_3882_p00;
wire   [18:0] mul_ln331_fu_2725_p00;
wire   [18:0] mul_ln333_1_fu_3015_p00;
wire   [18:0] mul_ln333_2_fu_3055_p00;
wire   [18:0] mul_ln333_3_fu_3083_p00;
wire   [18:0] mul_ln333_4_fu_3102_p00;
wire   [18:0] mul_ln333_5_fu_4037_p00;
wire   [18:0] mul_ln333_fu_3620_p00;
wire   [16:0] mul_ln334_1_fu_3127_p00;
wire   [16:0] mul_ln334_2_fu_3157_p00;
wire   [16:0] mul_ln334_3_fu_3200_p00;
wire   [16:0] mul_ln334_4_fu_3322_p00;
wire   [16:0] mul_ln334_5_fu_4116_p00;
wire   [16:0] mul_ln334_fu_3645_p00;
wire   [18:0] mul_ln335_1_fu_3251_p00;
wire   [18:0] mul_ln335_2_fu_3274_p00;
wire   [18:0] mul_ln335_3_fu_3441_p00;
wire   [18:0] mul_ln335_4_fu_3470_p00;
wire   [18:0] mul_ln335_5_fu_4162_p00;
wire   [18:0] mul_ln335_fu_3668_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_264 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U505(.din0(mul_ln330_fu_2569_p0),.din1(mul_ln330_fu_2569_p1),.dout(mul_ln330_fu_2569_p2));
fft1D_512_urem_3ns_3ns_2_7_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 3 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_3ns_3ns_2_7_1_U506(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2585_p0),.din1(3'd3),.ce(1'b1),.dout(grp_fu_2585_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U507(.din0(mul_ln330_1_fu_2603_p0),.din1(mul_ln330_1_fu_2603_p1),.dout(mul_ln330_1_fu_2603_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U508(.din0(mul_ln330_2_fu_2661_p0),.din1(mul_ln330_2_fu_2661_p1),.dout(mul_ln330_2_fu_2661_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U509(.din0(mul_ln330_3_fu_2689_p0),.din1(mul_ln330_3_fu_2689_p1),.dout(mul_ln330_3_fu_2689_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U510(.din0(mul_ln331_fu_2725_p0),.din1(mul_ln331_fu_2725_p1),.dout(mul_ln331_fu_2725_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U511(.din0(mul_ln331_1_fu_2762_p0),.din1(mul_ln331_1_fu_2762_p1),.dout(mul_ln331_1_fu_2762_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U512(.din0(mul_ln330_4_fu_2807_p0),.din1(mul_ln330_4_fu_2807_p1),.dout(mul_ln330_4_fu_2807_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U513(.din0(mul_ln330_5_fu_2863_p0),.din1(mul_ln330_5_fu_2863_p1),.dout(mul_ln330_5_fu_2863_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U514(.din0(mul_ln331_2_fu_2901_p0),.din1(mul_ln331_2_fu_2901_p1),.dout(mul_ln331_2_fu_2901_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U515(.din0(mul_ln331_3_fu_2925_p0),.din1(mul_ln331_3_fu_2925_p1),.dout(mul_ln331_3_fu_2925_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U516(.din0(mul_ln331_4_fu_2966_p0),.din1(mul_ln331_4_fu_2966_p1),.dout(mul_ln331_4_fu_2966_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U517(.din0(mul_ln333_1_fu_3015_p0),.din1(mul_ln333_1_fu_3015_p1),.dout(mul_ln333_1_fu_3015_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U518(.din0(mul_ln333_2_fu_3055_p0),.din1(mul_ln333_2_fu_3055_p1),.dout(mul_ln333_2_fu_3055_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U519(.din0(mul_ln333_3_fu_3083_p0),.din1(mul_ln333_3_fu_3083_p1),.dout(mul_ln333_3_fu_3083_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U520(.din0(mul_ln333_4_fu_3102_p0),.din1(mul_ln333_4_fu_3102_p1),.dout(mul_ln333_4_fu_3102_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U521(.din0(mul_ln334_1_fu_3127_p0),.din1(mul_ln334_1_fu_3127_p1),.dout(mul_ln334_1_fu_3127_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U522(.din0(mul_ln334_2_fu_3157_p0),.din1(mul_ln334_2_fu_3157_p1),.dout(mul_ln334_2_fu_3157_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U523(.din0(mul_ln334_3_fu_3200_p0),.din1(mul_ln334_3_fu_3200_p1),.dout(mul_ln334_3_fu_3200_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U524(.din0(mul_ln335_1_fu_3251_p0),.din1(mul_ln335_1_fu_3251_p1),.dout(mul_ln335_1_fu_3251_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U525(.din0(mul_ln335_2_fu_3274_p0),.din1(mul_ln335_2_fu_3274_p1),.dout(mul_ln335_2_fu_3274_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U526(.din0(mul_ln334_4_fu_3322_p0),.din1(mul_ln334_4_fu_3322_p1),.dout(mul_ln334_4_fu_3322_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U527(.din0(mul_ln335_3_fu_3441_p0),.din1(mul_ln335_3_fu_3441_p1),.dout(mul_ln335_3_fu_3441_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U528(.din0(mul_ln335_4_fu_3470_p0),.din1(mul_ln335_4_fu_3470_p1),.dout(mul_ln335_4_fu_3470_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U529(.din0(mul_ln333_fu_3620_p0),.din1(mul_ln333_fu_3620_p1),.dout(mul_ln333_fu_3620_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U530(.din0(mul_ln334_fu_3645_p0),.din1(mul_ln334_fu_3645_p1),.dout(mul_ln334_fu_3645_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U531(.din0(mul_ln335_fu_3668_p0),.din1(mul_ln335_fu_3668_p1),.dout(mul_ln335_fu_3668_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U532(.din0(mul_ln330_6_fu_3767_p0),.din1(mul_ln330_6_fu_3767_p1),.dout(mul_ln330_6_fu_3767_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U533(.din0(mul_ln331_5_fu_3882_p0),.din1(mul_ln331_5_fu_3882_p1),.dout(mul_ln331_5_fu_3882_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U534(.din0(mul_ln333_5_fu_4037_p0),.din1(mul_ln333_5_fu_4037_p1),.dout(mul_ln333_5_fu_4037_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U535(.din0(mul_ln334_5_fu_4116_p0),.din1(mul_ln334_5_fu_4116_p1),.dout(mul_ln334_5_fu_4116_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U536(.din0(mul_ln335_5_fu_4162_p0),.din1(mul_ln335_5_fu_4162_p1),.dout(mul_ln335_5_fu_4162_p2));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U537(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4272_p0),.din1(grp_fu_4272_p1),.din2(grp_fu_4272_p2),.ce(1'b1),.dout(grp_fu_4272_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U538(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4281_p0),.din1(grp_fu_4281_p1),.din2(grp_fu_4281_p2),.ce(1'b1),.dout(grp_fu_4281_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U539(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4289_p0),.din1(grp_fu_4289_p1),.din2(grp_fu_4289_p2),.ce(1'b1),.dout(grp_fu_4289_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U540(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4297_p0),.din1(grp_fu_4297_p1),.din2(grp_fu_4297_p2),.ce(1'b1),.dout(grp_fu_4297_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U541(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4305_p0),.din1(grp_fu_4305_p1),.din2(grp_fu_4305_p2),.ce(1'b1),.dout(grp_fu_4305_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U542(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4313_p0),.din1(grp_fu_4313_p1),.din2(grp_fu_4313_p2),.ce(1'b1),.dout(grp_fu_4313_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U543(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4321_p0),.din1(grp_fu_4321_p1),.din2(grp_fu_4321_p2),.ce(1'b1),.dout(grp_fu_4321_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U544(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4329_p0),.din1(grp_fu_4329_p1),.din2(grp_fu_4329_p2),.ce(1'b1),.dout(grp_fu_4329_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U545(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4337_p0),.din1(grp_fu_4337_p1),.din2(grp_fu_4337_p2),.ce(1'b1),.dout(grp_fu_4337_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U546(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4346_p0),.din1(grp_fu_4346_p1),.din2(grp_fu_4346_p2),.ce(1'b1),.dout(grp_fu_4346_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U547(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4355_p0),.din1(grp_fu_4355_p1),.din2(grp_fu_4355_p2),.ce(1'b1),.dout(grp_fu_4355_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U548(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4363_p0),.din1(grp_fu_4363_p1),.din2(grp_fu_4363_p2),.ce(1'b1),.dout(grp_fu_4363_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U549(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4371_p0),.din1(grp_fu_4371_p1),.din2(grp_fu_4371_p2),.ce(1'b1),.dout(grp_fu_4371_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U550(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4379_p0),.din1(grp_fu_4379_p1),.din2(grp_fu_4379_p2),.ce(1'b1),.dout(grp_fu_4379_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U551(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4387_p0),.din1(grp_fu_4387_p1),.din2(grp_fu_4387_p2),.ce(1'b1),.dout(grp_fu_4387_p3));
fft1D_512_am_addmul_7ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_7ns_7ns_9ns_17_4_1_U552(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4395_p0),.din1(grp_fu_4395_p1),.din2(grp_fu_4395_p2),.ce(1'b1),.dout(grp_fu_4395_p3));
fft1D_512_am_addmul_7ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_7ns_8ns_10ns_19_4_1_U553(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4403_p0),.din1(grp_fu_4403_p1),.din2(grp_fu_4403_p2),.ce(1'b1),.dout(grp_fu_4403_p3));
fft1D_512_am_addmul_7ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_7ns_9ns_11ns_21_4_1_U554(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4411_p0),.din1(grp_fu_4411_p1),.din2(grp_fu_4411_p2),.ce(1'b1),.dout(grp_fu_4411_p3));
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        reg_2430 <= DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_2430 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_2448 <= DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_2448 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_2479 <= DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_2479 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_2500 <= DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_2500 <= DATA_y_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_264 <= 7'd0;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_fu_264 <= add_ln325_fu_3498_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_load_10_reg_4837 <= DATA_y_1_q1;
        DATA_y_2_load_10_reg_4851 <= DATA_y_2_q0;
        DATA_y_2_load_8_reg_4844 <= DATA_y_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_load_11_reg_5140 <= DATA_y_1_q1;
        DATA_y_1_load_13_reg_5147 <= DATA_y_1_q0;
        DATA_y_2_load_11_reg_5154 <= DATA_y_2_q0;
        DATA_y_3_load_11_reg_5168 <= DATA_y_3_q0;
        DATA_y_3_load_9_reg_5161 <= DATA_y_3_q1;
        DATA_y_load_13_reg_5133 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_load_14_reg_5417 <= DATA_y_1_q0;
        DATA_y_load_14_reg_5410 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_2_reg_4598 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_1_load_5_reg_4945 <= DATA_y_1_q1;
        DATA_y_load_5_reg_4931 <= DATA_y_q1;
        DATA_y_load_7_reg_4938 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_load_7_reg_5051 <= DATA_y_1_q1;
        DATA_y_1_load_9_reg_5058 <= DATA_y_1_q0;
        DATA_y_2_load_5_reg_5065 <= DATA_y_2_q1;
        DATA_y_2_load_7_reg_5072 <= DATA_y_2_q0;
        DATA_y_load_11_reg_5044 <= DATA_y_q0;
        DATA_y_load_9_reg_5037 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_load_8_reg_4759 <= DATA_y_1_q0;
        DATA_y_load_6_reg_4745 <= DATA_y_q1;
        DATA_y_load_8_reg_4752 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_2_load_14_reg_5459 <= DATA_y_2_q0;
        DATA_y_3_load_14_reg_5466 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_load_15_reg_5540 <= DATA_y_2_q0;
        DATA_y_3_load_13_reg_5547 <= DATA_y_3_q1;
        DATA_y_3_load_15_reg_5554 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_2_load_1_reg_5319 <= DATA_y_2_q1;
        DATA_y_2_load_3_reg_5326 <= DATA_y_2_q0;
        DATA_y_3_load_3_reg_5333 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_load_2_reg_5282 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_3_load_4_reg_5381 <= DATA_y_3_q1;
        DATA_y_3_load_6_reg_5388 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_load_4_reg_4673 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln331_1_reg_4593 <= add_ln331_1_fu_2754_p2;
        tmp_30_reg_4572 <= {{mul_ln331_fu_2725_p2[18:12]}};
        tmp_32_reg_5257 <= {{mul_ln333_fu_3620_p2[18:12]}};
        tmp_33_reg_5262 <= {{mul_ln334_fu_3645_p2[16:11]}};
        tmp_34_reg_5267 <= {{mul_ln335_fu_3668_p2[18:12]}};
        zext_ln330_2_reg_5240[3 : 0] <= zext_ln330_2_fu_3595_p1[3 : 0];
        zext_ln330_7_reg_4577[6 : 3] <= zext_ln330_7_fu_2748_p1[6 : 3];
        zext_ln330_7_reg_4577_pp0_iter1_reg[6 : 3] <= zext_ln330_7_reg_4577[6 : 3];
        zext_ln332_reg_4556[6 : 1] <= zext_ln332_fu_2716_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln331_2_reg_4626 <= add_ln331_2_fu_2791_p2;
        add_ln331_3_reg_4652 <= add_ln331_3_fu_2836_p2;
        add_ln331_4_reg_4668 <= add_ln331_4_fu_2879_p2;
        add_ln331_6_reg_5314 <= add_ln331_6_fu_3783_p2;
        tmp_38_reg_4605 <= {{mul_ln331_1_fu_2762_p2[18:12]}};
        tmp_53_reg_4631 <= {{mul_ln330_4_fu_2807_p2[12:9]}};
        tmp_61_reg_4657 <= tid_1_reg_4426[32'd1];
        tmp_62_reg_4663 <= {{mul_ln330_5_fu_2863_p2[12:9]}};
        tmp_70_reg_5309 <= {{mul_ln330_6_fu_3767_p2[12:9]}};
        zext_ln330_11_reg_4636[6 : 4] <= zext_ln330_11_fu_2830_p1[6 : 4];
        zext_ln330_11_reg_4636_pp0_iter1_reg[6 : 4] <= zext_ln330_11_reg_4636[6 : 4];
        zext_ln330_9_reg_4610[6 : 3] <= zext_ln330_9_fu_2785_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln331_reg_4533 <= add_ln331_fu_2633_p2;
        add_ln333_1_reg_5210 <= add_ln333_1_fu_3543_p2;
        add_ln335_1_reg_5225 <= add_ln335_1_fu_3548_p2;
        add_ln336_6_reg_5530 <= add_ln336_6_fu_4199_p2;
        add_ln337_6_reg_5535 <= add_ln337_6_fu_4204_p2;
        tid_1_reg_4426 <= ap_sig_allocacmp_tid_1;
        tmp_28_reg_4502 <= {{mul_ln330_fu_2569_p2[10:7]}};
        tmp_28_reg_4502_pp0_iter1_reg <= tmp_28_reg_4502;
        tmp_29_reg_4512 <= {{mul_ln330_1_fu_2603_p2[12:9]}};
        tmp_37_reg_4546 <= {{mul_ln330_2_fu_2661_p2[12:9]}};
        tmp_45_reg_4551 <= {{mul_ln330_3_fu_2689_p2[12:9]}};
        tmp_60_reg_5230 <= {{tmp_60_fu_3571_p1[20:13]}};
        tmp_69_reg_5235 <= {{tmp_69_fu_3586_p1[20:13]}};
        tmp_77_reg_5561 <= {{tmp_77_fu_4215_p1[20:13]}};
        tmp_reg_4435 <= ap_sig_allocacmp_tid_1[32'd6];
        tmp_reg_4435_pp0_iter1_reg <= tmp_reg_4435;
        tmp_s_reg_4538 <= {{ap_sig_allocacmp_tid_1[5:2]}};
        trunc_ln330_1_reg_4497 <= {{ap_sig_allocacmp_tid_1[5:1]}};
        trunc_ln4_reg_4481 <= {{ap_sig_allocacmp_tid_1[5:3]}};
        trunc_ln4_reg_4481_pp0_iter1_reg <= trunc_ln4_reg_4481;
        zext_ln325_1_reg_4439[6 : 0] <= zext_ln325_1_fu_2537_p1[6 : 0];
        zext_ln325_1_reg_4439_pp0_iter1_reg[6 : 0] <= zext_ln325_1_reg_4439[6 : 0];
        zext_ln325_2_reg_4460[6 : 0] <= zext_ln325_2_fu_2541_p1[6 : 0];
        zext_ln325_2_reg_4460_pp0_iter1_reg[6 : 0] <= zext_ln325_2_reg_4460[6 : 0];
        zext_ln330_1_reg_5175[3 : 0] <= zext_ln330_1_fu_3508_p1[3 : 0];
        zext_ln330_5_reg_4517[6 : 2] <= zext_ln330_5_fu_2627_p1[6 : 2];
        zext_ln332_2_reg_5194[6 : 2] <= zext_ln332_2_fu_3537_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln333_2_reg_4685 <= add_ln333_2_fu_2893_p2;
        add_ln333_3_reg_4695 <= add_ln333_3_fu_2917_p2;
        add_ln333_4_reg_4705 <= add_ln333_4_fu_2941_p2;
        add_ln333_5_reg_4735 <= add_ln333_5_fu_2982_p2;
        tmp_31_reg_4680 <= {{tmp_31_fu_2884_p1[16:11]}};
        tmp_35_reg_5340 <= {{tmp_35_fu_3824_p1[18:12]}};
        tmp_36_reg_5345 <= {{tmp_36_fu_3833_p1[20:13]}};
        tmp_46_reg_4690 <= {{mul_ln331_2_fu_2901_p2[18:12]}};
        tmp_54_reg_4700 <= {{mul_ln331_3_fu_2925_p2[18:12]}};
        tmp_63_reg_4730 <= {{mul_ln331_4_fu_2966_p2[18:12]}};
        tmp_71_reg_5376 <= {{mul_ln331_5_fu_3882_p2[18:12]}};
        zext_ln330_13_reg_4715[2] <= zext_ln330_13_fu_2956_p1[2];
zext_ln330_13_reg_4715[6 : 4] <= zext_ln330_13_fu_2956_p1[6 : 4];
        zext_ln330_17_reg_5360[6 : 4] <= zext_ln330_17_fu_3873_p1[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln333_7_reg_5424 <= add_ln333_7_fu_3952_p2;
        tmp_39_reg_4785 <= {{tmp_39_fu_3003_p1[16:11]}};
        tmp_40_reg_4795 <= {{mul_ln333_1_fu_3015_p2[18:12]}};
        tmp_47_reg_4812 <= {{tmp_47_fu_3043_p1[16:11]}};
        tmp_48_reg_4817 <= {{mul_ln333_2_fu_3055_p2[18:12]}};
        tmp_55_reg_4822 <= {{tmp_55_fu_3071_p1[16:11]}};
        tmp_56_reg_4827 <= {{mul_ln333_3_fu_3083_p2[18:12]}};
        tmp_65_reg_4832 <= {{mul_ln333_4_fu_3102_p2[18:12]}};
        zext_ln325_reg_4766[6 : 0] <= zext_ln325_fu_2987_p1[6 : 0];
        zext_ln325_reg_4766_pp0_iter1_reg[6 : 0] <= zext_ln325_reg_4766[6 : 0];
        zext_ln332_4_reg_4774[6 : 3] <= zext_ln332_4_fu_2997_p1[6 : 3];
        zext_ln332_4_reg_4774_pp0_iter1_reg[6 : 3] <= zext_ln332_4_reg_4774[6 : 3];
        zext_ln332_6_reg_4800[6 : 3] <= zext_ln332_6_fu_3038_p1[6 : 3];
        zext_ln332_6_reg_4800_pp0_iter1_reg[6 : 3] <= zext_ln332_6_reg_4800[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln335_2_reg_4863 <= add_ln335_2_fu_3143_p2;
        add_ln335_3_reg_4883 <= add_ln335_3_fu_3173_p2;
        tmp_41_reg_4858 <= {{mul_ln334_1_fu_3127_p2[16:11]}};
        tmp_49_reg_4878 <= {{mul_ln334_2_fu_3157_p2[16:11]}};
        tmp_57_reg_4909 <= {{mul_ln334_3_fu_3200_p2[16:11]}};
        tmp_64_reg_4926 <= {{tmp_64_fu_3231_p1[16:11]}};
        tmp_72_reg_5449 <= {{tmp_72_fu_4025_p1[16:11]}};
        tmp_73_reg_5454 <= {{mul_ln333_5_fu_4037_p2[18:12]}};
        zext_ln332_10_reg_4914[2] <= zext_ln332_10_fu_3226_p1[2];
zext_ln332_10_reg_4914[6 : 4] <= zext_ln332_10_fu_3226_p1[6 : 4];
        zext_ln332_8_reg_4893[6 : 4] <= zext_ln332_8_fu_3185_p1[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln335_4_reg_4971 <= add_ln335_4_fu_3299_p2;
        add_ln335_5_reg_5001 <= add_ln335_5_fu_3338_p2;
        add_ln335_7_reg_5490 <= add_ln335_7_fu_4132_p2;
        tmp_42_reg_4956 <= {{mul_ln335_1_fu_3251_p2[18:12]}};
        tmp_50_reg_4961 <= {{mul_ln335_2_fu_3274_p2[18:12]}};
        tmp_51_reg_4966 <= {{tmp_51_fu_3290_p1[18:12]}};
        tmp_59_reg_4981 <= {{tmp_59_fu_3304_p1[18:12]}};
        tmp_66_reg_4996 <= {{mul_ln334_4_fu_3322_p2[16:11]}};
        tmp_68_reg_5011 <= {{tmp_68_fu_3343_p1[18:12]}};
        tmp_74_reg_5485 <= {{mul_ln334_5_fu_4116_p2[16:11]}};
        trunc_ln330_reg_4952 <= trunc_ln330_fu_3240_p1;
        trunc_ln330_reg_4952_pp0_iter1_reg <= trunc_ln330_reg_4952;
        zext_ln332_12_reg_5021[6 : 4] <= zext_ln332_12_fu_3359_p1[6 : 4];
        zext_ln332_12_reg_5021_pp0_iter1_reg[6 : 4] <= zext_ln332_12_reg_5021[6 : 4];
        zext_ln332_14_reg_5473[6 : 4] <= zext_ln332_14_fu_4102_p1[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2441 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2459 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_2469 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_2490 <= DATA_y_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2511 <= DATA_y_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_44_reg_5101 <= {{tmp_44_fu_3404_p1[20:13]}};
        tmp_52_reg_5106 <= {{tmp_52_fu_3419_p1[20:13]}};
        tmp_58_reg_5111 <= {{mul_ln335_3_fu_3441_p2[18:12]}};
        tmp_67_reg_5116 <= {{mul_ln335_4_fu_3470_p2[18:12]}};
        tmp_75_reg_5510 <= {{mul_ln335_5_fu_4162_p2[18:12]}};
        tmp_76_reg_5520 <= {{tmp_76_fu_4178_p1[18:12]}};
        zext_ln330_15_reg_5121[6 : 4] <= zext_ln330_15_fu_3493_p1[6 : 4];
        zext_ln330_19_reg_5079[3 : 0] <= zext_ln330_19_fu_3365_p1[3 : 0];
        zext_ln330_3_reg_5085[6 : 1] <= zext_ln330_3_fu_3373_p1[6 : 1];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_address0_local = zext_ln332_14_reg_5473;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_address0_local = zext_ln330_15_reg_5121;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_address0_local = zext_ln330_17_fu_3873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address0_local = zext_ln332_2_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_address0_local = zext_ln332_12_fu_3359_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_1_address0_local = zext_ln332_8_fu_3185_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address0_local = zext_ln330_11_fu_2830_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln330_7_fu_2748_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address1_local = zext_ln330_3_fu_3373_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address1_local = zext_ln332_10_reg_4914;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address1_local = zext_ln332_6_reg_4800;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address1_local = zext_ln332_4_fu_2997_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address1_local = zext_ln330_13_fu_2956_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address1_local = zext_ln330_9_fu_2785_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln332_fu_2716_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln330_5_fu_2627_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_2_address0_local = zext_ln332_14_reg_5473;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_2_address0_local = zext_ln330_17_reg_5360;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_2_address0_local = zext_ln330_9_reg_4610;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_2_address0_local = zext_ln332_2_reg_5194;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_address0_local = zext_ln330_5_reg_4517;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_2_address0_local = zext_ln332_10_reg_4914;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_2_address0_local = zext_ln332_6_reg_4800;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_2_address0_local = zext_ln330_13_fu_2956_p1;
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_2_address1_local = zext_ln332_12_reg_5021_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_2_address1_local = zext_ln330_15_reg_5121;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_2_address1_local = zext_ln330_7_reg_4577_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_2_address1_local = zext_ln332_reg_4556;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_address1_local = zext_ln330_3_reg_5085;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_2_address1_local = zext_ln332_8_reg_4893;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_2_address1_local = zext_ln332_4_reg_4774;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_2_address1_local = zext_ln330_11_reg_4636;
    end else begin
        DATA_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_3_address0_local = zext_ln332_14_reg_5473;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_3_address0_local = zext_ln332_6_reg_4800_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_3_address0_local = zext_ln330_17_reg_5360;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_3_address0_local = zext_ln330_13_reg_4715;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_3_address0_local = zext_ln330_9_reg_4610;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_address0_local = zext_ln332_2_reg_5194;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_address0_local = zext_ln330_5_reg_4517;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_3_address0_local = zext_ln332_10_reg_4914;
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_3_address1_local = zext_ln332_12_reg_5021_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_3_address1_local = zext_ln332_4_reg_4774_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_3_address1_local = zext_ln330_15_reg_5121;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_3_address1_local = zext_ln330_11_reg_4636_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_3_address1_local = zext_ln330_7_reg_4577_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_address1_local = zext_ln332_reg_4556;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_address1_local = zext_ln330_3_reg_5085;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_3_address1_local = zext_ln332_8_reg_4893;
    end else begin
        DATA_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_address0_local = zext_ln332_14_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_address0_local = zext_ln330_17_fu_3873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_address0_local = zext_ln332_2_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_address0_local = zext_ln330_15_fu_3493_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_y_address0_local = zext_ln332_10_fu_3226_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_address0_local = zext_ln332_6_fu_3038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address0_local = zext_ln330_11_fu_2830_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln330_7_fu_2748_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address1_local = zext_ln330_3_fu_3373_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address1_local = zext_ln332_12_fu_3359_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address1_local = zext_ln332_8_fu_3185_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address1_local = zext_ln332_4_fu_2997_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address1_local = zext_ln330_13_fu_2956_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address1_local = zext_ln330_9_fu_2785_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln332_fu_2716_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln330_5_fu_2627_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_4435 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_4435_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_264;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln337_7_fu_4266_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln336_7_fu_4254_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln335_7_fu_4248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln334_7_fu_4242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln333_7_fu_4236_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln332_15_fu_4230_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln331_7_fu_4209_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln330_16_fu_4149_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln337_3_fu_4065_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln337_1_fu_4053_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln337_5_fu_4077_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln336_3_fu_3979_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln336_1_fu_3957_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln336_5_fu_3991_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln335_3_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln335_1_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln335_5_fu_3934_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln334_3_fu_3848_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln334_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln334_5_fu_3860_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln333_3_fu_3738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln333_1_fu_3726_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln333_5_fu_3750_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln332_7_fu_3690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln332_3_fu_3611_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln332_11_fu_3702_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln331_3_fu_3559_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln331_1_fu_3524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln331_5_fu_3580_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln330_8_fu_3413_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln330_4_fu_3392_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln330_12_fu_3457_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952== 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d0_local = DATA_y_3_load_15_reg_5554;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_2_load_15_reg_5540;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = DATA_y_3_load_14_reg_5466;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_2_load_14_reg_5459;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_2459;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = reg_2430;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_14_reg_5417;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_y_load_14_reg_5410;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d1_local = DATA_y_3_load_3_reg_5333;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d1_local = DATA_y_3_load_11_reg_5168;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = DATA_y_2_load_7_reg_5072;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = DATA_y_2_load_3_reg_5326;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = DATA_y_2_load_11_reg_5154;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d1_local = DATA_y_3_load_6_reg_5388;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d1_local = DATA_y_3_load_2_reg_5282;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_d1_local = DATA_y_3_q0;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d1_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d1_local = reg_2500;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d1_local = DATA_y_2_load_10_reg_4851;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = DATA_y_1_load_7_reg_5051;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_2448;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = DATA_y_1_load_11_reg_5140;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_load_7_reg_4938;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_load_11_reg_5044;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = reg_2469;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_y_1_load_2_reg_4598;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_y_1_load_10_reg_4837;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = DATA_y_load_6_reg_4745;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_2430;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_2479;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952== 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln337_6_fu_4260_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln336_6_fu_4224_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln335_6_fu_4192_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln334_6_fu_4142_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln331_12_fu_4006_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln335_4_fu_3928_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln335_2_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln330_14_fu_3945_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln334_4_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln334_2_fu_3842_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln336_fu_3811_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln333_4_fu_3744_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln333_2_fu_3732_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln335_fu_3719_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln337_4_fu_4071_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln337_2_fu_4059_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln333_6_fu_4088_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln336_4_fu_3985_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln336_2_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln332_13_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln337_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln331_fu_3799_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln330_fu_3708_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln332_9_fu_3696_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln332_5_fu_3684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln334_fu_3604_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln331_4_fu_3565_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln331_2_fu_3553_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln333_fu_3517_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln330_10_fu_3428_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln330_6_fu_3398_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln332_1_fu_3385_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0== ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d0_local = DATA_y_3_load_13_reg_5547;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = reg_2500;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = reg_2490;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_1_q0;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = DATA_y_3_load_4_reg_5381;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = reg_2479;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_2_load_8_reg_4844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_2_load_1_reg_5319;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_1_load_9_reg_5058;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_1_load_5_reg_4945;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_d0_local = reg_2511;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d1_local = DATA_y_3_load_9_reg_5161;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d1_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d1_local = DATA_y_1_load_13_reg_5147;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = reg_2490;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = DATA_y_2_load_5_reg_5065;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = DATA_y_load_13_reg_5133;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d1_local = reg_2511;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d1_local = reg_2469;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_load_9_reg_5037;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_load_5_reg_4931;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_2_q1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_y_1_load_8_reg_4759;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = reg_2459;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = reg_2448;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = DATA_y_load_8_reg_4752;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = DATA_y_load_4_reg_4673;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_2_d1_local = reg_2441;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0== ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln337_7_fu_4266_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln336_7_fu_4254_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln335_7_fu_4248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln334_7_fu_4242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln333_7_fu_4236_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln332_15_fu_4230_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln331_7_fu_4209_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln330_16_fu_4149_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln337_5_fu_4077_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln337_3_fu_4065_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln337_1_fu_4053_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln336_5_fu_3991_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln336_3_fu_3979_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln336_1_fu_3957_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln335_5_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln335_3_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln335_1_fu_3910_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln334_5_fu_3860_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln334_3_fu_3848_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln334_1_fu_3818_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln333_5_fu_3750_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln333_3_fu_3738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln333_1_fu_3726_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln332_11_fu_3702_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln332_7_fu_3690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln332_3_fu_3611_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln331_5_fu_3580_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln331_3_fu_3559_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln331_1_fu_3524_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln330_12_fu_3457_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln330_8_fu_3413_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln330_4_fu_3392_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952== 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_d0_local = DATA_y_3_load_15_reg_5554;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_2_load_15_reg_5540;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d0_local = DATA_y_3_load_14_reg_5466;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_2_load_14_reg_5459;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = reg_2459;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = reg_2430;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_1_load_14_reg_5417;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d0_local = DATA_y_load_14_reg_5410;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_d1_local = DATA_y_3_load_11_reg_5168;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_d1_local = DATA_y_3_load_3_reg_5333;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = DATA_y_2_load_11_reg_5154;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = DATA_y_2_load_7_reg_5072;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = DATA_y_2_load_3_reg_5326;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_d1_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d1_local = DATA_y_3_load_6_reg_5388;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d1_local = DATA_y_3_load_2_reg_5282;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d1_local = DATA_y_2_load_10_reg_4851;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d1_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d1_local = reg_2500;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = DATA_y_1_load_11_reg_5140;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = DATA_y_1_load_7_reg_5051;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = reg_2448;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_y_load_11_reg_5044;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_y_load_7_reg_4938;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_y_q0;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_y_1_load_10_reg_4837;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = reg_2469;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_y_1_load_2_reg_4598;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = reg_2479;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = DATA_y_load_6_reg_4745;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = reg_2430;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952== 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln337_6_fu_4260_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln336_6_fu_4224_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln335_6_fu_4192_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln334_6_fu_4142_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln331_12_fu_4006_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln330_14_fu_3945_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln335_4_fu_3928_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln335_2_fu_3916_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln336_fu_3811_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln334_4_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln334_2_fu_3842_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln335_fu_3719_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln333_4_fu_3744_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln333_2_fu_3732_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln333_6_fu_4088_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln337_4_fu_4071_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln337_2_fu_4059_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln332_13_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln336_4_fu_3985_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln336_2_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln337_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln331_fu_3799_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln330_fu_3708_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln334_fu_3604_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln332_9_fu_3696_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln332_5_fu_3684_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln333_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln331_4_fu_3565_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln331_2_fu_3553_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln332_1_fu_3385_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln330_10_fu_3428_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln330_6_fu_3398_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0== ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_d0_local = DATA_y_3_load_13_reg_5547;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = reg_2500;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d0_local = reg_2490;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_1_q0;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = reg_2479;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = DATA_y_3_load_4_reg_5381;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_2_load_1_reg_5319;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_2_load_8_reg_4844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2511;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_1_load_9_reg_5058;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_1_load_5_reg_4945;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_d1_local = DATA_y_1_load_13_reg_5147;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_d1_local = DATA_y_3_load_9_reg_5161;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_d1_local = DATA_y_3_q1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = DATA_y_load_13_reg_5133;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = reg_2490;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = DATA_y_2_load_5_reg_5065;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d1_local = reg_2511;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d1_local = reg_2469;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_y_load_9_reg_5037;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_y_load_5_reg_4931;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = reg_2448;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_y_1_load_8_reg_4759;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = reg_2459;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_4_d1_local = reg_2441;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = DATA_y_load_8_reg_4752;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = DATA_y_load_4_reg_4673;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0)& ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952== 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln337_7_fu_4266_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln336_7_fu_4254_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln335_7_fu_4248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln334_7_fu_4242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln333_7_fu_4236_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln332_15_fu_4230_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln331_7_fu_4209_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address0_local = zext_ln330_16_fu_4149_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address1_local = zext_ln337_1_fu_4053_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address1_local = zext_ln337_5_fu_4077_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address1_local = zext_ln337_3_fu_4065_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln336_1_fu_3957_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln336_5_fu_3991_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln336_3_fu_3979_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln335_1_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln335_5_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln335_3_fu_3922_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln334_1_fu_3818_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln334_5_fu_3860_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln334_3_fu_3848_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln333_1_fu_3726_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln333_5_fu_3750_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln333_3_fu_3738_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln332_3_fu_3611_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln332_11_fu_3702_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln332_7_fu_3690_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln331_1_fu_3524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln331_5_fu_3580_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln331_3_fu_3559_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln330_4_fu_3392_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln330_12_fu_3457_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln330_8_fu_3413_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952== 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_d0_local = DATA_y_3_load_15_reg_5554;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_2_load_15_reg_5540;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d0_local = DATA_y_3_load_14_reg_5466;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_2_load_14_reg_5459;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = reg_2459;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = reg_2430;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_1_load_14_reg_5417;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d0_local = DATA_y_load_14_reg_5410;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_d1_local = DATA_y_3_load_3_reg_5333;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_d1_local = DATA_y_3_load_11_reg_5168;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = DATA_y_2_load_3_reg_5326;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = DATA_y_2_load_11_reg_5154;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = DATA_y_2_load_7_reg_5072;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d1_local = DATA_y_3_load_2_reg_5282;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_5_d1_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d1_local = DATA_y_3_load_6_reg_5388;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d1_local = reg_2500;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d1_local = DATA_y_2_load_10_reg_4851;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d1_local = DATA_y_2_q0;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_2448;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = DATA_y_1_load_11_reg_5140;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = DATA_y_1_load_7_reg_5051;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_y_load_11_reg_5044;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_y_load_7_reg_4938;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_y_1_load_2_reg_4598;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_y_1_load_10_reg_4837;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = reg_2469;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d1_local = reg_2430;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d1_local = reg_2479;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d1_local = DATA_y_load_6_reg_4745;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) |(~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & ~(trunc_ln330_reg_4952_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952== 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln337_6_fu_4260_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln336_6_fu_4224_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln335_6_fu_4192_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln334_6_fu_4142_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln331_12_fu_4006_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln335_2_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln330_14_fu_3945_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln335_4_fu_3928_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln334_2_fu_3842_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln336_fu_3811_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln334_4_fu_3854_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln333_2_fu_3732_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln335_fu_3719_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln333_4_fu_3744_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln337_2_fu_4059_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln333_6_fu_4088_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln337_4_fu_4071_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln336_2_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln332_13_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln336_4_fu_3985_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln337_fu_3903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln331_fu_3799_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln330_fu_3708_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln332_5_fu_3684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln334_fu_3604_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln332_9_fu_3696_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln331_2_fu_3553_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln333_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln331_4_fu_3565_p1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln330_6_fu_3398_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln332_1_fu_3385_p1;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln330_10_fu_3428_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0== ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_y_3_load_13_reg_5547;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = reg_2500;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = reg_2490;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_1_q0;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = DATA_y_3_load_4_reg_5381;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = reg_2479;
    end else if (((1'b0 == ap_block_pp0_stage4) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = DATA_y_3_q1;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_2_load_1_reg_5319;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_2_load_8_reg_4844;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_1_load_5_reg_4945;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_d0_local = reg_2511;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_1_load_9_reg_5058;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = DATA_y_1_load_13_reg_5147;
    end else if (((1'b0 == ap_block_pp0_stage6) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = DATA_y_3_load_9_reg_5161;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = DATA_y_2_load_5_reg_5065;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = DATA_y_load_13_reg_5133;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = reg_2490;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d1_local = reg_2511;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d1_local = reg_2469;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_load_5_reg_4931;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_load_9_reg_5037;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = reg_2459;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = reg_2448;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_y_1_load_8_reg_4759;
    end else if ((~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = DATA_y_load_4_reg_4673;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_d1_local = reg_2441;
    end else if (((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = DATA_y_load_8_reg_4752;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0== ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))| ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln330_reg_4952 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (tmp_reg_4435 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage7)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln330_reg_4952 == 2'd0) & ~(trunc_ln330_reg_4952 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_address1 = DATA_y_2_address1_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_address1 = DATA_y_3_address1_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln325_fu_3498_p2 = (tid_1_reg_4426 + 7'd8);
assign add_ln330_fu_3940_p2 = (tmp_28_reg_4502_pp0_iter1_reg + 4'd1);
assign add_ln331_1_fu_2754_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd290));
assign add_ln331_2_fu_2791_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd291));
assign add_ln331_3_fu_2836_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd292));
assign add_ln331_4_fu_2879_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd293));
assign add_ln331_5_fu_3997_p2 = ($signed(zext_ln330_19_reg_5079) + $signed(5'd17));
assign add_ln331_6_fu_3783_p2 = ($signed(zext_ln325_1_reg_4439_pp0_iter1_reg) + $signed(9'd295));
assign add_ln331_fu_2633_p2 = ($signed(zext_ln325_1_fu_2537_p1) + $signed(9'd289));
assign add_ln332_6_fu_4013_p2 = (zext_ln330_19_reg_5079 + 5'd13);
assign add_ln332_fu_3379_p2 = (zext_ln330_19_fu_3365_p1 + 5'd12);
assign add_ln333_1_fu_3543_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd361));
assign add_ln333_2_fu_2893_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd362));
assign add_ln333_3_fu_2917_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd363));
assign add_ln333_4_fu_2941_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd364));
assign add_ln333_5_fu_2982_p2 = ($signed(zext_ln325_1_reg_4439) + $signed(9'd365));
assign add_ln333_6_fu_4083_p2 = (zext_ln330_1_reg_5175 + 7'd61);
assign add_ln333_7_fu_3952_p2 = ($signed(zext_ln325_1_reg_4439_pp0_iter1_reg) + $signed(9'd367));
assign add_ln333_fu_3511_p2 = (zext_ln330_1_fu_3508_p1 + 7'd60);
assign add_ln334_1_fu_3636_p2 = ($signed(zext_ln325_2_reg_4460_pp0_iter1_reg) + $signed(8'd145));
assign add_ln334_2_fu_3118_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd146));
assign add_ln334_3_fu_3148_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd147));
assign add_ln334_4_fu_3191_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd148));
assign add_ln334_5_fu_3313_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd149));
assign add_ln334_6_fu_4137_p2 = (zext_ln330_2_reg_5240 + 6'd25);
assign add_ln334_7_fu_4107_p2 = ($signed(zext_ln325_2_reg_4460_pp0_iter1_reg) + $signed(8'd151));
assign add_ln334_fu_3598_p2 = (zext_ln330_2_fu_3595_p1 + 6'd24);
assign add_ln335_1_fu_3548_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd177));
assign add_ln335_2_fu_3143_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd178));
assign add_ln335_3_fu_3173_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd179));
assign add_ln335_4_fu_3299_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd180));
assign add_ln335_5_fu_3338_p2 = ($signed(zext_ln325_2_reg_4460) + $signed(8'd181));
assign add_ln335_6_fu_4187_p2 = ($signed(zext_ln330_1_reg_5175) + $signed(7'd73));
assign add_ln335_7_fu_4132_p2 = ($signed(zext_ln325_2_reg_4460_pp0_iter1_reg) + $signed(8'd183));
assign add_ln335_fu_3714_p2 = ($signed(zext_ln330_1_reg_5175) + $signed(7'd72));
assign add_ln336_6_fu_4199_p2 = ($signed(zext_ln330_2_reg_5240) + $signed(6'd37));
assign add_ln336_fu_3806_p2 = ($signed(zext_ln330_2_reg_5240) + $signed(6'd36));
assign add_ln337_6_fu_4204_p2 = ($signed(zext_ln330_1_reg_5175) + $signed(7'd85));
assign add_ln337_fu_3898_p2 = ($signed(zext_ln330_1_reg_5175) + $signed(7'd84));
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
assign grp_fu_2585_p0 = {{ap_sig_allocacmp_tid_1[5:3]}};
assign grp_fu_4272_p0 = grp_fu_4272_p00;
assign grp_fu_4272_p00 = ap_sig_allocacmp_tid_1;
assign grp_fu_4272_p1 = 8'd73;
assign grp_fu_4272_p2 = 17'd342;
assign grp_fu_4281_p0 = zext_ln325_2_reg_4460;
assign grp_fu_4281_p1 = 8'd74;
assign grp_fu_4281_p2 = 17'd342;
assign grp_fu_4289_p0 = zext_ln325_2_reg_4460;
assign grp_fu_4289_p1 = 8'd75;
assign grp_fu_4289_p2 = 17'd342;
assign grp_fu_4297_p0 = zext_ln325_2_reg_4460;
assign grp_fu_4297_p1 = 8'd76;
assign grp_fu_4297_p2 = 17'd342;
assign grp_fu_4305_p0 = zext_ln325_2_reg_4460;
assign grp_fu_4305_p1 = 8'd77;
assign grp_fu_4305_p2 = 17'd342;
assign grp_fu_4313_p0 = zext_ln325_1_reg_4439;
assign grp_fu_4313_p1 = 9'd219;
assign grp_fu_4313_p2 = 19'd683;
assign grp_fu_4321_p0 = zext_ln325_1_reg_4439;
assign grp_fu_4321_p1 = 9'd220;
assign grp_fu_4321_p2 = 19'd683;
assign grp_fu_4329_p0 = zext_ln325_1_reg_4439;
assign grp_fu_4329_p1 = 9'd221;
assign grp_fu_4329_p2 = 19'd683;
assign grp_fu_4337_p0 = zext_ln325_fu_2987_p1;
assign grp_fu_4337_p1 = 10'd506;
assign grp_fu_4337_p2 = 21'd1366;
assign grp_fu_4346_p0 = zext_ln325_fu_2987_p1;
assign grp_fu_4346_p1 = 10'd507;
assign grp_fu_4346_p2 = 21'd1366;
assign grp_fu_4355_p0 = zext_ln325_reg_4766;
assign grp_fu_4355_p1 = 10'd508;
assign grp_fu_4355_p2 = 21'd1366;
assign grp_fu_4363_p0 = zext_ln325_reg_4766;
assign grp_fu_4363_p1 = 10'd509;
assign grp_fu_4363_p2 = 21'd1366;
assign grp_fu_4371_p0 = zext_ln325_1_reg_4439;
assign grp_fu_4371_p1 = 9'd217;
assign grp_fu_4371_p2 = 19'd683;
assign grp_fu_4379_p0 = zext_ln325_reg_4766;
assign grp_fu_4379_p1 = 10'd505;
assign grp_fu_4379_p2 = 21'd1366;
assign grp_fu_4387_p0 = zext_ln325_1_reg_4439_pp0_iter1_reg;
assign grp_fu_4387_p1 = 9'd218;
assign grp_fu_4387_p2 = 19'd683;
assign grp_fu_4395_p0 = zext_ln325_2_reg_4460_pp0_iter1_reg;
assign grp_fu_4395_p1 = 8'd79;
assign grp_fu_4395_p2 = 17'd342;
assign grp_fu_4403_p0 = zext_ln325_1_reg_4439_pp0_iter1_reg;
assign grp_fu_4403_p1 = 9'd223;
assign grp_fu_4403_p2 = 19'd683;
assign grp_fu_4411_p0 = zext_ln325_reg_4766_pp0_iter1_reg;
assign grp_fu_4411_p1 = 10'd511;
assign grp_fu_4411_p2 = 21'd1366;
assign mul_ln330_1_fu_2603_p0 = mul_ln330_1_fu_2603_p00;
assign mul_ln330_1_fu_2603_p00 = or_ln2_fu_2591_p3;
assign mul_ln330_1_fu_2603_p1 = 13'd86;
assign mul_ln330_2_fu_2661_p0 = mul_ln330_2_fu_2661_p00;
assign mul_ln330_2_fu_2661_p00 = or_ln328_1_fu_2649_p3;
assign mul_ln330_2_fu_2661_p1 = 13'd86;
assign mul_ln330_3_fu_2689_p0 = mul_ln330_3_fu_2689_p00;
assign mul_ln330_3_fu_2689_p00 = or_ln328_2_fu_2677_p3;
assign mul_ln330_3_fu_2689_p1 = 13'd86;
assign mul_ln330_4_fu_2807_p0 = mul_ln330_4_fu_2807_p00;
assign mul_ln330_4_fu_2807_p00 = or_ln328_3_fu_2796_p3;
assign mul_ln330_4_fu_2807_p1 = 13'd86;
assign mul_ln330_5_fu_2863_p0 = mul_ln330_5_fu_2863_p00;
assign mul_ln330_5_fu_2863_p00 = or_ln328_4_fu_2848_p5;
assign mul_ln330_5_fu_2863_p1 = 13'd86;
assign mul_ln330_6_fu_3767_p0 = mul_ln330_6_fu_3767_p00;
assign mul_ln330_6_fu_3767_p00 = or_ln328_5_fu_3756_p3;
assign mul_ln330_6_fu_3767_p1 = 13'd86;
assign mul_ln330_fu_2569_p0 = mul_ln330_fu_2569_p00;
assign mul_ln330_fu_2569_p00 = trunc_ln330_1_fu_2555_p4;
assign mul_ln330_fu_2569_p1 = 11'd43;
assign mul_ln331_1_fu_2762_p0 = mul_ln331_1_fu_2762_p00;
assign mul_ln331_1_fu_2762_p00 = add_ln331_1_reg_4593;
assign mul_ln331_1_fu_2762_p1 = 19'd683;
assign mul_ln331_2_fu_2901_p0 = mul_ln331_2_fu_2901_p00;
assign mul_ln331_2_fu_2901_p00 = add_ln331_2_reg_4626;
assign mul_ln331_2_fu_2901_p1 = 19'd683;
assign mul_ln331_3_fu_2925_p0 = mul_ln331_3_fu_2925_p00;
assign mul_ln331_3_fu_2925_p00 = add_ln331_3_reg_4652;
assign mul_ln331_3_fu_2925_p1 = 19'd683;
assign mul_ln331_4_fu_2966_p0 = mul_ln331_4_fu_2966_p00;
assign mul_ln331_4_fu_2966_p00 = add_ln331_4_reg_4668;
assign mul_ln331_4_fu_2966_p1 = 19'd683;
assign mul_ln331_5_fu_3882_p0 = mul_ln331_5_fu_3882_p00;
assign mul_ln331_5_fu_3882_p00 = add_ln331_6_reg_5314;
assign mul_ln331_5_fu_3882_p1 = 19'd683;
assign mul_ln331_fu_2725_p0 = mul_ln331_fu_2725_p00;
assign mul_ln331_fu_2725_p00 = add_ln331_reg_4533;
assign mul_ln331_fu_2725_p1 = 19'd683;
assign mul_ln333_1_fu_3015_p0 = mul_ln333_1_fu_3015_p00;
assign mul_ln333_1_fu_3015_p00 = add_ln333_2_reg_4685;
assign mul_ln333_1_fu_3015_p1 = 19'd683;
assign mul_ln333_2_fu_3055_p0 = mul_ln333_2_fu_3055_p00;
assign mul_ln333_2_fu_3055_p00 = add_ln333_3_reg_4695;
assign mul_ln333_2_fu_3055_p1 = 19'd683;
assign mul_ln333_3_fu_3083_p0 = mul_ln333_3_fu_3083_p00;
assign mul_ln333_3_fu_3083_p00 = add_ln333_4_reg_4705;
assign mul_ln333_3_fu_3083_p1 = 19'd683;
assign mul_ln333_4_fu_3102_p0 = mul_ln333_4_fu_3102_p00;
assign mul_ln333_4_fu_3102_p00 = add_ln333_5_reg_4735;
assign mul_ln333_4_fu_3102_p1 = 19'd683;
assign mul_ln333_5_fu_4037_p0 = mul_ln333_5_fu_4037_p00;
assign mul_ln333_5_fu_4037_p00 = add_ln333_7_reg_5424;
assign mul_ln333_5_fu_4037_p1 = 19'd683;
assign mul_ln333_fu_3620_p0 = mul_ln333_fu_3620_p00;
assign mul_ln333_fu_3620_p00 = add_ln333_1_reg_5210;
assign mul_ln333_fu_3620_p1 = 19'd683;
assign mul_ln334_1_fu_3127_p0 = mul_ln334_1_fu_3127_p00;
assign mul_ln334_1_fu_3127_p00 = add_ln334_2_fu_3118_p2;
assign mul_ln334_1_fu_3127_p1 = 17'd342;
assign mul_ln334_2_fu_3157_p0 = mul_ln334_2_fu_3157_p00;
assign mul_ln334_2_fu_3157_p00 = add_ln334_3_fu_3148_p2;
assign mul_ln334_2_fu_3157_p1 = 17'd342;
assign mul_ln334_3_fu_3200_p0 = mul_ln334_3_fu_3200_p00;
assign mul_ln334_3_fu_3200_p00 = add_ln334_4_fu_3191_p2;
assign mul_ln334_3_fu_3200_p1 = 17'd342;
assign mul_ln334_4_fu_3322_p0 = mul_ln334_4_fu_3322_p00;
assign mul_ln334_4_fu_3322_p00 = add_ln334_5_fu_3313_p2;
assign mul_ln334_4_fu_3322_p1 = 17'd342;
assign mul_ln334_5_fu_4116_p0 = mul_ln334_5_fu_4116_p00;
assign mul_ln334_5_fu_4116_p00 = add_ln334_7_fu_4107_p2;
assign mul_ln334_5_fu_4116_p1 = 17'd342;
assign mul_ln334_fu_3645_p0 = mul_ln334_fu_3645_p00;
assign mul_ln334_fu_3645_p00 = add_ln334_1_fu_3636_p2;
assign mul_ln334_fu_3645_p1 = 17'd342;
assign mul_ln335_1_fu_3251_p0 = mul_ln335_1_fu_3251_p00;
assign mul_ln335_1_fu_3251_p00 = $unsigned(sext_ln335_1_fu_3244_p1);
assign mul_ln335_1_fu_3251_p1 = 19'd683;
assign mul_ln335_2_fu_3274_p0 = mul_ln335_2_fu_3274_p00;
assign mul_ln335_2_fu_3274_p00 = $unsigned(sext_ln335_2_fu_3267_p1);
assign mul_ln335_2_fu_3274_p1 = 19'd683;
assign mul_ln335_3_fu_3441_p0 = mul_ln335_3_fu_3441_p00;
assign mul_ln335_3_fu_3441_p00 = $unsigned(sext_ln335_3_fu_3434_p1);
assign mul_ln335_3_fu_3441_p1 = 19'd683;
assign mul_ln335_4_fu_3470_p0 = mul_ln335_4_fu_3470_p00;
assign mul_ln335_4_fu_3470_p00 = $unsigned(sext_ln335_4_fu_3463_p1);
assign mul_ln335_4_fu_3470_p1 = 19'd683;
assign mul_ln335_5_fu_4162_p0 = mul_ln335_5_fu_4162_p00;
assign mul_ln335_5_fu_4162_p00 = $unsigned(sext_ln335_5_fu_4155_p1);
assign mul_ln335_5_fu_4162_p1 = 19'd683;
assign mul_ln335_fu_3668_p0 = mul_ln335_fu_3668_p00;
assign mul_ln335_fu_3668_p00 = $unsigned(sext_ln335_fu_3661_p1);
assign mul_ln335_fu_3668_p1 = 19'd683;
assign or_ln1_fu_2708_p3 = {{trunc_ln330_2_fu_2705_p1}, {1'd1}};
assign or_ln2_fu_2591_p3 = {{trunc_ln330_1_fu_2555_p4}, {1'd1}};
assign or_ln328_1_fu_2649_p3 = {{tmp_s_fu_2639_p4}, {2'd2}};
assign or_ln328_2_fu_2677_p3 = {{tmp_s_fu_2639_p4}, {2'd3}};
assign or_ln328_3_fu_2796_p3 = {{trunc_ln4_reg_4481}, {3'd4}};
assign or_ln328_4_fu_2848_p5 = {{{{trunc_ln4_reg_4481}, {1'd1}}, {tmp_61_fu_2841_p3}}, {1'd1}};
assign or_ln328_5_fu_3756_p3 = {{trunc_ln4_reg_4481_pp0_iter1_reg}, {3'd7}};
assign or_ln330_1_fu_2741_p3 = {{tmp_s_reg_4538}, {3'd4}};
assign or_ln330_2_fu_2778_p3 = {{tmp_s_reg_4538}, {3'd6}};
assign or_ln330_3_fu_2823_p3 = {{trunc_ln4_reg_4481}, {4'd8}};
assign or_ln330_4_fu_2946_p5 = {{{{trunc_ln4_reg_4481}, {1'd1}}, {tmp_61_reg_4657}}, {2'd2}};
assign or_ln330_5_fu_3486_p3 = {{trunc_ln4_reg_4481}, {4'd12}};
assign or_ln330_6_fu_3866_p3 = {{trunc_ln4_reg_4481_pp0_iter1_reg}, {4'd14}};
assign or_ln332_1_fu_3530_p3 = {{trunc_ln330_1_reg_4497}, {2'd3}};
assign or_ln332_2_fu_2990_p3 = {{tmp_s_reg_4538}, {3'd5}};
assign or_ln332_3_fu_3031_p3 = {{tmp_s_reg_4538}, {3'd7}};
assign or_ln332_4_fu_3178_p3 = {{trunc_ln4_reg_4481}, {4'd9}};
assign or_ln332_5_fu_3216_p5 = {{{{trunc_ln4_reg_4481}, {1'd1}}, {tmp_61_reg_4657}}, {2'd3}};
assign or_ln332_6_fu_3352_p3 = {{trunc_ln4_reg_4481}, {4'd13}};
assign or_ln332_7_fu_4095_p3 = {{trunc_ln4_reg_4481_pp0_iter1_reg}, {4'd15}};
assign or_ln3_fu_2619_p3 = {{trunc_ln330_1_fu_2555_p4}, {2'd2}};
assign or_ln_fu_3788_p3 = {{1'd1}, {tmp_28_reg_4502_pp0_iter1_reg}};
assign sext_ln331_1_fu_4002_p1 = $signed(add_ln331_5_fu_3997_p2);
assign sext_ln331_fu_3795_p1 = $signed(or_ln_fu_3788_p3);
assign sext_ln335_1_fu_3244_p1 = $signed(add_ln335_2_reg_4863);
assign sext_ln335_2_fu_3267_p1 = $signed(add_ln335_3_reg_4883);
assign sext_ln335_3_fu_3434_p1 = $signed(add_ln335_4_reg_4971);
assign sext_ln335_4_fu_3463_p1 = $signed(add_ln335_5_reg_5001);
assign sext_ln335_5_fu_4155_p1 = $signed(add_ln335_7_reg_5490);
assign sext_ln335_fu_3661_p1 = $signed(add_ln335_1_reg_5225);
assign shl_ln330_fu_3368_p2 = tid_1_reg_4426 << 7'd1;
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
assign tmp_31_fu_2884_p1 = grp_fu_4272_p3;
assign tmp_35_fu_3824_p1 = grp_fu_4371_p3;
assign tmp_36_fu_3833_p1 = grp_fu_4379_p3;
assign tmp_39_fu_3003_p1 = grp_fu_4281_p3;
assign tmp_43_fu_3963_p1 = grp_fu_4387_p3;
assign tmp_43_fu_3963_p4 = {{tmp_43_fu_3963_p1[18:12]}};
assign tmp_44_fu_3404_p1 = grp_fu_4337_p3;
assign tmp_47_fu_3043_p1 = grp_fu_4289_p3;
assign tmp_51_fu_3290_p1 = grp_fu_4313_p3;
assign tmp_52_fu_3419_p1 = grp_fu_4346_p3;
assign tmp_55_fu_3071_p1 = grp_fu_4297_p3;
assign tmp_59_fu_3304_p1 = grp_fu_4321_p3;
assign tmp_60_fu_3571_p1 = grp_fu_4355_p3;
assign tmp_61_fu_2841_p3 = tid_1_reg_4426[32'd1];
assign tmp_64_fu_3231_p1 = grp_fu_4305_p3;
assign tmp_68_fu_3343_p1 = grp_fu_4329_p3;
assign tmp_69_fu_3586_p1 = grp_fu_4363_p3;
assign tmp_72_fu_4025_p1 = grp_fu_4395_p3;
assign tmp_76_fu_4178_p1 = grp_fu_4403_p3;
assign tmp_77_fu_4215_p1 = grp_fu_4411_p3;
assign tmp_fu_2529_p3 = ap_sig_allocacmp_tid_1[32'd6];
assign tmp_s_fu_2639_p4 = {{ap_sig_allocacmp_tid_1[5:2]}};
assign trunc_ln330_1_fu_2555_p4 = {{ap_sig_allocacmp_tid_1[5:1]}};
assign trunc_ln330_2_fu_2705_p1 = tid_1_reg_4426[5:0];
assign trunc_ln330_fu_3240_p1 = grp_fu_2585_p2[1:0];
assign zext_ln325_1_fu_2537_p1 = ap_sig_allocacmp_tid_1;
assign zext_ln325_2_fu_2541_p1 = ap_sig_allocacmp_tid_1;
assign zext_ln325_fu_2987_p1 = tid_1_reg_4426;
assign zext_ln330_10_fu_3428_p1 = tmp_53_reg_4631;
assign zext_ln330_11_fu_2830_p1 = or_ln330_3_fu_2823_p3;
assign zext_ln330_12_fu_3457_p1 = tmp_62_reg_4663;
assign zext_ln330_13_fu_2956_p1 = or_ln330_4_fu_2946_p5;
assign zext_ln330_14_fu_3945_p1 = add_ln330_fu_3940_p2;
assign zext_ln330_15_fu_3493_p1 = or_ln330_5_fu_3486_p3;
assign zext_ln330_16_fu_4149_p1 = tmp_70_reg_5309;
assign zext_ln330_17_fu_3873_p1 = or_ln330_6_fu_3866_p3;
assign zext_ln330_19_fu_3365_p1 = tmp_28_reg_4502;
assign zext_ln330_1_fu_3508_p1 = tmp_28_reg_4502;
assign zext_ln330_2_fu_3595_p1 = tmp_28_reg_4502_pp0_iter1_reg;
assign zext_ln330_3_fu_3373_p1 = shl_ln330_fu_3368_p2;
assign zext_ln330_4_fu_3392_p1 = tmp_29_reg_4512;
assign zext_ln330_5_fu_2627_p1 = or_ln3_fu_2619_p3;
assign zext_ln330_6_fu_3398_p1 = tmp_37_reg_4546;
assign zext_ln330_7_fu_2748_p1 = or_ln330_1_fu_2741_p3;
assign zext_ln330_8_fu_3413_p1 = tmp_45_reg_4551;
assign zext_ln330_9_fu_2785_p1 = or_ln330_2_fu_2778_p3;
assign zext_ln330_fu_3708_p1 = tmp_28_reg_4502_pp0_iter1_reg;
assign zext_ln331_12_fu_4006_p1 = $unsigned(sext_ln331_1_fu_4002_p1);
assign zext_ln331_1_fu_3524_p1 = tmp_30_reg_4572;
assign zext_ln331_2_fu_3553_p1 = tmp_38_reg_4605;
assign zext_ln331_3_fu_3559_p1 = tmp_46_reg_4690;
assign zext_ln331_4_fu_3565_p1 = tmp_54_reg_4700;
assign zext_ln331_5_fu_3580_p1 = tmp_63_reg_4730;
assign zext_ln331_7_fu_4209_p1 = tmp_71_reg_5376;
assign zext_ln331_fu_3799_p1 = $unsigned(sext_ln331_fu_3795_p1);
assign zext_ln332_10_fu_3226_p1 = or_ln332_5_fu_3216_p5;
assign zext_ln332_11_fu_3702_p1 = tmp_64_reg_4926;
assign zext_ln332_12_fu_3359_p1 = or_ln332_6_fu_3352_p3;
assign zext_ln332_13_fu_4018_p1 = add_ln332_6_fu_4013_p2;
assign zext_ln332_14_fu_4102_p1 = or_ln332_7_fu_4095_p3;
assign zext_ln332_15_fu_4230_p1 = tmp_72_reg_5449;
assign zext_ln332_1_fu_3385_p1 = add_ln332_fu_3379_p2;
assign zext_ln332_2_fu_3537_p1 = or_ln332_1_fu_3530_p3;
assign zext_ln332_3_fu_3611_p1 = tmp_31_reg_4680;
assign zext_ln332_4_fu_2997_p1 = or_ln332_2_fu_2990_p3;
assign zext_ln332_5_fu_3684_p1 = tmp_39_reg_4785;
assign zext_ln332_6_fu_3038_p1 = or_ln332_3_fu_3031_p3;
assign zext_ln332_7_fu_3690_p1 = tmp_47_reg_4812;
assign zext_ln332_8_fu_3185_p1 = or_ln332_4_fu_3178_p3;
assign zext_ln332_9_fu_3696_p1 = tmp_55_reg_4822;
assign zext_ln332_fu_2716_p1 = or_ln1_fu_2708_p3;
assign zext_ln333_1_fu_3726_p1 = tmp_32_reg_5257;
assign zext_ln333_2_fu_3732_p1 = tmp_40_reg_4795;
assign zext_ln333_3_fu_3738_p1 = tmp_48_reg_4817;
assign zext_ln333_4_fu_3744_p1 = tmp_56_reg_4827;
assign zext_ln333_5_fu_3750_p1 = tmp_65_reg_4832;
assign zext_ln333_6_fu_4088_p1 = add_ln333_6_fu_4083_p2;
assign zext_ln333_7_fu_4236_p1 = tmp_73_reg_5454;
assign zext_ln333_fu_3517_p1 = add_ln333_fu_3511_p2;
assign zext_ln334_1_fu_3818_p1 = tmp_33_reg_5262;
assign zext_ln334_2_fu_3842_p1 = tmp_41_reg_4858;
assign zext_ln334_3_fu_3848_p1 = tmp_49_reg_4878;
assign zext_ln334_4_fu_3854_p1 = tmp_57_reg_4909;
assign zext_ln334_5_fu_3860_p1 = tmp_66_reg_4996;
assign zext_ln334_6_fu_4142_p1 = add_ln334_6_fu_4137_p2;
assign zext_ln334_7_fu_4242_p1 = tmp_74_reg_5485;
assign zext_ln334_fu_3604_p1 = add_ln334_fu_3598_p2;
assign zext_ln335_1_fu_3910_p1 = tmp_34_reg_5267;
assign zext_ln335_2_fu_3916_p1 = tmp_42_reg_4956;
assign zext_ln335_3_fu_3922_p1 = tmp_50_reg_4961;
assign zext_ln335_4_fu_3928_p1 = tmp_58_reg_5111;
assign zext_ln335_5_fu_3934_p1 = tmp_67_reg_5116;
assign zext_ln335_6_fu_4192_p1 = add_ln335_6_fu_4187_p2;
assign zext_ln335_7_fu_4248_p1 = tmp_75_reg_5510;
assign zext_ln335_fu_3719_p1 = add_ln335_fu_3714_p2;
assign zext_ln336_1_fu_3957_p1 = tmp_35_reg_5340;
assign zext_ln336_2_fu_3972_p1 = tmp_43_fu_3963_p4;
assign zext_ln336_3_fu_3979_p1 = tmp_51_reg_4966;
assign zext_ln336_4_fu_3985_p1 = tmp_59_reg_4981;
assign zext_ln336_5_fu_3991_p1 = tmp_68_reg_5011;
assign zext_ln336_6_fu_4224_p1 = add_ln336_6_reg_5530;
assign zext_ln336_7_fu_4254_p1 = tmp_76_reg_5520;
assign zext_ln336_fu_3811_p1 = add_ln336_fu_3806_p2;
assign zext_ln337_1_fu_4053_p1 = tmp_36_reg_5345;
assign zext_ln337_2_fu_4059_p1 = tmp_44_reg_5101;
assign zext_ln337_3_fu_4065_p1 = tmp_52_reg_5106;
assign zext_ln337_4_fu_4071_p1 = tmp_60_reg_5230;
assign zext_ln337_5_fu_4077_p1 = tmp_69_reg_5235;
assign zext_ln337_6_fu_4260_p1 = add_ln337_6_reg_5535;
assign zext_ln337_7_fu_4266_p1 = tmp_77_reg_5561;
assign zext_ln337_fu_3903_p1 = add_ln337_fu_3898_p2;
always @ (posedge ap_clk) begin
    zext_ln325_1_reg_4439[8:7] <= 2'b00;
    zext_ln325_1_reg_4439_pp0_iter1_reg[8:7] <= 2'b00;
    zext_ln325_2_reg_4460[7] <= 1'b0;
    zext_ln325_2_reg_4460_pp0_iter1_reg[7] <= 1'b0;
    zext_ln330_5_reg_4517[1:0] <= 2'b10;
    zext_ln330_5_reg_4517[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_reg_4556[0] <= 1'b1;
    zext_ln332_reg_4556[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_7_reg_4577[2:0] <= 3'b100;
    zext_ln330_7_reg_4577[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_7_reg_4577_pp0_iter1_reg[2:0] <= 3'b100;
    zext_ln330_7_reg_4577_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_9_reg_4610[2:0] <= 3'b110;
    zext_ln330_9_reg_4610[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_11_reg_4636[3:0] <= 4'b1000;
    zext_ln330_11_reg_4636[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_11_reg_4636_pp0_iter1_reg[3:0] <= 4'b1000;
    zext_ln330_11_reg_4636_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_13_reg_4715[1:0] <= 2'b10;
    zext_ln330_13_reg_4715[3:3] <= 1'b1;
    zext_ln330_13_reg_4715[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln325_reg_4766[9:7] <= 3'b000;
    zext_ln325_reg_4766_pp0_iter1_reg[9:7] <= 3'b000;
    zext_ln332_4_reg_4774[2:0] <= 3'b101;
    zext_ln332_4_reg_4774[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_4_reg_4774_pp0_iter1_reg[2:0] <= 3'b101;
    zext_ln332_4_reg_4774_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_6_reg_4800[2:0] <= 3'b111;
    zext_ln332_6_reg_4800[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_6_reg_4800_pp0_iter1_reg[2:0] <= 3'b111;
    zext_ln332_6_reg_4800_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_8_reg_4893[3:0] <= 4'b1001;
    zext_ln332_8_reg_4893[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_10_reg_4914[1:0] <= 2'b11;
    zext_ln332_10_reg_4914[3:3] <= 1'b1;
    zext_ln332_10_reg_4914[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_12_reg_5021[3:0] <= 4'b1101;
    zext_ln332_12_reg_5021[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_12_reg_5021_pp0_iter1_reg[3:0] <= 4'b1101;
    zext_ln332_12_reg_5021_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_19_reg_5079[4] <= 1'b0;
    zext_ln330_3_reg_5085[0] <= 1'b0;
    zext_ln330_3_reg_5085[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_15_reg_5121[3:0] <= 4'b1100;
    zext_ln330_15_reg_5121[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_1_reg_5175[6:4] <= 3'b000;
    zext_ln332_2_reg_5194[1:0] <= 2'b11;
    zext_ln332_2_reg_5194[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_2_reg_5240[5:4] <= 2'b00;
    zext_ln330_17_reg_5360[3:0] <= 4'b1110;
    zext_ln330_17_reg_5360[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_14_reg_5473[3:0] <= 4'b1111;
    zext_ln332_14_reg_5473[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 