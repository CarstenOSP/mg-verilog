module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1); 
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
reg   [0:0] tmp_reg_4748;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_4738;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_4738_pp0_iter1_reg;
reg   [6:0] tid_reg_4738_pp0_iter2_reg;
reg   [6:0] tid_reg_4738_pp0_iter3_reg;
reg   [0:0] tmp_reg_4748_pp0_iter1_reg;
reg   [0:0] tmp_reg_4748_pp0_iter2_reg;
reg   [0:0] tmp_reg_4748_pp0_iter3_reg;
wire   [2:0] hi_fu_2317_p4;
reg   [2:0] hi_reg_4752;
reg   [2:0] hi_reg_4752_pp0_iter1_reg;
reg   [2:0] hi_reg_4752_pp0_iter2_reg;
wire   [2:0] trunc_ln191_fu_2327_p1;
reg   [2:0] trunc_ln191_reg_4760;
reg   [2:0] trunc_ln191_reg_4760_pp0_iter1_reg;
reg   [2:0] trunc_ln191_reg_4760_pp0_iter2_reg;
wire   [0:0] tmp_191_fu_2331_p3;
reg   [0:0] tmp_191_reg_4767;
reg   [0:0] tmp_191_reg_4767_pp0_iter1_reg;
reg   [0:0] tmp_191_reg_4767_pp0_iter2_reg;
wire   [8:0] offset_4_fu_2339_p5;
reg   [8:0] offset_4_reg_4774;
reg   [8:0] offset_4_reg_4774_pp0_iter1_reg;
reg   [8:0] offset_4_reg_4774_pp0_iter2_reg;
wire   [8:0] zext_ln114_fu_2357_p1;
reg   [8:0] zext_ln114_reg_4784;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [8:0] offset_fu_2381_p2;
reg   [8:0] offset_reg_4790;
reg   [8:0] offset_reg_4790_pp0_iter1_reg;
reg   [8:0] offset_reg_4790_pp0_iter2_reg;
wire   [8:0] offset_12_fu_2412_p2;
reg   [8:0] offset_12_reg_4802;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [8:0] offset_12_reg_4802_pp0_iter1_reg;
reg   [8:0] offset_12_reg_4802_pp0_iter2_reg;
wire   [8:0] offset_13_fu_2435_p2;
reg   [8:0] offset_13_reg_4814;
reg   [8:0] offset_13_reg_4814_pp0_iter1_reg;
reg   [8:0] offset_13_reg_4814_pp0_iter2_reg;
reg   [8:0] offset_13_reg_4814_pp0_iter3_reg;
wire   [8:0] add_ln195_fu_2458_p2;
reg   [8:0] add_ln195_reg_4826;
wire   [8:0] add_ln196_fu_2463_p2;
reg   [8:0] add_ln196_reg_4831;
wire   [8:0] add_ln199_fu_2468_p2;
reg   [8:0] add_ln199_reg_4836;
reg   [6:0] tmp_194_reg_4841;
reg   [6:0] tmp_195_reg_4846;
reg   [6:0] tmp_199_reg_4851;
wire   [8:0] add_ln197_fu_2533_p2;
reg   [8:0] add_ln197_reg_4856;
wire   [8:0] add_ln199_1_fu_2538_p2;
reg   [8:0] add_ln199_1_reg_4861;
reg   [6:0] tmp_205_reg_4866;
reg   [6:0] tmp_207_reg_4871;
wire   [8:0] add_ln199_2_fu_2584_p2;
reg   [8:0] add_ln199_2_reg_4876;
reg   [7:0] tmp_200_reg_4881;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] tmp_216_reg_4886;
reg   [6:0] tmp_192_reg_4891;
wire   [2:0] trunc_ln172_fu_2639_p1;
reg   [2:0] trunc_ln172_reg_4896;
reg   [6:0] tmp_193_reg_4908;
reg   [6:0] tmp_196_reg_4913;
reg   [7:0] tmp_198_reg_4918;
wire   [8:0] add_ln194_fu_2730_p2;
reg   [8:0] add_ln194_reg_4923;
wire   [8:0] add_ln195_1_fu_2735_p2;
reg   [8:0] add_ln195_1_reg_4928;
wire   [8:0] add_ln196_1_fu_2740_p2;
reg   [8:0] add_ln196_1_reg_4933;
reg   [7:0] tmp_206_reg_4938;
reg   [7:0] tmp_208_reg_4943;
reg   [6:0] tmp_201_reg_5228;
wire   [2:0] trunc_ln172_13_fu_2862_p1;
reg   [2:0] trunc_ln172_13_reg_5233;
reg   [6:0] tmp_202_reg_5245;
reg   [6:0] tmp_203_reg_5250;
reg   [6:0] tmp_204_reg_5255;
wire   [8:0] add_ln194_1_fu_2923_p2;
reg   [8:0] add_ln194_1_reg_5260;
wire   [8:0] add_ln195_2_fu_2928_p2;
reg   [8:0] add_ln195_2_reg_5265;
wire   [8:0] add_ln196_2_fu_2933_p2;
reg   [8:0] add_ln196_2_reg_5270;
wire   [8:0] add_ln197_1_fu_2938_p2;
reg   [8:0] add_ln197_1_reg_5275;
reg   [7:0] tmp_215_reg_5280;
reg   [7:0] tmp_217_reg_5285;
wire   [63:0] tmp_s_fu_2961_p17;
reg   [63:0] tmp_s_reg_5290;
wire   [63:0] tmp_24_fu_2996_p17;
reg   [63:0] tmp_24_reg_5295;
wire   [63:0] tmp_25_fu_3031_p17;
reg   [63:0] tmp_25_reg_5300;
wire   [63:0] tmp_26_fu_3066_p17;
reg   [63:0] tmp_26_reg_5305;
wire   [63:0] tmp_27_fu_3101_p17;
reg   [63:0] tmp_27_reg_5310;
wire   [63:0] tmp_28_fu_3136_p17;
reg   [63:0] tmp_28_reg_5315;
wire   [63:0] tmp_29_fu_3171_p17;
reg   [63:0] tmp_29_reg_5320;
wire   [63:0] tmp_30_fu_3206_p17;
reg   [63:0] tmp_30_reg_5325;
reg   [6:0] tmp_210_reg_5610;
wire   [2:0] trunc_ln172_14_fu_3340_p1;
reg   [2:0] trunc_ln172_14_reg_5615;
reg   [6:0] tmp_211_reg_5627;
reg   [6:0] tmp_212_reg_5632;
reg   [6:0] tmp_213_reg_5637;
reg   [6:0] tmp_214_reg_5642;
wire   [8:0] add_ln194_2_fu_3420_p2;
reg   [8:0] add_ln194_2_reg_5647;
wire   [8:0] add_ln195_3_fu_3425_p2;
reg   [8:0] add_ln195_3_reg_5652;
wire   [8:0] add_ln196_3_fu_3430_p2;
reg   [8:0] add_ln196_3_reg_5657;
wire   [8:0] add_ln197_2_fu_3435_p2;
reg   [8:0] add_ln197_2_reg_5662;
reg   [7:0] tmp_223_reg_5667;
wire   [8:0] add_ln199_3_fu_3449_p2;
reg   [8:0] add_ln199_3_reg_5672;
reg   [7:0] tmp_225_reg_5677;
wire   [63:0] tmp_31_fu_3474_p17;
reg   [63:0] tmp_31_reg_5682;
wire   [63:0] tmp_32_fu_3509_p17;
reg   [63:0] tmp_32_reg_5687;
wire   [63:0] tmp_33_fu_3544_p17;
reg   [63:0] tmp_33_reg_5692;
wire   [63:0] tmp_34_fu_3579_p17;
reg   [63:0] tmp_34_reg_5697;
wire   [63:0] tmp_35_fu_3614_p17;
reg   [63:0] tmp_35_reg_5702;
wire   [63:0] tmp_36_fu_3649_p17;
reg   [63:0] tmp_36_reg_5707;
wire   [63:0] tmp_37_fu_3684_p17;
reg   [63:0] tmp_37_reg_5712;
wire   [63:0] tmp_38_fu_3719_p17;
reg   [63:0] tmp_38_reg_5717;
reg   [6:0] tmp_218_reg_6002;
wire   [2:0] trunc_ln172_15_fu_3853_p1;
reg   [2:0] trunc_ln172_15_reg_6007;
reg   [6:0] tmp_219_reg_6019;
reg   [6:0] tmp_220_reg_6024;
reg   [6:0] tmp_221_reg_6029;
reg   [6:0] tmp_222_reg_6034;
reg   [6:0] tmp_224_reg_6039;
reg   [3:0] tmp_61_reg_6044;
wire   [63:0] tmp_39_fu_3990_p17;
reg   [63:0] tmp_39_reg_6050;
wire   [63:0] tmp_40_fu_4025_p17;
reg   [63:0] tmp_40_reg_6055;
wire   [63:0] tmp_41_fu_4060_p17;
reg   [63:0] tmp_41_reg_6060;
wire   [63:0] tmp_42_fu_4095_p17;
reg   [63:0] tmp_42_reg_6065;
wire   [63:0] tmp_43_fu_4130_p17;
reg   [63:0] tmp_43_reg_6070;
wire   [63:0] tmp_44_fu_4165_p17;
reg   [63:0] tmp_44_reg_6075;
wire   [63:0] tmp_45_fu_4200_p17;
reg   [63:0] tmp_45_reg_6080;
wire   [63:0] tmp_46_fu_4235_p17;
reg   [63:0] tmp_46_reg_6085;
wire   [63:0] tmp_47_fu_4369_p17;
reg   [63:0] tmp_47_reg_6370;
wire   [63:0] tmp_48_fu_4404_p17;
reg   [63:0] tmp_48_reg_6375;
wire   [63:0] tmp_49_fu_4439_p17;
reg   [63:0] tmp_49_reg_6380;
wire   [63:0] tmp_50_fu_4474_p17;
reg   [63:0] tmp_50_reg_6385;
wire   [63:0] tmp_51_fu_4509_p17;
reg   [63:0] tmp_51_reg_6390;
wire   [63:0] tmp_52_fu_4544_p17;
reg   [63:0] tmp_52_reg_6395;
wire   [63:0] tmp_53_fu_4579_p17;
reg   [63:0] tmp_53_reg_6400;
wire   [63:0] tmp_54_fu_4614_p17;
reg   [63:0] tmp_54_reg_6405;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_4_fu_2763_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_fu_2773_p1;
wire   [63:0] zext_ln195_fu_2783_p1;
wire   [63:0] zext_ln196_fu_2793_p1;
wire   [63:0] zext_ln197_fu_2803_p1;
wire   [63:0] zext_ln198_fu_2813_p1;
wire   [63:0] zext_ln199_fu_2823_p1;
wire   [63:0] zext_ln200_fu_2833_p1;
wire   [63:0] zext_ln172_5_fu_3241_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_1_fu_3251_p1;
wire   [63:0] zext_ln195_1_fu_3261_p1;
wire   [63:0] zext_ln196_1_fu_3271_p1;
wire   [63:0] zext_ln197_1_fu_3281_p1;
wire   [63:0] zext_ln198_1_fu_3291_p1;
wire   [63:0] zext_ln199_1_fu_3301_p1;
wire   [63:0] zext_ln200_1_fu_3311_p1;
wire   [63:0] zext_ln188_fu_3463_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_6_fu_3754_p1;
wire   [63:0] zext_ln194_2_fu_3764_p1;
wire   [63:0] zext_ln195_2_fu_3774_p1;
wire   [63:0] zext_ln196_2_fu_3784_p1;
wire   [63:0] zext_ln197_2_fu_3794_p1;
wire   [63:0] zext_ln198_2_fu_3804_p1;
wire   [63:0] zext_ln199_2_fu_3814_p1;
wire   [63:0] zext_ln200_2_fu_3824_p1;
wire   [63:0] zext_ln191_fu_3969_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_7_fu_4270_p1;
wire   [63:0] zext_ln194_3_fu_4280_p1;
wire   [63:0] zext_ln195_3_fu_4290_p1;
wire   [63:0] zext_ln196_3_fu_4300_p1;
wire   [63:0] zext_ln197_3_fu_4310_p1;
wire   [63:0] zext_ln198_3_fu_4320_p1;
wire   [63:0] zext_ln199_3_fu_4330_p1;
wire   [63:0] zext_ln200_3_fu_4340_p1;
wire   [63:0] zext_ln191_1_fu_4357_p1;
wire   [63:0] zext_ln191_2_fu_4656_p1;
reg   [6:0] tid_2_fu_146;
wire   [6:0] add_ln188_fu_2445_p2;
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
wire   [8:0] grp_fu_2351_p0;
wire   [3:0] grp_fu_2351_p1;
wire   [1:0] tmp_60_fu_2360_p4;
wire   [8:0] mul_ln191_1_fu_2369_p5;
wire   [8:0] grp_fu_2387_p0;
wire   [3:0] grp_fu_2387_p1;
wire   [0:0] tmp_209_fu_2393_p3;
wire   [8:0] mul_ln191_2_fu_2400_p5;
wire   [8:0] grp_fu_2417_p0;
wire   [3:0] grp_fu_2417_p1;
wire   [8:0] mul_ln191_3_fu_2423_p5;
wire   [3:0] grp_fu_2440_p1;
wire   [8:0] mul_ln195_fu_2476_p0;
wire   [10:0] mul_ln195_fu_2476_p1;
wire   [18:0] mul_ln195_fu_2476_p2;
wire   [8:0] mul_ln196_fu_2495_p0;
wire   [10:0] mul_ln196_fu_2495_p1;
wire   [18:0] mul_ln196_fu_2495_p2;
wire   [8:0] mul_ln199_fu_2514_p0;
wire   [10:0] mul_ln199_fu_2514_p1;
wire   [18:0] mul_ln199_fu_2514_p2;
wire   [8:0] mul_ln197_1_fu_2546_p0;
wire   [10:0] mul_ln197_1_fu_2546_p1;
wire   [18:0] mul_ln197_1_fu_2546_p2;
wire   [8:0] mul_ln199_1_fu_2565_p0;
wire   [10:0] mul_ln199_1_fu_2565_p1;
wire   [18:0] mul_ln199_1_fu_2565_p2;
wire   [20:0] tmp_200_fu_2589_p1;
wire  signed [20:0] grp_fu_4668_p3;
wire   [8:0] mul_ln199_2_fu_2601_p0;
wire   [10:0] mul_ln199_2_fu_2601_p1;
wire   [18:0] mul_ln199_2_fu_2601_p2;
wire   [8:0] mul_ln172_4_fu_2623_p0;
wire   [10:0] mul_ln172_4_fu_2623_p1;
wire   [18:0] mul_ln172_4_fu_2623_p2;
wire   [2:0] grp_fu_2351_p2;
wire   [8:0] add_ln_fu_2643_p5;
wire   [8:0] mul_ln194_fu_2656_p0;
wire   [10:0] mul_ln194_fu_2656_p1;
wire   [18:0] mul_ln194_fu_2656_p2;
wire   [8:0] add_ln1_fu_2672_p5;
wire   [8:0] mul_ln197_fu_2685_p0;
wire   [10:0] mul_ln197_fu_2685_p1;
wire   [18:0] mul_ln197_fu_2685_p2;
wire   [8:0] tmp_197_fu_2701_p5;
wire   [8:0] mul_ln198_fu_2714_p0;
wire   [11:0] mul_ln198_fu_2714_p1;
wire   [20:0] mul_ln198_fu_2714_p2;
wire   [20:0] tmp_206_fu_2745_p1;
wire  signed [20:0] grp_fu_4677_p3;
wire   [20:0] tmp_208_fu_2754_p1;
wire  signed [20:0] grp_fu_4686_p3;
wire   [8:0] mul_ln172_5_fu_2846_p0;
wire   [10:0] mul_ln172_5_fu_2846_p1;
wire   [18:0] mul_ln172_5_fu_2846_p2;
wire   [2:0] grp_fu_2387_p2;
wire   [8:0] mul_ln194_1_fu_2869_p0;
wire   [10:0] mul_ln194_1_fu_2869_p1;
wire   [18:0] mul_ln194_1_fu_2869_p2;
wire   [8:0] mul_ln195_1_fu_2888_p0;
wire   [10:0] mul_ln195_1_fu_2888_p1;
wire   [18:0] mul_ln195_1_fu_2888_p2;
wire   [8:0] mul_ln196_1_fu_2907_p0;
wire   [10:0] mul_ln196_1_fu_2907_p1;
wire   [18:0] mul_ln196_1_fu_2907_p2;
wire   [20:0] tmp_215_fu_2943_p1;
wire  signed [20:0] grp_fu_4695_p3;
wire   [20:0] tmp_217_fu_2952_p1;
wire  signed [20:0] grp_fu_4704_p3;
wire   [63:0] tmp_s_fu_2961_p15;
wire   [63:0] tmp_24_fu_2996_p15;
wire   [63:0] tmp_25_fu_3031_p15;
wire   [63:0] tmp_26_fu_3066_p15;
wire   [63:0] tmp_27_fu_3101_p15;
wire   [63:0] tmp_28_fu_3136_p15;
wire   [63:0] tmp_29_fu_3171_p15;
wire   [63:0] tmp_30_fu_3206_p15;
wire   [8:0] mul_ln172_6_fu_3324_p0;
wire   [10:0] mul_ln172_6_fu_3324_p1;
wire   [18:0] mul_ln172_6_fu_3324_p2;
wire   [2:0] grp_fu_2417_p2;
wire   [8:0] mul_ln194_2_fu_3347_p0;
wire   [10:0] mul_ln194_2_fu_3347_p1;
wire   [18:0] mul_ln194_2_fu_3347_p2;
wire   [8:0] mul_ln195_2_fu_3366_p0;
wire   [10:0] mul_ln195_2_fu_3366_p1;
wire   [18:0] mul_ln195_2_fu_3366_p2;
wire   [8:0] mul_ln196_2_fu_3385_p0;
wire   [10:0] mul_ln196_2_fu_3385_p1;
wire   [18:0] mul_ln196_2_fu_3385_p2;
wire   [8:0] mul_ln197_2_fu_3404_p0;
wire   [10:0] mul_ln197_2_fu_3404_p1;
wire   [18:0] mul_ln197_2_fu_3404_p2;
wire   [20:0] tmp_223_fu_3440_p1;
wire  signed [20:0] grp_fu_4713_p3;
wire   [20:0] tmp_225_fu_3454_p1;
wire  signed [20:0] grp_fu_4722_p3;
wire   [63:0] tmp_31_fu_3474_p15;
wire   [63:0] tmp_32_fu_3509_p15;
wire   [63:0] tmp_33_fu_3544_p15;
wire   [63:0] tmp_34_fu_3579_p15;
wire   [63:0] tmp_35_fu_3614_p15;
wire   [63:0] tmp_36_fu_3649_p15;
wire   [63:0] tmp_37_fu_3684_p15;
wire   [63:0] tmp_38_fu_3719_p15;
wire   [8:0] mul_ln172_7_fu_3837_p0;
wire   [10:0] mul_ln172_7_fu_3837_p1;
wire   [18:0] mul_ln172_7_fu_3837_p2;
wire   [2:0] grp_fu_2440_p2;
wire   [8:0] mul_ln194_3_fu_3860_p0;
wire   [10:0] mul_ln194_3_fu_3860_p1;
wire   [18:0] mul_ln194_3_fu_3860_p2;
wire   [8:0] mul_ln195_3_fu_3879_p0;
wire   [10:0] mul_ln195_3_fu_3879_p1;
wire   [18:0] mul_ln195_3_fu_3879_p2;
wire   [8:0] mul_ln196_3_fu_3898_p0;
wire   [10:0] mul_ln196_3_fu_3898_p1;
wire   [18:0] mul_ln196_3_fu_3898_p2;
wire   [8:0] mul_ln197_3_fu_3917_p0;
wire   [10:0] mul_ln197_3_fu_3917_p1;
wire   [18:0] mul_ln197_3_fu_3917_p2;
wire   [8:0] mul_ln199_3_fu_3936_p0;
wire   [10:0] mul_ln199_3_fu_3936_p1;
wire   [18:0] mul_ln199_3_fu_3936_p2;
wire   [4:0] tmp_59_fu_3952_p4;
wire   [5:0] or_ln9_fu_3961_p3;
wire   [63:0] tmp_39_fu_3990_p15;
wire   [63:0] tmp_40_fu_4025_p15;
wire   [63:0] tmp_41_fu_4060_p15;
wire   [63:0] tmp_42_fu_4095_p15;
wire   [63:0] tmp_43_fu_4130_p15;
wire   [63:0] tmp_44_fu_4165_p15;
wire   [63:0] tmp_45_fu_4200_p15;
wire   [63:0] tmp_46_fu_4235_p15;
wire   [5:0] or_ln188_1_fu_4350_p3;
wire   [63:0] tmp_47_fu_4369_p15;
wire   [63:0] tmp_48_fu_4404_p15;
wire   [63:0] tmp_49_fu_4439_p15;
wire   [63:0] tmp_50_fu_4474_p15;
wire   [63:0] tmp_51_fu_4509_p15;
wire   [63:0] tmp_52_fu_4544_p15;
wire   [63:0] tmp_53_fu_4579_p15;
wire   [63:0] tmp_54_fu_4614_p15;
wire   [5:0] or_ln188_2_fu_4649_p3;
wire   [8:0] grp_fu_4668_p0;
wire   [5:0] grp_fu_4668_p1;
wire   [10:0] grp_fu_4668_p2;
wire   [8:0] grp_fu_4677_p0;
wire   [9:0] zext_ln172_38_fu_2530_p1;
wire   [5:0] grp_fu_4677_p1;
wire   [10:0] grp_fu_4677_p2;
wire   [8:0] grp_fu_4686_p0;
wire   [5:0] grp_fu_4686_p1;
wire   [10:0] grp_fu_4686_p2;
wire   [8:0] grp_fu_4695_p0;
wire   [9:0] zext_ln172_39_fu_2581_p1;
wire   [5:0] grp_fu_4695_p1;
wire   [10:0] grp_fu_4695_p2;
wire   [8:0] grp_fu_4704_p0;
wire   [5:0] grp_fu_4704_p1;
wire   [10:0] grp_fu_4704_p2;
wire   [8:0] grp_fu_4713_p0;
wire   [9:0] zext_ln172_40_fu_2617_p1;
wire   [5:0] grp_fu_4713_p1;
wire   [10:0] grp_fu_4713_p2;
wire   [8:0] grp_fu_4722_p0;
wire   [5:0] grp_fu_4722_p1;
wire   [10:0] grp_fu_4722_p2;
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
wire   [9:0] grp_fu_4668_p00;
wire   [18:0] mul_ln172_4_fu_2623_p00;
wire   [18:0] mul_ln172_5_fu_2846_p00;
wire   [18:0] mul_ln172_6_fu_3324_p00;
wire   [18:0] mul_ln172_7_fu_3837_p00;
wire   [18:0] mul_ln194_1_fu_2869_p00;
wire   [18:0] mul_ln194_2_fu_3347_p00;
wire   [18:0] mul_ln194_3_fu_3860_p00;
wire   [18:0] mul_ln194_fu_2656_p00;
wire   [18:0] mul_ln195_1_fu_2888_p00;
wire   [18:0] mul_ln195_2_fu_3366_p00;
wire   [18:0] mul_ln195_3_fu_3879_p00;
wire   [18:0] mul_ln195_fu_2476_p00;
wire   [18:0] mul_ln196_1_fu_2907_p00;
wire   [18:0] mul_ln196_2_fu_3385_p00;
wire   [18:0] mul_ln196_3_fu_3898_p00;
wire   [18:0] mul_ln196_fu_2495_p00;
wire   [18:0] mul_ln197_1_fu_2546_p00;
wire   [18:0] mul_ln197_2_fu_3404_p00;
wire   [18:0] mul_ln197_3_fu_3917_p00;
wire   [18:0] mul_ln197_fu_2685_p00;
wire   [20:0] mul_ln198_fu_2714_p00;
wire   [18:0] mul_ln199_1_fu_2565_p00;
wire   [18:0] mul_ln199_2_fu_2601_p00;
wire   [18:0] mul_ln199_3_fu_3936_p00;
wire   [18:0] mul_ln199_fu_2514_p00;
wire   [2:0] tmp_s_fu_2961_p1;
wire   [2:0] tmp_s_fu_2961_p3;
wire   [2:0] tmp_s_fu_2961_p5;
wire   [2:0] tmp_s_fu_2961_p7;
wire  signed [2:0] tmp_s_fu_2961_p9;
wire  signed [2:0] tmp_s_fu_2961_p11;
wire  signed [2:0] tmp_s_fu_2961_p13;
wire   [2:0] tmp_24_fu_2996_p1;
wire  signed [2:0] tmp_24_fu_2996_p3;
wire  signed [2:0] tmp_24_fu_2996_p5;
wire  signed [2:0] tmp_24_fu_2996_p7;
wire   [2:0] tmp_24_fu_2996_p9;
wire   [2:0] tmp_24_fu_2996_p11;
wire   [2:0] tmp_24_fu_2996_p13;
wire  signed [2:0] tmp_25_fu_3031_p1;
wire   [2:0] tmp_25_fu_3031_p3;
wire   [2:0] tmp_25_fu_3031_p5;
wire   [2:0] tmp_25_fu_3031_p7;
wire   [2:0] tmp_25_fu_3031_p9;
wire  signed [2:0] tmp_25_fu_3031_p11;
wire  signed [2:0] tmp_25_fu_3031_p13;
wire   [2:0] tmp_26_fu_3066_p1;
wire   [2:0] tmp_26_fu_3066_p3;
wire  signed [2:0] tmp_26_fu_3066_p5;
wire  signed [2:0] tmp_26_fu_3066_p7;
wire  signed [2:0] tmp_26_fu_3066_p9;
wire   [2:0] tmp_26_fu_3066_p11;
wire   [2:0] tmp_26_fu_3066_p13;
wire  signed [2:0] tmp_27_fu_3101_p1;
wire  signed [2:0] tmp_27_fu_3101_p3;
wire   [2:0] tmp_27_fu_3101_p5;
wire   [2:0] tmp_27_fu_3101_p7;
wire   [2:0] tmp_27_fu_3101_p9;
wire   [2:0] tmp_27_fu_3101_p11;
wire  signed [2:0] tmp_27_fu_3101_p13;
wire   [2:0] tmp_28_fu_3136_p1;
wire   [2:0] tmp_28_fu_3136_p3;
wire   [2:0] tmp_28_fu_3136_p5;
wire  signed [2:0] tmp_28_fu_3136_p7;
wire  signed [2:0] tmp_28_fu_3136_p9;
wire  signed [2:0] tmp_28_fu_3136_p11;
wire   [2:0] tmp_28_fu_3136_p13;
wire  signed [2:0] tmp_29_fu_3171_p1;
wire  signed [2:0] tmp_29_fu_3171_p3;
wire  signed [2:0] tmp_29_fu_3171_p5;
wire   [2:0] tmp_29_fu_3171_p7;
wire   [2:0] tmp_29_fu_3171_p9;
wire   [2:0] tmp_29_fu_3171_p11;
wire   [2:0] tmp_29_fu_3171_p13;
wire   [2:0] tmp_30_fu_3206_p1;
wire   [2:0] tmp_30_fu_3206_p3;
wire   [2:0] tmp_30_fu_3206_p5;
wire   [2:0] tmp_30_fu_3206_p7;
wire  signed [2:0] tmp_30_fu_3206_p9;
wire  signed [2:0] tmp_30_fu_3206_p11;
wire  signed [2:0] tmp_30_fu_3206_p13;
wire   [2:0] tmp_31_fu_3474_p1;
wire   [2:0] tmp_31_fu_3474_p3;
wire   [2:0] tmp_31_fu_3474_p5;
wire   [2:0] tmp_31_fu_3474_p7;
wire  signed [2:0] tmp_31_fu_3474_p9;
wire  signed [2:0] tmp_31_fu_3474_p11;
wire  signed [2:0] tmp_31_fu_3474_p13;
wire   [2:0] tmp_32_fu_3509_p1;
wire  signed [2:0] tmp_32_fu_3509_p3;
wire  signed [2:0] tmp_32_fu_3509_p5;
wire  signed [2:0] tmp_32_fu_3509_p7;
wire   [2:0] tmp_32_fu_3509_p9;
wire   [2:0] tmp_32_fu_3509_p11;
wire   [2:0] tmp_32_fu_3509_p13;
wire  signed [2:0] tmp_33_fu_3544_p1;
wire   [2:0] tmp_33_fu_3544_p3;
wire   [2:0] tmp_33_fu_3544_p5;
wire   [2:0] tmp_33_fu_3544_p7;
wire   [2:0] tmp_33_fu_3544_p9;
wire  signed [2:0] tmp_33_fu_3544_p11;
wire  signed [2:0] tmp_33_fu_3544_p13;
wire   [2:0] tmp_34_fu_3579_p1;
wire   [2:0] tmp_34_fu_3579_p3;
wire  signed [2:0] tmp_34_fu_3579_p5;
wire  signed [2:0] tmp_34_fu_3579_p7;
wire  signed [2:0] tmp_34_fu_3579_p9;
wire   [2:0] tmp_34_fu_3579_p11;
wire   [2:0] tmp_34_fu_3579_p13;
wire  signed [2:0] tmp_35_fu_3614_p1;
wire  signed [2:0] tmp_35_fu_3614_p3;
wire   [2:0] tmp_35_fu_3614_p5;
wire   [2:0] tmp_35_fu_3614_p7;
wire   [2:0] tmp_35_fu_3614_p9;
wire   [2:0] tmp_35_fu_3614_p11;
wire  signed [2:0] tmp_35_fu_3614_p13;
wire   [2:0] tmp_36_fu_3649_p1;
wire   [2:0] tmp_36_fu_3649_p3;
wire   [2:0] tmp_36_fu_3649_p5;
wire  signed [2:0] tmp_36_fu_3649_p7;
wire  signed [2:0] tmp_36_fu_3649_p9;
wire  signed [2:0] tmp_36_fu_3649_p11;
wire   [2:0] tmp_36_fu_3649_p13;
wire  signed [2:0] tmp_37_fu_3684_p1;
wire  signed [2:0] tmp_37_fu_3684_p3;
wire  signed [2:0] tmp_37_fu_3684_p5;
wire   [2:0] tmp_37_fu_3684_p7;
wire   [2:0] tmp_37_fu_3684_p9;
wire   [2:0] tmp_37_fu_3684_p11;
wire   [2:0] tmp_37_fu_3684_p13;
wire   [2:0] tmp_38_fu_3719_p1;
wire   [2:0] tmp_38_fu_3719_p3;
wire   [2:0] tmp_38_fu_3719_p5;
wire   [2:0] tmp_38_fu_3719_p7;
wire  signed [2:0] tmp_38_fu_3719_p9;
wire  signed [2:0] tmp_38_fu_3719_p11;
wire  signed [2:0] tmp_38_fu_3719_p13;
wire   [2:0] tmp_39_fu_3990_p1;
wire   [2:0] tmp_39_fu_3990_p3;
wire   [2:0] tmp_39_fu_3990_p5;
wire   [2:0] tmp_39_fu_3990_p7;
wire  signed [2:0] tmp_39_fu_3990_p9;
wire  signed [2:0] tmp_39_fu_3990_p11;
wire  signed [2:0] tmp_39_fu_3990_p13;
wire   [2:0] tmp_40_fu_4025_p1;
wire  signed [2:0] tmp_40_fu_4025_p3;
wire  signed [2:0] tmp_40_fu_4025_p5;
wire  signed [2:0] tmp_40_fu_4025_p7;
wire   [2:0] tmp_40_fu_4025_p9;
wire   [2:0] tmp_40_fu_4025_p11;
wire   [2:0] tmp_40_fu_4025_p13;
wire  signed [2:0] tmp_41_fu_4060_p1;
wire   [2:0] tmp_41_fu_4060_p3;
wire   [2:0] tmp_41_fu_4060_p5;
wire   [2:0] tmp_41_fu_4060_p7;
wire   [2:0] tmp_41_fu_4060_p9;
wire  signed [2:0] tmp_41_fu_4060_p11;
wire  signed [2:0] tmp_41_fu_4060_p13;
wire   [2:0] tmp_42_fu_4095_p1;
wire   [2:0] tmp_42_fu_4095_p3;
wire  signed [2:0] tmp_42_fu_4095_p5;
wire  signed [2:0] tmp_42_fu_4095_p7;
wire  signed [2:0] tmp_42_fu_4095_p9;
wire   [2:0] tmp_42_fu_4095_p11;
wire   [2:0] tmp_42_fu_4095_p13;
wire  signed [2:0] tmp_43_fu_4130_p1;
wire  signed [2:0] tmp_43_fu_4130_p3;
wire   [2:0] tmp_43_fu_4130_p5;
wire   [2:0] tmp_43_fu_4130_p7;
wire   [2:0] tmp_43_fu_4130_p9;
wire   [2:0] tmp_43_fu_4130_p11;
wire  signed [2:0] tmp_43_fu_4130_p13;
wire   [2:0] tmp_44_fu_4165_p1;
wire   [2:0] tmp_44_fu_4165_p3;
wire   [2:0] tmp_44_fu_4165_p5;
wire  signed [2:0] tmp_44_fu_4165_p7;
wire  signed [2:0] tmp_44_fu_4165_p9;
wire  signed [2:0] tmp_44_fu_4165_p11;
wire   [2:0] tmp_44_fu_4165_p13;
wire  signed [2:0] tmp_45_fu_4200_p1;
wire  signed [2:0] tmp_45_fu_4200_p3;
wire  signed [2:0] tmp_45_fu_4200_p5;
wire   [2:0] tmp_45_fu_4200_p7;
wire   [2:0] tmp_45_fu_4200_p9;
wire   [2:0] tmp_45_fu_4200_p11;
wire   [2:0] tmp_45_fu_4200_p13;
wire   [2:0] tmp_46_fu_4235_p1;
wire   [2:0] tmp_46_fu_4235_p3;
wire   [2:0] tmp_46_fu_4235_p5;
wire   [2:0] tmp_46_fu_4235_p7;
wire  signed [2:0] tmp_46_fu_4235_p9;
wire  signed [2:0] tmp_46_fu_4235_p11;
wire  signed [2:0] tmp_46_fu_4235_p13;
wire   [2:0] tmp_47_fu_4369_p1;
wire   [2:0] tmp_47_fu_4369_p3;
wire   [2:0] tmp_47_fu_4369_p5;
wire   [2:0] tmp_47_fu_4369_p7;
wire  signed [2:0] tmp_47_fu_4369_p9;
wire  signed [2:0] tmp_47_fu_4369_p11;
wire  signed [2:0] tmp_47_fu_4369_p13;
wire   [2:0] tmp_48_fu_4404_p1;
wire  signed [2:0] tmp_48_fu_4404_p3;
wire  signed [2:0] tmp_48_fu_4404_p5;
wire  signed [2:0] tmp_48_fu_4404_p7;
wire   [2:0] tmp_48_fu_4404_p9;
wire   [2:0] tmp_48_fu_4404_p11;
wire   [2:0] tmp_48_fu_4404_p13;
wire  signed [2:0] tmp_49_fu_4439_p1;
wire   [2:0] tmp_49_fu_4439_p3;
wire   [2:0] tmp_49_fu_4439_p5;
wire   [2:0] tmp_49_fu_4439_p7;
wire   [2:0] tmp_49_fu_4439_p9;
wire  signed [2:0] tmp_49_fu_4439_p11;
wire  signed [2:0] tmp_49_fu_4439_p13;
wire   [2:0] tmp_50_fu_4474_p1;
wire   [2:0] tmp_50_fu_4474_p3;
wire  signed [2:0] tmp_50_fu_4474_p5;
wire  signed [2:0] tmp_50_fu_4474_p7;
wire  signed [2:0] tmp_50_fu_4474_p9;
wire   [2:0] tmp_50_fu_4474_p11;
wire   [2:0] tmp_50_fu_4474_p13;
wire  signed [2:0] tmp_51_fu_4509_p1;
wire  signed [2:0] tmp_51_fu_4509_p3;
wire   [2:0] tmp_51_fu_4509_p5;
wire   [2:0] tmp_51_fu_4509_p7;
wire   [2:0] tmp_51_fu_4509_p9;
wire   [2:0] tmp_51_fu_4509_p11;
wire  signed [2:0] tmp_51_fu_4509_p13;
wire   [2:0] tmp_52_fu_4544_p1;
wire   [2:0] tmp_52_fu_4544_p3;
wire   [2:0] tmp_52_fu_4544_p5;
wire  signed [2:0] tmp_52_fu_4544_p7;
wire  signed [2:0] tmp_52_fu_4544_p9;
wire  signed [2:0] tmp_52_fu_4544_p11;
wire   [2:0] tmp_52_fu_4544_p13;
wire  signed [2:0] tmp_53_fu_4579_p1;
wire  signed [2:0] tmp_53_fu_4579_p3;
wire  signed [2:0] tmp_53_fu_4579_p5;
wire   [2:0] tmp_53_fu_4579_p7;
wire   [2:0] tmp_53_fu_4579_p9;
wire   [2:0] tmp_53_fu_4579_p11;
wire   [2:0] tmp_53_fu_4579_p13;
wire   [2:0] tmp_54_fu_4614_p1;
wire   [2:0] tmp_54_fu_4614_p3;
wire   [2:0] tmp_54_fu_4614_p5;
wire   [2:0] tmp_54_fu_4614_p7;
wire  signed [2:0] tmp_54_fu_4614_p9;
wire  signed [2:0] tmp_54_fu_4614_p11;
wire  signed [2:0] tmp_54_fu_4614_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_146 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2351_p0),.din1(grp_fu_2351_p1),.ce(1'b1),.dout(grp_fu_2351_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2387_p0),.din1(grp_fu_2387_p1),.ce(1'b1),.dout(grp_fu_2387_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2417_p0),.din1(grp_fu_2417_p1),.ce(1'b1),.dout(grp_fu_2417_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(offset_13_reg_4814),.din1(grp_fu_2440_p1),.ce(1'b1),.dout(grp_fu_2440_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U275(.din0(mul_ln195_fu_2476_p0),.din1(mul_ln195_fu_2476_p1),.dout(mul_ln195_fu_2476_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U276(.din0(mul_ln196_fu_2495_p0),.din1(mul_ln196_fu_2495_p1),.dout(mul_ln196_fu_2495_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U277(.din0(mul_ln199_fu_2514_p0),.din1(mul_ln199_fu_2514_p1),.dout(mul_ln199_fu_2514_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U278(.din0(mul_ln197_1_fu_2546_p0),.din1(mul_ln197_1_fu_2546_p1),.dout(mul_ln197_1_fu_2546_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U279(.din0(mul_ln199_1_fu_2565_p0),.din1(mul_ln199_1_fu_2565_p1),.dout(mul_ln199_1_fu_2565_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U280(.din0(mul_ln199_2_fu_2601_p0),.din1(mul_ln199_2_fu_2601_p1),.dout(mul_ln199_2_fu_2601_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U281(.din0(mul_ln172_4_fu_2623_p0),.din1(mul_ln172_4_fu_2623_p1),.dout(mul_ln172_4_fu_2623_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U282(.din0(mul_ln194_fu_2656_p0),.din1(mul_ln194_fu_2656_p1),.dout(mul_ln194_fu_2656_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U283(.din0(mul_ln197_fu_2685_p0),.din1(mul_ln197_fu_2685_p1),.dout(mul_ln197_fu_2685_p2));
fft1D_512_mul_9ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_9ns_12ns_21_1_1_U284(.din0(mul_ln198_fu_2714_p0),.din1(mul_ln198_fu_2714_p1),.dout(mul_ln198_fu_2714_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U285(.din0(mul_ln172_5_fu_2846_p0),.din1(mul_ln172_5_fu_2846_p1),.dout(mul_ln172_5_fu_2846_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U286(.din0(mul_ln194_1_fu_2869_p0),.din1(mul_ln194_1_fu_2869_p1),.dout(mul_ln194_1_fu_2869_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U287(.din0(mul_ln195_1_fu_2888_p0),.din1(mul_ln195_1_fu_2888_p1),.dout(mul_ln195_1_fu_2888_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U288(.din0(mul_ln196_1_fu_2907_p0),.din1(mul_ln196_1_fu_2907_p1),.dout(mul_ln196_1_fu_2907_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U289(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_s_fu_2961_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_s_fu_2961_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U290(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_24_fu_2996_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_24_fu_2996_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U291(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_25_fu_3031_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_25_fu_3031_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U292(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_26_fu_3066_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_26_fu_3066_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U293(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_27_fu_3101_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_27_fu_3101_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U294(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_28_fu_3136_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_28_fu_3136_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U295(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_29_fu_3171_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_29_fu_3171_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U296(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_30_fu_3206_p15),.sel(trunc_ln172_reg_4896),.dout(tmp_30_fu_3206_p17));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U297(.din0(mul_ln172_6_fu_3324_p0),.din1(mul_ln172_6_fu_3324_p1),.dout(mul_ln172_6_fu_3324_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U298(.din0(mul_ln194_2_fu_3347_p0),.din1(mul_ln194_2_fu_3347_p1),.dout(mul_ln194_2_fu_3347_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U299(.din0(mul_ln195_2_fu_3366_p0),.din1(mul_ln195_2_fu_3366_p1),.dout(mul_ln195_2_fu_3366_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U300(.din0(mul_ln196_2_fu_3385_p0),.din1(mul_ln196_2_fu_3385_p1),.dout(mul_ln196_2_fu_3385_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U301(.din0(mul_ln197_2_fu_3404_p0),.din1(mul_ln197_2_fu_3404_p1),.dout(mul_ln197_2_fu_3404_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U302(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_31_fu_3474_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_31_fu_3474_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U303(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_32_fu_3509_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_32_fu_3509_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U304(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_33_fu_3544_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_33_fu_3544_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U305(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_34_fu_3579_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_34_fu_3579_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U306(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_35_fu_3614_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_35_fu_3614_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U307(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_36_fu_3649_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_36_fu_3649_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U308(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_37_fu_3684_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_37_fu_3684_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U309(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_38_fu_3719_p15),.sel(trunc_ln172_13_reg_5233),.dout(tmp_38_fu_3719_p17));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U310(.din0(mul_ln172_7_fu_3837_p0),.din1(mul_ln172_7_fu_3837_p1),.dout(mul_ln172_7_fu_3837_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U311(.din0(mul_ln194_3_fu_3860_p0),.din1(mul_ln194_3_fu_3860_p1),.dout(mul_ln194_3_fu_3860_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U312(.din0(mul_ln195_3_fu_3879_p0),.din1(mul_ln195_3_fu_3879_p1),.dout(mul_ln195_3_fu_3879_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U313(.din0(mul_ln196_3_fu_3898_p0),.din1(mul_ln196_3_fu_3898_p1),.dout(mul_ln196_3_fu_3898_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U314(.din0(mul_ln197_3_fu_3917_p0),.din1(mul_ln197_3_fu_3917_p1),.dout(mul_ln197_3_fu_3917_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U315(.din0(mul_ln199_3_fu_3936_p0),.din1(mul_ln199_3_fu_3936_p1),.dout(mul_ln199_3_fu_3936_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U316(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_39_fu_3990_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_39_fu_3990_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U317(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_40_fu_4025_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_40_fu_4025_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U318(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_41_fu_4060_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_41_fu_4060_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U319(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_42_fu_4095_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_42_fu_4095_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U320(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_43_fu_4130_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_43_fu_4130_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U321(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_44_fu_4165_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_44_fu_4165_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U322(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_45_fu_4200_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_45_fu_4200_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U323(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_46_fu_4235_p15),.sel(trunc_ln172_14_reg_5615),.dout(tmp_46_fu_4235_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U324(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_47_fu_4369_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_47_fu_4369_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U325(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_48_fu_4404_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_48_fu_4404_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U326(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_49_fu_4439_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_49_fu_4439_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U327(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_50_fu_4474_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_50_fu_4474_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U328(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_51_fu_4509_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_51_fu_4509_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U329(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_52_fu_4544_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_52_fu_4544_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U330(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_53_fu_4579_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_53_fu_4579_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U331(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_54_fu_4614_p15),.sel(trunc_ln172_15_reg_6007),.dout(tmp_54_fu_4614_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U332(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4668_p0),.din1(grp_fu_4668_p1),.din2(grp_fu_4668_p2),.ce(1'b1),.dout(grp_fu_4668_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U333(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4677_p0),.din1(grp_fu_4677_p1),.din2(grp_fu_4677_p2),.ce(1'b1),.dout(grp_fu_4677_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U334(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4686_p0),.din1(grp_fu_4686_p1),.din2(grp_fu_4686_p2),.ce(1'b1),.dout(grp_fu_4686_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4695_p0),.din1(grp_fu_4695_p1),.din2(grp_fu_4695_p2),.ce(1'b1),.dout(grp_fu_4695_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U336(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4704_p0),.din1(grp_fu_4704_p1),.din2(grp_fu_4704_p2),.ce(1'b1),.dout(grp_fu_4704_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U337(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4713_p0),.din1(grp_fu_4713_p1),.din2(grp_fu_4713_p2),.ce(1'b1),.dout(grp_fu_4713_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U338(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4722_p0),.din1(grp_fu_4722_p1),.din2(grp_fu_4722_p2),.ce(1'b1),.dout(grp_fu_4722_p3));
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
        tid_2_fu_146 <= 7'd0;
    end else if (((tmp_reg_4748 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_2_fu_146 <= add_ln188_fu_2445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_1_reg_5260 <= add_ln194_1_fu_2923_p2;
        add_ln195_2_reg_5265 <= add_ln195_2_fu_2928_p2;
        add_ln196_2_reg_5270 <= add_ln196_2_fu_2933_p2;
        add_ln197_1_reg_5275 <= add_ln197_1_fu_2938_p2;
        add_ln197_reg_4856 <= add_ln197_fu_2533_p2;
        add_ln199_1_reg_4861 <= add_ln199_1_fu_2538_p2;
        offset_reg_4790 <= offset_fu_2381_p2;
        offset_reg_4790_pp0_iter1_reg <= offset_reg_4790;
        offset_reg_4790_pp0_iter2_reg <= offset_reg_4790_pp0_iter1_reg;
        tmp_194_reg_4841 <= {{mul_ln195_fu_2476_p2[18:12]}};
        tmp_195_reg_4846 <= {{mul_ln196_fu_2495_p2[18:12]}};
        tmp_199_reg_4851 <= {{mul_ln199_fu_2514_p2[18:12]}};
        tmp_201_reg_5228 <= {{mul_ln172_5_fu_2846_p2[18:12]}};
        tmp_202_reg_5245 <= {{mul_ln194_1_fu_2869_p2[18:12]}};
        tmp_203_reg_5250 <= {{mul_ln195_1_fu_2888_p2[18:12]}};
        tmp_204_reg_5255 <= {{mul_ln196_1_fu_2907_p2[18:12]}};
        tmp_215_reg_5280 <= {{tmp_215_fu_2943_p1[20:13]}};
        tmp_217_reg_5285 <= {{tmp_217_fu_2952_p1[20:13]}};
        tmp_47_reg_6370 <= tmp_47_fu_4369_p17;
        tmp_48_reg_6375 <= tmp_48_fu_4404_p17;
        tmp_49_reg_6380 <= tmp_49_fu_4439_p17;
        tmp_50_reg_6385 <= tmp_50_fu_4474_p17;
        tmp_51_reg_6390 <= tmp_51_fu_4509_p17;
        tmp_52_reg_6395 <= tmp_52_fu_4544_p17;
        tmp_53_reg_6400 <= tmp_53_fu_4579_p17;
        tmp_54_reg_6405 <= tmp_54_fu_4614_p17;
        trunc_ln172_13_reg_5233 <= trunc_ln172_13_fu_2862_p1;
        zext_ln114_reg_4784[2 : 0] <= zext_ln114_fu_2357_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln194_2_reg_5647 <= add_ln194_2_fu_3420_p2;
        add_ln195_3_reg_5652 <= add_ln195_3_fu_3425_p2;
        add_ln196_3_reg_5657 <= add_ln196_3_fu_3430_p2;
        add_ln197_2_reg_5662 <= add_ln197_2_fu_3435_p2;
        add_ln199_2_reg_4876 <= add_ln199_2_fu_2584_p2;
        add_ln199_3_reg_5672 <= add_ln199_3_fu_3449_p2;
        offset_12_reg_4802 <= offset_12_fu_2412_p2;
        offset_12_reg_4802_pp0_iter1_reg <= offset_12_reg_4802;
        offset_12_reg_4802_pp0_iter2_reg <= offset_12_reg_4802_pp0_iter1_reg;
        offset_13_reg_4814 <= offset_13_fu_2435_p2;
        offset_13_reg_4814_pp0_iter1_reg <= offset_13_reg_4814;
        offset_13_reg_4814_pp0_iter2_reg <= offset_13_reg_4814_pp0_iter1_reg;
        offset_13_reg_4814_pp0_iter3_reg <= offset_13_reg_4814_pp0_iter2_reg;
        tmp_205_reg_4866 <= {{mul_ln197_1_fu_2546_p2[18:12]}};
        tmp_207_reg_4871 <= {{mul_ln199_1_fu_2565_p2[18:12]}};
        tmp_210_reg_5610 <= {{mul_ln172_6_fu_3324_p2[18:12]}};
        tmp_211_reg_5627 <= {{mul_ln194_2_fu_3347_p2[18:12]}};
        tmp_212_reg_5632 <= {{mul_ln195_2_fu_3366_p2[18:12]}};
        tmp_213_reg_5637 <= {{mul_ln196_2_fu_3385_p2[18:12]}};
        tmp_214_reg_5642 <= {{mul_ln197_2_fu_3404_p2[18:12]}};
        tmp_223_reg_5667 <= {{tmp_223_fu_3440_p1[20:13]}};
        tmp_225_reg_5677 <= {{tmp_225_fu_3454_p1[20:13]}};
        tmp_24_reg_5295 <= tmp_24_fu_2996_p17;
        tmp_25_reg_5300 <= tmp_25_fu_3031_p17;
        tmp_26_reg_5305 <= tmp_26_fu_3066_p17;
        tmp_27_reg_5310 <= tmp_27_fu_3101_p17;
        tmp_28_reg_5315 <= tmp_28_fu_3136_p17;
        tmp_29_reg_5320 <= tmp_29_fu_3171_p17;
        tmp_30_reg_5325 <= tmp_30_fu_3206_p17;
        tmp_s_reg_5290 <= tmp_s_fu_2961_p17;
        trunc_ln172_14_reg_5615 <= trunc_ln172_14_fu_3340_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_reg_4923 <= add_ln194_fu_2730_p2;
        add_ln195_1_reg_4928 <= add_ln195_1_fu_2735_p2;
        add_ln195_reg_4826 <= add_ln195_fu_2458_p2;
        add_ln196_1_reg_4933 <= add_ln196_1_fu_2740_p2;
        add_ln196_reg_4831 <= add_ln196_fu_2463_p2;
        add_ln199_reg_4836 <= add_ln199_fu_2468_p2;
        hi_reg_4752 <= {{ap_sig_allocacmp_tid[5:3]}};
        hi_reg_4752_pp0_iter1_reg <= hi_reg_4752;
        hi_reg_4752_pp0_iter2_reg <= hi_reg_4752_pp0_iter1_reg;
        offset_4_reg_4774[3 : 0] <= offset_4_fu_2339_p5[3 : 0];
offset_4_reg_4774[8 : 6] <= offset_4_fu_2339_p5[8 : 6];
        offset_4_reg_4774_pp0_iter1_reg[3 : 0] <= offset_4_reg_4774[3 : 0];
offset_4_reg_4774_pp0_iter1_reg[8 : 6] <= offset_4_reg_4774[8 : 6];
        offset_4_reg_4774_pp0_iter2_reg[3 : 0] <= offset_4_reg_4774_pp0_iter1_reg[3 : 0];
offset_4_reg_4774_pp0_iter2_reg[8 : 6] <= offset_4_reg_4774_pp0_iter1_reg[8 : 6];
        tid_reg_4738 <= ap_sig_allocacmp_tid;
        tid_reg_4738_pp0_iter1_reg <= tid_reg_4738;
        tid_reg_4738_pp0_iter2_reg <= tid_reg_4738_pp0_iter1_reg;
        tid_reg_4738_pp0_iter3_reg <= tid_reg_4738_pp0_iter2_reg;
        tmp_191_reg_4767 <= ap_sig_allocacmp_tid[32'd2];
        tmp_191_reg_4767_pp0_iter1_reg <= tmp_191_reg_4767;
        tmp_191_reg_4767_pp0_iter2_reg <= tmp_191_reg_4767_pp0_iter1_reg;
        tmp_192_reg_4891 <= {{mul_ln172_4_fu_2623_p2[18:12]}};
        tmp_193_reg_4908 <= {{mul_ln194_fu_2656_p2[18:12]}};
        tmp_196_reg_4913 <= {{mul_ln197_fu_2685_p2[18:12]}};
        tmp_198_reg_4918 <= {{mul_ln198_fu_2714_p2[20:13]}};
        tmp_206_reg_4938 <= {{tmp_206_fu_2745_p1[20:13]}};
        tmp_208_reg_4943 <= {{tmp_208_fu_2754_p1[20:13]}};
        tmp_39_reg_6050 <= tmp_39_fu_3990_p17;
        tmp_40_reg_6055 <= tmp_40_fu_4025_p17;
        tmp_41_reg_6060 <= tmp_41_fu_4060_p17;
        tmp_42_reg_6065 <= tmp_42_fu_4095_p17;
        tmp_43_reg_6070 <= tmp_43_fu_4130_p17;
        tmp_44_reg_6075 <= tmp_44_fu_4165_p17;
        tmp_45_reg_6080 <= tmp_45_fu_4200_p17;
        tmp_46_reg_6085 <= tmp_46_fu_4235_p17;
        tmp_61_reg_6044 <= {{tid_reg_4738_pp0_iter3_reg[5:2]}};
        tmp_reg_4748 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_4748_pp0_iter1_reg <= tmp_reg_4748;
        tmp_reg_4748_pp0_iter2_reg <= tmp_reg_4748_pp0_iter1_reg;
        tmp_reg_4748_pp0_iter3_reg <= tmp_reg_4748_pp0_iter2_reg;
        trunc_ln172_reg_4896 <= trunc_ln172_fu_2639_p1;
        trunc_ln191_reg_4760 <= trunc_ln191_fu_2327_p1;
        trunc_ln191_reg_4760_pp0_iter1_reg <= trunc_ln191_reg_4760;
        trunc_ln191_reg_4760_pp0_iter2_reg <= trunc_ln191_reg_4760_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_200_reg_4881 <= {{tmp_200_fu_2589_p1[20:13]}};
        tmp_216_reg_4886 <= {{mul_ln199_2_fu_2601_p2[18:12]}};
        tmp_218_reg_6002 <= {{mul_ln172_7_fu_3837_p2[18:12]}};
        tmp_219_reg_6019 <= {{mul_ln194_3_fu_3860_p2[18:12]}};
        tmp_220_reg_6024 <= {{mul_ln195_3_fu_3879_p2[18:12]}};
        tmp_221_reg_6029 <= {{mul_ln196_3_fu_3898_p2[18:12]}};
        tmp_222_reg_6034 <= {{mul_ln197_3_fu_3917_p2[18:12]}};
        tmp_224_reg_6039 <= {{mul_ln199_3_fu_3936_p2[18:12]}};
        tmp_31_reg_5682 <= tmp_31_fu_3474_p17;
        tmp_32_reg_5687 <= tmp_32_fu_3509_p17;
        tmp_33_reg_5692 <= tmp_33_fu_3544_p17;
        tmp_34_reg_5697 <= tmp_34_fu_3579_p17;
        tmp_35_reg_5702 <= tmp_35_fu_3614_p17;
        tmp_36_reg_5707 <= tmp_36_fu_3649_p17;
        tmp_37_reg_5712 <= tmp_37_fu_3684_p17;
        tmp_38_reg_5717 <= tmp_38_fu_3719_p17;
        trunc_ln172_15_reg_6007 <= trunc_ln172_15_fu_3853_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_1_d0_local = tmp_49_reg_6380;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_41_reg_6060;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_33_reg_5692;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_25_reg_5300;
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
        DATA_x_2_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_2_d0_local = tmp_51_reg_6390;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_d0_local = tmp_43_reg_6070;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_d0_local = tmp_35_reg_5702;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_d0_local = tmp_27_reg_5310;
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
        DATA_x_3_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_3_d0_local = tmp_53_reg_6400;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_d0_local = tmp_45_reg_6080;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_d0_local = tmp_37_reg_5712;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_3_d0_local = tmp_29_reg_5320;
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
        DATA_x_4_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_4_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_4_d0_local = tmp_48_reg_6375;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_d0_local = tmp_40_reg_6055;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_d0_local = tmp_32_reg_5687;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_4_d0_local = tmp_24_reg_5295;
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
        DATA_x_5_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_5_d0_local = tmp_50_reg_6385;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_d0_local = tmp_42_reg_6065;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_d0_local = tmp_34_reg_5697;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_5_d0_local = tmp_26_reg_5305;
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
        DATA_x_6_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_6_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_6_d0_local = tmp_52_reg_6395;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_d0_local = tmp_44_reg_6075;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_d0_local = tmp_36_reg_5707;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_6_d0_local = tmp_28_reg_5315;
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
        DATA_x_7_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_7_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_7_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_7_d0_local = tmp_54_reg_6405;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_7_d0_local = tmp_46_reg_6085;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_d0_local = tmp_38_reg_5717;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_7_d0_local = tmp_30_reg_5325;
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
        DATA_x_address0_local = zext_ln191_2_fu_4656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln191_1_fu_4357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln191_fu_3969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln188_fu_3463_p1;
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
        DATA_x_d0_local = tmp_47_reg_6370;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_39_reg_6050;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_31_reg_5682;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_s_reg_5290;
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
    if (((tmp_reg_4748 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_4748_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_146;
    end
end
always @ (*) begin
    if (((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln200_3_fu_4340_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln199_3_fu_4330_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln198_3_fu_4320_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln197_3_fu_4310_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln196_3_fu_4300_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln195_3_fu_4290_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln194_3_fu_4280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_6_fu_3754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln200_1_fu_3311_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln199_1_fu_3301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln198_1_fu_3291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln197_1_fu_3281_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln196_1_fu_3271_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln195_1_fu_3261_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln194_1_fu_3251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_4_fu_2763_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln172_7_fu_4270_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln200_2_fu_3824_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln199_2_fu_3814_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln198_2_fu_3804_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln197_2_fu_3794_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln196_2_fu_3784_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln195_2_fu_3774_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln194_2_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_5_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln200_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln199_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln198_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln197_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln196_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln195_fu_2783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln194_fu_2773_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233== 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln200_3_fu_4340_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln199_3_fu_4330_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln198_3_fu_4320_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln197_3_fu_4310_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln196_3_fu_4300_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln195_3_fu_4290_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln194_3_fu_4280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_6_fu_3754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln200_1_fu_3311_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln199_1_fu_3301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln198_1_fu_3291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln197_1_fu_3281_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln196_1_fu_3271_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln195_1_fu_3261_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln194_1_fu_3251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_4_fu_2763_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln172_7_fu_4270_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln200_2_fu_3824_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln199_2_fu_3814_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln198_2_fu_3804_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln197_2_fu_3794_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln196_2_fu_3784_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln195_2_fu_3774_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln194_2_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_5_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln200_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln199_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln198_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln197_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln196_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln195_fu_2783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln194_fu_2773_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233== 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln200_3_fu_4340_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln199_3_fu_4330_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln198_3_fu_4320_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln197_3_fu_4310_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln196_3_fu_4300_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln195_3_fu_4290_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln194_3_fu_4280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_6_fu_3754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln200_1_fu_3311_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln199_1_fu_3301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln198_1_fu_3291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln197_1_fu_3281_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln196_1_fu_3271_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln195_1_fu_3261_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln194_1_fu_3251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_4_fu_2763_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln172_7_fu_4270_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln200_2_fu_3824_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln199_2_fu_3814_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln198_2_fu_3804_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln197_2_fu_3794_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln196_2_fu_3784_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln195_2_fu_3774_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln194_2_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln172_5_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln200_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln199_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln198_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln197_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln196_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln195_fu_2783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln194_fu_2773_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233== 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln200_3_fu_4340_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln199_3_fu_4330_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln198_3_fu_4320_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln197_3_fu_4310_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln196_3_fu_4300_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln195_3_fu_4290_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln194_3_fu_4280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_6_fu_3754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln200_1_fu_3311_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln199_1_fu_3301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln198_1_fu_3291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln197_1_fu_3281_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln196_1_fu_3271_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln195_1_fu_3261_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln194_1_fu_3251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_4_fu_2763_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln172_7_fu_4270_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln200_2_fu_3824_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln199_2_fu_3814_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln198_2_fu_3804_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln197_2_fu_3794_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln196_2_fu_3784_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln195_2_fu_3774_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln194_2_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln172_5_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln200_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln199_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln198_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln197_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln196_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln195_fu_2783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln194_fu_2773_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233== 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln200_3_fu_4340_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln199_3_fu_4330_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln198_3_fu_4320_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln197_3_fu_4310_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln196_3_fu_4300_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln195_3_fu_4290_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln194_3_fu_4280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_6_fu_3754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln200_1_fu_3311_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln199_1_fu_3301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln198_1_fu_3291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln197_1_fu_3281_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln196_1_fu_3271_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln195_1_fu_3261_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln194_1_fu_3251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_4_fu_2763_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln172_7_fu_4270_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln200_2_fu_3824_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln199_2_fu_3814_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln198_2_fu_3804_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln197_2_fu_3794_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln196_2_fu_3784_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln195_2_fu_3774_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln194_2_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln172_5_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln200_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln199_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln198_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln197_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln196_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln195_fu_2783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln194_fu_2773_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233== 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln200_3_fu_4340_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln199_3_fu_4330_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln198_3_fu_4320_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln197_3_fu_4310_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln196_3_fu_4300_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln195_3_fu_4290_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln194_3_fu_4280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_6_fu_3754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln200_1_fu_3311_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln199_1_fu_3301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln198_1_fu_3291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln197_1_fu_3281_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln196_1_fu_3271_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln195_1_fu_3261_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln194_1_fu_3251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_4_fu_2763_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln172_7_fu_4270_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln200_2_fu_3824_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln199_2_fu_3814_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln198_2_fu_3804_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln197_2_fu_3794_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln196_2_fu_3784_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln195_2_fu_3774_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln194_2_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln172_5_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln200_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln199_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln198_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln197_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln196_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln195_fu_2783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln194_fu_2773_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233== 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln200_3_fu_4340_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln199_3_fu_4330_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln198_3_fu_4320_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln197_3_fu_4310_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln196_3_fu_4300_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln195_3_fu_4290_p1;
    end else if (((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln194_3_fu_4280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_6_fu_3754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln200_1_fu_3311_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln199_1_fu_3301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln198_1_fu_3291_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln197_1_fu_3281_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln196_1_fu_3271_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln195_1_fu_3261_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln194_1_fu_3251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_4_fu_2763_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln172_7_fu_4270_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln200_2_fu_3824_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln199_2_fu_3814_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln198_2_fu_3804_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln197_2_fu_3794_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln196_2_fu_3784_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln195_2_fu_3774_p1;
    end else if (((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln194_2_fu_3764_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_5_fu_3241_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln200_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln199_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln198_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln197_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln196_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln195_fu_2783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln194_fu_2773_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln172_15_reg_6007 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233== 3'd2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_13_reg_5233 == 3'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln172_15_reg_6007 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln172_15_reg_6007 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((trunc_ln172_14_reg_5615 == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln172_14_reg_5615 == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 ==ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_4896 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) &(trunc_ln172_reg_4896 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign add_ln188_fu_2445_p2 = (tid_reg_4738 + 7'd4);
assign add_ln194_1_fu_2923_p2 = (offset_12_reg_4802_pp0_iter2_reg + 9'd32);
assign add_ln194_2_fu_3420_p2 = (offset_13_reg_4814_pp0_iter2_reg + 9'd32);
assign add_ln194_fu_2730_p2 = (offset_reg_4790_pp0_iter2_reg + 9'd32);
assign add_ln195_1_fu_2735_p2 = (offset_reg_4790_pp0_iter2_reg + 9'd8);
assign add_ln195_2_fu_2928_p2 = (offset_12_reg_4802_pp0_iter2_reg + 9'd8);
assign add_ln195_3_fu_3425_p2 = (offset_13_reg_4814_pp0_iter2_reg + 9'd8);
assign add_ln195_fu_2458_p2 = (offset_4_reg_4774_pp0_iter1_reg + 9'd8);
assign add_ln196_1_fu_2740_p2 = (offset_reg_4790_pp0_iter2_reg + 9'd40);
assign add_ln196_2_fu_2933_p2 = (offset_12_reg_4802_pp0_iter2_reg + 9'd40);
assign add_ln196_3_fu_3430_p2 = (offset_13_reg_4814_pp0_iter2_reg + 9'd40);
assign add_ln196_fu_2463_p2 = (offset_4_reg_4774_pp0_iter1_reg + 9'd40);
assign add_ln197_1_fu_2938_p2 = (offset_12_reg_4802_pp0_iter2_reg + 9'd16);
assign add_ln197_2_fu_3435_p2 = (offset_13_reg_4814_pp0_iter2_reg + 9'd16);
assign add_ln197_fu_2533_p2 = (offset_reg_4790_pp0_iter1_reg + 9'd16);
assign add_ln199_1_fu_2538_p2 = (offset_reg_4790_pp0_iter1_reg + 9'd24);
assign add_ln199_2_fu_2584_p2 = (offset_12_reg_4802_pp0_iter1_reg + 9'd24);
assign add_ln199_3_fu_3449_p2 = (offset_13_reg_4814_pp0_iter2_reg + 9'd24);
assign add_ln199_fu_2468_p2 = (offset_4_reg_4774_pp0_iter1_reg + 9'd24);
assign add_ln1_fu_2672_p5 = {{{{trunc_ln191_reg_4760_pp0_iter2_reg}, {2'd1}}, {tmp_191_reg_4767_pp0_iter2_reg}}, {hi_reg_4752_pp0_iter2_reg}};
assign add_ln_fu_2643_p5 = {{{{trunc_ln191_reg_4760_pp0_iter2_reg}, {2'd2}}, {tmp_191_reg_4767_pp0_iter2_reg}}, {hi_reg_4752_pp0_iter2_reg}};
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
assign grp_fu_2351_p0 = {{{{trunc_ln191_fu_2327_p1}, {2'd0}}, {tmp_191_fu_2331_p3}}, {hi_fu_2317_p4}};
assign grp_fu_2351_p1 = 9'd7;
assign grp_fu_2387_p0 = (mul_ln191_1_fu_2369_p5 + zext_ln114_fu_2357_p1);
assign grp_fu_2387_p1 = 9'd7;
assign grp_fu_2417_p0 = (mul_ln191_2_fu_2400_p5 + zext_ln114_reg_4784);
assign grp_fu_2417_p1 = 9'd7;
assign grp_fu_2440_p1 = 9'd7;
assign grp_fu_4668_p0 = grp_fu_4668_p00;
assign grp_fu_4668_p00 = offset_4_reg_4774_pp0_iter1_reg;
assign grp_fu_4668_p1 = 10'd56;
assign grp_fu_4668_p2 = 21'd1171;
assign grp_fu_4677_p0 = zext_ln172_38_fu_2530_p1;
assign grp_fu_4677_p1 = 10'd48;
assign grp_fu_4677_p2 = 21'd1171;
assign grp_fu_4686_p0 = zext_ln172_38_fu_2530_p1;
assign grp_fu_4686_p1 = 10'd56;
assign grp_fu_4686_p2 = 21'd1171;
assign grp_fu_4695_p0 = zext_ln172_39_fu_2581_p1;
assign grp_fu_4695_p1 = 10'd48;
assign grp_fu_4695_p2 = 21'd1171;
assign grp_fu_4704_p0 = zext_ln172_39_fu_2581_p1;
assign grp_fu_4704_p1 = 10'd56;
assign grp_fu_4704_p2 = 21'd1171;
assign grp_fu_4713_p0 = zext_ln172_40_fu_2617_p1;
assign grp_fu_4713_p1 = 10'd48;
assign grp_fu_4713_p2 = 21'd1171;
assign grp_fu_4722_p0 = zext_ln172_40_fu_2617_p1;
assign grp_fu_4722_p1 = 10'd56;
assign grp_fu_4722_p2 = 21'd1171;
assign hi_fu_2317_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln172_4_fu_2623_p0 = mul_ln172_4_fu_2623_p00;
assign mul_ln172_4_fu_2623_p00 = offset_4_reg_4774_pp0_iter2_reg;
assign mul_ln172_4_fu_2623_p1 = 19'd586;
assign mul_ln172_5_fu_2846_p0 = mul_ln172_5_fu_2846_p00;
assign mul_ln172_5_fu_2846_p00 = offset_reg_4790_pp0_iter2_reg;
assign mul_ln172_5_fu_2846_p1 = 19'd586;
assign mul_ln172_6_fu_3324_p0 = mul_ln172_6_fu_3324_p00;
assign mul_ln172_6_fu_3324_p00 = offset_12_reg_4802_pp0_iter2_reg;
assign mul_ln172_6_fu_3324_p1 = 19'd586;
assign mul_ln172_7_fu_3837_p0 = mul_ln172_7_fu_3837_p00;
assign mul_ln172_7_fu_3837_p00 = offset_13_reg_4814_pp0_iter3_reg;
assign mul_ln172_7_fu_3837_p1 = 19'd586;
assign mul_ln191_1_fu_2369_p5 = {{{{tmp_60_fu_2360_p4}, {3'd4}}, {tmp_60_fu_2360_p4}}, {2'd2}};
assign mul_ln191_2_fu_2400_p5 = {{{{tmp_209_fu_2393_p3}, {4'd8}}, {tmp_209_fu_2393_p3}}, {3'd4}};
assign mul_ln191_3_fu_2423_p5 = {{{{tmp_209_fu_2393_p3}, {4'd12}}, {tmp_209_fu_2393_p3}}, {3'd6}};
assign mul_ln194_1_fu_2869_p0 = mul_ln194_1_fu_2869_p00;
assign mul_ln194_1_fu_2869_p00 = add_ln194_reg_4923;
assign mul_ln194_1_fu_2869_p1 = 19'd586;
assign mul_ln194_2_fu_3347_p0 = mul_ln194_2_fu_3347_p00;
assign mul_ln194_2_fu_3347_p00 = add_ln194_1_reg_5260;
assign mul_ln194_2_fu_3347_p1 = 19'd586;
assign mul_ln194_3_fu_3860_p0 = mul_ln194_3_fu_3860_p00;
assign mul_ln194_3_fu_3860_p00 = add_ln194_2_reg_5647;
assign mul_ln194_3_fu_3860_p1 = 19'd586;
assign mul_ln194_fu_2656_p0 = mul_ln194_fu_2656_p00;
assign mul_ln194_fu_2656_p00 = add_ln_fu_2643_p5;
assign mul_ln194_fu_2656_p1 = 19'd586;
assign mul_ln195_1_fu_2888_p0 = mul_ln195_1_fu_2888_p00;
assign mul_ln195_1_fu_2888_p00 = add_ln195_1_reg_4928;
assign mul_ln195_1_fu_2888_p1 = 19'd586;
assign mul_ln195_2_fu_3366_p0 = mul_ln195_2_fu_3366_p00;
assign mul_ln195_2_fu_3366_p00 = add_ln195_2_reg_5265;
assign mul_ln195_2_fu_3366_p1 = 19'd586;
assign mul_ln195_3_fu_3879_p0 = mul_ln195_3_fu_3879_p00;
assign mul_ln195_3_fu_3879_p00 = add_ln195_3_reg_5652;
assign mul_ln195_3_fu_3879_p1 = 19'd586;
assign mul_ln195_fu_2476_p0 = mul_ln195_fu_2476_p00;
assign mul_ln195_fu_2476_p00 = add_ln195_reg_4826;
assign mul_ln195_fu_2476_p1 = 19'd586;
assign mul_ln196_1_fu_2907_p0 = mul_ln196_1_fu_2907_p00;
assign mul_ln196_1_fu_2907_p00 = add_ln196_1_reg_4933;
assign mul_ln196_1_fu_2907_p1 = 19'd586;
assign mul_ln196_2_fu_3385_p0 = mul_ln196_2_fu_3385_p00;
assign mul_ln196_2_fu_3385_p00 = add_ln196_2_reg_5270;
assign mul_ln196_2_fu_3385_p1 = 19'd586;
assign mul_ln196_3_fu_3898_p0 = mul_ln196_3_fu_3898_p00;
assign mul_ln196_3_fu_3898_p00 = add_ln196_3_reg_5657;
assign mul_ln196_3_fu_3898_p1 = 19'd586;
assign mul_ln196_fu_2495_p0 = mul_ln196_fu_2495_p00;
assign mul_ln196_fu_2495_p00 = add_ln196_reg_4831;
assign mul_ln196_fu_2495_p1 = 19'd586;
assign mul_ln197_1_fu_2546_p0 = mul_ln197_1_fu_2546_p00;
assign mul_ln197_1_fu_2546_p00 = add_ln197_reg_4856;
assign mul_ln197_1_fu_2546_p1 = 19'd586;
assign mul_ln197_2_fu_3404_p0 = mul_ln197_2_fu_3404_p00;
assign mul_ln197_2_fu_3404_p00 = add_ln197_1_reg_5275;
assign mul_ln197_2_fu_3404_p1 = 19'd586;
assign mul_ln197_3_fu_3917_p0 = mul_ln197_3_fu_3917_p00;
assign mul_ln197_3_fu_3917_p00 = add_ln197_2_reg_5662;
assign mul_ln197_3_fu_3917_p1 = 19'd586;
assign mul_ln197_fu_2685_p0 = mul_ln197_fu_2685_p00;
assign mul_ln197_fu_2685_p00 = add_ln1_fu_2672_p5;
assign mul_ln197_fu_2685_p1 = 19'd586;
assign mul_ln198_fu_2714_p0 = mul_ln198_fu_2714_p00;
assign mul_ln198_fu_2714_p00 = tmp_197_fu_2701_p5;
assign mul_ln198_fu_2714_p1 = 21'd1171;
assign mul_ln199_1_fu_2565_p0 = mul_ln199_1_fu_2565_p00;
assign mul_ln199_1_fu_2565_p00 = add_ln199_1_reg_4861;
assign mul_ln199_1_fu_2565_p1 = 19'd586;
assign mul_ln199_2_fu_2601_p0 = mul_ln199_2_fu_2601_p00;
assign mul_ln199_2_fu_2601_p00 = add_ln199_2_reg_4876;
assign mul_ln199_2_fu_2601_p1 = 19'd586;
assign mul_ln199_3_fu_3936_p0 = mul_ln199_3_fu_3936_p00;
assign mul_ln199_3_fu_3936_p00 = add_ln199_3_reg_5672;
assign mul_ln199_3_fu_3936_p1 = 19'd586;
assign mul_ln199_fu_2514_p0 = mul_ln199_fu_2514_p00;
assign mul_ln199_fu_2514_p00 = add_ln199_reg_4836;
assign mul_ln199_fu_2514_p1 = 19'd586;
assign offset_12_fu_2412_p2 = (mul_ln191_2_fu_2400_p5 + zext_ln114_reg_4784);
assign offset_13_fu_2435_p2 = (mul_ln191_3_fu_2423_p5 + zext_ln114_reg_4784);
assign offset_4_fu_2339_p5 = {{{{trunc_ln191_fu_2327_p1}, {2'd0}}, {tmp_191_fu_2331_p3}}, {hi_fu_2317_p4}};
assign offset_fu_2381_p2 = (mul_ln191_1_fu_2369_p5 + zext_ln114_fu_2357_p1);
assign or_ln188_1_fu_4350_p3 = {{tmp_61_reg_6044}, {2'd2}};
assign or_ln188_2_fu_4649_p3 = {{tmp_61_reg_6044}, {2'd3}};
assign or_ln9_fu_3961_p3 = {{tmp_59_fu_3952_p4}, {1'd1}};
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
assign tmp_191_fu_2331_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_197_fu_2701_p5 = {{{{trunc_ln191_reg_4760_pp0_iter2_reg}, {2'd3}}, {tmp_191_reg_4767_pp0_iter2_reg}}, {hi_reg_4752_pp0_iter2_reg}};
assign tmp_200_fu_2589_p1 = grp_fu_4668_p3;
assign tmp_206_fu_2745_p1 = grp_fu_4677_p3;
assign tmp_208_fu_2754_p1 = grp_fu_4686_p3;
assign tmp_209_fu_2393_p3 = tid_reg_4738[32'd2];
assign tmp_215_fu_2943_p1 = grp_fu_4695_p3;
assign tmp_217_fu_2952_p1 = grp_fu_4704_p3;
assign tmp_223_fu_3440_p1 = grp_fu_4713_p3;
assign tmp_225_fu_3454_p1 = grp_fu_4722_p3;
assign tmp_24_fu_2996_p15 = 'bx;
assign tmp_25_fu_3031_p15 = 'bx;
assign tmp_26_fu_3066_p15 = 'bx;
assign tmp_27_fu_3101_p15 = 'bx;
assign tmp_28_fu_3136_p15 = 'bx;
assign tmp_29_fu_3171_p15 = 'bx;
assign tmp_30_fu_3206_p15 = 'bx;
assign tmp_31_fu_3474_p15 = 'bx;
assign tmp_32_fu_3509_p15 = 'bx;
assign tmp_33_fu_3544_p15 = 'bx;
assign tmp_34_fu_3579_p15 = 'bx;
assign tmp_35_fu_3614_p15 = 'bx;
assign tmp_36_fu_3649_p15 = 'bx;
assign tmp_37_fu_3684_p15 = 'bx;
assign tmp_38_fu_3719_p15 = 'bx;
assign tmp_39_fu_3990_p15 = 'bx;
assign tmp_40_fu_4025_p15 = 'bx;
assign tmp_41_fu_4060_p15 = 'bx;
assign tmp_42_fu_4095_p15 = 'bx;
assign tmp_43_fu_4130_p15 = 'bx;
assign tmp_44_fu_4165_p15 = 'bx;
assign tmp_45_fu_4200_p15 = 'bx;
assign tmp_46_fu_4235_p15 = 'bx;
assign tmp_47_fu_4369_p15 = 'bx;
assign tmp_48_fu_4404_p15 = 'bx;
assign tmp_49_fu_4439_p15 = 'bx;
assign tmp_50_fu_4474_p15 = 'bx;
assign tmp_51_fu_4509_p15 = 'bx;
assign tmp_52_fu_4544_p15 = 'bx;
assign tmp_53_fu_4579_p15 = 'bx;
assign tmp_54_fu_4614_p15 = 'bx;
assign tmp_59_fu_3952_p4 = {{tid_reg_4738_pp0_iter3_reg[5:1]}};
assign tmp_60_fu_2360_p4 = {{tid_reg_4738[2:1]}};
assign tmp_s_fu_2961_p15 = 'bx;
assign trunc_ln172_13_fu_2862_p1 = grp_fu_2387_p2[2:0];
assign trunc_ln172_14_fu_3340_p1 = grp_fu_2417_p2[2:0];
assign trunc_ln172_15_fu_3853_p1 = grp_fu_2440_p2[2:0];
assign trunc_ln172_fu_2639_p1 = grp_fu_2351_p2[2:0];
assign trunc_ln191_fu_2327_p1 = ap_sig_allocacmp_tid[2:0];
assign zext_ln114_fu_2357_p1 = hi_reg_4752;
assign zext_ln172_38_fu_2530_p1 = offset_reg_4790_pp0_iter1_reg;
assign zext_ln172_39_fu_2581_p1 = offset_12_reg_4802_pp0_iter1_reg;
assign zext_ln172_40_fu_2617_p1 = offset_13_reg_4814_pp0_iter2_reg;
assign zext_ln172_4_fu_2763_p1 = tmp_192_reg_4891;
assign zext_ln172_5_fu_3241_p1 = tmp_201_reg_5228;
assign zext_ln172_6_fu_3754_p1 = tmp_210_reg_5610;
assign zext_ln172_7_fu_4270_p1 = tmp_218_reg_6002;
assign zext_ln188_fu_3463_p1 = tid_reg_4738_pp0_iter3_reg;
assign zext_ln191_1_fu_4357_p1 = or_ln188_1_fu_4350_p3;
assign zext_ln191_2_fu_4656_p1 = or_ln188_2_fu_4649_p3;
assign zext_ln191_fu_3969_p1 = or_ln9_fu_3961_p3;
assign zext_ln194_1_fu_3251_p1 = tmp_202_reg_5245;
assign zext_ln194_2_fu_3764_p1 = tmp_211_reg_5627;
assign zext_ln194_3_fu_4280_p1 = tmp_219_reg_6019;
assign zext_ln194_fu_2773_p1 = tmp_193_reg_4908;
assign zext_ln195_1_fu_3261_p1 = tmp_203_reg_5250;
assign zext_ln195_2_fu_3774_p1 = tmp_212_reg_5632;
assign zext_ln195_3_fu_4290_p1 = tmp_220_reg_6024;
assign zext_ln195_fu_2783_p1 = tmp_194_reg_4841;
assign zext_ln196_1_fu_3271_p1 = tmp_204_reg_5255;
assign zext_ln196_2_fu_3784_p1 = tmp_213_reg_5637;
assign zext_ln196_3_fu_4300_p1 = tmp_221_reg_6029;
assign zext_ln196_fu_2793_p1 = tmp_195_reg_4846;
assign zext_ln197_1_fu_3281_p1 = tmp_205_reg_4866;
assign zext_ln197_2_fu_3794_p1 = tmp_214_reg_5642;
assign zext_ln197_3_fu_4310_p1 = tmp_222_reg_6034;
assign zext_ln197_fu_2803_p1 = tmp_196_reg_4913;
assign zext_ln198_1_fu_3291_p1 = tmp_206_reg_4938;
assign zext_ln198_2_fu_3804_p1 = tmp_215_reg_5280;
assign zext_ln198_3_fu_4320_p1 = tmp_223_reg_5667;
assign zext_ln198_fu_2813_p1 = tmp_198_reg_4918;
assign zext_ln199_1_fu_3301_p1 = tmp_207_reg_4871;
assign zext_ln199_2_fu_3814_p1 = tmp_216_reg_4886;
assign zext_ln199_3_fu_4330_p1 = tmp_224_reg_6039;
assign zext_ln199_fu_2823_p1 = tmp_199_reg_4851;
assign zext_ln200_1_fu_3311_p1 = tmp_208_reg_4943;
assign zext_ln200_2_fu_3824_p1 = tmp_217_reg_5285;
assign zext_ln200_3_fu_4340_p1 = tmp_225_reg_5677;
assign zext_ln200_fu_2833_p1 = tmp_200_reg_4881;
always @ (posedge ap_clk) begin
    offset_4_reg_4774[5:4] <= 2'b00;
    offset_4_reg_4774_pp0_iter1_reg[5:4] <= 2'b00;
    offset_4_reg_4774_pp0_iter2_reg[5:4] <= 2'b00;
    zext_ln114_reg_4784[8:3] <= 6'b000000;
end
endmodule 