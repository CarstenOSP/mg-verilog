
module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_8_address1,smem_8_ce1,smem_8_we1,smem_8_d1,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [5:0] smem_8_address1;
output   smem_8_ce1;
output   smem_8_we1;
output  [63:0] smem_8_d1;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [5:0] smem_7_address1;
output   smem_7_ce1;
output   smem_7_we1;
output  [63:0] smem_7_d1;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [5:0] smem_6_address1;
output   smem_6_ce1;
output   smem_6_we1;
output  [63:0] smem_6_d1;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [5:0] smem_5_address1;
output   smem_5_ce1;
output   smem_5_we1;
output  [63:0] smem_5_d1;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [5:0] smem_4_address1;
output   smem_4_ce1;
output   smem_4_we1;
output  [63:0] smem_4_d1;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [5:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [5:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [5:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] smem_address1;
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
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_reg_4231;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_2831;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_2844;
reg   [63:0] reg_2857;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_2870;
reg   [6:0] tid_1_reg_4225;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_2891_p3;
wire   [5:0] offset_fu_2899_p1;
reg   [5:0] offset_reg_4235;
wire   [7:0] zext_ln172_5_fu_2903_p1;
reg   [7:0] zext_ln172_5_reg_4243;
reg   [2:0] tmp_28_reg_4249;
wire   [63:0] zext_ln330_fu_2939_p1;
reg   [63:0] zext_ln330_reg_4254;
wire   [4:0] tmp_s_fu_2945_p4;
reg   [4:0] tmp_s_reg_4270;
wire   [5:0] offset_1_fu_2955_p3;
reg   [5:0] offset_1_reg_4275;
reg   [2:0] tmp_36_reg_4283;
wire   [6:0] shl_ln330_1_fu_2989_p3;
reg   [6:0] shl_ln330_1_reg_4288;
wire   [63:0] zext_ln330_1_fu_2997_p1;
reg   [63:0] zext_ln330_1_reg_4294;
wire   [8:0] zext_ln172_6_fu_3003_p1;
reg   [8:0] zext_ln172_6_reg_4310;
reg   [63:0] DATA_y_load_reg_4316;
wire   [8:0] add_ln331_fu_3006_p2;
reg   [8:0] add_ln331_reg_4329;
wire   [7:0] zext_ln172_9_fu_3012_p1;
reg   [7:0] zext_ln172_9_reg_4334;
wire   [8:0] zext_ln172_10_fu_3015_p1;
reg   [8:0] zext_ln172_10_reg_4340;
wire   [8:0] add_ln331_1_fu_3018_p2;
reg   [8:0] add_ln331_1_reg_4346;
wire   [3:0] tmp_20_fu_3024_p4;
reg   [3:0] tmp_20_reg_4351;
wire   [5:0] offset_2_fu_3033_p3;
reg   [5:0] offset_2_reg_4356;
reg   [2:0] tmp_44_reg_4364;
wire   [63:0] zext_ln330_2_fu_3072_p1;
reg   [63:0] zext_ln330_2_reg_4369;
wire   [5:0] offset_3_fu_3078_p3;
reg   [5:0] offset_3_reg_4385;
reg   [2:0] tmp_52_reg_4393;
wire   [63:0] zext_ln330_3_fu_3120_p1;
reg   [63:0] zext_ln330_3_reg_4398;
reg   [63:0] DATA_y_load_2_reg_4414;
reg   [63:0] DATA_y_1_load_reg_4427;
reg   [63:0] DATA_y_1_load_2_reg_4440;
reg   [5:0] tmp_29_reg_4453;
wire   [63:0] zext_ln332_4_fu_3152_p1;
reg   [63:0] zext_ln332_4_reg_4458;
reg   [5:0] tmp_37_reg_4474;
wire   [63:0] zext_ln332_5_fu_3184_p1;
reg   [63:0] zext_ln332_5_reg_4479;
wire   [7:0] zext_ln172_13_fu_3190_p1;
reg   [7:0] zext_ln172_13_reg_4495;
wire   [8:0] zext_ln172_14_fu_3193_p1;
reg   [8:0] zext_ln172_14_reg_4501;
wire   [8:0] add_ln331_2_fu_3196_p2;
reg   [8:0] add_ln331_2_reg_4507;
wire   [8:0] zext_ln172_18_fu_3202_p1;
reg   [8:0] zext_ln172_18_reg_4512;
wire   [8:0] add_ln331_3_fu_3205_p2;
reg   [8:0] add_ln331_3_reg_4518;
reg   [63:0] DATA_y_load_4_reg_4523;
reg   [63:0] DATA_y_load_6_reg_4536;
reg   [63:0] DATA_y_1_load_4_reg_4549;
reg   [63:0] DATA_y_1_load_6_reg_4562;
reg   [4:0] tmp_30_reg_4575;
wire   [8:0] add_ln333_fu_3220_p2;
reg   [8:0] add_ln333_reg_4580;
wire   [8:0] add_ln333_1_fu_3225_p2;
reg   [8:0] add_ln333_1_reg_4585;
reg   [5:0] tmp_45_reg_4590;
wire   [63:0] zext_ln332_6_fu_3254_p1;
reg   [63:0] zext_ln332_6_reg_4595;
wire   [7:0] zext_ln172_17_fu_3260_p1;
reg   [7:0] zext_ln172_17_reg_4611;
reg   [5:0] tmp_53_reg_4617;
wire   [63:0] zext_ln332_7_fu_3289_p1;
reg   [63:0] zext_ln332_7_reg_4622;
reg   [63:0] DATA_y_load_1_reg_4633;
reg   [63:0] DATA_y_load_3_reg_4646;
reg   [63:0] DATA_y_1_load_1_reg_4664;
reg   [63:0] DATA_y_1_load_3_reg_4677;
reg   [5:0] tmp_31_reg_4690;
reg   [4:0] tmp_38_reg_4695;
reg   [5:0] tmp_39_reg_4700;
wire   [8:0] add_ln333_2_fu_3342_p2;
reg   [8:0] add_ln333_2_reg_4705;
reg   [63:0] DATA_y_load_5_reg_4710;
reg   [63:0] DATA_y_load_7_reg_4723;
reg   [63:0] DATA_y_1_load_5_reg_4736;
reg   [63:0] DATA_y_1_load_7_reg_4749;
wire   [8:0] add_ln333_3_fu_3347_p2;
reg   [8:0] add_ln333_3_reg_4762;
reg   [4:0] tmp_46_reg_4767;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [5:0] tmp_47_reg_4772;
reg   [5:0] tmp_55_reg_4777;
reg   [4:0] tmp_32_reg_4782;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] tmp_40_reg_4787;
reg   [4:0] tmp_54_reg_4792;
wire   [7:0] add_ln335_fu_3458_p2;
reg   [7:0] add_ln335_reg_4797;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [5:0] tmp_34_reg_4802;
wire   [7:0] add_ln335_1_fu_3472_p2;
reg   [7:0] add_ln335_1_reg_4807;
reg   [4:0] tmp_48_reg_4812;
reg   [4:0] tmp_56_reg_4817;
reg   [5:0] tmp_33_reg_4822;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [5:0] tmp_41_reg_4827;
reg   [5:0] tmp_42_reg_4832;
wire   [7:0] add_ln335_2_fu_3585_p2;
reg   [7:0] add_ln335_2_reg_4837;
wire   [7:0] add_ln335_3_fu_3590_p2;
reg   [7:0] add_ln335_3_reg_4842;
wire   [3:0] trunc_ln172_fu_3595_p1;
reg   [3:0] trunc_ln172_reg_4847;
wire    ap_block_pp0_stage9_11001;
wire   [3:0] trunc_ln172_1_fu_3602_p1;
reg   [3:0] trunc_ln172_1_reg_4851;
reg   [5:0] tmp_49_reg_4855;
reg   [5:0] tmp_50_reg_4860;
reg   [5:0] tmp_57_reg_4865;
wire   [3:0] trunc_ln172_2_fu_3688_p1;
reg   [3:0] trunc_ln172_2_reg_4870;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [3:0] trunc_ln172_3_fu_3692_p1;
reg   [3:0] trunc_ln172_3_reg_4874;
reg   [5:0] tmp_58_reg_4878;
reg   [6:0] tmp_35_reg_4883;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [6:0] tmp_43_reg_4888;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [6:0] tmp_51_reg_4893;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [6:0] tmp_59_reg_4898;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] DATA_y_3_load_4_reg_4963;
reg   [63:0] DATA_y_3_load_6_reg_4976;
reg   [63:0] DATA_y_3_load_1_reg_5009;
reg   [63:0] DATA_y_3_load_3_reg_5022;
reg   [63:0] DATA_y_2_load_5_reg_5035;
reg   [63:0] DATA_y_2_load_7_reg_5048;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_fu_3661_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln172_1_fu_3673_p1;
wire   [63:0] zext_ln172_2_fu_3714_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln172_3_fu_3729_p1;
wire   [63:0] zext_ln331_fu_3741_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln331_1_fu_3753_p1;
wire   [63:0] zext_ln331_2_fu_3774_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln331_3_fu_3795_p1;
wire   [63:0] zext_ln332_fu_3807_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln332_1_fu_3819_p1;
wire   [63:0] zext_ln332_2_fu_3850_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln332_3_fu_3862_p1;
wire   [63:0] zext_ln333_fu_3874_p1;
wire   [63:0] zext_ln333_1_fu_3886_p1;
wire   [63:0] zext_ln333_2_fu_3898_p1;
wire   [63:0] zext_ln333_3_fu_3910_p1;
wire   [63:0] zext_ln334_fu_3922_p1;
wire   [63:0] zext_ln334_1_fu_3934_p1;
wire   [63:0] zext_ln334_2_fu_3946_p1;
wire   [63:0] zext_ln334_3_fu_3958_p1;
wire   [63:0] zext_ln335_fu_3970_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln335_1_fu_3982_p1;
wire   [63:0] zext_ln335_2_fu_3994_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln335_3_fu_4006_p1;
wire   [63:0] zext_ln336_fu_4018_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln336_1_fu_4030_p1;
wire   [63:0] zext_ln336_2_fu_4042_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln336_3_fu_4054_p1;
wire   [63:0] zext_ln337_fu_4066_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln337_1_fu_4078_p1;
wire   [63:0] zext_ln337_2_fu_4090_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln337_3_fu_4102_p1;
reg   [6:0] tid_fu_150;
wire   [6:0] add_ln325_fu_3840_p2;
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
reg    smem_7_we1_local;
reg   [63:0] smem_7_d1_local;
reg    smem_7_ce1_local;
reg   [5:0] smem_7_address1_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    ap_predicate_pred1041_state13;
reg    ap_predicate_pred1048_state13;
reg    ap_predicate_pred1055_state14;
reg    ap_predicate_pred1060_state14;
reg    ap_predicate_pred1041_state15;
reg    ap_predicate_pred1048_state15;
wire    ap_block_pp0_stage15_11001;
reg    ap_predicate_pred1055_state16;
reg    ap_predicate_pred1060_state16;
reg    smem_6_we1_local;
reg   [63:0] smem_6_d1_local;
reg    smem_6_ce1_local;
reg   [5:0] smem_6_address1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    ap_predicate_pred1167_state13;
reg    ap_predicate_pred1174_state13;
reg    ap_predicate_pred1180_state14;
reg    ap_predicate_pred1184_state14;
reg    ap_predicate_pred1167_state15;
reg    ap_predicate_pred1174_state15;
reg    ap_predicate_pred1180_state16;
reg    ap_predicate_pred1184_state16;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [5:0] smem_5_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    ap_predicate_pred1262_state13;
reg    ap_predicate_pred1269_state13;
reg    ap_predicate_pred1275_state14;
reg    ap_predicate_pred1279_state14;
reg    ap_predicate_pred1262_state15;
reg    ap_predicate_pred1269_state15;
reg    ap_predicate_pred1275_state16;
reg    ap_predicate_pred1279_state16;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [5:0] smem_4_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    ap_predicate_pred1357_state13;
reg    ap_predicate_pred1364_state13;
reg    ap_predicate_pred1370_state14;
reg    ap_predicate_pred1374_state14;
reg    ap_predicate_pred1357_state15;
reg    ap_predicate_pred1364_state15;
reg    ap_predicate_pred1370_state16;
reg    ap_predicate_pred1374_state16;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [5:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    ap_predicate_pred1452_state13;
reg    ap_predicate_pred1459_state13;
reg    ap_predicate_pred1465_state14;
reg    ap_predicate_pred1469_state14;
reg    ap_predicate_pred1452_state15;
reg    ap_predicate_pred1459_state15;
reg    ap_predicate_pred1465_state16;
reg    ap_predicate_pred1469_state16;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [5:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    ap_predicate_pred1547_state13;
reg    ap_predicate_pred1554_state13;
reg    ap_predicate_pred1560_state14;
reg    ap_predicate_pred1564_state14;
reg    ap_predicate_pred1547_state15;
reg    ap_predicate_pred1554_state15;
reg    ap_predicate_pred1560_state16;
reg    ap_predicate_pred1564_state16;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [5:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    ap_predicate_pred1642_state13;
reg    ap_predicate_pred1649_state13;
reg    ap_predicate_pred1655_state14;
reg    ap_predicate_pred1659_state14;
reg    ap_predicate_pred1642_state15;
reg    ap_predicate_pred1649_state15;
reg    ap_predicate_pred1655_state16;
reg    ap_predicate_pred1659_state16;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [5:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    ap_predicate_pred1737_state13;
reg    ap_predicate_pred1744_state13;
reg    ap_predicate_pred1750_state14;
reg    ap_predicate_pred1754_state14;
reg    ap_predicate_pred1737_state15;
reg    ap_predicate_pred1744_state15;
reg    ap_predicate_pred1750_state16;
reg    ap_predicate_pred1754_state16;
reg    smem_8_we1_local;
reg   [63:0] smem_8_d1_local;
reg    smem_8_ce1_local;
reg   [5:0] smem_8_address1_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    ap_predicate_pred1845_state13;
reg    ap_predicate_pred1866_state13;
reg    ap_predicate_pred1886_state14;
reg    ap_predicate_pred1904_state14;
reg    ap_predicate_pred1845_state15;
reg    ap_predicate_pred1866_state15;
reg    ap_predicate_pred1886_state16;
reg    ap_predicate_pred1904_state16;
reg    DATA_y_2_ce1_local;
reg   [6:0] DATA_y_2_address1_local;
reg    DATA_y_2_ce0_local;
reg   [6:0] DATA_y_2_address0_local;
reg    DATA_y_3_ce1_local;
reg   [6:0] DATA_y_3_address1_local;
reg    DATA_y_3_ce0_local;
reg   [6:0] DATA_y_3_address0_local;
wire   [5:0] mul_ln172_fu_2911_p0;
wire   [7:0] mul_ln172_fu_2911_p1;
wire   [12:0] mul_ln172_fu_2911_p2;
wire   [4:0] grp_fu_2927_p1;
wire   [6:0] shl_ln330_fu_2933_p2;
wire   [5:0] mul_ln172_1_fu_2967_p0;
wire   [7:0] mul_ln172_1_fu_2967_p1;
wire   [12:0] mul_ln172_1_fu_2967_p2;
wire   [4:0] grp_fu_2983_p1;
wire   [5:0] mul_ln172_2_fu_3045_p0;
wire   [7:0] mul_ln172_2_fu_3045_p1;
wire   [12:0] mul_ln172_2_fu_3045_p2;
wire   [4:0] grp_fu_3061_p1;
wire   [6:0] add_ln330_fu_3067_p2;
wire   [5:0] mul_ln172_3_fu_3090_p0;
wire   [7:0] mul_ln172_3_fu_3090_p1;
wire   [12:0] mul_ln172_3_fu_3090_p2;
wire   [4:0] grp_fu_3106_p1;
wire   [6:0] or_ln1_fu_3112_p3;
wire   [8:0] mul_ln331_fu_3129_p0;
wire   [10:0] mul_ln331_fu_3129_p1;
wire   [18:0] mul_ln331_fu_3129_p2;
wire   [6:0] or_ln_fu_3145_p3;
wire   [8:0] mul_ln331_1_fu_3161_p0;
wire   [10:0] mul_ln331_1_fu_3161_p1;
wire   [18:0] mul_ln331_1_fu_3161_p2;
wire   [6:0] or_ln332_1_fu_3177_p3;
wire   [16:0] tmp_30_fu_3211_p1;
wire  signed [16:0] grp_fu_4114_p3;
wire   [8:0] mul_ln331_2_fu_3233_p0;
wire   [10:0] mul_ln331_2_fu_3233_p1;
wire   [18:0] mul_ln331_2_fu_3233_p2;
wire   [6:0] add_ln332_2_fu_3249_p2;
wire   [8:0] mul_ln331_3_fu_3266_p0;
wire   [10:0] mul_ln331_3_fu_3266_p1;
wire   [18:0] mul_ln331_3_fu_3266_p2;
wire   [6:0] or_ln332_2_fu_3282_p3;
wire   [8:0] mul_ln333_fu_3298_p0;
wire   [10:0] mul_ln333_fu_3298_p1;
wire   [18:0] mul_ln333_fu_3298_p2;
wire   [16:0] tmp_38_fu_3314_p1;
wire  signed [16:0] grp_fu_4123_p3;
wire   [8:0] mul_ln333_1_fu_3326_p0;
wire   [10:0] mul_ln333_1_fu_3326_p1;
wire   [18:0] mul_ln333_1_fu_3326_p2;
wire   [16:0] tmp_46_fu_3352_p1;
wire  signed [16:0] grp_fu_4132_p3;
wire   [8:0] mul_ln333_2_fu_3364_p0;
wire   [10:0] mul_ln333_2_fu_3364_p1;
wire   [18:0] mul_ln333_2_fu_3364_p2;
wire   [8:0] mul_ln333_3_fu_3383_p0;
wire   [10:0] mul_ln333_3_fu_3383_p1;
wire   [18:0] mul_ln333_3_fu_3383_p2;
wire   [7:0] add_ln334_fu_3399_p2;
wire   [7:0] mul_ln334_fu_3408_p0;
wire   [9:0] mul_ln334_fu_3408_p1;
wire   [16:0] mul_ln334_fu_3408_p2;
wire   [7:0] add_ln334_1_fu_3424_p2;
wire   [7:0] mul_ln334_1_fu_3433_p0;
wire   [9:0] mul_ln334_1_fu_3433_p1;
wire   [16:0] mul_ln334_1_fu_3433_p2;
wire   [16:0] tmp_54_fu_3449_p1;
wire  signed [16:0] grp_fu_4141_p3;
wire   [18:0] tmp_34_fu_3463_p1;
wire  signed [18:0] grp_fu_4150_p3;
wire   [7:0] add_ln334_2_fu_3477_p2;
wire   [7:0] mul_ln334_2_fu_3486_p0;
wire   [9:0] mul_ln334_2_fu_3486_p1;
wire   [16:0] mul_ln334_2_fu_3486_p2;
wire   [7:0] add_ln334_3_fu_3502_p2;
wire   [7:0] mul_ln334_3_fu_3511_p0;
wire   [9:0] mul_ln334_3_fu_3511_p1;
wire   [16:0] mul_ln334_3_fu_3511_p2;
wire  signed [8:0] sext_ln335_fu_3530_p1;
wire   [8:0] mul_ln335_fu_3537_p0;
wire   [10:0] mul_ln335_fu_3537_p1;
wire   [18:0] mul_ln335_fu_3537_p2;
wire  signed [8:0] sext_ln335_1_fu_3553_p1;
wire   [8:0] mul_ln335_1_fu_3560_p0;
wire   [10:0] mul_ln335_1_fu_3560_p1;
wire   [18:0] mul_ln335_1_fu_3560_p2;
wire   [18:0] tmp_42_fu_3576_p1;
wire  signed [18:0] grp_fu_4158_p3;
wire   [3:0] grp_fu_2927_p2;
wire   [3:0] grp_fu_2983_p2;
wire  signed [8:0] sext_ln335_2_fu_3606_p1;
wire   [8:0] mul_ln335_2_fu_3613_p0;
wire   [10:0] mul_ln335_2_fu_3613_p1;
wire   [18:0] mul_ln335_2_fu_3613_p2;
wire   [18:0] tmp_50_fu_3629_p1;
wire  signed [18:0] grp_fu_4166_p3;
wire  signed [8:0] sext_ln335_3_fu_3638_p1;
wire   [8:0] mul_ln335_3_fu_3645_p0;
wire   [10:0] mul_ln335_3_fu_3645_p1;
wire   [18:0] mul_ln335_3_fu_3645_p2;
wire   [3:0] grp_fu_3061_p2;
wire   [3:0] grp_fu_3106_p2;
wire   [18:0] tmp_58_fu_3696_p1;
wire  signed [18:0] grp_fu_4174_p3;
wire   [20:0] tmp_35_fu_3705_p1;
wire  signed [20:0] grp_fu_4182_p3;
wire   [20:0] tmp_43_fu_3765_p1;
wire  signed [20:0] grp_fu_4191_p3;
wire   [20:0] tmp_51_fu_3786_p1;
wire  signed [20:0] grp_fu_4200_p3;
wire   [20:0] tmp_59_fu_3831_p1;
wire  signed [20:0] grp_fu_4209_p3;
wire   [5:0] grp_fu_4114_p0;
wire   [6:0] grp_fu_4114_p1;
wire   [8:0] grp_fu_4114_p2;
wire   [5:0] grp_fu_4123_p0;
wire   [6:0] grp_fu_4123_p1;
wire   [8:0] grp_fu_4123_p2;
wire   [5:0] grp_fu_4132_p0;
wire   [6:0] grp_fu_4132_p1;
wire   [8:0] grp_fu_4132_p2;
wire   [5:0] grp_fu_4141_p0;
wire   [6:0] grp_fu_4141_p1;
wire   [8:0] grp_fu_4141_p2;
wire   [5:0] grp_fu_4150_p0;
wire   [7:0] grp_fu_4150_p1;
wire   [9:0] grp_fu_4150_p2;
wire   [5:0] grp_fu_4158_p0;
wire   [7:0] grp_fu_4158_p1;
wire   [9:0] grp_fu_4158_p2;
wire   [5:0] grp_fu_4166_p0;
wire   [7:0] grp_fu_4166_p1;
wire   [9:0] grp_fu_4166_p2;
wire   [5:0] grp_fu_4174_p0;
wire   [7:0] grp_fu_4174_p1;
wire   [9:0] grp_fu_4174_p2;
wire   [5:0] grp_fu_4182_p0;
wire   [8:0] grp_fu_4182_p1;
wire   [10:0] grp_fu_4182_p2;
wire   [5:0] grp_fu_4191_p0;
wire   [8:0] grp_fu_4191_p1;
wire   [10:0] grp_fu_4191_p2;
wire   [5:0] grp_fu_4200_p0;
wire   [8:0] grp_fu_4200_p1;
wire   [10:0] grp_fu_4200_p2;
wire   [5:0] grp_fu_4209_p0;
wire   [8:0] grp_fu_4209_p1;
wire   [10:0] grp_fu_4209_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_4114_p00;
wire   [7:0] grp_fu_4123_p00;
wire   [7:0] grp_fu_4132_p00;
wire   [7:0] grp_fu_4141_p00;
wire   [9:0] grp_fu_4182_p00;
wire   [9:0] grp_fu_4191_p00;
wire   [9:0] grp_fu_4200_p00;
wire   [9:0] grp_fu_4209_p00;
wire   [12:0] mul_ln172_1_fu_2967_p00;
wire   [12:0] mul_ln172_2_fu_3045_p00;
wire   [12:0] mul_ln172_3_fu_3090_p00;
wire   [12:0] mul_ln172_fu_2911_p00;
wire   [18:0] mul_ln331_1_fu_3161_p00;
wire   [18:0] mul_ln331_2_fu_3233_p00;
wire   [18:0] mul_ln331_3_fu_3266_p00;
wire   [18:0] mul_ln331_fu_3129_p00;
wire   [18:0] mul_ln333_1_fu_3326_p00;
wire   [18:0] mul_ln333_2_fu_3364_p00;
wire   [18:0] mul_ln333_3_fu_3383_p00;
wire   [18:0] mul_ln333_fu_3298_p00;
wire   [16:0] mul_ln334_1_fu_3433_p00;
wire   [16:0] mul_ln334_2_fu_3486_p00;
wire   [16:0] mul_ln334_3_fu_3511_p00;
wire   [16:0] mul_ln334_fu_3408_p00;
wire   [18:0] mul_ln335_1_fu_3560_p00;
wire   [18:0] mul_ln335_2_fu_3613_p00;
wire   [18:0] mul_ln335_3_fu_3645_p00;
wire   [18:0] mul_ln335_fu_3537_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_150 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U744(.din0(mul_ln172_fu_2911_p0),.din1(mul_ln172_fu_2911_p1),.dout(mul_ln172_fu_2911_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U745(.clk(ap_clk),.reset(ap_rst),.din0(offset_fu_2899_p1),.din1(grp_fu_2927_p1),.ce(1'b1),.dout(grp_fu_2927_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U746(.din0(mul_ln172_1_fu_2967_p0),.din1(mul_ln172_1_fu_2967_p1),.dout(mul_ln172_1_fu_2967_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U747(.clk(ap_clk),.reset(ap_rst),.din0(offset_1_fu_2955_p3),.din1(grp_fu_2983_p1),.ce(1'b1),.dout(grp_fu_2983_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U748(.din0(mul_ln172_2_fu_3045_p0),.din1(mul_ln172_2_fu_3045_p1),.dout(mul_ln172_2_fu_3045_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U749(.clk(ap_clk),.reset(ap_rst),.din0(offset_2_fu_3033_p3),.din1(grp_fu_3061_p1),.ce(1'b1),.dout(grp_fu_3061_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U750(.din0(mul_ln172_3_fu_3090_p0),.din1(mul_ln172_3_fu_3090_p1),.dout(mul_ln172_3_fu_3090_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U751(.clk(ap_clk),.reset(ap_rst),.din0(offset_3_fu_3078_p3),.din1(grp_fu_3106_p1),.ce(1'b1),.dout(grp_fu_3106_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U752(.din0(mul_ln331_fu_3129_p0),.din1(mul_ln331_fu_3129_p1),.dout(mul_ln331_fu_3129_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U753(.din0(mul_ln331_1_fu_3161_p0),.din1(mul_ln331_1_fu_3161_p1),.dout(mul_ln331_1_fu_3161_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U754(.din0(mul_ln331_2_fu_3233_p0),.din1(mul_ln331_2_fu_3233_p1),.dout(mul_ln331_2_fu_3233_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U755(.din0(mul_ln331_3_fu_3266_p0),.din1(mul_ln331_3_fu_3266_p1),.dout(mul_ln331_3_fu_3266_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U756(.din0(mul_ln333_fu_3298_p0),.din1(mul_ln333_fu_3298_p1),.dout(mul_ln333_fu_3298_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U757(.din0(mul_ln333_1_fu_3326_p0),.din1(mul_ln333_1_fu_3326_p1),.dout(mul_ln333_1_fu_3326_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U758(.din0(mul_ln333_2_fu_3364_p0),.din1(mul_ln333_2_fu_3364_p1),.dout(mul_ln333_2_fu_3364_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U759(.din0(mul_ln333_3_fu_3383_p0),.din1(mul_ln333_3_fu_3383_p1),.dout(mul_ln333_3_fu_3383_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U760(.din0(mul_ln334_fu_3408_p0),.din1(mul_ln334_fu_3408_p1),.dout(mul_ln334_fu_3408_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U761(.din0(mul_ln334_1_fu_3433_p0),.din1(mul_ln334_1_fu_3433_p1),.dout(mul_ln334_1_fu_3433_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U762(.din0(mul_ln334_2_fu_3486_p0),.din1(mul_ln334_2_fu_3486_p1),.dout(mul_ln334_2_fu_3486_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U763(.din0(mul_ln334_3_fu_3511_p0),.din1(mul_ln334_3_fu_3511_p1),.dout(mul_ln334_3_fu_3511_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U764(.din0(mul_ln335_fu_3537_p0),.din1(mul_ln335_fu_3537_p1),.dout(mul_ln335_fu_3537_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U765(.din0(mul_ln335_1_fu_3560_p0),.din1(mul_ln335_1_fu_3560_p1),.dout(mul_ln335_1_fu_3560_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U766(.din0(mul_ln335_2_fu_3613_p0),.din1(mul_ln335_2_fu_3613_p1),.dout(mul_ln335_2_fu_3613_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U767(.din0(mul_ln335_3_fu_3645_p0),.din1(mul_ln335_3_fu_3645_p1),.dout(mul_ln335_3_fu_3645_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U768(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4114_p0),.din1(grp_fu_4114_p1),.din2(grp_fu_4114_p2),.ce(1'b1),.dout(grp_fu_4114_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U769(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4123_p0),.din1(grp_fu_4123_p1),.din2(grp_fu_4123_p2),.ce(1'b1),.dout(grp_fu_4123_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U770(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4132_p0),.din1(grp_fu_4132_p1),.din2(grp_fu_4132_p2),.ce(1'b1),.dout(grp_fu_4132_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U771(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4141_p0),.din1(grp_fu_4141_p1),.din2(grp_fu_4141_p2),.ce(1'b1),.dout(grp_fu_4141_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U772(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4150_p0),.din1(grp_fu_4150_p1),.din2(grp_fu_4150_p2),.ce(1'b1),.dout(grp_fu_4150_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U773(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4158_p0),.din1(grp_fu_4158_p1),.din2(grp_fu_4158_p2),.ce(1'b1),.dout(grp_fu_4158_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U774(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4166_p0),.din1(grp_fu_4166_p1),.din2(grp_fu_4166_p2),.ce(1'b1),.dout(grp_fu_4166_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U775(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4174_p0),.din1(grp_fu_4174_p1),.din2(grp_fu_4174_p2),.ce(1'b1),.dout(grp_fu_4174_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U776(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4182_p0),.din1(grp_fu_4182_p1),.din2(grp_fu_4182_p2),.ce(1'b1),.dout(grp_fu_4182_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U777(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4191_p0),.din1(grp_fu_4191_p1),.din2(grp_fu_4191_p2),.ce(1'b1),.dout(grp_fu_4191_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U778(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4200_p0),.din1(grp_fu_4200_p1),.din2(grp_fu_4200_p2),.ce(1'b1),.dout(grp_fu_4200_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U779(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4209_p0),.din1(grp_fu_4209_p1),.din2(grp_fu_4209_p2),.ce(1'b1),.dout(grp_fu_4209_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
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
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_150 <= 7'd0;
    end else if (((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tid_fu_150 <= add_ln325_fu_3840_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_1_load_1_reg_4664 <= DATA_y_1_q1;
        DATA_y_1_load_3_reg_4677 <= DATA_y_1_q0;
        DATA_y_load_1_reg_4633 <= DATA_y_q1;
        DATA_y_load_3_reg_4646 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_2_reg_4440 <= DATA_y_1_q0;
        DATA_y_1_load_reg_4427 <= DATA_y_1_q1;
        DATA_y_load_2_reg_4414 <= DATA_y_q0;
        DATA_y_load_reg_4316 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_load_4_reg_4549 <= DATA_y_1_q1;
        DATA_y_1_load_6_reg_4562 <= DATA_y_1_q0;
        DATA_y_load_4_reg_4523 <= DATA_y_q1;
        DATA_y_load_6_reg_4536 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_load_5_reg_4736 <= DATA_y_1_q1;
        DATA_y_1_load_7_reg_4749 <= DATA_y_1_q0;
        DATA_y_load_5_reg_4710 <= DATA_y_q1;
        DATA_y_load_7_reg_4723 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_2_load_5_reg_5035 <= DATA_y_2_q1;
        DATA_y_2_load_7_reg_5048 <= DATA_y_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_y_3_load_1_reg_5009 <= DATA_y_3_q1;
        DATA_y_3_load_3_reg_5022 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_3_load_4_reg_4963 <= DATA_y_3_q1;
        DATA_y_3_load_6_reg_4976 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln331_1_reg_4346[8 : 1] <= add_ln331_1_fu_3018_p2[8 : 1];
        add_ln331_reg_4329 <= add_ln331_fu_3006_p2;
        offset_2_reg_4356[5 : 2] <= offset_2_fu_3033_p3[5 : 2];
        offset_3_reg_4385[5 : 2] <= offset_3_fu_3078_p3[5 : 2];
        tmp_20_reg_4351 <= {{tid_1_reg_4225[5:2]}};
        tmp_44_reg_4364 <= {{mul_ln172_2_fu_3045_p2[12:10]}};
        tmp_52_reg_4393 <= {{mul_ln172_3_fu_3090_p2[12:10]}};
        zext_ln172_10_reg_4340[5 : 1] <= zext_ln172_10_fu_3015_p1[5 : 1];
        zext_ln172_6_reg_4310[5 : 0] <= zext_ln172_6_fu_3003_p1[5 : 0];
        zext_ln172_9_reg_4334[5 : 1] <= zext_ln172_9_fu_3012_p1[5 : 1];
        zext_ln330_2_reg_4369[6 : 2] <= zext_ln330_2_fu_3072_p1[6 : 2];
        zext_ln330_3_reg_4398[6 : 3] <= zext_ln330_3_fu_3120_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln331_2_reg_4507[8 : 2] <= add_ln331_2_fu_3196_p2[8 : 2];
        add_ln331_3_reg_4518[8 : 2] <= add_ln331_3_fu_3205_p2[8 : 2];
        tmp_29_reg_4453 <= {{mul_ln331_fu_3129_p2[18:13]}};
        tmp_37_reg_4474 <= {{mul_ln331_1_fu_3161_p2[18:13]}};
        zext_ln172_13_reg_4495[5 : 2] <= zext_ln172_13_fu_3190_p1[5 : 2];
        zext_ln172_14_reg_4501[5 : 2] <= zext_ln172_14_fu_3193_p1[5 : 2];
        zext_ln172_18_reg_4512[5 : 2] <= zext_ln172_18_fu_3202_p1[5 : 2];
        zext_ln332_4_reg_4458[6 : 1] <= zext_ln332_4_fu_3152_p1[6 : 1];
        zext_ln332_5_reg_4479[6 : 2] <= zext_ln332_5_fu_3184_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln333_1_reg_4585[8 : 1] <= add_ln333_1_fu_3225_p2[8 : 1];
        add_ln333_reg_4580 <= add_ln333_fu_3220_p2;
        tmp_30_reg_4575 <= {{tmp_30_fu_3211_p1[16:12]}};
        tmp_45_reg_4590 <= {{mul_ln331_2_fu_3233_p2[18:13]}};
        tmp_53_reg_4617 <= {{mul_ln331_3_fu_3266_p2[18:13]}};
        zext_ln172_17_reg_4611[5 : 2] <= zext_ln172_17_fu_3260_p1[5 : 2];
        zext_ln332_6_reg_4595[6 : 2] <= zext_ln332_6_fu_3254_p1[6 : 2];
        zext_ln332_7_reg_4622[6 : 3] <= zext_ln332_7_fu_3289_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln333_2_reg_4705[8 : 2] <= add_ln333_2_fu_3342_p2[8 : 2];
        add_ln333_3_reg_4762[8 : 2] <= add_ln333_3_fu_3347_p2[8 : 2];
        tmp_31_reg_4690 <= {{mul_ln333_fu_3298_p2[18:13]}};
        tmp_38_reg_4695 <= {{tmp_38_fu_3314_p1[16:12]}};
        tmp_39_reg_4700 <= {{mul_ln333_1_fu_3326_p2[18:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln335_1_reg_4807[7 : 1] <= add_ln335_1_fu_3472_p2[7 : 1];
        add_ln335_reg_4797 <= add_ln335_fu_3458_p2;
        tmp_34_reg_4802 <= {{tmp_34_fu_3463_p1[18:13]}};
        tmp_48_reg_4812 <= {{mul_ln334_2_fu_3486_p2[16:12]}};
        tmp_56_reg_4817 <= {{mul_ln334_3_fu_3511_p2[16:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln335_2_reg_4837[7 : 2] <= add_ln335_2_fu_3585_p2[7 : 2];
        add_ln335_3_reg_4842[7 : 2] <= add_ln335_3_fu_3590_p2[7 : 2];
        tmp_33_reg_4822 <= {{mul_ln335_fu_3537_p2[18:13]}};
        tmp_41_reg_4827 <= {{mul_ln335_1_fu_3560_p2[18:13]}};
        tmp_42_reg_4832 <= {{tmp_42_fu_3576_p1[18:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_predicate_pred1041_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd7));
        ap_predicate_pred1048_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd7));
        ap_predicate_pred1167_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd6));
        ap_predicate_pred1174_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd6));
        ap_predicate_pred1262_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd5));
        ap_predicate_pred1269_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd5));
        ap_predicate_pred1357_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd4));
        ap_predicate_pred1364_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd4));
        ap_predicate_pred1452_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd3));
        ap_predicate_pred1459_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd3));
        ap_predicate_pred1547_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd2));
        ap_predicate_pred1554_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd2));
        ap_predicate_pred1642_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd1));
        ap_predicate_pred1649_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd1));
        ap_predicate_pred1737_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd0));
        ap_predicate_pred1744_state13 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd0));
        ap_predicate_pred1845_state13 <= (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847 == 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 == 4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (tmp_reg_4231 == 1'd0));
        ap_predicate_pred1866_state13 <= (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851 == 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851 == 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (tmp_reg_4231 == 1'd0));
        tmp_35_reg_4883 <= {{tmp_35_fu_3705_p1[20:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_predicate_pred1041_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd7));
        ap_predicate_pred1048_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd7));
        ap_predicate_pred1167_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd6));
        ap_predicate_pred1174_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd6));
        ap_predicate_pred1262_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd5));
        ap_predicate_pred1269_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd5));
        ap_predicate_pred1357_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd4));
        ap_predicate_pred1364_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd4));
        ap_predicate_pred1452_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd3));
        ap_predicate_pred1459_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd3));
        ap_predicate_pred1547_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd2));
        ap_predicate_pred1554_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd2));
        ap_predicate_pred1642_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd1));
        ap_predicate_pred1649_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd1));
        ap_predicate_pred1737_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_reg_4847 == 4'd0));
        ap_predicate_pred1744_state15 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_1_reg_4851 == 4'd0));
        ap_predicate_pred1845_state15 <= (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847 == 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 == 4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (tmp_reg_4231 == 1'd0));
        ap_predicate_pred1866_state15 <= (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851 == 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851 == 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (tmp_reg_4231 == 1'd0));
        tmp_51_reg_4893 <= {{tmp_51_fu_3786_p1[20:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_predicate_pred1055_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd7));
        ap_predicate_pred1060_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd7));
        ap_predicate_pred1180_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd6));
        ap_predicate_pred1184_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd6));
        ap_predicate_pred1275_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd5));
        ap_predicate_pred1279_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd5));
        ap_predicate_pred1370_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd4));
        ap_predicate_pred1374_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd4));
        ap_predicate_pred1465_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd3));
        ap_predicate_pred1469_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd3));
        ap_predicate_pred1560_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd2));
        ap_predicate_pred1564_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd2));
        ap_predicate_pred1655_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd1));
        ap_predicate_pred1659_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd1));
        ap_predicate_pred1750_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd0));
        ap_predicate_pred1754_state14 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd0));
        ap_predicate_pred1886_state14 <= (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3) & ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (tmp_reg_4231 == 1'd0));
        ap_predicate_pred1904_state14 <= (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3) & ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (tmp_reg_4231 == 1'd0));
        tmp_43_reg_4888 <= {{tmp_43_fu_3765_p1[20:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_predicate_pred1055_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd7));
        ap_predicate_pred1060_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd7));
        ap_predicate_pred1180_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd6));
        ap_predicate_pred1184_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd6));
        ap_predicate_pred1275_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd5));
        ap_predicate_pred1279_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd5));
        ap_predicate_pred1370_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd4));
        ap_predicate_pred1374_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd4));
        ap_predicate_pred1465_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd3));
        ap_predicate_pred1469_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd3));
        ap_predicate_pred1560_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd2));
        ap_predicate_pred1564_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd2));
        ap_predicate_pred1655_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd1));
        ap_predicate_pred1659_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd1));
        ap_predicate_pred1750_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_2_reg_4870 == 4'd0));
        ap_predicate_pred1754_state16 <= ((tmp_reg_4231 == 1'd0) & (trunc_ln172_3_reg_4874 == 4'd0));
        ap_predicate_pred1886_state16 <= (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3) & ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (tmp_reg_4231 == 1'd0));
        ap_predicate_pred1904_state16 <= (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3) & ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (tmp_reg_4231 == 1'd0));
        tmp_59_reg_4898 <= {{tmp_59_fu_3831_p1[20:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_1_reg_4275[5 : 1] <= offset_1_fu_2955_p3[5 : 1];
        offset_reg_4235 <= offset_fu_2899_p1;
        shl_ln330_1_reg_4288[6 : 2] <= shl_ln330_1_fu_2989_p3[6 : 2];
        tid_1_reg_4225 <= ap_sig_allocacmp_tid_1;
        tmp_28_reg_4249 <= {{mul_ln172_fu_2911_p2[12:10]}};
        tmp_36_reg_4283 <= {{mul_ln172_1_fu_2967_p2[12:10]}};
        tmp_reg_4231 <= ap_sig_allocacmp_tid_1[32'd6];
        tmp_s_reg_4270 <= {{ap_sig_allocacmp_tid_1[5:1]}};
        zext_ln172_5_reg_4243[5 : 0] <= zext_ln172_5_fu_2903_p1[5 : 0];
        zext_ln330_1_reg_4294[6 : 2] <= zext_ln330_1_fu_2997_p1[6 : 2];
        zext_ln330_reg_4254[6 : 1] <= zext_ln330_fu_2939_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2831 <= DATA_y_2_q1;
        reg_2844 <= DATA_y_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2857 <= DATA_y_3_q1;
        reg_2870 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_32_reg_4782 <= {{mul_ln334_fu_3408_p2[16:12]}};
        tmp_40_reg_4787 <= {{mul_ln334_1_fu_3433_p2[16:12]}};
        tmp_54_reg_4792 <= {{tmp_54_fu_3449_p1[16:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_46_reg_4767 <= {{tmp_46_fu_3352_p1[16:12]}};
        tmp_47_reg_4772 <= {{mul_ln333_2_fu_3364_p2[18:13]}};
        tmp_55_reg_4777 <= {{mul_ln333_3_fu_3383_p2[18:13]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_49_reg_4855 <= {{mul_ln335_2_fu_3613_p2[18:13]}};
        tmp_50_reg_4860 <= {{tmp_50_fu_3629_p1[18:13]}};
        tmp_57_reg_4865 <= {{mul_ln335_3_fu_3645_p2[18:13]}};
        trunc_ln172_1_reg_4851 <= trunc_ln172_1_fu_3602_p1;
        trunc_ln172_reg_4847 <= trunc_ln172_fu_3595_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_58_reg_4878 <= {{tmp_58_fu_3696_p1[18:13]}};
        trunc_ln172_2_reg_4870 <= trunc_ln172_2_fu_3688_p1;
        trunc_ln172_3_reg_4874 <= trunc_ln172_3_fu_3692_p1;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address0_local = zext_ln332_7_fu_3289_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address0_local = zext_ln332_5_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln330_3_fu_3120_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln330_1_fu_2997_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address1_local = zext_ln332_6_fu_3254_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address1_local = zext_ln332_4_fu_3152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln330_2_fu_3072_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln330_fu_2939_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_2_address0_local = zext_ln332_7_reg_4622;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_2_address0_local = zext_ln332_5_reg_4479;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address0_local = zext_ln330_3_reg_4398;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address0_local = zext_ln330_1_reg_4294;
        end else begin
            DATA_y_2_address0_local = 'bx;
        end
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_2_address1_local = zext_ln332_6_reg_4595;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_2_address1_local = zext_ln332_4_reg_4458;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address1_local = zext_ln330_2_reg_4369;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address1_local = zext_ln330_reg_4254;
        end else begin
            DATA_y_2_address1_local = 'bx;
        end
    end else begin
        DATA_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_3_address0_local = zext_ln332_7_reg_4622;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_3_address0_local = zext_ln332_5_reg_4479;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address0_local = zext_ln330_3_reg_4398;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address0_local = zext_ln330_1_reg_4294;
        end else begin
            DATA_y_3_address0_local = 'bx;
        end
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_3_address1_local = zext_ln332_6_reg_4595;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_3_address1_local = zext_ln332_4_reg_4458;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address1_local = zext_ln330_2_reg_4369;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address1_local = zext_ln330_reg_4254;
        end else begin
            DATA_y_3_address1_local = 'bx;
        end
    end else begin
        DATA_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address0_local = zext_ln332_7_fu_3289_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address0_local = zext_ln332_5_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln330_3_fu_3120_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln330_1_fu_2997_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address1_local = zext_ln332_6_fu_3254_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address1_local = zext_ln332_4_fu_3152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln330_2_fu_3072_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln330_fu_2939_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_4231 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1649_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1659_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1649_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1659_state16 == 1'b1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1642_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1655_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1642_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1655_state16 == 1'b1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1554_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1564_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1554_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1564_state16 == 1'b1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1547_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1560_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1547_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1560_state16 == 1'b1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_3_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_3_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_3_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_3_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_3_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_3_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_3_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_3_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_3_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1459_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1469_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1459_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd3) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1469_state16 == 1'b1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1452_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1465_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1452_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd3) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1465_state16 == 1'b1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_4_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_4_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_4_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_4_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_4_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_4_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_4_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_4_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1364_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1374_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1364_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd4) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1374_state16 == 1'b1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1357_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1370_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1357_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd4) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1370_state16 == 1'b1)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_5_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_5_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_5_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_5_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_5_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_5_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_5_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_5_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_5_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_5_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_5_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1269_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1279_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1269_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd5) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1279_state16 == 1'b1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1262_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1275_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1262_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd5) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1275_state16 == 1'b1)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_6_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_6_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_6_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_6_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_6_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_6_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_6_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_6_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_6_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_6_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_6_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_6_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_6_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_6_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_6_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_6_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_6_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_6_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_6_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_6_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_6_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_6_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_6_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_6_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_6_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_6_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_6_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_6_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_6_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_6_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_6_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_6_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1174_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1184_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1174_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd6) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1184_state16 == 1'b1)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1167_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1180_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1167_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd6) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1180_state16 == 1'b1)))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_7_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_7_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_7_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_7_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_7_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_7_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_7_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_7_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_7_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_7_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_7_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_7_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_7_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_7_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_7_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_7_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_7_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_7_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_7_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_7_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_7_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_7_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_7_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_7_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_7_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_7_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_7_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_7_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_7_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_7_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_7_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_7_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_7_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_7_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_7_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_7_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_7_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_7_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_7_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_7_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_7_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_7_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1048_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1060_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1048_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd7) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1060_state16 == 1'b1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1041_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1055_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1041_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd7) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1055_state16 == 1'b1)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_8_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_8_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_8_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_8_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_8_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_8_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_8_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_8_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_8_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_8_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_8_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_8_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_8_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_8_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_8_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_8_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_8_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_8_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_8_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_8_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_8_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_8_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_8_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_8_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_8_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_8_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_8_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_8_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_8_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_8_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_8_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_8_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_8_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_8_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_8_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_8_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_8_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_8_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_8_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_8_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_8_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_8_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_8_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_8_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1866_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1904_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1866_state13 == 1'b1)) | (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3) & ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3)& ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3) & ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3) & ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))| (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3) & ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_3_reg_4874 == 4'd0) & ~(trunc_ln172_3_reg_4874 == 4'd1) & ~(trunc_ln172_3_reg_4874 == 4'd2) & ~(trunc_ln172_3_reg_4874 == 4'd3) & ~(trunc_ln172_3_reg_4874 == 4'd4) & ~(trunc_ln172_3_reg_4874 == 4'd5) & ~(trunc_ln172_3_reg_4874 == 4'd6) & ~(trunc_ln172_3_reg_4874 == 4'd7) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851 == 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851== 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851 == 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851 == 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851 == 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851 == 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851== 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851 == 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851 == 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851 == 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_1_reg_4851 == 4'd0) & ~(trunc_ln172_1_reg_4851 == 4'd1) & ~(trunc_ln172_1_reg_4851 == 4'd2) & ~(trunc_ln172_1_reg_4851 == 4'd3) & ~(trunc_ln172_1_reg_4851 == 4'd4) & ~(trunc_ln172_1_reg_4851 == 4'd5) & ~(trunc_ln172_1_reg_4851 == 4'd6) & ~(trunc_ln172_1_reg_4851 == 4'd7) & (1'b0== ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1904_state16 == 1'b1)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1845_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1886_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1845_state13 == 1'b1)) | (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3) & ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3)& ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3) & ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3) & ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))| (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3) & ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_2_reg_4870 == 4'd0) & ~(trunc_ln172_2_reg_4870 == 4'd1) & ~(trunc_ln172_2_reg_4870 == 4'd2) & ~(trunc_ln172_2_reg_4870 == 4'd3) & ~(trunc_ln172_2_reg_4870 == 4'd4) & ~(trunc_ln172_2_reg_4870 == 4'd5) & ~(trunc_ln172_2_reg_4870 == 4'd6) & ~(trunc_ln172_2_reg_4870 == 4'd7) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847 == 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 ==4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847 == 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 == 4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847 == 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 == 4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847== 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 == 4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847 == 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 == 4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_4847 == 4'd0) & ~(trunc_ln172_reg_4847 == 4'd1) & ~(trunc_ln172_reg_4847 == 4'd2) & ~(trunc_ln172_reg_4847 == 4'd3) & ~(trunc_ln172_reg_4847 == 4'd4) & ~(trunc_ln172_reg_4847 == 4'd5) & ~(trunc_ln172_reg_4847 == 4'd6) & ~(trunc_ln172_reg_4847 == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1886_state16 == 1'b1)))) begin
        smem_8_we1_local = 1'b1;
    end else begin
        smem_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln337_3_fu_4102_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln337_1_fu_4078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln336_3_fu_4054_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln336_1_fu_4030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln335_3_fu_4006_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln335_1_fu_3982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln334_3_fu_3958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln334_1_fu_3934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln333_3_fu_3910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln333_1_fu_3886_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address0_local = zext_ln332_3_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address0_local = zext_ln332_1_fu_3819_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address0_local = zext_ln331_3_fu_3795_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address0_local = zext_ln331_1_fu_3753_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address0_local = zext_ln172_3_fu_3729_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address0_local = zext_ln172_1_fu_3673_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address1_local = zext_ln337_2_fu_4090_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address1_local = zext_ln337_fu_4066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address1_local = zext_ln336_2_fu_4042_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address1_local = zext_ln336_fu_4018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address1_local = zext_ln335_2_fu_3994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address1_local = zext_ln335_fu_3970_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln334_2_fu_3946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln334_fu_3922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln333_2_fu_3898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln333_fu_3874_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address1_local = zext_ln332_2_fu_3850_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address1_local = zext_ln332_fu_3807_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address1_local = zext_ln331_2_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address1_local = zext_ln331_fu_3741_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address1_local = zext_ln172_2_fu_3714_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address1_local = zext_ln172_fu_3661_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d0_local = DATA_y_3_load_3_reg_5022;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_y_2_load_7_reg_5048;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_3_load_6_reg_4976;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d0_local = reg_2870;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_1_load_7_reg_4749;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_1_load_3_reg_4677;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d0_local = DATA_y_load_7_reg_4723;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d0_local = DATA_y_load_3_reg_4646;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d0_local = DATA_y_1_load_6_reg_4562;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d0_local = DATA_y_1_load_2_reg_4440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d0_local = DATA_y_load_6_reg_4536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d0_local = DATA_y_load_2_reg_4414;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d1_local = DATA_y_3_load_1_reg_5009;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = DATA_y_2_load_5_reg_5035;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = DATA_y_3_load_4_reg_4963;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d1_local = reg_2857;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d1_local = reg_2831;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_1_load_5_reg_4736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_y_1_load_1_reg_4664;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_d1_local = DATA_y_load_5_reg_4710;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d1_local = DATA_y_load_1_reg_4633;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d1_local = DATA_y_1_load_4_reg_4549;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d1_local = DATA_y_1_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d1_local = DATA_y_load_4_reg_4523;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d1_local = DATA_y_load_reg_4316;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_3_reg_4874 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_1_reg_4851 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1744_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1754_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1744_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_3_reg_4874 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_1_reg_4851 == 4'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_3_reg_4874 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_1_reg_4851 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4874 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_1_reg_4851 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_1_reg_4851 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_3_reg_4874 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_1_reg_4851 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4874 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1754_state16 == 1'b1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (trunc_ln172_2_reg_4870 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_4231 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln172_reg_4847 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (ap_predicate_pred1737_state15 == 1'b1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_predicate_pred1750_state14 == 1'b1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_predicate_pred1737_state13 == 1'b1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (trunc_ln172_2_reg_4870 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (trunc_ln172_reg_4847 == 4'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln172_2_reg_4870 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln172_reg_4847 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_2_reg_4870 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_4847 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln172_reg_4847 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln172_2_reg_4870 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_reg_4847 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_2_reg_4870 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_predicate_pred1750_state16 == 1'b1)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
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
assign add_ln325_fu_3840_p2 = (tid_1_reg_4225 + 7'd4);
assign add_ln330_fu_3067_p2 = (shl_ln330_1_reg_4288 + 7'd2);
assign add_ln331_1_fu_3018_p2 = ($signed(zext_ln172_10_fu_3015_p1) + $signed(9'd288));
assign add_ln331_2_fu_3196_p2 = ($signed(zext_ln172_14_fu_3193_p1) + $signed(9'd288));
assign add_ln331_3_fu_3205_p2 = ($signed(zext_ln172_18_fu_3202_p1) + $signed(9'd288));
assign add_ln331_fu_3006_p2 = ($signed(zext_ln172_6_fu_3003_p1) + $signed(9'd288));
assign add_ln332_2_fu_3249_p2 = (shl_ln330_1_reg_4288 + 7'd3);
assign add_ln333_1_fu_3225_p2 = ($signed(zext_ln172_10_reg_4340) + $signed(9'd360));
assign add_ln333_2_fu_3342_p2 = ($signed(zext_ln172_14_reg_4501) + $signed(9'd360));
assign add_ln333_3_fu_3347_p2 = ($signed(zext_ln172_18_reg_4512) + $signed(9'd360));
assign add_ln333_fu_3220_p2 = ($signed(zext_ln172_6_reg_4310) + $signed(9'd360));
assign add_ln334_1_fu_3424_p2 = ($signed(zext_ln172_9_reg_4334) + $signed(8'd144));
assign add_ln334_2_fu_3477_p2 = ($signed(zext_ln172_13_reg_4495) + $signed(8'd144));
assign add_ln334_3_fu_3502_p2 = ($signed(zext_ln172_17_reg_4611) + $signed(8'd144));
assign add_ln334_fu_3399_p2 = ($signed(zext_ln172_5_reg_4243) + $signed(8'd144));
assign add_ln335_1_fu_3472_p2 = ($signed(zext_ln172_9_reg_4334) + $signed(8'd176));
assign add_ln335_2_fu_3585_p2 = ($signed(zext_ln172_13_reg_4495) + $signed(8'd176));
assign add_ln335_3_fu_3590_p2 = ($signed(zext_ln172_17_reg_4611) + $signed(8'd176));
assign add_ln335_fu_3458_p2 = ($signed(zext_ln172_5_reg_4243) + $signed(8'd176));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign grp_fu_2927_p1 = 6'd9;
assign grp_fu_2983_p1 = 6'd9;
assign grp_fu_3061_p1 = 6'd9;
assign grp_fu_3106_p1 = 6'd9;
assign grp_fu_4114_p0 = grp_fu_4114_p00;
assign grp_fu_4114_p00 = offset_fu_2899_p1;
assign grp_fu_4114_p1 = 8'd72;
assign grp_fu_4114_p2 = 17'd456;
assign grp_fu_4123_p0 = grp_fu_4123_p00;
assign grp_fu_4123_p00 = offset_1_reg_4275;
assign grp_fu_4123_p1 = 8'd72;
assign grp_fu_4123_p2 = 17'd456;
assign grp_fu_4132_p0 = grp_fu_4132_p00;
assign grp_fu_4132_p00 = offset_2_reg_4356;
assign grp_fu_4132_p1 = 8'd72;
assign grp_fu_4132_p2 = 17'd456;
assign grp_fu_4141_p0 = grp_fu_4141_p00;
assign grp_fu_4141_p00 = offset_3_reg_4385;
assign grp_fu_4141_p1 = 8'd72;
assign grp_fu_4141_p2 = 17'd456;
assign grp_fu_4150_p0 = zext_ln172_6_reg_4310;
assign grp_fu_4150_p1 = 9'd216;
assign grp_fu_4150_p2 = 19'd911;
assign grp_fu_4158_p0 = zext_ln172_10_reg_4340;
assign grp_fu_4158_p1 = 9'd216;
assign grp_fu_4158_p2 = 19'd911;
assign grp_fu_4166_p0 = zext_ln172_14_reg_4501;
assign grp_fu_4166_p1 = 9'd216;
assign grp_fu_4166_p2 = 19'd911;
assign grp_fu_4174_p0 = zext_ln172_18_reg_4512;
assign grp_fu_4174_p1 = 9'd216;
assign grp_fu_4174_p2 = 19'd911;
assign grp_fu_4182_p0 = grp_fu_4182_p00;
assign grp_fu_4182_p00 = offset_reg_4235;
assign grp_fu_4182_p1 = 10'd504;
assign grp_fu_4182_p2 = 21'd1821;
assign grp_fu_4191_p0 = grp_fu_4191_p00;
assign grp_fu_4191_p00 = offset_1_reg_4275;
assign grp_fu_4191_p1 = 10'd504;
assign grp_fu_4191_p2 = 21'd1821;
assign grp_fu_4200_p0 = grp_fu_4200_p00;
assign grp_fu_4200_p00 = offset_2_reg_4356;
assign grp_fu_4200_p1 = 10'd504;
assign grp_fu_4200_p2 = 21'd1821;
assign grp_fu_4209_p0 = grp_fu_4209_p00;
assign grp_fu_4209_p00 = offset_3_reg_4385;
assign grp_fu_4209_p1 = 10'd504;
assign grp_fu_4209_p2 = 21'd1821;
assign mul_ln172_1_fu_2967_p0 = mul_ln172_1_fu_2967_p00;
assign mul_ln172_1_fu_2967_p00 = offset_1_fu_2955_p3;
assign mul_ln172_1_fu_2967_p1 = 13'd114;
assign mul_ln172_2_fu_3045_p0 = mul_ln172_2_fu_3045_p00;
assign mul_ln172_2_fu_3045_p00 = offset_2_fu_3033_p3;
assign mul_ln172_2_fu_3045_p1 = 13'd114;
assign mul_ln172_3_fu_3090_p0 = mul_ln172_3_fu_3090_p00;
assign mul_ln172_3_fu_3090_p00 = offset_3_fu_3078_p3;
assign mul_ln172_3_fu_3090_p1 = 13'd114;
assign mul_ln172_fu_2911_p0 = mul_ln172_fu_2911_p00;
assign mul_ln172_fu_2911_p00 = offset_fu_2899_p1;
assign mul_ln172_fu_2911_p1 = 13'd114;
assign mul_ln331_1_fu_3161_p0 = mul_ln331_1_fu_3161_p00;
assign mul_ln331_1_fu_3161_p00 = add_ln331_1_reg_4346;
assign mul_ln331_1_fu_3161_p1 = 19'd911;
assign mul_ln331_2_fu_3233_p0 = mul_ln331_2_fu_3233_p00;
assign mul_ln331_2_fu_3233_p00 = add_ln331_2_reg_4507;
assign mul_ln331_2_fu_3233_p1 = 19'd911;
assign mul_ln331_3_fu_3266_p0 = mul_ln331_3_fu_3266_p00;
assign mul_ln331_3_fu_3266_p00 = add_ln331_3_reg_4518;
assign mul_ln331_3_fu_3266_p1 = 19'd911;
assign mul_ln331_fu_3129_p0 = mul_ln331_fu_3129_p00;
assign mul_ln331_fu_3129_p00 = add_ln331_reg_4329;
assign mul_ln331_fu_3129_p1 = 19'd911;
assign mul_ln333_1_fu_3326_p0 = mul_ln333_1_fu_3326_p00;
assign mul_ln333_1_fu_3326_p00 = add_ln333_1_reg_4585;
assign mul_ln333_1_fu_3326_p1 = 19'd911;
assign mul_ln333_2_fu_3364_p0 = mul_ln333_2_fu_3364_p00;
assign mul_ln333_2_fu_3364_p00 = add_ln333_2_reg_4705;
assign mul_ln333_2_fu_3364_p1 = 19'd911;
assign mul_ln333_3_fu_3383_p0 = mul_ln333_3_fu_3383_p00;
assign mul_ln333_3_fu_3383_p00 = add_ln333_3_reg_4762;
assign mul_ln333_3_fu_3383_p1 = 19'd911;
assign mul_ln333_fu_3298_p0 = mul_ln333_fu_3298_p00;
assign mul_ln333_fu_3298_p00 = add_ln333_reg_4580;
assign mul_ln333_fu_3298_p1 = 19'd911;
assign mul_ln334_1_fu_3433_p0 = mul_ln334_1_fu_3433_p00;
assign mul_ln334_1_fu_3433_p00 = add_ln334_1_fu_3424_p2;
assign mul_ln334_1_fu_3433_p1 = 17'd456;
assign mul_ln334_2_fu_3486_p0 = mul_ln334_2_fu_3486_p00;
assign mul_ln334_2_fu_3486_p00 = add_ln334_2_fu_3477_p2;
assign mul_ln334_2_fu_3486_p1 = 17'd456;
assign mul_ln334_3_fu_3511_p0 = mul_ln334_3_fu_3511_p00;
assign mul_ln334_3_fu_3511_p00 = add_ln334_3_fu_3502_p2;
assign mul_ln334_3_fu_3511_p1 = 17'd456;
assign mul_ln334_fu_3408_p0 = mul_ln334_fu_3408_p00;
assign mul_ln334_fu_3408_p00 = add_ln334_fu_3399_p2;
assign mul_ln334_fu_3408_p1 = 17'd456;
assign mul_ln335_1_fu_3560_p0 = mul_ln335_1_fu_3560_p00;
assign mul_ln335_1_fu_3560_p00 = $unsigned(sext_ln335_1_fu_3553_p1);
assign mul_ln335_1_fu_3560_p1 = 19'd911;
assign mul_ln335_2_fu_3613_p0 = mul_ln335_2_fu_3613_p00;
assign mul_ln335_2_fu_3613_p00 = $unsigned(sext_ln335_2_fu_3606_p1);
assign mul_ln335_2_fu_3613_p1 = 19'd911;
assign mul_ln335_3_fu_3645_p0 = mul_ln335_3_fu_3645_p00;
assign mul_ln335_3_fu_3645_p00 = $unsigned(sext_ln335_3_fu_3638_p1);
assign mul_ln335_3_fu_3645_p1 = 19'd911;
assign mul_ln335_fu_3537_p0 = mul_ln335_fu_3537_p00;
assign mul_ln335_fu_3537_p00 = $unsigned(sext_ln335_fu_3530_p1);
assign mul_ln335_fu_3537_p1 = 19'd911;
assign offset_1_fu_2955_p3 = {{tmp_s_fu_2945_p4}, {1'd1}};
assign offset_2_fu_3033_p3 = {{tmp_20_fu_3024_p4}, {2'd2}};
assign offset_3_fu_3078_p3 = {{tmp_20_fu_3024_p4}, {2'd3}};
assign offset_fu_2899_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln1_fu_3112_p3 = {{tmp_20_fu_3024_p4}, {3'd6}};
assign or_ln332_1_fu_3177_p3 = {{tmp_s_reg_4270}, {2'd3}};
assign or_ln332_2_fu_3282_p3 = {{tmp_20_reg_4351}, {3'd7}};
assign or_ln_fu_3145_p3 = {{offset_reg_4235}, {1'd1}};
assign sext_ln335_1_fu_3553_p1 = $signed(add_ln335_1_reg_4807);
assign sext_ln335_2_fu_3606_p1 = $signed(add_ln335_2_reg_4837);
assign sext_ln335_3_fu_3638_p1 = $signed(add_ln335_3_reg_4842);
assign sext_ln335_fu_3530_p1 = $signed(add_ln335_reg_4797);
assign shl_ln330_1_fu_2989_p3 = {{tmp_s_fu_2945_p4}, {2'd2}};
assign shl_ln330_fu_2933_p2 = ap_sig_allocacmp_tid_1 << 7'd1;
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
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_d1 = smem_6_d1_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_6_we1 = smem_6_we1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_d1 = smem_7_d1_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_7_we1 = smem_7_we1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_d1 = smem_8_d1_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_8_we1 = smem_8_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_20_fu_3024_p4 = {{tid_1_reg_4225[5:2]}};
assign tmp_30_fu_3211_p1 = grp_fu_4114_p3;
assign tmp_34_fu_3463_p1 = grp_fu_4150_p3;
assign tmp_35_fu_3705_p1 = grp_fu_4182_p3;
assign tmp_38_fu_3314_p1 = grp_fu_4123_p3;
assign tmp_42_fu_3576_p1 = grp_fu_4158_p3;
assign tmp_43_fu_3765_p1 = grp_fu_4191_p3;
assign tmp_46_fu_3352_p1 = grp_fu_4132_p3;
assign tmp_50_fu_3629_p1 = grp_fu_4166_p3;
assign tmp_51_fu_3786_p1 = grp_fu_4200_p3;
assign tmp_54_fu_3449_p1 = grp_fu_4141_p3;
assign tmp_58_fu_3696_p1 = grp_fu_4174_p3;
assign tmp_59_fu_3831_p1 = grp_fu_4209_p3;
assign tmp_fu_2891_p3 = ap_sig_allocacmp_tid_1[32'd6];
assign tmp_s_fu_2945_p4 = {{ap_sig_allocacmp_tid_1[5:1]}};
assign trunc_ln172_1_fu_3602_p1 = grp_fu_2983_p2[3:0];
assign trunc_ln172_2_fu_3688_p1 = grp_fu_3061_p2[3:0];
assign trunc_ln172_3_fu_3692_p1 = grp_fu_3106_p2[3:0];
assign trunc_ln172_fu_3595_p1 = grp_fu_2927_p2[3:0];
assign zext_ln172_10_fu_3015_p1 = offset_1_reg_4275;
assign zext_ln172_13_fu_3190_p1 = offset_2_reg_4356;
assign zext_ln172_14_fu_3193_p1 = offset_2_reg_4356;
assign zext_ln172_17_fu_3260_p1 = offset_3_reg_4385;
assign zext_ln172_18_fu_3202_p1 = offset_3_reg_4385;
assign zext_ln172_1_fu_3673_p1 = tmp_36_reg_4283;
assign zext_ln172_2_fu_3714_p1 = tmp_44_reg_4364;
assign zext_ln172_3_fu_3729_p1 = tmp_52_reg_4393;
assign zext_ln172_5_fu_2903_p1 = offset_fu_2899_p1;
assign zext_ln172_6_fu_3003_p1 = offset_reg_4235;
assign zext_ln172_9_fu_3012_p1 = offset_1_reg_4275;
assign zext_ln172_fu_3661_p1 = tmp_28_reg_4249;
assign zext_ln330_1_fu_2997_p1 = shl_ln330_1_fu_2989_p3;
assign zext_ln330_2_fu_3072_p1 = add_ln330_fu_3067_p2;
assign zext_ln330_3_fu_3120_p1 = or_ln1_fu_3112_p3;
assign zext_ln330_fu_2939_p1 = shl_ln330_fu_2933_p2;
assign zext_ln331_1_fu_3753_p1 = tmp_37_reg_4474;
assign zext_ln331_2_fu_3774_p1 = tmp_45_reg_4590;
assign zext_ln331_3_fu_3795_p1 = tmp_53_reg_4617;
assign zext_ln331_fu_3741_p1 = tmp_29_reg_4453;
assign zext_ln332_1_fu_3819_p1 = tmp_38_reg_4695;
assign zext_ln332_2_fu_3850_p1 = tmp_46_reg_4767;
assign zext_ln332_3_fu_3862_p1 = tmp_54_reg_4792;
assign zext_ln332_4_fu_3152_p1 = or_ln_fu_3145_p3;
assign zext_ln332_5_fu_3184_p1 = or_ln332_1_fu_3177_p3;
assign zext_ln332_6_fu_3254_p1 = add_ln332_2_fu_3249_p2;
assign zext_ln332_7_fu_3289_p1 = or_ln332_2_fu_3282_p3;
assign zext_ln332_fu_3807_p1 = tmp_30_reg_4575;
assign zext_ln333_1_fu_3886_p1 = tmp_39_reg_4700;
assign zext_ln333_2_fu_3898_p1 = tmp_47_reg_4772;
assign zext_ln333_3_fu_3910_p1 = tmp_55_reg_4777;
assign zext_ln333_fu_3874_p1 = tmp_31_reg_4690;
assign zext_ln334_1_fu_3934_p1 = tmp_40_reg_4787;
assign zext_ln334_2_fu_3946_p1 = tmp_48_reg_4812;
assign zext_ln334_3_fu_3958_p1 = tmp_56_reg_4817;
assign zext_ln334_fu_3922_p1 = tmp_32_reg_4782;
assign zext_ln335_1_fu_3982_p1 = tmp_41_reg_4827;
assign zext_ln335_2_fu_3994_p1 = tmp_49_reg_4855;
assign zext_ln335_3_fu_4006_p1 = tmp_57_reg_4865;
assign zext_ln335_fu_3970_p1 = tmp_33_reg_4822;
assign zext_ln336_1_fu_4030_p1 = tmp_42_reg_4832;
assign zext_ln336_2_fu_4042_p1 = tmp_50_reg_4860;
assign zext_ln336_3_fu_4054_p1 = tmp_58_reg_4878;
assign zext_ln336_fu_4018_p1 = tmp_34_reg_4802;
assign zext_ln337_1_fu_4078_p1 = tmp_43_reg_4888;
assign zext_ln337_2_fu_4090_p1 = tmp_51_reg_4893;
assign zext_ln337_3_fu_4102_p1 = tmp_59_reg_4898;
assign zext_ln337_fu_4066_p1 = tmp_35_reg_4883;
always @ (posedge ap_clk) begin
    zext_ln172_5_reg_4243[7:6] <= 2'b00;
    zext_ln330_reg_4254[0] <= 1'b0;
    zext_ln330_reg_4254[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    offset_1_reg_4275[0] <= 1'b1;
    shl_ln330_1_reg_4288[1:0] <= 2'b10;
    zext_ln330_1_reg_4294[1:0] <= 2'b10;
    zext_ln330_1_reg_4294[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_6_reg_4310[8:6] <= 3'b000;
    zext_ln172_9_reg_4334[0] <= 1'b1;
    zext_ln172_9_reg_4334[7:6] <= 2'b00;
    zext_ln172_10_reg_4340[0] <= 1'b1;
    zext_ln172_10_reg_4340[8:6] <= 3'b000;
    add_ln331_1_reg_4346[0] <= 1'b1;
    offset_2_reg_4356[1:0] <= 2'b10;
    zext_ln330_2_reg_4369[1:0] <= 2'b00;
    zext_ln330_2_reg_4369[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    offset_3_reg_4385[1:0] <= 2'b11;
    zext_ln330_3_reg_4398[2:0] <= 3'b110;
    zext_ln330_3_reg_4398[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_4_reg_4458[0] <= 1'b1;
    zext_ln332_4_reg_4458[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln332_5_reg_4479[1:0] <= 2'b11;
    zext_ln332_5_reg_4479[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_13_reg_4495[1:0] <= 2'b10;
    zext_ln172_13_reg_4495[7:6] <= 2'b00;
    zext_ln172_14_reg_4501[1:0] <= 2'b10;
    zext_ln172_14_reg_4501[8:6] <= 3'b000;
    add_ln331_2_reg_4507[1:0] <= 2'b10;
    zext_ln172_18_reg_4512[1:0] <= 2'b11;
    zext_ln172_18_reg_4512[8:6] <= 3'b000;
    add_ln331_3_reg_4518[1:0] <= 2'b11;
    add_ln333_1_reg_4585[0] <= 1'b1;
    zext_ln332_6_reg_4595[1:0] <= 2'b01;
    zext_ln332_6_reg_4595[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_17_reg_4611[1:0] <= 2'b11;
    zext_ln172_17_reg_4611[7:6] <= 2'b00;
    zext_ln332_7_reg_4622[2:0] <= 3'b111;
    zext_ln332_7_reg_4622[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln333_2_reg_4705[1:0] <= 2'b10;
    add_ln333_3_reg_4762[1:0] <= 2'b11;
    add_ln335_1_reg_4807[0] <= 1'b1;
    add_ln335_2_reg_4837[1:0] <= 2'b10;
    add_ln335_3_reg_4842[1:0] <= 2'b11;
end
endmodule 
