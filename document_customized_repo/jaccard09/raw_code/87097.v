module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1); 
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
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_4020;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_2031_p15;
reg   [63:0] reg_2217;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_2062_p15;
reg   [63:0] reg_2223;
wire   [63:0] grp_fu_2093_p15;
reg   [63:0] reg_2229;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_2124_p15;
reg   [63:0] reg_2235;
wire   [63:0] grp_fu_2155_p15;
reg   [63:0] reg_2241;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_2186_p15;
reg   [63:0] reg_2247;
reg   [6:0] tid_2_reg_4009;
reg   [6:0] tid_2_reg_4009_pp0_iter1_reg;
reg   [6:0] tid_2_reg_4009_pp0_iter2_reg;
reg   [0:0] tmp_reg_4020_pp0_iter1_reg;
reg   [0:0] tmp_reg_4020_pp0_iter2_reg;
wire   [2:0] tmp_44_fu_2269_p4;
reg   [2:0] tmp_44_reg_4024;
wire   [8:0] offset_fu_2283_p3;
reg   [8:0] offset_reg_4031;
reg   [8:0] offset_reg_4031_pp0_iter1_reg;
wire   [8:0] offset_2_fu_2306_p4;
reg   [8:0] offset_2_reg_4038;
reg   [8:0] offset_2_reg_4038_pp0_iter1_reg;
wire   [8:0] offset_3_fu_2321_p4;
reg   [8:0] offset_3_reg_4045;
reg   [8:0] offset_3_reg_4045_pp0_iter1_reg;
wire   [8:0] offset_4_fu_2336_p4;
reg   [8:0] offset_4_reg_4052;
reg   [8:0] offset_4_reg_4052_pp0_iter1_reg;
wire   [9:0] zext_ln172_12_fu_2364_p1;
reg   [9:0] zext_ln172_12_reg_4059;
reg   [7:0] tmp_46_reg_4068;
reg   [7:0] tmp_47_reg_4073;
reg   [7:0] tmp_48_reg_4078;
reg   [7:0] tmp_49_reg_4083;
reg   [7:0] tmp_50_reg_4088;
reg   [7:0] tmp_51_reg_4093;
reg   [7:0] tmp_52_reg_4098;
reg   [7:0] tmp_55_reg_4103;
reg   [7:0] tmp_57_reg_4108;
reg   [7:0] tmp_58_reg_4113;
reg   [7:0] tmp_59_reg_4118;
reg   [7:0] tmp_60_reg_4123;
reg   [7:0] tmp_61_reg_4128;
reg   [6:0] tmp_45_reg_4133;
wire   [2:0] trunc_ln172_fu_2503_p1;
reg   [2:0] trunc_ln172_reg_4138;
reg   [6:0] tmp_54_reg_4328;
wire   [2:0] trunc_ln172_2_fu_2580_p1;
reg   [2:0] trunc_ln172_2_reg_4333;
wire   [9:0] zext_ln172_15_fu_2584_p1;
reg   [9:0] zext_ln172_15_reg_4343;
wire   [63:0] tmp_21_fu_2587_p15;
reg   [63:0] tmp_21_reg_4348;
wire   [63:0] tmp_22_fu_2618_p15;
reg   [63:0] tmp_22_reg_4353;
wire   [63:0] tmp_23_fu_2649_p15;
reg   [63:0] tmp_23_reg_4358;
wire   [63:0] tmp_24_fu_2680_p15;
reg   [63:0] tmp_24_reg_4363;
reg   [6:0] tmp_63_reg_4518;
wire   [2:0] grp_fu_2330_p2;
reg   [2:0] urem_ln172_3_reg_4523;
wire   [63:0] zext_ln314_fu_2786_p1;
reg   [63:0] zext_ln314_reg_4528;
wire   [63:0] zext_ln315_4_fu_2801_p1;
reg   [63:0] zext_ln315_4_reg_4533;
wire   [63:0] tmp_31_fu_2827_p15;
reg   [63:0] tmp_31_reg_4568;
wire   [2:0] trunc_ln172_3_fu_2894_p1;
reg   [2:0] trunc_ln172_3_reg_4693;
reg   [6:0] tmp_72_reg_4705;
wire   [2:0] grp_fu_2345_p2;
reg   [2:0] urem_ln172_4_reg_4710;
wire   [6:0] shl_ln314_1_fu_2925_p3;
reg   [6:0] shl_ln314_1_reg_4715;
wire   [63:0] zext_ln314_1_fu_2933_p1;
reg   [63:0] zext_ln314_1_reg_4721;
wire   [63:0] zext_ln315_5_fu_2946_p1;
reg   [63:0] zext_ln315_5_reg_4728;
wire   [63:0] tmp_32_fu_2952_p15;
reg   [63:0] tmp_32_reg_4734;
wire   [63:0] tmp_34_fu_2983_p15;
reg   [63:0] tmp_34_reg_4739;
wire   [63:0] tmp_35_fu_3014_p15;
reg   [63:0] tmp_35_reg_4744;
reg   [7:0] tmp_69_reg_4929;
wire   [2:0] trunc_ln172_4_fu_3158_p1;
reg   [2:0] trunc_ln172_4_reg_4934;
reg   [3:0] tmp_74_reg_4944;
wire   [63:0] tmp_36_fu_3170_p15;
reg   [63:0] tmp_36_reg_4950;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] tmp_37_fu_3201_p15;
reg   [63:0] tmp_37_reg_4955;
wire   [63:0] tmp_38_fu_3232_p15;
reg   [63:0] tmp_38_reg_4960;
wire   [63:0] tmp_39_fu_3263_p15;
reg   [63:0] tmp_39_reg_4965;
wire   [63:0] tmp_40_fu_3294_p15;
reg   [63:0] tmp_40_reg_4970;
wire   [63:0] tmp_41_fu_3325_p15;
reg   [63:0] tmp_41_reg_4975;
reg   [7:0] tmp_83_reg_5100;
reg   [7:0] tmp_85_reg_5135;
reg   [7:0] tmp_86_reg_5140;
reg   [7:0] tmp_87_reg_5145;
reg   [7:0] tmp_88_reg_5150;
wire   [63:0] zext_ln314_2_fu_3481_p1;
reg   [63:0] zext_ln314_2_reg_5155;
wire   [63:0] zext_ln315_6_fu_3493_p1;
reg   [63:0] zext_ln315_6_reg_5160;
wire   [63:0] tmp_42_fu_3500_p15;
reg   [63:0] tmp_42_reg_5165;
wire   [63:0] tmp_43_fu_3531_p15;
reg   [63:0] tmp_43_reg_5170;
wire   [63:0] tmp_78_fu_3571_p15;
reg   [63:0] tmp_78_reg_5205;
wire   [63:0] zext_ln314_3_fu_3645_p1;
reg   [63:0] zext_ln314_3_reg_5330;
wire   [63:0] zext_ln315_7_fu_3657_p1;
reg   [63:0] zext_ln315_7_reg_5337;
wire   [63:0] tmp_79_fu_3663_p15;
reg   [63:0] tmp_79_reg_5343;
wire   [63:0] tmp_81_fu_3694_p15;
reg   [63:0] tmp_81_reg_5348;
wire   [63:0] tmp_82_fu_3725_p15;
reg   [63:0] tmp_82_reg_5353;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_11_fu_2507_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_2516_p1;
wire   [63:0] zext_ln316_fu_2525_p1;
wire   [63:0] zext_ln317_fu_2534_p1;
wire   [63:0] zext_ln318_fu_2543_p1;
wire   [63:0] zext_ln319_fu_2552_p1;
wire   [63:0] zext_ln320_fu_2711_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln321_fu_2720_p1;
wire   [63:0] zext_ln172_14_fu_2729_p1;
wire   [63:0] zext_ln315_1_fu_2738_p1;
wire   [63:0] zext_ln317_1_fu_2747_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln316_1_fu_2817_p1;
wire   [63:0] zext_ln318_1_fu_2858_p1;
wire   [63:0] zext_ln319_1_fu_2867_p1;
wire   [63:0] zext_ln320_1_fu_2876_p1;
wire   [63:0] zext_ln321_1_fu_2885_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln172_17_fu_3045_p1;
wire   [63:0] zext_ln315_2_fu_3063_p1;
wire   [63:0] zext_ln316_2_fu_3082_p1;
wire   [63:0] zext_ln317_2_fu_3101_p1;
wire   [63:0] zext_ln318_2_fu_3120_p1;
wire   [63:0] zext_ln319_2_fu_3139_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln320_2_fu_3356_p1;
wire   [63:0] zext_ln321_2_fu_3374_p1;
wire   [63:0] zext_ln172_19_fu_3384_p1;
wire   [63:0] zext_ln315_3_fu_3402_p1;
wire   [63:0] zext_ln317_3_fu_3430_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln316_3_fu_3562_p1;
wire   [63:0] zext_ln318_3_fu_3602_p1;
wire   [63:0] zext_ln319_3_fu_3611_p1;
wire   [63:0] zext_ln320_3_fu_3620_p1;
wire   [63:0] zext_ln321_3_fu_3629_p1;
reg   [6:0] tid_fu_136;
wire   [6:0] add_ln309_fu_2351_p2;
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
wire   [63:0] grp_fu_2031_p13;
wire   [63:0] grp_fu_2062_p13;
wire   [63:0] grp_fu_2093_p13;
wire   [63:0] grp_fu_2124_p13;
wire   [63:0] grp_fu_2155_p13;
wire   [63:0] grp_fu_2186_p13;
wire   [5:0] trunc_ln312_fu_2279_p1;
wire   [8:0] grp_fu_2291_p0;
wire   [3:0] grp_fu_2291_p1;
wire   [4:0] tmp_53_fu_2297_p4;
wire   [8:0] grp_fu_2315_p0;
wire   [3:0] grp_fu_2315_p1;
wire   [3:0] grp_fu_2022_p4;
wire   [8:0] grp_fu_2330_p0;
wire   [3:0] grp_fu_2330_p1;
wire   [8:0] grp_fu_2345_p0;
wire   [3:0] grp_fu_2345_p1;
wire   [20:0] tmp_46_fu_2367_p1;
wire  signed [20:0] grp_fu_3756_p3;
wire   [20:0] tmp_47_fu_2376_p1;
wire  signed [20:0] grp_fu_3765_p3;
wire   [20:0] tmp_48_fu_2385_p1;
wire  signed [20:0] grp_fu_3774_p3;
wire   [20:0] tmp_49_fu_2394_p1;
wire  signed [20:0] grp_fu_3783_p3;
wire   [20:0] tmp_50_fu_2403_p1;
wire  signed [20:0] grp_fu_3792_p3;
wire   [20:0] tmp_51_fu_2412_p1;
wire  signed [20:0] grp_fu_3801_p3;
wire   [20:0] tmp_52_fu_2421_p1;
wire  signed [20:0] grp_fu_3810_p3;
wire   [20:0] tmp_55_fu_2430_p1;
wire  signed [20:0] grp_fu_3819_p3;
wire   [20:0] tmp_57_fu_2439_p1;
wire  signed [20:0] grp_fu_3828_p3;
wire   [20:0] tmp_58_fu_2448_p1;
wire  signed [20:0] grp_fu_3837_p3;
wire   [20:0] tmp_59_fu_2457_p1;
wire  signed [20:0] grp_fu_3845_p3;
wire   [20:0] tmp_60_fu_2466_p1;
wire  signed [20:0] grp_fu_3853_p3;
wire   [20:0] tmp_61_fu_2475_p1;
wire  signed [20:0] grp_fu_3861_p3;
wire   [8:0] mul_ln172_fu_2487_p0;
wire   [10:0] mul_ln172_fu_2487_p1;
wire   [18:0] mul_ln172_fu_2487_p2;
wire   [2:0] grp_fu_2291_p2;
wire   [8:0] mul_ln172_2_fu_2564_p0;
wire   [10:0] mul_ln172_2_fu_2564_p1;
wire   [18:0] mul_ln172_2_fu_2564_p2;
wire   [2:0] grp_fu_2315_p2;
wire   [63:0] tmp_21_fu_2587_p13;
wire   [63:0] tmp_22_fu_2618_p13;
wire   [63:0] tmp_23_fu_2649_p13;
wire   [63:0] tmp_24_fu_2680_p13;
wire   [8:0] mul_ln172_3_fu_2759_p0;
wire   [10:0] mul_ln172_3_fu_2759_p1;
wire   [18:0] mul_ln172_3_fu_2759_p2;
wire   [6:0] shl_ln314_fu_2781_p2;
wire   [5:0] trunc_ln314_fu_2778_p1;
wire   [6:0] or_ln_fu_2793_p3;
wire   [20:0] tmp_56_fu_2808_p1;
wire  signed [20:0] grp_fu_3869_p3;
wire   [7:0] tmp_56_fu_2808_p4;
wire   [63:0] tmp_31_fu_2827_p13;
wire   [8:0] mul_ln172_4_fu_2900_p0;
wire   [10:0] mul_ln172_4_fu_2900_p1;
wire   [18:0] mul_ln172_4_fu_2900_p2;
wire   [4:0] tmp_28_fu_2916_p4;
wire   [6:0] or_ln315_1_fu_2938_p3;
wire   [63:0] tmp_32_fu_2952_p13;
wire   [63:0] tmp_34_fu_2983_p13;
wire   [63:0] tmp_35_fu_3014_p13;
wire   [20:0] tmp_64_fu_3054_p1;
wire  signed [20:0] grp_fu_3877_p3;
wire   [7:0] tmp_64_fu_3054_p4;
wire   [20:0] tmp_65_fu_3073_p1;
wire  signed [20:0] grp_fu_3886_p3;
wire   [7:0] tmp_65_fu_3073_p4;
wire   [20:0] tmp_66_fu_3092_p1;
wire  signed [20:0] grp_fu_3895_p3;
wire   [7:0] tmp_66_fu_3092_p4;
wire   [20:0] tmp_67_fu_3111_p1;
wire  signed [20:0] grp_fu_3904_p3;
wire   [7:0] tmp_67_fu_3111_p4;
wire   [20:0] tmp_68_fu_3130_p1;
wire  signed [20:0] grp_fu_3913_p3;
wire   [7:0] tmp_68_fu_3130_p4;
wire   [20:0] tmp_69_fu_3149_p1;
wire  signed [20:0] grp_fu_3922_p3;
wire   [63:0] tmp_36_fu_3170_p13;
wire   [63:0] tmp_37_fu_3201_p13;
wire   [63:0] tmp_38_fu_3232_p13;
wire   [63:0] tmp_39_fu_3263_p13;
wire   [63:0] tmp_40_fu_3294_p13;
wire   [63:0] tmp_41_fu_3325_p13;
wire   [20:0] tmp_70_fu_3365_p1;
wire  signed [20:0] grp_fu_3931_p3;
wire   [7:0] tmp_70_fu_3365_p4;
wire   [20:0] tmp_75_fu_3393_p1;
wire  signed [20:0] grp_fu_3939_p3;
wire   [7:0] tmp_75_fu_3393_p4;
wire   [20:0] tmp_83_fu_3412_p1;
wire  signed [20:0] grp_fu_3948_p3;
wire   [20:0] tmp_84_fu_3421_p1;
wire  signed [20:0] grp_fu_3957_p3;
wire   [7:0] tmp_84_fu_3421_p4;
wire   [20:0] tmp_85_fu_3440_p1;
wire  signed [20:0] grp_fu_3966_p3;
wire   [20:0] tmp_86_fu_3449_p1;
wire  signed [20:0] grp_fu_3975_p3;
wire   [20:0] tmp_87_fu_3458_p1;
wire  signed [20:0] grp_fu_3984_p3;
wire   [20:0] tmp_88_fu_3467_p1;
wire  signed [20:0] grp_fu_3993_p3;
wire   [6:0] add_ln314_fu_3476_p2;
wire   [6:0] add_ln315_3_fu_3488_p2;
wire   [63:0] tmp_42_fu_3500_p13;
wire   [63:0] tmp_43_fu_3531_p13;
wire   [63:0] tmp_78_fu_3571_p13;
wire   [6:0] or_ln2_fu_3638_p3;
wire   [6:0] or_ln315_2_fu_3650_p3;
wire   [63:0] tmp_79_fu_3663_p13;
wire   [63:0] tmp_81_fu_3694_p13;
wire   [63:0] tmp_82_fu_3725_p13;
wire   [8:0] grp_fu_3756_p0;
wire   [9:0] zext_ln172_fu_2361_p1;
wire   [5:0] grp_fu_3756_p1;
wire   [10:0] grp_fu_3756_p2;
wire   [8:0] grp_fu_3765_p0;
wire   [3:0] grp_fu_3765_p1;
wire   [10:0] grp_fu_3765_p2;
wire   [8:0] grp_fu_3774_p0;
wire   [5:0] grp_fu_3774_p1;
wire   [10:0] grp_fu_3774_p2;
wire   [8:0] grp_fu_3783_p0;
wire   [4:0] grp_fu_3783_p1;
wire   [10:0] grp_fu_3783_p2;
wire   [8:0] grp_fu_3792_p0;
wire   [5:0] grp_fu_3792_p1;
wire   [10:0] grp_fu_3792_p2;
wire   [8:0] grp_fu_3801_p0;
wire   [4:0] grp_fu_3801_p1;
wire   [10:0] grp_fu_3801_p2;
wire   [8:0] grp_fu_3810_p0;
wire   [5:0] grp_fu_3810_p1;
wire   [10:0] grp_fu_3810_p2;
wire   [8:0] grp_fu_3819_p0;
wire   [5:0] grp_fu_3819_p1;
wire   [10:0] grp_fu_3819_p2;
wire   [8:0] grp_fu_3828_p0;
wire   [5:0] grp_fu_3828_p1;
wire   [10:0] grp_fu_3828_p2;
wire   [8:0] grp_fu_3837_p0;
wire   [4:0] grp_fu_3837_p1;
wire   [10:0] grp_fu_3837_p2;
wire   [8:0] grp_fu_3845_p0;
wire   [5:0] grp_fu_3845_p1;
wire   [10:0] grp_fu_3845_p2;
wire   [8:0] grp_fu_3853_p0;
wire   [4:0] grp_fu_3853_p1;
wire   [10:0] grp_fu_3853_p2;
wire   [8:0] grp_fu_3861_p0;
wire   [5:0] grp_fu_3861_p1;
wire   [10:0] grp_fu_3861_p2;
wire   [8:0] grp_fu_3869_p0;
wire   [3:0] grp_fu_3869_p1;
wire   [10:0] grp_fu_3869_p2;
wire   [8:0] grp_fu_3877_p0;
wire   [5:0] grp_fu_3877_p1;
wire   [10:0] grp_fu_3877_p2;
wire   [8:0] grp_fu_3886_p0;
wire   [3:0] grp_fu_3886_p1;
wire   [10:0] grp_fu_3886_p2;
wire   [8:0] grp_fu_3895_p0;
wire   [5:0] grp_fu_3895_p1;
wire   [10:0] grp_fu_3895_p2;
wire   [8:0] grp_fu_3904_p0;
wire   [4:0] grp_fu_3904_p1;
wire   [10:0] grp_fu_3904_p2;
wire   [8:0] grp_fu_3913_p0;
wire   [5:0] grp_fu_3913_p1;
wire   [10:0] grp_fu_3913_p2;
wire   [8:0] grp_fu_3922_p0;
wire   [4:0] grp_fu_3922_p1;
wire   [10:0] grp_fu_3922_p2;
wire   [8:0] grp_fu_3931_p0;
wire   [5:0] grp_fu_3931_p1;
wire   [10:0] grp_fu_3931_p2;
wire   [8:0] grp_fu_3939_p0;
wire   [9:0] zext_ln172_18_fu_2775_p1;
wire   [5:0] grp_fu_3939_p1;
wire   [10:0] grp_fu_3939_p2;
wire   [8:0] grp_fu_3948_p0;
wire   [3:0] grp_fu_3948_p1;
wire   [10:0] grp_fu_3948_p2;
wire   [8:0] grp_fu_3957_p0;
wire   [5:0] grp_fu_3957_p1;
wire   [10:0] grp_fu_3957_p2;
wire   [8:0] grp_fu_3966_p0;
wire   [4:0] grp_fu_3966_p1;
wire   [10:0] grp_fu_3966_p2;
wire   [8:0] grp_fu_3975_p0;
wire   [5:0] grp_fu_3975_p1;
wire   [10:0] grp_fu_3975_p2;
wire   [8:0] grp_fu_3984_p0;
wire   [4:0] grp_fu_3984_p1;
wire   [10:0] grp_fu_3984_p2;
wire   [8:0] grp_fu_3993_p0;
wire   [5:0] grp_fu_3993_p1;
wire   [10:0] grp_fu_3993_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_2_fu_2564_p00;
wire   [18:0] mul_ln172_3_fu_2759_p00;
wire   [18:0] mul_ln172_4_fu_2900_p00;
wire   [18:0] mul_ln172_fu_2487_p00;
wire   [2:0] grp_fu_2031_p1;
wire   [2:0] grp_fu_2031_p3;
wire   [2:0] grp_fu_2031_p5;
wire   [2:0] grp_fu_2031_p7;
wire  signed [2:0] grp_fu_2031_p9;
wire  signed [2:0] grp_fu_2031_p11;
wire  signed [2:0] grp_fu_2062_p1;
wire  signed [2:0] grp_fu_2062_p3;
wire   [2:0] grp_fu_2062_p5;
wire   [2:0] grp_fu_2062_p7;
wire   [2:0] grp_fu_2062_p9;
wire   [2:0] grp_fu_2062_p11;
wire   [2:0] grp_fu_2093_p1;
wire   [2:0] grp_fu_2093_p3;
wire   [2:0] grp_fu_2093_p5;
wire   [2:0] grp_fu_2093_p7;
wire  signed [2:0] grp_fu_2093_p9;
wire  signed [2:0] grp_fu_2093_p11;
wire  signed [2:0] grp_fu_2124_p1;
wire  signed [2:0] grp_fu_2124_p3;
wire   [2:0] grp_fu_2124_p5;
wire   [2:0] grp_fu_2124_p7;
wire   [2:0] grp_fu_2124_p9;
wire   [2:0] grp_fu_2124_p11;
wire   [2:0] grp_fu_2155_p1;
wire   [2:0] grp_fu_2155_p3;
wire   [2:0] grp_fu_2155_p5;
wire   [2:0] grp_fu_2155_p7;
wire  signed [2:0] grp_fu_2155_p9;
wire  signed [2:0] grp_fu_2155_p11;
wire  signed [2:0] grp_fu_2186_p1;
wire  signed [2:0] grp_fu_2186_p3;
wire   [2:0] grp_fu_2186_p5;
wire   [2:0] grp_fu_2186_p7;
wire   [2:0] grp_fu_2186_p9;
wire   [2:0] grp_fu_2186_p11;
wire  signed [2:0] tmp_21_fu_2587_p1;
wire  signed [2:0] tmp_21_fu_2587_p3;
wire   [2:0] tmp_21_fu_2587_p5;
wire   [2:0] tmp_21_fu_2587_p7;
wire   [2:0] tmp_21_fu_2587_p9;
wire   [2:0] tmp_21_fu_2587_p11;
wire   [2:0] tmp_22_fu_2618_p1;
wire   [2:0] tmp_22_fu_2618_p3;
wire  signed [2:0] tmp_22_fu_2618_p5;
wire  signed [2:0] tmp_22_fu_2618_p7;
wire   [2:0] tmp_22_fu_2618_p9;
wire   [2:0] tmp_22_fu_2618_p11;
wire   [2:0] tmp_23_fu_2649_p1;
wire   [2:0] tmp_23_fu_2649_p3;
wire  signed [2:0] tmp_23_fu_2649_p5;
wire  signed [2:0] tmp_23_fu_2649_p7;
wire   [2:0] tmp_23_fu_2649_p9;
wire   [2:0] tmp_23_fu_2649_p11;
wire   [2:0] tmp_24_fu_2680_p1;
wire   [2:0] tmp_24_fu_2680_p3;
wire   [2:0] tmp_24_fu_2680_p5;
wire   [2:0] tmp_24_fu_2680_p7;
wire  signed [2:0] tmp_24_fu_2680_p9;
wire  signed [2:0] tmp_24_fu_2680_p11;
wire   [2:0] tmp_31_fu_2827_p1;
wire   [2:0] tmp_31_fu_2827_p3;
wire  signed [2:0] tmp_31_fu_2827_p5;
wire  signed [2:0] tmp_31_fu_2827_p7;
wire   [2:0] tmp_31_fu_2827_p9;
wire   [2:0] tmp_31_fu_2827_p11;
wire   [2:0] tmp_32_fu_2952_p1;
wire   [2:0] tmp_32_fu_2952_p3;
wire  signed [2:0] tmp_32_fu_2952_p5;
wire  signed [2:0] tmp_32_fu_2952_p7;
wire   [2:0] tmp_32_fu_2952_p9;
wire   [2:0] tmp_32_fu_2952_p11;
wire   [2:0] tmp_34_fu_2983_p1;
wire   [2:0] tmp_34_fu_2983_p3;
wire   [2:0] tmp_34_fu_2983_p5;
wire   [2:0] tmp_34_fu_2983_p7;
wire  signed [2:0] tmp_34_fu_2983_p9;
wire  signed [2:0] tmp_34_fu_2983_p11;
wire  signed [2:0] tmp_35_fu_3014_p1;
wire  signed [2:0] tmp_35_fu_3014_p3;
wire   [2:0] tmp_35_fu_3014_p5;
wire   [2:0] tmp_35_fu_3014_p7;
wire   [2:0] tmp_35_fu_3014_p9;
wire   [2:0] tmp_35_fu_3014_p11;
wire   [2:0] tmp_36_fu_3170_p1;
wire   [2:0] tmp_36_fu_3170_p3;
wire   [2:0] tmp_36_fu_3170_p5;
wire   [2:0] tmp_36_fu_3170_p7;
wire  signed [2:0] tmp_36_fu_3170_p9;
wire  signed [2:0] tmp_36_fu_3170_p11;
wire  signed [2:0] tmp_37_fu_3201_p1;
wire  signed [2:0] tmp_37_fu_3201_p3;
wire   [2:0] tmp_37_fu_3201_p5;
wire   [2:0] tmp_37_fu_3201_p7;
wire   [2:0] tmp_37_fu_3201_p9;
wire   [2:0] tmp_37_fu_3201_p11;
wire  signed [2:0] tmp_38_fu_3232_p1;
wire  signed [2:0] tmp_38_fu_3232_p3;
wire   [2:0] tmp_38_fu_3232_p5;
wire   [2:0] tmp_38_fu_3232_p7;
wire   [2:0] tmp_38_fu_3232_p9;
wire   [2:0] tmp_38_fu_3232_p11;
wire   [2:0] tmp_39_fu_3263_p1;
wire   [2:0] tmp_39_fu_3263_p3;
wire  signed [2:0] tmp_39_fu_3263_p5;
wire  signed [2:0] tmp_39_fu_3263_p7;
wire   [2:0] tmp_39_fu_3263_p9;
wire   [2:0] tmp_39_fu_3263_p11;
wire   [2:0] tmp_40_fu_3294_p1;
wire   [2:0] tmp_40_fu_3294_p3;
wire  signed [2:0] tmp_40_fu_3294_p5;
wire  signed [2:0] tmp_40_fu_3294_p7;
wire   [2:0] tmp_40_fu_3294_p9;
wire   [2:0] tmp_40_fu_3294_p11;
wire   [2:0] tmp_41_fu_3325_p1;
wire   [2:0] tmp_41_fu_3325_p3;
wire   [2:0] tmp_41_fu_3325_p5;
wire   [2:0] tmp_41_fu_3325_p7;
wire  signed [2:0] tmp_41_fu_3325_p9;
wire  signed [2:0] tmp_41_fu_3325_p11;
wire   [2:0] tmp_42_fu_3500_p1;
wire   [2:0] tmp_42_fu_3500_p3;
wire   [2:0] tmp_42_fu_3500_p5;
wire   [2:0] tmp_42_fu_3500_p7;
wire  signed [2:0] tmp_42_fu_3500_p9;
wire  signed [2:0] tmp_42_fu_3500_p11;
wire  signed [2:0] tmp_43_fu_3531_p1;
wire  signed [2:0] tmp_43_fu_3531_p3;
wire   [2:0] tmp_43_fu_3531_p5;
wire   [2:0] tmp_43_fu_3531_p7;
wire   [2:0] tmp_43_fu_3531_p9;
wire   [2:0] tmp_43_fu_3531_p11;
wire   [2:0] tmp_78_fu_3571_p1;
wire   [2:0] tmp_78_fu_3571_p3;
wire  signed [2:0] tmp_78_fu_3571_p5;
wire  signed [2:0] tmp_78_fu_3571_p7;
wire   [2:0] tmp_78_fu_3571_p9;
wire   [2:0] tmp_78_fu_3571_p11;
wire   [2:0] tmp_79_fu_3663_p1;
wire   [2:0] tmp_79_fu_3663_p3;
wire  signed [2:0] tmp_79_fu_3663_p5;
wire  signed [2:0] tmp_79_fu_3663_p7;
wire   [2:0] tmp_79_fu_3663_p9;
wire   [2:0] tmp_79_fu_3663_p11;
wire   [2:0] tmp_81_fu_3694_p1;
wire   [2:0] tmp_81_fu_3694_p3;
wire   [2:0] tmp_81_fu_3694_p5;
wire   [2:0] tmp_81_fu_3694_p7;
wire  signed [2:0] tmp_81_fu_3694_p9;
wire  signed [2:0] tmp_81_fu_3694_p11;
wire  signed [2:0] tmp_82_fu_3725_p1;
wire  signed [2:0] tmp_82_fu_3725_p3;
wire   [2:0] tmp_82_fu_3725_p5;
wire   [2:0] tmp_82_fu_3725_p7;
wire   [2:0] tmp_82_fu_3725_p9;
wire   [2:0] tmp_82_fu_3725_p11;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_136 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U482(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(grp_fu_2031_p13),.sel(trunc_ln172_reg_4138),.dout(grp_fu_2031_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U483(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(grp_fu_2062_p13),.sel(trunc_ln172_reg_4138),.dout(grp_fu_2062_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U484(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2093_p13),.sel(trunc_ln172_2_reg_4333),.dout(grp_fu_2093_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U485(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2124_p13),.sel(trunc_ln172_2_reg_4333),.dout(grp_fu_2124_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U486(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2155_p13),.sel(trunc_ln172_4_reg_4934),.dout(grp_fu_2155_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U487(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(grp_fu_2186_p13),.sel(trunc_ln172_4_reg_4934),.dout(grp_fu_2186_p15));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U488(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2291_p0),.din1(grp_fu_2291_p1),.ce(1'b1),.dout(grp_fu_2291_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U489(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2315_p0),.din1(grp_fu_2315_p1),.ce(1'b1),.dout(grp_fu_2315_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U490(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2330_p0),.din1(grp_fu_2330_p1),.ce(1'b1),.dout(grp_fu_2330_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U491(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2345_p0),.din1(grp_fu_2345_p1),.ce(1'b1),.dout(grp_fu_2345_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U492(.din0(mul_ln172_fu_2487_p0),.din1(mul_ln172_fu_2487_p1),.dout(mul_ln172_fu_2487_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U493(.din0(mul_ln172_2_fu_2564_p0),.din1(mul_ln172_2_fu_2564_p1),.dout(mul_ln172_2_fu_2564_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U494(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_21_fu_2587_p13),.sel(trunc_ln172_reg_4138),.dout(tmp_21_fu_2587_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U495(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_22_fu_2618_p13),.sel(trunc_ln172_reg_4138),.dout(tmp_22_fu_2618_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U496(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_23_fu_2649_p13),.sel(trunc_ln172_reg_4138),.dout(tmp_23_fu_2649_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U497(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_24_fu_2680_p13),.sel(trunc_ln172_reg_4138),.dout(tmp_24_fu_2680_p15));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U498(.din0(mul_ln172_3_fu_2759_p0),.din1(mul_ln172_3_fu_2759_p1),.dout(mul_ln172_3_fu_2759_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U499(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_31_fu_2827_p13),.sel(trunc_ln172_2_reg_4333),.dout(tmp_31_fu_2827_p15));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U500(.din0(mul_ln172_4_fu_2900_p0),.din1(mul_ln172_4_fu_2900_p1),.dout(mul_ln172_4_fu_2900_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U501(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_32_fu_2952_p13),.sel(trunc_ln172_2_reg_4333),.dout(tmp_32_fu_2952_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U502(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_34_fu_2983_p13),.sel(trunc_ln172_2_reg_4333),.dout(tmp_34_fu_2983_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U503(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_35_fu_3014_p13),.sel(trunc_ln172_2_reg_4333),.dout(tmp_35_fu_3014_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U504(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_36_fu_3170_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_36_fu_3170_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U505(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_37_fu_3201_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_37_fu_3201_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U506(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_38_fu_3232_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_38_fu_3232_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U507(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_39_fu_3263_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_39_fu_3263_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U508(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_40_fu_3294_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_40_fu_3294_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U509(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_41_fu_3325_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_41_fu_3325_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U510(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_42_fu_3500_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_42_fu_3500_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U511(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_43_fu_3531_p13),.sel(trunc_ln172_3_reg_4693),.dout(tmp_43_fu_3531_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U512(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.def(tmp_78_fu_3571_p13),.sel(trunc_ln172_4_reg_4934),.dout(tmp_78_fu_3571_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U513(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_79_fu_3663_p13),.sel(trunc_ln172_4_reg_4934),.dout(tmp_79_fu_3663_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U514(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_81_fu_3694_p13),.sel(trunc_ln172_4_reg_4934),.dout(tmp_81_fu_3694_p15));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_13_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_13_3_64_1_1_U515(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.def(tmp_82_fu_3725_p13),.sel(trunc_ln172_4_reg_4934),.dout(tmp_82_fu_3725_p15));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U516(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3756_p0),.din1(grp_fu_3756_p1),.din2(grp_fu_3756_p2),.ce(1'b1),.dout(grp_fu_3756_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U517(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3765_p0),.din1(grp_fu_3765_p1),.din2(grp_fu_3765_p2),.ce(1'b1),.dout(grp_fu_3765_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U518(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3774_p0),.din1(grp_fu_3774_p1),.din2(grp_fu_3774_p2),.ce(1'b1),.dout(grp_fu_3774_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U519(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3783_p0),.din1(grp_fu_3783_p1),.din2(grp_fu_3783_p2),.ce(1'b1),.dout(grp_fu_3783_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U520(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3792_p0),.din1(grp_fu_3792_p1),.din2(grp_fu_3792_p2),.ce(1'b1),.dout(grp_fu_3792_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U521(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3801_p0),.din1(grp_fu_3801_p1),.din2(grp_fu_3801_p2),.ce(1'b1),.dout(grp_fu_3801_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U522(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3810_p0),.din1(grp_fu_3810_p1),.din2(grp_fu_3810_p2),.ce(1'b1),.dout(grp_fu_3810_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U523(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3819_p0),.din1(grp_fu_3819_p1),.din2(grp_fu_3819_p2),.ce(1'b1),.dout(grp_fu_3819_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U524(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3828_p0),.din1(grp_fu_3828_p1),.din2(grp_fu_3828_p2),.ce(1'b1),.dout(grp_fu_3828_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U525(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3837_p0),.din1(grp_fu_3837_p1),.din2(grp_fu_3837_p2),.ce(1'b1),.dout(grp_fu_3837_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U526(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3845_p0),.din1(grp_fu_3845_p1),.din2(grp_fu_3845_p2),.ce(1'b1),.dout(grp_fu_3845_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U527(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3853_p0),.din1(grp_fu_3853_p1),.din2(grp_fu_3853_p2),.ce(1'b1),.dout(grp_fu_3853_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U528(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3861_p0),.din1(grp_fu_3861_p1),.din2(grp_fu_3861_p2),.ce(1'b1),.dout(grp_fu_3861_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U529(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3869_p0),.din1(grp_fu_3869_p1),.din2(grp_fu_3869_p2),.ce(1'b1),.dout(grp_fu_3869_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U530(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3877_p0),.din1(grp_fu_3877_p1),.din2(grp_fu_3877_p2),.ce(1'b1),.dout(grp_fu_3877_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U531(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3886_p0),.din1(grp_fu_3886_p1),.din2(grp_fu_3886_p2),.ce(1'b1),.dout(grp_fu_3886_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U532(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3895_p0),.din1(grp_fu_3895_p1),.din2(grp_fu_3895_p2),.ce(1'b1),.dout(grp_fu_3895_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U533(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3904_p0),.din1(grp_fu_3904_p1),.din2(grp_fu_3904_p2),.ce(1'b1),.dout(grp_fu_3904_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U534(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3913_p0),.din1(grp_fu_3913_p1),.din2(grp_fu_3913_p2),.ce(1'b1),.dout(grp_fu_3913_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U535(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3922_p0),.din1(grp_fu_3922_p1),.din2(grp_fu_3922_p2),.ce(1'b1),.dout(grp_fu_3922_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U536(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3931_p0),.din1(grp_fu_3931_p1),.din2(grp_fu_3931_p2),.ce(1'b1),.dout(grp_fu_3931_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U537(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3939_p0),.din1(grp_fu_3939_p1),.din2(grp_fu_3939_p2),.ce(1'b1),.dout(grp_fu_3939_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U538(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3948_p0),.din1(grp_fu_3948_p1),.din2(grp_fu_3948_p2),.ce(1'b1),.dout(grp_fu_3948_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U539(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3957_p0),.din1(grp_fu_3957_p1),.din2(grp_fu_3957_p2),.ce(1'b1),.dout(grp_fu_3957_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U540(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3966_p0),.din1(grp_fu_3966_p1),.din2(grp_fu_3966_p2),.ce(1'b1),.dout(grp_fu_3966_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U541(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3975_p0),.din1(grp_fu_3975_p1),.din2(grp_fu_3975_p2),.ce(1'b1),.dout(grp_fu_3975_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U542(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3984_p0),.din1(grp_fu_3984_p1),.din2(grp_fu_3984_p2),.ce(1'b1),.dout(grp_fu_3984_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U543(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3993_p0),.din1(grp_fu_3993_p1),.din2(grp_fu_3993_p2),.ce(1'b1),.dout(grp_fu_3993_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_136 <= 7'd0;
    end else if (((tmp_reg_4020 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tid_fu_136 <= add_ln309_fu_2351_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_2_reg_4038[8 : 1] <= offset_2_fu_2306_p4[8 : 1];
        offset_2_reg_4038_pp0_iter1_reg[8 : 1] <= offset_2_reg_4038[8 : 1];
        tmp_54_reg_4328 <= {{mul_ln172_2_fu_2564_p2[18:12]}};
        tmp_79_reg_5343 <= tmp_79_fu_3663_p15;
        tmp_81_reg_5348 <= tmp_81_fu_3694_p15;
        tmp_82_reg_5353 <= tmp_82_fu_3725_p15;
        trunc_ln172_2_reg_4333 <= trunc_ln172_2_fu_2580_p1;
        zext_ln172_15_reg_4343[8 : 2] <= zext_ln172_15_fu_2584_p1[8 : 2];
        zext_ln314_3_reg_5330[6 : 3] <= zext_ln314_3_fu_3645_p1[6 : 3];
        zext_ln315_7_reg_5337[6 : 3] <= zext_ln315_7_fu_3657_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_3_reg_4045[8 : 2] <= offset_3_fu_2321_p4[8 : 2];
        offset_3_reg_4045_pp0_iter1_reg[8 : 2] <= offset_3_reg_4045[8 : 2];
        tmp_21_reg_4348 <= tmp_21_fu_2587_p15;
        tmp_22_reg_4353 <= tmp_22_fu_2618_p15;
        tmp_23_reg_4358 <= tmp_23_fu_2649_p15;
        tmp_24_reg_4363 <= tmp_24_fu_2680_p15;
        tmp_63_reg_4518 <= {{mul_ln172_3_fu_2759_p2[18:12]}};
        urem_ln172_3_reg_4523 <= grp_fu_2330_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_4_reg_4052[8 : 2] <= offset_4_fu_2336_p4[8 : 2];
        offset_4_reg_4052_pp0_iter1_reg[8 : 2] <= offset_4_reg_4052[8 : 2];
        tmp_31_reg_4568 <= tmp_31_fu_2827_p15;
        tmp_46_reg_4068 <= {{tmp_46_fu_2367_p1[20:13]}};
        tmp_47_reg_4073 <= {{tmp_47_fu_2376_p1[20:13]}};
        tmp_48_reg_4078 <= {{tmp_48_fu_2385_p1[20:13]}};
        tmp_49_reg_4083 <= {{tmp_49_fu_2394_p1[20:13]}};
        tmp_50_reg_4088 <= {{tmp_50_fu_2403_p1[20:13]}};
        tmp_51_reg_4093 <= {{tmp_51_fu_2412_p1[20:13]}};
        tmp_52_reg_4098 <= {{tmp_52_fu_2421_p1[20:13]}};
        tmp_55_reg_4103 <= {{tmp_55_fu_2430_p1[20:13]}};
        tmp_57_reg_4108 <= {{tmp_57_fu_2439_p1[20:13]}};
        tmp_72_reg_4705 <= {{mul_ln172_4_fu_2900_p2[18:12]}};
        trunc_ln172_3_reg_4693 <= trunc_ln172_3_fu_2894_p1;
        urem_ln172_4_reg_4710 <= grp_fu_2345_p2;
        zext_ln314_reg_4528[6 : 1] <= zext_ln314_fu_2786_p1[6 : 1];
        zext_ln315_4_reg_4533[6 : 1] <= zext_ln315_4_fu_2801_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_4031 <= offset_fu_2283_p3;
        offset_reg_4031_pp0_iter1_reg <= offset_reg_4031;
        tid_2_reg_4009 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_4009_pp0_iter1_reg <= tid_2_reg_4009;
        tid_2_reg_4009_pp0_iter2_reg <= tid_2_reg_4009_pp0_iter1_reg;
        tmp_42_reg_5165 <= tmp_42_fu_3500_p15;
        tmp_43_reg_5170 <= tmp_43_fu_3531_p15;
        tmp_44_reg_4024 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_45_reg_4133 <= {{mul_ln172_fu_2487_p2[18:12]}};
        tmp_78_reg_5205 <= tmp_78_fu_3571_p15;
        tmp_reg_4020 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_4020_pp0_iter1_reg <= tmp_reg_4020;
        tmp_reg_4020_pp0_iter2_reg <= tmp_reg_4020_pp0_iter1_reg;
        trunc_ln172_reg_4138 <= trunc_ln172_fu_2503_p1;
        zext_ln172_12_reg_4059[8 : 1] <= zext_ln172_12_fu_2364_p1[8 : 1];
        zext_ln314_2_reg_5155[6 : 2] <= zext_ln314_2_fu_3481_p1[6 : 2];
        zext_ln315_6_reg_5160[6 : 2] <= zext_ln315_6_fu_3493_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_2217 <= grp_fu_2031_p15;
        reg_2223 <= grp_fu_2062_p15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_2229 <= grp_fu_2093_p15;
        reg_2235 <= grp_fu_2124_p15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_2241 <= grp_fu_2155_p15;
        reg_2247 <= grp_fu_2186_p15;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        shl_ln314_1_reg_4715[6 : 2] <= shl_ln314_1_fu_2925_p3[6 : 2];
        tmp_32_reg_4734 <= tmp_32_fu_2952_p15;
        tmp_34_reg_4739 <= tmp_34_fu_2983_p15;
        tmp_35_reg_4744 <= tmp_35_fu_3014_p15;
        tmp_58_reg_4113 <= {{tmp_58_fu_2448_p1[20:13]}};
        tmp_59_reg_4118 <= {{tmp_59_fu_2457_p1[20:13]}};
        tmp_60_reg_4123 <= {{tmp_60_fu_2466_p1[20:13]}};
        tmp_61_reg_4128 <= {{tmp_61_fu_2475_p1[20:13]}};
        tmp_69_reg_4929 <= {{tmp_69_fu_3149_p1[20:13]}};
        tmp_74_reg_4944 <= {{tid_2_reg_4009_pp0_iter2_reg[5:2]}};
        trunc_ln172_4_reg_4934 <= trunc_ln172_4_fu_3158_p1;
        zext_ln314_1_reg_4721[6 : 2] <= zext_ln314_1_fu_2933_p1[6 : 2];
        zext_ln315_5_reg_4728[6 : 2] <= zext_ln315_5_fu_2946_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_36_reg_4950 <= tmp_36_fu_3170_p15;
        tmp_37_reg_4955 <= tmp_37_fu_3201_p15;
        tmp_38_reg_4960 <= tmp_38_fu_3232_p15;
        tmp_39_reg_4965 <= tmp_39_fu_3263_p15;
        tmp_40_reg_4970 <= tmp_40_fu_3294_p15;
        tmp_41_reg_4975 <= tmp_41_fu_3325_p15;
        tmp_83_reg_5100 <= {{tmp_83_fu_3412_p1[20:13]}};
        tmp_85_reg_5135 <= {{tmp_85_fu_3440_p1[20:13]}};
        tmp_86_reg_5140 <= {{tmp_86_fu_3449_p1[20:13]}};
        tmp_87_reg_5145 <= {{tmp_87_fu_3458_p1[20:13]}};
        tmp_88_reg_5150 <= {{tmp_88_fu_3467_p1[20:13]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_7_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_6_fu_3493_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln315_5_fu_2946_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_4_fu_2801_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln314_3_reg_5330;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_2_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln314_1_reg_4721;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_fu_2786_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_78_reg_5205;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_39_reg_4965;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_d0_local = tmp_31_reg_4568;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_22_reg_4353;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_38_reg_4960;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_d1_local = reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_21_reg_4348;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address0_local = zext_ln315_7_reg_5337;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln315_6_fu_3493_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_2_address0_local = zext_ln315_5_reg_4728;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln315_4_fu_2801_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address1_local = zext_ln314_3_reg_5330;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln314_2_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_2_address1_local = zext_ln314_1_reg_4721;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address1_local = zext_ln314_fu_2786_p1;
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d0_local = reg_2241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_41_reg_4975;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_2_d0_local = reg_2229;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d0_local = tmp_24_reg_4363;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d1_local = tmp_79_reg_5343;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_40_reg_4970;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_2_d1_local = tmp_32_reg_4734;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d1_local = tmp_23_reg_4358;
    end else begin
        DATA_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address0_local = zext_ln315_7_reg_5337;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln315_6_reg_5160;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_3_address0_local = zext_ln315_5_reg_4728;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_3_address0_local = zext_ln315_4_reg_4533;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address1_local = zext_ln314_3_reg_5330;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln314_2_reg_5155;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_3_address1_local = zext_ln314_1_reg_4721;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_3_address1_local = zext_ln314_reg_4528;
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d0_local = tmp_82_reg_5353;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_43_reg_5170;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_3_d0_local = tmp_35_reg_4744;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_3_d0_local = reg_2223;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d1_local = tmp_81_reg_5348;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_42_reg_5165;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_3_d1_local = tmp_34_reg_4739;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_3_d1_local = reg_2217;
    end else begin
        DATA_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_7_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln315_6_fu_3493_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln315_5_fu_2946_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_4_fu_2801_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_3_fu_3645_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln314_2_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln314_1_fu_2933_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_fu_2786_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_37_reg_4955;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d0_local = reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = reg_2223;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = reg_2241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_36_reg_4950;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_d1_local = reg_2229;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = reg_2217;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_4020 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_reg_4020_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
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
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_136;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_3_fu_3629_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_3_fu_3620_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_3_fu_3602_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln321_2_fu_3374_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln320_2_fu_3356_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln317_2_fu_3101_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln315_2_fu_3063_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln172_17_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln321_1_fu_2885_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln320_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln318_1_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln321_fu_2720_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln320_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln317_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln315_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_11_fu_2507_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln319_3_fu_3611_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln316_3_fu_3562_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln317_3_fu_3430_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln315_3_fu_3402_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln172_19_fu_3384_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln319_2_fu_3139_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln318_2_fu_3120_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln316_2_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln319_1_fu_2867_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln316_1_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln317_1_fu_2747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln315_1_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_14_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln319_fu_2552_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln318_fu_2543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln316_fu_2525_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693== 3'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333== 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_3_fu_3629_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_3_fu_3620_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_3_fu_3602_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln321_2_fu_3374_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln320_2_fu_3356_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln317_2_fu_3101_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln315_2_fu_3063_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln172_17_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln321_1_fu_2885_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln320_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln318_1_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln321_fu_2720_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln320_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln317_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln315_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_11_fu_2507_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln319_3_fu_3611_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln316_3_fu_3562_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln317_3_fu_3430_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln315_3_fu_3402_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln172_19_fu_3384_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln319_2_fu_3139_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln318_2_fu_3120_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln316_2_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln319_1_fu_2867_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln316_1_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln317_1_fu_2747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln315_1_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_14_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln319_fu_2552_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln318_fu_2543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln316_fu_2525_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693== 3'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333== 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_3_fu_3629_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_3_fu_3620_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_3_fu_3602_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln321_2_fu_3374_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln320_2_fu_3356_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln317_2_fu_3101_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln315_2_fu_3063_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln172_17_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln321_1_fu_2885_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln320_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln318_1_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln321_fu_2720_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln320_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln317_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln315_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_11_fu_2507_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln319_3_fu_3611_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln316_3_fu_3562_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln317_3_fu_3430_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln315_3_fu_3402_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln172_19_fu_3384_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln319_2_fu_3139_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln318_2_fu_3120_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln316_2_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln319_1_fu_2867_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln316_1_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln317_1_fu_2747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln315_1_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln172_14_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln319_fu_2552_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln318_fu_2543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln316_fu_2525_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693== 3'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333== 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_3_fu_3629_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_3_fu_3620_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_3_fu_3602_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln321_2_fu_3374_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln320_2_fu_3356_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln317_2_fu_3101_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln315_2_fu_3063_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln172_17_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln321_1_fu_2885_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln320_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln318_1_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln321_fu_2720_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln320_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln317_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln315_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_11_fu_2507_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln319_3_fu_3611_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln316_3_fu_3562_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln317_3_fu_3430_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln315_3_fu_3402_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln172_19_fu_3384_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln319_2_fu_3139_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln318_2_fu_3120_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln316_2_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln319_1_fu_2867_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln316_1_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln317_1_fu_2747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln315_1_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln172_14_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln319_fu_2552_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln318_fu_2543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln316_fu_2525_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333== 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_3_fu_3629_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_3_fu_3620_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_3_fu_3602_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln321_2_fu_3374_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln320_2_fu_3356_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln317_2_fu_3101_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln315_2_fu_3063_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln172_17_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln321_1_fu_2885_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln320_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln318_1_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln321_fu_2720_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln320_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln317_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln315_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_11_fu_2507_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln319_3_fu_3611_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln316_3_fu_3562_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln317_3_fu_3430_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln315_3_fu_3402_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln172_19_fu_3384_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln319_2_fu_3139_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln318_2_fu_3120_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln316_2_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln319_1_fu_2867_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln316_1_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln317_1_fu_2747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln315_1_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln172_14_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln319_fu_2552_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln318_fu_2543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln316_fu_2525_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd5) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333== 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_3_fu_3629_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_3_fu_3620_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_3_fu_3602_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln321_2_fu_3374_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln320_2_fu_3356_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln317_2_fu_3101_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln315_2_fu_3063_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln172_17_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln321_1_fu_2885_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln320_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln318_1_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln321_fu_2720_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln320_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln317_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln315_fu_2516_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_11_fu_2507_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln319_3_fu_3611_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln316_3_fu_3562_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln317_3_fu_3430_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln315_3_fu_3402_p1;
    end else if (((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln172_19_fu_3384_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln319_2_fu_3139_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln318_2_fu_3120_p1;
    end else if (((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln316_2_fu_3082_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln319_1_fu_2867_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln316_1_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln317_1_fu_2747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln315_1_fu_2738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_14_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln319_fu_2552_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln318_fu_2543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln316_fu_2525_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_3_reg_4693== 3'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_4_reg_4934 == 3'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((trunc_ln172_4_reg_4934 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_4693 == 3'd4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693 == 3'd2) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln172_3_reg_4693== 3'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_reg_4138 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333== 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_2_reg_4333 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln309_fu_2351_p2 = (tid_2_reg_4009 + 7'd4);
assign add_ln314_fu_3476_p2 = (shl_ln314_1_reg_4715 + 7'd2);
assign add_ln315_3_fu_3488_p2 = (shl_ln314_1_reg_4715 + 7'd3);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign grp_fu_2022_p4 = {{tid_2_reg_4009[5:2]}};
assign grp_fu_2031_p13 = 'bx;
assign grp_fu_2062_p13 = 'bx;
assign grp_fu_2093_p13 = 'bx;
assign grp_fu_2124_p13 = 'bx;
assign grp_fu_2155_p13 = 'bx;
assign grp_fu_2186_p13 = 'bx;
assign grp_fu_2291_p0 = {{tmp_44_fu_2269_p4}, {trunc_ln312_fu_2279_p1}};
assign grp_fu_2291_p1 = 9'd6;
assign grp_fu_2315_p0 = {{{tmp_44_reg_4024}, {tmp_53_fu_2297_p4}}, {1'd1}};
assign grp_fu_2315_p1 = 9'd6;
assign grp_fu_2330_p0 = {{{tmp_44_reg_4024}, {grp_fu_2022_p4}}, {2'd2}};
assign grp_fu_2330_p1 = 9'd6;
assign grp_fu_2345_p0 = {{{tmp_44_reg_4024}, {grp_fu_2022_p4}}, {2'd3}};
assign grp_fu_2345_p1 = 9'd6;
assign grp_fu_3756_p0 = zext_ln172_fu_2361_p1;
assign grp_fu_3756_p1 = 10'd32;
assign grp_fu_3756_p2 = 21'd1366;
assign grp_fu_3765_p0 = zext_ln172_fu_2361_p1;
assign grp_fu_3765_p1 = 10'd8;
assign grp_fu_3765_p2 = 21'd1366;
assign grp_fu_3774_p0 = zext_ln172_fu_2361_p1;
assign grp_fu_3774_p1 = 10'd40;
assign grp_fu_3774_p2 = 21'd1366;
assign grp_fu_3783_p0 = zext_ln172_fu_2361_p1;
assign grp_fu_3783_p1 = 10'd16;
assign grp_fu_3783_p2 = 21'd1366;
assign grp_fu_3792_p0 = zext_ln172_fu_2361_p1;
assign grp_fu_3792_p1 = 10'd48;
assign grp_fu_3792_p2 = 21'd1366;
assign grp_fu_3801_p0 = zext_ln172_fu_2361_p1;
assign grp_fu_3801_p1 = 10'd24;
assign grp_fu_3801_p2 = 21'd1366;
assign grp_fu_3810_p0 = zext_ln172_fu_2361_p1;
assign grp_fu_3810_p1 = 10'd56;
assign grp_fu_3810_p2 = 21'd1366;
assign grp_fu_3819_p0 = zext_ln172_12_fu_2364_p1;
assign grp_fu_3819_p1 = 10'd32;
assign grp_fu_3819_p2 = 21'd1366;
assign grp_fu_3828_p0 = zext_ln172_12_fu_2364_p1;
assign grp_fu_3828_p1 = 10'd40;
assign grp_fu_3828_p2 = 21'd1366;
assign grp_fu_3837_p0 = zext_ln172_12_reg_4059;
assign grp_fu_3837_p1 = 10'd16;
assign grp_fu_3837_p2 = 21'd1366;
assign grp_fu_3845_p0 = zext_ln172_12_reg_4059;
assign grp_fu_3845_p1 = 10'd48;
assign grp_fu_3845_p2 = 21'd1366;
assign grp_fu_3853_p0 = zext_ln172_12_reg_4059;
assign grp_fu_3853_p1 = 10'd24;
assign grp_fu_3853_p2 = 21'd1366;
assign grp_fu_3861_p0 = zext_ln172_12_reg_4059;
assign grp_fu_3861_p1 = 10'd56;
assign grp_fu_3861_p2 = 21'd1366;
assign grp_fu_3869_p0 = zext_ln172_12_reg_4059;
assign grp_fu_3869_p1 = 10'd8;
assign grp_fu_3869_p2 = 21'd1366;
assign grp_fu_3877_p0 = zext_ln172_15_fu_2584_p1;
assign grp_fu_3877_p1 = 10'd32;
assign grp_fu_3877_p2 = 21'd1366;
assign grp_fu_3886_p0 = zext_ln172_15_fu_2584_p1;
assign grp_fu_3886_p1 = 10'd8;
assign grp_fu_3886_p2 = 21'd1366;
assign grp_fu_3895_p0 = zext_ln172_15_fu_2584_p1;
assign grp_fu_3895_p1 = 10'd40;
assign grp_fu_3895_p2 = 21'd1366;
assign grp_fu_3904_p0 = zext_ln172_15_fu_2584_p1;
assign grp_fu_3904_p1 = 10'd16;
assign grp_fu_3904_p2 = 21'd1366;
assign grp_fu_3913_p0 = zext_ln172_15_fu_2584_p1;
assign grp_fu_3913_p1 = 10'd48;
assign grp_fu_3913_p2 = 21'd1366;
assign grp_fu_3922_p0 = zext_ln172_15_fu_2584_p1;
assign grp_fu_3922_p1 = 10'd24;
assign grp_fu_3922_p2 = 21'd1366;
assign grp_fu_3931_p0 = zext_ln172_15_reg_4343;
assign grp_fu_3931_p1 = 10'd56;
assign grp_fu_3931_p2 = 21'd1366;
assign grp_fu_3939_p0 = zext_ln172_18_fu_2775_p1;
assign grp_fu_3939_p1 = 10'd32;
assign grp_fu_3939_p2 = 21'd1366;
assign grp_fu_3948_p0 = zext_ln172_18_fu_2775_p1;
assign grp_fu_3948_p1 = 10'd8;
assign grp_fu_3948_p2 = 21'd1366;
assign grp_fu_3957_p0 = zext_ln172_18_fu_2775_p1;
assign grp_fu_3957_p1 = 10'd40;
assign grp_fu_3957_p2 = 21'd1366;
assign grp_fu_3966_p0 = zext_ln172_18_fu_2775_p1;
assign grp_fu_3966_p1 = 10'd16;
assign grp_fu_3966_p2 = 21'd1366;
assign grp_fu_3975_p0 = zext_ln172_18_fu_2775_p1;
assign grp_fu_3975_p1 = 10'd48;
assign grp_fu_3975_p2 = 21'd1366;
assign grp_fu_3984_p0 = zext_ln172_18_fu_2775_p1;
assign grp_fu_3984_p1 = 10'd24;
assign grp_fu_3984_p2 = 21'd1366;
assign grp_fu_3993_p0 = zext_ln172_18_fu_2775_p1;
assign grp_fu_3993_p1 = 10'd56;
assign grp_fu_3993_p2 = 21'd1366;
assign mul_ln172_2_fu_2564_p0 = mul_ln172_2_fu_2564_p00;
assign mul_ln172_2_fu_2564_p00 = offset_2_reg_4038_pp0_iter1_reg;
assign mul_ln172_2_fu_2564_p1 = 19'd683;
assign mul_ln172_3_fu_2759_p0 = mul_ln172_3_fu_2759_p00;
assign mul_ln172_3_fu_2759_p00 = offset_3_reg_4045_pp0_iter1_reg;
assign mul_ln172_3_fu_2759_p1 = 19'd683;
assign mul_ln172_4_fu_2900_p0 = mul_ln172_4_fu_2900_p00;
assign mul_ln172_4_fu_2900_p00 = offset_4_reg_4052_pp0_iter1_reg;
assign mul_ln172_4_fu_2900_p1 = 19'd683;
assign mul_ln172_fu_2487_p0 = mul_ln172_fu_2487_p00;
assign mul_ln172_fu_2487_p00 = offset_reg_4031_pp0_iter1_reg;
assign mul_ln172_fu_2487_p1 = 19'd683;
assign offset_2_fu_2306_p4 = {{{tmp_44_reg_4024}, {tmp_53_fu_2297_p4}}, {1'd1}};
assign offset_3_fu_2321_p4 = {{{tmp_44_reg_4024}, {grp_fu_2022_p4}}, {2'd2}};
assign offset_4_fu_2336_p4 = {{{tmp_44_reg_4024}, {grp_fu_2022_p4}}, {2'd3}};
assign offset_fu_2283_p3 = {{tmp_44_fu_2269_p4}, {trunc_ln312_fu_2279_p1}};
assign or_ln2_fu_3638_p3 = {{tmp_74_reg_4944}, {3'd6}};
assign or_ln315_1_fu_2938_p3 = {{tmp_28_fu_2916_p4}, {2'd3}};
assign or_ln315_2_fu_3650_p3 = {{tmp_74_reg_4944}, {3'd7}};
assign or_ln_fu_2793_p3 = {{trunc_ln314_fu_2778_p1}, {1'd1}};
assign shl_ln314_1_fu_2925_p3 = {{tmp_28_fu_2916_p4}, {2'd2}};
assign shl_ln314_fu_2781_p2 = tid_2_reg_4009_pp0_iter2_reg << 7'd1;
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
assign tmp_21_fu_2587_p13 = 'bx;
assign tmp_22_fu_2618_p13 = 'bx;
assign tmp_23_fu_2649_p13 = 'bx;
assign tmp_24_fu_2680_p13 = 'bx;
assign tmp_28_fu_2916_p4 = {{tid_2_reg_4009_pp0_iter2_reg[5:1]}};
assign tmp_31_fu_2827_p13 = 'bx;
assign tmp_32_fu_2952_p13 = 'bx;
assign tmp_34_fu_2983_p13 = 'bx;
assign tmp_35_fu_3014_p13 = 'bx;
assign tmp_36_fu_3170_p13 = 'bx;
assign tmp_37_fu_3201_p13 = 'bx;
assign tmp_38_fu_3232_p13 = 'bx;
assign tmp_39_fu_3263_p13 = 'bx;
assign tmp_40_fu_3294_p13 = 'bx;
assign tmp_41_fu_3325_p13 = 'bx;
assign tmp_42_fu_3500_p13 = 'bx;
assign tmp_43_fu_3531_p13 = 'bx;
assign tmp_44_fu_2269_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_46_fu_2367_p1 = grp_fu_3756_p3;
assign tmp_47_fu_2376_p1 = grp_fu_3765_p3;
assign tmp_48_fu_2385_p1 = grp_fu_3774_p3;
assign tmp_49_fu_2394_p1 = grp_fu_3783_p3;
assign tmp_50_fu_2403_p1 = grp_fu_3792_p3;
assign tmp_51_fu_2412_p1 = grp_fu_3801_p3;
assign tmp_52_fu_2421_p1 = grp_fu_3810_p3;
assign tmp_53_fu_2297_p4 = {{tid_2_reg_4009[5:1]}};
assign tmp_55_fu_2430_p1 = grp_fu_3819_p3;
assign tmp_56_fu_2808_p1 = grp_fu_3869_p3;
assign tmp_56_fu_2808_p4 = {{tmp_56_fu_2808_p1[20:13]}};
assign tmp_57_fu_2439_p1 = grp_fu_3828_p3;
assign tmp_58_fu_2448_p1 = grp_fu_3837_p3;
assign tmp_59_fu_2457_p1 = grp_fu_3845_p3;
assign tmp_60_fu_2466_p1 = grp_fu_3853_p3;
assign tmp_61_fu_2475_p1 = grp_fu_3861_p3;
assign tmp_64_fu_3054_p1 = grp_fu_3877_p3;
assign tmp_64_fu_3054_p4 = {{tmp_64_fu_3054_p1[20:13]}};
assign tmp_65_fu_3073_p1 = grp_fu_3886_p3;
assign tmp_65_fu_3073_p4 = {{tmp_65_fu_3073_p1[20:13]}};
assign tmp_66_fu_3092_p1 = grp_fu_3895_p3;
assign tmp_66_fu_3092_p4 = {{tmp_66_fu_3092_p1[20:13]}};
assign tmp_67_fu_3111_p1 = grp_fu_3904_p3;
assign tmp_67_fu_3111_p4 = {{tmp_67_fu_3111_p1[20:13]}};
assign tmp_68_fu_3130_p1 = grp_fu_3913_p3;
assign tmp_68_fu_3130_p4 = {{tmp_68_fu_3130_p1[20:13]}};
assign tmp_69_fu_3149_p1 = grp_fu_3922_p3;
assign tmp_70_fu_3365_p1 = grp_fu_3931_p3;
assign tmp_70_fu_3365_p4 = {{tmp_70_fu_3365_p1[20:13]}};
assign tmp_75_fu_3393_p1 = grp_fu_3939_p3;
assign tmp_75_fu_3393_p4 = {{tmp_75_fu_3393_p1[20:13]}};
assign tmp_78_fu_3571_p13 = 'bx;
assign tmp_79_fu_3663_p13 = 'bx;
assign tmp_81_fu_3694_p13 = 'bx;
assign tmp_82_fu_3725_p13 = 'bx;
assign tmp_83_fu_3412_p1 = grp_fu_3948_p3;
assign tmp_84_fu_3421_p1 = grp_fu_3957_p3;
assign tmp_84_fu_3421_p4 = {{tmp_84_fu_3421_p1[20:13]}};
assign tmp_85_fu_3440_p1 = grp_fu_3966_p3;
assign tmp_86_fu_3449_p1 = grp_fu_3975_p3;
assign tmp_87_fu_3458_p1 = grp_fu_3984_p3;
assign tmp_88_fu_3467_p1 = grp_fu_3993_p3;
assign trunc_ln172_2_fu_2580_p1 = grp_fu_2315_p2[2:0];
assign trunc_ln172_3_fu_2894_p1 = urem_ln172_3_reg_4523[2:0];
assign trunc_ln172_4_fu_3158_p1 = urem_ln172_4_reg_4710[2:0];
assign trunc_ln172_fu_2503_p1 = grp_fu_2291_p2[2:0];
assign trunc_ln312_fu_2279_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_2778_p1 = tid_2_reg_4009_pp0_iter2_reg[5:0];
assign zext_ln172_11_fu_2507_p1 = tmp_45_reg_4133;
assign zext_ln172_12_fu_2364_p1 = offset_2_reg_4038;
assign zext_ln172_14_fu_2729_p1 = tmp_54_reg_4328;
assign zext_ln172_15_fu_2584_p1 = offset_3_reg_4045_pp0_iter1_reg;
assign zext_ln172_17_fu_3045_p1 = tmp_63_reg_4518;
assign zext_ln172_18_fu_2775_p1 = offset_4_reg_4052_pp0_iter1_reg;
assign zext_ln172_19_fu_3384_p1 = tmp_72_reg_4705;
assign zext_ln172_fu_2361_p1 = offset_reg_4031;
assign zext_ln314_1_fu_2933_p1 = shl_ln314_1_fu_2925_p3;
assign zext_ln314_2_fu_3481_p1 = add_ln314_fu_3476_p2;
assign zext_ln314_3_fu_3645_p1 = or_ln2_fu_3638_p3;
assign zext_ln314_fu_2786_p1 = shl_ln314_fu_2781_p2;
assign zext_ln315_1_fu_2738_p1 = tmp_55_reg_4103;
assign zext_ln315_2_fu_3063_p1 = tmp_64_fu_3054_p4;
assign zext_ln315_3_fu_3402_p1 = tmp_75_fu_3393_p4;
assign zext_ln315_4_fu_2801_p1 = or_ln_fu_2793_p3;
assign zext_ln315_5_fu_2946_p1 = or_ln315_1_fu_2938_p3;
assign zext_ln315_6_fu_3493_p1 = add_ln315_3_fu_3488_p2;
assign zext_ln315_7_fu_3657_p1 = or_ln315_2_fu_3650_p3;
assign zext_ln315_fu_2516_p1 = tmp_46_reg_4068;
assign zext_ln316_1_fu_2817_p1 = tmp_56_fu_2808_p4;
assign zext_ln316_2_fu_3082_p1 = tmp_65_fu_3073_p4;
assign zext_ln316_3_fu_3562_p1 = tmp_83_reg_5100;
assign zext_ln316_fu_2525_p1 = tmp_47_reg_4073;
assign zext_ln317_1_fu_2747_p1 = tmp_57_reg_4108;
assign zext_ln317_2_fu_3101_p1 = tmp_66_fu_3092_p4;
assign zext_ln317_3_fu_3430_p1 = tmp_84_fu_3421_p4;
assign zext_ln317_fu_2534_p1 = tmp_48_reg_4078;
assign zext_ln318_1_fu_2858_p1 = tmp_58_reg_4113;
assign zext_ln318_2_fu_3120_p1 = tmp_67_fu_3111_p4;
assign zext_ln318_3_fu_3602_p1 = tmp_85_reg_5135;
assign zext_ln318_fu_2543_p1 = tmp_49_reg_4083;
assign zext_ln319_1_fu_2867_p1 = tmp_59_reg_4118;
assign zext_ln319_2_fu_3139_p1 = tmp_68_fu_3130_p4;
assign zext_ln319_3_fu_3611_p1 = tmp_86_reg_5140;
assign zext_ln319_fu_2552_p1 = tmp_50_reg_4088;
assign zext_ln320_1_fu_2876_p1 = tmp_60_reg_4123;
assign zext_ln320_2_fu_3356_p1 = tmp_69_reg_4929;
assign zext_ln320_3_fu_3620_p1 = tmp_87_reg_5145;
assign zext_ln320_fu_2711_p1 = tmp_51_reg_4093;
assign zext_ln321_1_fu_2885_p1 = tmp_61_reg_4128;
assign zext_ln321_2_fu_3374_p1 = tmp_70_fu_3365_p4;
assign zext_ln321_3_fu_3629_p1 = tmp_88_reg_5150;
assign zext_ln321_fu_2720_p1 = tmp_52_reg_4098;
always @ (posedge ap_clk) begin
    offset_2_reg_4038[0] <= 1'b1;
    offset_2_reg_4038_pp0_iter1_reg[0] <= 1'b1;
    offset_3_reg_4045[1:0] <= 2'b10;
    offset_3_reg_4045_pp0_iter1_reg[1:0] <= 2'b10;
    offset_4_reg_4052[1:0] <= 2'b11;
    offset_4_reg_4052_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln172_12_reg_4059[0] <= 1'b1;
    zext_ln172_12_reg_4059[9] <= 1'b0;
    zext_ln172_15_reg_4343[1:0] <= 2'b10;
    zext_ln172_15_reg_4343[9] <= 1'b0;
    zext_ln314_reg_4528[0] <= 1'b0;
    zext_ln314_reg_4528[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln315_4_reg_4533[0] <= 1'b1;
    zext_ln315_4_reg_4533[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    shl_ln314_1_reg_4715[1:0] <= 2'b10;
    zext_ln314_1_reg_4721[1:0] <= 2'b10;
    zext_ln314_1_reg_4721[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln315_5_reg_4728[1:0] <= 2'b11;
    zext_ln315_5_reg_4728[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln314_2_reg_5155[1:0] <= 2'b00;
    zext_ln314_2_reg_5155[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln315_6_reg_5160[1:0] <= 2'b01;
    zext_ln315_6_reg_5160[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln314_3_reg_5330[2:0] <= 3'b110;
    zext_ln314_3_reg_5330[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln315_7_reg_5337[2:0] <= 3'b111;
    zext_ln315_7_reg_5337[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 