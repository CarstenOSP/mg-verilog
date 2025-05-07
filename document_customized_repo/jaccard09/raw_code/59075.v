module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0); 
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
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
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
reg   [0:0] tmp_reg_6284;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_6273;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_6273_pp0_iter1_reg;
reg   [6:0] tid_2_reg_6273_pp0_iter2_reg;
reg   [6:0] tid_2_reg_6273_pp0_iter3_reg;
reg   [0:0] tmp_reg_6284_pp0_iter1_reg;
reg   [0:0] tmp_reg_6284_pp0_iter2_reg;
reg   [0:0] tmp_reg_6284_pp0_iter3_reg;
wire   [2:0] tmp_66_fu_3348_p4;
reg   [2:0] tmp_66_reg_6288;
wire   [8:0] offset_fu_3362_p3;
reg   [8:0] offset_reg_6295;
reg   [8:0] offset_reg_6295_pp0_iter1_reg;
reg   [8:0] offset_reg_6295_pp0_iter2_reg;
wire   [8:0] offset_1_fu_3385_p4;
reg   [8:0] offset_1_reg_6302;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_1_reg_6302_pp0_iter1_reg;
reg   [8:0] offset_1_reg_6302_pp0_iter2_reg;
wire   [8:0] offset_2_fu_3400_p4;
reg   [8:0] offset_2_reg_6309;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [8:0] offset_2_reg_6309_pp0_iter1_reg;
reg   [8:0] offset_2_reg_6309_pp0_iter2_reg;
wire   [8:0] offset_3_fu_3415_p4;
reg   [8:0] offset_3_reg_6316;
wire    ap_block_pp0_stage3_11001;
reg   [8:0] offset_3_reg_6316_pp0_iter1_reg;
reg   [8:0] offset_3_reg_6316_pp0_iter2_reg;
reg   [6:0] tmp_68_reg_6323;
reg   [6:0] tmp_69_reg_6328;
reg   [6:0] tmp_70_reg_6333;
reg   [6:0] tmp_71_reg_6338;
reg   [6:0] tmp_72_reg_6343;
reg   [6:0] tmp_73_reg_6348;
reg   [6:0] tmp_74_reg_6353;
reg   [5:0] tmp_67_reg_6358;
wire   [3:0] trunc_ln172_fu_3534_p1;
reg   [3:0] trunc_ln172_reg_6363;
reg   [6:0] tmp_77_reg_6375;
reg   [6:0] tmp_78_reg_6380;
reg   [6:0] tmp_79_reg_6385;
reg   [6:0] tmp_80_reg_6390;
reg   [6:0] tmp_81_reg_6395;
reg   [6:0] tmp_82_reg_6400;
reg   [6:0] tmp_83_reg_6405;
reg   [5:0] tmp_76_reg_6850;
wire   [3:0] trunc_ln172_1_fu_3732_p1;
reg   [3:0] trunc_ln172_1_reg_6855;
reg   [6:0] tmp_86_reg_6867;
reg   [6:0] tmp_87_reg_6872;
reg   [6:0] tmp_88_reg_6877;
reg   [6:0] tmp_89_reg_6882;
reg   [6:0] tmp_90_reg_6887;
reg   [6:0] tmp_91_reg_6892;
reg   [6:0] tmp_92_reg_6897;
wire   [63:0] tmp_s_fu_3799_p25;
reg   [63:0] tmp_s_reg_6902;
wire   [63:0] tmp_20_fu_3850_p25;
reg   [63:0] tmp_20_reg_6907;
wire   [63:0] tmp_21_fu_3901_p25;
reg   [63:0] tmp_21_reg_6912;
wire   [63:0] tmp_22_fu_3952_p25;
reg   [63:0] tmp_22_reg_6917;
wire   [63:0] tmp_23_fu_4003_p25;
reg   [63:0] tmp_23_reg_6922;
wire   [63:0] tmp_24_fu_4054_p25;
reg   [63:0] tmp_24_reg_6927;
wire   [63:0] tmp_25_fu_4105_p25;
reg   [63:0] tmp_25_reg_6932;
wire   [63:0] tmp_26_fu_4156_p25;
reg   [63:0] tmp_26_reg_6937;
reg   [5:0] tmp_85_reg_7382;
wire   [3:0] trunc_ln172_2_fu_4338_p1;
reg   [3:0] trunc_ln172_2_reg_7387;
reg   [6:0] tmp_95_reg_7399;
reg   [6:0] tmp_96_reg_7404;
reg   [6:0] tmp_97_reg_7409;
reg   [6:0] tmp_98_reg_7414;
reg   [6:0] tmp_99_reg_7419;
reg   [6:0] tmp_100_reg_7424;
reg   [6:0] tmp_101_reg_7429;
wire   [63:0] tmp_27_fu_4437_p25;
reg   [63:0] tmp_27_reg_7434;
wire   [63:0] tmp_29_fu_4488_p25;
reg   [63:0] tmp_29_reg_7439;
wire   [63:0] tmp_30_fu_4539_p25;
reg   [63:0] tmp_30_reg_7444;
wire   [63:0] tmp_31_fu_4590_p25;
reg   [63:0] tmp_31_reg_7449;
wire   [63:0] tmp_32_fu_4641_p25;
reg   [63:0] tmp_32_reg_7454;
wire   [63:0] tmp_33_fu_4692_p25;
reg   [63:0] tmp_33_reg_7459;
wire   [63:0] tmp_34_fu_4743_p25;
reg   [63:0] tmp_34_reg_7464;
wire   [63:0] tmp_35_fu_4794_p25;
reg   [63:0] tmp_35_reg_7469;
reg   [5:0] tmp_94_reg_7914;
wire   [3:0] trunc_ln172_3_fu_4976_p1;
reg   [3:0] trunc_ln172_3_reg_7919;
wire   [6:0] shl_ln314_1_fu_4989_p3;
reg   [6:0] shl_ln314_1_reg_7931;
wire   [63:0] tmp_36_fu_5021_p25;
reg   [63:0] tmp_36_reg_7937;
wire   [63:0] tmp_37_fu_5072_p25;
reg   [63:0] tmp_37_reg_7942;
wire   [63:0] tmp_38_fu_5123_p25;
reg   [63:0] tmp_38_reg_7947;
wire   [63:0] tmp_39_fu_5174_p25;
reg   [63:0] tmp_39_reg_7952;
wire   [63:0] tmp_40_fu_5225_p25;
reg   [63:0] tmp_40_reg_7957;
wire   [63:0] tmp_41_fu_5276_p25;
reg   [63:0] tmp_41_reg_7962;
wire   [63:0] tmp_42_fu_5327_p25;
reg   [63:0] tmp_42_reg_7967;
wire   [63:0] tmp_43_fu_5378_p25;
reg   [63:0] tmp_43_reg_7972;
reg   [3:0] tmp_45_reg_8032;
wire   [63:0] tmp_44_fu_5576_p25;
reg   [63:0] tmp_44_reg_8423;
wire   [63:0] tmp_46_fu_5627_p25;
reg   [63:0] tmp_46_reg_8428;
wire   [63:0] tmp_47_fu_5678_p25;
reg   [63:0] tmp_47_reg_8433;
wire   [63:0] tmp_48_fu_5729_p25;
reg   [63:0] tmp_48_reg_8438;
wire   [63:0] tmp_49_fu_5780_p25;
reg   [63:0] tmp_49_reg_8443;
wire   [63:0] tmp_50_fu_5831_p25;
reg   [63:0] tmp_50_reg_8448;
wire   [63:0] tmp_51_fu_5882_p25;
reg   [63:0] tmp_51_reg_8453;
wire   [63:0] tmp_52_fu_5933_p25;
reg   [63:0] tmp_52_reg_8458;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_6_fu_3601_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_3615_p1;
wire   [63:0] zext_ln316_fu_3629_p1;
wire   [63:0] zext_ln317_fu_3643_p1;
wire   [63:0] zext_ln318_fu_3657_p1;
wire   [63:0] zext_ln319_fu_3671_p1;
wire   [63:0] zext_ln320_fu_3685_p1;
wire   [63:0] zext_ln321_fu_3699_p1;
wire   [63:0] zext_ln172_9_fu_4207_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln315_1_fu_4221_p1;
wire   [63:0] zext_ln316_1_fu_4235_p1;
wire   [63:0] zext_ln317_1_fu_4249_p1;
wire   [63:0] zext_ln318_1_fu_4263_p1;
wire   [63:0] zext_ln319_1_fu_4277_p1;
wire   [63:0] zext_ln320_1_fu_4291_p1;
wire   [63:0] zext_ln321_1_fu_4305_p1;
wire   [63:0] zext_ln314_fu_4413_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_4_fu_4429_p1;
wire   [63:0] zext_ln172_12_fu_4845_p1;
wire   [63:0] zext_ln315_2_fu_4859_p1;
wire   [63:0] zext_ln316_2_fu_4873_p1;
wire   [63:0] zext_ln317_2_fu_4887_p1;
wire   [63:0] zext_ln318_2_fu_4901_p1;
wire   [63:0] zext_ln319_2_fu_4915_p1;
wire   [63:0] zext_ln320_2_fu_4929_p1;
wire   [63:0] zext_ln321_2_fu_4943_p1;
wire   [63:0] zext_ln314_1_fu_4997_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_5_fu_5013_p1;
wire   [63:0] zext_ln172_13_fu_5429_p1;
wire   [63:0] zext_ln315_3_fu_5452_p1;
wire   [63:0] zext_ln316_3_fu_5466_p1;
wire   [63:0] zext_ln317_3_fu_5480_p1;
wire   [63:0] zext_ln318_3_fu_5494_p1;
wire   [63:0] zext_ln319_3_fu_5508_p1;
wire   [63:0] zext_ln320_3_fu_5522_p1;
wire   [63:0] zext_ln321_3_fu_5536_p1;
wire   [63:0] zext_ln314_2_fu_5555_p1;
wire   [63:0] zext_ln315_6_fu_5568_p1;
wire   [63:0] zext_ln314_3_fu_5991_p1;
wire   [63:0] zext_ln315_7_fu_6006_p1;
reg   [6:0] tid_fu_156;
wire   [6:0] add_ln309_fu_3430_p2;
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
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
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
wire   [5:0] trunc_ln312_fu_3358_p1;
wire   [8:0] grp_fu_3370_p0;
wire   [4:0] grp_fu_3370_p1;
wire   [4:0] tmp_75_fu_3376_p4;
wire   [8:0] grp_fu_3394_p0;
wire   [4:0] grp_fu_3394_p1;
wire   [3:0] grp_fu_3323_p4;
wire   [8:0] grp_fu_3409_p0;
wire   [4:0] grp_fu_3409_p1;
wire   [8:0] grp_fu_3424_p0;
wire   [4:0] grp_fu_3424_p1;
wire   [20:0] tmp_68_fu_3449_p1;
wire  signed [20:0] grp_fu_6014_p3;
wire   [20:0] tmp_69_fu_3458_p1;
wire  signed [20:0] grp_fu_6023_p3;
wire   [20:0] tmp_70_fu_3467_p1;
wire  signed [20:0] grp_fu_6032_p3;
wire   [20:0] tmp_71_fu_3476_p1;
wire  signed [20:0] grp_fu_6041_p3;
wire   [20:0] tmp_72_fu_3485_p1;
wire  signed [20:0] grp_fu_6050_p3;
wire   [20:0] tmp_73_fu_3494_p1;
wire  signed [20:0] grp_fu_6059_p3;
wire   [20:0] tmp_74_fu_3503_p1;
wire  signed [20:0] grp_fu_6068_p3;
wire   [8:0] mul_ln172_fu_3518_p0;
wire   [10:0] mul_ln172_fu_3518_p1;
wire   [18:0] mul_ln172_fu_3518_p2;
wire   [3:0] grp_fu_3370_p2;
wire   [20:0] tmp_77_fu_3538_p1;
wire  signed [20:0] grp_fu_6077_p3;
wire   [20:0] tmp_78_fu_3547_p1;
wire  signed [20:0] grp_fu_6086_p3;
wire   [20:0] tmp_79_fu_3556_p1;
wire  signed [20:0] grp_fu_6095_p3;
wire   [20:0] tmp_80_fu_3565_p1;
wire  signed [20:0] grp_fu_6104_p3;
wire   [20:0] tmp_81_fu_3574_p1;
wire  signed [20:0] grp_fu_6113_p3;
wire   [20:0] tmp_82_fu_3583_p1;
wire  signed [20:0] grp_fu_6122_p3;
wire   [20:0] tmp_83_fu_3592_p1;
wire  signed [20:0] grp_fu_6131_p3;
wire   [8:0] mul_ln172_1_fu_3716_p0;
wire   [10:0] mul_ln172_1_fu_3716_p1;
wire   [18:0] mul_ln172_1_fu_3716_p2;
wire   [3:0] grp_fu_3394_p2;
wire   [20:0] tmp_86_fu_3736_p1;
wire  signed [20:0] grp_fu_6140_p3;
wire   [20:0] tmp_87_fu_3745_p1;
wire  signed [20:0] grp_fu_6149_p3;
wire   [20:0] tmp_88_fu_3754_p1;
wire  signed [20:0] grp_fu_6158_p3;
wire   [20:0] tmp_89_fu_3763_p1;
wire  signed [20:0] grp_fu_6167_p3;
wire   [20:0] tmp_90_fu_3772_p1;
wire  signed [20:0] grp_fu_6176_p3;
wire   [20:0] tmp_91_fu_3781_p1;
wire  signed [20:0] grp_fu_6185_p3;
wire   [20:0] tmp_92_fu_3790_p1;
wire  signed [20:0] grp_fu_6194_p3;
wire   [63:0] tmp_s_fu_3799_p23;
wire   [63:0] tmp_20_fu_3850_p23;
wire   [63:0] tmp_21_fu_3901_p23;
wire   [63:0] tmp_22_fu_3952_p23;
wire   [63:0] tmp_23_fu_4003_p23;
wire   [63:0] tmp_24_fu_4054_p23;
wire   [63:0] tmp_25_fu_4105_p23;
wire   [63:0] tmp_26_fu_4156_p23;
wire   [8:0] mul_ln172_2_fu_4322_p0;
wire   [10:0] mul_ln172_2_fu_4322_p1;
wire   [18:0] mul_ln172_2_fu_4322_p2;
wire   [3:0] grp_fu_3409_p2;
wire   [20:0] tmp_95_fu_4342_p1;
wire  signed [20:0] grp_fu_6203_p3;
wire   [20:0] tmp_96_fu_4351_p1;
wire  signed [20:0] grp_fu_6212_p3;
wire   [20:0] tmp_97_fu_4360_p1;
wire  signed [20:0] grp_fu_6221_p3;
wire   [20:0] tmp_98_fu_4369_p1;
wire  signed [20:0] grp_fu_6230_p3;
wire   [20:0] tmp_99_fu_4378_p1;
wire  signed [20:0] grp_fu_6239_p3;
wire   [20:0] tmp_100_fu_4387_p1;
wire  signed [20:0] grp_fu_6248_p3;
wire   [20:0] tmp_101_fu_4396_p1;
wire  signed [20:0] grp_fu_6257_p3;
wire   [6:0] shl_ln314_fu_4408_p2;
wire   [5:0] trunc_ln314_fu_4405_p1;
wire   [6:0] or_ln_fu_4421_p3;
wire   [63:0] tmp_27_fu_4437_p23;
wire   [63:0] tmp_29_fu_4488_p23;
wire   [63:0] tmp_30_fu_4539_p23;
wire   [63:0] tmp_31_fu_4590_p23;
wire   [63:0] tmp_32_fu_4641_p23;
wire   [63:0] tmp_33_fu_4692_p23;
wire   [63:0] tmp_34_fu_4743_p23;
wire   [63:0] tmp_35_fu_4794_p23;
wire   [8:0] mul_ln172_3_fu_4960_p0;
wire   [10:0] mul_ln172_3_fu_4960_p1;
wire   [18:0] mul_ln172_3_fu_4960_p2;
wire   [3:0] grp_fu_3424_p2;
wire   [4:0] tmp_28_fu_4980_p4;
wire   [6:0] or_ln315_1_fu_5005_p3;
wire   [63:0] tmp_36_fu_5021_p23;
wire   [63:0] tmp_37_fu_5072_p23;
wire   [63:0] tmp_38_fu_5123_p23;
wire   [63:0] tmp_39_fu_5174_p23;
wire   [63:0] tmp_40_fu_5225_p23;
wire   [63:0] tmp_41_fu_5276_p23;
wire   [63:0] tmp_42_fu_5327_p23;
wire   [63:0] tmp_43_fu_5378_p23;
wire   [6:0] add_ln314_fu_5550_p2;
wire   [6:0] add_ln315_3_fu_5563_p2;
wire   [63:0] tmp_44_fu_5576_p23;
wire   [63:0] tmp_46_fu_5627_p23;
wire   [63:0] tmp_47_fu_5678_p23;
wire   [63:0] tmp_48_fu_5729_p23;
wire   [63:0] tmp_49_fu_5780_p23;
wire   [63:0] tmp_50_fu_5831_p23;
wire   [63:0] tmp_51_fu_5882_p23;
wire   [63:0] tmp_52_fu_5933_p23;
wire   [6:0] or_ln1_fu_5984_p3;
wire   [6:0] or_ln315_2_fu_5999_p3;
wire   [8:0] grp_fu_6014_p0;
wire   [9:0] zext_ln172_fu_3440_p1;
wire   [5:0] grp_fu_6014_p1;
wire   [10:0] grp_fu_6014_p2;
wire   [8:0] grp_fu_6023_p0;
wire   [3:0] grp_fu_6023_p1;
wire   [10:0] grp_fu_6023_p2;
wire   [8:0] grp_fu_6032_p0;
wire   [5:0] grp_fu_6032_p1;
wire   [10:0] grp_fu_6032_p2;
wire   [8:0] grp_fu_6041_p0;
wire   [4:0] grp_fu_6041_p1;
wire   [10:0] grp_fu_6041_p2;
wire   [8:0] grp_fu_6050_p0;
wire   [5:0] grp_fu_6050_p1;
wire   [10:0] grp_fu_6050_p2;
wire   [8:0] grp_fu_6059_p0;
wire   [4:0] grp_fu_6059_p1;
wire   [10:0] grp_fu_6059_p2;
wire   [8:0] grp_fu_6068_p0;
wire   [5:0] grp_fu_6068_p1;
wire   [10:0] grp_fu_6068_p2;
wire   [8:0] grp_fu_6077_p0;
wire   [9:0] zext_ln172_7_fu_3443_p1;
wire   [5:0] grp_fu_6077_p1;
wire   [10:0] grp_fu_6077_p2;
wire   [8:0] grp_fu_6086_p0;
wire   [3:0] grp_fu_6086_p1;
wire   [10:0] grp_fu_6086_p2;
wire   [8:0] grp_fu_6095_p0;
wire   [5:0] grp_fu_6095_p1;
wire   [10:0] grp_fu_6095_p2;
wire   [8:0] grp_fu_6104_p0;
wire   [4:0] grp_fu_6104_p1;
wire   [10:0] grp_fu_6104_p2;
wire   [8:0] grp_fu_6113_p0;
wire   [5:0] grp_fu_6113_p1;
wire   [10:0] grp_fu_6113_p2;
wire   [8:0] grp_fu_6122_p0;
wire   [4:0] grp_fu_6122_p1;
wire   [10:0] grp_fu_6122_p2;
wire   [8:0] grp_fu_6131_p0;
wire   [5:0] grp_fu_6131_p1;
wire   [10:0] grp_fu_6131_p2;
wire   [8:0] grp_fu_6140_p0;
wire   [9:0] zext_ln172_10_fu_3446_p1;
wire   [5:0] grp_fu_6140_p1;
wire   [10:0] grp_fu_6140_p2;
wire   [8:0] grp_fu_6149_p0;
wire   [3:0] grp_fu_6149_p1;
wire   [10:0] grp_fu_6149_p2;
wire   [8:0] grp_fu_6158_p0;
wire   [5:0] grp_fu_6158_p1;
wire   [10:0] grp_fu_6158_p2;
wire   [8:0] grp_fu_6167_p0;
wire   [4:0] grp_fu_6167_p1;
wire   [10:0] grp_fu_6167_p2;
wire   [8:0] grp_fu_6176_p0;
wire   [5:0] grp_fu_6176_p1;
wire   [10:0] grp_fu_6176_p2;
wire   [8:0] grp_fu_6185_p0;
wire   [4:0] grp_fu_6185_p1;
wire   [10:0] grp_fu_6185_p2;
wire   [8:0] grp_fu_6194_p0;
wire   [5:0] grp_fu_6194_p1;
wire   [10:0] grp_fu_6194_p2;
wire   [8:0] grp_fu_6203_p0;
wire   [9:0] zext_ln172_14_fu_3512_p1;
wire   [5:0] grp_fu_6203_p1;
wire   [10:0] grp_fu_6203_p2;
wire   [8:0] grp_fu_6212_p0;
wire   [3:0] grp_fu_6212_p1;
wire   [10:0] grp_fu_6212_p2;
wire   [8:0] grp_fu_6221_p0;
wire   [5:0] grp_fu_6221_p1;
wire   [10:0] grp_fu_6221_p2;
wire   [8:0] grp_fu_6230_p0;
wire   [4:0] grp_fu_6230_p1;
wire   [10:0] grp_fu_6230_p2;
wire   [8:0] grp_fu_6239_p0;
wire   [5:0] grp_fu_6239_p1;
wire   [10:0] grp_fu_6239_p2;
wire   [8:0] grp_fu_6248_p0;
wire   [4:0] grp_fu_6248_p1;
wire   [10:0] grp_fu_6248_p2;
wire   [8:0] grp_fu_6257_p0;
wire   [5:0] grp_fu_6257_p1;
wire   [10:0] grp_fu_6257_p2;
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
wire   [18:0] mul_ln172_1_fu_3716_p00;
wire   [18:0] mul_ln172_2_fu_4322_p00;
wire   [18:0] mul_ln172_3_fu_4960_p00;
wire   [18:0] mul_ln172_fu_3518_p00;
wire   [3:0] tmp_s_fu_3799_p1;
wire   [3:0] tmp_s_fu_3799_p3;
wire   [3:0] tmp_s_fu_3799_p5;
wire   [3:0] tmp_s_fu_3799_p7;
wire   [3:0] tmp_s_fu_3799_p9;
wire   [3:0] tmp_s_fu_3799_p11;
wire   [3:0] tmp_s_fu_3799_p13;
wire   [3:0] tmp_s_fu_3799_p15;
wire  signed [3:0] tmp_s_fu_3799_p17;
wire  signed [3:0] tmp_s_fu_3799_p19;
wire  signed [3:0] tmp_s_fu_3799_p21;
wire   [3:0] tmp_20_fu_3850_p1;
wire   [3:0] tmp_20_fu_3850_p3;
wire   [3:0] tmp_20_fu_3850_p5;
wire   [3:0] tmp_20_fu_3850_p7;
wire   [3:0] tmp_20_fu_3850_p9;
wire   [3:0] tmp_20_fu_3850_p11;
wire   [3:0] tmp_20_fu_3850_p13;
wire  signed [3:0] tmp_20_fu_3850_p15;
wire  signed [3:0] tmp_20_fu_3850_p17;
wire  signed [3:0] tmp_20_fu_3850_p19;
wire   [3:0] tmp_20_fu_3850_p21;
wire   [3:0] tmp_21_fu_3901_p1;
wire   [3:0] tmp_21_fu_3901_p3;
wire   [3:0] tmp_21_fu_3901_p5;
wire   [3:0] tmp_21_fu_3901_p7;
wire   [3:0] tmp_21_fu_3901_p9;
wire  signed [3:0] tmp_21_fu_3901_p11;
wire  signed [3:0] tmp_21_fu_3901_p13;
wire  signed [3:0] tmp_21_fu_3901_p15;
wire   [3:0] tmp_21_fu_3901_p17;
wire   [3:0] tmp_21_fu_3901_p19;
wire   [3:0] tmp_21_fu_3901_p21;
wire   [3:0] tmp_22_fu_3952_p1;
wire   [3:0] tmp_22_fu_3952_p3;
wire   [3:0] tmp_22_fu_3952_p5;
wire   [3:0] tmp_22_fu_3952_p7;
wire  signed [3:0] tmp_22_fu_3952_p9;
wire  signed [3:0] tmp_22_fu_3952_p11;
wire  signed [3:0] tmp_22_fu_3952_p13;
wire   [3:0] tmp_22_fu_3952_p15;
wire   [3:0] tmp_22_fu_3952_p17;
wire   [3:0] tmp_22_fu_3952_p19;
wire   [3:0] tmp_22_fu_3952_p21;
wire   [3:0] tmp_23_fu_4003_p1;
wire   [3:0] tmp_23_fu_4003_p3;
wire  signed [3:0] tmp_23_fu_4003_p5;
wire  signed [3:0] tmp_23_fu_4003_p7;
wire  signed [3:0] tmp_23_fu_4003_p9;
wire   [3:0] tmp_23_fu_4003_p11;
wire   [3:0] tmp_23_fu_4003_p13;
wire   [3:0] tmp_23_fu_4003_p15;
wire   [3:0] tmp_23_fu_4003_p17;
wire   [3:0] tmp_23_fu_4003_p19;
wire   [3:0] tmp_23_fu_4003_p21;
wire   [3:0] tmp_24_fu_4054_p1;
wire  signed [3:0] tmp_24_fu_4054_p3;
wire  signed [3:0] tmp_24_fu_4054_p5;
wire  signed [3:0] tmp_24_fu_4054_p7;
wire   [3:0] tmp_24_fu_4054_p9;
wire   [3:0] tmp_24_fu_4054_p11;
wire   [3:0] tmp_24_fu_4054_p13;
wire   [3:0] tmp_24_fu_4054_p15;
wire   [3:0] tmp_24_fu_4054_p17;
wire   [3:0] tmp_24_fu_4054_p19;
wire   [3:0] tmp_24_fu_4054_p21;
wire  signed [3:0] tmp_25_fu_4105_p1;
wire  signed [3:0] tmp_25_fu_4105_p3;
wire   [3:0] tmp_25_fu_4105_p5;
wire   [3:0] tmp_25_fu_4105_p7;
wire   [3:0] tmp_25_fu_4105_p9;
wire   [3:0] tmp_25_fu_4105_p11;
wire   [3:0] tmp_25_fu_4105_p13;
wire   [3:0] tmp_25_fu_4105_p15;
wire   [3:0] tmp_25_fu_4105_p17;
wire   [3:0] tmp_25_fu_4105_p19;
wire  signed [3:0] tmp_25_fu_4105_p21;
wire  signed [3:0] tmp_26_fu_4156_p1;
wire   [3:0] tmp_26_fu_4156_p3;
wire   [3:0] tmp_26_fu_4156_p5;
wire   [3:0] tmp_26_fu_4156_p7;
wire   [3:0] tmp_26_fu_4156_p9;
wire   [3:0] tmp_26_fu_4156_p11;
wire   [3:0] tmp_26_fu_4156_p13;
wire   [3:0] tmp_26_fu_4156_p15;
wire   [3:0] tmp_26_fu_4156_p17;
wire  signed [3:0] tmp_26_fu_4156_p19;
wire  signed [3:0] tmp_26_fu_4156_p21;
wire   [3:0] tmp_27_fu_4437_p1;
wire   [3:0] tmp_27_fu_4437_p3;
wire   [3:0] tmp_27_fu_4437_p5;
wire   [3:0] tmp_27_fu_4437_p7;
wire   [3:0] tmp_27_fu_4437_p9;
wire   [3:0] tmp_27_fu_4437_p11;
wire   [3:0] tmp_27_fu_4437_p13;
wire   [3:0] tmp_27_fu_4437_p15;
wire  signed [3:0] tmp_27_fu_4437_p17;
wire  signed [3:0] tmp_27_fu_4437_p19;
wire  signed [3:0] tmp_27_fu_4437_p21;
wire   [3:0] tmp_29_fu_4488_p1;
wire   [3:0] tmp_29_fu_4488_p3;
wire   [3:0] tmp_29_fu_4488_p5;
wire   [3:0] tmp_29_fu_4488_p7;
wire   [3:0] tmp_29_fu_4488_p9;
wire   [3:0] tmp_29_fu_4488_p11;
wire   [3:0] tmp_29_fu_4488_p13;
wire  signed [3:0] tmp_29_fu_4488_p15;
wire  signed [3:0] tmp_29_fu_4488_p17;
wire  signed [3:0] tmp_29_fu_4488_p19;
wire   [3:0] tmp_29_fu_4488_p21;
wire   [3:0] tmp_30_fu_4539_p1;
wire   [3:0] tmp_30_fu_4539_p3;
wire   [3:0] tmp_30_fu_4539_p5;
wire   [3:0] tmp_30_fu_4539_p7;
wire   [3:0] tmp_30_fu_4539_p9;
wire  signed [3:0] tmp_30_fu_4539_p11;
wire  signed [3:0] tmp_30_fu_4539_p13;
wire  signed [3:0] tmp_30_fu_4539_p15;
wire   [3:0] tmp_30_fu_4539_p17;
wire   [3:0] tmp_30_fu_4539_p19;
wire   [3:0] tmp_30_fu_4539_p21;
wire   [3:0] tmp_31_fu_4590_p1;
wire   [3:0] tmp_31_fu_4590_p3;
wire   [3:0] tmp_31_fu_4590_p5;
wire   [3:0] tmp_31_fu_4590_p7;
wire  signed [3:0] tmp_31_fu_4590_p9;
wire  signed [3:0] tmp_31_fu_4590_p11;
wire  signed [3:0] tmp_31_fu_4590_p13;
wire   [3:0] tmp_31_fu_4590_p15;
wire   [3:0] tmp_31_fu_4590_p17;
wire   [3:0] tmp_31_fu_4590_p19;
wire   [3:0] tmp_31_fu_4590_p21;
wire   [3:0] tmp_32_fu_4641_p1;
wire   [3:0] tmp_32_fu_4641_p3;
wire  signed [3:0] tmp_32_fu_4641_p5;
wire  signed [3:0] tmp_32_fu_4641_p7;
wire  signed [3:0] tmp_32_fu_4641_p9;
wire   [3:0] tmp_32_fu_4641_p11;
wire   [3:0] tmp_32_fu_4641_p13;
wire   [3:0] tmp_32_fu_4641_p15;
wire   [3:0] tmp_32_fu_4641_p17;
wire   [3:0] tmp_32_fu_4641_p19;
wire   [3:0] tmp_32_fu_4641_p21;
wire   [3:0] tmp_33_fu_4692_p1;
wire  signed [3:0] tmp_33_fu_4692_p3;
wire  signed [3:0] tmp_33_fu_4692_p5;
wire  signed [3:0] tmp_33_fu_4692_p7;
wire   [3:0] tmp_33_fu_4692_p9;
wire   [3:0] tmp_33_fu_4692_p11;
wire   [3:0] tmp_33_fu_4692_p13;
wire   [3:0] tmp_33_fu_4692_p15;
wire   [3:0] tmp_33_fu_4692_p17;
wire   [3:0] tmp_33_fu_4692_p19;
wire   [3:0] tmp_33_fu_4692_p21;
wire  signed [3:0] tmp_34_fu_4743_p1;
wire  signed [3:0] tmp_34_fu_4743_p3;
wire   [3:0] tmp_34_fu_4743_p5;
wire   [3:0] tmp_34_fu_4743_p7;
wire   [3:0] tmp_34_fu_4743_p9;
wire   [3:0] tmp_34_fu_4743_p11;
wire   [3:0] tmp_34_fu_4743_p13;
wire   [3:0] tmp_34_fu_4743_p15;
wire   [3:0] tmp_34_fu_4743_p17;
wire   [3:0] tmp_34_fu_4743_p19;
wire  signed [3:0] tmp_34_fu_4743_p21;
wire  signed [3:0] tmp_35_fu_4794_p1;
wire   [3:0] tmp_35_fu_4794_p3;
wire   [3:0] tmp_35_fu_4794_p5;
wire   [3:0] tmp_35_fu_4794_p7;
wire   [3:0] tmp_35_fu_4794_p9;
wire   [3:0] tmp_35_fu_4794_p11;
wire   [3:0] tmp_35_fu_4794_p13;
wire   [3:0] tmp_35_fu_4794_p15;
wire   [3:0] tmp_35_fu_4794_p17;
wire  signed [3:0] tmp_35_fu_4794_p19;
wire  signed [3:0] tmp_35_fu_4794_p21;
wire   [3:0] tmp_36_fu_5021_p1;
wire   [3:0] tmp_36_fu_5021_p3;
wire   [3:0] tmp_36_fu_5021_p5;
wire   [3:0] tmp_36_fu_5021_p7;
wire   [3:0] tmp_36_fu_5021_p9;
wire   [3:0] tmp_36_fu_5021_p11;
wire   [3:0] tmp_36_fu_5021_p13;
wire   [3:0] tmp_36_fu_5021_p15;
wire  signed [3:0] tmp_36_fu_5021_p17;
wire  signed [3:0] tmp_36_fu_5021_p19;
wire  signed [3:0] tmp_36_fu_5021_p21;
wire   [3:0] tmp_37_fu_5072_p1;
wire   [3:0] tmp_37_fu_5072_p3;
wire   [3:0] tmp_37_fu_5072_p5;
wire   [3:0] tmp_37_fu_5072_p7;
wire   [3:0] tmp_37_fu_5072_p9;
wire   [3:0] tmp_37_fu_5072_p11;
wire   [3:0] tmp_37_fu_5072_p13;
wire  signed [3:0] tmp_37_fu_5072_p15;
wire  signed [3:0] tmp_37_fu_5072_p17;
wire  signed [3:0] tmp_37_fu_5072_p19;
wire   [3:0] tmp_37_fu_5072_p21;
wire   [3:0] tmp_38_fu_5123_p1;
wire   [3:0] tmp_38_fu_5123_p3;
wire   [3:0] tmp_38_fu_5123_p5;
wire   [3:0] tmp_38_fu_5123_p7;
wire   [3:0] tmp_38_fu_5123_p9;
wire  signed [3:0] tmp_38_fu_5123_p11;
wire  signed [3:0] tmp_38_fu_5123_p13;
wire  signed [3:0] tmp_38_fu_5123_p15;
wire   [3:0] tmp_38_fu_5123_p17;
wire   [3:0] tmp_38_fu_5123_p19;
wire   [3:0] tmp_38_fu_5123_p21;
wire   [3:0] tmp_39_fu_5174_p1;
wire   [3:0] tmp_39_fu_5174_p3;
wire   [3:0] tmp_39_fu_5174_p5;
wire   [3:0] tmp_39_fu_5174_p7;
wire  signed [3:0] tmp_39_fu_5174_p9;
wire  signed [3:0] tmp_39_fu_5174_p11;
wire  signed [3:0] tmp_39_fu_5174_p13;
wire   [3:0] tmp_39_fu_5174_p15;
wire   [3:0] tmp_39_fu_5174_p17;
wire   [3:0] tmp_39_fu_5174_p19;
wire   [3:0] tmp_39_fu_5174_p21;
wire   [3:0] tmp_40_fu_5225_p1;
wire   [3:0] tmp_40_fu_5225_p3;
wire  signed [3:0] tmp_40_fu_5225_p5;
wire  signed [3:0] tmp_40_fu_5225_p7;
wire  signed [3:0] tmp_40_fu_5225_p9;
wire   [3:0] tmp_40_fu_5225_p11;
wire   [3:0] tmp_40_fu_5225_p13;
wire   [3:0] tmp_40_fu_5225_p15;
wire   [3:0] tmp_40_fu_5225_p17;
wire   [3:0] tmp_40_fu_5225_p19;
wire   [3:0] tmp_40_fu_5225_p21;
wire   [3:0] tmp_41_fu_5276_p1;
wire  signed [3:0] tmp_41_fu_5276_p3;
wire  signed [3:0] tmp_41_fu_5276_p5;
wire  signed [3:0] tmp_41_fu_5276_p7;
wire   [3:0] tmp_41_fu_5276_p9;
wire   [3:0] tmp_41_fu_5276_p11;
wire   [3:0] tmp_41_fu_5276_p13;
wire   [3:0] tmp_41_fu_5276_p15;
wire   [3:0] tmp_41_fu_5276_p17;
wire   [3:0] tmp_41_fu_5276_p19;
wire   [3:0] tmp_41_fu_5276_p21;
wire  signed [3:0] tmp_42_fu_5327_p1;
wire  signed [3:0] tmp_42_fu_5327_p3;
wire   [3:0] tmp_42_fu_5327_p5;
wire   [3:0] tmp_42_fu_5327_p7;
wire   [3:0] tmp_42_fu_5327_p9;
wire   [3:0] tmp_42_fu_5327_p11;
wire   [3:0] tmp_42_fu_5327_p13;
wire   [3:0] tmp_42_fu_5327_p15;
wire   [3:0] tmp_42_fu_5327_p17;
wire   [3:0] tmp_42_fu_5327_p19;
wire  signed [3:0] tmp_42_fu_5327_p21;
wire  signed [3:0] tmp_43_fu_5378_p1;
wire   [3:0] tmp_43_fu_5378_p3;
wire   [3:0] tmp_43_fu_5378_p5;
wire   [3:0] tmp_43_fu_5378_p7;
wire   [3:0] tmp_43_fu_5378_p9;
wire   [3:0] tmp_43_fu_5378_p11;
wire   [3:0] tmp_43_fu_5378_p13;
wire   [3:0] tmp_43_fu_5378_p15;
wire   [3:0] tmp_43_fu_5378_p17;
wire  signed [3:0] tmp_43_fu_5378_p19;
wire  signed [3:0] tmp_43_fu_5378_p21;
wire   [3:0] tmp_44_fu_5576_p1;
wire   [3:0] tmp_44_fu_5576_p3;
wire   [3:0] tmp_44_fu_5576_p5;
wire   [3:0] tmp_44_fu_5576_p7;
wire   [3:0] tmp_44_fu_5576_p9;
wire   [3:0] tmp_44_fu_5576_p11;
wire   [3:0] tmp_44_fu_5576_p13;
wire   [3:0] tmp_44_fu_5576_p15;
wire  signed [3:0] tmp_44_fu_5576_p17;
wire  signed [3:0] tmp_44_fu_5576_p19;
wire  signed [3:0] tmp_44_fu_5576_p21;
wire   [3:0] tmp_46_fu_5627_p1;
wire   [3:0] tmp_46_fu_5627_p3;
wire   [3:0] tmp_46_fu_5627_p5;
wire   [3:0] tmp_46_fu_5627_p7;
wire   [3:0] tmp_46_fu_5627_p9;
wire   [3:0] tmp_46_fu_5627_p11;
wire   [3:0] tmp_46_fu_5627_p13;
wire  signed [3:0] tmp_46_fu_5627_p15;
wire  signed [3:0] tmp_46_fu_5627_p17;
wire  signed [3:0] tmp_46_fu_5627_p19;
wire   [3:0] tmp_46_fu_5627_p21;
wire   [3:0] tmp_47_fu_5678_p1;
wire   [3:0] tmp_47_fu_5678_p3;
wire   [3:0] tmp_47_fu_5678_p5;
wire   [3:0] tmp_47_fu_5678_p7;
wire   [3:0] tmp_47_fu_5678_p9;
wire  signed [3:0] tmp_47_fu_5678_p11;
wire  signed [3:0] tmp_47_fu_5678_p13;
wire  signed [3:0] tmp_47_fu_5678_p15;
wire   [3:0] tmp_47_fu_5678_p17;
wire   [3:0] tmp_47_fu_5678_p19;
wire   [3:0] tmp_47_fu_5678_p21;
wire   [3:0] tmp_48_fu_5729_p1;
wire   [3:0] tmp_48_fu_5729_p3;
wire   [3:0] tmp_48_fu_5729_p5;
wire   [3:0] tmp_48_fu_5729_p7;
wire  signed [3:0] tmp_48_fu_5729_p9;
wire  signed [3:0] tmp_48_fu_5729_p11;
wire  signed [3:0] tmp_48_fu_5729_p13;
wire   [3:0] tmp_48_fu_5729_p15;
wire   [3:0] tmp_48_fu_5729_p17;
wire   [3:0] tmp_48_fu_5729_p19;
wire   [3:0] tmp_48_fu_5729_p21;
wire   [3:0] tmp_49_fu_5780_p1;
wire   [3:0] tmp_49_fu_5780_p3;
wire  signed [3:0] tmp_49_fu_5780_p5;
wire  signed [3:0] tmp_49_fu_5780_p7;
wire  signed [3:0] tmp_49_fu_5780_p9;
wire   [3:0] tmp_49_fu_5780_p11;
wire   [3:0] tmp_49_fu_5780_p13;
wire   [3:0] tmp_49_fu_5780_p15;
wire   [3:0] tmp_49_fu_5780_p17;
wire   [3:0] tmp_49_fu_5780_p19;
wire   [3:0] tmp_49_fu_5780_p21;
wire   [3:0] tmp_50_fu_5831_p1;
wire  signed [3:0] tmp_50_fu_5831_p3;
wire  signed [3:0] tmp_50_fu_5831_p5;
wire  signed [3:0] tmp_50_fu_5831_p7;
wire   [3:0] tmp_50_fu_5831_p9;
wire   [3:0] tmp_50_fu_5831_p11;
wire   [3:0] tmp_50_fu_5831_p13;
wire   [3:0] tmp_50_fu_5831_p15;
wire   [3:0] tmp_50_fu_5831_p17;
wire   [3:0] tmp_50_fu_5831_p19;
wire   [3:0] tmp_50_fu_5831_p21;
wire  signed [3:0] tmp_51_fu_5882_p1;
wire  signed [3:0] tmp_51_fu_5882_p3;
wire   [3:0] tmp_51_fu_5882_p5;
wire   [3:0] tmp_51_fu_5882_p7;
wire   [3:0] tmp_51_fu_5882_p9;
wire   [3:0] tmp_51_fu_5882_p11;
wire   [3:0] tmp_51_fu_5882_p13;
wire   [3:0] tmp_51_fu_5882_p15;
wire   [3:0] tmp_51_fu_5882_p17;
wire   [3:0] tmp_51_fu_5882_p19;
wire  signed [3:0] tmp_51_fu_5882_p21;
wire  signed [3:0] tmp_52_fu_5933_p1;
wire   [3:0] tmp_52_fu_5933_p3;
wire   [3:0] tmp_52_fu_5933_p5;
wire   [3:0] tmp_52_fu_5933_p7;
wire   [3:0] tmp_52_fu_5933_p9;
wire   [3:0] tmp_52_fu_5933_p11;
wire   [3:0] tmp_52_fu_5933_p13;
wire   [3:0] tmp_52_fu_5933_p15;
wire   [3:0] tmp_52_fu_5933_p17;
wire  signed [3:0] tmp_52_fu_5933_p19;
wire  signed [3:0] tmp_52_fu_5933_p21;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_156 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U437(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3370_p0),.din1(grp_fu_3370_p1),.ce(1'b1),.dout(grp_fu_3370_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U438(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3394_p0),.din1(grp_fu_3394_p1),.ce(1'b1),.dout(grp_fu_3394_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U439(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3409_p0),.din1(grp_fu_3409_p1),.ce(1'b1),.dout(grp_fu_3409_p2));
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U440(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3424_p0),.din1(grp_fu_3424_p1),.ce(1'b1),.dout(grp_fu_3424_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U441(.din0(mul_ln172_fu_3518_p0),.din1(mul_ln172_fu_3518_p1),.dout(mul_ln172_fu_3518_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U442(.din0(mul_ln172_1_fu_3716_p0),.din1(mul_ln172_1_fu_3716_p1),.dout(mul_ln172_1_fu_3716_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U443(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_s_fu_3799_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_s_fu_3799_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U444(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_20_fu_3850_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_20_fu_3850_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U445(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_21_fu_3901_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_21_fu_3901_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U446(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_22_fu_3952_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_22_fu_3952_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U447(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_23_fu_4003_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_23_fu_4003_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U448(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_24_fu_4054_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_24_fu_4054_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U449(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_25_fu_4105_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_25_fu_4105_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U450(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_26_fu_4156_p23),.sel(trunc_ln172_reg_6363),.dout(tmp_26_fu_4156_p25));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U451(.din0(mul_ln172_2_fu_4322_p0),.din1(mul_ln172_2_fu_4322_p1),.dout(mul_ln172_2_fu_4322_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U452(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_27_fu_4437_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_27_fu_4437_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U453(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_29_fu_4488_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_29_fu_4488_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U454(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_30_fu_4539_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_30_fu_4539_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U455(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_31_fu_4590_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_31_fu_4590_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U456(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_32_fu_4641_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_32_fu_4641_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U457(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_33_fu_4692_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_33_fu_4692_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U458(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_34_fu_4743_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_34_fu_4743_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U459(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_35_fu_4794_p23),.sel(trunc_ln172_1_reg_6855),.dout(tmp_35_fu_4794_p25));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U460(.din0(mul_ln172_3_fu_4960_p0),.din1(mul_ln172_3_fu_4960_p1),.dout(mul_ln172_3_fu_4960_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U461(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_36_fu_5021_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_36_fu_5021_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U462(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_37_fu_5072_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_37_fu_5072_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U463(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_38_fu_5123_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_38_fu_5123_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U464(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_39_fu_5174_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_39_fu_5174_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U465(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_40_fu_5225_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_40_fu_5225_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U466(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_41_fu_5276_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_41_fu_5276_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U467(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_42_fu_5327_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_42_fu_5327_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U468(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_43_fu_5378_p23),.sel(trunc_ln172_2_reg_7387),.dout(tmp_43_fu_5378_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U469(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_44_fu_5576_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_44_fu_5576_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U470(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_46_fu_5627_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_46_fu_5627_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U471(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_47_fu_5678_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_47_fu_5678_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U472(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_48_fu_5729_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_48_fu_5729_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U473(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_49_fu_5780_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_49_fu_5780_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U474(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_50_fu_5831_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_50_fu_5831_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U475(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_51_fu_5882_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_51_fu_5882_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U476(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_52_fu_5933_p23),.sel(trunc_ln172_3_reg_7919),.dout(tmp_52_fu_5933_p25));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U477(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6014_p0),.din1(grp_fu_6014_p1),.din2(grp_fu_6014_p2),.ce(1'b1),.dout(grp_fu_6014_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U478(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6023_p0),.din1(grp_fu_6023_p1),.din2(grp_fu_6023_p2),.ce(1'b1),.dout(grp_fu_6023_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U479(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6032_p0),.din1(grp_fu_6032_p1),.din2(grp_fu_6032_p2),.ce(1'b1),.dout(grp_fu_6032_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U480(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6041_p0),.din1(grp_fu_6041_p1),.din2(grp_fu_6041_p2),.ce(1'b1),.dout(grp_fu_6041_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U481(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6050_p0),.din1(grp_fu_6050_p1),.din2(grp_fu_6050_p2),.ce(1'b1),.dout(grp_fu_6050_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U482(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6059_p0),.din1(grp_fu_6059_p1),.din2(grp_fu_6059_p2),.ce(1'b1),.dout(grp_fu_6059_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U483(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6068_p0),.din1(grp_fu_6068_p1),.din2(grp_fu_6068_p2),.ce(1'b1),.dout(grp_fu_6068_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U484(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6077_p0),.din1(grp_fu_6077_p1),.din2(grp_fu_6077_p2),.ce(1'b1),.dout(grp_fu_6077_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U485(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6086_p0),.din1(grp_fu_6086_p1),.din2(grp_fu_6086_p2),.ce(1'b1),.dout(grp_fu_6086_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U486(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6095_p0),.din1(grp_fu_6095_p1),.din2(grp_fu_6095_p2),.ce(1'b1),.dout(grp_fu_6095_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U487(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6104_p0),.din1(grp_fu_6104_p1),.din2(grp_fu_6104_p2),.ce(1'b1),.dout(grp_fu_6104_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U488(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6113_p0),.din1(grp_fu_6113_p1),.din2(grp_fu_6113_p2),.ce(1'b1),.dout(grp_fu_6113_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U489(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6122_p0),.din1(grp_fu_6122_p1),.din2(grp_fu_6122_p2),.ce(1'b1),.dout(grp_fu_6122_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U490(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6131_p0),.din1(grp_fu_6131_p1),.din2(grp_fu_6131_p2),.ce(1'b1),.dout(grp_fu_6131_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U491(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6140_p0),.din1(grp_fu_6140_p1),.din2(grp_fu_6140_p2),.ce(1'b1),.dout(grp_fu_6140_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U492(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6149_p0),.din1(grp_fu_6149_p1),.din2(grp_fu_6149_p2),.ce(1'b1),.dout(grp_fu_6149_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U493(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6158_p0),.din1(grp_fu_6158_p1),.din2(grp_fu_6158_p2),.ce(1'b1),.dout(grp_fu_6158_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U494(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6167_p0),.din1(grp_fu_6167_p1),.din2(grp_fu_6167_p2),.ce(1'b1),.dout(grp_fu_6167_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U495(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6176_p0),.din1(grp_fu_6176_p1),.din2(grp_fu_6176_p2),.ce(1'b1),.dout(grp_fu_6176_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U496(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6185_p0),.din1(grp_fu_6185_p1),.din2(grp_fu_6185_p2),.ce(1'b1),.dout(grp_fu_6185_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U497(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6194_p0),.din1(grp_fu_6194_p1),.din2(grp_fu_6194_p2),.ce(1'b1),.dout(grp_fu_6194_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U498(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6203_p0),.din1(grp_fu_6203_p1),.din2(grp_fu_6203_p2),.ce(1'b1),.dout(grp_fu_6203_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U499(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6212_p0),.din1(grp_fu_6212_p1),.din2(grp_fu_6212_p2),.ce(1'b1),.dout(grp_fu_6212_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U500(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6221_p0),.din1(grp_fu_6221_p1),.din2(grp_fu_6221_p2),.ce(1'b1),.dout(grp_fu_6221_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U501(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6230_p0),.din1(grp_fu_6230_p1),.din2(grp_fu_6230_p2),.ce(1'b1),.dout(grp_fu_6230_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U502(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6239_p0),.din1(grp_fu_6239_p1),.din2(grp_fu_6239_p2),.ce(1'b1),.dout(grp_fu_6239_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U503(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6248_p0),.din1(grp_fu_6248_p1),.din2(grp_fu_6248_p2),.ce(1'b1),.dout(grp_fu_6248_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U504(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_6257_p0),.din1(grp_fu_6257_p1),.din2(grp_fu_6257_p2),.ce(1'b1),.dout(grp_fu_6257_p3));
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
        tid_fu_156 <= 7'd0;
    end else if (((tmp_reg_6284 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_156 <= add_ln309_fu_3430_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_1_reg_6302[8 : 1] <= offset_1_fu_3385_p4[8 : 1];
        offset_1_reg_6302_pp0_iter1_reg[8 : 1] <= offset_1_reg_6302[8 : 1];
        offset_1_reg_6302_pp0_iter2_reg[8 : 1] <= offset_1_reg_6302_pp0_iter1_reg[8 : 1];
        tmp_44_reg_8423 <= tmp_44_fu_5576_p25;
        tmp_46_reg_8428 <= tmp_46_fu_5627_p25;
        tmp_47_reg_8433 <= tmp_47_fu_5678_p25;
        tmp_48_reg_8438 <= tmp_48_fu_5729_p25;
        tmp_49_reg_8443 <= tmp_49_fu_5780_p25;
        tmp_50_reg_8448 <= tmp_50_fu_5831_p25;
        tmp_51_reg_8453 <= tmp_51_fu_5882_p25;
        tmp_52_reg_8458 <= tmp_52_fu_5933_p25;
        tmp_76_reg_6850 <= {{mul_ln172_1_fu_3716_p2[18:13]}};
        tmp_86_reg_6867 <= {{tmp_86_fu_3736_p1[20:14]}};
        tmp_87_reg_6872 <= {{tmp_87_fu_3745_p1[20:14]}};
        tmp_88_reg_6877 <= {{tmp_88_fu_3754_p1[20:14]}};
        tmp_89_reg_6882 <= {{tmp_89_fu_3763_p1[20:14]}};
        tmp_90_reg_6887 <= {{tmp_90_fu_3772_p1[20:14]}};
        tmp_91_reg_6892 <= {{tmp_91_fu_3781_p1[20:14]}};
        tmp_92_reg_6897 <= {{tmp_92_fu_3790_p1[20:14]}};
        trunc_ln172_1_reg_6855 <= trunc_ln172_1_fu_3732_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        offset_2_reg_6309[8 : 2] <= offset_2_fu_3400_p4[8 : 2];
        offset_2_reg_6309_pp0_iter1_reg[8 : 2] <= offset_2_reg_6309[8 : 2];
        offset_2_reg_6309_pp0_iter2_reg[8 : 2] <= offset_2_reg_6309_pp0_iter1_reg[8 : 2];
        tmp_100_reg_7424 <= {{tmp_100_fu_4387_p1[20:14]}};
        tmp_101_reg_7429 <= {{tmp_101_fu_4396_p1[20:14]}};
        tmp_20_reg_6907 <= tmp_20_fu_3850_p25;
        tmp_21_reg_6912 <= tmp_21_fu_3901_p25;
        tmp_22_reg_6917 <= tmp_22_fu_3952_p25;
        tmp_23_reg_6922 <= tmp_23_fu_4003_p25;
        tmp_24_reg_6927 <= tmp_24_fu_4054_p25;
        tmp_25_reg_6932 <= tmp_25_fu_4105_p25;
        tmp_26_reg_6937 <= tmp_26_fu_4156_p25;
        tmp_85_reg_7382 <= {{mul_ln172_2_fu_4322_p2[18:13]}};
        tmp_95_reg_7399 <= {{tmp_95_fu_4342_p1[20:14]}};
        tmp_96_reg_7404 <= {{tmp_96_fu_4351_p1[20:14]}};
        tmp_97_reg_7409 <= {{tmp_97_fu_4360_p1[20:14]}};
        tmp_98_reg_7414 <= {{tmp_98_fu_4369_p1[20:14]}};
        tmp_99_reg_7419 <= {{tmp_99_fu_4378_p1[20:14]}};
        tmp_s_reg_6902 <= tmp_s_fu_3799_p25;
        trunc_ln172_2_reg_7387 <= trunc_ln172_2_fu_4338_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        offset_3_reg_6316[8 : 2] <= offset_3_fu_3415_p4[8 : 2];
        offset_3_reg_6316_pp0_iter1_reg[8 : 2] <= offset_3_reg_6316[8 : 2];
        offset_3_reg_6316_pp0_iter2_reg[8 : 2] <= offset_3_reg_6316_pp0_iter1_reg[8 : 2];
        tmp_27_reg_7434 <= tmp_27_fu_4437_p25;
        tmp_29_reg_7439 <= tmp_29_fu_4488_p25;
        tmp_30_reg_7444 <= tmp_30_fu_4539_p25;
        tmp_31_reg_7449 <= tmp_31_fu_4590_p25;
        tmp_32_reg_7454 <= tmp_32_fu_4641_p25;
        tmp_33_reg_7459 <= tmp_33_fu_4692_p25;
        tmp_34_reg_7464 <= tmp_34_fu_4743_p25;
        tmp_35_reg_7469 <= tmp_35_fu_4794_p25;
        tmp_68_reg_6323 <= {{tmp_68_fu_3449_p1[20:14]}};
        tmp_69_reg_6328 <= {{tmp_69_fu_3458_p1[20:14]}};
        tmp_70_reg_6333 <= {{tmp_70_fu_3467_p1[20:14]}};
        tmp_71_reg_6338 <= {{tmp_71_fu_3476_p1[20:14]}};
        tmp_72_reg_6343 <= {{tmp_72_fu_3485_p1[20:14]}};
        tmp_73_reg_6348 <= {{tmp_73_fu_3494_p1[20:14]}};
        tmp_74_reg_6353 <= {{tmp_74_fu_3503_p1[20:14]}};
        tmp_94_reg_7914 <= {{mul_ln172_3_fu_4960_p2[18:13]}};
        trunc_ln172_3_reg_7919 <= trunc_ln172_3_fu_4976_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_6295 <= offset_fu_3362_p3;
        offset_reg_6295_pp0_iter1_reg <= offset_reg_6295;
        offset_reg_6295_pp0_iter2_reg <= offset_reg_6295_pp0_iter1_reg;
        shl_ln314_1_reg_7931[6 : 2] <= shl_ln314_1_fu_4989_p3[6 : 2];
        tid_2_reg_6273 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_6273_pp0_iter1_reg <= tid_2_reg_6273;
        tid_2_reg_6273_pp0_iter2_reg <= tid_2_reg_6273_pp0_iter1_reg;
        tid_2_reg_6273_pp0_iter3_reg <= tid_2_reg_6273_pp0_iter2_reg;
        tmp_36_reg_7937 <= tmp_36_fu_5021_p25;
        tmp_37_reg_7942 <= tmp_37_fu_5072_p25;
        tmp_38_reg_7947 <= tmp_38_fu_5123_p25;
        tmp_39_reg_7952 <= tmp_39_fu_5174_p25;
        tmp_40_reg_7957 <= tmp_40_fu_5225_p25;
        tmp_41_reg_7962 <= tmp_41_fu_5276_p25;
        tmp_42_reg_7967 <= tmp_42_fu_5327_p25;
        tmp_43_reg_7972 <= tmp_43_fu_5378_p25;
        tmp_45_reg_8032 <= {{tid_2_reg_6273_pp0_iter3_reg[5:2]}};
        tmp_66_reg_6288 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_67_reg_6358 <= {{mul_ln172_fu_3518_p2[18:13]}};
        tmp_77_reg_6375 <= {{tmp_77_fu_3538_p1[20:14]}};
        tmp_78_reg_6380 <= {{tmp_78_fu_3547_p1[20:14]}};
        tmp_79_reg_6385 <= {{tmp_79_fu_3556_p1[20:14]}};
        tmp_80_reg_6390 <= {{tmp_80_fu_3565_p1[20:14]}};
        tmp_81_reg_6395 <= {{tmp_81_fu_3574_p1[20:14]}};
        tmp_82_reg_6400 <= {{tmp_82_fu_3583_p1[20:14]}};
        tmp_83_reg_6405 <= {{tmp_83_fu_3592_p1[20:14]}};
        tmp_reg_6284 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_6284_pp0_iter1_reg <= tmp_reg_6284;
        tmp_reg_6284_pp0_iter2_reg <= tmp_reg_6284_pp0_iter1_reg;
        tmp_reg_6284_pp0_iter3_reg <= tmp_reg_6284_pp0_iter2_reg;
        trunc_ln172_reg_6363 <= trunc_ln172_fu_3534_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln315_7_fu_6006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_6_fu_5568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_5_fu_5013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_4_fu_4429_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln314_3_fu_5991_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_2_fu_5555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_4997_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_fu_4413_p1;
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
        DATA_x_1_d0_local = tmp_48_reg_8438;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_39_reg_7952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_31_reg_7449;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_22_reg_6917;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_47_reg_8433;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_38_reg_7947;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_30_reg_7444;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_21_reg_6912;
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
        DATA_x_2_address0_local = zext_ln315_7_fu_6006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln315_6_fu_5568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln315_5_fu_5013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln315_4_fu_4429_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_address1_local = zext_ln314_3_fu_5991_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address1_local = zext_ln314_2_fu_5555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address1_local = zext_ln314_1_fu_4997_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address1_local = zext_ln314_fu_4413_p1;
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
        DATA_x_2_d0_local = tmp_50_reg_8448;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_41_reg_7962;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_33_reg_7459;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d0_local = tmp_24_reg_6927;
    end else begin
        DATA_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_d1_local = tmp_49_reg_8443;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d1_local = tmp_40_reg_7957;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d1_local = tmp_32_reg_7454;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d1_local = tmp_23_reg_6922;
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
        DATA_x_3_address0_local = zext_ln315_7_fu_6006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln315_6_fu_5568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln315_5_fu_5013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address0_local = zext_ln315_4_fu_4429_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_address1_local = zext_ln314_3_fu_5991_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address1_local = zext_ln314_2_fu_5555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address1_local = zext_ln314_1_fu_4997_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address1_local = zext_ln314_fu_4413_p1;
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
        DATA_x_3_d0_local = tmp_52_reg_8458;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_43_reg_7972;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_35_reg_7469;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d0_local = tmp_26_reg_6937;
    end else begin
        DATA_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_3_d1_local = tmp_51_reg_8453;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d1_local = tmp_42_reg_7967;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d1_local = tmp_34_reg_7464;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d1_local = tmp_25_reg_6932;
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
        DATA_x_address0_local = zext_ln315_7_fu_6006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_6_fu_5568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln315_5_fu_5013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_4_fu_4429_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln314_3_fu_5991_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_2_fu_5555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln314_1_fu_4997_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_fu_4413_p1;
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
        DATA_x_d0_local = tmp_46_reg_8428;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_37_reg_7942;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_29_reg_7439;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_20_reg_6907;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_44_reg_8423;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_36_reg_7937;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_27_reg_7434;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_s_reg_6902;
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
    if (((tmp_reg_6284 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_6284_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_tid_2 = tid_fu_156;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd8) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln321_3_fu_5536_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln320_3_fu_5522_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln319_3_fu_5508_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln318_3_fu_5494_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln317_3_fu_5480_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln316_3_fu_5466_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln315_3_fu_5452_p1;
    end else if (((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_13_fu_5429_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln321_2_fu_4943_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln320_2_fu_4929_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln319_2_fu_4915_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln318_2_fu_4901_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln317_2_fu_4887_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln316_2_fu_4873_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln315_2_fu_4859_p1;
    end else if (((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_12_fu_4845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln321_1_fu_4305_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln320_1_fu_4291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln319_1_fu_4277_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln318_1_fu_4263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln317_1_fu_4249_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln316_1_fu_4235_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln315_1_fu_4221_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln172_9_fu_4207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln321_fu_3699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln320_fu_3685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln319_fu_3671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln318_fu_3657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln317_fu_3643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln316_fu_3629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln315_fu_3615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_6_fu_3601_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_6855 == 4'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (trunc_ln172_1_reg_6855 == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 ==1'b1) & (trunc_ln172_reg_6363 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_6363 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_3_reg_7919 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_3_reg_7919 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_2_reg_7387 == 4'd10) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_2_reg_7387 == 4'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln309_fu_3430_p2 = (tid_2_reg_6273 + 7'd4);
assign add_ln314_fu_5550_p2 = (shl_ln314_1_reg_7931 + 7'd2);
assign add_ln315_3_fu_5563_p2 = (shl_ln314_1_reg_7931 + 7'd3);
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
assign grp_fu_3323_p4 = {{tid_2_reg_6273[5:2]}};
assign grp_fu_3370_p0 = {{tmp_66_fu_3348_p4}, {trunc_ln312_fu_3358_p1}};
assign grp_fu_3370_p1 = 9'd11;
assign grp_fu_3394_p0 = {{{tmp_66_reg_6288}, {tmp_75_fu_3376_p4}}, {1'd1}};
assign grp_fu_3394_p1 = 9'd11;
assign grp_fu_3409_p0 = {{{tmp_66_reg_6288}, {grp_fu_3323_p4}}, {2'd2}};
assign grp_fu_3409_p1 = 9'd11;
assign grp_fu_3424_p0 = {{{tmp_66_reg_6288}, {grp_fu_3323_p4}}, {2'd3}};
assign grp_fu_3424_p1 = 9'd11;
assign grp_fu_6014_p0 = zext_ln172_fu_3440_p1;
assign grp_fu_6014_p1 = 10'd32;
assign grp_fu_6014_p2 = 21'd1490;
assign grp_fu_6023_p0 = zext_ln172_fu_3440_p1;
assign grp_fu_6023_p1 = 10'd8;
assign grp_fu_6023_p2 = 21'd1490;
assign grp_fu_6032_p0 = zext_ln172_fu_3440_p1;
assign grp_fu_6032_p1 = 10'd40;
assign grp_fu_6032_p2 = 21'd1490;
assign grp_fu_6041_p0 = zext_ln172_fu_3440_p1;
assign grp_fu_6041_p1 = 10'd16;
assign grp_fu_6041_p2 = 21'd1490;
assign grp_fu_6050_p0 = zext_ln172_fu_3440_p1;
assign grp_fu_6050_p1 = 10'd48;
assign grp_fu_6050_p2 = 21'd1490;
assign grp_fu_6059_p0 = zext_ln172_fu_3440_p1;
assign grp_fu_6059_p1 = 10'd24;
assign grp_fu_6059_p2 = 21'd1490;
assign grp_fu_6068_p0 = zext_ln172_fu_3440_p1;
assign grp_fu_6068_p1 = 10'd56;
assign grp_fu_6068_p2 = 21'd1490;
assign grp_fu_6077_p0 = zext_ln172_7_fu_3443_p1;
assign grp_fu_6077_p1 = 10'd32;
assign grp_fu_6077_p2 = 21'd1490;
assign grp_fu_6086_p0 = zext_ln172_7_fu_3443_p1;
assign grp_fu_6086_p1 = 10'd8;
assign grp_fu_6086_p2 = 21'd1490;
assign grp_fu_6095_p0 = zext_ln172_7_fu_3443_p1;
assign grp_fu_6095_p1 = 10'd40;
assign grp_fu_6095_p2 = 21'd1490;
assign grp_fu_6104_p0 = zext_ln172_7_fu_3443_p1;
assign grp_fu_6104_p1 = 10'd16;
assign grp_fu_6104_p2 = 21'd1490;
assign grp_fu_6113_p0 = zext_ln172_7_fu_3443_p1;
assign grp_fu_6113_p1 = 10'd48;
assign grp_fu_6113_p2 = 21'd1490;
assign grp_fu_6122_p0 = zext_ln172_7_fu_3443_p1;
assign grp_fu_6122_p1 = 10'd24;
assign grp_fu_6122_p2 = 21'd1490;
assign grp_fu_6131_p0 = zext_ln172_7_fu_3443_p1;
assign grp_fu_6131_p1 = 10'd56;
assign grp_fu_6131_p2 = 21'd1490;
assign grp_fu_6140_p0 = zext_ln172_10_fu_3446_p1;
assign grp_fu_6140_p1 = 10'd32;
assign grp_fu_6140_p2 = 21'd1490;
assign grp_fu_6149_p0 = zext_ln172_10_fu_3446_p1;
assign grp_fu_6149_p1 = 10'd8;
assign grp_fu_6149_p2 = 21'd1490;
assign grp_fu_6158_p0 = zext_ln172_10_fu_3446_p1;
assign grp_fu_6158_p1 = 10'd40;
assign grp_fu_6158_p2 = 21'd1490;
assign grp_fu_6167_p0 = zext_ln172_10_fu_3446_p1;
assign grp_fu_6167_p1 = 10'd16;
assign grp_fu_6167_p2 = 21'd1490;
assign grp_fu_6176_p0 = zext_ln172_10_fu_3446_p1;
assign grp_fu_6176_p1 = 10'd48;
assign grp_fu_6176_p2 = 21'd1490;
assign grp_fu_6185_p0 = zext_ln172_10_fu_3446_p1;
assign grp_fu_6185_p1 = 10'd24;
assign grp_fu_6185_p2 = 21'd1490;
assign grp_fu_6194_p0 = zext_ln172_10_fu_3446_p1;
assign grp_fu_6194_p1 = 10'd56;
assign grp_fu_6194_p2 = 21'd1490;
assign grp_fu_6203_p0 = zext_ln172_14_fu_3512_p1;
assign grp_fu_6203_p1 = 10'd32;
assign grp_fu_6203_p2 = 21'd1490;
assign grp_fu_6212_p0 = zext_ln172_14_fu_3512_p1;
assign grp_fu_6212_p1 = 10'd8;
assign grp_fu_6212_p2 = 21'd1490;
assign grp_fu_6221_p0 = zext_ln172_14_fu_3512_p1;
assign grp_fu_6221_p1 = 10'd40;
assign grp_fu_6221_p2 = 21'd1490;
assign grp_fu_6230_p0 = zext_ln172_14_fu_3512_p1;
assign grp_fu_6230_p1 = 10'd16;
assign grp_fu_6230_p2 = 21'd1490;
assign grp_fu_6239_p0 = zext_ln172_14_fu_3512_p1;
assign grp_fu_6239_p1 = 10'd48;
assign grp_fu_6239_p2 = 21'd1490;
assign grp_fu_6248_p0 = zext_ln172_14_fu_3512_p1;
assign grp_fu_6248_p1 = 10'd24;
assign grp_fu_6248_p2 = 21'd1490;
assign grp_fu_6257_p0 = zext_ln172_14_fu_3512_p1;
assign grp_fu_6257_p1 = 10'd56;
assign grp_fu_6257_p2 = 21'd1490;
assign mul_ln172_1_fu_3716_p0 = mul_ln172_1_fu_3716_p00;
assign mul_ln172_1_fu_3716_p00 = offset_1_reg_6302_pp0_iter2_reg;
assign mul_ln172_1_fu_3716_p1 = 19'd745;
assign mul_ln172_2_fu_4322_p0 = mul_ln172_2_fu_4322_p00;
assign mul_ln172_2_fu_4322_p00 = offset_2_reg_6309_pp0_iter2_reg;
assign mul_ln172_2_fu_4322_p1 = 19'd745;
assign mul_ln172_3_fu_4960_p0 = mul_ln172_3_fu_4960_p00;
assign mul_ln172_3_fu_4960_p00 = offset_3_reg_6316_pp0_iter2_reg;
assign mul_ln172_3_fu_4960_p1 = 19'd745;
assign mul_ln172_fu_3518_p0 = mul_ln172_fu_3518_p00;
assign mul_ln172_fu_3518_p00 = offset_reg_6295_pp0_iter2_reg;
assign mul_ln172_fu_3518_p1 = 19'd745;
assign offset_1_fu_3385_p4 = {{{tmp_66_reg_6288}, {tmp_75_fu_3376_p4}}, {1'd1}};
assign offset_2_fu_3400_p4 = {{{tmp_66_reg_6288}, {grp_fu_3323_p4}}, {2'd2}};
assign offset_3_fu_3415_p4 = {{{tmp_66_reg_6288}, {grp_fu_3323_p4}}, {2'd3}};
assign offset_fu_3362_p3 = {{tmp_66_fu_3348_p4}, {trunc_ln312_fu_3358_p1}};
assign or_ln1_fu_5984_p3 = {{tmp_45_reg_8032}, {3'd6}};
assign or_ln315_1_fu_5005_p3 = {{tmp_28_fu_4980_p4}, {2'd3}};
assign or_ln315_2_fu_5999_p3 = {{tmp_45_reg_8032}, {3'd7}};
assign or_ln_fu_4421_p3 = {{trunc_ln314_fu_4405_p1}, {1'd1}};
assign shl_ln314_1_fu_4989_p3 = {{tmp_28_fu_4980_p4}, {2'd2}};
assign shl_ln314_fu_4408_p2 = tid_2_reg_6273_pp0_iter3_reg << 7'd1;
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
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
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_100_fu_4387_p1 = grp_fu_6248_p3;
assign tmp_101_fu_4396_p1 = grp_fu_6257_p3;
assign tmp_20_fu_3850_p23 = 'bx;
assign tmp_21_fu_3901_p23 = 'bx;
assign tmp_22_fu_3952_p23 = 'bx;
assign tmp_23_fu_4003_p23 = 'bx;
assign tmp_24_fu_4054_p23 = 'bx;
assign tmp_25_fu_4105_p23 = 'bx;
assign tmp_26_fu_4156_p23 = 'bx;
assign tmp_27_fu_4437_p23 = 'bx;
assign tmp_28_fu_4980_p4 = {{tid_2_reg_6273_pp0_iter3_reg[5:1]}};
assign tmp_29_fu_4488_p23 = 'bx;
assign tmp_30_fu_4539_p23 = 'bx;
assign tmp_31_fu_4590_p23 = 'bx;
assign tmp_32_fu_4641_p23 = 'bx;
assign tmp_33_fu_4692_p23 = 'bx;
assign tmp_34_fu_4743_p23 = 'bx;
assign tmp_35_fu_4794_p23 = 'bx;
assign tmp_36_fu_5021_p23 = 'bx;
assign tmp_37_fu_5072_p23 = 'bx;
assign tmp_38_fu_5123_p23 = 'bx;
assign tmp_39_fu_5174_p23 = 'bx;
assign tmp_40_fu_5225_p23 = 'bx;
assign tmp_41_fu_5276_p23 = 'bx;
assign tmp_42_fu_5327_p23 = 'bx;
assign tmp_43_fu_5378_p23 = 'bx;
assign tmp_44_fu_5576_p23 = 'bx;
assign tmp_46_fu_5627_p23 = 'bx;
assign tmp_47_fu_5678_p23 = 'bx;
assign tmp_48_fu_5729_p23 = 'bx;
assign tmp_49_fu_5780_p23 = 'bx;
assign tmp_50_fu_5831_p23 = 'bx;
assign tmp_51_fu_5882_p23 = 'bx;
assign tmp_52_fu_5933_p23 = 'bx;
assign tmp_66_fu_3348_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_68_fu_3449_p1 = grp_fu_6014_p3;
assign tmp_69_fu_3458_p1 = grp_fu_6023_p3;
assign tmp_70_fu_3467_p1 = grp_fu_6032_p3;
assign tmp_71_fu_3476_p1 = grp_fu_6041_p3;
assign tmp_72_fu_3485_p1 = grp_fu_6050_p3;
assign tmp_73_fu_3494_p1 = grp_fu_6059_p3;
assign tmp_74_fu_3503_p1 = grp_fu_6068_p3;
assign tmp_75_fu_3376_p4 = {{tid_2_reg_6273[5:1]}};
assign tmp_77_fu_3538_p1 = grp_fu_6077_p3;
assign tmp_78_fu_3547_p1 = grp_fu_6086_p3;
assign tmp_79_fu_3556_p1 = grp_fu_6095_p3;
assign tmp_80_fu_3565_p1 = grp_fu_6104_p3;
assign tmp_81_fu_3574_p1 = grp_fu_6113_p3;
assign tmp_82_fu_3583_p1 = grp_fu_6122_p3;
assign tmp_83_fu_3592_p1 = grp_fu_6131_p3;
assign tmp_86_fu_3736_p1 = grp_fu_6140_p3;
assign tmp_87_fu_3745_p1 = grp_fu_6149_p3;
assign tmp_88_fu_3754_p1 = grp_fu_6158_p3;
assign tmp_89_fu_3763_p1 = grp_fu_6167_p3;
assign tmp_90_fu_3772_p1 = grp_fu_6176_p3;
assign tmp_91_fu_3781_p1 = grp_fu_6185_p3;
assign tmp_92_fu_3790_p1 = grp_fu_6194_p3;
assign tmp_95_fu_4342_p1 = grp_fu_6203_p3;
assign tmp_96_fu_4351_p1 = grp_fu_6212_p3;
assign tmp_97_fu_4360_p1 = grp_fu_6221_p3;
assign tmp_98_fu_4369_p1 = grp_fu_6230_p3;
assign tmp_99_fu_4378_p1 = grp_fu_6239_p3;
assign tmp_s_fu_3799_p23 = 'bx;
assign trunc_ln172_1_fu_3732_p1 = grp_fu_3394_p2[3:0];
assign trunc_ln172_2_fu_4338_p1 = grp_fu_3409_p2[3:0];
assign trunc_ln172_3_fu_4976_p1 = grp_fu_3424_p2[3:0];
assign trunc_ln172_fu_3534_p1 = grp_fu_3370_p2[3:0];
assign trunc_ln312_fu_3358_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_4405_p1 = tid_2_reg_6273_pp0_iter3_reg[5:0];
assign zext_ln172_10_fu_3446_p1 = offset_2_reg_6309_pp0_iter1_reg;
assign zext_ln172_12_fu_4845_p1 = tmp_85_reg_7382;
assign zext_ln172_13_fu_5429_p1 = tmp_94_reg_7914;
assign zext_ln172_14_fu_3512_p1 = offset_3_reg_6316_pp0_iter1_reg;
assign zext_ln172_6_fu_3601_p1 = tmp_67_reg_6358;
assign zext_ln172_7_fu_3443_p1 = offset_1_reg_6302_pp0_iter1_reg;
assign zext_ln172_9_fu_4207_p1 = tmp_76_reg_6850;
assign zext_ln172_fu_3440_p1 = offset_reg_6295_pp0_iter1_reg;
assign zext_ln314_1_fu_4997_p1 = shl_ln314_1_fu_4989_p3;
assign zext_ln314_2_fu_5555_p1 = add_ln314_fu_5550_p2;
assign zext_ln314_3_fu_5991_p1 = or_ln1_fu_5984_p3;
assign zext_ln314_fu_4413_p1 = shl_ln314_fu_4408_p2;
assign zext_ln315_1_fu_4221_p1 = tmp_77_reg_6375;
assign zext_ln315_2_fu_4859_p1 = tmp_86_reg_6867;
assign zext_ln315_3_fu_5452_p1 = tmp_95_reg_7399;
assign zext_ln315_4_fu_4429_p1 = or_ln_fu_4421_p3;
assign zext_ln315_5_fu_5013_p1 = or_ln315_1_fu_5005_p3;
assign zext_ln315_6_fu_5568_p1 = add_ln315_3_fu_5563_p2;
assign zext_ln315_7_fu_6006_p1 = or_ln315_2_fu_5999_p3;
assign zext_ln315_fu_3615_p1 = tmp_68_reg_6323;
assign zext_ln316_1_fu_4235_p1 = tmp_78_reg_6380;
assign zext_ln316_2_fu_4873_p1 = tmp_87_reg_6872;
assign zext_ln316_3_fu_5466_p1 = tmp_96_reg_7404;
assign zext_ln316_fu_3629_p1 = tmp_69_reg_6328;
assign zext_ln317_1_fu_4249_p1 = tmp_79_reg_6385;
assign zext_ln317_2_fu_4887_p1 = tmp_88_reg_6877;
assign zext_ln317_3_fu_5480_p1 = tmp_97_reg_7409;
assign zext_ln317_fu_3643_p1 = tmp_70_reg_6333;
assign zext_ln318_1_fu_4263_p1 = tmp_80_reg_6390;
assign zext_ln318_2_fu_4901_p1 = tmp_89_reg_6882;
assign zext_ln318_3_fu_5494_p1 = tmp_98_reg_7414;
assign zext_ln318_fu_3657_p1 = tmp_71_reg_6338;
assign zext_ln319_1_fu_4277_p1 = tmp_81_reg_6395;
assign zext_ln319_2_fu_4915_p1 = tmp_90_reg_6887;
assign zext_ln319_3_fu_5508_p1 = tmp_99_reg_7419;
assign zext_ln319_fu_3671_p1 = tmp_72_reg_6343;
assign zext_ln320_1_fu_4291_p1 = tmp_82_reg_6400;
assign zext_ln320_2_fu_4929_p1 = tmp_91_reg_6892;
assign zext_ln320_3_fu_5522_p1 = tmp_100_reg_7424;
assign zext_ln320_fu_3685_p1 = tmp_73_reg_6348;
assign zext_ln321_1_fu_4305_p1 = tmp_83_reg_6405;
assign zext_ln321_2_fu_4943_p1 = tmp_92_reg_6897;
assign zext_ln321_3_fu_5536_p1 = tmp_101_reg_7429;
assign zext_ln321_fu_3699_p1 = tmp_74_reg_6353;
always @ (posedge ap_clk) begin
    offset_1_reg_6302[0] <= 1'b1;
    offset_1_reg_6302_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_6302_pp0_iter2_reg[0] <= 1'b1;
    offset_2_reg_6309[1:0] <= 2'b10;
    offset_2_reg_6309_pp0_iter1_reg[1:0] <= 2'b10;
    offset_2_reg_6309_pp0_iter2_reg[1:0] <= 2'b10;
    offset_3_reg_6316[1:0] <= 2'b11;
    offset_3_reg_6316_pp0_iter1_reg[1:0] <= 2'b11;
    offset_3_reg_6316_pp0_iter2_reg[1:0] <= 2'b11;
    shl_ln314_1_reg_7931[1:0] <= 2'b10;
end
endmodule 